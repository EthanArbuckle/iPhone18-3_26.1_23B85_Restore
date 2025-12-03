@interface CallReportingViewModel
- (BOOL)allUnknownContactInRecentCall:(id)call;
- (BOOL)atLeastOneUnknownCallerInRecentCall:(id)call;
- (BOOL)isBlockedWithContacts:(id)contacts;
- (BOOL)isInitiatorUnknownForCall:(id)call;
- (BOOL)shouldShowContactBlockReportButtonForCall:(id)call;
- (BOOL)shouldShowReportActionForCall:(id)call;
- (UIImage)reportActionImage;
- (_TtC11MobilePhone22CallReportingViewModel)init;
- (id)getCarrierNameOfCallForCall:(id)call;
- (id)reportActionTitleOfFlow:(int64_t)flow;
- (int64_t)reportingFaceTimeFlowFor:(id)for;
- (int64_t)reportingFlowForCall:(id)call;
- (void)blockInitiatorWithSpamCall:(id)call;
- (void)reportWithCall:(id)call;
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

- (void)blockInitiatorWithSpamCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  specialized CallReportingViewModel.blockInitiator(spamCall:)(callCopy);
}

- (BOOL)isBlockedWithContacts:(id)contacts
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CNContact);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v6 = specialized CallReportingViewModel.isBlocked(contacts:)(v4);

  return v6;
}

- (void)reportWithCall:(id)call
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11MobilePhone22CallReportingViewModel_spamReportManager);
  callCopy = call;
  selfCopy = self;
  v6 = v4;
  FaceTimeSpamReportManager.reportSpam(call:)(callCopy);
}

- (int64_t)reportingFlowForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v6 = CallReportingViewModel.reportingFlow(for:)(callCopy);

  return v6;
}

- (int64_t)reportingFaceTimeFlowFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = CallReportingViewModel.reportingFaceTimeFlow(for:)(forCopy);

  return v6;
}

- (id)reportActionTitleOfFlow:(int64_t)flow
{
  if (flow >= 7)
  {
    selfCopy = self;
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

- (BOOL)allUnknownContactInRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  v6 = CallReportingViewModel.contactByHandles(in:)(callCopy);

  v7 = v6[2];

  return v7 == 0;
}

- (BOOL)atLeastOneUnknownCallerInRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  LOBYTE(self) = CallReportingViewModel.atLeastOneUnknownCaller(in:)(callCopy);

  return self & 1;
}

- (BOOL)isInitiatorUnknownForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  LOBYTE(self) = CallReportingViewModel.isInitiatorUnknown(in:)(callCopy);

  return self & 1;
}

- (id)getCarrierNameOfCallForCall:(id)call
{
  v9[3] = type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
  v9[4] = &protocol witness table for CHRecentCall;
  v9[0] = call;
  callCopy = call;
  selfCopy = self;

  dispatch thunk of CarrierVoiceSpamReportHelper.reportSpamAlertControllerCarrierName(for:)();

  __swift_destroy_boxed_opaque_existential_0(v9);
  v7 = String._bridgeToObjectiveC()();

  return v7;
}

- (BOOL)shouldShowReportActionForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  LOBYTE(self) = CallReportingViewModel.shouldShowReportAction(for:)(callCopy);

  return self & 1;
}

- (BOOL)shouldShowContactBlockReportButtonForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  if ([callCopy isComingFaceTimeCall])
  {
    v6 = CallReportingViewModel.atLeastOneUnknownCaller(in:)(callCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end