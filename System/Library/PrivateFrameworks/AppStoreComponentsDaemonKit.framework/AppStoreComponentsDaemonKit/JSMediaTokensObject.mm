@interface JSMediaTokensObject
- (_TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject)init;
- (id)getTokenFor:(id)for :(id)a4;
- (void)resetTokenFor:(id)for :(id)a4;
@end

@implementation JSMediaTokensObject

- (id)getTokenFor:(id)for :(id)a4
{
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  forCopy = for;
  v8 = a4;
  selfCopy = self;
  v10 = sub_2227396EC();
  v11 = sub_2227396FC();

  return v11;
}

- (void)resetTokenFor:(id)for :(id)a4
{
  forCopy = for;
  v7 = a4;
  selfCopy = self;
  sub_2226FD01C(forCopy, v7);
}

- (_TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end