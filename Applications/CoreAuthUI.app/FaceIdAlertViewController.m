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
    v7[2] = sub_100003D74;
    v7[3] = &unk_100096228;
    v7[4] = self;
    v6 = sub_100003D74(v7);
    [(FaceIdAlertViewController *)self _setHeaderContentViewController:v6];
  }

  else
  {
    [(FaceIdAlertViewController *)self _setHeaderContentViewController:0];
  }
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
  v23[2] = sub_100004364;
  v23[3] = &unk_100096250;
  v23[4] = self;
  v2 = sub_100004364(v23);
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

- (void)dismissWithDelay:(double)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000045B0;
  v8[3] = &unk_100096148;
  v8[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004618;
  v6[3] = &unk_100096278;
  v6[4] = self;
  v7 = a4;
  v5 = v7;
  [UIView animateWithDuration:2 delay:v8 options:v6 animations:0.2 completion:a3];
}

@end