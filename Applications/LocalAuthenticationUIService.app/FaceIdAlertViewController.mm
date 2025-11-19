@interface FaceIdAlertViewController
- (LAUIPearlGlyphView)glyph;
- (void)_shakeTitleLabel;
- (void)dismissWithDelay:(double)a3 completion:(id)a4;
- (void)setGlyph:(id)a3;
- (void)shake;
@end

@implementation FaceIdAlertViewController

- (LAUIPearlGlyphView)glyph
{
  WeakRetained = objc_loadWeakRetained(&self->_glyph);

  return WeakRetained;
}

- (void)setGlyph:(id)a3
{
  v5 = objc_storeWeak(&self->_glyph, a3);
  if (a3)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __38__FaceIdAlertViewController_setGlyph___block_invoke;
    v7[3] = &unk_1000AAC08;
    v7[4] = self;
    v6 = __38__FaceIdAlertViewController_setGlyph___block_invoke(v7);
    [(FaceIdAlertViewController *)self _setHeaderContentViewController:v6];
  }

  else
  {
    [(FaceIdAlertViewController *)self _setHeaderContentViewController:0];
  }
}

id __38__FaceIdAlertViewController_setGlyph___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = [v3 widthAnchor];
  v5 = [v4 constraintEqualToConstant:272.0];
  [v5 setActive:1];

  v6 = [v3 heightAnchor];
  v7 = [v6 constraintEqualToConstant:88.0];
  [v7 setActive:1];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v3 addSubview:WeakRetained];

  v9 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v11 = [v10 topAnchor];
  v12 = [v3 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:18.0];
  [v13 setActive:1];

  v14 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v15 = [v14 bottomAnchor];
  v16 = [v3 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v17 setActive:1];

  v18 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v19 = [v18 centerXAnchor];
  v20 = [v3 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v23 = [v22 widthAnchor];
  v24 = [v23 constraintEqualToConstant:65.0];
  [v24 setActive:1];

  v25 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v26 = [v25 heightAnchor];
  v27 = [v26 constraintEqualToConstant:65.0];
  [v27 setActive:1];

  [v2 setView:v3];

  return v2;
}

- (void)shake
{
  WeakRetained = objc_loadWeakRetained(&self->_glyph);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_glyph);
    [v4 setState:4 animated:1];
  }

  else
  {

    [(FaceIdAlertViewController *)self _shakeTitleLabel];
  }
}

- (void)_shakeTitleLabel
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __45__FaceIdAlertViewController__shakeTitleLabel__block_invoke;
  v23[3] = &unk_1000AAC30;
  v23[4] = self;
  v2 = __45__FaceIdAlertViewController__shakeTitleLabel__block_invoke(v23);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 layer];
    [v4 removeAllAnimations];
    v5 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v5 setMass:1.20000005];
    [v5 setStiffness:1200.0];
    [v5 setDamping:12.0];
    LODWORD(v6) = 1028389654;
    LODWORD(v7) = 990057071;
    LODWORD(v8) = 1059712716;
    LODWORD(v9) = 1.0;
    v10 = [CAMediaTimingFunction functionWithControlPoints:v6];
    [v5 setTimingFunction:v10];

    [v5 setDuration:0.860000014];
    [v5 setVelocity:0.0];
    [v5 setFillMode:kCAFillModeBackwards];
    [v4 position];
    v12 = v11 + 60.0;
    *&v12 = v12;
    v13 = [NSNumber numberWithFloat:v12];
    [v5 setFromValue:v13];

    [v4 addAnimation:v5 forKey:@"position"];
    v14 = [CABasicAnimation animationWithKeyPath:@"position.x"];
    LODWORD(v15) = 1036831949;
    LODWORD(v16) = 0.25;
    LODWORD(v17) = 0.25;
    LODWORD(v18) = 1.0;
    v19 = [CAMediaTimingFunction functionWithControlPoints:v16];
    [v14 setTimingFunction:v19];

    [v14 setDuration:0.0700000003];
    [v14 setFillMode:kCAFillModeBackwards];
    [v4 position];
    v21 = v20 + -60.0;
    *&v21 = v21;
    v22 = [NSNumber numberWithFloat:v21];
    [v14 setFromValue:v22];

    [v4 addAnimation:v14 forKey:@"force"];
  }
}

id __45__FaceIdAlertViewController__shakeTitleLabel__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) view];
  [v2 addObject:v3];

  if ([v2 count])
  {
    v4 = 50;
    do
    {
      v5 = [v2 firstObject];
      [v2 removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 text];
        v7 = [*(a1 + 32) title];
        v8 = [v6 isEqualToString:v7];

        if (v8)
        {
          break;
        }
      }

      v9 = [v5 subviews];
      [v2 addObjectsFromArray:v9];

      v5 = 0;
      if (![v2 count])
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dismissWithDelay:(double)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __57__FaceIdAlertViewController_dismissWithDelay_completion___block_invoke;
  v8[3] = &unk_1000AA3C0;
  v8[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __57__FaceIdAlertViewController_dismissWithDelay_completion___block_invoke_2;
  v6[3] = &unk_1000AAC58;
  v6[4] = self;
  v7 = a4;
  v5 = v7;
  [UIView animateWithDuration:2 delay:v8 options:v6 animations:0.2 completion:a3];
}

void __57__FaceIdAlertViewController_dismissWithDelay_completion___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v4, 0.88, 0.88);
  v2 = [*(a1 + 32) view];
  v3 = v4;
  [v2 setTransform:&v3];
}

@end