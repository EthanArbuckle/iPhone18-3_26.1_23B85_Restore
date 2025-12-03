@interface InAppMessagesContextProvider
- (_TtC18ASMessagesProvider28InAppMessagesContextProvider)init;
- (id)contextPropertyWithName:(id)name;
- (id)viewControllerForModalPresentation;
- (void)familyInfoDidChange;
@end

@implementation InAppMessagesContextProvider

- (id)contextPropertyWithName:(id)name
{
  v4 = sub_769240();
  v6 = v5;
  selfCopy = self;
  sub_4C9FB4(v4, v6, v16);

  v8 = v17;
  if (v17)
  {
    v9 = sub_B170(v16, v17);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_76A930();
    (*(v10 + 8))(v13, v8);
    sub_BEB8(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)viewControllerForModalPresentation
{
  frontmostViewController = *(&self->super.isa + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesContextProvider_rootViewController);
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
  sub_4CA8F4();
}

- (_TtC18ASMessagesProvider28InAppMessagesContextProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end