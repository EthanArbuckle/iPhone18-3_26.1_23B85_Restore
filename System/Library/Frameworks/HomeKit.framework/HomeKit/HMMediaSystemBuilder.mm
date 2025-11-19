@interface HMMediaSystemBuilder
+ (BOOL)canSupportMediaSystem:(id)a3;
+ (BOOL)isStereoPairingSupportedForAccessories:(id)a3;
+ (BOOL)supportsMediaSystem:(id)a3;
+ (id)logCategory;
- (HMHome)home;
- (HMMediaSystemBuilder)initWithHome:(id)a3;
- (HMMediaSystemBuilder)initWithHome:(id)a3 setupSessionIdentifier:(id)a4;
- (HMMediaSystemBuilder)initWithHome:(id)a3 setupSessionIdentifier:(id)a4 mediaSystemUUID:(id)a5 context:(id)a6 components:(id)a7;
- (HMMediaSystemBuilder)initWithMediaSystem:(id)a3;
- (NSArray)components;
- (NSString)description;
- (NSString)name;
- (id)logIdentifier;
- (id)resultingMediaSystemFromResponse:(id)a3 error:(id *)a4;
- (void)_callCompletion:(id)a3 builderSessionID:(id)a4 error:(id)a5 response:(id)a6;
- (void)_commitWithCompletionHandler:(id)a3;
- (void)addPeerAccessoryBeforeSetupSession:(id)a3 role:(id)a4;
- (void)commitWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)handleResultingMediaSystem:(id)a3;
- (void)legacyHandleResultingMediaSystem:(id)a3;
- (void)setComponents:(id)a3;
- (void)setName:(id)a3;
@end

@implementation HMMediaSystemBuilder

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMMediaSystemBuilder *)self uuid];
  v5 = [v4 UUIDString];
  v6 = [(HMMediaSystemBuilder *)self builderSessionID];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (void)legacyHandleResultingMediaSystem:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystemBuilder *)self home];
  if (v5)
  {
    v6 = [(HMMediaSystemBuilder *)self mediaSystem];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = v4;
        _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging resulting media system: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [v4 applicationData];
      v12 = [(HMMediaSystemBuilder *)v8 mediaSystem];
      [v12 setApplicationData:v11];

      v13 = [(HMMediaSystemBuilder *)v8 mediaSystem];
      [v13 mergeFromNewObject:v4 isFromSerializedData:1];
    }

    else
    {
      [v5 stageAddedMediaSystem:v4];
      v13 = [(HMMediaSystemBuilder *)self context];
      [v4 __configureWithContext:v13 home:v5];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to handle resulting media system due to no home", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)handleResultingMediaSystem:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling resulting media system: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMMediaSystemBuilder *)v6 home];
  v10 = v9;
  if (v9)
  {
    if ([v9 isFeatureHomeTheaterQFAEnabled])
    {
      v11 = [(HMMediaSystemBuilder *)v6 mediaSystem];

      if (v11)
      {
        v12 = [(HMMediaSystemBuilder *)v6 mediaSystem];
        [v12 mergeFromNewObject:v4 isFromSerializedData:1];
      }

      else
      {
        v21 = [(HMMediaSystemBuilder *)v6 context];
        [v4 __configureWithContext:v21 home:v10];

        [v10 stageAddedMediaSystem:v4];
        [v4 postConfigure];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v20;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@QFA is not enabled", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMMediaSystemBuilder *)v18 legacyHandleResultingMediaSystem:v4];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v6;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v16;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed handle resulting media system due to no home", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (id)resultingMediaSystemFromResponse:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 hmf_dictionaryForKey:kMediaSystemCodingKey];
  if (v7)
  {
    v8 = [(HMMediaSystemBuilder *)self home];
    v9 = [HMMediaSystem mediaSystemWithDictionary:v7 home:v8];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v22 = 138543618;
        v23 = v19;
        v24 = 2112;
        v25 = v7;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to create media system from system payload: %@", &v22, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      if (a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media system payload in response: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (a4)
    {
      [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
      *a4 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_callCompletion:(id)a3 builderSessionID:(id)a4 error:(id)a5 response:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v17;
    v44 = 2112;
    v45 = v11;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Received response for Builder-Session-ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMMediaSystemBuilder *)v15 builderSessionID];
  v19 = HMFEqualObjects();

  if (v19)
  {
    [(HMMediaSystemBuilder *)v15 setBuilderSessionID:0];
    if (v12)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v15;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v23;
        v44 = 2112;
        v45 = v12;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Builder message responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [(HMMediaSystemBuilder *)v21 context];
      v25 = [v24 delegateCaller];
      [v25 callCompletion:v10 error:v12 mediaSystem:0];
    }

    else
    {
      v41 = 0;
      v30 = [(HMMediaSystemBuilder *)v15 resultingMediaSystemFromResponse:v13 error:&v41];
      v12 = v41;
      if (v30)
      {
        [(HMMediaSystemBuilder *)v15 handleResultingMediaSystem:v30];
        v31 = [(HMMediaSystemBuilder *)v15 context];
        v32 = [v31 delegateCaller];
        v33 = [(HMMediaSystemBuilder *)v15 mediaSystem];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = v30;
        }

        [v32 callCompletion:v10 error:v12 mediaSystem:v35];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = v15;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v39;
          v44 = 2112;
          v45 = v13;
          _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to get resulting media system from response: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        v31 = [(HMMediaSystemBuilder *)v37 context];
        v32 = [v31 delegateCaller];
        [v32 callCompletion:v10 error:v12 mediaSystem:0];
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v15;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v29;
      v44 = 2112;
      v45 = v11;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to get matching builder session ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_commitWithCompletionHandler:(id)a3
{
  v82 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystemBuilder *)self builderSessionID];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@There is already a builder session ID in progress, cannot submit another commit", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMMediaSystemBuilder *)v7 context];
    v11 = [v10 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
    [v11 callCompletion:v4 error:v12 mediaSystem:0];
  }

  else
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    [(HMMediaSystemBuilder *)self setBuilderSessionID:v14];
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v61 = v14;
    [v15 setObject:v14 forKeyedSubscript:kMediaSystemBuilderSessionIDKey];
    v16 = [(HMMediaSystemBuilder *)self configuredName];
    [v15 setObject:v16 forKeyedSubscript:kMediaSystemConfiguredNameCodingKey];

    v17 = [(HMMediaSystemBuilder *)self mediaSystemUUID];
    v18 = [v17 UUIDString];
    v62 = v15;
    [v15 setObject:v18 forKeyedSubscript:kMediaSystemUUIDCodingKey];

    v12 = [MEMORY[0x1E695DF70] array];
    v19 = [MEMORY[0x1E695DFA8] set];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [(HMMediaSystemBuilder *)self components];
    v20 = [(__CFString *)obj countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v70;
      v60 = v4;
LABEL_7:
      v23 = 0;
      while (1)
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v69 + 1) + 8 * v23);
        v25 = [(__CFString *)v24 copy];
        v26 = [v25 serialize];
        [v12 addObject:v26];

        v27 = [(__CFString *)v24 accessory];
        v28 = [v27 uuid];

        if (!v28)
        {
          break;
        }

        if ([v19 containsObject:v28])
        {
          context = objc_autoreleasePoolPush();
          v38 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            v40 = [(HMMediaSystemBuilder *)v38 components];
            *buf = 138543874;
            v74 = v39;
            v75 = 2112;
            v76 = v24;
            v77 = 2112;
            v78 = v40;
            _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Builder session does not have unique accessory UUID for component %@ in components: %@", buf, 0x20u);
          }

          v37 = 3;
LABEL_24:
          v4 = v60;
          v10 = v61;

          objc_autoreleasePoolPop(context);
          v41 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v37];
          [(HMMediaSystemBuilder *)self _callCompletion:v60 builderSessionID:v61 error:v41 response:MEMORY[0x1E695E0F8]];
          v42 = obj;
          goto LABEL_29;
        }

        [v19 addObject:v28];

        if (v21 == ++v23)
        {
          v21 = [(__CFString *)obj countByEnumeratingWithState:&v69 objects:v81 count:16];
          v4 = v60;
          if (v21)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }

      context = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v74 = v36;
        v75 = 2112;
        v76 = v24;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Builder session could not get accessory UUID for component %@", buf, 0x16u);
      }

      v28 = 0;
      v37 = 20;
      goto LABEL_24;
    }

LABEL_14:

    v29 = v62;
    [v62 setObject:v12 forKeyedSubscript:kMediaSystemComponentsCodingKey];
    v30 = [(HMMediaSystemBuilder *)self mediaSystem];
    v31 = &kUpdateMediaSystemRequest;
    if (!v30)
    {
      v31 = &kAddMediaSystemRequest;
    }

    v32 = *v31;

    v33 = [(HMMediaSystemBuilder *)self mediaSystem];
    obja = v32;
    if (v33)
    {
      [(HMMediaSystemBuilder *)self mediaSystem];
    }

    else
    {
      [(HMMediaSystemBuilder *)self home];
    }
    v43 = ;
    v25 = [v43 uuid];

    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    v10 = v61;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      v48 = [v25 UUIDString];
      *buf = 138544130;
      v74 = v47;
      v75 = 2112;
      v76 = obja;
      v77 = 2112;
      v78 = v48;
      v79 = 2112;
      v80 = v62;
      _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Committing the media system builder with message: %@, targetUUID: %@, payload: %@", buf, 0x2Au);

      v29 = v62;
    }

    objc_autoreleasePoolPop(v44);
    v49 = objc_alloc(MEMORY[0x1E69A2A10]);
    v50 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:v25];
    v28 = [v49 initWithName:obja destination:v50 payload:v29];

    v51 = [(HMMediaSystemBuilder *)v45 context];
    v52 = [v51 pendingRequests];

    v53 = [v28 identifier];
    v54 = _Block_copy(v4);
    [v52 addMediaSystemBuilder:v45 andCompletionBlock:v54 forIdentifier:v53];

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __53__HMMediaSystemBuilder__commitWithCompletionHandler___block_invoke;
    v65[3] = &unk_1E754E0A8;
    v66 = v52;
    v67 = v53;
    v68 = v61;
    v55 = v53;
    v41 = v52;
    [v28 setResponseHandler:v65];
    v56 = [(HMMediaSystemBuilder *)v45 context];
    v57 = [v56 messageDispatcher];
    [v57 sendMessage:v28];

    v42 = obja;
LABEL_29:

    v11 = v62;
  }

  v58 = *MEMORY[0x1E69E9840];
}

void __53__HMMediaSystemBuilder__commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  v10 = [v5 removeMediaSystemBuilderForIdentifier:v6];
  v9 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  [v10 _callCompletion:v9 builderSessionID:*(a1 + 48) error:v8 response:v7];
}

- (void)commitWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystemBuilder *)self context];
  if (v5)
  {
    v20 = [(HMMediaSystemBuilder *)self activity];
    [v20 markWithReason:@"commit with completion"];
    v6 = [(HMMediaSystemBuilder *)self home];

    if (v6)
    {
      v7 = [v5 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__HMMediaSystemBuilder_commitWithCompletionHandler___block_invoke;
      block[3] = &unk_1E754E458;
      block[4] = self;
      v19 = v4;
      dispatch_async(v7, block);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to commit due to no reference to home", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      if (v4)
      {
        v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
        (*(v4 + 2))(v4, v16, 0);
      }
    }

    __HMFActivityScopeLeave();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2080;
      v24 = "[HMMediaSystemBuilder commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setComponents:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSystemBuilder *)self componentsArray];
  [v5 setArray:v4];
}

- (NSArray)components
{
  v2 = [(HMMediaSystemBuilder *)self componentsArray];
  v3 = [v2 array];

  return v3;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(HMMediaSystemBuilder *)self logIdentifier];
  v4 = [v2 stringWithFormat:@"[HMMediaSystemBuilder: %@]", v3];

  return v4;
}

- (void)addPeerAccessoryBeforeSetupSession:(id)a3 role:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMediaSystemBuilder *)self home];
  v9 = [v8 homeManager];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [v8 uuid];
    v12 = [v11 UUIDString];
    [v10 setObject:v12 forKeyedSubscript:kMediaSystemHomeUUIDCodingKey];

    v13 = [(HMMediaSystemBuilder *)self mediaSystemUUID];
    v14 = [v13 UUIDString];
    [v10 setObject:v14 forKeyedSubscript:kMediaSystemUUIDCodingKey];

    v15 = [v6 uuid];
    v16 = [v15 UUIDString];
    [v10 setObject:v16 forKeyedSubscript:kPeerAccessoryUUIDCodingKey];

    v17 = HMMediaSystemRoleTypeAsString([v7 type]);
    [v10 setObject:v17 forKeyedSubscript:kPeerAccessoryRoleCodingKey];

    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "type")}];
      v36 = 138543874;
      v37 = v21;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Adding media system hints for peer accessory %@ role %@", &v36, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = objc_alloc(MEMORY[0x1E69A2A10]);
    v24 = kAddMediaSystemHintsRequest;
    v25 = objc_alloc(MEMORY[0x1E69A2A00]);
    v26 = [v9 uuid];
    v27 = [v25 initWithTarget:v26];
    v28 = [v23 initWithName:v24 destination:v27 payload:v10];

    v29 = [(HMMediaSystemBuilder *)v19 context];
    v30 = [v29 messageDispatcher];
    [v30 sendMessage:v28];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v34;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Home manager is unexpectedly nil", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [(HMMediaSystemBuilder *)v4 builderSessionID];
    *buf = 138543618;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing media system hints when deallocating this builder %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [(HMMediaSystemBuilder *)v4 home];
  v9 = [v8 homeManager];

  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = kRemoveMediaSystemHintsRequest;
    v12 = objc_alloc(MEMORY[0x1E69A2A00]);
    v13 = [v9 uuid];
    v14 = [v12 initWithTarget:v13];
    v15 = [v10 initWithName:v11 destination:v14 payload:0];

    v16 = [(HMMediaSystemBuilder *)v4 context];
    v17 = [v16 messageDispatcher];
    [v17 sendMessage:v15];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v4;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v21;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Home manager is unexpectedly nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23.receiver = v4;
  v23.super_class = HMMediaSystemBuilder;
  [(HMMediaSystemBuilder *)&v23 dealloc];
  v22 = *MEMORY[0x1E69E9840];
}

- (HMMediaSystemBuilder)initWithHome:(id)a3 setupSessionIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v8 context];
  v11 = +[HMMutableArray array];
  v12 = [(HMMediaSystemBuilder *)self initWithHome:v8 setupSessionIdentifier:v7 mediaSystemUUID:v9 context:v10 components:v11];

  return v12;
}

- (HMMediaSystemBuilder)initWithMediaSystem:(id)a3
{
  v5 = a3;
  v6 = [v5 home];
  v7 = [v5 uuid];
  v8 = [v6 context];
  v9 = [v5 components];
  v10 = [HMMutableArray arrayWithArray:v9];
  v11 = [(HMMediaSystemBuilder *)self initWithHome:v6 setupSessionIdentifier:0 mediaSystemUUID:v7 context:v8 components:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_mediaSystem, a3);
    v12 = [v5 name];
    name = v11->_name;
    v11->_name = v12;

    v14 = [v5 configuredName];
    configuredName = v11->_configuredName;
    v11->_configuredName = v14;
  }

  return v11;
}

- (HMMediaSystemBuilder)initWithHome:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [v5 context];
  v8 = +[HMMutableArray array];
  v9 = [(HMMediaSystemBuilder *)self initWithHome:v5 setupSessionIdentifier:0 mediaSystemUUID:v6 context:v7 components:v8];

  return v9;
}

- (HMMediaSystemBuilder)initWithHome:(id)a3 setupSessionIdentifier:(id)a4 mediaSystemUUID:(id)a5 context:(id)a6 components:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = HMMediaSystemBuilder;
  v17 = [(HMMediaSystemBuilder *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_home, v12);
    objc_storeStrong(&v18->_setupSessionIdentifier, a4);
    v19 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v18->_uuid;
    v18->_uuid = v19;

    objc_storeStrong(&v18->_mediaSystemUUID, a5);
    objc_storeStrong(&v18->_context, a6);
    objc_storeStrong(&v18->_componentsArray, a7);
    v18->_lock._os_unfair_lock_opaque = 0;
  }

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32_54062 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32_54062, &__block_literal_global_54063);
  }

  v3 = logCategory__hmf_once_v33_54064;

  return v3;
}

uint64_t __35__HMMediaSystemBuilder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v33_54064;
  logCategory__hmf_once_v33_54064 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (BOOL)isStereoPairingSupportedForAccessories:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] == 2)
  {
    v5 = [v4 firstObject];
    v6 = [v5 supportedStereoPairVersions];

    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = [MEMORY[0x1E695DFA8] set];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v4;
    v9 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      v40 = a1;
      v41 = v4;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        if (![HMMediaSystemBuilder supportsMediaSystem:v13])
        {
          goto LABEL_31;
        }

        v14 = [v13 supportedStereoPairVersions];
        v15 = [v13 uuid];
        if ([v7 containsObject:v15])
        {
          break;
        }

        [v7 addObject:v15];
        v16 = [v13 serialNumber];
        if (v16)
        {
          if ([v8 containsObject:v16])
          {
            v34 = objc_autoreleasePoolPush();
            v35 = v40;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              *buf = 138543618;
              v48 = v37;
              v49 = 2112;
              v50 = v16;
              _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Accessories are not supported for stereo pair as they have same serial number: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v34);
LABEL_30:

LABEL_31:
            v24 = 0;
            v4 = v41;
            goto LABEL_32;
          }

          [v8 addObject:v16];
        }

        v6 &= v14;

        if (v10 == ++v12)
        {
          v10 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
          a1 = v40;
          v4 = v41;
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

      v29 = objc_autoreleasePoolPush();
      v30 = v40;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v32;
        v49 = 2112;
        v50 = obj;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Accessories are not supported for stereo pair as they are not unique accessories: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      goto LABEL_30;
    }

LABEL_14:

    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (v6)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v22 = v21 = v4;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
        *buf = 138543874;
        v48 = v22;
        v49 = 2112;
        v50 = obj;
        v51 = 2112;
        v52 = v23;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Stereo pairing versions are supported for accessories: %@ stereo pair version: %@", buf, 0x20u);

        v4 = v21;
      }

      objc_autoreleasePoolPop(v17);
      v24 = 1;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v33;
        v49 = 2112;
        v50 = obj;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Stereo pairing versions are not supported for accessories: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v24 = 0;
    }

LABEL_32:
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = a1;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v28;
      v49 = 2112;
      v50 = v4;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Stereo pairing is not supported due wrong number of components: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)supportsMediaSystem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([a1 canSupportMediaSystem:v4])
  {
    v5 = objc_alloc(MEMORY[0x1E69A2A60]);
    *v16 = *MEMORY[0x1E69A29B8];
    *&v16[16] = *(MEMORY[0x1E69A29B8] + 16);
    v6 = [v5 initWithOperatingSystemVersion:v16];
    v7 = [v4 softwareVersion];
    v8 = [v7 isAtLeastVersion:v6];

    if ((v8 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v4 softwareVersion];
        *v16 = 138543874;
        *&v16[4] = v12;
        *&v16[12] = 2112;
        *&v16[14] = v4;
        *&v16[22] = 2112;
        v17 = v13;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Does not support media system due to accessory: %@ software version: %@", v16, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)canSupportMediaSystem:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 category];
  v6 = [v5 categoryType];
  v7 = [v6 isEqualToString:@"1D8FD40E-7CAE-4AD5-9973-977D18890DE2"];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 category];
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Returning no since category does not support stereo for accessory: %@ category: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

@end