@interface BKSDisplayInterstitialRenderOverlayDismissAction
- (BKSDisplayInterstitialRenderOverlayDismissAction)initWithDescriptor:(id)descriptor;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BKSDisplayInterstitialRenderOverlayDismissAction

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSDisplayInterstitialRenderOverlayDismissAction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self->_overlayDescriptor];
  v4 = [v3 appendObject:self->_overlayDescriptor withName:@"overlayDescriptor"];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSDisplayInterstitialRenderOverlayDismissAction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BKSDisplayInterstitialRenderOverlayDismissAction)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = BKSDisplayInterstitialRenderOverlayDismissAction;
  v6 = [(BKSDisplayInterstitialRenderOverlayDismissAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_overlayDescriptor, descriptor);
  }

  return v7;
}

@end