@interface EKVirtualConferenceExtensionContext
+ (id)_allowedItemPayloadClasses;
- (NSDate)renewalDate;
- (NSString)roomTypeIdentifier;
- (NSURL)URLForInvalidation;
- (NSURL)URLForRenewal;
- (int)requestType;
- (void)completeRequestWithAvailableRoomTypes:(id)a3 completionHandler:(id)a4;
- (void)completeRequestWithInvalidationSuccess:(BOOL)a3 error:(id)a4 completionHandler:(id)a5;
- (void)completeRequestWithRenewalSuccess:(BOOL)a3 error:(id)a4 completionHandler:(id)a5;
- (void)completeRequestWithVirtualConference:(id)a3 completionHandler:(id)a4;
@end

@implementation EKVirtualConferenceExtensionContext

+ (id)_allowedItemPayloadClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (int)requestType
{
  v2 = [(EKVirtualConferenceExtensionContext *)self inputItems];
  v3 = [v2 firstObject];

  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"_EKVirtualConferenceRequestTypeKey"];

  if ([@"_EKVirtualConferenceRequestTypeRoomTypes" isEqualToString:v5])
  {
    v6 = 1;
  }

  else if ([@"_EKVirutalConferenceRequestTypeJoinMethodsForRoomType" isEqualToString:v5])
  {
    v6 = 2;
  }

  else if ([@"_EKVirtualConferenceRequestTypeURLInvalidate" isEqualToString:v5])
  {
    v6 = 5;
  }

  else if ([@"_EKVirtualConferenceRequestTypeURLRenew" isEqualToString:v5])
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSString)roomTypeIdentifier
{
  v2 = [(EKVirtualConferenceExtensionContext *)self inputItems];
  v3 = [v2 firstObject];

  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"_EKVirtualConferenceRequestRoomTypeIdentifier"];

  return v5;
}

- (NSURL)URLForInvalidation
{
  v2 = [(EKVirtualConferenceExtensionContext *)self inputItems];
  v3 = [v2 firstObject];

  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"_EKVirtualConferenceRequestURLParameterForInvalidation"];

  return v5;
}

- (NSURL)URLForRenewal
{
  v2 = [(EKVirtualConferenceExtensionContext *)self inputItems];
  v3 = [v2 firstObject];

  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"_EKVirtualConferenceRequestURLParameterForRenewal"];

  return v5;
}

- (NSDate)renewalDate
{
  v2 = [(EKVirtualConferenceExtensionContext *)self inputItems];
  v3 = [v2 firstObject];

  v4 = [v3 userInfo];
  v5 = [v4 objectForKey:@"_EKVirtualConferenceRequestDateParameterForRenewal"];

  return v5;
}

- (void)completeRequestWithAvailableRoomTypes:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = a4;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 1)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithAvailableRoomTypes:completionHandler:];
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = objc_alloc_init(MEMORY[0x1E696ABE0]);
        v25[0] = @"_EKVirtualConferenceRoomTypeTitleKey";
        v14 = [v12 title];
        v25[1] = @"_EKVirtualConferenceRoomTypeIdentifierKey";
        v26[0] = v14;
        v15 = [v12 identifier];
        v26[1] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
        [v13 setUserInfo:v16];

        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  [(EKVirtualConferenceExtensionContext *)self completeRequestReturningItems:v17 completionHandler:v19];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestWithVirtualConference:(id)a3 completionHandler:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = a4;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 2)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithVirtualConference:completionHandler:];
  }

  v33 = self;
  v7 = MEMORY[0x1E695DF70];
  v8 = [v6 URLDescriptors];
  v36 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count") + 1}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = v6;
  obj = [v6 URLDescriptors];
  v9 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = objc_alloc_init(MEMORY[0x1E696ABE0]);
        v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
        [v15 setObject:@"_EKVirtualConferenceJoinMethodTypeIdentifierKey" forKey:@"_EKVirtualConferenceTypeIdentifierKey"];
        v16 = [v13 URL];
        [v15 setObject:v16 forKey:@"_EKVirtualConferenceJoinMethodURLKey"];

        v17 = [v13 title];
        v18 = [v17 length];

        if (v18)
        {
          v19 = [v13 title];
          [v15 setObject:v19 forKey:@"_EKVirtualConferenceJoinMethodTitleKey"];
        }

        [v14 setUserInfo:v15];
        [v36 addObject:v14];
      }

      v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v10);
  }

  v20 = [v34 URLDescriptors];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [MEMORY[0x1E695DF90] dictionary];
    v23 = [v34 title];
    v24 = [v23 length];

    if (v24)
    {
      v25 = [v34 title];
      [v22 setObject:v25 forKey:@"_EKVirtualConferenceInfoTitleKey"];
    }

    v26 = [v34 conferenceDetails];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [v34 conferenceDetails];
      [v22 setObject:v28 forKey:@"_EKVirtualConferenceInfoDetailsKey"];
    }

    if ([v22 count])
    {
      [v22 setObject:@"_EKVirtualConferenceInfoTypeIdentifierKey" forKey:@"_EKVirtualConferenceTypeIdentifierKey"];
      v29 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      [v29 setUserInfo:v22];
      [v36 addObject:v29];
    }
  }

  if ([v36 count])
  {
    v30 = v36;
  }

  else
  {
    v30 = 0;
  }

  [(EKVirtualConferenceExtensionContext *)v33 completeRequestReturningItems:v30 completionHandler:v32];

  v31 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestWithInvalidationSuccess:(BOOL)a3 error:(id)a4 completionHandler:(id)a5
{
  v5 = a3;
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 5)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithInvalidationSuccess:error:completionHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  if (v5)
  {
    v18 = @"_EKVirtualConferenceInvalidationResultKey";
    v19[0] = @"_EKVirtualConferenceInvalidationResultSucceeded";
    v9 = MEMORY[0x1E695DF20];
    v10 = v19;
    v11 = &v18;
  }

  else
  {
    v16 = @"_EKVirtualConferenceInvalidationResultKey";
    v17 = @"_EKVirtualConferenceInvalidationResultFailed";
    v9 = MEMORY[0x1E695DF20];
    v10 = &v17;
    v11 = &v16;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  [v8 setUserInfo:v12];

  v15 = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  [(EKVirtualConferenceExtensionContext *)self completeRequestReturningItems:v13 completionHandler:v7];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestWithRenewalSuccess:(BOOL)a3 error:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 4)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithRenewalSuccess:error:completionHandler:];
  }

  v10 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v12 = v11;
  if (v6)
  {
    v13 = @"_EKVirtualConferenceRenewalResultSucceeded";
  }

  else
  {
    v13 = @"_EKVirtualConferenceRenewalResultFailed";
  }

  [v11 setObject:v13 forKey:@"_EKVirtualConferenceRenewalResultKey"];
  if (v8)
  {
    [v12 setObject:v8 forKey:@"_EKVirtualConferenceErrorResultKey"];
  }

  [v10 setUserInfo:v12];
  v16[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(EKVirtualConferenceExtensionContext *)self completeRequestReturningItems:v14 completionHandler:v9];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestWithAvailableRoomTypes:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeRequestWithVirtualConference:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeRequestWithInvalidationSuccess:error:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)completeRequestWithRenewalSuccess:error:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end