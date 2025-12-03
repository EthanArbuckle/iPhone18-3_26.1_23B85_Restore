@interface NTKHadesHourView
+ (id)_assetForHour:(unint64_t)hour rotation:(unint64_t)rotation statusIcon:(BOOL)icon;
+ (id)imageForRotation:(unint64_t)rotation palette:(id)palette hour:(unint64_t)hour size:(CGSize)size;
- (NTKHadesHourView)initWithDevice:(id)device;
- (void)_updateAsset;
- (void)_updatePalette;
- (void)applyFraction:(double)fraction fromRotation:(unint64_t)rotation toRotation:(unint64_t)toRotation;
- (void)layoutSubviews;
- (void)setHour:(unint64_t)hour;
- (void)setPalette:(id)palette;
- (void)setShowingStatusIcon:(BOOL)icon;
@end

@implementation NTKHadesHourView

- (NTKHadesHourView)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = NTKHadesHourView;
  v6 = [(NTKHadesHourView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v7->_rotation = 2;
    v7->_hour = -1;
    v8 = objc_opt_new();
    hourImageView = v7->_hourImageView;
    v7->_hourImageView = v8;

    [(NTKHadesHourView *)v7 addSubview:v7->_hourImageView];
    [(NTKHadesHourView *)v7 setClipsToBounds:1];
  }

  return v7;
}

- (void)applyFraction:(double)fraction fromRotation:(unint64_t)rotation toRotation:(unint64_t)toRotation
{
  if ([(NTKHadesHourView *)self _isFractionAtEnd:?])
  {
    hourImageView = self->_hourImageView;
    v10 = *&CGAffineTransformIdentity.c;
    v24 = *&CGAffineTransformIdentity.a;
    v25 = v10;
    v26 = *&CGAffineTransformIdentity.tx;
    [(UIImageView *)hourImageView setTransform:&v24];
    if (fraction == 0.0)
    {
      toRotationCopy = rotation;
    }

    else
    {
      toRotationCopy = toRotation;
    }

    self->_rotation = toRotationCopy;
    [(NTKHadesHourView *)self _updateAsset];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    device = [(NTKHadesHourView *)self device];
    sub_16240(device, &v24);

    self->_rotation = 0;
    [(NTKHadesHourView *)self _updateAsset];
    v13 = *&CGAffineTransformIdentity.c;
    v18 = *&CGAffineTransformIdentity.a;
    v19 = v13;
    v20 = *&CGAffineTransformIdentity.tx;
    v15 = v24;
    v16 = v25;
    v17 = v26;
    CLKInterpolateBetweenTransform();
    v14 = self->_hourImageView;
    v18 = v21;
    v19 = v22;
    v20 = v23;
    [(UIImageView *)v14 setTransform:&v18, v15, v16, v17];
  }
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);

  [(NTKHadesHourView *)self _updatePalette];
}

- (void)setHour:(unint64_t)hour
{
  v3 = (hour + 11) % 0xC + 1;
  if (v3 != self->_hour)
  {
    self->_hour = v3;
    [(NTKHadesHourView *)self _updateAsset];
  }
}

- (void)_updateAsset
{
  v3 = [objc_opt_class() _assetForHour:self->_hour rotation:self->_rotation statusIcon:self->_showingStatusIcon];
  if (v3)
  {
    [(UIImageView *)self->_hourImageView setImage:v3];
    [(UIImageView *)self->_hourImageView sizeToFit];
    [(NTKHadesHourView *)self _updatePalette];
    [(NTKHadesHourView *)self setNeedsLayout];
  }

  _objc_release_x1();
}

- (void)setShowingStatusIcon:(BOOL)icon
{
  if (self->_showingStatusIcon != icon)
  {
    self->_showingStatusIcon = icon;
    [(NTKHadesHourView *)self _updateAsset];
  }
}

- (void)_updatePalette
{
  background = [(NTKHadesColorPalette *)self->_palette background];
  [(NTKHadesHourView *)self setBackgroundColor:background];

  numbers = [(NTKHadesColorPalette *)self->_palette numbers];
  [(UIImageView *)self->_hourImageView setTintColor:numbers];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKHadesHourView;
  [(NTKHadesHourView *)&v3 layoutSubviews];
  [(NTKHadesHourView *)self bounds];
  [(UIImageView *)self->_hourImageView ntk_setBoundsAndPositionFromFrame:?];
}

+ (id)_assetForHour:(unint64_t)hour rotation:(unint64_t)rotation statusIcon:(BOOL)icon
{
  v5 = 0;
  if (hour <= 0xC && rotation <= 1)
  {
    if (rotation == 1)
    {
      v7 = @"Twisted";
    }

    else
    {
      v7 = @"Straight";
    }

    if (rotation != 1 && icon)
    {
      v7 = [@"Straight" stringByAppendingString:@"-Inset"];
    }

    hour = [NSString stringWithFormat:@"Hades%@-%d", v7, hour];
    v5 = [NTKHadesFaceBundle imageWithName:hour];
  }

  return v5;
}

+ (id)imageForRotation:(unint64_t)rotation palette:(id)palette hour:(unint64_t)hour size:(CGSize)size
{
  height = size.height;
  width = size.width;
  paletteCopy = palette;
  v12 = [self _assetForHour:hour rotation:rotation statusIcon:0];
  if (v12)
  {
    v13 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1607C;
    v16[3] = &unk_45050;
    v17 = paletteCopy;
    v18 = v12;
    v14 = [v13 imageWithActions:v16];
  }

  else
  {
    v14 = objc_opt_new();
  }

  return v14;
}

@end