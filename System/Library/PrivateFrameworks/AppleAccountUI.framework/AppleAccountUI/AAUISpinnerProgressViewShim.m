@interface AAUISpinnerProgressViewShim
+ (id)newSpinnerProgressViewForType:(int64_t)a3 fullName:(id)a4;
+ (id)newSpinnerProgressViewForType:(int64_t)a3 fullName:(id)a4 forAccount:(id)a5;
@end

@implementation AAUISpinnerProgressViewShim

+ (id)newSpinnerProgressViewForType:(int64_t)a3 fullName:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a4);
  v6 = sub_1C5596574();
  v8 = v4;
  swift_getObjCClassMetadata();
  v10 = sub_1C54454C4(a3, v6, v8);

  MEMORY[0x1E69E5920](a4);
  return v10;
}

+ (id)newSpinnerProgressViewForType:(int64_t)a3 fullName:(id)a4 forAccount:(id)a5
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  v7 = sub_1C5596574();
  v9 = v5;
  swift_getObjCClassMetadata();
  v12 = sub_1C54456BC(a3, v7, v9, a5);

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a5);
  return v12;
}

@end