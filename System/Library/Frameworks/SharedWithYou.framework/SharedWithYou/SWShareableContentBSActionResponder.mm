@interface SWShareableContentBSActionResponder
+ (SWShareableContentBSActionResponder)sharedActionResponder;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
@end

@implementation SWShareableContentBSActionResponder

+ (SWShareableContentBSActionResponder)sharedActionResponder
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__SWShareableContentBSActionResponder_sharedActionResponder__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedActionResponder_onceToken_0 != -1)
  {
    dispatch_once(&sharedActionResponder_onceToken_0, block);
  }

  v2 = sharedActionResponder_shared_0;

  return v2;
}

uint64_t __60__SWShareableContentBSActionResponder_sharedActionResponder__block_invoke(uint64_t a1)
{
  sharedActionResponder_shared_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v6 = MEMORY[0x1E69D3820];
  actionsCopy = actions;
  sharedActionHandler = [v6 sharedActionHandler];
  v9 = [sharedActionHandler respondToBSActions:actionsCopy];

  return v9;
}

@end