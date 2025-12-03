@interface HeartAppDelegate
- (BOOL)application:(id)application runTest:(id)test options:(id)options;
- (Class)makeDataListDataProviderClassForDisplayType:(id)type hierarchical:(BOOL)hierarchical;
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

- (Class)makeDataListDataProviderClassForDisplayType:(id)type hierarchical:(BOOL)hierarchical
{
  typeCopy = type;
  selfCopy = self;
  v8 = sub_29D7E953C(typeCopy, hierarchical);

  if (!v8)
  {
    return 0;
  }

  return swift_getObjCClassFromMetadata();
}

- (BOOL)application:(id)application runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v8 = 0;
    v10 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = sub_29D939D68();
  v10 = v9;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = sub_29D939C68();
  }

LABEL_4:
  applicationCopy = application;
  selfCopy = self;
  v13 = sub_29D8A7140(application, v8, v10, optionsCopy);

  return v13 & 1;
}

@end