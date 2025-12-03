@interface ExpressCheckoutCard
- (void)encodeWithCoder:(id)coder;
@end

@implementation ExpressCheckoutCard

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_192C9C478(coderCopy);
}

@end