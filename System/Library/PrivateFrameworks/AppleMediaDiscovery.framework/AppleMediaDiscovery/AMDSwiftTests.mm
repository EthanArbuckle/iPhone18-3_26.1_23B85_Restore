@interface AMDSwiftTests
+ (id)strToIntWithStrValue:(id)a3;
@end

@implementation AMDSwiftTests

+ (id)strToIntWithStrValue:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  v5 = sub_240DADD04();
  v6 = v3;
  swift_getObjCClassMetadata();
  static AMDSwiftTests.strToInt(strValue:)(v5, v6);

  MEMORY[0x277D82BD8](a3);
  v8 = sub_240DADCF4();

  return v8;
}

@end