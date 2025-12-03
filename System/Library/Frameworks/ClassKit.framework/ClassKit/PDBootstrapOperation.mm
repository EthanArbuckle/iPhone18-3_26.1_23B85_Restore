@interface PDBootstrapOperation
- (BOOL)canSkipExecution;
- (id)replaceEndpoints:(id)endpoints excludeEndpointIDs:(id)ds forServiceID:(id)d;
- (id)saveEndpointConfig:(id)config;
- (void)prepare;
@end

@implementation PDBootstrapOperation

- (BOOL)canSkipExecution
{
  endpointInfo = [(PDEndpointRequestOperation *)self endpointInfo];
  v4 = endpointInfo;
  if (!endpointInfo || *(endpointInfo + 16) == 0.0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    endpointInfo2 = [(PDEndpointRequestOperation *)self endpointInfo];
    v6 = !sub_1000E9D80(endpointInfo2);
  }

  return v6;
}

- (void)prepare
{
  v4.receiver = self;
  v4.super_class = PDBootstrapOperation;
  [(PDAsyncOperation *)&v4 prepare];
  if ([(PDBootstrapOperation *)self canSkipExecution])
  {
    v3.receiver = self;
    v3.super_class = PDBootstrapOperation;
    [(PDOperation *)&v3 setFinished:1];
  }
}

- (id)saveEndpointConfig:(id)config
{
  configCopy = config;
  v5 = objc_alloc_init(PDEndpointInfo);
  serviceId = [configCopy serviceId];
  sub_100087930(v5, serviceId);

  identifier = [configCopy identifier];
  sub_10003F68C(v5, identifier);

  v8 = [configCopy url];
  sub_10003F69C(v5, v8);

  v9 = sub_1000E9BC0(v5);

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [NSError cls_createErrorWithCode:307 description:@"Server sent invalid URL!"];
  }

  payloadLimitBytes = [configCopy payloadLimitBytes];
  if (v5)
  {
    v5->_payloadLimitBytes = payloadLimitBytes;
    v5->_payloadLimitItems = [configCopy payloadLimitItems];
    v5->_responseTTLSeconds = [configCopy responseTTLSeconds];
    v5->_requiresAuth = [configCopy requiresAuth];
  }

  else
  {
    [configCopy payloadLimitItems];
    [configCopy responseTTLSeconds];
    [configCopy requiresAuth];
  }

  if ([configCopy hasIsInternal])
  {
    isInternal = [configCopy isInternal];
    if (v5)
    {
      v5->_isInternal = isInternal;
    }
  }

  database = [(PDOperation *)self database];
  v14 = [database insertOrUpdateObject:v5];

  if ((v14 & 1) == 0)
  {
    v15 = [NSError cls_createErrorWithCode:100 description:@"save EndpointInfo failed!"];

    v10 = v15;
  }

  return v10;
}

- (id)replaceEndpoints:(id)endpoints excludeEndpointIDs:(id)ds forServiceID:(id)d
{
  endpointsCopy = endpoints;
  dsCopy = ds;
  dCopy = d;
  v11 = objc_opt_new();
  [v11 addObject:dCopy];
  if ([dsCopy count])
  {
    v12 = [PDDatabase whereSQLForArray:dsCopy prefix:@"serviceID = ? AND NOT identifier IN "];
    [v11 addObjectsFromArray:dsCopy];
  }

  else
  {
    v12 = @"serviceID = ?";
  }

  database = [(PDOperation *)self database];
  [database deleteAll:objc_opt_class() where:v12 bindings:v11];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = endpointsCopy;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v26 = v11;
    v27 = dsCopy;
    v17 = *v29;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        if (dCopy)
        {
          if ([@"orion" isEqualToString:dCopy])
          {
            serviceId = [v19 serviceId];

            if (!serviceId)
            {
              [v19 setServiceId:@"orion"];
            }
          }
        }

        v22 = [(PDBootstrapOperation *)self overrideConfig:v19];
        if (v22)
        {
          v23 = [(PDBootstrapOperation *)self saveEndpointConfig:v22];
          if (v23)
          {
            v24 = v23;

            objc_autoreleasePoolPop(v20);
            goto LABEL_19;
          }
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v24 = 0;
LABEL_19:
    v11 = v26;
    dsCopy = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end