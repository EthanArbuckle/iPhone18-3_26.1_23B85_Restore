@interface AMSPaymentConfirmationResult
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPaymentConfirmationResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_192C3F750(coderCopy);
}

@end