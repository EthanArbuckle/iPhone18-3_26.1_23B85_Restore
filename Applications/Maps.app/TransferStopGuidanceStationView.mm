@interface TransferStopGuidanceStationView
- (TransferStopGuidanceStationView)initWithFrame:(CGRect)frame;
- (void)setShouldShowHighlight:(BOOL)highlight;
@end

@implementation TransferStopGuidanceStationView

- (void)setShouldShowHighlight:(BOOL)highlight
{
  if (self->_shouldShowHighlight != highlight)
  {
    self->_shouldShowHighlight = highlight;
    [(CAShapeLayer *)self->_highlightLayer setHidden:!highlight];
  }
}

- (TransferStopGuidanceStationView)initWithFrame:(CGRect)frame
{
  height = CGSizeZero.height;
  if (frame.size.width == CGSizeZero.width && frame.size.height == height)
  {
    frame.size.width = 22.0;
    frame.size.height = 22.0;
  }

  v17.receiver = self;
  v17.super_class = TransferStopGuidanceStationView;
  height = [(TransferStopGuidanceStationView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height, 22.0, CGSizeZero.width, height];
  v5 = height;
  if (height)
  {
    height->_shouldShowHighlight = 0;
    v6 = objc_alloc_init(CAShapeLayer);
    highlightLayer = v5->_highlightLayer;
    v5->_highlightLayer = v6;

    layer = [(TransferStopGuidanceStationView *)v5 layer];
    [layer bounds];
    [(CAShapeLayer *)v5->_highlightLayer setFrame:?];

    v9 = [UIColor colorWithRed:0.0431372561 green:0.490196079 blue:0.984313726 alpha:0.800000012];
    -[CAShapeLayer setStrokeColor:](v5->_highlightLayer, "setStrokeColor:", [v9 CGColor]);

    [(CAShapeLayer *)v5->_highlightLayer setFillColor:[(CAShapeLayer *)v5->_highlightLayer strokeColor]];
    [(CAShapeLayer *)v5->_highlightLayer setLineWidth:2.0];
    layer2 = [(TransferStopGuidanceStationView *)v5 layer];
    [layer2 bounds];
    v19 = CGRectInset(v18, 1.0, 1.0);
    v11 = [UIBezierPath bezierPathWithOvalInRect:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
    -[CAShapeLayer setPath:](v5->_highlightLayer, "setPath:", [v11 CGPath]);

    [(CAShapeLayer *)v5->_highlightLayer setHidden:!v5->_shouldShowHighlight];
    layer3 = [(TransferStopGuidanceStationView *)v5 layer];
    [layer3 addSublayer:v5->_highlightLayer];

    v13 = [UIImageView alloc];
    [(TransferStopGuidanceStationView *)v5 bounds];
    v21 = CGRectInset(v20, 2.0, 2.0);
    v14 = [v13 initWithFrame:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
    stationIcon = v5->_stationIcon;
    v5->_stationIcon = v14;

    [(TransferStopGuidanceStationView *)v5 addSubview:v5->_stationIcon];
  }

  return v5;
}

@end