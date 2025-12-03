@interface AMSExpressCheckoutModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSExpressCheckoutModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_192C9EB08(coderCopy);
}

@end