@interface AAUIRecoveryContactsViewFactory
+ (id)createViewModelWithAccountManager:(id)manager;
+ (id)createViewModelWithAccountManager:(id)manager telemetryFlowID:(id)d;
+ (id)createWithViewModel:(id)model;
@end

@implementation AAUIRecoveryContactsViewFactory

+ (id)createWithViewModel:(id)model
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](model);
  swift_getObjCClassMetadata();
  v5 = sub_1C5418FC8(model);
  MEMORY[0x1E69E5920](model);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)manager
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager);
  swift_getObjCClassMetadata();
  v5 = sub_1C54195EC(manager);
  MEMORY[0x1E69E5920](manager);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)manager telemetryFlowID:(id)d
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager);
  MEMORY[0x1E69E5928](d);
  v6 = sub_1C5596574();
  v7 = v4;
  swift_getObjCClassMetadata();
  v10 = sub_1C5419708(manager, v6, v7);

  MEMORY[0x1E69E5920](d);
  MEMORY[0x1E69E5920](manager);

  return v10;
}

@end