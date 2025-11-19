@interface DetailViewWrapper
+ (id)hostingControllerWithApplicationBundleID:(id)a3;
- (_TtC17StorageSettingsUI17DetailViewWrapper)init;
@end

@implementation DetailViewWrapper

+ (id)hostingControllerWithApplicationBundleID:(id)a3
{
  v3 = sub_81928();
  v5 = sub_750E8(v3, v4);

  return v5;
}

- (_TtC17StorageSettingsUI17DetailViewWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DetailViewWrapper();
  return [(DetailViewWrapper *)&v3 init];
}

@end