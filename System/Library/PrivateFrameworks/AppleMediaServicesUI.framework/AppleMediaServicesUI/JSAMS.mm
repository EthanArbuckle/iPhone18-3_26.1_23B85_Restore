@interface JSAMS
- (NSDictionary)props;
- (_TtC14amsengagementd10JSFollowUp)followUp;
- (_TtC14amsengagementd10JSLocalize)localize;
- (_TtC14amsengagementd10JSLocation)location;
- (_TtC14amsengagementd10JSMediaAPI)media;
- (_TtC14amsengagementd11JSExtension)plugin;
- (_TtC14amsengagementd11JSMarketing)marketing;
- (_TtC14amsengagementd11JSTelephony)telephony;
- (_TtC14amsengagementd13JSFeatureFlag)featureFlag;
- (_TtC14amsengagementd14JSAccountStore)accounts;
- (_TtC14amsengagementd15JSDatabaseStore)database;
- (_TtC14amsengagementd16JSTreatmentStore)treatmentStore;
- (_TtC14amsengagementd17JSServerDataCache)serverDataCache;
- (_TtC14amsengagementd18JSMediaCatalogSync)mediaCatalogSync;
- (_TtC14amsengagementd19JSUserNotifications)userNotifications;
- (_TtC14amsengagementd20JSSubscriptionStatus)subscription;
- (_TtC14amsengagementd21JSOnDeviceDataService)onDeviceDataService;
- (_TtC14amsengagementd22JSRunningBoardServices)runningBoardServices;
- (_TtC14amsengagementd5JSApp)app;
- (_TtC14amsengagementd5JSLog)log;
- (_TtC14amsengagementd8JSClient)client;
- (_TtC14amsengagementd8JSDevice)device;
- (_TtC14amsengagementd8JSFamily)family;
- (_TtC14amsengagementd9JSBacklog)backlog;
- (_TtC14amsengagementd9JSContent)content;
- (_TtC14amsengagementd9JSMetrics)metrics;
- (_TtC14amsengagementd9JSNetwork)network;
- (_TtC14amsengagementd9JSPrivacy)privacy;
- (void)setProps:(id)props;
@end

@implementation JSAMS

- (_TtC14amsengagementd15JSDatabaseStore)database
{
  v2 = sub_100039A84();

  return v2;
}

- (_TtC14amsengagementd14JSAccountStore)accounts
{
  v2 = sub_10004F800();

  return v2;
}

- (_TtC14amsengagementd5JSLog)log
{
  v2 = sub_10005127C();

  return v2;
}

- (_TtC14amsengagementd8JSDevice)device
{
  v2 = sub_100054DA4();

  return v2;
}

- (_TtC14amsengagementd9JSNetwork)network
{
  v2 = sub_100054EC8();

  return v2;
}

- (_TtC14amsengagementd9JSMetrics)metrics
{
  v2 = sub_10005B568();

  return v2;
}

- (_TtC14amsengagementd5JSApp)app
{
  v2 = sub_1000FFAFC();

  return v2;
}

- (_TtC14amsengagementd9JSBacklog)backlog
{
  v2 = sub_1000FFB3C();

  return v2;
}

- (_TtC14amsengagementd8JSClient)client
{
  v2 = sub_1000FFB7C();

  return v2;
}

- (_TtC14amsengagementd9JSContent)content
{
  v2 = sub_1000FFBBC();

  return v2;
}

- (_TtC14amsengagementd8JSFamily)family
{
  v2 = sub_1000FFBFC();

  return v2;
}

- (_TtC14amsengagementd13JSFeatureFlag)featureFlag
{
  v2 = sub_1000FFC3C();

  return v2;
}

- (_TtC14amsengagementd10JSFollowUp)followUp
{
  v2 = sub_1000FFC7C();

  return v2;
}

- (_TtC14amsengagementd10JSLocalize)localize
{
  v2 = sub_1000FFCBC();

  return v2;
}

- (_TtC14amsengagementd10JSLocation)location
{
  v2 = sub_1000FFCFC();

  return v2;
}

- (_TtC14amsengagementd11JSMarketing)marketing
{
  v2 = sub_1000FFD3C();

  return v2;
}

- (_TtC14amsengagementd10JSMediaAPI)media
{
  v2 = sub_1000FFD7C();

  return v2;
}

- (_TtC14amsengagementd18JSMediaCatalogSync)mediaCatalogSync
{
  v2 = sub_1000FFDBC();

  return v2;
}

- (_TtC14amsengagementd21JSOnDeviceDataService)onDeviceDataService
{
  selfCopy = self;
  v3 = sub_1000FFE0C();

  return v3;
}

- (_TtC14amsengagementd11JSExtension)plugin
{
  v2 = sub_1000FFE58();

  return v2;
}

- (_TtC14amsengagementd9JSPrivacy)privacy
{
  v2 = sub_1000FFE98();

  return v2;
}

- (NSDictionary)props
{
  sub_1000FFF0C();
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setProps:(id)props
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000FFF9C(v4);
}

- (_TtC14amsengagementd22JSRunningBoardServices)runningBoardServices
{
  selfCopy = self;
  v3 = sub_1000FFFF8();

  return v3;
}

- (_TtC14amsengagementd17JSServerDataCache)serverDataCache
{
  v2 = sub_100100084();

  return v2;
}

- (_TtC14amsengagementd20JSSubscriptionStatus)subscription
{
  v2 = sub_1001000C4();

  return v2;
}

- (_TtC14amsengagementd11JSTelephony)telephony
{
  v2 = sub_100100104();

  return v2;
}

- (_TtC14amsengagementd16JSTreatmentStore)treatmentStore
{
  v2 = sub_100100144();

  return v2;
}

- (_TtC14amsengagementd19JSUserNotifications)userNotifications
{
  v2 = sub_100100184();

  return v2;
}

@end