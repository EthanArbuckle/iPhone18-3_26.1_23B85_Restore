@interface ExtensionNavigationBar
- (ExtensionNavigationBar)initWithFrame:(CGRect)a3;
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
  v11 = [(ExtensionNavigationBar *)self hairlineView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(ExtensionNavigationBar *)self hairlineView];
  [(ExtensionNavigationBar *)self bringSubviewToFront:v12];
}

- (ExtensionNavigationBar)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = ExtensionNavigationBar;
  v3 = [(ExtensionNavigationBar *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MKViewWithHairline);
    [(ExtensionNavigationBar *)v3 setHairlineView:v4];

    v5 = [(ExtensionNavigationBar *)v3 hairlineView];
    [v5 setUserInteractionEnabled:0];

    v6 = [(ExtensionNavigationBar *)v3 theme];
    v7 = [v6 hairlineColor];
    v8 = [(ExtensionNavigationBar *)v3 hairlineView];
    [v8 setHairlineColor:v7];

    v9 = [(ExtensionNavigationBar *)v3 hairlineView];
    [(ExtensionNavigationBar *)v3 addSubview:v9];
  }

  return v3;
}

@end