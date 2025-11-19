@interface CRLUSDRenderingExtensionConnector.ViewControllerDelegate
- (_TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F22ViewControllerDelegate)init;
- (void)hostViewController:(id)a3 didBeginHosting:(id)a4;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
@end

@implementation CRLUSDRenderingExtensionConnector.ViewControllerDelegate

- (_TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F22ViewControllerDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCC8Freeform33CRLUSDRenderingExtensionConnectorP33_3F2C14ED993E13602DE61854D66D868F22ViewControllerDelegate_continuation;
  v5 = sub_1005B981C(&unk_101A050F0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CRLUSDRenderingExtensionConnector.ViewControllerDelegate *)&v7 init];
}

- (void)hostViewController:(id)a3 didBeginHosting:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100B8974C();
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_100B89974(a4);
}

@end