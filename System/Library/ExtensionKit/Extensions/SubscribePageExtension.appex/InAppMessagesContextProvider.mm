@interface InAppMessagesContextProvider
- (_TtC22SubscribePageExtension28InAppMessagesContextProvider)init;
- (id)contextPropertyWithName:(id)a3;
- (id)viewControllerForModalPresentation;
- (void)familyInfoDidChange;
@end

@implementation InAppMessagesContextProvider

- (id)contextPropertyWithName:(id)a3
{
  v4 = sub_100753094();
  v6 = v5;
  v7 = self;
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
  v3 = *(&self->super.isa + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_rootViewController);
  if (v3)
  {
    v3 = [v3 frontmostViewController];
    v2 = vars8;
  }

  return v3;
}

- (void)familyInfoDidChange
{
  v2 = self;
  sub_1000FE16C();
}

- (_TtC22SubscribePageExtension28InAppMessagesContextProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end