@interface AMSEngagementMessageEventServiceResponse
- (AMSEngagementMessageEventServiceResponse)initWithJSObject:(id)object;
- (NSDictionary)placements;
- (id)_placementRequestsWithDictionary:(id)dictionary;
- (id)_placementsMapWithPayload:(id)payload;
- (id)exportObject;
- (void)_preprocessMessageRequest:(id)request placement:(id)placement;
@end

@implementation AMSEngagementMessageEventServiceResponse

- (AMSEngagementMessageEventServiceResponse)initWithJSObject:(id)object
{
  objectCopy = object;
  v24.receiver = self;
  v24.super_class = AMSEngagementMessageEventServiceResponse;
  v6 = [(AMSEngagementMessageEventServiceResponse *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionaryRepresentation, object);
    v8 = [objectCopy objectForKeyedSubscript:@"serviceType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [objectCopy objectForKeyedSubscript:@"dialogRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [objectCopy objectForKeyedSubscript:@"engagementRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [objectCopy objectForKeyedSubscript:@"placements"];
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
  selfCopy = self;
  v35[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v34 = @"serviceType";
  serviceType = [(AMSEngagementMessageEventServiceResponse *)self serviceType];
  v35[0] = serviceType;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  engagementRequest = [(AMSEngagementMessageEventServiceResponse *)selfCopy engagementRequest];

  if (engagementRequest)
  {
    engagementRequest2 = [(AMSEngagementMessageEventServiceResponse *)selfCopy engagementRequest];
    exportObject = [engagementRequest2 exportObject];
    [v6 setObject:exportObject forKeyedSubscript:@"engagementRequest"];
  }

  fullScreenMessageRequest = [(AMSEngagementMessageEventServiceResponse *)selfCopy fullScreenMessageRequest];

  if (fullScreenMessageRequest)
  {
    fullScreenMessageRequest2 = [(AMSEngagementMessageEventServiceResponse *)selfCopy fullScreenMessageRequest];
    exportObject2 = [fullScreenMessageRequest2 exportObject];
    [v6 setObject:exportObject2 forKeyedSubscript:@"dialogRequest"];
  }

  placementsMap = [(AMSEngagementMessageEventServiceResponse *)selfCopy placementsMap];

  if (placementsMap)
  {
    v27 = v6;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    placementsMap2 = [(AMSEngagementMessageEventServiceResponse *)selfCopy placementsMap];
    allKeys = [placementsMap2 allKeys];

    obj = allKeys;
    v17 = [allKeys countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          [(AMSEngagementMessageEventServiceResponse *)selfCopy placementsMap];
          v23 = v22 = selfCopy;
          v24 = [v23 objectForKeyedSubscript:v21];
          v25 = [v24 ams_mapWithTransform:&__block_literal_global_49];
          [dictionary setObject:v25 forKeyedSubscript:v21];

          selfCopy = v22;
        }

        v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }

    v6 = v27;
    [v27 setObject:dictionary forKeyedSubscript:@"placements"];
  }

  return v6;
}

- (id)_placementsMapWithPayload:(id)payload
{
  v32 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (payloadCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = payloadCopy;
    v6 = payloadCopy;
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
            [dictionary setObject:v16 forKeyedSubscript:v11];

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
              [dictionary setObject:v19 forKeyedSubscript:v11];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v8);
    }

    if ([dictionary count])
    {
      v20 = [dictionary copy];
    }

    else
    {
      v20 = 0;
    }

    payloadCopy = v22;
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

- (id)_placementRequestsWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = dictionaryCopy;
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
          makeDialogRequest = [v11 makeDialogRequest];
          if (makeDialogRequest && [v11 presentationAction] && objc_msgSend(v11, "presentationAction") != 2)
          {
            [dictionary setObject:makeDialogRequest forKeyedSubscript:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_preprocessMessageRequest:(id)request placement:(id)placement
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  placementCopy = placement;
  if (-[NSString isEqualToString:](self->_serviceType, "isEqualToString:", @"appStore") && [requestCopy style] == 6 && objc_msgSend(placementCopy, "isEqualToString:", @"appLevelAlert"))
  {
    v8 = +[AMSLogConfig sharedEngagementConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      serviceType = self->_serviceType;
      v13 = 138544130;
      v14 = v10;
      v15 = 2114;
      v16 = v11;
      v17 = 2114;
      v18 = placementCopy;
      v19 = 2114;
      v20 = serviceType;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Replacing Dashboard message style with Alert message style for placement %{public}@ serviceType %{public}@, ", &v13, 0x2Au);
    }

    [requestCopy setStyle:1];
  }
}

- (NSDictionary)placements
{
  v22 = *MEMORY[0x1E69E9840];
  placementsMap = [(AMSEngagementMessageEventServiceResponse *)self placementsMap];
  v4 = [placementsMap count];

  if (v4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    placementsMap2 = [(AMSEngagementMessageEventServiceResponse *)self placementsMap];
    v7 = [placementsMap2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(placementsMap2);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          placementsMap3 = [(AMSEngagementMessageEventServiceResponse *)self placementsMap];
          v13 = [placementsMap3 objectForKeyedSubscript:v11];
          firstObject = [v13 firstObject];
          [dictionary setObject:firstObject forKeyedSubscript:v11];
        }

        v8 = [placementsMap2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    if ([dictionary count])
    {
      v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
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