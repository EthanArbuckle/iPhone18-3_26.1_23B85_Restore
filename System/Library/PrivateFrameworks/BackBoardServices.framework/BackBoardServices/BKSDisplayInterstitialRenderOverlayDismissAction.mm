@interface BKSDisplayInterstitialRenderOverlayDismissAction
- (BKSDisplayInterstitialRenderOverlayDismissAction)initWithDescriptor:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BKSDisplayInterstitialRenderOverlayDismissAction

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSDisplayInterstitialRenderOverlayDismissAction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self->_overlayDescriptor];
  v4 = [v3 appendObject:self->_overlayDescriptor withName:@"overlayDescriptor"];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BKSDisplayInterstitialRenderOverlayDismissAction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BKSDisplayInterstitialRenderOverlayDismissAction)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKSDisplayInterstitialRenderOverlayDismissAction;
  v6 = [(BKSDisplayInterstitialRenderOverlayDismissAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overlayDescriptor, a3);
  }

  return v7;
}

@end