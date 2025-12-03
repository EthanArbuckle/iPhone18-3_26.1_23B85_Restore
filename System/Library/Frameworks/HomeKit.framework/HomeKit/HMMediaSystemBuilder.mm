@interface HMMediaSystemBuilder
+ (BOOL)canSupportMediaSystem:(id)system;
+ (BOOL)isStereoPairingSupportedForAccessories:(id)accessories;
+ (BOOL)supportsMediaSystem:(id)system;
+ (id)logCategory;
- (HMHome)home;
- (HMMediaSystemBuilder)initWithHome:(id)home;
- (HMMediaSystemBuilder)initWithHome:(id)home setupSessionIdentifier:(id)identifier;
- (HMMediaSystemBuilder)initWithHome:(id)home setupSessionIdentifier:(id)identifier mediaSystemUUID:(id)d context:(id)context components:(id)components;
- (HMMediaSystemBuilder)initWithMediaSystem:(id)system;
- (NSArray)components;
- (NSString)description;
- (NSString)name;
- (id)logIdentifier;
- (id)resultingMediaSystemFromResponse:(id)response error:(id *)error;
- (void)_callCompletion:(id)completion builderSessionID:(id)d error:(id)error response:(id)response;
- (void)_commitWithCompletionHandler:(id)handler;
- (void)addPeerAccessoryBeforeSetupSession:(id)session role:(id)role;
- (void)commitWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)handleResultingMediaSystem:(id)system;
- (void)legacyHandleResultingMediaSystem:(id)system;
- (void)setComponents:(id)components;
- (void)setName:(id)name;
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
  uuid = [(HMMediaSystemBuilder *)self uuid];
  uUIDString = [uuid UUIDString];
  builderSessionID = [(HMMediaSystemBuilder *)self builderSessionID];
  v7 = [v3 stringWithFormat:@"%@/%@", uUIDString, builderSessionID];

  return v7;
}

- (void)legacyHandleResultingMediaSystem:(id)system
{
  v23 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  home = [(HMMediaSystemBuilder *)self home];
  if (home)
  {
    mediaSystem = [(HMMediaSystemBuilder *)self mediaSystem];

    if (mediaSystem)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v19 = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = systemCopy;
        _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging resulting media system: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
      applicationData = [systemCopy applicationData];
      mediaSystem2 = [(HMMediaSystemBuilder *)selfCopy mediaSystem];
      [mediaSystem2 setApplicationData:applicationData];

      mediaSystem3 = [(HMMediaSystemBuilder *)selfCopy mediaSystem];
      [mediaSystem3 mergeFromNewObject:systemCopy isFromSerializedData:1];
    }

    else
    {
      [home stageAddedMediaSystem:systemCopy];
      mediaSystem3 = [(HMMediaSystemBuilder *)self context];
      [systemCopy __configureWithContext:mediaSystem3 home:home];
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)handleResultingMediaSystem:(id)system
{
  v27 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = systemCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling resulting media system: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMMediaSystemBuilder *)selfCopy home];
  v10 = home;
  if (home)
  {
    if ([home isFeatureHomeTheaterQFAEnabled])
    {
      mediaSystem = [(HMMediaSystemBuilder *)selfCopy mediaSystem];

      if (mediaSystem)
      {
        mediaSystem2 = [(HMMediaSystemBuilder *)selfCopy mediaSystem];
        [mediaSystem2 mergeFromNewObject:systemCopy isFromSerializedData:1];
      }

      else
      {
        context = [(HMMediaSystemBuilder *)selfCopy context];
        [systemCopy __configureWithContext:context home:v10];

        [v10 stageAddedMediaSystem:systemCopy];
        [systemCopy postConfigure];
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v20;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@QFA is not enabled", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [(HMMediaSystemBuilder *)v18 legacyHandleResultingMediaSystem:systemCopy];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
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

- (id)resultingMediaSystemFromResponse:(id)response error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v7 = [responseCopy hmf_dictionaryForKey:kMediaSystemCodingKey];
  if (v7)
  {
    home = [(HMMediaSystemBuilder *)self home];
    v9 = [HMMediaSystem mediaSystemWithDictionary:v7 home:home];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      }
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = responseCopy;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media system payload in response: %@", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (error)
    {
      [MEMORY[0x1E696ABC0] hmErrorWithCode:52];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)_callCompletion:(id)completion builderSessionID:(id)d error:(id)error response:(id)response
{
  v46 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dCopy = d;
  errorCopy = error;
  responseCopy = response;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v17;
    v44 = 2112;
    v45 = dCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Received response for Builder-Session-ID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  builderSessionID = [(HMMediaSystemBuilder *)selfCopy builderSessionID];
  v19 = HMFEqualObjects();

  if (v19)
  {
    [(HMMediaSystemBuilder *)selfCopy setBuilderSessionID:0];
    if (errorCopy)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v43 = v23;
        v44 = 2112;
        v45 = errorCopy;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Builder message responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      context = [(HMMediaSystemBuilder *)v21 context];
      delegateCaller = [context delegateCaller];
      [delegateCaller callCompletion:completionCopy error:errorCopy mediaSystem:0];
    }

    else
    {
      v41 = 0;
      v30 = [(HMMediaSystemBuilder *)selfCopy resultingMediaSystemFromResponse:responseCopy error:&v41];
      errorCopy = v41;
      if (v30)
      {
        [(HMMediaSystemBuilder *)selfCopy handleResultingMediaSystem:v30];
        context2 = [(HMMediaSystemBuilder *)selfCopy context];
        delegateCaller2 = [context2 delegateCaller];
        mediaSystem = [(HMMediaSystemBuilder *)selfCopy mediaSystem];
        v34 = mediaSystem;
        if (mediaSystem)
        {
          v35 = mediaSystem;
        }

        else
        {
          v35 = v30;
        }

        [delegateCaller2 callCompletion:completionCopy error:errorCopy mediaSystem:v35];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = selfCopy;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v39;
          v44 = 2112;
          v45 = responseCopy;
          _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to get resulting media system from response: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        context2 = [(HMMediaSystemBuilder *)v37 context];
        delegateCaller2 = [context2 delegateCaller];
        [delegateCaller2 callCompletion:completionCopy error:errorCopy mediaSystem:0];
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v43 = v29;
      v44 = 2112;
      v45 = dCopy;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to get matching builder session ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (void)_commitWithCompletionHandler:(id)handler
{
  v82 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  builderSessionID = [(HMMediaSystemBuilder *)self builderSessionID];

  if (builderSessionID)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@There is already a builder session ID in progress, cannot submit another commit", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    context = [(HMMediaSystemBuilder *)selfCopy context];
    delegateCaller = [context delegateCaller];
    array = [MEMORY[0x1E696ABC0] hmErrorWithCode:15];
    [delegateCaller callCompletion:handlerCopy error:array mediaSystem:0];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [(HMMediaSystemBuilder *)self setBuilderSessionID:uUIDString];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v61 = uUIDString;
    [dictionary setObject:uUIDString forKeyedSubscript:kMediaSystemBuilderSessionIDKey];
    configuredName = [(HMMediaSystemBuilder *)self configuredName];
    [dictionary setObject:configuredName forKeyedSubscript:kMediaSystemConfiguredNameCodingKey];

    mediaSystemUUID = [(HMMediaSystemBuilder *)self mediaSystemUUID];
    uUIDString2 = [mediaSystemUUID UUIDString];
    v62 = dictionary;
    [dictionary setObject:uUIDString2 forKeyedSubscript:kMediaSystemUUIDCodingKey];

    array = [MEMORY[0x1E695DF70] array];
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
      v60 = handlerCopy;
LABEL_7:
      v23 = 0;
      while (1)
      {
        if (*v70 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v69 + 1) + 8 * v23);
        uuid2 = [(__CFString *)v24 copy];
        serialize = [uuid2 serialize];
        [array addObject:serialize];

        accessory = [(__CFString *)v24 accessory];
        uuid = [accessory uuid];

        if (!uuid)
        {
          break;
        }

        if ([v19 containsObject:uuid])
        {
          context = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v39 = HMFGetLogIdentifier();
            components = [(HMMediaSystemBuilder *)selfCopy2 components];
            *buf = 138543874;
            v74 = v39;
            v75 = 2112;
            v76 = v24;
            v77 = 2112;
            v78 = components;
            _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Builder session does not have unique accessory UUID for component %@ in components: %@", buf, 0x20u);
          }

          v37 = 3;
LABEL_24:
          handlerCopy = v60;
          context = v61;

          objc_autoreleasePoolPop(context);
          v41 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v37];
          [(HMMediaSystemBuilder *)self _callCompletion:v60 builderSessionID:v61 error:v41 response:MEMORY[0x1E695E0F8]];
          v42 = obj;
          goto LABEL_29;
        }

        [v19 addObject:uuid];

        if (v21 == ++v23)
        {
          v21 = [(__CFString *)obj countByEnumeratingWithState:&v69 objects:v81 count:16];
          handlerCopy = v60;
          if (v21)
          {
            goto LABEL_7;
          }

          goto LABEL_14;
        }
      }

      context = objc_autoreleasePoolPush();
      selfCopy3 = self;
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

      uuid = 0;
      v37 = 20;
      goto LABEL_24;
    }

LABEL_14:

    v29 = v62;
    [v62 setObject:array forKeyedSubscript:kMediaSystemComponentsCodingKey];
    mediaSystem = [(HMMediaSystemBuilder *)self mediaSystem];
    v31 = &kUpdateMediaSystemRequest;
    if (!mediaSystem)
    {
      v31 = &kAddMediaSystemRequest;
    }

    v32 = *v31;

    mediaSystem2 = [(HMMediaSystemBuilder *)self mediaSystem];
    obja = v32;
    if (mediaSystem2)
    {
      [(HMMediaSystemBuilder *)self mediaSystem];
    }

    else
    {
      [(HMMediaSystemBuilder *)self home];
    }
    v43 = ;
    uuid2 = [v43 uuid];

    v44 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v46 = HMFGetOSLogHandle();
    context = v61;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = HMFGetLogIdentifier();
      uUIDString3 = [uuid2 UUIDString];
      *buf = 138544130;
      v74 = v47;
      v75 = 2112;
      v76 = obja;
      v77 = 2112;
      v78 = uUIDString3;
      v79 = 2112;
      v80 = v62;
      _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Committing the media system builder with message: %@, targetUUID: %@, payload: %@", buf, 0x2Au);

      v29 = v62;
    }

    objc_autoreleasePoolPop(v44);
    v49 = objc_alloc(MEMORY[0x1E69A2A10]);
    v50 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:uuid2];
    uuid = [v49 initWithName:obja destination:v50 payload:v29];

    context2 = [(HMMediaSystemBuilder *)selfCopy4 context];
    pendingRequests = [context2 pendingRequests];

    identifier = [uuid identifier];
    v54 = _Block_copy(handlerCopy);
    [pendingRequests addMediaSystemBuilder:selfCopy4 andCompletionBlock:v54 forIdentifier:identifier];

    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __53__HMMediaSystemBuilder__commitWithCompletionHandler___block_invoke;
    v65[3] = &unk_1E754E0A8;
    v66 = pendingRequests;
    v67 = identifier;
    v68 = v61;
    v55 = identifier;
    v41 = pendingRequests;
    [uuid setResponseHandler:v65];
    context3 = [(HMMediaSystemBuilder *)selfCopy4 context];
    messageDispatcher = [context3 messageDispatcher];
    [messageDispatcher sendMessage:uuid];

    v42 = obja;
LABEL_29:

    delegateCaller = v62;
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

- (void)commitWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMMediaSystemBuilder *)self context];
  if (context)
  {
    activity = [(HMMediaSystemBuilder *)self activity];
    [activity markWithReason:@"commit with completion"];
    home = [(HMMediaSystemBuilder *)self home];

    if (home)
    {
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__HMMediaSystemBuilder_commitWithCompletionHandler___block_invoke;
      block[3] = &unk_1E754E458;
      block[4] = self;
      v19 = handlerCopy;
      dispatch_async(queue, block);
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v22 = v15;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to commit due to no reference to home", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      if (handlerCopy)
      {
        v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
        (*(handlerCopy + 2))(handlerCopy, v16, 0);
      }
    }

    __HMFActivityScopeLeave();
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)setComponents:(id)components
{
  componentsCopy = components;
  componentsArray = [(HMMediaSystemBuilder *)self componentsArray];
  [componentsArray setArray:componentsCopy];
}

- (NSArray)components
{
  componentsArray = [(HMMediaSystemBuilder *)self componentsArray];
  array = [componentsArray array];

  return array;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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
  logIdentifier = [(HMMediaSystemBuilder *)self logIdentifier];
  v4 = [v2 stringWithFormat:@"[HMMediaSystemBuilder: %@]", logIdentifier];

  return v4;
}

- (void)addPeerAccessoryBeforeSetupSession:(id)session role:(id)role
{
  v42 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  roleCopy = role;
  home = [(HMMediaSystemBuilder *)self home];
  homeManager = [home homeManager];
  if (homeManager)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    uuid = [home uuid];
    uUIDString = [uuid UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:kMediaSystemHomeUUIDCodingKey];

    mediaSystemUUID = [(HMMediaSystemBuilder *)self mediaSystemUUID];
    uUIDString2 = [mediaSystemUUID UUIDString];
    [dictionary setObject:uUIDString2 forKeyedSubscript:kMediaSystemUUIDCodingKey];

    uuid2 = [sessionCopy uuid];
    uUIDString3 = [uuid2 UUIDString];
    [dictionary setObject:uUIDString3 forKeyedSubscript:kPeerAccessoryUUIDCodingKey];

    v17 = HMMediaSystemRoleTypeAsString([roleCopy type]);
    [dictionary setObject:v17 forKeyedSubscript:kPeerAccessoryRoleCodingKey];

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(roleCopy, "type")}];
      v36 = 138543874;
      v37 = v21;
      v38 = 2112;
      v39 = sessionCopy;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Adding media system hints for peer accessory %@ role %@", &v36, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = objc_alloc(MEMORY[0x1E69A2A10]);
    v24 = kAddMediaSystemHintsRequest;
    v25 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid3 = [homeManager uuid];
    v27 = [v25 initWithTarget:uuid3];
    v28 = [v23 initWithName:v24 destination:v27 payload:dictionary];

    context = [(HMMediaSystemBuilder *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v28];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    builderSessionID = [(HMMediaSystemBuilder *)selfCopy builderSessionID];
    *buf = 138543618;
    v25 = v6;
    v26 = 2112;
    v27 = builderSessionID;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing media system hints when deallocating this builder %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  home = [(HMMediaSystemBuilder *)selfCopy home];
  homeManager = [home homeManager];

  if (homeManager)
  {
    v10 = objc_alloc(MEMORY[0x1E69A2A10]);
    v11 = kRemoveMediaSystemHintsRequest;
    v12 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [homeManager uuid];
    v14 = [v12 initWithTarget:uuid];
    v15 = [v10 initWithName:v11 destination:v14 payload:0];

    context = [(HMMediaSystemBuilder *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v15];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
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

  v23.receiver = selfCopy;
  v23.super_class = HMMediaSystemBuilder;
  [(HMMediaSystemBuilder *)&v23 dealloc];
  v22 = *MEMORY[0x1E69E9840];
}

- (HMMediaSystemBuilder)initWithHome:(id)home setupSessionIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  homeCopy = home;
  uUID = [v6 UUID];
  context = [homeCopy context];
  v11 = +[HMMutableArray array];
  v12 = [(HMMediaSystemBuilder *)self initWithHome:homeCopy setupSessionIdentifier:identifierCopy mediaSystemUUID:uUID context:context components:v11];

  return v12;
}

- (HMMediaSystemBuilder)initWithMediaSystem:(id)system
{
  systemCopy = system;
  home = [systemCopy home];
  uuid = [systemCopy uuid];
  context = [home context];
  components = [systemCopy components];
  v10 = [HMMutableArray arrayWithArray:components];
  v11 = [(HMMediaSystemBuilder *)self initWithHome:home setupSessionIdentifier:0 mediaSystemUUID:uuid context:context components:v10];

  if (v11)
  {
    objc_storeStrong(&v11->_mediaSystem, system);
    name = [systemCopy name];
    name = v11->_name;
    v11->_name = name;

    configuredName = [systemCopy configuredName];
    configuredName = v11->_configuredName;
    v11->_configuredName = configuredName;
  }

  return v11;
}

- (HMMediaSystemBuilder)initWithHome:(id)home
{
  v4 = MEMORY[0x1E696AFB0];
  homeCopy = home;
  uUID = [v4 UUID];
  context = [homeCopy context];
  v8 = +[HMMutableArray array];
  v9 = [(HMMediaSystemBuilder *)self initWithHome:homeCopy setupSessionIdentifier:0 mediaSystemUUID:uUID context:context components:v8];

  return v9;
}

- (HMMediaSystemBuilder)initWithHome:(id)home setupSessionIdentifier:(id)identifier mediaSystemUUID:(id)d context:(id)context components:(id)components
{
  homeCopy = home;
  identifierCopy = identifier;
  dCopy = d;
  contextCopy = context;
  componentsCopy = components;
  v22.receiver = self;
  v22.super_class = HMMediaSystemBuilder;
  v17 = [(HMMediaSystemBuilder *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeWeak(&v17->_home, homeCopy);
    objc_storeStrong(&v18->_setupSessionIdentifier, identifier);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v18->_uuid;
    v18->_uuid = uUID;

    objc_storeStrong(&v18->_mediaSystemUUID, d);
    objc_storeStrong(&v18->_context, context);
    objc_storeStrong(&v18->_componentsArray, components);
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

+ (BOOL)isStereoPairingSupportedForAccessories:(id)accessories
{
  v54 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  if ([accessoriesCopy count] == 2)
  {
    firstObject = [accessoriesCopy firstObject];
    supportedStereoPairVersions = [firstObject supportedStereoPairVersions];

    v7 = [MEMORY[0x1E695DFA8] set];
    v8 = [MEMORY[0x1E695DFA8] set];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = accessoriesCopy;
    v9 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      selfCopy = self;
      v41 = accessoriesCopy;
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

        supportedStereoPairVersions2 = [v13 supportedStereoPairVersions];
        uuid = [v13 uuid];
        if ([v7 containsObject:uuid])
        {
          break;
        }

        [v7 addObject:uuid];
        serialNumber = [v13 serialNumber];
        if (serialNumber)
        {
          if ([v8 containsObject:serialNumber])
          {
            v34 = objc_autoreleasePoolPush();
            v35 = selfCopy;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = HMFGetLogIdentifier();
              *buf = 138543618;
              v48 = v37;
              v49 = 2112;
              v50 = serialNumber;
              _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Accessories are not supported for stereo pair as they have same serial number: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v34);
LABEL_30:

LABEL_31:
            v24 = 0;
            accessoriesCopy = v41;
            goto LABEL_32;
          }

          [v8 addObject:serialNumber];
        }

        supportedStereoPairVersions &= supportedStereoPairVersions2;

        if (v10 == ++v12)
        {
          v10 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
          self = selfCopy;
          accessoriesCopy = v41;
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy;
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
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    if (supportedStereoPairVersions)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v22 = v21 = accessoriesCopy;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:supportedStereoPairVersions];
        *buf = 138543874;
        v48 = v22;
        v49 = 2112;
        v50 = obj;
        v51 = 2112;
        v52 = v23;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Stereo pairing versions are supported for accessories: %@ stereo pair version: %@", buf, 0x20u);

        accessoriesCopy = v21;
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
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v28;
      v49 = 2112;
      v50 = accessoriesCopy;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Stereo pairing is not supported due wrong number of components: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (BOOL)supportsMediaSystem:(id)system
{
  v18 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  if ([self canSupportMediaSystem:systemCopy])
  {
    v5 = objc_alloc(MEMORY[0x1E69A2A60]);
    *v16 = *MEMORY[0x1E69A29B8];
    *&v16[16] = *(MEMORY[0x1E69A29B8] + 16);
    v6 = [v5 initWithOperatingSystemVersion:v16];
    softwareVersion = [systemCopy softwareVersion];
    v8 = [softwareVersion isAtLeastVersion:v6];

    if ((v8 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        softwareVersion2 = [systemCopy softwareVersion];
        *v16 = 138543874;
        *&v16[4] = v12;
        *&v16[12] = 2112;
        *&v16[14] = systemCopy;
        *&v16[22] = 2112;
        v17 = softwareVersion2;
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

+ (BOOL)canSupportMediaSystem:(id)system
{
  v21 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  category = [systemCopy category];
  categoryType = [category categoryType];
  v7 = [categoryType isEqualToString:@"1D8FD40E-7CAE-4AD5-9973-977D18890DE2"];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      category2 = [systemCopy category];
      v15 = 138543874;
      v16 = v11;
      v17 = 2112;
      v18 = systemCopy;
      v19 = 2112;
      v20 = category2;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Returning no since category does not support stereo for accessory: %@ category: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

@end