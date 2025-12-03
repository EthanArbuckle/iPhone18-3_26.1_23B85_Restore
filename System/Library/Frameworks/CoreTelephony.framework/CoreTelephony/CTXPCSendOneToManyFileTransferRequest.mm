@interface CTXPCSendOneToManyFileTransferRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestinationList)destinationList;
- (CTLazuliFileTransferDescriptor)fileTransferDescriptor;
- (CTLazuliMessageID)messageID;
- (CTXPCSendOneToManyFileTransferRequest)initWithContext:(id)context to:(id)to withMessageID:(id)d withDescriptor:(id)descriptor;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendOneToManyFileTransferRequest

- (CTXPCSendOneToManyFileTransferRequest)initWithContext:(id)context to:(id)to withMessageID:(id)d withDescriptor:(id)descriptor
{
  v20[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  toCopy = to;
  dCopy = d;
  descriptorCopy = descriptor;
  v19[0] = @"destinationList";
  v19[1] = @"messageID";
  v20[0] = toCopy;
  v20[1] = dCopy;
  v19[2] = @"descriptor";
  v20[2] = descriptorCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v18.receiver = self;
  v18.super_class = CTXPCSendOneToManyFileTransferRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v18 initWithContext:contextCopy namedArguments:v14];

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliFileTransferDescriptor)fileTransferDescriptor
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"descriptor"];
  v4 = CTThrowingCastIfClass<CTLazuliFileTransferDescriptor>(v3);

  return v4;
}

- (CTLazuliDestinationList)destinationList
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destinationList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  messageID = [(CTXPCSendOneToManyFileTransferRequest *)self messageID];
  fileTransferDescriptor = [(CTXPCSendOneToManyFileTransferRequest *)self fileTransferDescriptor];
  destinationList = [(CTXPCSendOneToManyFileTransferRequest *)self destinationList];
  if (destinationList)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __85__CTXPCSendOneToManyFileTransferRequest_performRequestWithHandler_completionHandler___block_invoke;
    v13[3] = &unk_1E6A43CC8;
    v14 = completionHandlerCopy;
    [handlerCopy sendOneToManyFileTransferMessage:context to:destinationList withMessageID:messageID withDescriptor:fileTransferDescriptor completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v12);
  }
}

+ (id)allowedClassesForArguments
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___CTXPCSendOneToManyFileTransferRequest;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end