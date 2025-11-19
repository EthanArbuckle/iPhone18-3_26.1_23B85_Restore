@interface BKSDisplayRenderOverlay
- (BKSDisplayRenderOverlay)initWithDescriptor:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)dismissWithAnimation:(id)a3;
@end

@implementation BKSDisplayRenderOverlay

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSDisplayRenderOverlay *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self->_descriptor];
  v4 = [v3 appendObject:self->_descriptor withName:@"descriptor"];

  return v3;
}

- (id)succinctDescription
{
  v2 = [(BKSDisplayRenderOverlay *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)dismissWithAnimation:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__BKSDisplayRenderOverlay_dismissWithAnimation___block_invoke;
  v6[3] = &unk_1E6F47C78;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __48__BKSDisplayRenderOverlay_dismissWithAnimation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  BSRunLoopPerformAfterCACommit();
}

- (BKSDisplayRenderOverlay)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BKSDisplayRenderOverlay;
  v6 = [(BKSDisplayRenderOverlay *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
  }

  return v7;
}

@end