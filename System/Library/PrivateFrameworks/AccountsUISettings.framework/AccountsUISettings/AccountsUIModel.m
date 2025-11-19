@interface AccountsUIModel
- (_TtP8Settings20SettingsHostProtocol_)settingsHost;
- (void)accountWasModified:(void *)a3;
- (void)accountWasRemoved:(id)a3;
- (void)setSettingsHost:(id)a3;
- (void)willSelect:(id)a3;
@end

@implementation AccountsUIModel

- (void)accountWasModified:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_23DCE7B80(v4, 0);
}

- (_TtP8Settings20SettingsHostProtocol_)settingsHost
{
  v3 = OBJC_IVAR____TtC18AccountsUISettings15AccountsUIModel_settingsHost;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setSettingsHost:(id)a3
{
  v5 = OBJC_IVAR____TtC18AccountsUISettings15AccountsUIModel_settingsHost;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)willSelect:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

- (void)accountWasRemoved:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23DCE7B80(v4, 1);
}

@end