@interface HeartAppDelegate
- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5;
- (Class)makeDataListDataProviderClassForDisplayType:(id)a3 hierarchical:(BOOL)a4;
- (_TtC5Heart16HeartAppDelegate)init;
@end

@implementation HeartAppDelegate

- (_TtC5Heart16HeartAppDelegate)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC5Heart16HeartAppDelegate____lazy_storage___articleIdentifiersByUrl) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(HeartAppDelegate *)&v5 init];
}

- (Class)makeDataListDataProviderClassForDisplayType:(id)a3 hierarchical:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_29D7E953C(v6, a4);

  if (!v8)
  {
    return 0;
  }

  return swift_getObjCClassFromMetadata();
}

- (BOOL)application:(id)a3 runTest:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v8 = 0;
    v10 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = sub_29D939D68();
  v10 = v9;
  if (v5)
  {
LABEL_3:
    v5 = sub_29D939C68();
  }

LABEL_4:
  v11 = a3;
  v12 = self;
  v13 = sub_29D8A7140(a3, v8, v10, v5);

  return v13 & 1;
}

@end