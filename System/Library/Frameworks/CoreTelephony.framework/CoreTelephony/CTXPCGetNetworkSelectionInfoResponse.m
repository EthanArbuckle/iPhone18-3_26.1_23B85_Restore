@interface CTXPCGetNetworkSelectionInfoResponse
+ (id)allowedClassesForArguments;
- (CTNetworkSelectionInfo)info;
- (CTXPCGetNetworkSelectionInfoResponse)initWithNetworkSelectionInfo:(id)a3;
@end

@implementation CTXPCGetNetworkSelectionInfoResponse

- (CTXPCGetNetworkSelectionInfoResponse)initWithNetworkSelectionInfo:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = @"selection";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetNetworkSelectionInfoResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTNetworkSelectionInfo)info
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"selection"];
  v4 = CTThrowingCastIfClass<CTNetworkSelectionInfo>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CTXPCGetNetworkSelectionInfoResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end