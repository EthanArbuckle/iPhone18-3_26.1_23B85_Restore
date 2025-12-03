@interface HMSoftwareUpdate
+ (id)logCategory;
- (BOOL)isDocumentationAvailable;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMSoftwareUpdate)init;
- (HMSoftwareUpdate)initWithCoder:(id)coder;
- (HMSoftwareUpdate)initWithVersion:(id)version displayableVersion:(id)displayableVersion downloadSize:(unint64_t)size state:(int64_t)state installDuration:(double)duration documentationMetadata:(id)metadata releaseDate:(id)date;
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
- (void)_handleUpdatedDocumentation:(id)documentation;
- (void)_handleUpdatedDocumentationMetadata:(id)metadata;
- (void)_handleUpdatedNeedsAttentionReasonsMessage:(id)message;
- (void)_handleUpdatedState:(id)state;
- (void)_registerNotificationHandlers;
- (void)_requestNeedsAttentionReasonsWithCompletionHandler:(id)handler;
- (void)_unconfigure;
- (void)configureWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)fetchNeedsAttentionReasonsWithCompletionHandler:(id)handler;
- (void)requestDocumentation;
- (void)setDocumentation:(id)documentation;
- (void)setDocumentationMetadata:(id)metadata;
- (void)setIdentifier:(id)identifier;
- (void)setNextPermittedRequestDocumentationDate:(id)date;
- (void)setState:(int64_t)state;
- (void)setUpdateType:(unint64_t)type;
- (void)updateDocumentationMetadata:(id)metadata completionHandler:(id)handler;
- (void)updateState:(int64_t)state completionHandler:(id)handler;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMSoftwareUpdate *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  version = [(HMSoftwareUpdate *)self version];
  [coderCopy encodeObject:version forKey:@"HM.version"];

  displayableVersion = [(HMSoftwareUpdate *)self displayableVersion];
  [coderCopy encodeObject:displayableVersion forKey:@"HM.displayableVersion"];

  [coderCopy encodeInteger:-[HMSoftwareUpdate state](self forKey:{"state"), @"HM.state"}];
  [coderCopy encodeInt64:-[HMSoftwareUpdate downloadSize](self forKey:{"downloadSize"), @"HM.downloadSize"}];
  [(HMSoftwareUpdate *)self installDuration];
  [coderCopy encodeInteger:v8 forKey:@"HM.installDuration"];
  documentationMetadata = [(HMSoftwareUpdate *)self documentationMetadata];
  [coderCopy encodeObject:documentationMetadata forKey:@"HM.docMetadata"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMSoftwareUpdate updateType](self, "updateType")}];
  [coderCopy encodeObject:v10 forKey:@"HM.updateType"];

  releaseDate = [(HMSoftwareUpdate *)self releaseDate];
  [coderCopy encodeObject:releaseDate forKey:@"HM.releaseDate"];
}

- (HMSoftwareUpdate)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.version"];
  if (v5)
  {
    shortVersionString = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.displayableVersion"];
    if (!shortVersionString)
    {
      shortVersionString = [v5 shortVersionString];
    }

    v7 = [coderCopy decodeInt64ForKey:@"HM.downloadSize"];
    v8 = [coderCopy decodeIntegerForKey:@"HM.installDuration"];
    v9 = [coderCopy decodeIntegerForKey:@"HM.state"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.docMetadata"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.releaseDate"];
    v12 = [(HMSoftwareUpdate *)self initWithVersion:v5 displayableVersion:shortVersionString downloadSize:v7 state:v9 installDuration:v10 documentationMetadata:v11 releaseDate:v8];
    if (v12)
    {
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
      identifier = v12->_identifier;
      v12->_identifier = v13;

      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.documentation"];
      documentation = v12->_documentation;
      v12->_documentation = v15;

      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.updateType"];
      v12->_updateType = [v17 unsignedIntegerValue];
    }

    selfCopy = v12;

    v19 = selfCopy;
LABEL_11:

    v23 = *MEMORY[0x1E69E9840];
    return v19;
  }

  if (!isInternalBuild())
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  messageTargetUUID = [(HMSoftwareUpdate *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (id)logIdentifier
{
  identifier = [(HMSoftwareUpdate *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v52 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    delegate = [(HMSoftwareUpdate *)self delegate];
    state = [v6 state];
    state2 = [(HMSoftwareUpdate *)self state];
    v10 = state2 != state;
    if (state2 != state)
    {
      [(HMSoftwareUpdate *)self setState:state];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMSoftwareUpdate *)self context];
        queue = [context queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754E120;
        block[4] = self;
        v47 = state;
        v46 = delegate;
        dispatch_async(queue, block);
      }
    }

    documentationMetadata = [v6 documentationMetadata];
    documentationMetadata2 = [(HMSoftwareUpdate *)self documentationMetadata];
    v15 = HMFEqualObjects();

    if ((v15 & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543618;
        v49 = v19;
        v50 = 2112;
        v51 = documentationMetadata;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Updating documentation metadata: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      isDocumentationAvailable = [(HMSoftwareUpdate *)selfCopy isDocumentationAvailable];
      [(HMSoftwareUpdate *)selfCopy setDocumentationMetadata:documentationMetadata];
      isDocumentationAvailable2 = [(HMSoftwareUpdate *)selfCopy isDocumentationAvailable];
      if (isDocumentationAvailable != isDocumentationAvailable2)
      {
        v22 = isDocumentationAvailable2;
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy;
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
          context2 = [(HMSoftwareUpdate *)v24 context];
          queue2 = [context2 queue];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_173;
          v42[3] = &unk_1E754DC70;
          v42[4] = v24;
          v44 = v22;
          v43 = delegate;
          dispatch_async(queue2, v42);
        }
      }

      v10 = 1;
    }

    documentation = [v6 documentation];
    documentation2 = [(HMSoftwareUpdate *)self documentation];
    v32 = HMFEqualObjects();

    if ((v32 & 1) == 0)
    {
      [(HMSoftwareUpdate *)self setDocumentation:documentation];
      if (objc_opt_respondsToSelector())
      {
        context3 = [(HMSoftwareUpdate *)self context];
        queue3 = [context3 queue];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __39__HMSoftwareUpdate_mergeFromNewObject___block_invoke_175;
        v39[3] = &unk_1E754E5E8;
        v39[4] = self;
        v40 = documentation;
        v41 = delegate;
        dispatch_async(queue3, v39);
      }

      v10 = 1;
    }

    updateType = [v6 updateType];
    if ([(HMSoftwareUpdate *)self updateType]!= updateType)
    {
      [(HMSoftwareUpdate *)self setUpdateType:updateType];
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

- (void)_requestNeedsAttentionReasonsWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMSoftwareUpdate *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    identifier = [(HMSoftwareUpdate *)self identifier];
    v8 = [v6 initWithTarget:identifier];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMSU.rn" destination:v8 payload:0];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __71__HMSoftwareUpdate__requestNeedsAttentionReasonsWithCompletionHandler___block_invoke;
    v19 = &unk_1E754DE00;
    selfCopy = self;
    v21 = handlerCopy;
    [v9 setResponseHandler:&v16];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_handleUpdatedNeedsAttentionReasonsMessage:(id)message
{
  v38 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  context = [(HMSoftwareUpdate *)self context];
  pendingRequests = [context pendingRequests];
  identifier = [messageCopy identifier];
  v8 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v9 = [messageCopy numberForKey:@"needsAttention"];
  if (v9)
  {
    needsAttentionReasons = [(HMSoftwareUpdate *)self needsAttentionReasons];
    if (needsAttentionReasons == [v9 integerValue])
    {
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      -[HMSoftwareUpdate setNeedsAttentionReasons:](selfCopy, "setNeedsAttentionReasons:", [v9 integerValue]);
      if (!v8)
      {
        delegate = [(HMSoftwareUpdate *)selfCopy delegate];
        if (objc_opt_respondsToSelector())
        {
          objc_initWeak(buf, selfCopy);
          context2 = [(HMSoftwareUpdate *)selfCopy context];
          delegateCaller = [context2 delegateCaller];
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = __63__HMSoftwareUpdate__handleUpdatedNeedsAttentionReasonsMessage___block_invoke;
          v28[3] = &unk_1E754A2B8;
          objc_copyWeak(&v31, buf);
          delegate = delegate;
          v29 = delegate;
          v30 = v9;
          [delegateCaller invokeBlock:v28];

          objc_destroyWeak(&v31);
          objc_destroyWeak(buf);
        }

        goto LABEL_12;
      }
    }

    delegate = [(HMSoftwareUpdate *)self context];
    delegateCaller2 = [delegate delegateCaller];
    [delegateCaller2 callCompletion:v8 error:0];

LABEL_12:
LABEL_13:
    [messageCopy respondWithPayload:0];
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    *buf = 138543618;
    v33 = v14;
    v34 = 2112;
    v35 = messagePayload;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing needsAttentionReasons from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  [messageCopy respondWithError:v16];

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

- (void)fetchNeedsAttentionReasonsWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMSoftwareUpdate *)self context];
  if (context)
  {
    context2 = [(HMSoftwareUpdate *)self context];

    if (context2)
    {
      if (handlerCopy)
      {
        context3 = [(HMSoftwareUpdate *)self context];
        queue = [context3 queue];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __68__HMSoftwareUpdate_fetchNeedsAttentionReasonsWithCompletionHandler___block_invoke;
        v14[3] = &unk_1E754E458;
        v14[4] = self;
        v15 = handlerCopy;
        dispatch_async(queue, v14);

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
  selfCopy = self;
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

- (void)setNextPermittedRequestDocumentationDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  nextPermittedRequestDocumentationDate = self->_nextPermittedRequestDocumentationDate;
  self->_nextPermittedRequestDocumentationDate = dateCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setUpdateType:(unint64_t)type
{
  os_unfair_lock_lock_with_options();
  self->_updateType = type;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)updateType
{
  os_unfair_lock_lock_with_options();
  updateType = self->_updateType;
  os_unfair_lock_unlock(&self->_lock);
  return updateType;
}

- (void)_handleUpdatedDocumentation:(id)documentation
{
  v46[2] = *MEMORY[0x1E69E9840];
  documentationCopy = documentation;
  v5 = [documentationCopy dataForKey:@"documentation"];
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

      documentation = [(HMSoftwareUpdate *)self documentation];
      v14 = HMFEqualObjects();

      if ((v14 & 1) == 0)
      {
        v15 = objc_autoreleasePoolPush();
        selfCopy = self;
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
        [(HMSoftwareUpdate *)selfCopy setDocumentation:v10];
        objc_initWeak(buf, selfCopy);
        delegate = [(HMSoftwareUpdate *)selfCopy delegate];
        if (objc_opt_respondsToSelector())
        {
          WeakRetained = objc_loadWeakRetained(buf);
          context = [WeakRetained context];
          delegateCaller = [context delegateCaller];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __48__HMSoftwareUpdate__handleUpdatedDocumentation___block_invoke;
          v35[3] = &unk_1E754E5E8;
          v36 = delegate;
          v37 = WeakRetained;
          v38 = v12;
          [delegateCaller invokeBlock:v35];
        }

        objc_destroyWeak(buf);
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        messagePayload = [documentationCopy messagePayload];
        *buf = 138543874;
        v41 = v31;
        v42 = 2112;
        v43 = messagePayload;
        v44 = 2112;
        v45 = v34;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update documentation from serialized documentation data: %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v28);
      v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      [documentationCopy respondWithError:v12];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      messagePayload2 = [documentationCopy messagePayload];
      *buf = 138543618;
      v41 = v26;
      v42 = 2112;
      v43 = messagePayload2;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Missing documentation data from message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [documentationCopy respondWithError:v8];
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)requestDocumentation
{
  v17 = *MEMORY[0x1E69E9840];
  context = [(HMSoftwareUpdate *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__HMSoftwareUpdate_requestDocumentation__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v11[4] = self;
    v12 = v4;
    dispatch_async(queue, v11);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)setDocumentation:(id)documentation
{
  documentationCopy = documentation;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_documentation, documentation);
  if (documentationCopy)
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

- (void)updateDocumentationMetadata:(id)metadata completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  handlerCopy = handler;
  context = [(HMSoftwareUpdate *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdate updateDocumentationMetadata:completionHandler:]", @"completionHandler"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    objc_initWeak(location, self);
    queue = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__HMSoftwareUpdate_updateDocumentationMetadata_completionHandler___block_invoke;
    block[3] = &unk_1E7548348;
    objc_copyWeak(&v27, location);
    v24 = metadataCopy;
    v26 = handlerCopy;
    v25 = v9;
    dispatch_async(queue, block);

    objc_destroyWeak(&v27);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v15);
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

- (void)_handleUpdatedDocumentationMetadata:(id)metadata
{
  v59 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  context = [(HMSoftwareUpdate *)self context];
  pendingRequests = [context pendingRequests];
  identifier = [metadataCopy identifier];
  v8 = [pendingRequests retrieveCompletionBlockForIdentifier:identifier];

  if (v8)
  {
LABEL_16:
    [metadataCopy respondWithPayload:0];
    goto LABEL_17;
  }

  v9 = [metadataCopy nullForKey:@"metadata"];

  if (v9)
  {
    v10 = 0;
LABEL_4:
    documentationMetadata = [(HMSoftwareUpdate *)self documentationMetadata];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      isDocumentationAvailable = [(HMSoftwareUpdate *)selfCopy isDocumentationAvailable];
      [(HMSoftwareUpdate *)selfCopy setDocumentationMetadata:v10];
      isDocumentationAvailable2 = [(HMSoftwareUpdate *)selfCopy isDocumentationAvailable];
      v19 = isDocumentationAvailable2;
      if (isDocumentationAvailable != isDocumentationAvailable2)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = selfCopy;
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
        delegate = [(HMSoftwareUpdate *)v21 delegate];
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
          context2 = [v31 context];
          delegateCaller = [context2 delegateCaller];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __56__HMSoftwareUpdate__handleUpdatedDocumentationMetadata___block_invoke;
          v49[3] = &unk_1E754DC70;
          v50 = delegate;
          v51 = v31;
          v52 = v19;
          [delegateCaller invokeBlock:v49];
        }

        objc_destroyWeak(&location);
      }
    }

    goto LABEL_16;
  }

  v35 = [metadataCopy dataForKey:@"metadata"];
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
    selfCopy2 = self;
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
    [metadataCopy respondWithError:v48];
  }

  else
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      messagePayload = [metadataCopy messagePayload];
      *buf = 138543618;
      v56 = v41;
      v57 = 2112;
      v58 = messagePayload;
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Missing documentation metadata from message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v43 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [metadataCopy respondWithError:v43];
  }

LABEL_17:

  v34 = *MEMORY[0x1E69E9840];
}

- (void)setDocumentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  os_unfair_lock_lock_with_options();
  documentationMetadata = self->_documentationMetadata;
  self->_documentationMetadata = metadataCopy;

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
  nextPermittedRequestDocumentationDate = [(HMSoftwareUpdate *)self nextPermittedRequestDocumentationDate];
  documentationMetadata = [(HMSoftwareUpdate *)self documentationMetadata];
  if (documentationMetadata)
  {
    if (nextPermittedRequestDocumentationDate)
    {
      date = [MEMORY[0x1E695DF00] date];
      v6 = [nextPermittedRequestDocumentationDate compare:date] != 1;
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

- (void)updateState:(int64_t)state completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMSoftwareUpdate *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdate updateState:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__HMSoftwareUpdate_updateState_completionHandler___block_invoke;
    block[3] = &unk_1E754E0D0;
    block[4] = self;
    stateCopy = state;
    v24 = handlerCopy;
    v23 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v14);
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

- (void)_handleUpdatedState:(id)state
{
  v37 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  context = [(HMSoftwareUpdate *)self context];
  pendingRequests = [context pendingRequests];
  identifier = [stateCopy identifier];
  v8 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v9 = [stateCopy numberForKey:@"state"];
  if (v9)
  {
    state = [(HMSoftwareUpdate *)self state];
    if (state == [v9 integerValue])
    {
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        integerValue = [v9 integerValue];
        if (integerValue > 5)
        {
          v22 = @"unknown";
        }

        else
        {
          v22 = off_1E7548368[integerValue];
        }

        v23 = v22;
        *buf = 138543618;
        v34 = v20;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updated state to '%@'", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      -[HMSoftwareUpdate setState:](selfCopy, "setState:", [v9 integerValue]);
      if (!v8)
      {
        delegate = [(HMSoftwareUpdate *)selfCopy delegate];
        if (objc_opt_respondsToSelector())
        {
          objc_initWeak(buf, selfCopy);
          context2 = [(HMSoftwareUpdate *)selfCopy context];
          delegateCaller = [context2 delegateCaller];
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __40__HMSoftwareUpdate__handleUpdatedState___block_invoke;
          v29[3] = &unk_1E754A2B8;
          objc_copyWeak(&v32, buf);
          delegate = delegate;
          v30 = delegate;
          v31 = v9;
          [delegateCaller invokeBlock:v29];

          objc_destroyWeak(&v32);
          objc_destroyWeak(buf);
        }

        goto LABEL_15;
      }
    }

    delegate = [(HMSoftwareUpdate *)self context];
    delegateCaller2 = [delegate delegateCaller];
    [delegateCaller2 callCompletion:v8 error:0];

LABEL_15:
LABEL_16:
    [stateCopy respondWithPayload:0];
    goto LABEL_17;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    messagePayload = [stateCopy messagePayload];
    *buf = 138543618;
    v34 = v14;
    v35 = 2112;
    v36 = messagePayload;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Missing state from message payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  [stateCopy respondWithError:v16];

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

- (void)setState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

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

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  identifier = self->_identifier;
  self->_identifier = identifierCopy;

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
  context = [(HMSoftwareUpdate *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMSU.us" receiver:self selector:sel__handleUpdatedState_];

  context2 = [(HMSoftwareUpdate *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:@"HMSU.dm" receiver:self selector:sel__handleUpdatedDocumentationMetadata_];

  context3 = [(HMSoftwareUpdate *)self context];
  messageDispatcher3 = [context3 messageDispatcher];
  [messageDispatcher3 registerForMessage:@"HMSU.du" receiver:self selector:sel__handleUpdatedDocumentation_];

  context4 = [(HMSoftwareUpdate *)self context];
  messageDispatcher4 = [context4 messageDispatcher];
  [messageDispatcher4 registerForMessage:@"HMSU.na" receiver:self selector:sel__handleUpdatedNeedsAttentionReasonsMessage_];
}

- (void)_unconfigure
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring softwareUpdate", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(HMSoftwareUpdate *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  [(HMSoftwareUpdate *)selfCopy setContext:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)configureWithContext:(id)context
{
  [(HMSoftwareUpdate *)self setContext:?];
  if (context)
  {
    identifier = [(HMSoftwareUpdate *)self identifier];

    if (identifier)
    {
      [(HMSoftwareUpdate *)self _registerNotificationHandlers];

      [(HMSoftwareUpdate *)self _requestNeedsAttentionReasonsWithCompletionHandler:&__block_literal_global_18662];
    }
  }
}

- (NSString)description
{
  releaseDate = [(HMSoftwareUpdate *)self releaseDate];
  v4 = MEMORY[0x1E696AEC0];
  version = [(HMSoftwareUpdate *)self version];
  versionString = [version versionString];
  displayableVersion = [(HMSoftwareUpdate *)self displayableVersion];
  state = [(HMSoftwareUpdate *)self state];
  if (state > 5)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E7548368[state];
  }

  v10 = v9;
  [(HMSoftwareUpdate *)self downloadSize];
  v11 = NSLocalizedFileSizeDescription();
  documentationMetadata = [(HMSoftwareUpdate *)self documentationMetadata];
  updateType = [(HMSoftwareUpdate *)self updateType];
  if (updateType - 1 > 2)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_1E75483D8[updateType - 1];
  }

  v15 = [v4 stringWithFormat:@"<Software Update, Version = %@, Displayable Version = %@, State = %@, Download Size = %@, Documentation Metadata = %@, Release Date = %@, Update Type = %@>", versionString, displayableVersion, v10, v11, documentationMetadata, releaseDate, v14];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      version = [(HMSoftwareUpdate *)self version];
      version2 = [(HMSoftwareUpdate *)v6 version];
      v9 = [version isEqual:version2];
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
  version = [(HMSoftwareUpdate *)self version];
  v3 = [version hash];

  return v3;
}

- (HMSoftwareUpdate)initWithVersion:(id)version displayableVersion:(id)displayableVersion downloadSize:(unint64_t)size state:(int64_t)state installDuration:(double)duration documentationMetadata:(id)metadata releaseDate:(id)date
{
  versionCopy = version;
  displayableVersionCopy = displayableVersion;
  metadataCopy = metadata;
  dateCopy = date;
  if (versionCopy)
  {
    v20 = dateCopy;
    v35.receiver = self;
    v35.super_class = HMSoftwareUpdate;
    v21 = [(HMSoftwareUpdate *)&v35 init];
    if (v21)
    {
      v22 = [versionCopy copy];
      version = v21->_version;
      v21->_version = v22;

      if (displayableVersionCopy)
      {
        shortVersionString = displayableVersionCopy;
      }

      else
      {
        shortVersionString = [versionCopy shortVersionString];
      }

      displayableVersion = v21->_displayableVersion;
      v21->_displayableVersion = shortVersionString;

      v21->_downloadSize = size;
      v21->_state = state;
      objc_storeStrong(&v21->_documentationMetadata, metadata);
      v21->_installDuration = duration;
      v21->_updateType = 0;
      objc_storeStrong(&v21->_releaseDate, date);
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