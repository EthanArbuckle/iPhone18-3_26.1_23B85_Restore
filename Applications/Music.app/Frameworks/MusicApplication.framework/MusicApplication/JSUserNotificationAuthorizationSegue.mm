@interface JSUserNotificationAuthorizationSegue
- (void)handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation JSUserNotificationAuthorizationSegue

- (void)handleEngagementRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_18CC5C(requestCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end