@interface PHScreenSharingButtonViewModel
- (NSString)callUUID;
- (id)listenWith:(id)with;
- (int64_t)currentState;
- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed;
- (void)userDidRequestScreenSharingToEnd;
- (void)userIsPresentingShareSheet;
@end

@implementation PHScreenSharingButtonViewModel

- (NSString)callUUID
{
  selfCopy = self;
  sub_10015B538();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (int64_t)currentState
{
  selfCopy = self;
  v3 = sub_10015B5B8();

  return v3;
}

- (void)userDidRequestScreenSharingToEnd
{
  selfCopy = self;
  sub_10015BFD4();
}

- (void)userIsPresentingShareSheet
{
  selfCopy = self;
  sub_10015C16C();
}

- (id)listenWith:(id)with
{
  v4 = _Block_copy(with);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_10015C644(sub_10015D840, v5);

  return v7;
}

- (void)conversationManager:(id)manager screenSharingAvailableChanged:(BOOL)changed
{
  managerCopy = manager;
  selfCopy = self;
  sub_10015D220(selfCopy, changed);
}

@end