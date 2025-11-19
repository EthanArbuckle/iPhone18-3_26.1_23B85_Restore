@interface NTKHadesHourView
+ (id)_assetForHour:(unint64_t)a3 rotation:(unint64_t)a4 statusIcon:(BOOL)a5;
+ (id)imageForRotation:(unint64_t)a3 palette:(id)a4 hour:(unint64_t)a5 size:(CGSize)a6;
- (NTKHadesHourView)initWithDevice:(id)a3;
- (void)_updateAsset;
- (void)_updatePalette;
- (void)applyFraction:(double)a3 fromRotation:(unint64_t)a4 toRotation:(unint64_t)a5;
- (void)layoutSubviews;
- (void)setHour:(unint64_t)a3;
- (void)setPalette:(id)a3;
- (void)setShowingStatusIcon:(BOOL)a3;
@end

@implementation NTKHadesHourView

- (NTKHadesHourView)initWithDevice:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = NTKHadesHourView;
  v6 = [(NTKHadesHourView *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
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

- (void)applyFraction:(double)a3 fromRotation:(unint64_t)a4 toRotation:(unint64_t)a5
{
  if ([(NTKHadesHourView *)self _isFractionAtEnd:?])
  {
    hourImageView = self->_hourImageView;
    v10 = *&CGAffineTransformIdentity.c;
    v24 = *&CGAffineTransformIdentity.a;
    v25 = v10;
    v26 = *&CGAffineTransformIdentity.tx;
    [(UIImageView *)hourImageView setTransform:&v24];
    if (a3 == 0.0)
    {
      v11 = a4;
    }

    else
    {
      v11 = a5;
    }

    self->_rotation = v11;
    [(NTKHadesHourView *)self _updateAsset];
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    v12 = [(NTKHadesHourView *)self device];
    sub_16240(v12, &v24);

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

- (void)setPalette:(id)a3
{
  objc_storeStrong(&self->_palette, a3);

  [(NTKHadesHourView *)self _updatePalette];
}

- (void)setHour:(unint64_t)a3
{
  v3 = (a3 + 11) % 0xC + 1;
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

- (void)setShowingStatusIcon:(BOOL)a3
{
  if (self->_showingStatusIcon != a3)
  {
    self->_showingStatusIcon = a3;
    [(NTKHadesHourView *)self _updateAsset];
  }
}

- (void)_updatePalette
{
  v3 = [(NTKHadesColorPalette *)self->_palette background];
  [(NTKHadesHourView *)self setBackgroundColor:v3];

  v4 = [(NTKHadesColorPalette *)self->_palette numbers];
  [(UIImageView *)self->_hourImageView setTintColor:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKHadesHourView;
  [(NTKHadesHourView *)&v3 layoutSubviews];
  [(NTKHadesHourView *)self bounds];
  [(UIImageView *)self->_hourImageView ntk_setBoundsAndPositionFromFrame:?];
}

+ (id)_assetForHour:(unint64_t)a3 rotation:(unint64_t)a4 statusIcon:(BOOL)a5
{
  v5 = 0;
  if (a3 <= 0xC && a4 <= 1)
  {
    if (a4 == 1)
    {
      v7 = @"Twisted";
    }

    else
    {
      v7 = @"Straight";
    }

    if (a4 != 1 && a5)
    {
      v7 = [@"Straight" stringByAppendingString:@"-Inset"];
    }

    v8 = [NSString stringWithFormat:@"Hades%@-%d", v7, a3];
    v5 = [NTKHadesFaceBundle imageWithName:v8];
  }

  return v5;
}

+ (id)imageForRotation:(unint64_t)a3 palette:(id)a4 hour:(unint64_t)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v11 = a4;
  v12 = [a1 _assetForHour:a5 rotation:a3 statusIcon:0];
  if (v12)
  {
    v13 = [[UIGraphicsImageRenderer alloc] initWithSize:{width, height}];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1607C;
    v16[3] = &unk_45050;
    v17 = v11;
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