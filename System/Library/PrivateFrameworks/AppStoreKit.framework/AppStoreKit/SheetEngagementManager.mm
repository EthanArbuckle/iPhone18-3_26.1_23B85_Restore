@interface SheetEngagementManager
- (BOOL)engagementTaskViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler;
- (_TtC11AppStoreKit22SheetEngagementManager)init;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)engagement:(id)engagement handleDialogRequest:(id)request completion:(id)completion;
- (void)engagement:(id)engagement handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation SheetEngagementManager

- (void)engagement:(id)engagement handleEngagementRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_6handle10completionySo13AMSEngagementC_So0J7RequestCSgySo0J6ResultCSg_s5Error_pSgtctF_0(engagementCopy, request);
  _Block_release(v8);
}

- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = sub_1E1AF5DFC();
  v13 = v12;
  v14 = sub_1E1AF5DFC();
  v16 = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0N7RequestCSgS2SySo0N6ResultCSg_s5Error_pSgtctF_0(engagementCopy, request, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)engagement handleDialogRequest:(id)request completion:(id)completion
{
  v8 = _Block_copy(completion);
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_6handle10completionySo13AMSEngagementC_So16AMSDialogRequestCSgySo0K6ResultCSg_s5Error_pSgtctF_0(engagementCopy, request);
  _Block_release(v8);
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_1E1AF5DFC();
  v11 = v10;
  v12 = sub_1E1AF5DFC();
  v14 = v13;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  _s11AppStoreKit22SheetEngagementManagerC10engagement_9didUpdate9placement11serviceTypeySo13AMSEngagementC_So16AMSDialogRequestCSgS2StF_0(engagementCopy, request, v9, v11, v12, v14);
}

- (BOOL)engagementTaskViewController:(id)controller handleDynamicDelegateAction:(id)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  LOBYTE(self) = SheetEngagementManager.engagementTaskViewController(_:handleDynamicDelegateAction:completionHandler:)(controllerCopy, actionCopy, sub_1E15A4348, v9);

  return self & 1;
}

- (_TtC11AppStoreKit22SheetEngagementManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end