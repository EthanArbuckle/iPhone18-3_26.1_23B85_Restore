@interface HUDLine
- (HUDLine)init;
- (HUDLineDelegate)lineDelegate;
- (double)contentScaleForTexts;
- (void)layoutSublayers;
- (void)nilifyCALayers;
- (void)setFontSize:(double)a3;
- (void)setPreferredKeyLayerWidth:(double)a3;
- (void)setPreferredValueLayerWidth:(double)a3;
@end

@implementation HUDLine

- (HUDLine)init
{
  v7.receiver = self;
  v7.super_class = HUDLine;
  v2 = [(HUDLine *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_updatesComplete = 0;
    keyLayer = v2->_keyLayer;
    v2->_keyLayer = 0;

    valueLayer = v3->_valueLayer;
    v3->_valueLayer = 0;

    v3->_preferredKeyLayerWidth = 0.0;
    v3->_preferredValueLayerWidth = 0.0;
  }

  return v3;
}

- (void)nilifyCALayers
{
  keyLayer = self->_keyLayer;
  self->_keyLayer = 0;

  valueLayer = self->_valueLayer;
  self->_valueLayer = 0;
}

- (void)setPreferredKeyLayerWidth:(double)a3
{
  [(HUDLine *)self preferredKeyLayerWidth];
  if (v5 != a3)
  {
    self->_preferredKeyLayerWidth = a3;

    [(HUDLine *)self setNeedsLayout];
  }
}

- (void)setPreferredValueLayerWidth:(double)a3
{
  [(HUDLine *)self preferredValueLayerWidth];
  if (v5 != a3)
  {
    self->_preferredValueLayerWidth = a3;

    [(HUDLine *)self setNeedsLayout];
  }
}

- (void)layoutSublayers
{
  v15.receiver = self;
  v15.super_class = HUDLine;
  [(HUDLine *)&v15 layoutSublayers];
  preferredKeyLayerWidth = self->_preferredKeyLayerWidth;
  [(HUDLine *)self bounds];
  v4 = CGRectGetWidth(v16) - self->_preferredValueLayerWidth - self->_spacing;
  if (preferredKeyLayerWidth >= v4)
  {
    preferredKeyLayerWidth = v4;
  }

  [(CALayer *)self->_keyLayer preferredFrameSize];
  v6 = v5;
  v7 = [(HUDLine *)self keyLayer];
  [v7 setFrame:{0.0, 0.0, preferredKeyLayerWidth, v6}];

  v8 = [(HUDLine *)self valueLayer];

  if (v8)
  {
    [(CALayer *)self->_keyLayer frame];
    v10 = self->_spacing + v9;
    preferredValueLayerWidth = self->_preferredValueLayerWidth;
    [(CALayer *)self->_valueLayer preferredFrameSize];
    v13 = v12;
    v14 = [(HUDLine *)self valueLayer];
    [v14 setFrame:{v10, 0.0, preferredValueLayerWidth, v13}];
  }
}

- (void)setFontSize:(double)a3
{
  v3 = sub_100002F0C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[HUDLine setFontSize:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s from HUDLine called. The derived classes's method should be called instead.", &v4, 0xCu);
  }
}

- (HUDLineDelegate)lineDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lineDelegate);

  return WeakRetained;
}

- (double)contentScaleForTexts
{
  result = *&qword_10003E890;
  if (*&qword_10003E890 <= 0.0)
  {
    if (qword_10003E840 != -1)
    {
      sub_10001A4F8();
    }

    if (byte_10003E848 == 1)
    {
      v1 = +[CADisplay mainDisplay];
      [v1 bounds];
      v2 = 1.0;
      if (v3 > 1920.0)
      {
        v2 = 2.0;
      }

      qword_10003E890 = *&v2;

      return *&qword_10003E890;
    }

    else
    {
      MGGetFloat32Answer();
      result = v4;
      qword_10003E890 = *&result;
    }
  }

  return result;
}

@end