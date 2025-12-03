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
+ (id)conversionWithResult:(id)result postbackType:(id)type postbackSequenceIndex:(id)index error:(id)error;
+ (id)impressionWithResult:(id)result adNetworkID:(id)d adType:(id)type interactionType:(id)interactionType version:(id)version error:(id)error;
+ (id)requestWithResult:(id)result destination:(id)destination responseCode:(id)code postback:(id)postback error:(id)error;
+ (id)webImpressionWithResult:(id)result adNetworkRegistrableDomain:(id)domain version:(id)version error:(id)error;
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

+ (id)webImpressionWithResult:(id)result adNetworkRegistrableDomain:(id)domain version:(id)version error:(id)error
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (domain)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    domain = v13;
    if (version)
    {
LABEL_3:
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      version = v15;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (version)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  errorCopy = error;
  v17 = sub_1001A8148(v9, v11, v12, domain, v14, version, error);

  return v17;
}

+ (id)impressionWithResult:(id)result adNetworkID:(id)d adType:(id)type interactionType:(id)interactionType version:(id)version error:(id)error
{
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (d)
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    d = v15;
    if (type)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (interactionType)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v27 = 0;
  if (!type)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  type = v17;
  if (interactionType)
  {
LABEL_4:
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    interactionType = v19;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  versionCopy = version;
  errorCopy = error;
  if (versionCopy)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = sub_1001A8F3C(v28, v14, v27, d, v16, type, v18, interactionType, v22, v24, errorCopy);

  return v25;
}

+ (id)conversionWithResult:(id)result postbackType:(id)type postbackSequenceIndex:(id)index error:(id)error
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (type)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    type = v13;
  }

  else
  {
    v12 = 0;
  }

  indexCopy = index;
  errorCopy = error;
  v16 = sub_1001A93E4(v9, v11, v12, type, index, error);

  return v16;
}

+ (id)requestWithResult:(id)result destination:(id)destination responseCode:(id)code postback:(id)postback error:(id)error
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  codeCopy = code;
  postbackCopy = postback;
  errorCopy = error;
  v19 = sub_1001A985C(v10, v12, v13, v15, code, postback, error);

  return v19;
}

@end