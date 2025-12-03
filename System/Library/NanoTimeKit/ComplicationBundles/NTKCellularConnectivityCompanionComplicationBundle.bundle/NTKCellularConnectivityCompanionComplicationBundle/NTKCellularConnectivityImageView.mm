@interface NTKCellularConnectivityImageView
- (BOOL)_showDisconnected;
- (BOOL)_showDotsInsteadOfImage;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKCellularConnectivityImageView)initWithFrame:(CGRect)frame;
- (void)_reevaluateSignalState;
- (void)_setCutoutImageFromPlatter:(BOOL)platter;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setFilterProvider:(id)provider;
- (void)setImageProvider:(id)provider;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKCellularConnectivityImageView

- (NTKCellularConnectivityImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  v28.receiver = self;
  v28.super_class = NTKCellularConnectivityImageView;
  v5 = [(NTKCellularConnectivityImageView *)&v28 initWithFrame:frame.origin.x, frame.origin.y];
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
    layer = [(UIView *)v6->_platterView layer];
    [layer setCornerRadius:height * 0.5];

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
    dotLayoutConstraints = [(CLKImageProvider *)v20 dotLayoutConstraints];
    dotColorOptions = [(CLKImageProvider *)v20 dotColorOptions];
    v24 = [v21 initWithFrame:dotLayoutConstraints dotLayoutConstraints:dotColorOptions dotColorOptions:{CGRectZero.origin.x, y, v16, v17}];
    dotsView = v6->_dotsView;
    v6->_dotsView = v24;

    filterProvider = [(NTKCellularConnectivityImageView *)v6 filterProvider];
    [(NTKExplorerStatusView *)v6->_dotsView setFilterProvider:filterProvider];

    [(NTKCellularConnectivityImageView *)v6 addSubview:v6->_dotsView];
  }

  return v6;
}

- (void)_setCutoutImageFromPlatter:(BOOL)platter
{
  if (self->_cutoutImageFromPlatter != platter)
  {
    platterCopy = platter;
    self->_cutoutImageFromPlatter = platter;
    layer = [(UIImageView *)self->_imageView layer];
    v7 = layer;
    if (platterCopy)
    {
      v6 = kCAFilterSubtractS;
    }

    else
    {
      v6 = 0;
    }

    [layer setCompositingFilter:v6];
  }
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKCellularConnectivityImageView;
  [(NTKCellularConnectivityImageView *)&v17 layoutSubviews];
  imageProvider = [(NTKCellularConnectivityImageView *)self imageProvider];
  -[NTKCellularConnectivityImageView _setCutoutImageFromPlatter:](self, "_setCutoutImageFromPlatter:", [imageProvider cutoutImageFromPlatter]);
  [(NTKCellularConnectivityImageView *)self bounds];
  v5 = v4 * 0.5;
  [(NTKCellularConnectivityImageView *)self bounds];
  v7 = v6 * 0.5;
  -[UIView setHidden:](self->_platterView, "setHidden:", [imageProvider needsPlatter] ^ 1);
  [(NTKCellularConnectivityImageView *)self bounds];
  v9 = v8;
  [(NTKCellularConnectivityImageView *)self bounds];
  if (v9 >= v10)
  {
    v9 = v10;
  }

  [(UIView *)self->_platterView setFrame:0.0, 0.0, v9, v9];
  [(UIView *)self->_platterView setCenter:v5, v7];
  layer = [(UIView *)self->_platterView layer];
  [layer setCornerRadius:v9 * 0.5];

  [(UIImageView *)self->_imageView setHidden:[(NTKCellularConnectivityImageView *)self _showDotsInsteadOfImage]];
  [imageProvider finalizeWithPointSize:0 weight:4 maxSDKSize:1 maxDeviceSize:v9 maskToCircle:{v9, v9, v9}];
  createSymbolImage = [imageProvider createSymbolImage];
  [(UIImageView *)self->_imageView setImage:createSymbolImage];

  [(UIImageView *)self->_imageView sizeToFit];
  imageVerticalOffsetScaleFromWidth = [imageProvider imageVerticalOffsetScaleFromWidth];
  [imageVerticalOffsetScaleFromWidth floatValue];
  v14 = +[CLKDevice currentDevice];
  CLKRoundForDevice();
  v16 = v7 + v15;

  [(UIImageView *)self->_imageView setCenter:v5, v16];
  [(NTKExplorerStatusView *)self->_dotsView setHidden:[(NTKCellularConnectivityImageView *)self _showDotsInsteadOfImage]^ 1];
  [(NTKExplorerStatusView *)self->_dotsView sizeToFit];
  [(NTKExplorerStatusView *)self->_dotsView setCenter:v5, v7];
  [(NTKCellularConnectivityImageView *)self setColor:self->_color];
}

- (void)setImageProvider:(id)provider
{
  objc_storeStrong(&self->_imageProvider, provider);
  providerCopy = provider;
  dotLayoutConstraints = [providerCopy dotLayoutConstraints];
  [(NTKExplorerStatusView *)self->_dotsView setDotLayoutConstraints:dotLayoutConstraints];

  -[NTKExplorerStatusView setSignalStrengthBars:](self->_dotsView, "setSignalStrengthBars:", [providerCopy numDotsFilled]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_3C00;
  block[3] = &unk_82B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_color, color);
  imageProvider = [(NTKCellularConnectivityImageView *)self imageProvider];
  v7 = colorCopy;
  if (self->_tritium_isOn)
  {
    tritiumPlatterColor = [imageProvider tritiumPlatterColor];

    platterOverrideColor2 = v7;
    if (!tritiumPlatterColor)
    {
      goto LABEL_9;
    }

    tritiumPlatterColor2 = [imageProvider tritiumPlatterColor];
    platterOverrideColor2 = v7;
    goto LABEL_8;
  }

  platterOverrideColor = [imageProvider platterOverrideColor];

  platterOverrideColor2 = v7;
  if (platterOverrideColor)
  {
    platterOverrideColor2 = [imageProvider platterOverrideColor];
  }

  [imageProvider platterAlpha];
  if (fabs(v12 + -1.0) >= 0.00000011920929)
  {
    [imageProvider platterAlpha];
    tritiumPlatterColor2 = [platterOverrideColor2 colorWithAlphaComponent:?];
LABEL_8:

    platterOverrideColor2 = tritiumPlatterColor2;
  }

LABEL_9:
  [(UIView *)self->_platterView setBackgroundColor:platterOverrideColor2];
  v21 = v7;
  imageOverrideColor = [imageProvider imageOverrideColor];

  imageOverrideColor2 = v21;
  if (imageOverrideColor)
  {
    imageOverrideColor2 = [imageProvider imageOverrideColor];
  }

  [imageProvider imageAlpha];
  if (fabs(v15 + -1.0) >= 0.00000011920929)
  {
    [imageProvider imageAlpha];
    v16 = [imageOverrideColor2 colorWithAlphaComponent:?];

    imageOverrideColor2 = v16;
  }

  if (self->_cutoutImageFromPlatter)
  {
    v17 = +[UIColor whiteColor];

    imageOverrideColor2 = v17;
  }

  [(UIImageView *)self->_imageView setTintColor:imageOverrideColor2];
  dotColorOptions = [imageProvider dotColorOptions];
  v19 = [dotColorOptions copy];

  [v19 setConnectedDotColor:v21];
  if ([imageProvider needsPlatter])
  {
    [v19 setConnectedDotBackgroundColor:platterOverrideColor2];
  }

  else
  {
    v20 = +[UIColor blackColor];
    [v19 setConnectedDotBackgroundColor:v20];
  }

  [(NTKExplorerStatusView *)self->_dotsView setDotColorOptions:v19];
  [(NTKExplorerStatusView *)self->_dotsView setTritiumIsOn:self->_tritium_isOn];
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  metadata = [providerCopy metadata];
  v7 = [metadata objectForKey:@"NTKCellularConnectivityImageProviderMetadataKey"];

  LOBYTE(metadata) = [providerCopy tritium_isTritiumInactiveFullColorImageProvider];
  self->_tritium_isOn = metadata;
  [(NTKCellularConnectivityImageView *)self setImageProvider:v7];
}

- (void)setFilterProvider:(id)provider
{
  providerCopy = provider;
  objc_storeWeak(&self->_filterProvider, providerCopy);
  dotsView = [(NTKCellularConnectivityImageView *)self dotsView];
  [dotsView setFilterProvider:providerCopy];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  dotsView = [(NTKCellularConnectivityImageView *)self dotsView];
  [dotsView transitionToMonochromeWithFraction:fraction];

  filterProvider = [(NTKCellularConnectivityImageView *)self filterProvider];
  v11 = [filterProvider filtersForView:self style:-[NTKCellularConnectivityImageView _filterStyle](self fraction:{"_filterStyle"), fraction}];

  if (v11)
  {
    platterView = [(NTKCellularConnectivityImageView *)self platterView];
    layer = [platterView layer];
    [layer setFilters:v11];

    imageView = [(NTKCellularConnectivityImageView *)self imageView];
    layer2 = [imageView layer];
    [layer2 setFilters:v11];
  }
}

- (void)updateMonochromeColor
{
  dotsView = [(NTKCellularConnectivityImageView *)self dotsView];
  [dotsView updateMonochromeColor];

  filterProvider = [(NTKCellularConnectivityImageView *)self filterProvider];
  v9 = [filterProvider filtersForView:self style:{-[NTKCellularConnectivityImageView _filterStyle](self, "_filterStyle")}];

  if (v9)
  {
    platterView = [(NTKCellularConnectivityImageView *)self platterView];
    layer = [platterView layer];
    [layer setFilters:v9];

    imageView = [(NTKCellularConnectivityImageView *)self imageView];
    layer2 = [imageView layer];
    [layer2 setFilters:v9];
  }
}

- (BOOL)_showDotsInsteadOfImage
{
  imageProvider = [(NTKCellularConnectivityImageView *)self imageProvider];
  showsAsDots = [imageProvider showsAsDots];

  return showsAsDots;
}

- (BOOL)_showDisconnected
{
  imageProvider = [(NTKCellularConnectivityImageView *)self imageProvider];
  isDisconnected = [imageProvider isDisconnected];

  return isDisconnected;
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