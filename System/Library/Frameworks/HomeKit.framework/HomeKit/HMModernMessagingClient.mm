@interface HMModernMessagingClient
+ (id)logCategory;
- (HMHome)home;
- (HMModernMessagingClient)initWithHome:(id)home idsTopic:(id)topic;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)registerModernMessagingRequestHandlerWithMessageName:(id)name options:(id)options requestHandler:(id)handler completionHandler:(id)completionHandler;
- (void)sendModernMessagingRequestWithMessageName:(id)name destination:(id)destination requestPayload:(id)payload options:(id)options responseHandler:(id)handler completionHandler:(id)completionHandler;
- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)name completionHandler:(id)handler;
@end

@implementation HMModernMessagingClient

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  home = [(HMModernMessagingClient *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  idsTopic = [(HMModernMessagingClient *)self idsTopic];
  v8 = [v3 stringWithFormat:@"%@:%@", uUIDString, idsTopic];

  return v8;
}

- (void)sendModernMessagingRequestWithMessageName:(id)name destination:(id)destination requestPayload:(id)payload options:(id)options responseHandler:(id)handler completionHandler:(id)completionHandler
{
  v45 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  destinationCopy = destination;
  payloadCopy = payload;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v20 = objc_autoreleasePoolPush();
  selfCopy = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v23 = v33 = payloadCopy;
    v24 = HMFBooleanToString();
    *buf = 138544386;
    v36 = v23;
    v37 = 2112;
    v38 = nameCopy;
    v39 = 2112;
    v40 = destinationCopy;
    v41 = 2112;
    v42 = optionsCopy;
    v43 = 2112;
    v44 = v24;
    _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Sending hmmm message with message name: %@, destination: %@, options: %@, oneway: %@", buf, 0x34u);

    payloadCopy = v33;
  }

  objc_autoreleasePoolPop(v20);
  home = [(HMModernMessagingClient *)selfCopy home];
  v26 = home;
  if (home)
  {
    [home sendModernMessagingRequestWithMessageName:nameCopy destination:destinationCopy requestPayload:payloadCopy options:optionsCopy responseHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    v34 = payloadCopy;
    v27 = objc_autoreleasePoolPush();
    v28 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v30;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Error while sending hmmm request handler: home is null", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    payloadCopy = v34;
    if (completionHandlerCopy)
    {
      v31 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      completionHandlerCopy[2](completionHandlerCopy, v31);
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)unregisterModernMessagingRequestHandlerWithMessageName:(id)name completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v20 = 138543618;
    v21 = v11;
    v22 = 2112;
    v23 = nameCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Unregistering hmmm request handler with message name: %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMModernMessagingClient *)selfCopy home];
  v13 = home;
  if (home)
  {
    [home unregisterModernMessagingRequestHandlerWithMessageName:nameCopy completionHandler:handlerCopy];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = selfCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error while unregistering hmmm request handler: home is null", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    if (handlerCopy)
    {
      v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      handlerCopy[2](handlerCopy, v18);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)registerModernMessagingRequestHandlerWithMessageName:(id)name options:(id)options requestHandler:(id)handler completionHandler:(id)completionHandler
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  optionsCopy = options;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v26 = 138543874;
    v27 = v17;
    v28 = 2112;
    v29 = nameCopy;
    v30 = 2112;
    v31 = optionsCopy;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Registering hmmm request handler with message name: %@, options: %@", &v26, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  home = [(HMModernMessagingClient *)selfCopy home];
  v19 = home;
  if (home)
  {
    [home registerModernMessagingRequestHandlerWithMessageName:nameCopy options:optionsCopy requestHandler:handlerCopy completionHandler:completionHandlerCopy];
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Error while registering hmmm request handler: home is null", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    if (completionHandlerCopy)
    {
      v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      completionHandlerCopy[2](completionHandlerCopy, v24);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)attributeDescriptions
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  home = [(HMModernMessagingClient *)self home];
  uuid = [home uuid];
  v6 = [v3 initWithName:@"HomeUUID" value:uuid];
  v13[0] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  idsTopic = [(HMModernMessagingClient *)self idsTopic];
  v9 = [v7 initWithName:@"IDSTopic" value:idsTopic];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (HMModernMessagingClient)initWithHome:(id)home idsTopic:(id)topic
{
  homeCopy = home;
  topicCopy = topic;
  v13.receiver = self;
  v13.super_class = HMModernMessagingClient;
  v8 = [(HMModernMessagingClient *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_home, homeCopy);
    v10 = [topicCopy copy];
    idsTopic = v9->_idsTopic;
    v9->_idsTopic = v10;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_44227 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_44227, &__block_literal_global_44228);
  }

  v3 = logCategory__hmf_once_v7_44229;

  return v3;
}

uint64_t __38__HMModernMessagingClient_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_44229;
  logCategory__hmf_once_v7_44229 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end