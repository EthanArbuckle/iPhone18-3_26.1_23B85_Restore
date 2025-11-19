@interface NTKCellularConnectivityImageView
- (BOOL)_showDisconnected;
- (BOOL)_showDotsInsteadOfImage;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKCellularConnectivityImageView)initWithFrame:(CGRect)a3;
- (void)_reevaluateSignalState;
- (void)_setCutoutImageFromPlatter:(BOOL)a3;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setFilterProvider:(id)a3;
- (void)setImageProvider:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKCellularConnectivityImageView

- (NTKCellularConnectivityImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v28.receiver = self;
  v28.super_class = NTKCellularConnectivityImageView;
  v5 = [(NTKCellularConnectivityImageView *)&v28 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    [(NTKCellularConnectivityImageView *)v5 bounds];
    v8 = v7 * 0.5;
    [(NTKCellularConnectivityImageView *)v6 bounds];
    v10 = v9 * 0.5;
    if (width < height)
    {
      height = width;
    }

    v11 = [[UIView alloc] initWithFrame:{0.0, 0.0, height, height}];
    platterView = v6->_platterView;
    v6->_platterView = v11;

    [(UIView *)v6->_platterView setCenter:v8, v10];
    v13 = [(UIView *)v6->_platterView layer];
    [v13 setCornerRadius:height * 0.5];

    [(UIView *)v6->_platterView setClipsToBounds:1];
    [(NTKCellularConnectivityImageView *)v6 addSubview:v6->_platterView];
    v14 = [UIImageView alloc];
    y = CGRectZero.origin.y;
    v16 = CGRectZero.size.width;
    v17 = CGRectZero.size.height;
    v18 = [v14 initWithFrame:{CGRectZero.origin.x, y, v16, v17}];
    imageView = v6->_imageView;
    v6->_imageView = v18;

    [(UIImageView *)v6->_imageView setCenter:v8, v10];
    [(NTKCellularConnectivityImageView *)v6 addSubview:v6->_imageView];
    v20 = v6->_imageProvider;
    v21 = [NTKExplorerStatusView alloc];
    v22 = [(CLKImageProvider *)v20 dotLayoutConstraints];
    v23 = [(CLKImageProvider *)v20 dotColorOptions];
    v24 = [v21 initWithFrame:v22 dotLayoutConstraints:v23 dotColorOptions:{CGRectZero.origin.x, y, v16, v17}];
    dotsView = v6->_dotsView;
    v6->_dotsView = v24;

    v26 = [(NTKCellularConnectivityImageView *)v6 filterProvider];
    [(NTKExplorerStatusView *)v6->_dotsView setFilterProvider:v26];

    [(NTKCellularConnectivityImageView *)v6 addSubview:v6->_dotsView];
  }

  return v6;
}

- (void)_setCutoutImageFromPlatter:(BOOL)a3
{
  if (self->_cutoutImageFromPlatter != a3)
  {
    v4 = a3;
    self->_cutoutImageFromPlatter = a3;
    v5 = [(UIImageView *)self->_imageView layer];
    v7 = v5;
    if (v4)
    {
      v6 = kCAFilterSubtractS;
    }

    else
    {
      v6 = 0;
    }

    [v5 setCompositingFilter:v6];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKCellularConnectivityImageView;
  [(NTKCellularConnectivityImageView *)&v17 layoutSubviews];
  v3 = [(NTKCellularConnectivityImageView *)self imageProvider];
  -[NTKCellularConnectivityImageView _setCutoutImageFromPlatter:](self, "_setCutoutImageFromPlatter:", [v3 cutoutImageFromPlatter]);
  [(NTKCellularConnectivityImageView *)self bounds];
  v5 = v4 * 0.5;
  [(NTKCellularConnectivityImageView *)self bounds];
  v7 = v6 * 0.5;
  -[UIView setHidden:](self->_platterView, "setHidden:", [v3 needsPlatter] ^ 1);
  [(NTKCellularConnectivityImageView *)self bounds];
  v9 = v8;
  [(NTKCellularConnectivityImageView *)self bounds];
  if (v9 >= v10)
  {
    v9 = v10;
  }

  [(UIView *)self->_platterView setFrame:0.0, 0.0, v9, v9];
  [(UIView *)self->_platterView setCenter:v5, v7];
  v11 = [(UIView *)self->_platterView layer];
  [v11 setCornerRadius:v9 * 0.5];

  [(UIImageView *)self->_imageView setHidden:[(NTKCellularConnectivityImageView *)self _showDotsInsteadOfImage]];
  [v3 finalizeWithPointSize:0 weight:4 maxSDKSize:1 maxDeviceSize:v9 maskToCircle:{v9, v9, v9}];
  v12 = [v3 createSymbolImage];
  [(UIImageView *)self->_imageView setImage:v12];

  [(UIImageView *)self->_imageView sizeToFit];
  v13 = [v3 imageVerticalOffsetScaleFromWidth];
  [v13 floatValue];
  v14 = +[CLKDevice currentDevice];
  CLKRoundForDevice();
  v16 = v7 + v15;

  [(UIImageView *)self->_imageView setCenter:v5, v16];
  [(NTKExplorerStatusView *)self->_dotsView setHidden:[(NTKCellularConnectivityImageView *)self _showDotsInsteadOfImage]^ 1];
  [(NTKExplorerStatusView *)self->_dotsView sizeToFit];
  [(NTKExplorerStatusView *)self->_dotsView setCenter:v5, v7];
  [(NTKCellularConnectivityImageView *)self setColor:self->_color];
}

- (void)setImageProvider:(id)a3
{
  objc_storeStrong(&self->_imageProvider, a3);
  v5 = a3;
  v6 = [v5 dotLayoutConstraints];
  [(NTKExplorerStatusView *)self->_dotsView setDotLayoutConstraints:v6];

  -[NTKExplorerStatusView setSignalStrengthBars:](self->_dotsView, "setSignalStrengthBars:", [v5 numDotsFilled]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C00;
  block[3] = &unk_82B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_color, a3);
  v6 = [(NTKCellularConnectivityImageView *)self imageProvider];
  v7 = v5;
  if (self->_tritium_isOn)
  {
    v8 = [v6 tritiumPlatterColor];

    v9 = v7;
    if (!v8)
    {
      goto LABEL_9;
    }

    v10 = [v6 tritiumPlatterColor];
    v9 = v7;
    goto LABEL_8;
  }

  v11 = [v6 platterOverrideColor];

  v9 = v7;
  if (v11)
  {
    v9 = [v6 platterOverrideColor];
  }

  [v6 platterAlpha];
  if (fabs(v12 + -1.0) >= 0.00000011920929)
  {
    [v6 platterAlpha];
    v10 = [v9 colorWithAlphaComponent:?];
LABEL_8:

    v9 = v10;
  }

LABEL_9:
  [(UIView *)self->_platterView setBackgroundColor:v9];
  v21 = v7;
  v13 = [v6 imageOverrideColor];

  v14 = v21;
  if (v13)
  {
    v14 = [v6 imageOverrideColor];
  }

  [v6 imageAlpha];
  if (fabs(v15 + -1.0) >= 0.00000011920929)
  {
    [v6 imageAlpha];
    v16 = [v14 colorWithAlphaComponent:?];

    v14 = v16;
  }

  if (self->_cutoutImageFromPlatter)
  {
    v17 = +[UIColor whiteColor];

    v14 = v17;
  }

  [(UIImageView *)self->_imageView setTintColor:v14];
  v18 = [v6 dotColorOptions];
  v19 = [v18 copy];

  [v19 setConnectedDotColor:v21];
  if ([v6 needsPlatter])
  {
    [v19 setConnectedDotBackgroundColor:v9];
  }

  else
  {
    v20 = +[UIColor blackColor];
    [v19 setConnectedDotBackgroundColor:v20];
  }

  [(NTKExplorerStatusView *)self->_dotsView setDotColorOptions:v19];
  [(NTKExplorerStatusView *)self->_dotsView setTritiumIsOn:self->_tritium_isOn];
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 metadata];
  v7 = [v6 objectForKey:@"NTKCellularConnectivityImageProviderMetadataKey"];

  LOBYTE(v6) = [v5 tritium_isTritiumInactiveFullColorImageProvider];
  self->_tritium_isOn = v6;
  [(NTKCellularConnectivityImageView *)self setImageProvider:v7];
}

- (void)setFilterProvider:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_filterProvider, v4);
  v5 = [(NTKCellularConnectivityImageView *)self dotsView];
  [v5 setFilterProvider:v4];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v5 = [(NTKCellularConnectivityImageView *)self dotsView];
  [v5 transitionToMonochromeWithFraction:a3];

  v6 = [(NTKCellularConnectivityImageView *)self filterProvider];
  v11 = [v6 filtersForView:self style:-[NTKCellularConnectivityImageView _filterStyle](self fraction:{"_filterStyle"), a3}];

  if (v11)
  {
    v7 = [(NTKCellularConnectivityImageView *)self platterView];
    v8 = [v7 layer];
    [v8 setFilters:v11];

    v9 = [(NTKCellularConnectivityImageView *)self imageView];
    v10 = [v9 layer];
    [v10 setFilters:v11];
  }
}

- (void)updateMonochromeColor
{
  v3 = [(NTKCellularConnectivityImageView *)self dotsView];
  [v3 updateMonochromeColor];

  v4 = [(NTKCellularConnectivityImageView *)self filterProvider];
  v9 = [v4 filtersForView:self style:{-[NTKCellularConnectivityImageView _filterStyle](self, "_filterStyle")}];

  if (v9)
  {
    v5 = [(NTKCellularConnectivityImageView *)self platterView];
    v6 = [v5 layer];
    [v6 setFilters:v9];

    v7 = [(NTKCellularConnectivityImageView *)self imageView];
    v8 = [v7 layer];
    [v8 setFilters:v9];
  }
}

- (BOOL)_showDotsInsteadOfImage
{
  v2 = [(NTKCellularConnectivityImageView *)self imageProvider];
  v3 = [v2 showsAsDots];

  return v3;
}

- (BOOL)_showDisconnected
{
  v2 = [(NTKCellularConnectivityImageView *)self imageProvider];
  v3 = [v2 isDisconnected];

  return v3;
}

- (void)_reevaluateSignalState
{
  v4 = self->_imageProvider;
  if ([(NTKCellularConnectivityImageView *)self _showDotsInsteadOfImage]|| [(NTKExplorerStatusView *)self->_dotsView state]== &dword_0 + 2)
  {
    if ([(CLKImageProvider *)v4 animateSearchingState]&& !self->_shouldPauseFullColorImageView)
    {
      v3 = 2;
    }

    else
    {
      v3 = [(NTKCellularConnectivityImageView *)self _showDisconnected]^ 1;
    }

    [(NTKExplorerStatusView *)self->_dotsView setState:v3];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end