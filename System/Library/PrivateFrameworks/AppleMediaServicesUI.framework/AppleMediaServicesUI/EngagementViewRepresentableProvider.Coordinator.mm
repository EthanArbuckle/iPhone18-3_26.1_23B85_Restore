@interface EngagementViewRepresentableProvider.Coordinator
- (BOOL)engagementViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5;
- (void)engagementViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5;
- (void)engagementViewControllerShouldDismiss:(id)a3;
@end

@implementation EngagementViewRepresentableProvider.Coordinator

- (void)engagementViewControllerShouldDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BB15B140();
}

- (void)engagementViewController:(id)a3 didFinishWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1BB15B214(v11, a4, a5);
}

- (BOOL)engagementViewController:(id)a3 handleDynamicDelegateAction:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  LOBYTE(self) = sub_1BB15B534(v12, v11, sub_1BB13CA10, v9);

  return self & 1;
}

@end