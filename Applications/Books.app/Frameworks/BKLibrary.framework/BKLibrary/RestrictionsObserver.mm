@interface RestrictionsObserver
- (_TtC9BKLibraryP33_58FC24B0C0DE226ACFC9DF3CB0D6712B20RestrictionsObserver)init;
- (void)restrictionsForBookStoreAllowedChanged:(BOOL)changed;
@end

@implementation RestrictionsObserver

- (void)restrictionsForBookStoreAllowedChanged:(BOOL)changed
{
  v5 = sub_70674(&qword_EFC48, &qword_A6448);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11[-v8];
  v11[15] = changed;
  selfCopy = self;
  sub_70674(&qword_EF6F0, &qword_A5F00);
  sub_921BC();

  (*(v6 + 8))(v9, v5);
}

- (_TtC9BKLibraryP33_58FC24B0C0DE226ACFC9DF3CB0D6712B20RestrictionsObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end