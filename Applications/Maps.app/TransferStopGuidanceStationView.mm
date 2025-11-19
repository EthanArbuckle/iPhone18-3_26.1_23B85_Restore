@interface TransferStopGuidanceStationView
- (TransferStopGuidanceStationView)initWithFrame:(CGRect)a3;
- (void)setShouldShowHighlight:(BOOL)a3;
@end

@implementation TransferStopGuidanceStationView

- (void)setShouldShowHighlight:(BOOL)a3
{
  if (self->_shouldShowHighlight != a3)
  {
    self->_shouldShowHighlight = a3;
    [(CAShapeLayer *)self->_highlightLayer setHidden:!a3];
  }
}

- (TransferStopGuidanceStationView)initWithFrame:(CGRect)a3
{
  height = CGSizeZero.height;
  if (a3.size.width == CGSizeZero.width && a3.size.height == height)
  {
    a3.size.width = 22.0;
    a3.size.height = 22.0;
  }

  v17.receiver = self;
  v17.super_class = TransferStopGuidanceStationView;
  v4 = [(TransferStopGuidanceStationView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, 22.0, CGSizeZero.width, height];
  v5 = v4;
  if (v4)
  {
    v4->_shouldShowHighlight = 0;
    v6 = objc_alloc_init(CAShapeLayer);
    highlightLayer = v5->_highlightLayer;
    v5->_highlightLayer = v6;

    v8 = [(TransferStopGuidanceStationView *)v5 layer];
    [v8 bounds];
    [(CAShapeLayer *)v5->_highlightLayer setFrame:?];

    v9 = [UIColor colorWithRed:0.0431372561 green:0.490196079 blue:0.984313726 alpha:0.800000012];
    -[CAShapeLayer setStrokeColor:](v5->_highlightLayer, "setStrokeColor:", [v9 CGColor]);

    [(CAShapeLayer *)v5->_highlightLayer setFillColor:[(CAShapeLayer *)v5->_highlightLayer strokeColor]];
    [(CAShapeLayer *)v5->_highlightLayer setLineWidth:2.0];
    v10 = [(TransferStopGuidanceStationView *)v5 layer];
    [v10 bounds];
    v19 = CGRectInset(v18, 1.0, 1.0);
    v11 = [UIBezierPath bezierPathWithOvalInRect:v19.origin.x, v19.origin.y, v19.size.width, v19.size.height];
    -[CAShapeLayer setPath:](v5->_highlightLayer, "setPath:", [v11 CGPath]);

    [(CAShapeLayer *)v5->_highlightLayer setHidden:!v5->_shouldShowHighlight];
    v12 = [(TransferStopGuidanceStationView *)v5 layer];
    [v12 addSublayer:v5->_highlightLayer];

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