@interface ODRAppReviewListener
- (void)configureClientWithConnection:(id)connection;
@end

@implementation ODRAppReviewListener

- (void)configureClientWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_1002818B4([ODRAppReviewClient alloc], connectionCopy);
}

@end