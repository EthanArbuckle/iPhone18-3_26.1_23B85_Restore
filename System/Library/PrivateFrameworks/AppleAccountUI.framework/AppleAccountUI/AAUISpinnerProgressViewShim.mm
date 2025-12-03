@interface AAUISpinnerProgressViewShim
+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name;
+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name forAccount:(id)account;
@end

@implementation AAUISpinnerProgressViewShim

+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](name);
  v6 = sub_1C5596574();
  v8 = v4;
  swift_getObjCClassMetadata();
  v10 = sub_1C54454C4(type, v6, v8);

  MEMORY[0x1E69E5920](name);
  return v10;
}

+ (id)newSpinnerProgressViewForType:(int64_t)type fullName:(id)name forAccount:(id)account
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](name);
  MEMORY[0x1E69E5928](account);
  v7 = sub_1C5596574();
  v9 = v5;
  swift_getObjCClassMetadata();
  v12 = sub_1C54456BC(type, v7, v9, account);

  MEMORY[0x1E69E5920](name);
  MEMORY[0x1E69E5920](account);
  return v12;
}

@end