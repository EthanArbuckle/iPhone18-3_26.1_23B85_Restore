@interface FloatingUnifiedMessageCoordinator
- (_TtC11AppStoreKit33FloatingUnifiedMessageCoordinator)init;
- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
- (void)messageViewController:(id)a3 didFailWithError:(id)a4;
- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4;
- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4;
- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5;
@end

@implementation FloatingUnifiedMessageCoordinator

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = sub_1E1AF5DFC();
  v11 = v10;
  v12 = sub_1E1AF5DFC();
  v14 = v13;
  v15 = a3;
  v16 = a4;
  v17 = self;
  FloatingUnifiedMessageCoordinator.engagement(_:didUpdate:placement:serviceType:)(v15, a4, v9, v11, v12, v14);
}

- (void)messageViewController:(id)a3 didSelectActionWithDialogResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  FloatingUnifiedMessageCoordinator.messageViewController(_:didSelectActionWith:)(v6, v7);
}

- (void)messageViewController:(id)a3 enqueueEventWithFields:(id)a4 inTopic:(id)a5
{
  v8 = sub_1E1AF5C7C();
  if (a5)
  {
    sub_1E1AF5DFC();
  }

  v9 = a3;
  v10 = self;
  _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC21messageViewController_22enqueueEventWithFields7inTopicySo012AMSUIMessageiJ0_So06UIViewJ0CXc_SDys11AnyHashableVypGSSSgtF_0(v9, v8);
}

- (void)messageViewController:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC21messageViewController_16didFailWithErrorySo012AMSUIMessageiJ0_So06UIViewJ0CXc_s0N0_pSgtF_0(v6, a4);
}

- (void)messageViewController:(id)a3 didUpdateSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = self;
  _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC21messageViewController_9didUpdateySo012AMSUIMessageiJ0_So06UIViewJ0CXc_So6CGSizeVtF_0(v7, width, height);
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
  _s11AppStoreKit33FloatingUnifiedMessageCoordinatorC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0O7RequestCSgS2SySo0O6ResultCSg_s5Error_pSgtctF_0(v17, a4, v11, v13, v14, v16);
  _Block_release(v10);
}

- (_TtC11AppStoreKit33FloatingUnifiedMessageCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end