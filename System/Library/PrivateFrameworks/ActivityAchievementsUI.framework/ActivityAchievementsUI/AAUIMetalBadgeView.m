@interface AAUIMetalBadgeView
- (AAUIBadgeModelConfiguration)configuration;
- (AAUIBadgeViewDrawableDelegate)delegate;
- (BOOL)isPaused;
- (UIImage)backTextureImage;
- (id)initUsingEarnedShader:(BOOL)a3 delegate:(id)a4;
- (id)snapshot;
- (void)cleanupAfterSnapshot;
- (void)resizeBadgeForCurrentViewSize;
- (void)setBackTextureImage:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPaused:(BOOL)a3;
@end

@implementation AAUIMetalBadgeView

- (void)resizeBadgeForCurrentViewSize
{
  v2 = [(AAUIMetalBadgeView *)self renderer];
  [v2 resizeBadgeForCurrentViewSize];
}

- (id)initUsingEarnedShader:(BOOL)a3 delegate:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = AAUIMetalBadgeView;
  v7 = [(AAUIMetalBadgeView *)&v17 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_useEarnedShader = a3;
    objc_storeWeak(&v7->_delegate, v6);
    [(AAUIMetalBadgeView *)v8 setAutoresizingMask:18];
    v9 = [(AAUIMetalBadgeView *)v8 layer];
    metalLayer = v8->_metalLayer;
    v8->_metalLayer = v9;

    v11 = [[AAUIMetalBadgeRenderer alloc] initWithCAMetalLayer:v8->_metalLayer useEarnedShader:v8->_useEarnedShader];
    renderer = v8->_renderer;
    v8->_renderer = v11;

    objc_initWeak(&location, v8);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __53__AAUIMetalBadgeView_initUsingEarnedShader_delegate___block_invoke;
    v14[3] = &unk_278C43730;
    objc_copyWeak(&v15, &location);
    [(AAUIMetalBadgeRenderer *)v8->_renderer setStateUpdateBlock:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __53__AAUIMetalBadgeView_initUsingEarnedShader_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = [v2 updateBadgeModelForDrawable:WeakRetained];

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = AAUIMetalBadgeView;
  [(AAUIMetalBadgeView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AAUIMetalBadgeView *)self resizeBadgeForCurrentViewSize];
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(AAUIMetalBadgeView *)self renderer];
  [v5 setConfiguration:v4];
}

- (AAUIBadgeModelConfiguration)configuration
{
  v2 = [(AAUIMetalBadgeView *)self renderer];
  v3 = [v2 configuration];

  return v3;
}

- (void)setBackTextureImage:(id)a3
{
  v4 = a3;
  v5 = [(AAUIMetalBadgeView *)self renderer];
  [v5 setBackTextureImage:v4];
}

- (UIImage)backTextureImage
{
  v2 = [(AAUIMetalBadgeView *)self renderer];
  v3 = [v2 backTextureImage];

  return v3;
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v4 = [(AAUIMetalBadgeView *)self renderer];
  [v4 setPaused:v3];
}

- (BOOL)isPaused
{
  v2 = [(AAUIMetalBadgeView *)self renderer];
  v3 = [v2 isPaused];

  return v3;
}

- (id)snapshot
{
  v2 = [(AAUIMetalBadgeView *)self renderer];
  v3 = [v2 snapshot];

  return v3;
}

- (void)cleanupAfterSnapshot
{
  v2 = [(AAUIMetalBadgeView *)self renderer];
  [v2 cleanupAfterSnapshot];
}

- (AAUIBadgeViewDrawableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end