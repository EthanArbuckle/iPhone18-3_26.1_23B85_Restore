@interface MenuBarManager
- (_TtC8AppStore14MenuBarManager)init;
- (void)rebuildMenu;
- (void)storeAccountsDidChange;
@end

@implementation MenuBarManager

- (void)storeAccountsDidChange
{
  v2 = self;
  sub_100685AAC();
}

- (void)rebuildMenu
{
  v2 = [objc_opt_self() mainSystem];
  [v2 setNeedsRebuild];
}

- (_TtC8AppStore14MenuBarManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end