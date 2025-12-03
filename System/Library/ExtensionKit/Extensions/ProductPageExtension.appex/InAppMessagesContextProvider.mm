@interface InAppMessagesContextProvider
- (_TtC20ProductPageExtension28InAppMessagesContextProvider)init;
- (id)contextPropertyWithName:(id)name;
- (id)viewControllerForModalPresentation;
- (void)familyInfoDidChange;
@end

@implementation InAppMessagesContextProvider

- (id)contextPropertyWithName:(id)name
{
  v4 = sub_10076FF9C();
  v6 = v5;
  selfCopy = self;
  sub_1002850E4(v4, v6, v16);

  v8 = v17;
  if (v17)
  {
    v9 = sub_10000CF78(v16, v17);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_10077165C();
    (*(v10 + 8))(v13, v8);
    sub_10000CD74(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)viewControllerForModalPresentation
{
  frontmostViewController = *(&self->super.isa + OBJC_IVAR____TtC20ProductPageExtension28InAppMessagesContextProvider_rootViewController);
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
  sub_100285A24();
}

- (_TtC20ProductPageExtension28InAppMessagesContextProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end