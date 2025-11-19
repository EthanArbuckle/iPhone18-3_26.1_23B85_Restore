@interface CallReportingViewModel
- (BOOL)allUnknownContactInRecentCall:(id)a3;
- (BOOL)atLeastOneUnknownCallerInRecentCall:(id)a3;
- (BOOL)isBlockedWithContacts:(id)a3;
- (BOOL)isInitiatorUnknownForCall:(id)a3;
- (BOOL)shouldShowContactBlockReportButtonForCall:(id)a3;
- (BOOL)shouldShowReportActionForCall:(id)a3;
- (UIImage)reportActionImage;
- (_TtC11MobilePhone22CallReportingViewModel)init;
- (id)getCarrierNameOfCallForCall:(id)a3;
- (id)reportActionTitleOfFlow:(int64_t)a3;
- (int64_t)reportingFaceTimeFlowFor:(id)a3;
- (int64_t)reportingFlowForCall:(id)a3;
- (void)blockInitiatorWithSpamCall:(id)a3;
- (void)reportWithCall:(id)a3;
@end

@implementation CallReportingViewModel

- (_TtC11MobilePhone22CallReportingViewModel)init
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(TUFeatureFlags) init];
  v4 = [objc_allocWithZone(type metadata accessor for FaceTimeSpamReportManager()) init];
  type metadata accessor for VoiceSpamReportTelephonyManager();
  static VoiceSpamReportTelephonyManager.shared.getter();
  type metadata accessor for CarrierVoiceSpamReportHelper();
  swift_allocObject();
  v5 = CarrierVoiceSpamReportHelper.init(voiceSpamReportTelephonyManager:)();
  v6 = objc_allocWithZone(ObjectType);
  CallReportingViewModel.init(featureFlags:spamReportManager:carrierVoiceSpamReportHelper:)(v3, v4, v5);
  v8 = v7;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (void)blockInitiatorWithSpamCall:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CallReportingViewModel.blockInitiator(spamCall:)(v4);
}

- (BOOL)isBlockedWithContacts:(id)a3
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  v6 = specialized CallReportingViewModel.isBlocked(contacts:)(v4);

  return v6;
}

- (void)reportWithCall:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager);
  v5 = a3;
  v7 = self;
  v6 = v4;
  FaceTimeSpamReportManager.reportSpam(call:)(v5);
}

- (int64_t)reportingFlowForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CallReportingViewModel.reportingFlow(for:)(v4);

  return v6;
}

- (int64_t)reportingFaceTimeFlowFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CallReportingViewModel.reportingFaceTimeFlow(for:)(v4);

  return v6;
}

- (id)reportActionTitleOfFlow:(int64_t)a3
{
  if (a3 >= 7)
  {
    v5 = self;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {

    v3 = String._bridgeToObjectiveC()();

    return v3;
  }

  return result;
}

- (UIImage)reportActionImage
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  return v3;
}

- (BOOL)allUnknownContactInRecentCall:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CallReportingViewModel.contactByHandles(in:)(v4);

  v7 = v6[2];

  return v7 == 0;
}

- (BOOL)atLeastOneUnknownCallerInRecentCall:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CallReportingViewModel.atLeastOneUnknownCaller(in:)(v4);

  return self & 1;
}

- (BOOL)isInitiatorUnknownForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CallReportingViewModel.isInitiatorUnknown(in:)(v4);

  return self & 1;
}

- (id)getCarrierNameOfCallForCall:(id)a3
{
  v9[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v9[4] = &protocol witness table for CHRecentCall;
  v9[0] = a3;
  v5 = a3;
  v6 = self;

  dispatch thunk of CarrierVoiceSpamReportHelper.reportSpamAlertControllerCarrierName(for:)();

  __swift_destroy_boxed_opaque_existential_0(v9);
  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (BOOL)shouldShowReportActionForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = CallReportingViewModel.shouldShowReportAction(for:)(v4);

  return self & 1;
}

- (BOOL)shouldShowContactBlockReportButtonForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 isComingFaceTimeCall])
  {
    v6 = CallReportingViewModel.atLeastOneUnknownCaller(in:)(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end