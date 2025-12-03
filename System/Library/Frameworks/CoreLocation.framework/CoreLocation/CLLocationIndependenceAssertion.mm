@interface CLLocationIndependenceAssertion
+ (id)newAssertionWithReason:(id)reason;
@end

@implementation CLLocationIndependenceAssertion

+ (id)newAssertionWithReason:(id)reason
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (reason)
  {
    v5 = @"kCLConnectionMessagePurposeKey";
    v6[0] = reason;
    result = -[CLAssertion initWithRegistrationMessageName:messageDictionary:]([CLLocationIndependenceAssertion alloc], "initWithRegistrationMessageName:messageDictionary:", "LocationIndependenceAssertion/kCLConnectionMessage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1]);
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end