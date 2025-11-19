@interface IMVideoView
- (BOOL)smallAirplayBackground;
- (IMAVPlayer)player;
- (void)dealloc;
- (void)layout:(BOOL)a3;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)layoutSubviews;
- (void)setAirplayActive:(BOOL)a3;
- (void)setAirplayRouteName:(id)a3;
- (void)setVideoLayer:(id)a3;
- (void)updateAirplayNoContentView;
- (void)willMoveToWindow:(id)a3;
@end

@implementation IMVideoView

- (void)dealloc
{
  [(IMVideoView *)self setVideoLayer:0];
  [(IMVideoView *)self setAirplayActive:0];
  [(IMVideoView *)self setAirplayRouteName:0];
  v3.receiver = self;
  v3.super_class = IMVideoView;
  [(IMVideoView *)&v3 dealloc];
}

- (void)setAirplayActive:(BOOL)a3
{
  if (self->_airplayActive != a3)
  {
    self->_airplayActive = a3;
    [(IMVideoView *)self updateAirplayNoContentView];
  }
}

- (void)setVideoLayer:(id)a3
{
  v5 = a3;
  videoLayer = self->_videoLayer;
  if (videoLayer != v5)
  {
    [(AVPlayerLayer *)videoLayer removeFromSuperlayer];
    objc_storeStrong(&self->_videoLayer, a3);
    v7 = [(IMVideoView *)self layer];
    [v7 addSublayer:self->_videoLayer];
  }

  _objc_release_x1(videoLayer);
}

- (void)setAirplayRouteName:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_player);
  v5 = [WeakRetained airplayVideoActive];

  if (v5)
  {
    v6 = @"AirPlay";
  }

  else
  {
    if (![(IMVideoView *)self externalDisplay])
    {
      goto LABEL_6;
    }

    v7 = IMCommonCoreBundle();
    v8 = [v7 localizedStringForKey:@"TV" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v6 = @"TV Connected";
    obj = v8;
  }

  v9 = IMCommonCoreBundle();
  v10 = [v9 localizedStringForKey:v6 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  [(UILabel *)self->_airplayLabel setText:v10];

LABEL_6:
  v11 = obj;
  if (self->_airplayRouteName != obj)
  {
    objc_storeStrong(&self->_airplayRouteName, obj);
    v12 = IMCommonCoreBundle();
    v13 = [v12 localizedStringForKey:@"The video is playing on \\U201C%@\\U201D." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v14 = [NSString stringWithFormat:v13, obj];
    [(UILabel *)self->_airplayRouteLabel setText:v14];

    v11 = obj;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = IMVideoView;
  [(IMVideoView *)&v3 layoutSubviews];
  [(IMVideoView *)self layout:isPortrait()];
}

- (BOOL)smallAirplayBackground
{
  v3 = isPhone();
  [(IMVideoView *)self frame];
  return v4 < 768.0 || v3;
}

- (void)layout:(BOOL)a3
{
  if (self->_airplayBackground)
  {
    [(IMVideoView *)self bounds];
    [(UIView *)self->_airplayBackground setFrame:?];
    airplayLabel = self->_airplayLabel;
    v6 = [(IMVideoView *)self smallAirplayBackground];
    v7 = 24.0;
    if (v6)
    {
      v7 = 17.0;
    }

    v8 = [UIFont systemFontOfSize:v7];
    [(UILabel *)airplayLabel setFont:v8];

    airplayRouteLabel = self->_airplayRouteLabel;
    v10 = [(IMVideoView *)self smallAirplayBackground];
    v11 = 12.0;
    if (!v10)
    {
      v11 = 17.0;
    }

    v12 = [UIFont systemFontOfSize:v11];
    [(UILabel *)airplayRouteLabel setFont:v12];

    [(UIView *)self->_airplayBackground frame];
    v14 = v13;
    if (a3)
    {
      v15 = 0.8;
    }

    else if ([(IMVideoView *)self smallAirplayBackground])
    {
      v15 = 0.5;
    }

    else
    {
      v15 = 0.8;
    }

    [(UIView *)self->_airplayBackground frame];
    v17 = v15 * (v16 + -44.0) * 0.5;
    if ([(IMVideoView *)self smallAirplayBackground])
    {
      v18 = 0.5;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = [(UIImageView *)self->_airplayTVImage image];
    [v19 size];
    v21 = v18 * v20;

    v22 = 0.0;
    [(UIImageView *)self->_airplayTVImage setFrame:0.0, v17 + 44.0 - v21 * 0.5, v14, v21];
    LODWORD(v19) = [(IMVideoView *)self smallAirplayBackground];
    [(UIImageView *)self->_airplayTVImage frame];
    MaxY = CGRectGetMaxY(v31);
    if (!v19)
    {
      v22 = 15.0;
    }

    v24 = v22 + MaxY;
    v25 = [(UILabel *)self->_airplayLabel font];
    [v25 lineHeight];
    [(UILabel *)self->_airplayLabel setFrame:0.0, v24, v14, v26];

    [(UILabel *)self->_airplayLabel frame];
    v27 = v22 + CGRectGetMaxY(v32);
    v29 = [(UILabel *)self->_airplayRouteLabel font];
    [v29 lineHeight];
    [(UILabel *)self->_airplayRouteLabel setFrame:0.0, v27, v14, v28];
  }
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v17.receiver = self;
  v17.super_class = IMVideoView;
  v4 = a3;
  [(IMVideoView *)&v17 layoutSublayersOfLayer:v4];
  v5 = [(IMVideoView *)self layer:v17.receiver];

  if (v5 == v4)
  {
    v6 = [(IMVideoView *)self videoLayer];
    [v6 bounds];
    IsEmpty = CGRectIsEmpty(v18);

    if (IsEmpty)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
    }

    [(IMVideoView *)self bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [(IMVideoView *)self videoLayer];
    [v16 setFrame:{v9, v11, v13, v15}];

    if (IsEmpty)
    {
      +[CATransaction commit];
    }
  }
}

- (void)willMoveToWindow:(id)a3
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_player);
    [WeakRetained updateVideoLayer];
  }
}

- (void)updateAirplayNoContentView
{
  if ([(IMVideoView *)self airplayActive]|| [(IMVideoView *)self externalDisplay])
  {
    airplayBackground = self->_airplayBackground;
    if (!airplayBackground)
    {
      v4 = [UIView alloc];
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
      v9 = self->_airplayBackground;
      self->_airplayBackground = v8;

      v10 = [UIImage imageNamed:@"UIStockImageNoContentDarkGradientBackgroundColor.jpg"];
      v11 = [UIColor colorWithPatternImage:v10];
      [(UIView *)self->_airplayBackground setBackgroundColor:v11];

      v12 = [UIImageView alloc];
      v13 = [UIImage imageNamed:@"NoContentVideosOverlay"];
      v14 = [v12 initWithImage:v13];
      airplayTVImage = self->_airplayTVImage;
      self->_airplayTVImage = v14;

      [(UIImageView *)self->_airplayTVImage setFrame:CGRectZero.origin.x, y, width, height];
      [(UIImageView *)self->_airplayTVImage setContentMode:1];
      [(UIView *)self->_airplayBackground addSubview:self->_airplayTVImage];
      v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      airplayLabel = self->_airplayLabel;
      self->_airplayLabel = v16;

      [(UILabel *)self->_airplayLabel setBackgroundColor:0];
      [(UILabel *)self->_airplayLabel setContentMode:4];
      [(UILabel *)self->_airplayLabel setOpaque:0];
      v18 = self->_airplayLabel;
      v19 = [UIColor colorWithWhite:1.0 alpha:0.25];
      [(UILabel *)v18 setTextColor:v19];

      [(UILabel *)self->_airplayLabel setTextAlignment:1];
      [(UIView *)self->_airplayBackground addSubview:self->_airplayLabel];
      v20 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
      airplayRouteLabel = self->_airplayRouteLabel;
      self->_airplayRouteLabel = v20;

      [(IMVideoView *)self setAirplayRouteName:self->_airplayRouteName];
      [(UILabel *)self->_airplayRouteLabel setBackgroundColor:0];
      [(UILabel *)self->_airplayRouteLabel setOpaque:0];
      [(UILabel *)self->_airplayRouteLabel setContentMode:4];
      v22 = self->_airplayRouteLabel;
      v23 = [UIColor colorWithWhite:1.0 alpha:0.45];
      [(UILabel *)v22 setTextColor:v23];

      [(UILabel *)self->_airplayRouteLabel setTextAlignment:1];
      [(UIView *)self->_airplayBackground addSubview:self->_airplayRouteLabel];
      airplayBackground = self->_airplayBackground;
    }

    [(IMVideoView *)self addSubview:airplayBackground];
  }

  else
  {
    [(UIImageView *)self->_airplayTVImage removeFromSuperview];
    v24 = self->_airplayTVImage;
    self->_airplayTVImage = 0;

    [(UILabel *)self->_airplayLabel removeFromSuperview];
    v25 = self->_airplayLabel;
    self->_airplayLabel = 0;

    [(UILabel *)self->_airplayRouteLabel removeFromSuperview];
    v26 = self->_airplayRouteLabel;
    self->_airplayRouteLabel = 0;

    [(UIView *)self->_airplayBackground removeFromSuperview];
    v27 = self->_airplayBackground;
    self->_airplayBackground = 0;
  }
}

- (IMAVPlayer)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end