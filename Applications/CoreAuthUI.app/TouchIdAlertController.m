@interface TouchIdAlertController
- (TouchIdAlertController)init;
- (void)_setupHeaderContentViewController;
- (void)setActions:(id)a3;
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
  v3 = sub_1000264C0();
  [(TouchIdAlertController *)self _setHeaderContentViewController:v3];
}

- (void)shake
{
  v3 = [(TouchIdAlertController *)self _headerContentViewController];

  if (v3)
  {
    v4 = [(TouchIdAlertController *)self _headerContentViewController];
    v5 = [v4 view];
    v24 = [v5 layer];

    [v24 removeAllAnimations];
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
    [v24 position];
    v13 = v12 + 60.0;
    *&v13 = v13;
    v14 = [NSNumber numberWithFloat:v13];
    [v6 setFromValue:v14];

    [v24 addAnimation:v6 forKey:@"position"];
    v15 = [CABasicAnimation animationWithKeyPath:@"position.x"];
    LODWORD(v16) = 1036831949;
    LODWORD(v17) = 0.25;
    LODWORD(v18) = 0.25;
    LODWORD(v19) = 1.0;
    v20 = [CAMediaTimingFunction functionWithControlPoints:v17];
    [v15 setTimingFunction:v20];

    [v15 setDuration:0.0700000003];
    [v15 setFillMode:kCAFillModeBackwards];
    [v24 position];
    v22 = v21 + -60.0;
    *&v22 = v22;
    v23 = [NSNumber numberWithFloat:v22];
    [v15 setFromValue:v23];

    [v24 addAnimation:v15 forKey:@"force"];
  }
}

- (void)setActions:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TouchIdAlertController;
  [(TouchIdAlertController *)&v14 _setActions:&__NSArray0__struct];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
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