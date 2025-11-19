@interface DeclineCallService
- (void)declineAnsweringCallDueToLockEventWithCurrentActiveCall:(TUCall *)a3 completionHandler:(id)a4;
- (void)declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:(id)a3;
- (void)declineAnsweringWithCall:(TUCall *)a3 anayticsSourceForDismissal:(NSString *)a4 reason:(int)a5 completionHandler:(id)a6;
@end

@implementation DeclineCallService

- (void)declineAnsweringWithCall:(TUCall *)a3 anayticsSourceForDismissal:(NSString *)a4 reason:(int)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5;
  *(v11 + 40) = v10;
  *(v11 + 48) = self;
  v12 = a3;
  v13 = a4;

  sub_100211F74(&unk_1002FFA78, v11);
}

- (void)declineAnsweringFrontMostCallViaUserActionWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_100211F74(&unk_1002FFA60, v5);
}

- (void)declineAnsweringCallDueToLockEventWithCurrentActiveCall:(TUCall *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;

  sub_100211F74(&unk_1002FFA48, v7);
}

@end