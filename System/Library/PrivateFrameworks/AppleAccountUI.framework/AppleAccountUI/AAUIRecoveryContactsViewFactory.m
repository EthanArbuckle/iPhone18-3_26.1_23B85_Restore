@interface AAUIRecoveryContactsViewFactory
+ (id)createViewModelWithAccountManager:(id)a3;
+ (id)createViewModelWithAccountManager:(id)a3 telemetryFlowID:(id)a4;
+ (id)createWithViewModel:(id)a3;
@end

@implementation AAUIRecoveryContactsViewFactory

+ (id)createWithViewModel:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  v5 = sub_1C5418FC8(a3);
  MEMORY[0x1E69E5920](a3);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)a3
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  swift_getObjCClassMetadata();
  v5 = sub_1C54195EC(a3);
  MEMORY[0x1E69E5920](a3);

  return v5;
}

+ (id)createViewModelWithAccountManager:(id)a3 telemetryFlowID:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  v6 = sub_1C5596574();
  v7 = v4;
  swift_getObjCClassMetadata();
  v10 = sub_1C5419708(a3, v6, v7);

  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);

  return v10;
}

@end