@interface ABDeviceButtonHighlightView
- (ABDeviceButtonHighlightView)initWithFrame:(CGRect)a3;
- (uint64_t)setColor:(uint64_t)a1;
- (void)setHighlightRingVisible:(uint64_t)a1;
@end

@implementation ABDeviceButtonHighlightView

- (ABDeviceButtonHighlightView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = ABDeviceButtonHighlightView;
  v3 = [(ABDeviceButtonHighlightView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"button highlight" withExtension:@"ca"];

    v6 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v5 type:*MEMORY[0x277CDA7F8] options:0 error:0];
    package = v3->_package;
    v3->_package = v6;

    CATransform3DMakeScale(&v17, 1.0, -1.0, 1.0);
    v8 = [(CAPackage *)v3->_package rootLayer];
    v16 = v17;
    [v8 setTransform:&v16];

    v9 = objc_alloc(MEMORY[0x277CD9FB8]);
    v10 = [(CAPackage *)v3->_package rootLayer];
    v11 = [v9 initWithLayer:v10];
    stateController = v3->_stateController;
    v3->_stateController = v11;

    v13 = [(ABDeviceButtonHighlightView *)v3 layer];
    v14 = [(CAPackage *)v3->_package rootLayer];
    [v13 addSublayer:v14];
  }

  return v3;
}

- (uint64_t)setColor:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v3 = [MEMORY[0x277D75348] clearColor];
      v4 = v3;
    }

    if (*(a1 + 432) != v4)
    {
      v11 = v4;
      objc_storeStrong((a1 + 432), v4);
      v5 = [*(a1 + 408) publishedObjectWithName:@"base color"];
      v6 = [*(a1 + 408) publishedObjectWithName:@"glow"];
      v7 = [*(a1 + 408) publishedObjectWithName:@"ring-confirmation"];
      v8 = v11;
      v9 = [v11 CGColor];
      [v7 setBorderColor:v9];
      [v6 setContentsMultiplyColor:v9];
      [v5 setBackgroundColor:v9];

      v4 = v11;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)setHighlightRingVisible:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    if (*(a1 + 424) != a2)
    {
      *(a1 + 424) = a2;
      v4 = [*(a1 + 408) rootLayer];
      v5 = *(a1 + 416);
      v8 = v4;
      if (v2)
      {
        v6 = [v4 stateWithName:@"long-press-confirmation"];
        LODWORD(v7) = 1.0;
        [v5 setState:v6 ofLayer:v8 transitionSpeed:v7];
      }

      else
      {
        [v5 setState:0 ofLayer:v4 transitionSpeed:0.0];
      }
    }
  }
}

@end