@interface ObjcInAppEngagementHelper
+ (id)remoteEngagementRequestDataWithEngagementRequestData:(id)data client:(id)client logKey:(id)key error:(id *)error;
@end

@implementation ObjcInAppEngagementHelper

+ (id)remoteEngagementRequestDataWithEngagementRequestData:(id)data client:(id)client logKey:(id)key error:(id *)error
{
  dataCopy = data;
  clientCopy = client;
  keyCopy = key;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (keyCopy)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = sub_10021DB90(v11, v13, clientCopy, v14, v16);
  v19 = v18;

  sub_10008E168(v11, v13);
  v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(v17, v19);

  return v20.super.isa;
}

@end