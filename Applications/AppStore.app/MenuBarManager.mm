@interface MenuBarManager
- (_TtC8AppStore14MenuBarManager)init;
- (void)rebuildMenu;
- (void)storeAccountsDidChange;
@end

@implementation MenuBarManager

- (void)storeAccountsDidChange
{
  selfCopy = self;
  sub_100685AAC();
}

- (void)rebuildMenu
{
  mainSystem = [objc_opt_self() mainSystem];
  [mainSystem setNeedsRebuild];
}

- (_TtC8AppStore14MenuBarManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end