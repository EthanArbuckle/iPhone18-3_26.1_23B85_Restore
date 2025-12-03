@interface ABShadowView
- (ABShadowView)initWithFrame:(CGRect)frame;
- (CGImage)_renderBottomVariableBlurMaskWithSize:(CGSize)size;
- (void)_setupGradient;
- (void)layoutSubviews;
- (void)setTopShadowRatio:(double)ratio;
@end

@implementation ABShadowView

- (ABShadowView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ABShadowView;
  v3 = [(ABShadowView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_topShadowRatio = 0.5;
    [(ABShadowView *)v3 _setupGradient];
  }

  return v4;
}

- (void)_setupGradient
{
  v38[16] = *MEMORY[0x277D85DE8];
  layer = [MEMORY[0x277CD9EB0] layer];
  topGradientLayer = self->_topGradientLayer;
  self->_topGradientLayer = layer;

  v34 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.00392156863];
  v38[0] = [v34 CGColor];
  v33 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0143711881];
  v38[1] = [v33 CGColor];
  v32 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0442915775];
  v38[2] = [v32 CGColor];
  v31 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0728674787];
  v38[3] = [v31 CGColor];
  v30 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.114800887];
  v38[4] = [v30 CGColor];
  v29 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.173203094];
  v38[5] = [v29 CGColor];
  v28 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.250244738];
  v38[6] = [v28 CGColor];
  v27 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.346236755];
  v38[7] = [v27 CGColor];
  v26 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.458754447];
  v38[8] = [v26 CGColor];
  v5 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.707279774];
  v38[9] = [v5 CGColor];
  v6 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.822990973];
  v38[10] = [v6 CGColor];
  v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.917060124];
  v38[11] = [v7 CGColor];
  v8 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.952464435];
  v38[12] = [v8 CGColor];
  v9 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.978587023];
  v38[13] = [v9 CGColor];
  v10 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.994603225];
  v38[14] = [v10 CGColor];
  v11 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v38[15] = [v11 CGColor];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:16];
  [(CAGradientLayer *)self->_topGradientLayer setColors:v12];

  [(CAGradientLayer *)self->_topGradientLayer setLocations:&unk_28501F288];
  CATransform3DMakeScale(&v36, 1.0, -1.0, 1.0);
  v13 = self->_topGradientLayer;
  v35 = v36;
  [(CAGradientLayer *)v13 setTransform:&v35];
  layer2 = [(ABShadowView *)self layer];
  [layer2 addSublayer:self->_topGradientLayer];

  layer3 = [MEMORY[0x277CD9E08] layer];
  bottomVariableBlurLayer = self->_bottomVariableBlurLayer;
  self->_bottomVariableBlurLayer = layer3;

  v17 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA638]];
  v37 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [(CABackdropLayer *)self->_bottomVariableBlurLayer setFilters:v18];

  [(CABackdropLayer *)self->_bottomVariableBlurLayer setValue:&unk_28501EF60 forKeyPath:@"filters.variableBlur.inputRadius"];
  [(CABackdropLayer *)self->_bottomVariableBlurLayer setValue:MEMORY[0x277CBEC38] forKeyPath:@"filters.variableBlur.inputNormalizeEdges"];
  layer4 = [(ABShadowView *)self layer];
  [layer4 addSublayer:self->_bottomVariableBlurLayer];

  layer5 = [MEMORY[0x277CD9EB0] layer];
  bottomGradientLayer = self->_bottomGradientLayer;
  self->_bottomGradientLayer = layer5;

  colors = [(CAGradientLayer *)self->_topGradientLayer colors];
  [(CAGradientLayer *)self->_bottomGradientLayer setColors:colors];

  locations = [(CAGradientLayer *)self->_topGradientLayer locations];
  [(CAGradientLayer *)self->_bottomGradientLayer setLocations:locations];

  layer6 = [(ABShadowView *)self layer];
  [layer6 addSublayer:self->_bottomGradientLayer];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  [(ABShadowView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = v5 * self->_topShadowRatio;
  [(CAGradientLayer *)self->_topGradientLayer setFrame:0.0, 0.0];
  [(ABShadowView *)self bounds];
  [(CAGradientLayer *)self->_bottomGradientLayer setFrame:0.0, v6 - v6 * 0.75];
  [(CABackdropLayer *)self->_bottomVariableBlurLayer frame];
  v8 = v6 * 0.45;
  v9 = v6 - v6 * 0.45;
  v14.origin.x = 0.0;
  v14.origin.y = v9;
  v14.size.width = v4;
  v14.size.height = v8;
  if (!CGRectEqualToRect(v13, v14))
  {
    [(CABackdropLayer *)self->_bottomVariableBlurLayer setFrame:0.0, v9, v4, v8];
    v10 = [(ABShadowView *)self _renderBottomVariableBlurMaskWithSize:v4, v8];
    bottomVariableBlurLayer = self->_bottomVariableBlurLayer;

    [(CABackdropLayer *)bottomVariableBlurLayer setValue:v10 forKeyPath:@"filters.variableBlur.inputMaskImage"];
  }
}

- (CGImage)_renderBottomVariableBlurMaskWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v7 = CGBitmapContextCreate(0, width, height, 8uLL, AlignedBytesPerRow, DeviceRGB, 0x2002u);
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:32];
  LODWORD(v9) = 1053609165;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1.0;
  v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v9 :0.0 :v10 :v11];
  v13 = malloc_type_malloc(0x100uLL, 0x100004000313F17uLL);
  for (i = 0; i != 32; ++i)
  {
    v15 = i;
    v16 = i / 31.0;
    *&v15 = v16;
    [v12 _solveForInput:v15];
    v13[i] = v17;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0 - v16];
    [v8 addObject:{objc_msgSend(v18, "CGColor")}];
  }

  v19 = CGGradientCreateWithColors(DeviceRGB, v8, v13);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = width;
  v24.size.height = height;
  CGContextClearRect(v7, v24);
  v22.x = 0.0;
  v22.y = 0.0;
  v23.x = 0.0;
  v23.y = height;
  CGContextDrawLinearGradient(v7, v19, v22, v23, 3u);
  Image = CGBitmapContextCreateImage(v7);
  CFAutorelease(Image);
  if (DeviceRGB)
  {
    CFRelease(DeviceRGB);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  free(v13);
  if (v7)
  {
    CFRelease(v7);
  }

  return Image;
}

- (void)setTopShadowRatio:(double)ratio
{
  if (self)
  {
    if (*(self + 54) != ratio)
    {
      *(self + 54) = ratio;
      return [self setNeedsLayout];
    }
  }

  return self;
}

@end