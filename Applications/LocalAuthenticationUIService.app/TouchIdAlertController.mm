@interface TouchIdAlertController
- (TouchIdAlertController)init;
- (void)_setupHeaderContentViewController;
- (void)setActions:(id)actions;
- (void)shake;
@end

@implementation TouchIdAlertController

- (TouchIdAlertController)init
{
  v5.receiver = self;
  v5.super_class = TouchIdAlertController;
  v2 = [(TouchIdAlertController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TouchIdAlertController *)v2 setPreferredStyle:1];
    [(TouchIdAlertController *)v3 _setupHeaderContentViewController];
  }

  return v3;
}

- (void)_setupHeaderContentViewController
{
  v3 = __59__TouchIdAlertController__setupHeaderContentViewController__block_invoke();
  [(TouchIdAlertController *)self _setHeaderContentViewController:v3];
}

id __59__TouchIdAlertController__setupHeaderContentViewController__block_invoke()
{
  v0 = objc_opt_new();
  v1 = __59__TouchIdAlertController__setupHeaderContentViewController__block_invoke_2();
  [v0 setView:v1];

  return v0;
}

id __59__TouchIdAlertController__setupHeaderContentViewController__block_invoke_2()
{
  v0 = __59__TouchIdAlertController__setupHeaderContentViewController__block_invoke_3();
  v1 = objc_opt_new();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v0];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v0 topAnchor];
  v3 = [v1 topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3 constant:20.0];
  [v4 setActive:1];

  v5 = [v0 bottomAnchor];
  v6 = [v1 bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v7 setActive:1];

  v8 = [v0 leadingAnchor];
  v9 = [v1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v10 setActive:1];

  v11 = [v0 trailingAnchor];
  v12 = [v1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  return v1;
}

id __59__TouchIdAlertController__setupHeaderContentViewController__block_invoke_3()
{
  v0 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleLargeTitle scale:2];
  v1 = [UIImage _systemImageNamed:@"touchid" withConfiguration:v0];
  v2 = [[UIImageView alloc] initWithImage:v1];
  [v2 setContentMode:1];

  return v2;
}

- (void)shake
{
  _headerContentViewController = [(TouchIdAlertController *)self _headerContentViewController];

  if (_headerContentViewController)
  {
    _headerContentViewController2 = [(TouchIdAlertController *)self _headerContentViewController];
    view = [_headerContentViewController2 view];
    layer = [view layer];

    [layer removeAllAnimations];
    v6 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v6 setMass:1.20000005];
    [v6 setStiffness:1200.0];
    [v6 setDamping:12.0];
    LODWORD(v7) = 1028389654;
    LODWORD(v8) = 990057071;
    LODWORD(v9) = 1059712716;
    LODWORD(v10) = 1.0;
    v11 = [CAMediaTimingFunction functionWithControlPoints:v7];
    [v6 setTimingFunction:v11];

    [v6 setDuration:0.860000014];
    [v6 setVelocity:0.0];
    [v6 setFillMode:kCAFillModeBackwards];
    [layer position];
    v13 = v12 + 60.0;
    *&v13 = v13;
    v14 = [NSNumber numberWithFloat:v13];
    [v6 setFromValue:v14];

    [layer addAnimation:v6 forKey:@"position"];
    v15 = [CABasicAnimation animationWithKeyPath:@"position.x"];
    LODWORD(v16) = 1036831949;
    LODWORD(v17) = 0.25;
    LODWORD(v18) = 0.25;
    LODWORD(v19) = 1.0;
    v20 = [CAMediaTimingFunction functionWithControlPoints:v17];
    [v15 setTimingFunction:v20];

    [v15 setDuration:0.0700000003];
    [v15 setFillMode:kCAFillModeBackwards];
    [layer position];
    v22 = v21 + -60.0;
    *&v22 = v22;
    v23 = [NSNumber numberWithFloat:v22];
    [v15 setFromValue:v23];

    [layer addAnimation:v15 forKey:@"force"];
  }
}

- (void)setActions:(id)actions
{
  actionsCopy = actions;
  v14.receiver = self;
  v14.super_class = TouchIdAlertController;
  [(TouchIdAlertController *)&v14 _setActions:&__NSArray0__struct];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = actionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TouchIdAlertController *)self addCustomAction:*(*(&v10 + 1) + 8 * v9), v10];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

@end