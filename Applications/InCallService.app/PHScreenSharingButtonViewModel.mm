@interface PHScreenSharingButtonViewModel
- (NSString)callUUID;
- (id)listenWith:(id)a3;
- (int64_t)currentState;
- (void)conversationManager:(id)a3 screenSharingAvailableChanged:(BOOL)a4;
- (void)userDidRequestScreenSharingToEnd;
- (void)userIsPresentingShareSheet;
@end

@implementation PHScreenSharingButtonViewModel

- (NSString)callUUID
{
  v2 = self;
  sub_10015B538();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)currentState
{
  v2 = self;
  v3 = sub_10015B5B8();

  return v3;
}

- (void)userDidRequestScreenSharingToEnd
{
  v2 = self;
  sub_10015BFD4();
}

- (void)userIsPresentingShareSheet
{
  v2 = self;
  sub_10015C16C();
}

- (id)listenWith:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = sub_10015C644(sub_10015D840, v5);

  return v7;
}

- (void)conversationManager:(id)a3 screenSharingAvailableChanged:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10015D220(v7, a4);
}

@end