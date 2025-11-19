@interface JSStoreFlowSegue
- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5;
- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5;
- (void)cloudServiceSetupViewControllerDidDismiss:(id)a3;
- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
@end

@implementation JSStoreFlowSegue

- (void)cloudServiceSetupViewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  JSStoreFlowSegue.cloudServiceSetupViewControllerDidDismiss(_:)(v4);
}

- (void)webViewController:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a3;
  v11 = a4;
  v12 = self;
  _s11MusicJSCore16JSStoreFlowSegueC0A11ApplicationE17webViewController_6handle10completionySo08AMSUIWebhI0C_So22AMSAuthenticateRequestCySo0M6ResultCSg_s5Error_pSgtctF_0(v10, v11, sub_DB118, v9);
}

- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  _Block_release(v5);
  return 0;
}

- (void)webViewController:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_DA844(v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_DAA6C(a4, a5);
}

- (id)dynamicViewController:(id)a3 contentViewWithDictionary:(id)a4 frame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  sub_AB8FF0();
  v10 = objc_allocWithZone(type metadata accessor for UpsellArtworkGrid());
  v11 = a4;
  v12 = sub_3624F4(x, y, width, height);

  return v12;
}

- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_DAE24(a5);
}

@end