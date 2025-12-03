@interface CTXPCDecodeSuggestionsBase64Response
+ (id)allowedClassesForArguments;
- (CTLazuliDeepLinkBase64StringDecoded)decodedPayload;
- (CTXPCDecodeSuggestionsBase64Response)initWithDecodedPayload:(id)payload;
@end

@implementation CTXPCDecodeSuggestionsBase64Response

- (CTXPCDecodeSuggestionsBase64Response)initWithDecodedPayload:(id)payload
{
  v11[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v10 = @"decodedPayload";
  v11[0] = payloadCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9.receiver = self;
  v9.super_class = CTXPCDecodeSuggestionsBase64Response;
  v6 = [(CTXPCMessage *)&v9 initWithNamedArguments:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CTLazuliDeepLinkBase64StringDecoded)decodedPayload
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"decodedPayload"];
  v4 = CTThrowingCastIfClass<CTLazuliDeepLinkBase64StringDecoded>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCDecodeSuggestionsBase64Response;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end