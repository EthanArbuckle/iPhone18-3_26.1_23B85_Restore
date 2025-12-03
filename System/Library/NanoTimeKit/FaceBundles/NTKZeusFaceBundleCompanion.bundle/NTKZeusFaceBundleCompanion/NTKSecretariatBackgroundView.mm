@interface NTKSecretariatBackgroundView
- (NTKSecretariatBackgroundView)initWithFrame:(CGRect)frame device:(id)device inactive:(BOOL)inactive;
- (id)_horseImageViewWithName:(id)name;
- (id)_imageViewWithName:(id)name;
- (void)_loadImages;
- (void)_updateLayout;
- (void)_updateOrigin:(CGPoint)origin forImageView:(id)view;
- (void)setPalette:(id)palette;
@end

@implementation NTKSecretariatBackgroundView

- (NTKSecretariatBackgroundView)initWithFrame:(CGRect)frame device:(id)device inactive:(BOOL)inactive
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKSecretariatBackgroundView;
  height = [(NTKSecretariatBackgroundView *)&v16 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v14->_inactive = inactive;
    [(NTKSecretariatBackgroundView *)v14 _loadImages];
    [(NTKSecretariatBackgroundView *)v14 setClipsToBounds:1];
  }

  return v14;
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  apple = [(NTKSecretariatColorPalette *)self->_palette apple];
  [(UIImageView *)self->_appleImageView setTintColor:apple];

  horseshoe = [(NTKSecretariatColorPalette *)self->_palette horseshoe];
  [(UIImageView *)self->_horseshoeImageView setTintColor:horseshoe];

  horseshoeHoles = [(NTKSecretariatColorPalette *)self->_palette horseshoeHoles];
  [(UIImageView *)self->_horseshoeHolesImageView setTintColor:horseshoeHoles];

  horse = [(NTKSecretariatColorPalette *)self->_palette horse];
  [(UIImageView *)self->_horseImageView setTintColor:horse];

  horseEye = [(NTKSecretariatColorPalette *)self->_palette horseEye];
  [(UIImageView *)self->_horseEyeImageView setTintColor:horseEye];

  horseHair = [(NTKSecretariatColorPalette *)self->_palette horseHair];
  [(UIImageView *)self->_horseHairImageView setTintColor:horseHair];
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

- (id)_imageViewWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (self->_inactive)
  {
    v6 = [nameCopy stringByAppendingString:@"Inactive"];

    v5 = v6;
  }

  v7 = [NTKSecretariatFaceBundle imageWithName:v5];
  v8 = [[UIImageView alloc] initWithImage:v7];

  return v8;
}

- (id)_horseImageViewWithName:(id)name
{
  v4 = [(NTKSecretariatBackgroundView *)self _imageViewWithName:name];
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

- (void)_updateOrigin:(CGPoint)origin forImageView:(id)view
{
  y = origin.y;
  x = origin.x;
  viewCopy = view;
  [(NTKSecretariatBackgroundView *)self bounds];
  CLKRectGetCenter();
  v8 = v7;
  v10 = v9;
  [viewCopy frame];
  [viewCopy setFrame:{(v8 - x) * 0.5, (v10 - y) * 0.5}];
}

@end