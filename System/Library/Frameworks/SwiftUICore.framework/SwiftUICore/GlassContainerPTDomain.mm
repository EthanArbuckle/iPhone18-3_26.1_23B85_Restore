@interface GlassContainerPTDomain
+ (Class)rootSettingsClass;
+ (id)domainGroupName;
+ (id)domainName;
+ (id)rootSettings;
@end

@implementation GlassContainerPTDomain

+ (id)rootSettings
{
  swift_getObjCClassMetadata();
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  result = objc_msgSendSuper2(&v4, sel_rootSettings);
  if (result)
  {
    type metadata accessor for GlassContainerPTSettings();
    v3 = swift_dynamicCastClassUnconditional();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

+ (id)domainName
{
  v2 = MEMORY[0x193ABEC20](0xD00000000000001BLL, 0x800000018DD76F30);

  return v2;
}

+ (id)domainGroupName
{
  v2 = MEMORY[0x193ABEC20](0x49557466697753, 0xE700000000000000);

  return v2;
}

+ (Class)rootSettingsClass
{
  type metadata accessor for GlassContainerPTSettings();

  return swift_getObjCClassFromMetadata();
}

@end