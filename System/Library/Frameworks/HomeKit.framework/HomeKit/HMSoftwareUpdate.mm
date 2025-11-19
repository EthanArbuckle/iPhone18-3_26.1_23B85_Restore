@interface HMSoftwareUpdate
+ (id)logCategory;
- (BOOL)isDocumentationAvailable;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessory)accessory;
- (HMSoftwareUpdate)init;
- (HMSoftwareUpdate)initWithCoder:(id)a3;
- (HMSoftwareUpdate)initWithVersion:(id)a3 displayableVersion:(id)a4 downloadSize:(unint64_t)a5 state:(int64_t)a6 installDuration:(double)a7 documentationMetadata:(id)a8 releaseDate:(id)a9;
- (HMSoftwareUpdateDelegate)delegate;
- (HMSoftwareUpdateDocumentation)documentation;
- (HMSoftwareUpdateDocumentationMetadata)documentationMetadata;
- (NSDate)nextPermittedRequestDocumentationDate;
- (NSString)description;
- (NSUUID)identifier;
- (NSUUID)uniqueIdentifier;
- (id)logIdentifier;
- (id)messageDestination;
- (int64_t)state;
- (unint64_t)hash;
- (unint64_t)updateType;
- (void)_handleUpdatedDocumentation:(id)a3;
- (void)_handleUpdatedDocumentationMetadata:(id)a3;
- (void)_handleUpdatedNeedsAttentionReasonsMessage:(id)a3;
- (void)_handleUpdatedState:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_requestNeedsAttentionReasonsWithCompletionHandler:(id)a3;
- (void)_unconfigure;
- (void)configureWithContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchNeedsAttentionReasonsWithCompletionHandler:(id)a3;
- (void)requestDocumentation;
- (void)setDocumentation:(id)a3;
- (void)setDocumentationMetadata:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setNextPermittedRequestDocumentationDate:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setUpdateType:(unint64_t)a3;
- (void)updateDocumentationMetadata:(id)a3 completionHandler:(id)a4;
- (void)updateState:(int64_t)a3 completionHandler:(id)a4;
@end

@implementation HMSoftwareUpdate

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMSoftwareUpdateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMSoftwareUpdate *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];

  v6 = [(HMSoftwareUpdate *)self version];
  [v4 encodeObject:v6 forKey:@"HM.version"];

  v7 = [(HMSoftwareUpdate *)self displayableVersion];
  [v4 encodeObject:v7 forKey:@"HM.displayableVersion"];

  [v4 encodeInteger:-[HMSoftwareUpdate state](self forKey:{"state"), @"HM.state"}];
  [v4 encodeInt64:-[HMSoftwareUpdate downloadSize](self forKey:{"downloadSize"), @"HM.downloadSize"}];
  [(HMSoftwareUpdate *)self installDuration];
  [v4 encodeInteger:v8 forKey:@"HM.installDuration"];
  v9 = [(HMSoftwareUpdate *)self documentationMetadata];
  [v4 encodeObject:v9 forKey:@"HM.docMetadata"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSoftwareUpdate updateType](self, "updateType")}];
  [v4 encodeObject:v10 forKey:@"HM.updateType"];

  v11 = [(HMSoftwareUpdate *)self releaseDate];
  [v4 encodeObject:v11 forKey:@"HM.releaseDate"];
}

- (HMSoftwareUpdate)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.version"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.displayableVersion"];
    if (!v6)
    {
      v6 = [v5 shortVersionString];
    }

    v7 = [v4 decodeInt64ForKey:@"HM.downloadSize"];
    v8 = [v4 decodeIntegerForKey:@"HM.installDuration"];
    v9 = [v4 decodeIntegerForKey:@"HM.state"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.docMetadata"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.releaseDate"];
    v12 = [(HMSoftwareUpdate *)self initWithVersion:v5 displayableVersion:v6 downloadSize:v7 state:v9 installDuration:v10 documentationMetadata:v11 releaseDate:v8];
    if (v12)
    {
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
      identifier = v12->_identifier;
      v12->_identifier = v13;

      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.documentation"];
      documentation = v12->_documentation;
      v12->_documentation = v15;

      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.updateType"];
      v12->_updateType = [v17 unsignedIntegerValue];
    }

    v18 = v12;

    v19 = v18;
LABEL_11:

    v23 = *MEMORY[0x1E69E9840];
    return v19;
  }

  if (!isInternalBuild())
  {
    v20 = objc_autoreleasePoolPush();
    v18 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = 0;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded version: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
    goto LABEL_11;
  }

  v25 = _HMFPreconditionFailure();
  return [(HMSoftwareUpdate *)v25 messageDestination];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMSoftwareUpdate *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMSoftwareUpdate *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HMSoftwareUpdate *)self delegate];
    v8 = [v6 state];
    v9 = [(HMSoftwareUpdate *)self state];
    v10 = v9 != v8;
    if (v9 != v8)
    {
      [(HMSoftwareUpdate *)self setState:v8];
      if (objc_opt_respondsToSelector())
      {
        v11 = [(HMSoftwareUpdate *)self context];
        v12 = [v11 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754E120;
        block[4] = self;
        v47 = v8;
        v46 = v7;
        dispatch_async(v12, block);
      }
    }

    v13 = [v6 documentationMetadata];
    v14 = [(HMSoftwareUpdate *)self documentationMetadata];
    v15 = HMFEqualObjects();

    if ((v15 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v19;
        v50 = 2112;
        v51 = v13;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Updating documentation metadata: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [(HMSoftwareUpdate *)v17 isDocumentationAvailable];
      [(HMSoftwareUpdate *)v17 setDocumentationMetadata:v13];
      v21 = [(HMSoftwareUpdate *)v17 isDocumentationAvailable];
      if (v20 != v21)
      {
        v22 = v21;
        v23 = objc_autoreleasePoolPush();
        v24 = v17;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = HMFGetLogIdentifier();
          HMFBooleanToString();
          v27 = v38 = v23;
          *buf = 138543618;
          v49 = v26;
          v50 = 2112;
          v51 = v27;
          _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@Documentation is available: %@", buf, 0x16u);

          v23 = v38;
        }

        objc_autoreleasePoolPop(v23);
        if (objc_opt_respondsToSelector())
        {
          v28 = [(HMSoftwareUpdate *)v24 context];
          v29 = [v28 queue];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_173;
          v42[3] = &unk_1E754DC70;
          v42[4] = v24;
          v44 = v22;
          v43 = v7;
          dispatch_async(v29, v42);
        }
      }

      v10 = 1;
    }

    v30 = [v6 documentation];
    v31 = [(HMSoftwareUpdate *)self documentation];
    v32 = HMFEqualObjects();

    if ((v32 & 1) == 0)
    {
      [(HMSoftwareUpdate *)self setDocumentation:v30];
      if (objc_opt_respondsToSelector())
      {
        v33 = [(HMSoftwareUpdate *)self context];
        v34 = [v33 queue];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_175;
        v39[3] = &unk_1E754E5E8;
        v39[4] = self;
        v40 = v30;
        v41 = v7;
        dispatch_async(v34, v39);
      }

      v10 = 1;
    }

    v35 = [v6 updateType];
    if ([(HMSoftwareUpdate *)self updateType]!= v35)
    {
      [(HMSoftwareUpdate *)self setUpdateType:v35];
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

void __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E120;
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v8 = v4;
  v7 = v5;
  [v3 invokeBlock:v6];
}

void __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_173(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_2_174;
  v5[3] = &unk_1E754DC70;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_175(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_2_176;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_2_176(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateDocumentation with : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) softwareUpdate:*(a1 + 32) didUpdateDocumentation:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_2_174(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = HMFBooleanToString();
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying clients documentation is available: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) softwareUpdate:*(a1 + 32) didUpdateDocumentationAvailable:*(a1 + 48)];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateState : %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) softwareUpdate:*(a1 + 32) didUpdateState:*(a1 + 48)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_requestNeedsAttentionReasonsWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdate *)self context];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    v7 = [(HMSoftwareUpdate *)self identifier];
    v8 = [v6 initWithTarget:v7];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMSU.rn" destination:v8 payload:0];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __71__HMSoftwareUpdate__requestNeedsAttentionReasonsWithCompletionHandler___block_invoke;
    v19 = &unk_1E754DE00;
    v20 = self;
    v21 = v4;
    [v9 setResponseHandler:&v16];
    v10 = [v5 messageDispatcher];
    [v10 sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v14;
      v24 = 2080;
      v25 = "[HMSoftwareUpdate _requestNeedsAttentionReasonsWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __71__HMSoftwareUpdate__requestNeedsAttentionReasonsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@needsAttentionReasonsRequest failed: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v12 = [v6 hmf_numberForKey:@"needsAttention"];
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    v16 = v15;
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = HMSoftwareUpdateNeedsAttentionReasonsToString([v12 integerValue]);
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
        v24 = 138543874;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@needsAttentionReasons set to %@ (%@)", &v24, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [*(a1 + 32) setNeedsAttentionReasons:{objc_msgSend(v12, "integerValue")}];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v20;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Missing needsAttentionReasons from message response payload: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v21 = *(a1 + 40);
      v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:27];
      (*(v21 + 16))(v21, v22, 0);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_handleUpdatedNeedsAttentionReasonsMessage:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdate *)self context];
  v6 = [v5 pendingRequests];
  v7 = [v4 identifier];
  v8 = [v6 removeCompletionBlockForIdentifier:v7];

  v9 = [v4 numberForKey:@"needsAttention"];
  if (v9)
  {
    v10 = [(HMSoftwareUpdate *)self needsAttentionReasons];
    if (v10 == [v9 integerValue])
    {
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = HMSoftwareUpdateNeedsAttentionReasonsToString([v9 integerValue]);
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "integerValue")}];
        *buf = 138543874;
        v33 = v20;
        v34 = 2112;
        v35 = v21;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated needsAttentionReasons to %@ (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      -[HMSoftwareUpdate setNeedsAttentionReasons:](v18, "setNeedsAttentionReasons:", [v9 integerValue]);
      if (!v8)
      {
        v23 = [(HMSoftwareUpdate *)v18 delegate];
        if (objc_opt_respondsToSelector())
        {
          objc_initWeak(buf, v18);
          v26 = [(HMSoftwareUpdate *)v18 context];
          v27 = [v26 delegateCaller];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __63__HMSoftwareUpdate__handleUpdatedNeedsAttentionReasonsMessage___block_invoke;
          v28[3] = &unk_1E754A2B8;
          objc_copyWeak(&v31, buf);
          v23 = v23;
          v29 = v23;
          v30 = v9;
          [v27 invokeBlock:v28];

          objc_destroyWeak(&v31);
          objc_destroyWeak(buf);
        }

        goto LABEL_12;
      }
    }

    v23 = [(HMSoftwareUpdate *)self context];
    v24 = [v23 delegateCaller];
    [v24 callCompletion:v8 error:0];

LABEL_12:
LABEL_13:
    [v4 respondWithPayload:0];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v4 messagePayload];
    *buf = 138543618;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing needsAttentionReasons from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  [v4 respondWithError:v16];

LABEL_14:
  v25 = *MEMORY[0x1E69E9840];
}

void __63__HMSoftwareUpdate__handleUpdatedNeedsAttentionReasonsMessage___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [a1[4] softwareUpdate:WeakRetained didUpdateNeedsAttentionReasons:{objc_msgSend(a1[5], "integerValue")}];
    WeakRetained = v3;
  }
}

- (void)fetchNeedsAttentionReasonsWithCompletionHandler:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdate *)self context];
  if (v5)
  {
    v6 = [(HMSoftwareUpdate *)self context];

    if (v6)
    {
      if (v4)
      {
        v7 = [(HMSoftwareUpdate *)self context];
        v8 = [v7 queue];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __68__HMSoftwareUpdate_fetchNeedsAttentionReasonsWithCompletionHandler___block_invoke;
        v14[3] = &unk_1E754E458;
        v14[4] = self;
        v15 = v4;
        dispatch_async(v8, v14);

        goto LABEL_8;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v12;
    v18 = 2080;
    v19 = "[HMSoftwareUpdate fetchNeedsAttentionReasonsWithCompletionHandler:]";
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (NSDate)nextPermittedRequestDocumentationDate
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDate *)self->_nextPermittedRequestDocumentationDate copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNextPermittedRequestDocumentationDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  nextPermittedRequestDocumentationDate = self->_nextPermittedRequestDocumentationDate;
  self->_nextPermittedRequestDocumentationDate = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUpdateType:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_updateType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)updateType
{
  os_unfair_lock_lock_with_options();
  updateType = self->_updateType;
  os_unfair_lock_unlock(&self->_lock);
  return updateType;
}

- (void)_handleUpdatedDocumentation:(id)a3
{
  v46[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 dataForKey:@"documentation"];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v46[0] = objc_opt_class();
    v46[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    v8 = [v6 setWithArray:v7];

    v39 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v8 fromData:v5 error:&v39];
    v34 = v39;
    if (v9)
    {
      v10 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = [(HMSoftwareUpdate *)self documentation];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        v15 = objc_autoreleasePoolPush();
        v16 = self;
        v17 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v18;
          v42 = 2112;
          v43 = v10;
          _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating with documentation: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v15);
        [(HMSoftwareUpdate *)v16 setDocumentation:v10];
        objc_initWeak(buf, v16);
        v19 = [(HMSoftwareUpdate *)v16 delegate];
        if (objc_opt_respondsToSelector())
        {
          WeakRetained = objc_loadWeakRetained(buf);
          v21 = [WeakRetained context];
          v22 = [v21 delegateCaller];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __48__HMSoftwareUpdate__handleUpdatedDocumentation___block_invoke;
          v35[3] = &unk_1E754E5E8;
          v36 = v19;
          v37 = WeakRetained;
          v38 = v12;
          [v22 invokeBlock:v35];
        }

        objc_destroyWeak(buf);
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v4 messagePayload];
        *buf = 138543874;
        v41 = v31;
        v42 = 2112;
        v43 = v32;
        v44 = 2112;
        v45 = v34;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update documentation from serialized documentation data: %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [v4 respondWithError:v12];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v4 messagePayload];
      *buf = 138543618;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Missing documentation data from message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v4 respondWithError:v8];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)requestDocumentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(HMSoftwareUpdate *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__HMSoftwareUpdate_requestDocumentation__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v5, v11);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v9;
      v15 = 2080;
      v16 = "[HMSoftwareUpdate requestDocumentation]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __40__HMSoftwareUpdate_requestDocumentation__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Requesting documentation", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = MEMORY[0x1E69A2A10];
  v7 = [*(a1 + 32) messageDestination];
  v8 = [v6 messageWithName:@"HMSU.rd" destination:v7 payload:0];

  objc_initWeak(buf, *(a1 + 32));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__HMSoftwareUpdate_requestDocumentation__block_invoke_161;
  v11[3] = &unk_1E754CD70;
  objc_copyWeak(&v12, buf);
  [v8 setResponseHandler:v11];
  v9 = [*(a1 + 40) messageDispatcher];
  [v9 sendMessage:v8 completionHandler:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

void __40__HMSoftwareUpdate_requestDocumentation__block_invoke_161(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v5)
  {
    if ([v5 isHMError] && objc_msgSend(v5, "code") == 3201)
    {
      v8 = [v6 hmf_dateForKey:@"nextPermittedRequestDocumentationDate"];
      [WeakRetained setNextPermittedRequestDocumentationDate:v8];
    }

    v9 = objc_autoreleasePoolPush();
    v10 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v12;
      v21 = 2112;
      v22 = v5;
      v13 = "%{public}@Failed to request documentation with error: %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      v16 = 22;
LABEL_9:
      _os_log_impl(&dword_19BB39000, v14, v15, v13, &v19, v16);
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v17 = WeakRetained;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v12;
      v13 = "%{public}@Successfully requested documentation";
      v14 = v11;
      v15 = OS_LOG_TYPE_INFO;
      v16 = 12;
      goto LABEL_9;
    }
  }

  objc_autoreleasePoolPop(v9);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)setDocumentation:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_documentation, a3);
  if (v6)
  {
    nextPermittedRequestDocumentationDate = self->_nextPermittedRequestDocumentationDate;
    self->_nextPermittedRequestDocumentationDate = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSoftwareUpdateDocumentation)documentation
{
  if ([(HMSoftwareUpdate *)self isDocumentationAvailable])
  {
    os_unfair_lock_lock_with_options();
    v3 = self->_documentation;
    os_unfair_lock_unlock(&self->_lock);
    if (!v3)
    {
      [(HMSoftwareUpdate *)self requestDocumentation];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateDocumentationMetadata:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMSoftwareUpdate *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdate updateDocumentationMetadata:completionHandler:]", @"completionHandler"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v21;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    objc_initWeak(location, self);
    v10 = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__HMSoftwareUpdate_updateDocumentationMetadata_completionHandler___block_invoke;
    block[3] = &unk_1E7548348;
    objc_copyWeak(&v27, location);
    v24 = v6;
    v26 = v7;
    v25 = v9;
    dispatch_async(v10, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v14;
      v29 = 2080;
      v30 = "[HMSoftwareUpdate updateDocumentationMetadata:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __66__HMSoftwareUpdate_updateDocumentationMetadata_completionHandler___block_invoke(id *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = a1[4];
    *buf = 138543618;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Updating documentation metadata: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = MEMORY[0x1E69A2A10];
  v9 = [v4 messageDestination];
  v35 = @"metadata";
  v10 = a1[4];
  if (v10)
  {
    encodeRootObject(v10);
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v11 = ;
  v36 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v13 = [v8 messageWithName:@"HMSU.dm" destination:v9 payload:v12];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__HMSoftwareUpdate_updateDocumentationMetadata_completionHandler___block_invoke_160;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v34, a1 + 7);
  v32 = a1[4];
  v33 = a1[6];
  v14 = _Block_copy(aBlock);
  v15 = [v4 context];
  v16 = [v15 pendingRequests];

  v17 = [v13 identifier];
  v18 = _Block_copy(v14);
  [v16 addCompletionBlock:v18 forIdentifier:v17];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __66__HMSoftwareUpdate_updateDocumentationMetadata_completionHandler___block_invoke_2;
  v27 = &unk_1E754E480;
  v19 = v16;
  v28 = v19;
  v20 = v17;
  v29 = v20;
  v21 = v14;
  v30 = v21;
  [v13 setResponseHandler:&v24];
  v22 = [a1[5] messageDispatcher];
  [v22 sendMessage:v13 completionHandler:0];

  objc_destroyWeak(&v34);
  v23 = *MEMORY[0x1E69E9840];
}

void __66__HMSoftwareUpdate_updateDocumentationMetadata_completionHandler___block_invoke_160(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setDocumentationMetadata:*(a1 + 32)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v3];
}

void __66__HMSoftwareUpdate_updateDocumentationMetadata_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_handleUpdatedDocumentationMetadata:(id)a3
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdate *)self context];
  v6 = [v5 pendingRequests];
  v7 = [v4 identifier];
  v8 = [v6 retrieveCompletionBlockForIdentifier:v7];

  if (v8)
  {
LABEL_16:
    [v4 respondWithPayload:0];
    goto LABEL_17;
  }

  v9 = [v4 nullForKey:@"metadata"];

  if (v9)
  {
    v10 = 0;
LABEL_4:
    v11 = [(HMSoftwareUpdate *)self documentationMetadata];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v56 = v16;
        v57 = 2112;
        v58 = v10;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating documentation metadata to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      v17 = [(HMSoftwareUpdate *)v14 isDocumentationAvailable];
      [(HMSoftwareUpdate *)v14 setDocumentationMetadata:v10];
      v18 = [(HMSoftwareUpdate *)v14 isDocumentationAvailable];
      v19 = v18;
      if (v17 != v18)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v14;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          v24 = HMFBooleanToString();
          *buf = 138543618;
          v56 = v23;
          v57 = 2112;
          v58 = v24;
          _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Documentation is available: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        objc_initWeak(&location, v21);
        v25 = [(HMSoftwareUpdate *)v21 delegate];
        if (objc_opt_respondsToSelector())
        {
          v26 = objc_autoreleasePoolPush();
          v27 = v21;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            v30 = HMFBooleanToString();
            *buf = 138543618;
            v56 = v29;
            v57 = 2112;
            v58 = v30;
            _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_INFO, "%{public}@Notifying clients documentation is available: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
          v31 = objc_loadWeakRetained(&location);
          v32 = [v31 context];
          v33 = [v32 delegateCaller];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __56__HMSoftwareUpdate__handleUpdatedDocumentationMetadata___block_invoke;
          v49[3] = &unk_1E754DC70;
          v50 = v25;
          v51 = v31;
          v52 = v19;
          [v33 invokeBlock:v49];
        }

        objc_destroyWeak(&location);
      }
    }

    goto LABEL_16;
  }

  v35 = [v4 dataForKey:@"metadata"];
  if (v35)
  {
    v54 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v35 error:&v54];
    v36 = v54;
    v37 = v36;
    if (v10)
    {

      goto LABEL_4;
    }

    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v47;
      v57 = 2112;
      v58 = v37;
      _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update documentation metadata from metadata data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v48 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v4 respondWithError:v48];
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    v39 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      v42 = [v4 messagePayload];
      *buf = 138543618;
      v56 = v41;
      v57 = 2112;
      v58 = v42;
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Missing documentation metadata from message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v43 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v4 respondWithError:v43];
  }

LABEL_17:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)setDocumentationMetadata:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  documentationMetadata = self->_documentationMetadata;
  self->_documentationMetadata = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSoftwareUpdateDocumentationMetadata)documentationMetadata
{
  os_unfair_lock_lock_with_options();
  v3 = self->_documentationMetadata;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isDocumentationAvailable
{
  v3 = [(HMSoftwareUpdate *)self nextPermittedRequestDocumentationDate];
  v4 = [(HMSoftwareUpdate *)self documentationMetadata];
  if (v4)
  {
    if (v3)
    {
      v5 = [MEMORY[0x1E695DF00] date];
      v6 = [v3 compare:v5] != 1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateState:(int64_t)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMSoftwareUpdate *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdate updateState:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HMSoftwareUpdate_updateState_completionHandler___block_invoke;
    block[3] = &unk_1E754E0D0;
    block[4] = self;
    v25 = a3;
    v24 = v6;
    v23 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v13;
      v28 = 2080;
      v29 = "[HMSoftwareUpdate updateState:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __50__HMSoftwareUpdate_updateState_completionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 56);
    if (v6 > 5)
    {
      v7 = @"unknown";
    }

    else
    {
      v7 = off_1E7548368[v6];
    }

    v8 = v7;
    *buf = 138543618;
    v37 = v5;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating state to '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v34 = @"state";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v35 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  v11 = MEMORY[0x1E69A2A10];
  v12 = [*(a1 + 32) messageDestination];
  v13 = [v11 messageWithName:@"HMSU.us" destination:v12 payload:v10];

  objc_initWeak(buf, *(a1 + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__HMSoftwareUpdate_updateState_completionHandler___block_invoke_150;
  aBlock[3] = &unk_1E7548320;
  objc_copyWeak(v33, buf);
  v33[1] = *(a1 + 56);
  v32 = *(a1 + 48);
  v14 = _Block_copy(aBlock);
  v15 = [*(a1 + 32) context];
  v16 = [v15 pendingRequests];

  v17 = [v13 identifier];
  v18 = _Block_copy(v14);
  [v16 addCompletionBlock:v18 forIdentifier:v17];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __50__HMSoftwareUpdate_updateState_completionHandler___block_invoke_152;
  v27 = &unk_1E754E480;
  v19 = v16;
  v28 = v19;
  v20 = v17;
  v29 = v20;
  v21 = v14;
  v30 = v21;
  [v13 setResponseHandler:&v24];
  v22 = [*(a1 + 40) messageDispatcher];
  [v22 sendMessage:v13 completionHandler:0];

  objc_destroyWeak(v33);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x1E69E9840];
}

void __50__HMSoftwareUpdate_updateState_completionHandler___block_invoke_150(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v9;
      v19 = 2112;
      v20 = v3;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to updated state with error: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 48);
      if (v11 > 5)
      {
        v12 = @"unknown";
      }

      else
      {
        v12 = off_1E7548368[v11];
      }

      v13 = v12;
      v17 = 138543618;
      v18 = v10;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updated state to '%@'", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v6 setState:*(a1 + 48)];
  }

  v14 = [v6 context];
  v15 = [v14 delegateCaller];
  [v15 callCompletion:*(a1 + 32) error:v3];

  v16 = *MEMORY[0x1E69E9840];
}

void __50__HMSoftwareUpdate_updateState_completionHandler___block_invoke_152(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_handleUpdatedState:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdate *)self context];
  v6 = [v5 pendingRequests];
  v7 = [v4 identifier];
  v8 = [v6 removeCompletionBlockForIdentifier:v7];

  v9 = [v4 numberForKey:@"state"];
  if (v9)
  {
    v10 = [(HMSoftwareUpdate *)self state];
    if (v10 == [v9 integerValue])
    {
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v9 integerValue];
        if (v21 > 5)
        {
          v22 = @"unknown";
        }

        else
        {
          v22 = off_1E7548368[v21];
        }

        v23 = v22;
        *buf = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated state to '%@'", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      -[HMSoftwareUpdate setState:](v18, "setState:", [v9 integerValue]);
      if (!v8)
      {
        v24 = [(HMSoftwareUpdate *)v18 delegate];
        if (objc_opt_respondsToSelector())
        {
          objc_initWeak(buf, v18);
          v27 = [(HMSoftwareUpdate *)v18 context];
          v28 = [v27 delegateCaller];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __40__HMSoftwareUpdate__handleUpdatedState___block_invoke;
          v29[3] = &unk_1E754A2B8;
          objc_copyWeak(&v32, buf);
          v24 = v24;
          v30 = v24;
          v31 = v9;
          [v28 invokeBlock:v29];

          objc_destroyWeak(&v32);
          objc_destroyWeak(buf);
        }

        goto LABEL_15;
      }
    }

    v24 = [(HMSoftwareUpdate *)self context];
    v25 = [v24 delegateCaller];
    [v25 callCompletion:v8 error:0];

LABEL_15:
LABEL_16:
    [v4 respondWithPayload:0];
    goto LABEL_17;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v4 messagePayload];
    *buf = 138543618;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing state from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  [v4 respondWithError:v16];

LABEL_17:
  v26 = *MEMORY[0x1E69E9840];
}

void __40__HMSoftwareUpdate__handleUpdatedState___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [a1[4] softwareUpdate:WeakRetained didUpdateState:{objc_msgSend(a1[5], "integerValue")}];
    WeakRetained = v3;
  }
}

- (void)setState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_state = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_identifier];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  identifier = self->_identifier;
  self->_identifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)identifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_registerNotificationHandlers
{
  v3 = [(HMSoftwareUpdate *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"HMSU.us" receiver:self selector:sel__handleUpdatedState_];

  v5 = [(HMSoftwareUpdate *)self context];
  v6 = [v5 messageDispatcher];
  [v6 registerForMessage:@"HMSU.dm" receiver:self selector:sel__handleUpdatedDocumentationMetadata_];

  v7 = [(HMSoftwareUpdate *)self context];
  v8 = [v7 messageDispatcher];
  [v8 registerForMessage:@"HMSU.du" receiver:self selector:sel__handleUpdatedDocumentation_];

  v10 = [(HMSoftwareUpdate *)self context];
  v9 = [v10 messageDispatcher];
  [v9 registerForMessage:@"HMSU.na" receiver:self selector:sel__handleUpdatedNeedsAttentionReasonsMessage_];
}

- (void)_unconfigure
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring softwareUpdate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMSoftwareUpdate *)v4 context];
  v8 = [v7 messageDispatcher];
  [v8 deregisterReceiver:v4];

  [(HMSoftwareUpdate *)v4 setContext:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)configureWithContext:(id)a3
{
  [(HMSoftwareUpdate *)self setContext:?];
  if (a3)
  {
    v5 = [(HMSoftwareUpdate *)self identifier];

    if (v5)
    {
      [(HMSoftwareUpdate *)self _registerNotificationHandlers];

      [(HMSoftwareUpdate *)self _requestNeedsAttentionReasonsWithCompletionHandler:&__block_literal_global_18662];
    }
  }
}

- (NSString)description
{
  v3 = [(HMSoftwareUpdate *)self releaseDate];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(HMSoftwareUpdate *)self version];
  v6 = [v5 versionString];
  v7 = [(HMSoftwareUpdate *)self displayableVersion];
  v8 = [(HMSoftwareUpdate *)self state];
  if (v8 > 5)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7548368[v8];
  }

  v10 = v9;
  [(HMSoftwareUpdate *)self downloadSize];
  v11 = NSLocalizedFileSizeDescription();
  v12 = [(HMSoftwareUpdate *)self documentationMetadata];
  v13 = [(HMSoftwareUpdate *)self updateType];
  if (v13 - 1 > 2)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_1E75483D8[v13 - 1];
  }

  v15 = [v4 stringWithFormat:@"<Software Update, Version = %@, Displayable Version = %@, State = %@, Download Size = %@, Documentation Metadata = %@, Release Date = %@, Update Type = %@>", v6, v7, v10, v11, v12, v3, v14];

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMSoftwareUpdate *)self version];
      v8 = [(HMSoftwareUpdate *)v6 version];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMSoftwareUpdate *)self version];
  v3 = [v2 hash];

  return v3;
}

- (HMSoftwareUpdate)initWithVersion:(id)a3 displayableVersion:(id)a4 downloadSize:(unint64_t)a5 state:(int64_t)a6 installDuration:(double)a7 documentationMetadata:(id)a8 releaseDate:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  if (v16)
  {
    v20 = v19;
    v35.receiver = self;
    v35.super_class = HMSoftwareUpdate;
    v21 = [(HMSoftwareUpdate *)&v35 init];
    if (v21)
    {
      v22 = [v16 copy];
      version = v21->_version;
      v21->_version = v22;

      if (v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = [v16 shortVersionString];
      }

      displayableVersion = v21->_displayableVersion;
      v21->_displayableVersion = v24;

      v21->_downloadSize = a5;
      v21->_state = a6;
      objc_storeStrong(&v21->_documentationMetadata, a8);
      v21->_installDuration = a7;
      v21->_updateType = 0;
      objc_storeStrong(&v21->_releaseDate, a9);
    }

    return v21;
  }

  else
  {
    v27 = _HMFPreconditionFailure();
    return [(HMSoftwareUpdate *)v27 initWithVersion:v28 downloadSize:v29 state:v30 installDuration:v31 documentationMetadata:v34 releaseDate:v32, v33];
  }
}

- (HMSoftwareUpdate)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t51 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t51, &__block_literal_global_178);
  }

  v3 = logCategory__hmf_once_v52;

  return v3;
}

uint64_t __31__HMSoftwareUpdate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v52;
  logCategory__hmf_once_v52 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end