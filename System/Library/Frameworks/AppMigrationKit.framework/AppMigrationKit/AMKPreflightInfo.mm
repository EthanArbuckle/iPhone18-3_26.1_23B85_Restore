@interface AMKPreflightInfo
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKPreflightInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EB001FC(coderCopy);
}

@end