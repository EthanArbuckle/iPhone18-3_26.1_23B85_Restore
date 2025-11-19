@interface AAUIReviewCustodianListViewFactory
+ (id)createWithAccountManager:(id)a3 repairHelper:(id)a4;
+ (id)createWithAccountManager:(id)a3 repairHelper:(id)a4 telemetryFlowID:(id)a5;
@end

@implementation AAUIReviewCustodianListViewFactory

+ (id)createWithAccountManager:(id)a3 repairHelper:(id)a4
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  swift_getObjCClassMetadata();
  v7 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:)(a3, a4);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);

  return v7;
}

+ (id)createWithAccountManager:(id)a3 repairHelper:(id)a4 telemetryFlowID:(id)a5
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  v7 = sub_1C5596574();
  v8 = v5;
  swift_getObjCClassMetadata();
  v12 = static ReviewCustodianListViewFactory.create(accountManager:repairHelper:telemetryFlowID:)(a3, a4, v7, v8);

  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);

  return v12;
}

@end