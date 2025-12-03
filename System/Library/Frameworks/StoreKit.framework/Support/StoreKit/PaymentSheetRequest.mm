@interface PaymentSheetRequest
- (void)encodeWithCoder:(id)coder;
@end

@implementation PaymentSheetRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_10021E13C(coderCopy);
}

@end