@interface AppCapabilitiesService
+ (NSString)entitlement;
+ (_TtC9appstored22AppCapabilitiesService)defaultService;
- (BOOL)validateAction:(int64_t)action bundleID:(id)d capabilities:(id)capabilities logKey:(id)key error:(id *)error;
- (_TtC9appstored22AppCapabilitiesService)init;
- (void)isCapable:(ASDAppCapabilityMetadata *)capable withCompletionHandler:(id)handler;
- (void)showIneligibleAlert;
@end

@implementation AppCapabilitiesService

+ (_TtC9appstored22AppCapabilitiesService)defaultService
{
  if (qword_10059B480 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB098;

  return v3;
}

+ (NSString)entitlement
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)isCapable:(ASDAppCapabilityMetadata *)capable withCompletionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = capable;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100435210;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004366D0;
  v14[5] = v13;
  capableCopy = capable;
  selfCopy = self;
  sub_1001BD9B4(0, 0, v9, &unk_1004344E0, v14);
}

- (BOOL)validateAction:(int64_t)action bundleID:(id)d capabilities:(id)capabilities logKey:(id)key error:(id *)error
{
  capabilitiesCopy = capabilities;
  if (!d)
  {
    v11 = 0;
    v13 = 0;
    if (!capabilities)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (capabilitiesCopy)
  {
LABEL_3:
    capabilitiesCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  keyCopy = key;
  selfCopy = self;
  sub_1000A5ACC(action, v11, v13, capabilitiesCopy, key);

  return 1;
}

- (_TtC9appstored22AppCapabilitiesService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AppCapabilitiesService *)&v3 init];
}

- (void)showIneligibleAlert
{
  v0 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v0 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(appStoreDaemonLocalized:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  String.init(appStoreDaemonLocalized:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  String.init(appStoreDaemonLocalized:comment:)();
  v1 = objc_allocWithZone(AMSDialogRequest);
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [v1 initWithTitle:v2 message:v3];

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() actionWithTitle:v5];

  [v4 addButtonAction:v6];
  v7 = [objc_allocWithZone(AMSSystemAlertDialogTask) initWithRequest:v4];
  present = [v7 present];
}

@end