@interface ARUIRingsView
+ (id)ringsViewConfiguredForCompanionOfType:(int64_t)a3 withRenderer:(id)a4;
+ (id)ringsViewConfiguredForWatchOfType:(int64_t)a3 withIcon:(BOOL)a4 renderer:(id)a5;
- (ARUIRingsView)initWithRingGroup:(id)a3;
- (ARUIRingsView)initWithRingGroup:(id)a3 renderer:(id)a4;
- (ARUIRingsView)initWithRingGroupController:(id)a3;
- (ARUIRingsView)initWithRingGroupController:(id)a3 renderer:(id)a4;
- (ARUIRingsView)initWithRingGroupControllers:(id)a3;
- (ARUIRingsView)initWithRingGroupControllers:(id)a3 renderer:(id)a4;
- (ARUIRingsView)initWithRingGroups:(id)a3;
- (ARUIRingsView)initWithRingGroups:(id)a3 renderer:(id)a4;
- (BOOL)_shouldAllowRendering;
- (UIImage)snapshot;
- (id)_allRings;
- (id)_anySpriteSheet;
- (void)_discardBackBuffers;
- (void)_sharedInitWithRingGroups:(id)a3 renderer:(id)a4;
- (void)_sharedInitWithWithRingGroupControllers:(id)a3 renderer:(id)a4;
- (void)_updateRenderContext;
- (void)_updateRingGroupPauseState;
- (void)layoutSubviews;
- (void)setActiveEnergyPercentage:(double)a3 animated:(BOOL)a4;
- (void)setActiveEnergyPercentage:(double)a3 briskPercentage:(double)a4 movingHoursPercentage:(double)a5 animated:(BOOL)a6 completion:(id)a7;
- (void)setBounds:(CGRect)a3;
- (void)setBriskPercentage:(double)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setMovingHoursPercentage:(double)a3 animated:(BOOL)a4;
- (void)setOpaque:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation ARUIRingsView

- (id)_allRings
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_ringGroups;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) rings];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v15 layoutSubviews];
  if ([(ARUIRingsView *)self _shouldAllowRendering])
  {
    v3 = [(ARUIRingsView *)self metalLayer];
    if ([v3 isDrawableAvailable])
    {
      v4 = [(ARUIRingsView *)self metalLayer];
      v5 = [v4 nextDrawable];

      if (!v5)
      {
        return;
      }

      objc_initWeak(&location, self);
      discardBackBuffers = self->_discardBackBuffers;
      if (discardBackBuffers)
      {
        v7 = v12;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __31__ARUIRingsView_layoutSubviews__block_invoke;
        v12[3] = &unk_1E83CE390;
        v3 = &v13;
        objc_copyWeak(&v13, &location);
      }

      else
      {
        v7 = 0;
      }

      v8 = MEMORY[0x1D3875270](v7);
      renderer = self->_renderer;
      v10 = [(ARUIRingsView *)self _allRings];
      v11 = [(ARUIRingsView *)self _anySpriteSheet];
      [(ARUIRenderer *)renderer renderRings:v10 spriteSheet:v11 intoDrawable:v5 withContext:self->_renderContext completion:v8];

      if (discardBackBuffers)
      {
        objc_destroyWeak(v3);
      }

      objc_destroyWeak(&location);
    }

    else
    {
      v5 = v3;
    }
  }
}

- (BOOL)_shouldAllowRendering
{
  if (!self->_shouldBypassApplicationStateChecking && self->_backgrounded || !self->_inViewHierarchy || !self->_shouldRenderOnLayout)
  {
    return 0;
  }

  if (!self->_shouldCheckDrawableAvailable)
  {
    return 1;
  }

  v2 = [(ARUIRingsView *)self metalLayer];
  v3 = [v2 isDrawableAvailable];

  return v3;
}

- (id)_anySpriteSheet
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_ringGroups;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 spriteSheet];

        if (v7)
        {
          v3 = [v6 spriteSheet];
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

void __31__ARUIRingsView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained ringGroup];
  v4 = [v3 animating];

  if ((v4 & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 _discardBackBuffers];
  }
}

- (ARUIRingsView)initWithRingGroupController:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ARUIRingsView;
  v5 = [(ARUIRingsView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v12[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    ringGroupControllers = v5->_ringGroupControllers;
    v5->_ringGroupControllers = v6;

    v11 = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [(ARUIRingsView *)v5 _sharedInitWithWithRingGroupControllers:v8 renderer:0];
  }

  return v5;
}

- (ARUIRingsView)initWithRingGroupController:(id)a3 renderer:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ARUIRingsView;
  v8 = [(ARUIRingsView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v15[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    ringGroupControllers = v8->_ringGroupControllers;
    v8->_ringGroupControllers = v9;

    v14 = v6;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [(ARUIRingsView *)v8 _sharedInitWithWithRingGroupControllers:v11 renderer:v7];
  }

  return v8;
}

- (ARUIRingsView)initWithRingGroupControllers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ARUIRingsView;
  v6 = [(ARUIRingsView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ringGroupControllers, a3);
    [(ARUIRingsView *)v7 _sharedInitWithWithRingGroupControllers:v5 renderer:0];
  }

  return v7;
}

- (ARUIRingsView)initWithRingGroupControllers:(id)a3 renderer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ARUIRingsView;
  v9 = [(ARUIRingsView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ringGroupControllers, a3);
    [(ARUIRingsView *)v10 _sharedInitWithWithRingGroupControllers:v7 renderer:v8];
  }

  return v10;
}

- (void)_sharedInitWithWithRingGroupControllers:(id)a3 renderer:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v15 + 1) + 8 * v13) ringGroup];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(ARUIRingsView *)self _sharedInitWithRingGroups:v8 renderer:v7];
}

- (ARUIRingsView)initWithRingGroup:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARUIRingsView;
  v5 = [(ARUIRingsView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v5)
  {
    v9[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [(ARUIRingsView *)v5 _sharedInitWithRingGroups:v6 renderer:0];
  }

  return v5;
}

- (ARUIRingsView)initWithRingGroup:(id)a3 renderer:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ARUIRingsView;
  v8 = [(ARUIRingsView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v8)
  {
    v12[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [(ARUIRingsView *)v8 _sharedInitWithRingGroups:v9 renderer:v7];
  }

  return v8;
}

- (ARUIRingsView)initWithRingGroups:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARUIRingsView;
  v5 = [(ARUIRingsView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(ARUIRingsView *)v5 _sharedInitWithRingGroups:v4 renderer:0];
  }

  return v6;
}

- (ARUIRingsView)initWithRingGroups:(id)a3 renderer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ARUIRingsView;
  v8 = [(ARUIRingsView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    [(ARUIRingsView *)v8 _sharedInitWithRingGroups:v6 renderer:v7];
  }

  return v9;
}

- (void)_sharedInitWithRingGroups:(id)a3 renderer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__ARUIRingsView__sharedInitWithRingGroups_renderer___block_invoke;
  v13[3] = &unk_1E83CE368;
  v13[4] = self;
  [v7 enumerateObjectsUsingBlock:v13];
  objc_storeStrong(&self->_ringGroups, a3);
  v9 = v8;
  if (!v8)
  {
    v9 = objc_alloc_init(ARUIRenderer);
  }

  objc_storeStrong(&self->_renderer, v9);
  if (!v8)
  {
  }

  [(ARUIRingsView *)self _updateRenderContext];
  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11 = [v10 applicationState];

  self->_backgrounded = v11 == 2;
  self->_discardBackBuffers = 1;
  self->_shouldRenderOnLayout = 1;
  self->_shouldCheckDrawableAvailable = 0;
  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:self selector:sel__didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];
  [v12 addObserver:self selector:sel__willEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
}

void __52__ARUIRingsView__sharedInitWithRingGroups_renderer___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setDelegate:v2];
  [v3 setPaused:1];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ARUIRingsView *)self _updateRenderContext];
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(ARUIRingsView *)self _updateRenderContext];
}

- (void)_updateRenderContext
{
  [(ARUIRingsView *)self bounds];
  v5 = [[ARUIRenderContext alloc] initWithSize:v3, v4];
  [(ARUIRenderContext *)v5 setOpaque:[(ARUIRingsView *)self isOpaque]];
  v6 = [(ARUIRingsView *)self metalLayer];
  [(ARUIRenderContext *)v5 drawableSize];
  v8 = v7;
  [(ARUIRenderContext *)v5 drawableSize];
  [v6 setDrawableSize:{v8, v9}];

  renderContext = self->_renderContext;
  self->_renderContext = v5;

  [(ARUIRingsView *)self setNeedsLayout];
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v5 setOpaque:?];
  [(ARUIRenderContext *)self->_renderContext setOpaque:v3];
  [(ARUIRingsView *)self setNeedsLayout];
}

- (void)_discardBackBuffers
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ARUIRingsView__discardBackBuffers__block_invoke;
  block[3] = &unk_1E83CDFF0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __36__ARUIRingsView__discardBackBuffers__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) metalLayer];
  [v1 removeBackBuffers];
}

- (void)willMoveToWindow:(id)a3
{
  self->_inViewHierarchy = a3 != 0;
  v4 = a3;
  [(ARUIRingsView *)self _updateRingGroupPauseState];
  v5.receiver = self;
  v5.super_class = ARUIRingsView;
  [(ARUIRingsView *)&v5 willMoveToWindow:v4];
}

- (void)_updateRingGroupPauseState
{
  if (self->_inViewHierarchy)
  {
    v3 = !self->_shouldBypassApplicationStateChecking && self->_backgrounded;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(ARUIRingsView *)self ringGroup];
  v5 = [v4 paused];

  ringGroups = self->_ringGroups;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__ARUIRingsView__updateRingGroupPauseState__block_invoke;
  v7[3] = &__block_descriptor_33_e30_v32__0__ARUIRingGroup_8Q16_B24l;
  v8 = v3;
  [(NSArray *)ringGroups enumerateObjectsUsingBlock:v7];
  if (v5)
  {
    if (!v3)
    {
      [(ARUIRingsView *)self setNeedsLayout];
    }
  }
}

- (UIImage)snapshot
{
  renderer = self->_renderer;
  v4 = [(ARUIRingsView *)self _allRings];
  v5 = [(ARUIRingsView *)self _anySpriteSheet];
  v6 = [(ARUIRenderer *)renderer snapshotRings:v4 spriteSheet:v5 withContext:self->_renderContext];

  return v6;
}

+ (id)ringsViewConfiguredForWatchOfType:(int64_t)a3 withIcon:(BOOL)a4 renderer:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [ARUIRingGroupController ringGroupControllerConfiguredForWatchWithRingType:a3 withIcon:v5];
  v9 = [[ARUIRingsView alloc] initWithRingGroupController:v8 renderer:v7];

  return v9;
}

+ (id)ringsViewConfiguredForCompanionOfType:(int64_t)a3 withRenderer:(id)a4
{
  v5 = a4;
  v6 = [ARUIRingGroupController ringGroupControllerConfiguredForCompanionWithRingType:a3 withIcon:1];
  v7 = [[ARUIRingsView alloc] initWithRingGroupController:v6 renderer:v5];

  return v7;
}

- (void)setActiveEnergyPercentage:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(ARUIRingsView *)self ringGroupController];
  [v6 setActiveEnergyPercentage:v4 animated:a3];
}

- (void)setMovingHoursPercentage:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(ARUIRingsView *)self ringGroupController];
  [v6 setMovingHoursPercentage:v4 animated:a3];
}

- (void)setBriskPercentage:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(ARUIRingsView *)self ringGroupController];
  [v6 setBriskPercentage:v4 animated:a3];
}

- (void)setActiveEnergyPercentage:(double)a3 briskPercentage:(double)a4 movingHoursPercentage:(double)a5 animated:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v12 = a7;
  v13 = [(ARUIRingsView *)self ringGroupController];
  [v13 setActiveEnergyPercentage:v7 briskPercentage:v12 movingHoursPercentage:a3 animated:a4 completion:a5];
}

@end