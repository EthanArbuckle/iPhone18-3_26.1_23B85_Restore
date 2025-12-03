@interface CTXPCGetRadioAccessTechnologyResponse
- (CTXPCGetRadioAccessTechnologyResponse)initWithRAT:(id)t;
- (NSString)rat;
@end

@implementation CTXPCGetRadioAccessTechnologyResponse

- (CTXPCGetRadioAccessTechnologyResponse)initWithRAT:(id)t
{
  v11[1] = *MEMORY[0x1E69E9840];
  tCopy = t;
  v10 = @"rat";
  v11[0] = tCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCGetRadioAccessTechnologyResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)rat
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"rat"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end