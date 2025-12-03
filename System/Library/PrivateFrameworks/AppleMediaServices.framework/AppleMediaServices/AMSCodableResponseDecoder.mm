@interface AMSCodableResponseDecoder
- (id)resultFromResult:(id)result error:(id *)error;
@end

@implementation AMSCodableResponseDecoder

- (id)resultFromResult:(id)result error:(id *)error
{
  resultCopy = result;
  selfCopy = self;
  sub_192C749E0(resultCopy);

  return resultCopy;
}

@end