@interface CTXPCSimCommonResultResponse
- (NSString)result;
@end

@implementation CTXPCSimCommonResultResponse

- (NSString)result
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"result"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

@end