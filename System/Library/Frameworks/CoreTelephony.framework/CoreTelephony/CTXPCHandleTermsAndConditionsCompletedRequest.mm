@interface CTXPCHandleTermsAndConditionsCompletedRequest
+ (id)allowedClassesForArguments;
- (BOOL)consented;
- (id)sourceIccid;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCHandleTermsAndConditionsCompletedRequest

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  sourceIccid = [(CTXPCHandleTermsAndConditionsCompletedRequest *)self sourceIccid];
  consented = [(CTXPCHandleTermsAndConditionsCompletedRequest *)self consented];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __93__CTXPCHandleTermsAndConditionsCompletedRequest_performRequestWithHandler_completionHandler___block_invoke;
  v11[3] = &unk_1E6A43CC8;
  v10 = completionHandlerCopy;
  v12 = v10;
  [handlerCopy handleTermsAndConditionsCompleted:sourceIccid consented:consented completion:v11];
}

+ (id)allowedClassesForArguments
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCHandleTermsAndConditionsCompletedRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)sourceIccid
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"sourceIccid"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (BOOL)consented
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"consented"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

@end