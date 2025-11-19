@interface MPReportFlowPresenter
- (MPReportFlowPresenter)init;
- (MPReportFlowPresenter)initWithCallReportingViewModel:(id)a3 alertPresentingViewController:(id)a4 contactsService:(id)a5;
- (void)_showCarrierVoiceCallReportAlertForCall:(id)a3;
- (void)controller:(id)a3 didCompleteClassificationRequest:(id)a4 withResponse:(id)a5;
- (void)presentBlockAllAlertFor:(id)a3;
- (void)presentBlockUnknownAlertFor:(id)a3;
- (void)presentFaceTimeSpamReportAlertFor:(id)a3;
- (void)presentFaceTimeSpamReportAndBlockAlertFor:(id)a3;
- (void)presentGroupFaceTimeSpamReportAndBlockAlertFor:(id)a3;
- (void)showReportingExtensionForCall:(id)a3;
@end

@implementation MPReportFlowPresenter

- (MPReportFlowPresenter)initWithCallReportingViewModel:(id)a3 alertPresentingViewController:(id)a4 contactsService:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = specialized ReportFlowPresenter.init(callReportingViewModel:alertPresentingViewController:contactsService:)(v7, v8, a5);

  return v9;
}

- (void)presentFaceTimeSpamReportAlertFor:(id)a3
{
  v4 = a3;
  v5 = self;
  ReportFlowPresenter.presentFaceTimeSpamReportAlert(for:)(v4);
}

- (void)presentBlockAllAlertFor:(id)a3
{
  v4 = a3;
  v5 = self;
  ReportFlowPresenter.presentBlockAllAlert(for:)(v4);
}

- (void)presentBlockUnknownAlertFor:(id)a3
{
  v4 = a3;
  v5 = self;
  ReportFlowPresenter.presentBlockUnknownAlert(for:)(v4);
}

- (void)presentFaceTimeSpamReportAndBlockAlertFor:(id)a3
{
  v4 = a3;
  v5 = self;
  ReportFlowPresenter.presentFaceTimeSpamReportAndBlockAlert(for:)(v4);
}

- (void)presentGroupFaceTimeSpamReportAndBlockAlertFor:(id)a3
{
  v4 = a3;
  v5 = self;
  ReportFlowPresenter.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(v4);
}

- (void)showReportingExtensionForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  ReportFlowPresenter.showReportingExtension(for:)(v4);
}

- (void)_showCarrierVoiceCallReportAlertForCall:(id)a3
{
  v4 = a3;
  v5 = self;
  ReportFlowPresenter.showCarrierVoiceCallReportAlert(for:)(v4);
}

- (MPReportFlowPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)controller:(id)a3 didCompleteClassificationRequest:(id)a4 withResponse:(id)a5
{
  v25 = a5;
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
  v16 = a4;
  v17 = a5;
  v18 = self;
  v19 = v16;
  v26 = v17;
  v20 = static MainActor.shared.getter();
  v21 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v20;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = v18;
  (*(v9 + 32))(&v23[v21], v11, v27);
  *&v23[v22] = v19;
  *&v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8] = v25;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v14, &closure #1 in ReportFlowPresenter.controller(_:didComplete:with:)partial apply, v23);
}

@end