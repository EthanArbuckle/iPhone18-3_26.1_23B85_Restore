@interface AMSEngagementMessageEventServiceResponse
- (AMSEngagementMessageEventServiceResponse)initWithJSObject:(id)a3;
- (NSDictionary)placements;
- (id)_placementRequestsWithDictionary:(id)a3;
- (id)_placementsMapWithPayload:(id)a3;
- (id)exportObject;
- (void)_preprocessMessageRequest:(id)a3 placement:(id)a4;
@end

@implementation AMSEngagementMessageEventServiceResponse

- (AMSEngagementMessageEventServiceResponse)initWithJSObject:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = AMSEngagementMessageEventServiceResponse;
  v6 = [(AMSEngagementMessageEventServiceResponse *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionaryRepresentation, a3);
    v8 = [v5 objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v5 objectForKeyedSubscript:@"dialogRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v5 objectForKeyedSubscript:@"engagementRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v5 objectForKeyedSubscript:@"placements"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (!v9)
    {
      goto LABEL_22;
    }

    objc_storeStrong(&v7->_serviceType, v9);
    if (v11)
    {
      v16 = [[AMSEngagementMessageRequest alloc] initWithJSObject:v11];
      fullScreenMessageRequest = v7->_fullScreenMessageRequest;
      v7->_fullScreenMessageRequest = v16;
    }

    v18 = [[AMSEngagementRequest alloc] initWithJSONDictionary:v13];
    engagementRequest = v7->_engagementRequest;
    v7->_engagementRequest = v18;

    v20 = [(AMSEngagementMessageEventServiceResponse *)v7 _placementsMapWithPayload:v15];
    placementsMap = v7->_placementsMap;
    v7->_placementsMap = v20;

    if (!v7->_placementsMap && !v7->_engagementRequest && !v7->_fullScreenMessageRequest)
    {
LABEL_22:

      v22 = 0;
      goto LABEL_23;
    }
  }

  v22 = v7;
LABEL_23:

  return v22;
}

- (id)exportObject
{
  v2 = self;
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v34 = @"serviceType";
  v4 = [(AMSEngagementMessageEventServiceResponse *)self serviceType];
  v35[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  v7 = [(AMSEngagementMessageEventServiceResponse *)v2 engagementRequest];

  if (v7)
  {
    v8 = [(AMSEngagementMessageEventServiceResponse *)v2 engagementRequest];
    v9 = [v8 exportObject];
    [v6 setObject:v9 forKeyedSubscript:@"engagementRequest"];
  }

  v10 = [(AMSEngagementMessageEventServiceResponse *)v2 fullScreenMessageRequest];

  if (v10)
  {
    v11 = [(AMSEngagementMessageEventServiceResponse *)v2 fullScreenMessageRequest];
    v12 = [v11 exportObject];
    [v6 setObject:v12 forKeyedSubscript:@"dialogRequest"];
  }

  v13 = [(AMSEngagementMessageEventServiceResponse *)v2 placementsMap];

  if (v13)
  {
    v27 = v6;
    v14 = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [(AMSEngagementMessageEventServiceResponse *)v2 placementsMap];
    v16 = [v15 allKeys];

    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          [(AMSEngagementMessageEventServiceResponse *)v2 placementsMap];
          v23 = v22 = v2;
          v24 = [v23 objectForKeyedSubscript:v21];
          v25 = [v24 ams_mapWithTransform:&__block_literal_global_49];
          [v14 setObject:v25 forKeyedSubscript:v21];

          v2 = v22;
        }

        v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }

    v6 = v27;
    [v27 setObject:v14 forKeyedSubscript:@"placements"];
  }

  return v6;
}

- (id)_placementsMapWithPayload:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      v23 = v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:{v11, v22, v23}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          v14 = [v6 objectForKeyedSubscript:v11];
          v15 = v14;
          if (isKindOfClass)
          {
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v25[0] = __70__AMSEngagementMessageEventServiceResponse__placementsMapWithPayload___block_invoke;
            v25[1] = &unk_1E73B7660;
            v25[2] = self;
            v25[3] = v11;
            v16 = [v14 ams_mapWithTransformIgnoresNil:v24];
            [v5 setObject:v16 forKeyedSubscript:v11];

            v17 = v15;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v15;
            }

            else
            {
              v17 = 0;
            }

            v18 = [[AMSEngagementMessageRequest alloc] initWithJSObject:v17];
            if (v18)
            {
              [(AMSEngagementMessageEventServiceResponse *)self _preprocessMessageRequest:v18 placement:v11];
              v30 = v18;
              v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
              [v5 setObject:v19 forKeyedSubscript:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v20 = [v5 copy];
    }

    else
    {
      v20 = 0;
    }

    v4 = v22;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

AMSEngagementMessageRequest *__70__AMSEngagementMessageEventServiceResponse__placementsMapWithPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[AMSEngagementMessageRequest alloc] initWithJSObject:v3];

  [*(a1 + 32) _preprocessMessageRequest:v4 placement:*(a1 + 40)];

  return v4;
}

- (id)_placementRequestsWithDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:{v10, v15}];
          v12 = [v11 makeDialogRequest];
          if (v12 && [v11 presentationAction] && objc_msgSend(v11, "presentationAction") != 2)
          {
            [v4 setObject:v12 forKeyedSubscript:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_preprocessMessageRequest:(id)a3 placement:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (-[NSString isEqualToString:](self->_serviceType, "isEqualToString:", @"appStore") && [v6 style] == 6 && objc_msgSend(v7, "isEqualToString:", @"appLevelAlert"))
  {
    v8 = +[AMSLogConfig sharedEngagementConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      serviceType = self->_serviceType;
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = serviceType;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Replacing Dashboard message style with Alert message style for placement %{public}@ serviceType %{public}@, ", &v13, 0x2Au);
    }

    [v6 setStyle:1];
  }
}

- (NSDictionary)placements
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(AMSEngagementMessageEventServiceResponse *)self placementsMap];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(AMSEngagementMessageEventServiceResponse *)self placementsMap];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [(AMSEngagementMessageEventServiceResponse *)self placementsMap];
          v13 = [v12 objectForKeyedSubscript:v11];
          v14 = [v13 firstObject];
          [v5 setObject:v14 forKeyedSubscript:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if ([v5 count])
    {
      v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end