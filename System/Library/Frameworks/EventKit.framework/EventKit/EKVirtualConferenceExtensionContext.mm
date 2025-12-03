@interface EKVirtualConferenceExtensionContext
+ (id)_allowedItemPayloadClasses;
- (NSDate)renewalDate;
- (NSString)roomTypeIdentifier;
- (NSURL)URLForInvalidation;
- (NSURL)URLForRenewal;
- (int)requestType;
- (void)completeRequestWithAvailableRoomTypes:(id)types completionHandler:(id)handler;
- (void)completeRequestWithInvalidationSuccess:(BOOL)success error:(id)error completionHandler:(id)handler;
- (void)completeRequestWithRenewalSuccess:(BOOL)success error:(id)error completionHandler:(id)handler;
- (void)completeRequestWithVirtualConference:(id)conference completionHandler:(id)handler;
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
  inputItems = [(EKVirtualConferenceExtensionContext *)self inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v5 = [userInfo objectForKey:@"_EKVirtualConferenceRequestTypeKey"];

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
  inputItems = [(EKVirtualConferenceExtensionContext *)self inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v5 = [userInfo objectForKey:@"_EKVirtualConferenceRequestRoomTypeIdentifier"];

  return v5;
}

- (NSURL)URLForInvalidation
{
  inputItems = [(EKVirtualConferenceExtensionContext *)self inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v5 = [userInfo objectForKey:@"_EKVirtualConferenceRequestURLParameterForInvalidation"];

  return v5;
}

- (NSURL)URLForRenewal
{
  inputItems = [(EKVirtualConferenceExtensionContext *)self inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v5 = [userInfo objectForKey:@"_EKVirtualConferenceRequestURLParameterForRenewal"];

  return v5;
}

- (NSDate)renewalDate
{
  inputItems = [(EKVirtualConferenceExtensionContext *)self inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v5 = [userInfo objectForKey:@"_EKVirtualConferenceRequestDateParameterForRenewal"];

  return v5;
}

- (void)completeRequestWithAvailableRoomTypes:(id)types completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  handlerCopy = handler;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 1)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithAvailableRoomTypes:completionHandler:];
  }

  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = typesCopy;
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
        title = [v12 title];
        v25[1] = @"_EKVirtualConferenceRoomTypeIdentifierKey";
        v26[0] = title;
        identifier = [v12 identifier];
        v26[1] = identifier;
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

  [(EKVirtualConferenceExtensionContext *)self completeRequestReturningItems:v17 completionHandler:handlerCopy];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestWithVirtualConference:(id)conference completionHandler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  conferenceCopy = conference;
  handlerCopy = handler;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 2)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithVirtualConference:completionHandler:];
  }

  selfCopy = self;
  v7 = MEMORY[0x1E695DF70];
  uRLDescriptors = [conferenceCopy URLDescriptors];
  v36 = [v7 arrayWithCapacity:{objc_msgSend(uRLDescriptors, "count") + 1}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = conferenceCopy;
  obj = [conferenceCopy URLDescriptors];
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

        title = [v13 title];
        v18 = [title length];

        if (v18)
        {
          title2 = [v13 title];
          [v15 setObject:title2 forKey:@"_EKVirtualConferenceJoinMethodTitleKey"];
        }

        [v14 setUserInfo:v15];
        [v36 addObject:v14];
      }

      v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v10);
  }

  uRLDescriptors2 = [v34 URLDescriptors];
  v21 = [uRLDescriptors2 count];

  if (v21)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    title3 = [v34 title];
    v24 = [title3 length];

    if (v24)
    {
      title4 = [v34 title];
      [dictionary setObject:title4 forKey:@"_EKVirtualConferenceInfoTitleKey"];
    }

    conferenceDetails = [v34 conferenceDetails];
    v27 = [conferenceDetails length];

    if (v27)
    {
      conferenceDetails2 = [v34 conferenceDetails];
      [dictionary setObject:conferenceDetails2 forKey:@"_EKVirtualConferenceInfoDetailsKey"];
    }

    if ([dictionary count])
    {
      [dictionary setObject:@"_EKVirtualConferenceInfoTypeIdentifierKey" forKey:@"_EKVirtualConferenceTypeIdentifierKey"];
      v29 = objc_alloc_init(MEMORY[0x1E696ABE0]);
      [v29 setUserInfo:dictionary];
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

  [(EKVirtualConferenceExtensionContext *)selfCopy completeRequestReturningItems:v30 completionHandler:handlerCopy];

  v31 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestWithInvalidationSuccess:(BOOL)success error:(id)error completionHandler:(id)handler
{
  successCopy = success;
  v19[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 5)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithInvalidationSuccess:error:completionHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  if (successCopy)
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
  [(EKVirtualConferenceExtensionContext *)self completeRequestReturningItems:v13 completionHandler:handlerCopy];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)completeRequestWithRenewalSuccess:(BOOL)success error:(id)error completionHandler:(id)handler
{
  successCopy = success;
  v16[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  handlerCopy = handler;
  if ([(EKVirtualConferenceExtensionContext *)self requestType]!= 4)
  {
    [EKVirtualConferenceExtensionContext completeRequestWithRenewalSuccess:error:completionHandler:];
  }

  v10 = objc_alloc_init(MEMORY[0x1E696ABE0]);
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v12 = v11;
  if (successCopy)
  {
    v13 = @"_EKVirtualConferenceRenewalResultSucceeded";
  }

  else
  {
    v13 = @"_EKVirtualConferenceRenewalResultFailed";
  }

  [v11 setObject:v13 forKey:@"_EKVirtualConferenceRenewalResultKey"];
  if (errorCopy)
  {
    [v12 setObject:errorCopy forKey:@"_EKVirtualConferenceErrorResultKey"];
  }

  [v10 setUserInfo:v12];
  v16[0] = v10;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [(EKVirtualConferenceExtensionContext *)self completeRequestReturningItems:v14 completionHandler:handlerCopy];

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