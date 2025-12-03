@interface MKZoomSegmentedControl
- (MKZoomSegmentedControl)initWithFrame:(CGRect)frame;
- (void)_unloadResources;
- (void)dealloc;
- (void)updateAppearance;
@end

@implementation MKZoomSegmentedControl

- (void)updateAppearance
{
  traitCollection = [(MKZoomSegmentedControl *)self traitCollection];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  [(MKZoomSegmentedControl *)self _unloadResources];
  v4 = [MEMORY[0x1E69DCAB8] imageNamed:@"zoomControl" inBundle:v3 compatibleWithTraitCollection:traitCollection];
  self->_backgroundUnselectedImage = CGImageRetain([v4 CGImage]);

  v5 = [MEMORY[0x1E69DCAB8] imageNamed:@"zoomControlMinus" inBundle:v3 compatibleWithTraitCollection:traitCollection];
  self->_backgroundMinusSelectedImage = CGImageRetain([v5 CGImage]);

  v6 = [MEMORY[0x1E69DCAB8] imageNamed:@"zoomControlPlus" inBundle:v3 compatibleWithTraitCollection:traitCollection];
  self->_backgroundPlusSelectedImage = CGImageRetain([v6 CGImage]);

  v7 = [MEMORY[0x1E69DCAB8] imageNamed:@"zoomControlDarkMask" inBundle:v3 compatibleWithTraitCollection:traitCollection];
  self->_maskImage = CGImageRetain([v7 CGImage]);

  -[CABackdropLayer setHidden:](self->_blurLayer, "setHidden:", [traitCollection userInterfaceStyle] != 2);
  [(CALayer *)self->_maskLayer setContents:self->_maskImage];
  [(CALayer *)self->_displayLayer setContents:self->_backgroundUnselectedImage];
}

- (void)_unloadResources
{
  [(CALayer *)self->_displayLayer setContents:0];
  [(CALayer *)self->_maskLayer setContents:0];
  CGImageRelease(self->_backgroundUnselectedImage);
  CGImageRelease(self->_backgroundMinusSelectedImage);
  CGImageRelease(self->_backgroundPlusSelectedImage);
  maskImage = self->_maskImage;

  CGImageRelease(maskImage);
}

- (void)dealloc
{
  [(MKZoomSegmentedControl *)self _unloadResources];
  v3.receiver = self;
  v3.super_class = MKZoomSegmentedControl;
  [(MKZoomSegmentedControl *)&v3 dealloc];
}

- (MKZoomSegmentedControl)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MKZoomSegmentedControl;
  v5 = [(MKZoomSegmentedControl *)&v21 initWithFrame:frame.origin.x, frame.origin.y];
  v6 = v5;
  if (v5)
  {
    [(MKZoomSegmentedControl *)v5 setUserInteractionEnabled:1];
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    layer = [(MKZoomSegmentedControl *)v6 layer];
    v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v10 setValue:&unk_1F1610D80 forKey:@"inputRadius"];
    [v10 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
    layer2 = [MEMORY[0x1E6979310] layer];
    blurLayer = v6->_blurLayer;
    v6->_blurLayer = layer2;

    v22[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(CABackdropLayer *)v6->_blurLayer setFilters:v13];

    [(CABackdropLayer *)v6->_blurLayer setFrame:v7, v8, width, height];
    [layer addSublayer:v6->_blurLayer];
    layer3 = [MEMORY[0x1E6979398] layer];
    maskLayer = v6->_maskLayer;
    v6->_maskLayer = layer3;

    [(CALayer *)v6->_maskLayer setFrame:v7, v8, width, height];
    [(CABackdropLayer *)v6->_blurLayer setMask:v6->_maskLayer];
    layer4 = [MEMORY[0x1E6979398] layer];
    displayLayer = v6->_displayLayer;
    v6->_displayLayer = layer4;

    [(CALayer *)v6->_displayLayer setFrame:v7, v8, width, height];
    [layer addSublayer:v6->_displayLayer];
    systemTraitsAffectingImageLookup = [MEMORY[0x1E69DD1B8] systemTraitsAffectingImageLookup];
    v19 = [(MKZoomSegmentedControl *)v6 registerForTraitChanges:systemTraitsAffectingImageLookup withAction:sel_traitEnvironment_didChangeTraitCollection_];

    [(MKZoomSegmentedControl *)v6 updateAppearance];
  }

  return v6;
}

@end