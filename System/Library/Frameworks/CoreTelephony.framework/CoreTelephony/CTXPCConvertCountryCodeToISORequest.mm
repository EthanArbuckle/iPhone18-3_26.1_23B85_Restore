@interface CTXPCConvertCountryCodeToISORequest
- (NSString)mcc;
@end

@implementation CTXPCConvertCountryCodeToISORequest

- (NSString)mcc
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"mcc"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end