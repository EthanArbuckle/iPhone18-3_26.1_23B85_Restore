@interface CTXPCRetrieveMessageResponse
+ (id)allowedClassesForArguments;
- (CTLazuliMessageEnvelope)messageEnvelope;
- (CTXPCRetrieveMessageResponse)initWithMessageEnvelope:(id)envelope;
@end

@implementation CTXPCRetrieveMessageResponse

- (CTXPCRetrieveMessageResponse)initWithMessageEnvelope:(id)envelope
{
  v11[1] = *MEMORY[0x1E69E9840];
  envelopeCopy = envelope;
  v10 = @"messageEnvelope";
  v11[0] = envelopeCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCRetrieveMessageResponse;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTLazuliMessageEnvelope)messageEnvelope
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageEnvelope"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageEnvelope>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCRetrieveMessageResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end