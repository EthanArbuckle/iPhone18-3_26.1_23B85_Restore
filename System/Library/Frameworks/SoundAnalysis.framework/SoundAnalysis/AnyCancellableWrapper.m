@interface AnyCancellableWrapper
- (void)cancel;
@end

@implementation AnyCancellableWrapper

- (void)cancel
{
  v2 = self;
  sub_1C9A474FC();
}

@end