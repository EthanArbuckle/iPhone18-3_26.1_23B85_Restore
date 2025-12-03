@interface ReviewContext
- (void)encodeWithCoder:(id)coder;
@end

@implementation ReviewContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1BB1A9AFC(coderCopy);
}

@end