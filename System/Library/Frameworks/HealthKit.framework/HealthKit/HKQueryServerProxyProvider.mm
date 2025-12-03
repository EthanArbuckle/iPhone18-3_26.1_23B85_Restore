@interface HKQueryServerProxyProvider
- (HKQueryServerProxyProvider)initWithHealthStore:(id)store query:(id)query configuration:(id)configuration queryUUID:(id)d;
- (id)proxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier error:(id *)error;
- (void)fetchProxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation HKQueryServerProxyProvider

- (HKQueryServerProxyProvider)initWithHealthStore:(id)store query:(id)query configuration:(id)configuration queryUUID:(id)d
{
  configurationCopy = configuration;
  dCopy = d;
  queryCopy = query;
  storeCopy = store;
  taskIdentifier = [objc_opt_class() taskIdentifier];
  exportedInterface = [queryCopy exportedInterface];
  remoteInterface = [queryCopy remoteInterface];
  v19.receiver = self;
  v19.super_class = HKQueryServerProxyProvider;
  v17 = [(HKTaskServerProxyProvider *)&v19 initWithHealthStore:storeCopy taskIdentifier:taskIdentifier exportedObject:queryCopy exportedInterface:exportedInterface remoteInterface:remoteInterface taskUUID:dCopy];

  if (v17)
  {
    [(HKTaskServerProxyProvider *)v17 setTaskConfiguration:configurationCopy];
  }

  return v17;
}

- (void)fetchProxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier endpointHandler:(id)handler errorHandler:(id)errorHandler
{
  sourceCopy = source;
  identifierCopy = identifier;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKQueryServerProxyProvider fetchProxyServiceEndpointFromSource:a2 serviceIdentifier:self endpointHandler:? errorHandler:?];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__HKQueryServerProxyProvider_fetchProxyServiceEndpointFromSource_serviceIdentifier_endpointHandler_errorHandler___block_invoke;
  v18[3] = &unk_1E7378798;
  v19 = identifierCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v22 = errorHandlerCopy;
  v15 = errorHandlerCopy;
  v16 = handlerCopy;
  v17 = identifierCopy;
  [sourceCopy _serverProxyWithHandler:v18 errorHandler:v15];
}

void __113__HKQueryServerProxyProvider_fetchProxyServiceEndpointFromSource_serviceIdentifier_endpointHandler_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 taskUUID];
  v7 = [*(a1 + 40) taskConfiguration];
  v8 = [*(a1 + 40) shouldForceReactivation];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__HKQueryServerProxyProvider_fetchProxyServiceEndpointFromSource_serviceIdentifier_endpointHandler_errorHandler___block_invoke_2;
  v9[3] = &unk_1E7381E48;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  [v5 remote_createQueryServerEndpointForIdentifier:v4 queryUUID:v6 configuration:v7 forceReactivation:v8 completion:v9];
}

uint64_t __113__HKQueryServerProxyProvider_fetchProxyServiceEndpointFromSource_serviceIdentifier_endpointHandler_errorHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)proxyServiceEndpointFromSource:(id)source serviceIdentifier:(id)identifier error:(id *)error
{
  sourceCopy = source;
  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKQueryServerProxyProvider proxyServiceEndpointFromSource:a2 serviceIdentifier:self error:?];
  }

  v11 = sourceCopy;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__44;
  v33 = __Block_byref_object_dispose__44;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__44;
  v27 = __Block_byref_object_dispose__44;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__HKQueryServerProxyProvider_proxyServiceEndpointFromSource_serviceIdentifier_error___block_invoke;
  v22[3] = &unk_1E7378838;
  v22[4] = &v23;
  v12 = [v11 _synchronousServerProxyWithErrorHandler:v22];
  taskUUID = [(HKTaskServerProxyProvider *)self taskUUID];
  taskConfiguration = [(HKTaskServerProxyProvider *)self taskConfiguration];
  shouldForceReactivation = [(HKQueryServerProxyProvider *)self shouldForceReactivation];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __85__HKQueryServerProxyProvider_proxyServiceEndpointFromSource_serviceIdentifier_error___block_invoke_2;
  v21[3] = &unk_1E7381E70;
  v21[4] = &v29;
  v21[5] = &v23;
  [v12 remote_createQueryServerEndpointForIdentifier:identifierCopy queryUUID:taskUUID configuration:taskConfiguration forceReactivation:shouldForceReactivation completion:v21];

  v16 = v24[5];
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError(v16);
    }
  }

  v19 = v30[5];
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);

  return v19;
}

void __85__HKQueryServerProxyProvider_proxyServiceEndpointFromSource_serviceIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchProxyServiceEndpointFromSource:(uint64_t)a1 serviceIdentifier:(uint64_t)a2 endpointHandler:errorHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKQueryServerProxyProvider.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"[source isKindOfClass:HKHealthStore.class]"}];
}

- (void)proxyServiceEndpointFromSource:(uint64_t)a1 serviceIdentifier:(uint64_t)a2 error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKQueryServerProxyProvider.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"[source isKindOfClass:HKHealthStore.class]"}];
}

@end