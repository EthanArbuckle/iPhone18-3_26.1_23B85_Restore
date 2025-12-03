@interface CTXPCGetOperatorNameResponse
- (CTXPCGetOperatorNameResponse)initWithOperatorName:(id)name;
- (NSString)operatorName;
@end

@implementation CTXPCGetOperatorNameResponse

- (NSString)operatorName
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operatorName"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetOperatorNameResponse)initWithOperatorName:(id)name
{
  v11[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v10 = @"operatorName";
  v11[0] = nameCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetOperatorNameResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end