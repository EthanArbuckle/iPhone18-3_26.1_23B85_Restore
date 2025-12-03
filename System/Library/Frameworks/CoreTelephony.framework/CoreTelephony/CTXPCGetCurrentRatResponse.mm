@interface CTXPCGetCurrentRatResponse
- (CTXPCGetCurrentRatResponse)initWithRat:(id)rat;
- (NSString)rat;
@end

@implementation CTXPCGetCurrentRatResponse

- (NSString)rat
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"rat"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (CTXPCGetCurrentRatResponse)initWithRat:(id)rat
{
  v11[1] = *MEMORY[0x1E69E9840];
  ratCopy = rat;
  v10 = @"rat";
  v11[0] = ratCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetCurrentRatResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end