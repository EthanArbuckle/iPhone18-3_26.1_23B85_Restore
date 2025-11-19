@interface ODRAppReviewListener
- (void)configureClientWithConnection:(id)a3;
@end

@implementation ODRAppReviewListener

- (void)configureClientWithConnection:(id)a3
{
  v3 = a3;
  v4 = sub_1002818B4([ODRAppReviewClient alloc], v3);
}

@end