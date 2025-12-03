@interface QuoteSharingSocialNetworkActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (_TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity)init;
- (id)_bundleIdentifierForActivityImageCreation;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation QuoteSharingSocialNetworkActivity

- (NSString)activityType
{
  selfCopy = self;
  v3 = sub_1007A2214();

  return v3;
}

- (NSString)activityTitle
{
  v2 = sub_1007A2214();

  return v2;
}

- (id)_bundleIdentifierForActivityImageCreation
{
  v2 = sub_1007A2214();

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_1007969B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  selfCopy = self;
  sharedApplication = [v8 sharedApplication];
  sub_1003B501C(*(&selfCopy->super.super.isa + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork), v7);
  sub_100796944(v11);
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  LOBYTE(v4) = [sharedApplication canOpenURL:v13];

  return v4;
}

- (void)prepareWithActivityItems:(id)items
{
  selfCopy = self;
  sub_1003B1618();
}

- (_TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end