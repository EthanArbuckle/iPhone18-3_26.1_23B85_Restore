@interface ReviewData
- (void)encodeWithCoder:(id)coder;
@end

@implementation ReviewData

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1BB1AE700(coderCopy);
}

@end