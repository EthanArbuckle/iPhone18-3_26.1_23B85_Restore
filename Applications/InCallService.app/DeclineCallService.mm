@interface DeclineCallService
- (void)declineAnsweringCallDueToLockEventWithCurrentActiveCall:(TUCall *)call completionHandler:(id)handler;
- (void)declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:(id)handler;
- (void)declineAnsweringWithCall:(TUCall *)call anayticsSourceForDismissal:(NSString *)dismissal reason:(int)reason completionHandler:(id)handler;
@end

@implementation DeclineCallService

- (void)declineAnsweringWithCall:(TUCall *)call anayticsSourceForDismissal:(NSString *)dismissal reason:(int)reason completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = call;
  *(v11 + 24) = dismissal;
  *(v11 + 32) = reason;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  callCopy = call;
  dismissalCopy = dismissal;

  sub_100211F74(&unk_1002FFA78, v11);
}

- (void)declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_100211F74(&unk_1002FFA60, v5);
}

- (void)declineAnsweringCallDueToLockEventWithCurrentActiveCall:(TUCall *)call completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = call;
  v7[3] = v6;
  v7[4] = self;
  callCopy = call;

  sub_100211F74(&unk_1002FFA48, v7);
}

@end