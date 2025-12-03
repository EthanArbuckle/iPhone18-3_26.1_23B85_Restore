@interface AnyCancellableWrapper
- (void)cancel;
@end

@implementation AnyCancellableWrapper

- (void)cancel
{
  selfCopy = self;
  sub_1C9A474FC();
}

@end