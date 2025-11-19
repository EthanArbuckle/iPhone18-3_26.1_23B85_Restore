@interface JSMediaTokensObject
- (_TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject)init;
- (id)getTokenFor:(id)a3 :(id)a4;
- (void)resetTokenFor:(id)a3 :(id)a4;
@end

@implementation JSMediaTokensObject

- (id)getTokenFor:(id)a3 :(id)a4
{
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_2227396EC();
  v11 = sub_2227396FC();

  return v11;
}

- (void)resetTokenFor:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2226FD01C(v6, v7);
}

- (_TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end