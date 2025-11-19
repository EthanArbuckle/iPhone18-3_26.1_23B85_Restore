@interface NTKSecretariatBackgroundView
- (NTKSecretariatBackgroundView)initWithFrame:(CGRect)a3 device:(id)a4 inactive:(BOOL)a5;
- (id)_horseImageViewWithName:(id)a3;
- (id)_imageViewWithName:(id)a3;
- (void)_loadImages;
- (void)_updateLayout;
- (void)_updateOrigin:(CGPoint)a3 forImageView:(id)a4;
- (void)setPalette:(id)a3;
@end

@implementation NTKSecretariatBackgroundView

- (NTKSecretariatBackgroundView)initWithFrame:(CGRect)a3 device:(id)a4 inactive:(BOOL)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = NTKSecretariatBackgroundView;
  v13 = [(NTKSecretariatBackgroundView *)&v16 initWithFrame:x, y, width, height];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_device, a4);
    v14->_inactive = a5;
    [(NTKSecretariatBackgroundView *)v14 _loadImages];
    [(NTKSecretariatBackgroundView *)v14 setClipsToBounds:1];
  }

  return v14;
}

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);
  v5 = a3;
  v6 = [(NTKSecretariatColorPalette *)self->_palette apple];
  [(UIImageView *)self->_appleImageView setTintColor:v6];

  v7 = [(NTKSecretariatColorPalette *)self->_palette horseshoe];
  [(UIImageView *)self->_horseshoeImageView setTintColor:v7];

  v8 = [(NTKSecretariatColorPalette *)self->_palette horseshoeHoles];
  [(UIImageView *)self->_horseshoeHolesImageView setTintColor:v8];

  v9 = [(NTKSecretariatColorPalette *)self->_palette horse];
  [(UIImageView *)self->_horseImageView setTintColor:v9];

  v10 = [(NTKSecretariatColorPalette *)self->_palette horseEye];
  [(UIImageView *)self->_horseEyeImageView setTintColor:v10];

  v11 = [(NTKSecretariatColorPalette *)self->_palette horseHair];
  [(UIImageView *)self->_horseHairImageView setTintColor:v11];
}

- (void)_loadImages
{
  v3 = [(NTKSecretariatBackgroundView *)self _imageViewWithName:@"SecretariatApple"];
  appleImageView = self->_appleImageView;
  self->_appleImageView = v3;

  [(NTKSecretariatBackgroundView *)self addSubview:self->_appleImageView];
  v5 = [(NTKSecretariatBackgroundView *)self _imageViewWithName:@"SecretariatHorseshoe"];
  horseshoeImageView = self->_horseshoeImageView;
  self->_horseshoeImageView = v5;

  [(NTKSecretariatBackgroundView *)self addSubview:self->_horseshoeImageView];
  v7 = [(NTKSecretariatBackgroundView *)self _imageViewWithName:@"SecretariatHorseshoeHoles"];
  horseshoeHolesImageView = self->_horseshoeHolesImageView;
  self->_horseshoeHolesImageView = v7;

  [(UIImageView *)self->_horseshoeImageView addSubview:self->_horseshoeHolesImageView];
  v9 = [(NTKSecretariatBackgroundView *)self _horseImageViewWithName:@"SecretariatHorse"];
  horseImageView = self->_horseImageView;
  self->_horseImageView = v9;

  [(NTKSecretariatBackgroundView *)self addSubview:self->_horseImageView];
  if (self->_inactive)
  {
    v11 = [(NTKSecretariatBackgroundView *)self _horseImageViewWithName:@"SecretariatHorseEye"];
    horseEyeImageView = self->_horseEyeImageView;
    self->_horseEyeImageView = v11;

    [(UIImageView *)self->_horseImageView addSubview:self->_horseEyeImageView];
    v13 = &OBJC_IVAR___NTKSecretariatBackgroundView__horseHairImageView;
    v14 = @"SecretariatHorseHair";
  }

  else
  {
    v13 = &OBJC_IVAR___NTKSecretariatBackgroundView__horseFeaturesImageView;
    v14 = @"SecretariatHorseFeatures";
  }

  v15 = [(NTKSecretariatBackgroundView *)self _horseImageViewWithName:v14];
  v16 = *v13;
  v17 = *(&self->super.super.super.isa + v16);
  *(&self->super.super.super.isa + v16) = v15;

  [(UIImageView *)self->_horseImageView addSubview:*(&self->super.super.super.isa + v16)];

  [(NTKSecretariatBackgroundView *)self _updateLayout];
}

- (id)_imageViewWithName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_inactive)
  {
    v6 = [v4 stringByAppendingString:@"Inactive"];

    v5 = v6;
  }

  v7 = [NTKSecretariatFaceBundle imageWithName:v5];
  v8 = [[UIImageView alloc] initWithImage:v7];

  return v8;
}

- (id)_horseImageViewWithName:(id)a3
{
  v4 = [(NTKSecretariatBackgroundView *)self _imageViewWithName:a3];
  [(NTKSecretariatBackgroundView *)self bounds];
  [v4 setFrame:?];
  [v4 setContentMode:2];

  return v4;
}

- (void)_updateLayout
{
  v3 = sub_1FC5C(self, self->_device);
  v5 = v4;
  v7 = v6;
  [(NTKSecretariatBackgroundView *)self _updateOrigin:self->_appleImageView forImageView:v3];
  horseshoeImageView = self->_horseshoeImageView;

  [(NTKSecretariatBackgroundView *)self _updateOrigin:horseshoeImageView forImageView:v5, v7];
}

- (void)_updateOrigin:(CGPoint)a3 forImageView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v11 = a4;
  [(NTKSecretariatBackgroundView *)self bounds];
  CLKRectGetCenter();
  v8 = v7;
  v10 = v9;
  [v11 frame];
  [v11 setFrame:{(v8 - x) * 0.5, (v10 - y) * 0.5}];
}

@end