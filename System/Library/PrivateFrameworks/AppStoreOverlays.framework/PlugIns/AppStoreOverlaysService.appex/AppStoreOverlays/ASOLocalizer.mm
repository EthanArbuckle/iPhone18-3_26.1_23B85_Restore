@interface ASOLocalizer
+ (id)defaultLocalizer;
- (ASOLocalizer)init;
- (ASOLocalizer)initWithBundles:(id)bundles languageCodes:(id)codes;
- (id)stringForKey:(id)key;
@end

@implementation ASOLocalizer

- (ASOLocalizer)initWithBundles:(id)bundles languageCodes:(id)codes
{
  sub_10000F508();
  v4 = sub_1000184A8();
  v5 = sub_1000184A8();
  return sub_10000E9B4(v4, v5);
}

+ (id)defaultLocalizer
{
  sub_10000D4AC(&qword_10002C0D0, &qword_10001C850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001C7D0;
  *(inited + 32) = [objc_opt_self() mainBundle];
  v3 = sub_10000E7FC();
  v4 = objc_allocWithZone(type metadata accessor for Localizer());
  v5 = sub_10000E9B4(inited, v3);

  return v5;
}

- (id)stringForKey:(id)key
{
  v4 = sub_100018458();
  v6 = v5;
  selfCopy = self;
  sub_10000EF0C(v4, v6);

  v8 = sub_100018428();

  return v8;
}

- (ASOLocalizer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end