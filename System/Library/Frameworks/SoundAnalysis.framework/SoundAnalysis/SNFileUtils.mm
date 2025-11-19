@interface SNFileUtils
+ (BOOL)addPurgeablePropertyToURL:(id)a3 error:(id *)a4;
@end

@implementation SNFileUtils

+ (BOOL)addPurgeablePropertyToURL:(id)a3 error:(id *)a4
{
  v4 = sub_1C9A91558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  swift_getObjCClassMetadata();
  sub_1C9A459C0();
  (*(v5 + 8))(v7, v4);
  return 1;
}

@end