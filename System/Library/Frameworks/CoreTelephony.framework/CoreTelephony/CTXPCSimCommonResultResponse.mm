@interface CTXPCSimCommonResultResponse
- (NSString)result;
@end

@implementation CTXPCSimCommonResultResponse

- (NSString)result
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"result"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end