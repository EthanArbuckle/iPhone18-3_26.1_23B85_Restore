@interface ABDeviceDisplayView
- (ABDeviceDisplayView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_resetSprings;
- (void)_setSilentModeEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_shake;
- (void)_transitionIslandToCompact;
- (void)_transitionIslandToGrowing;
- (void)_transitionIslandToInert;
- (void)_transitionIslandToLarge;
- (void)layoutSubviews;
- (void)setIslandMode:(void *)result;
@end

@implementation ABDeviceDisplayView

- (ABDeviceDisplayView)initWithFrame:(CGRect)frame
{
  v50[4] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = ABDeviceDisplayView;
  v3 = [(ABDeviceDisplayView *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = ABDisplayPackageName();
    v44 = [v45 URLForResource:v4 withExtension:@"ca"];

    v5 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v44 type:*MEMORY[0x277CDA7F8] options:0 error:0];
    package = v3->_package;
    v3->_package = v5;

    rootLayer = [(CAPackage *)v3->_package rootLayer];
    [rootLayer setGeometryFlipped:1];

    v8 = [(CAPackage *)v3->_package publishedObjectWithName:@"island"];
    islandLayer = v3->_islandLayer;
    v3->_islandLayer = v8;

    v10 = [(CAPackage *)v3->_package publishedObjectWithName:@"ringer"];
    ringerLayer = v3->_ringerLayer;
    v3->_ringerLayer = v10;

    v12 = [(CAPackage *)v3->_package publishedObjectWithName:@"Wallpaper"];
    wallpaperLayer = v3->_wallpaperLayer;
    v3->_wallpaperLayer = v12;

    v14 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:v3->_ringerLayer];
    ringerStateController = v3->_ringerStateController;
    v3->_ringerStateController = v14;

    [(ABDeviceDisplayView *)v3 _setSilentModeEnabled:1 animated:0];
    v16 = objc_opt_new();
    islandY = v3->_islandY;
    v3->_islandY = v16;

    v18 = objc_opt_new();
    islandWidth = v3->_islandWidth;
    v3->_islandWidth = v18;

    v20 = objc_opt_new();
    islandHeight = v3->_islandHeight;
    v3->_islandHeight = v20;

    v22 = objc_opt_new();
    islandShake1 = v3->_islandShake1;
    v3->_islandShake1 = v22;

    [(ABFloatSpringProperty *)v3->_islandShake1 setBounce:0.0 duration:0.45];
    v24 = objc_opt_new();
    islandShake2 = v3->_islandShake2;
    v3->_islandShake2 = v24;

    [(ABFloatSpringProperty *)v3->_islandShake2 setBounce:0.82322 duration:0.22214];
    v26 = objc_opt_new();
    ringerVisible = v3->_ringerVisible;
    v3->_ringerVisible = v26;

    v28 = MEMORY[0x277D755B8];
    v29 = ABHeroWallpaperImageName();
    v30 = [v28 imageNamed:v29 inBundle:v45 withConfiguration:0];

    if (v30)
    {
      v31 = v30;
      -[CALayer setContents:](v3->_wallpaperLayer, "setContents:", [v30 CGImage]);
    }

    [(ABDeviceDisplayView *)v3 _transitionIslandToInert];
    [(ABDeviceDisplayView *)v3 _resetSprings];
    objc_initWeak(&location, v3);
    v32 = MEMORY[0x277D75D18];
    v50[0] = v3->_islandY;
    v50[1] = v3->_islandWidth;
    v50[2] = v3->_islandHeight;
    v50[3] = v3->_ringerVisible;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __37__ABDeviceDisplayView_initWithFrame___block_invoke;
    v46[3] = &unk_278BFFD20;
    objc_copyWeak(&v47, &location);
    [v32 _createTransformerWithInputAnimatableProperties:v33 presentationValueChangedCallback:v46];

    [(CALayer *)v3->_islandLayer position];
    v35 = v34;
    v37 = v36;
    IsD23 = ABDeviceIsD23();
    v39 = 0.0;
    if (IsD23)
    {
      v39 = 14.0;
    }

    [(CALayer *)v3->_islandLayer setPosition:v35, v37 + v39];
    layer = [(ABDeviceDisplayView *)v3 layer];
    rootLayer2 = [(CAPackage *)v3->_package rootLayer];
    [layer addSublayer:rootLayer2];

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v3;
}

void __37__ABDeviceDisplayView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(CAPackage *)self->_package rootLayer:fits.width];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = ABDeviceDisplayView;
  [(ABDeviceDisplayView *)&v27 layoutSubviews];
  disableActions = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(ABDeviceDisplayView *)self bounds];
  v5 = v4 * 0.5;
  v7 = v6 * 0.5;
  rootLayer = [(CAPackage *)self->_package rootLayer];
  [rootLayer setPosition:{v5, v7}];

  [(ABFloatSpringProperty *)self->_islandWidth output];
  v10 = v9;
  [(ABFloatSpringProperty *)self->_islandHeight output];
  v12 = v11;
  if (v11 > 105.0)
  {
    [(CALayer *)self->_islandLayer setBounds:0.0, 0.0, v10, v11];
    [(ABFloatSpringProperty *)self->_islandShake1 output];
    v14 = v5 + v13;
    [(ABFloatSpringProperty *)self->_islandShake2 output];
    v16 = v14 + v15;
    [(ABFloatSpringProperty *)self->_islandY output];
    [(CALayer *)self->_islandLayer setPosition:v16, v17];
    [(CALayer *)self->_islandLayer setCornerRadius:v12 * 0.5];
    [(ABFloatSpringProperty *)self->_ringerVisible output];
    v19 = pow(v18, 3.0);
    v20 = v19;
    *&v19 = v19;
    [(CALayer *)self->_ringerLayer setOpacity:v19];
    ringerLayer = self->_ringerLayer;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:20.0 - v20 * 20.0];
    [(CALayer *)ringerLayer setValue:v22 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    v23 = v12 / 110.0 * (v20 * 0.5 + 0.5);
    v24 = self->_ringerLayer;
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    [(CALayer *)v24 setValue:v25 forKeyPath:@"transform.scale.xy"];

    [(CALayer *)self->_ringerLayer bounds];
    [(CALayer *)self->_ringerLayer setPosition:v23 * v26 * 0.5 + (v12 - v23 * v26) * 0.5, v12 * 0.5];
  }

  [MEMORY[0x277CD9FF0] setDisableActions:disableActions];
}

- (void)_resetSprings
{
  [(ABFloatSpringProperty *)self->_islandY input];
  [(ABFloatSpringProperty *)self->_islandY setOutput:?];
  [(ABFloatSpringProperty *)self->_islandWidth input];
  [(ABFloatSpringProperty *)self->_islandWidth setOutput:?];
  [(ABFloatSpringProperty *)self->_islandHeight input];
  [(ABFloatSpringProperty *)self->_islandHeight setOutput:?];
  [(ABFloatSpringProperty *)self->_ringerVisible input];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setOutput:?];
}

- (void)_setSilentModeEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_isSilentModeEnabled = enabled;
  ringerLayer = self->_ringerLayer;
  if (enabled)
  {
    v7 = @"silent";
  }

  else
  {
    v7 = @"ringer";
  }

  v8 = [(CALayer *)ringerLayer stateWithName:v7];
  v9 = self->_ringerLayer;
  v10 = 0.0;
  if (animatedCopy)
  {
    *&v10 = 1.0;
  }

  v12 = v8;
  [CAStateController setState:"setState:ofLayer:transitionSpeed:" ofLayer:v10 transitionSpeed:?];
  if (self->_isSilentModeEnabled && animatedCopy)
  {
    [(ABDeviceDisplayView *)self _shake];
  }
}

- (void)_shake
{
  islandShake1 = self->_islandShake1;
  [(ABFloatSpringProperty *)islandShake1 input];
  [(ABFloatSpringProperty *)islandShake1 setInput:v4 + 20.0];
  v5 = dispatch_time(0, 275000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ABDeviceDisplayView__shake__block_invoke;
  block[3] = &unk_278BFFC38;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

uint64_t __29__ABDeviceDisplayView__shake__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 480);
  [v1 input];
  v3 = v2 + -20.0;

  return [v1 setInput:v3];
}

- (void)_transitionIslandToInert
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.0 duration:0.5];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:371.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.0 duration:0.5];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:110.0];
  [(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:0.55];
  IsD23 = ABDeviceIsD23();
  v4 = 90.0;
  if (IsD23)
  {
    v4 = 104.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:0.0];
}

- (void)_transitionIslandToCompact
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.0 duration:0.35];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:540.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.0 duration:0.35];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:110.0];
  [(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:0.55];
  IsD23 = ABDeviceIsD23();
  v4 = 90.0;
  if (IsD23)
  {
    v4 = 104.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:1.0];
}

- (void)_transitionIslandToGrowing
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.0 duration:2.5];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:624.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.0 duration:2.5];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:171.0];
  [(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:2.5];
  IsD23 = ABDeviceIsD23();
  v4 = 105.0;
  if (IsD23)
  {
    v4 = 119.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:1.0];
}

- (void)_transitionIslandToLarge
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.4 duration:0.5];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:624.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.4 duration:0.55];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:171.0];
  [(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:0.55];
  IsD23 = ABDeviceIsD23();
  v4 = 105.0;
  if (IsD23)
  {
    v4 = 119.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:1.0];
}

- (void)setIslandMode:(void *)result
{
  if (result)
  {
    v2 = result;
    if (result[63] != a2)
    {
      result[63] = a2;
      switch(a2)
      {
        case 0:

          result = [result _transitionIslandToInert];
          break;
        case 1:

          result = [result _transitionIslandToCompact];
          break;
        case 2:

          result = [result _transitionIslandToGrowing];
          break;
        case 3:
          [result _transitionIslandToLarge];

          result = [v2 _toggleSilentMode];
          break;
        default:
          return result;
      }
    }
  }

  return result;
}

@end