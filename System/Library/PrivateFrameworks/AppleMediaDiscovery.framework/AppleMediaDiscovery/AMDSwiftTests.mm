@interface AMDSwiftTests
+ (id)strToIntWithStrValue:(id)value;
@end

@implementation AMDSwiftTests

+ (id)strToIntWithStrValue:(id)value
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](value);
  v5 = sub_240DADD04();
  v6 = v3;
  swift_getObjCClassMetadata();
  static AMDSwiftTests.strToInt(strValue:)(v5, v6);

  MEMORY[0x277D82BD8](value);
  v8 = sub_240DADCF4();

  return v8;
}

@end