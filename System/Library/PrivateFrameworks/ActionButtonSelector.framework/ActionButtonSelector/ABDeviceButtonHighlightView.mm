@interface ABDeviceButtonHighlightView
- (ABDeviceButtonHighlightView)initWithFrame:(CGRect)frame;
- (uint64_t)setColor:(uint64_t)color;
- (void)setHighlightRingVisible:(uint64_t)visible;
@end

@implementation ABDeviceButtonHighlightView

- (ABDeviceButtonHighlightView)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = ABDeviceButtonHighlightView;
  v3 = [(ABDeviceButtonHighlightView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"button highlight" withExtension:@"ca"];

    v6 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v5 type:*MEMORY[0x277CDA7F8] options:0 error:0];
    package = v3->_package;
    v3->_package = v6;

    CATransform3DMakeScale(&v17, 1.0, -1.0, 1.0);
    rootLayer = [(CAPackage *)v3->_package rootLayer];
    v16 = v17;
    [rootLayer setTransform:&v16];

    v9 = objc_alloc(MEMORY[0x277CD9FB8]);
    rootLayer2 = [(CAPackage *)v3->_package rootLayer];
    v11 = [v9 initWithLayer:rootLayer2];
    stateController = v3->_stateController;
    v3->_stateController = v11;

    layer = [(ABDeviceButtonHighlightView *)v3 layer];
    rootLayer3 = [(CAPackage *)v3->_package rootLayer];
    [layer addSublayer:rootLayer3];
  }

  return v3;
}

- (uint64_t)setColor:(uint64_t)color
{
  clearColor = a2;
  v4 = clearColor;
  if (color)
  {
    if (!clearColor)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      v4 = clearColor;
    }

    if (*(color + 432) != v4)
    {
      v11 = v4;
      objc_storeStrong((color + 432), v4);
      v5 = [*(color + 408) publishedObjectWithName:@"base color"];
      v6 = [*(color + 408) publishedObjectWithName:@"glow"];
      v7 = [*(color + 408) publishedObjectWithName:@"ring-confirmation"];
      v8 = v11;
      cGColor = [v11 CGColor];
      [v7 setBorderColor:cGColor];
      [v6 setContentsMultiplyColor:cGColor];
      [v5 setBackgroundColor:cGColor];

      v4 = v11;
    }
  }

  return MEMORY[0x2821F96F8](clearColor, v4);
}

- (void)setHighlightRingVisible:(uint64_t)visible
{
  if (visible)
  {
    v2 = a2;
    if (*(visible + 424) != a2)
    {
      *(visible + 424) = a2;
      rootLayer = [*(visible + 408) rootLayer];
      v5 = *(visible + 416);
      v8 = rootLayer;
      if (v2)
      {
        v6 = [rootLayer stateWithName:@"long-press-confirmation"];
        LODWORD(v7) = 1.0;
        [v5 setState:v6 ofLayer:v8 transitionSpeed:v7];
      }

      else
      {
        [v5 setState:0 ofLayer:rootLayer transitionSpeed:0.0];
      }
    }
  }
}

@end