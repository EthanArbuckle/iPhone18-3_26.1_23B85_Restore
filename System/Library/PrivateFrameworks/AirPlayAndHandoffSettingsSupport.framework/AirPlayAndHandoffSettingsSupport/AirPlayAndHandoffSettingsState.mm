@interface AirPlayAndHandoffSettingsState
- (void)profileNotification:(id)notification;
- (void)transferToHomePodEnabledDidChange;
@end

@implementation AirPlayAndHandoffSettingsState

- (void)transferToHomePodEnabledDidChange
{
  selfCopy = self;
  sub_23E86FE2C();
}

- (void)profileNotification:(id)notification
{
  v4 = sub_23E87545C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E87543C();
  selfCopy = self;
  sub_23E8700BC(v8);

  (*(v5 + 8))(v8, v4);
}

@end