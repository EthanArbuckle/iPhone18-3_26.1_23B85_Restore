@interface AMSExpressCheckoutResultModel
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSExpressCheckoutResultModel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_192CA1F44(coderCopy);
}

@end