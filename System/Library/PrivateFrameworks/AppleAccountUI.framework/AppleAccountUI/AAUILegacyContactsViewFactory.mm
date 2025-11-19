@interface AAUILegacyContactsViewFactory
+ (id)createViewModelWithAccountManager:(id)a3;
+ (id)createViewModelWithAccountManager:(id)a3 highlightRowIdentifier:(id)a4;
+ (id)createWithViewModel:(id)a3;
@end

@implementation AAUILegacyContactsViewFactory

+ (id)createWithViewModel:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  v5 = sub_1C554F0A4(a3);
  MEMORY[0x1E69E5920](a3);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  v5 = sub_1C554F6C8(a3);
  MEMORY[0x1E69E5920](a3);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)a3 highlightRowIdentifier:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v6 = sub_1C5596574();
  v7 = v4;
  swift_getObjCClassMetadata();
  v10 = sub_1C554FC94(a3, v6, v7);

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);

  return v10;
}

@end