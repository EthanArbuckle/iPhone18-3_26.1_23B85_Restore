@interface SkannerEvent
+ (NSString)adTypeApp;
+ (NSString)adTypeWeb;
+ (NSString)destinationAdNetwork;
+ (NSString)destinationCommerce;
+ (NSString)destinationDeveloper;
+ (NSString)interactionTypeClick;
+ (NSString)interactionTypeView;
+ (NSString)postbackTypePending;
+ (NSString)postbackTypeRealized;
+ (NSString)resultTypeDelayedReceipt;
+ (NSString)resultTypeFailure;
+ (NSString)resultTypeFinalized;
+ (NSString)resultTypeReceipt;
+ (NSString)resultTypeRegister;
+ (NSString)resultTypeRejected;
+ (NSString)resultTypeTokenReceived;
+ (NSString)resultTypeTransmission;
+ (NSString)resultTypeUpdate;
+ (id)conversionWithResult:(id)a3 postbackType:(id)a4 postbackSequenceIndex:(id)a5 error:(id)a6;
+ (id)impressionWithResult:(id)a3 adNetworkID:(id)a4 adType:(id)a5 interactionType:(id)a6 version:(id)a7 error:(id)a8;
+ (id)requestWithResult:(id)a3 destination:(id)a4 responseCode:(id)a5 postback:(id)a6 error:(id)a7;
+ (id)webImpressionWithResult:(id)a3 adNetworkRegistrableDomain:(id)a4 version:(id)a5 error:(id)a6;
- (_TtC9appstored12SkannerEvent)init;
@end

@implementation SkannerEvent

- (_TtC9appstored12SkannerEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSString)resultTypeFinalized
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeRegister
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeUpdate
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeTransmission
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeReceipt
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeTokenReceived
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeDelayedReceipt
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeFailure
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)resultTypeRejected
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)adTypeApp
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)adTypeWeb
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)interactionTypeView
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)interactionTypeClick
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)destinationCommerce
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)destinationAdNetwork
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)destinationDeveloper
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)postbackTypePending
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)postbackTypeRealized
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (id)webImpressionWithResult:(id)a3 adNetworkRegistrableDomain:(id)a4 version:(id)a5 error:(id)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v13;
    if (a5)
    {
LABEL_3:
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a5 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v16 = a6;
  v17 = sub_1001A8148(v9, v11, v12, a4, v14, a5, a6);

  return v17;
}

+ (id)impressionWithResult:(id)a3 adNetworkID:(id)a4 adType:(id)a5 interactionType:(id)a6 version:(id)a7 error:(id)a8
{
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a4)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v15;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a5 = v17;
  if (a6)
  {
LABEL_4:
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a6 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v20 = a7;
  v21 = a8;
  if (v20)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = sub_1001A8F3C(v28, v14, v27, a4, v16, a5, v18, a6, v22, v24, v21);

  return v25;
}

+ (id)conversionWithResult:(id)a3 postbackType:(id)a4 postbackSequenceIndex:(id)a5 error:(id)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = a5;
  v15 = a6;
  v16 = sub_1001A93E4(v9, v11, v12, a4, a5, a6);

  return v16;
}

+ (id)requestWithResult:(id)a3 destination:(id)a4 responseCode:(id)a5 postback:(id)a6 error:(id)a7
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = sub_1001A985C(v10, v12, v13, v15, a5, a6, a7);

  return v19;
}

@end