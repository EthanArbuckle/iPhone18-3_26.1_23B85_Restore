@interface AEGridOverlayView
+ (id)cloudBadge;
+ (id)gradientShadow;
+ (id)gridOverlayLayoutInfo;
+ (id)loopBadge;
+ (id)videoBadge;
- (AEGridOverlayView)init;
- (CGRect)_cloudRect;
- (CGRect)_loopRect;
- (CGRect)_videoRect;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)drawRect:(CGRect)rect;
@end

@implementation AEGridOverlayView

- (void)becomeReusable
{
  [(AEGridOverlayView *)self _setOverlayConfiguration:0];

  [(AEGridOverlayView *)self setHidden:1];
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  [(AEGridOverlayView *)self _setOverlayConfiguration:data];

  [(AEGridOverlayView *)self setNeedsDisplay];
}

- (CGRect)_loopRect
{
  [(AEGridOverlayView *)self bounds];
  v3 = v2 + 8.0;
  v6 = v4 + v5 + -15.0 + -8.0;
  v7 = 19.0;
  v8 = 15.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v3;
  return result;
}

- (CGRect)_videoRect
{
  [(AEGridOverlayView *)self bounds];
  v3 = v2 + 8.0;
  v6 = v4 + v5 + -12.0 + -8.0;
  v7 = 20.0;
  v8 = 12.0;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v3;
  return result;
}

- (CGRect)_cloudRect
{
  [(AEGridOverlayView *)self bounds];
  v4 = v2 + v3 + -24.0 + -6.0;
  v7 = v5 + v6 + -15.0 + -8.0;
  v8 = 24.0;
  v9 = 15.0;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v4;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  v10 = [(AEGridOverlayView *)self overlayConfiguration:rect.origin.x];
  showCloudDecoration = [v10 showCloudDecoration];
  showVideoDecoration = [v10 showVideoDecoration];
  showLoopDecoration = [v10 showLoopDecoration];
  if (showCloudDecoration)
  {
    cloudBadge = [objc_opt_class() cloudBadge];
    [(AEGridOverlayView *)self _cloudRect];
    [cloudBadge drawInRect:?];

    if (!showVideoDecoration)
    {
LABEL_3:
      if (!showLoopDecoration)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!showVideoDecoration)
  {
    goto LABEL_3;
  }

  videoBadge = [objc_opt_class() videoBadge];
  [(AEGridOverlayView *)self _videoRect];
  [videoBadge drawInRect:?];

  if (showLoopDecoration)
  {
LABEL_4:
    loopBadge = [objc_opt_class() loopBadge];
    [(AEGridOverlayView *)self _loopRect];
    [loopBadge drawInRect:?];
  }

LABEL_5:
}

- (AEGridOverlayView)init
{
  v6.receiver = self;
  v6.super_class = AEGridOverlayView;
  v2 = [(AEGridOverlayView *)&v6 init];
  if (v2)
  {
    gradientShadow = [objc_opt_class() gradientShadow];
    v4 = [MEMORY[0x277D75348] colorWithPatternImage:gradientShadow];
    [(AEGridOverlayView *)v2 setBackgroundColor:v4];
  }

  return v2;
}

+ (id)loopBadge
{
  if (loopBadge_onceToken != -1)
  {
    dispatch_once(&loopBadge_onceToken, &__block_literal_global_237);
  }

  v3 = loopBadge_loopBadge;

  return v3;
}

void __30__AEGridOverlayView_loopBadge__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = AssetExplorerBundle();
  v1 = [v0 imageNamed:@"Loop_badge" inBundle:v3];
  v2 = loopBadge_loopBadge;
  loopBadge_loopBadge = v1;
}

+ (id)videoBadge
{
  if (videoBadge_onceToken != -1)
  {
    dispatch_once(&videoBadge_onceToken, &__block_literal_global_232);
  }

  v3 = videoBadge_videoBadge;

  return v3;
}

void __31__AEGridOverlayView_videoBadge__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = AssetExplorerBundle();
  v1 = [v0 imageNamed:@"Video_badge" inBundle:v3];
  v2 = videoBadge_videoBadge;
  videoBadge_videoBadge = v1;
}

+ (id)cloudBadge
{
  if (cloudBadge_onceToken != -1)
  {
    dispatch_once(&cloudBadge_onceToken, &__block_literal_global_227);
  }

  v3 = cloudBadge_cloudBadge;

  return v3;
}

void __31__AEGridOverlayView_cloudBadge__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = AssetExplorerBundle();
  v1 = [v0 imageNamed:@"Cloud_badge" inBundle:v3];
  v2 = cloudBadge_cloudBadge;
  cloudBadge_cloudBadge = v1;
}

+ (id)gradientShadow
{
  if (gradientShadow_onceToken != -1)
  {
    dispatch_once(&gradientShadow_onceToken, &__block_literal_global_518);
  }

  v3 = gradientShadow_gradientShadow;

  return v3;
}

void __35__AEGridOverlayView_gradientShadow__block_invoke()
{
  v0 = MEMORY[0x277D755B8];
  v3 = AssetExplorerBundle();
  v1 = [v0 imageNamed:@"Gradient_shadow" inBundle:v3];
  v2 = gradientShadow_gradientShadow;
  gradientShadow_gradientShadow = v1;
}

+ (id)gridOverlayLayoutInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AEGridOverlayView_gridOverlayLayoutInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (gridOverlayLayoutInfo_onceToken != -1)
  {
    dispatch_once(&gridOverlayLayoutInfo_onceToken, block);
  }

  v2 = gridOverlayLayoutInfo_gridOverlayLayoutInfo;

  return v2;
}

void __42__AEGridOverlayView_gridOverlayLayoutInfo__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) gradientShadow];
  [v5 size];
  v3 = [[AEGridOverlayLayoutInfo alloc] initWithGradientImageSize:v1, v2];
  v4 = gridOverlayLayoutInfo_gridOverlayLayoutInfo;
  gridOverlayLayoutInfo_gridOverlayLayoutInfo = v3;
}

@end