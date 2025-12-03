@interface InlineUnifiedMessagePresenter
- (_TtC11AppStoreKit29InlineUnifiedMessagePresenter)init;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)messageViewController:(id)controller didFailWithError:(id)error;
- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result;
- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size;
- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic;
@end

@implementation InlineUnifiedMessagePresenter

- (void)messageViewController:(id)controller didSelectActionWithDialogResult:(id)result
{
  controllerCopy = controller;
  resultCopy = result;
  selfCopy = self;
  InlineUnifiedMessagePresenter.messageViewController(_:didSelectActionWith:)(controllerCopy, resultCopy);
}

- (void)messageViewController:(id)controller didUpdateSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  selfCopy = self;
  InlineUnifiedMessagePresenter.messageViewController(_:didUpdate:)(controllerCopy, width, height);
}

- (void)messageViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  _s11AppStoreKit29InlineUnifiedMessagePresenterC21messageViewController_16didFailWithErrorySo012AMSUIMessageiJ0_So06UIViewJ0CXc_s0N0_pSgtF_0(controllerCopy, error);
}

- (void)messageViewController:(id)controller enqueueEventWithFields:(id)fields inTopic:(id)topic
{
  v8 = sub_1E1AF5C7C();
  if (topic)
  {
    sub_1E1AF5DFC();
  }

  controllerCopy = controller;
  selfCopy = self;
  _s11AppStoreKit29InlineUnifiedMessagePresenterC21messageViewController_22enqueueEventWithFields7inTopicySo012AMSUIMessageiJ0_So06UIViewJ0CXc_SDys11AnyHashableVypGSSSgtF_0(controllerCopy, v8);
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
  InlineUnifiedMessagePresenter.engagement(_:didUpdate:placement:serviceType:)(engagementCopy, request, v9, v11, v12, v14);
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
  _s11AppStoreKit29InlineUnifiedMessagePresenterC10engagement_9didUpdate9placement11serviceType10completionySo13AMSEngagementC_So0O7RequestCSgS2SySo0O6ResultCSg_s5Error_pSgtctF_0(engagementCopy, request, v11, v13, v14, v16);
  _Block_release(v10);
}

- (_TtC11AppStoreKit29InlineUnifiedMessagePresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end