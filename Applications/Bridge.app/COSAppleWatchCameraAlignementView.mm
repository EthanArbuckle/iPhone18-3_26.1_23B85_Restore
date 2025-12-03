@interface COSAppleWatchCameraAlignementView
- (CGRect)frameForPhoneBackgroundViewForRestingPosition:(BOOL)position;
- (CGRect)frameForPhoneViewForRestingPosition:(BOOL)position;
- (CGRect)frameForWatchViewForRestingPosition:(BOOL)position;
- (CGSize)intrinsicContentSize;
- (CGSize)phoneAssetSize;
- (CGSize)watchAssetSize;
- (COSAppleWatchCameraAlignementView)initWithFrame:(CGRect)frame;
- (void)layoutForLiftedPhone;
- (void)layoutForOpticalPairing;
- (void)layoutInRestingPosition;
- (void)pickUpDevicesAnimation;
- (void)restDevicesAnimation;
- (void)setAnimationsEnabled:(BOOL)enabled;
@end

@implementation COSAppleWatchCameraAlignementView

- (COSAppleWatchCameraAlignementView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = COSAppleWatchCameraAlignementView;
  v3 = [(COSAppleWatchCameraAlignementView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIImageSymbolConfiguration configurationWithWeight:2];
    v5 = [UIImage systemImageNamed:@"applewatch" withConfiguration:v4];
    [v5 size];
    v3->_watchAssetSize.width = v6;
    v3->_watchAssetSize.height = v7;
    v8 = [[UIImageView alloc] initWithImage:v5];
    watch = v3->_watch;
    v3->_watch = v8;

    v10 = v3->_watch;
    v11 = +[UIColor whiteColor];
    [(UIImageView *)v10 setTintColor:v11];

    [(COSAppleWatchCameraAlignementView *)v3 addSubview:v3->_watch];
    v12 = objc_alloc_init(UIView);
    phoneCompositeView = v3->_phoneCompositeView;
    v3->_phoneCompositeView = v12;

    v14 = objc_alloc_init(UIView);
    phoneBG = v3->_phoneBG;
    v3->_phoneBG = v14;

    layer = [(UIView *)v3->_phoneBG layer];
    [layer setCornerRadius:20.0];

    v17 = v3->_phoneBG;
    v18 = [UIColor colorWithWhite:0.0 alpha:0.45];
    [(UIView *)v17 setBackgroundColor:v18];

    [(UIView *)v3->_phoneCompositeView addSubview:v3->_phoneBG];
    v19 = [UIImage systemImageNamed:@"iphone" withConfiguration:v4];
    [v19 size];
    v3->_phoneAssetSize.width = v20;
    v3->_phoneAssetSize.height = v21;
    v22 = [[UIImageView alloc] initWithImage:v19];
    phone = v3->_phone;
    v3->_phone = v22;

    v24 = v3->_phone;
    v25 = +[UIColor whiteColor];
    [(UIImageView *)v24 setTintColor:v25];

    [(UIImageView *)v3->_phone setAutoresizingMask:18];
    [(UIView *)v3->_phoneCompositeView addSubview:v3->_phone];
    [(COSAppleWatchCameraAlignementView *)v3 addSubview:v3->_phoneCompositeView];
    [(COSAppleWatchCameraAlignementView *)v3 layoutInRestingPosition];
  }

  return v3;
}

- (CGRect)frameForPhoneBackgroundViewForRestingPosition:(BOOL)position
{
  if (position)
  {
    v3 = 220.0;
  }

  else
  {
    v3 = 260.0;
  }

  if (position)
  {
    v4 = 123.0;
  }

  else
  {
    v4 = 150.0;
  }

  v5 = 27.0;
  if (!position)
  {
    v5 = 30.0;
  }

  v6 = 60.0;
  if (position)
  {
    v6 = 57.0;
  }

  result.size.height = v3;
  result.size.width = v4;
  result.origin.y = v5;
  result.origin.x = v6;
  return result;
}

- (CGRect)frameForPhoneViewForRestingPosition:(BOOL)position
{
  v3 = 212.5;
  if (position)
  {
    v4 = self->_phoneAssetSize.height * 212.5 / self->_phoneAssetSize.width;
  }

  else
  {
    v4 = self->_phoneAssetSize.height * 212.5 / self->_phoneAssetSize.width * 1.2;
  }

  v5 = 63.0;
  if (position)
  {
    v5 = 77.0;
  }

  v6 = 0.0;
  if (position)
  {
    v6 = 15.0;
  }

  else
  {
    v3 = 255.0;
  }

  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForWatchViewForRestingPosition:(BOOL)position
{
  v3 = 95.0;
  width = self->_watchAssetSize.width;
  height = self->_watchAssetSize.height;
  v6 = height * 95.0 / width;
  v7 = height * 74.0 / width;
  if (!position)
  {
    v6 = v7;
  }

  v8 = 74.5;
  if (position)
  {
    v8 = 10.0;
  }

  v9 = 90.0;
  if (position)
  {
    v9 = 87.0;
  }

  else
  {
    v3 = 74.0;
  }

  result.size.height = v6;
  result.size.width = v3;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)layoutForLiftedPhone
{
  phoneBG = self->_phoneBG;
  [(COSAppleWatchCameraAlignementView *)self frameForPhoneBackgroundViewForRestingPosition:0];
  [(UIView *)phoneBG setFrame:?];
  layer = [(UIView *)self->_phoneBG layer];
  [layer setCornerRadius:30.0];

  phoneCompositeView = self->_phoneCompositeView;
  [(COSAppleWatchCameraAlignementView *)self frameForPhoneViewForRestingPosition:0];

  [(UIView *)phoneCompositeView setFrame:?];
}

- (void)layoutInRestingPosition
{
  phoneBG = self->_phoneBG;
  [(COSAppleWatchCameraAlignementView *)self frameForPhoneBackgroundViewForRestingPosition:1];
  [(UIView *)phoneBG setFrame:?];
  layer = [(UIView *)self->_phoneBG layer];
  [layer setCornerRadius:20.0];

  phoneCompositeView = self->_phoneCompositeView;
  [(COSAppleWatchCameraAlignementView *)self frameForPhoneViewForRestingPosition:1];
  [(UIView *)phoneCompositeView setFrame:?];
  watch = self->_watch;
  [(COSAppleWatchCameraAlignementView *)self frameForWatchViewForRestingPosition:1];

  [(UIImageView *)watch setFrame:?];
}

- (CGSize)intrinsicContentSize
{
  [(COSAppleWatchCameraAlignementView *)self frameForPhoneViewForRestingPosition:0];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(COSAppleWatchCameraAlignementView *)self frameForPhoneViewForRestingPosition:1];
  MaxX = CGRectGetMaxX(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MaxY = CGRectGetMaxY(v16);
  v13 = MaxX;
  result.height = MaxY;
  result.width = v13;
  return result;
}

- (void)setAnimationsEnabled:(BOOL)enabled
{
  if (enabled && !self->_animationsEnabled)
  {
    [(COSAppleWatchCameraAlignementView *)self pickUpDevicesAnimation];
  }

  self->_animationsEnabled = enabled;
}

- (void)pickUpDevicesAnimation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E4504;
  v3[3] = &unk_1002682F0;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000E450C;
  v2[3] = &unk_100269800;
  v2[4] = self;
  [UIView animateWithDuration:2 delay:v3 options:v2 animations:0.5 completion:1.5];
}

- (void)layoutForOpticalPairing
{
  [(COSAppleWatchCameraAlignementView *)self frame];
  v4 = v3;
  [(UIView *)self->_phoneCompositeView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIImageView *)self->_watch frame];
  v11 = (v4 - v8) * 0.5;
  v13 = (v4 - v12) * 0.5;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E4684;
  v17[3] = &unk_10026B8D0;
  v17[4] = self;
  *&v17[5] = floorf(v11) + -8.0;
  v17[6] = v6;
  *&v17[7] = v8;
  v17[8] = v10;
  *&v17[9] = floorf(v13);
  v17[10] = v14;
  *&v17[11] = v12;
  v17[12] = v15;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000E46E8;
  v16[3] = &unk_100269800;
  v16[4] = self;
  [UIView animateWithDuration:2 delay:v17 options:v16 animations:0.5 completion:0.75];
}

- (void)restDevicesAnimation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E47D0;
  v3[3] = &unk_1002682F0;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000E47D8;
  v2[3] = &unk_100269800;
  v2[4] = self;
  [UIView animateWithDuration:2 delay:v3 options:v2 animations:0.5 completion:2.0];
}

- (CGSize)phoneAssetSize
{
  width = self->_phoneAssetSize.width;
  height = self->_phoneAssetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)watchAssetSize
{
  width = self->_watchAssetSize.width;
  height = self->_watchAssetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end