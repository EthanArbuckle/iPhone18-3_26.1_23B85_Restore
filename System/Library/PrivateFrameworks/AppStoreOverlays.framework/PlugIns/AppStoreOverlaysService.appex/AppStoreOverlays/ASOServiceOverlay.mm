@interface ASOServiceOverlay
- (ASCViewMetrics)viewMetrics;
- (ASOServiceOverlay)initWithContentView:(id)a3 containerConfiguration:(id)a4;
@end

@implementation ASOServiceOverlay

- (ASOServiceOverlay)initWithContentView:(id)a3 containerConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASOServiceOverlay;
  v9 = [(ASOServiceOverlay *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentView, a3);
    objc_storeStrong(&v10->_containerConfiguration, a4);
  }

  return v10;
}

- (ASCViewMetrics)viewMetrics
{
  v3 = [(ASOServiceOverlay *)self contentView];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___ASOServiceOverlayMetricsProvider];

  if (v4)
  {
    v5 = [(ASOServiceOverlay *)self contentView];
    v6 = [v5 viewMetrics];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end