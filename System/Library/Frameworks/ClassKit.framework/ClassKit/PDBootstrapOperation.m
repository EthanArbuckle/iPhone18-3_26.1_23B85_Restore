@interface PDBootstrapOperation
- (BOOL)canSkipExecution;
- (id)replaceEndpoints:(id)a3 excludeEndpointIDs:(id)a4 forServiceID:(id)a5;
- (id)saveEndpointConfig:(id)a3;
- (void)prepare;
@end

@implementation PDBootstrapOperation

- (BOOL)canSkipExecution
{
  v3 = [(PDEndpointRequestOperation *)self endpointInfo];
  v4 = v3;
  if (!v3 || *(v3 + 16) == 0.0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = [(PDEndpointRequestOperation *)self endpointInfo];
    v6 = !sub_1000E9D80(v5);
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

- (id)saveEndpointConfig:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PDEndpointInfo);
  v6 = [v4 serviceId];
  sub_100087930(v5, v6);

  v7 = [v4 identifier];
  sub_10003F68C(v5, v7);

  v8 = [v4 url];
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

  v11 = [v4 payloadLimitBytes];
  if (v5)
  {
    v5->_payloadLimitBytes = v11;
    v5->_payloadLimitItems = [v4 payloadLimitItems];
    v5->_responseTTLSeconds = [v4 responseTTLSeconds];
    v5->_requiresAuth = [v4 requiresAuth];
  }

  else
  {
    [v4 payloadLimitItems];
    [v4 responseTTLSeconds];
    [v4 requiresAuth];
  }

  if ([v4 hasIsInternal])
  {
    v12 = [v4 isInternal];
    if (v5)
    {
      v5->_isInternal = v12;
    }
  }

  v13 = [(PDOperation *)self database];
  v14 = [v13 insertOrUpdateObject:v5];

  if ((v14 & 1) == 0)
  {
    v15 = [NSError cls_createErrorWithCode:100 description:@"save EndpointInfo failed!"];

    v10 = v15;
  }

  return v10;
}

- (id)replaceEndpoints:(id)a3 excludeEndpointIDs:(id)a4 forServiceID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  [v11 addObject:v10];
  if ([v9 count])
  {
    v12 = [PDDatabase whereSQLForArray:v9 prefix:@"serviceID = ? AND NOT identifier IN "];
    [v11 addObjectsFromArray:v9];
  }

  else
  {
    v12 = @"serviceID = ?";
  }

  v13 = [(PDOperation *)self database];
  [v13 deleteAll:objc_opt_class() where:v12 bindings:v11];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v26 = v11;
    v27 = v9;
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
        if (v10)
        {
          if ([@"orion" isEqualToString:v10])
          {
            v21 = [v19 serviceId];

            if (!v21)
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
    v9 = v27;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end