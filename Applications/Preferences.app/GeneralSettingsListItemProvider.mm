@interface GeneralSettingsListItemProvider
- (_TtC11SettingsApp31GeneralSettingsListItemProvider)init;
- (void)client:(id)client scanDidCompleteForOptions:(id)options results:(id)results error:(id)error;
@end

@implementation GeneralSettingsListItemProvider

- (_TtC11SettingsApp31GeneralSettingsListItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)client:(id)client scanDidCompleteForOptions:(id)options results:(id)results error:(id)error
{
  v7 = sub_10004DED0(&unk_100160940, &unk_100117DF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13[-v10];
  selfCopy = self;
  v13[15] = SUSUISettingsIsBadgedForSoftwareUpdate();
  sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  AsyncStream.Continuation.yield(_:)();

  (*(v8 + 8))(v11, v7);
}

@end