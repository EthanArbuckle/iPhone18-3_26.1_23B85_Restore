@interface InAppMessagesContextProvider
- (_TtC22SubscribePageExtension28InAppMessagesContextProvider)init;
- (id)contextPropertyWithName:(id)name;
- (id)viewControllerForModalPresentation;
- (void)familyInfoDidChange;
@end

@implementation InAppMessagesContextProvider

- (id)contextPropertyWithName:(id)name
{
  v4 = sub_100753094();
  v6 = v5;
  selfCopy = self;
  sub_1000FD82C(v4, v6, v16);

  v8 = v17;
  if (v17)
  {
    v9 = sub_10000C888(v16, v17);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_100754734();
    (*(v10 + 8))(v13, v8);
    sub_10000C620(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)viewControllerForModalPresentation
{
  frontmostViewController = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_rootViewController);
  if (frontmostViewController)
  {
    frontmostViewController = [frontmostViewController frontmostViewController];
    v2 = vars8;
  }

  return frontmostViewController;
}

- (void)familyInfoDidChange
{
  selfCopy = self;
  sub_1000FE16C();
}

- (_TtC22SubscribePageExtension28InAppMessagesContextProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end