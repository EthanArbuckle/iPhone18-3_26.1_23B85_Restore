@interface ObjcInAppEngagementHelper
+ (id)remoteEngagementRequestDataWithEngagementRequestData:(id)a3 client:(id)a4 logKey:(id)a5 error:(id *)a6;
@end

@implementation ObjcInAppEngagementHelper

+ (id)remoteEngagementRequestDataWithEngagementRequestData:(id)a3 client:(id)a4 logKey:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (v10)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = sub_10021DB90(v11, v13, v9, v14, v16);
  v19 = v18;

  sub_10008E168(v11, v13);
  v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(v17, v19);

  return v20.super.isa;
}

@end