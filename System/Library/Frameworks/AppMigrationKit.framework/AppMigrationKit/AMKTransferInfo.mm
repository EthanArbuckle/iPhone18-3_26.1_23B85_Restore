@interface AMKTransferInfo
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMKTransferInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_29EAFFB84(coderCopy);
}

@end