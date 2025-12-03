@interface ExtensionNavigationBar
- (ExtensionNavigationBar)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ExtensionNavigationBar

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = ExtensionNavigationBar;
  [(ExtensionNavigationBar *)&v13 layoutSubviews];
  [(ExtensionNavigationBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  hairlineView = [(ExtensionNavigationBar *)self hairlineView];
  [hairlineView setFrame:{v4, v6, v8, v10}];

  hairlineView2 = [(ExtensionNavigationBar *)self hairlineView];
  [(ExtensionNavigationBar *)self bringSubviewToFront:hairlineView2];
}

- (ExtensionNavigationBar)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = ExtensionNavigationBar;
  v3 = [(ExtensionNavigationBar *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MKViewWithHairline);
    [(ExtensionNavigationBar *)v3 setHairlineView:v4];

    hairlineView = [(ExtensionNavigationBar *)v3 hairlineView];
    [hairlineView setUserInteractionEnabled:0];

    theme = [(ExtensionNavigationBar *)v3 theme];
    hairlineColor = [theme hairlineColor];
    hairlineView2 = [(ExtensionNavigationBar *)v3 hairlineView];
    [hairlineView2 setHairlineColor:hairlineColor];

    hairlineView3 = [(ExtensionNavigationBar *)v3 hairlineView];
    [(ExtensionNavigationBar *)v3 addSubview:hairlineView3];
  }

  return v3;
}

@end