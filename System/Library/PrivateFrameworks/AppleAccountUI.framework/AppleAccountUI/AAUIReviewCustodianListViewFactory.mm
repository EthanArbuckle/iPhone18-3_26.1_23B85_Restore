@interface AAUIReviewCustodianListViewFactory
+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper;
+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper telemetryFlowID:(id)d;
@end

@implementation AAUIReviewCustodianListViewFactory

+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager);
  MEMORY[0x1E69E5928](helper);
  swift_getObjCClassMetadata();
  v7 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:)(manager, helper);
  MEMORY[0x1E69E5920](helper);
  MEMORY[0x1E69E5920](manager);

  return v7;
}

+ (id)createWithAccountManager:(id)manager repairHelper:(id)helper telemetryFlowID:(id)d
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](manager);
  MEMORY[0x1E69E5928](helper);
  MEMORY[0x1E69E5928](d);
  v7 = sub_1C5596574();
  v8 = v5;
  swift_getObjCClassMetadata();
  v12 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:telemetryFlowID:)(manager, helper, v7, v8);

  MEMORY[0x1E69E5920](d);
  MEMORY[0x1E69E5920](helper);
  MEMORY[0x1E69E5920](manager);

  return v12;
}

@end