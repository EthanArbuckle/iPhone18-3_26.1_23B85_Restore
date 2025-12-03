@interface AAUIMetalBadgeView
- (AAUIBadgeModelConfiguration)configuration;
- (AAUIBadgeViewDrawableDelegate)delegate;
- (BOOL)isPaused;
- (UIImage)backTextureImage;
- (id)initUsingEarnedShader:(BOOL)shader delegate:(id)delegate;
- (id)snapshot;
- (void)cleanupAfterSnapshot;
- (void)resizeBadgeForCurrentViewSize;
- (void)setBackTextureImage:(id)image;
- (void)setConfiguration:(id)configuration;
- (void)setFrame:(CGRect)frame;
- (void)setPaused:(BOOL)paused;
@end

@implementation AAUIMetalBadgeView

- (void)resizeBadgeForCurrentViewSize
{
  renderer = [(AAUIMetalBadgeView *)self renderer];
  [renderer resizeBadgeForCurrentViewSize];
}

- (id)initUsingEarnedShader:(BOOL)shader delegate:(id)delegate
{
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = AAUIMetalBadgeView;
  v7 = [(AAUIMetalBadgeView *)&v17 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v8 = v7;
  if (v7)
  {
    v7->_useEarnedShader = shader;
    objc_storeWeak(&v7->_delegate, delegateCopy);
    [(AAUIMetalBadgeView *)v8 setAutoresizingMask:18];
    layer = [(AAUIMetalBadgeView *)v8 layer];
    metalLayer = v8->_metalLayer;
    v8->_metalLayer = layer;

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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = AAUIMetalBadgeView;
  [(AAUIMetalBadgeView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AAUIMetalBadgeView *)self resizeBadgeForCurrentViewSize];
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  renderer = [(AAUIMetalBadgeView *)self renderer];
  [renderer setConfiguration:configurationCopy];
}

- (AAUIBadgeModelConfiguration)configuration
{
  renderer = [(AAUIMetalBadgeView *)self renderer];
  configuration = [renderer configuration];

  return configuration;
}

- (void)setBackTextureImage:(id)image
{
  imageCopy = image;
  renderer = [(AAUIMetalBadgeView *)self renderer];
  [renderer setBackTextureImage:imageCopy];
}

- (UIImage)backTextureImage
{
  renderer = [(AAUIMetalBadgeView *)self renderer];
  backTextureImage = [renderer backTextureImage];

  return backTextureImage;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  renderer = [(AAUIMetalBadgeView *)self renderer];
  [renderer setPaused:pausedCopy];
}

- (BOOL)isPaused
{
  renderer = [(AAUIMetalBadgeView *)self renderer];
  isPaused = [renderer isPaused];

  return isPaused;
}

- (id)snapshot
{
  renderer = [(AAUIMetalBadgeView *)self renderer];
  snapshot = [renderer snapshot];

  return snapshot;
}

- (void)cleanupAfterSnapshot
{
  renderer = [(AAUIMetalBadgeView *)self renderer];
  [renderer cleanupAfterSnapshot];
}

- (AAUIBadgeViewDrawableDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end