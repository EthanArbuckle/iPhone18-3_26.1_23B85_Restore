@interface SheetEngagementManager
- (BOOL)engagementTaskViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5;
- (_TtC11AppStoreKit22SheetEngagementManager)init;
- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
- (void)engagement:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)engagement:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
@end

@implementation SheetEngagementManager

- (void)engagement:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v11 = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_6handle10completionySo13AMSEngagementC_So0J7RequestCSgySo0J6ResultCSg_s5Error_pSgtctF_0(v9, a4);
  _Block_release(v8);
}

- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_1E1AF5DFC();
  v13 = v12;
  v14 = sub_1E1AF5DFC();
  v16 = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0N7RequestCSgS2SySo0N6ResultCSg_s5Error_pSgtctF_0(v17, a4, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  v11 = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_6handle10completionySo13AMSEngagementC_So16AMSDialogRequestCSgySo0K6ResultCSg_s5Error_pSgtctF_0(v9, a4);
  _Block_release(v8);
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = sub_1E1AF5DFC();
  v11 = v10;
  v12 = sub_1E1AF5DFC();
  v14 = v13;
  v15 = a3;
  v16 = a4;
  v17 = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_9didUpdate9placement11serviceTypeySo13AMSEngagementC_So16AMSDialogRequestCSgS2StF_0(v15, a4, v9, v11, v12, v14);
}

- (BOOL)engagementTaskViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  LOBYTE(self) = SheetEngagementManager.engagementTaskViewController(_:handleDynamicDelegateAction:completionHandler:)(v10, v11, sub_1E15A4348, v9);

  return self & 1;
}

- (_TtC11AppStoreKit22SheetEngagementManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end