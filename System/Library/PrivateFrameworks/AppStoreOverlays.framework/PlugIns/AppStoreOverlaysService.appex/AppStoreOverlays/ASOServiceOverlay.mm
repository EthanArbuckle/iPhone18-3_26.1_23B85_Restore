@interface ASOServiceOverlay
- (ASCViewMetrics)viewMetrics;
- (ASOServiceOverlay)initWithContentView:(id)view containerConfiguration:(id)configuration;
@end

@implementation ASOServiceOverlay

- (ASOServiceOverlay)initWithContentView:(id)view containerConfiguration:(id)configuration
{
  viewCopy = view;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = ASOServiceOverlay;
  v9 = [(ASOServiceOverlay *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentView, view);
    objc_storeStrong(&v10->_containerConfiguration, configuration);
  }

  return v10;
}

- (ASCViewMetrics)viewMetrics
{
  contentView = [(ASOServiceOverlay *)self contentView];
  v4 = [contentView conformsToProtocol:&OBJC_PROTOCOL___ASOServiceOverlayMetricsProvider];

  if (v4)
  {
    contentView2 = [(ASOServiceOverlay *)self contentView];
    viewMetrics = [contentView2 viewMetrics];
  }

  else
  {
    viewMetrics = 0;
  }

  return viewMetrics;
}

@end