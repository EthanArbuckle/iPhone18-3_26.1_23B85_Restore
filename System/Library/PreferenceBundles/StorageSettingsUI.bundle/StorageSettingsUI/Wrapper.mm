@interface Wrapper
+ (id)hostingControllerWithParentController:(id)controller;
- (_TtC17StorageSettingsUI7Wrapper)init;
@end

@implementation Wrapper

+ (id)hostingControllerWithParentController:(id)controller
{
  v3 = qword_B7858;
  controllerCopy = controller;
  if (v3 != -1)
  {
    swift_once();
  }

  [controllerCopy setDelegate:qword_BCF88];
  v5 = objc_allocWithZone(sub_147EC(&qword_B9C18, &qword_8BAB8));
  v6 = sub_81088();

  return v6;
}

- (_TtC17StorageSettingsUI7Wrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Wrapper();
  return [(Wrapper *)&v3 init];
}

@end