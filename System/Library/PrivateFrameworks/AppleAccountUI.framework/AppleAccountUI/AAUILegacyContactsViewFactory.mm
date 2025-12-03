@interface AAUILegacyContactsViewFactory
+ (id)createViewModelWithAccountManager:(id)manager;
+ (id)createViewModelWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier;
+ (id)createWithViewModel:(id)model;
@end

@implementation AAUILegacyContactsViewFactory

+ (id)createWithViewModel:(id)model
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](model);
  swift_getObjCClassMetadata();
  v5 = sub_1C554F0A4(model);
  MEMORY[0x1E69E5920](model);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)manager
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager);
  swift_getObjCClassMetadata();
  v5 = sub_1C554F6C8(manager);
  MEMORY[0x1E69E5920](manager);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)manager highlightRowIdentifier:(id)identifier
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager);
  MEMORY[0x1E69E5928](identifier);
  v6 = sub_1C5596574();
  v7 = v4;
  swift_getObjCClassMetadata();
  v10 = sub_1C554FC94(manager, v6, v7);

  MEMORY[0x1E69E5920](identifier);
  MEMORY[0x1E69E5920](manager);

  return v10;
}

@end