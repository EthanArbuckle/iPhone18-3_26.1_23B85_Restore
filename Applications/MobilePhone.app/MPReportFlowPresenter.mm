@interface MPReportFlowPresenter
- (MPReportFlowPresenter)init;
- (MPReportFlowPresenter)initWithCallReportingViewModel:(id)model alertPresentingViewController:(id)controller contactsService:(id)service;
- (void)_showCarrierVoiceCallReportAlertForCall:(id)call;
- (void)controller:(id)controller didCompleteClassificationRequest:(id)request withResponse:(id)response;
- (void)presentBlockAllAlertFor:(id)for;
- (void)presentBlockUnknownAlertFor:(id)for;
- (void)presentFaceTimeSpamReportAlertFor:(id)for;
- (void)presentFaceTimeSpamReportAndBlockAlertFor:(id)for;
- (void)presentGroupFaceTimeSpamReportAndBlockAlertFor:(id)for;
- (void)showReportingExtensionForCall:(id)call;
@end

@implementation MPReportFlowPresenter

- (MPReportFlowPresenter)initWithCallReportingViewModel:(id)model alertPresentingViewController:(id)controller contactsService:(id)service
{
  modelCopy = model;
  controllerCopy = controller;
  v9 = specialized ReportFlowPresenter.init(callReportingViewModel:alertPresentingViewController:contactsService:)(modelCopy, controllerCopy, service);

  return v9;
}

- (void)presentFaceTimeSpamReportAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  ReportFlowPresenter.presentFaceTimeSpamReportAlert(for:)(forCopy);
}

- (void)presentBlockAllAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  ReportFlowPresenter.presentBlockAllAlert(for:)(forCopy);
}

- (void)presentBlockUnknownAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  ReportFlowPresenter.presentBlockUnknownAlert(for:)(forCopy);
}

- (void)presentFaceTimeSpamReportAndBlockAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:)(forCopy);
}

- (void)presentGroupFaceTimeSpamReportAndBlockAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(forCopy);
}

- (void)showReportingExtensionForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  ReportFlowPresenter.showReportingExtension(for:)(callCopy);
}

- (void)_showCarrierVoiceCallReportAlertForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(callCopy);
}

- (MPReportFlowPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)controller didCompleteClassificationRequest:(id)request withResponse:(id)response
{
  responseCopy = response;
  v8 = type metadata accessor for Logger();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v12 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, self + OBJC_IVAR___MPReportFlowPresenter_logger, v8);
  type metadata accessor for MainActor();
  requestCopy = request;
  responseCopy2 = response;
  selfCopy = self;
  v19 = requestCopy;
  v26 = responseCopy2;
  v20 = static MainActor.shared.getter();
  v21 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v20;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = selfCopy;
  (*(v9 + 32))(&v23[v21], v11, v27);
  *&v23[v22] = v19;
  *&v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8] = responseCopy;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v14, &closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)partial apply, v23);
}

@end