@interface CTXPCConvertCountryCodeToISORequest
- (NSString)mcc;
@end

@implementation CTXPCConvertCountryCodeToISORequest

- (NSString)mcc
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"mcc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end