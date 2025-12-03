@interface EKVirtualConferenceProvider
- (EKVirtualConferenceProvider)init;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)fetchAvailableRoomTypesWithCompletionHandler:(void *)completionHandler;
- (void)fetchVirtualConferenceForIdentifier:(EKVirtualConferenceRoomTypeIdentifier)identifier completionHandler:(void *)completionHandler;
@end

@implementation EKVirtualConferenceProvider

- (EKVirtualConferenceProvider)init
{
  v10.receiver = self;
  v10.super_class = EKVirtualConferenceProvider;
  v2 = [(EKVirtualConferenceProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v4, sel_beginRequestWithExtensionContext_);
    if (InstanceMethod != class_getInstanceMethod(v3, sel_beginRequestWithExtensionContext_))
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D920];
      v8 = NSStringFromClass(v3);
      [v6 raise:v7 format:{@"You have overridden beginRequestWithExtensionContext: on your subclass of EKVirtualConferenceProvider (%@) - this is not allowed", v8}];
    }
  }

  return v2;
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  if ([contextCopy requestType] == 1)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__EKVirtualConferenceProvider_beginRequestWithExtensionContext___block_invoke;
    v16[3] = &unk_1E77FD5D8;
    v17 = contextCopy;
    [(EKVirtualConferenceProvider *)self fetchAvailableRoomTypesWithCompletionHandler:v16];
    v5 = v17;
  }

  else if ([contextCopy requestType] == 2)
  {
    roomTypeIdentifier = [contextCopy roomTypeIdentifier];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__EKVirtualConferenceProvider_beginRequestWithExtensionContext___block_invoke_2;
    v14[3] = &unk_1E77FD600;
    v15 = contextCopy;
    [(EKVirtualConferenceProvider *)self fetchVirtualConferenceForIdentifier:roomTypeIdentifier completionHandler:v14];

    v5 = v15;
  }

  else if ([contextCopy requestType] == 5)
  {
    uRLForInvalidation = [contextCopy URLForInvalidation];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__EKVirtualConferenceProvider_beginRequestWithExtensionContext___block_invoke_3;
    v12[3] = &unk_1E77FD628;
    v13 = contextCopy;
    [(EKVirtualConferenceProvider *)self invalidateURL:uRLForInvalidation withCompletionHandler:v12];

    v5 = v13;
  }

  else
  {
    if ([contextCopy requestType] != 4)
    {
      [contextCopy completeRequestReturningItems:0 completionHandler:0];
      goto LABEL_10;
    }

    uRLForRenewal = [contextCopy URLForRenewal];
    renewalDate = [contextCopy renewalDate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__EKVirtualConferenceProvider_beginRequestWithExtensionContext___block_invoke_4;
    v10[3] = &unk_1E77FD628;
    v11 = contextCopy;
    [(EKVirtualConferenceProvider *)self extendExpirationOfURL:uRLForRenewal toExpirationDate:renewalDate withCompletion:v10];

    v5 = v11;
  }

LABEL_10:
}

- (void)fetchAvailableRoomTypesWithCompletionHandler:(void *)completionHandler
{
  v14 = completionHandler;
  objc_opt_class();
  v3 = NSRequestConcreteImplementation();
  v11 = OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  v12(v11);
}

- (void)fetchVirtualConferenceForIdentifier:(EKVirtualConferenceRoomTypeIdentifier)identifier completionHandler:(void *)completionHandler
{
  v15 = completionHandler;
  objc_opt_class();
  v4 = NSRequestConcreteImplementation();
  v12 = OUTLINED_FUNCTION_0_2(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);
  v13(v12);
}

@end