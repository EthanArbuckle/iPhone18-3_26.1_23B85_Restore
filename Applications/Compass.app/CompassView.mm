@interface CompassView
- (CompassView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBearing;
- (void)setCompassHeading:(double)a3;
- (void)tappedCompass:(id)a3;
- (void)unsetBearing;
@end

@implementation CompassView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CompassView;
  [(CompassView *)&v5 layoutSubviews];
  [(CompassView *)self bounds];
  MidX = CGRectGetMidX(v6);
  [(CompassView *)self bounds];
  MidY = CGRectGetMidY(v7);
  [(CompassBackgroundView *)self->_compassBackground setCenter:MidX, MidY];
  [(CompassBearingView *)self->_compassBearingView setCenter:MidX, MidY];
  [(CompassLabelsView *)self->_compassLabelsView setCenter:MidX, MidY];
  [(CompassTriangleView *)self->_compassTriangleView setCenter:MidX, MidY];
}

- (CompassView)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v22.receiver = self;
  v22.super_class = CompassView;
  v4 = [(CompassView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_compassHeading = 0.0;
    v6 = +[UIApplication shouldMakeUIForDefaultPNG];
    v7 = [CompassBackgroundView alloc];
    [(CompassView *)v5 bounds];
    if (v6)
    {
      v8 = [v7 initWithFrame:0 forCompass:?];
    }

    else
    {
      v8 = [v7 initWithFrame:?];
    }

    compassBackground = v5->_compassBackground;
    v5->_compassBackground = v8;

    [(CompassBackgroundView *)v5->_compassBackground setTicRadius:sub_10000255C(width)];
    v10 = [CompassLabelsView alloc];
    [(CompassView *)v5 bounds];
    v11 = [(CompassLabelsView *)v10 initWithFrame:?];
    compassLabelsView = v5->_compassLabelsView;
    v5->_compassLabelsView = v11;

    [(CompassLabelsView *)v5->_compassLabelsView setDegreesRadius:sub_10000257C(width)];
    [(CompassLabelsView *)v5->_compassLabelsView setDirectionLabelRadius:sub_10000259C(width * 0.949999988)];
    [(CompassLabelsView *)v5->_compassLabelsView setBearingLabelRadius:sub_1000025BC(width)];
    v13 = [CompassTriangleView alloc];
    [(CompassView *)v5 bounds];
    v14 = [(CompassTriangleView *)v13 initWithFrame:?];
    compassTriangleView = v5->_compassTriangleView;
    v5->_compassTriangleView = v14;

    [(CompassTriangleView *)v5->_compassTriangleView setTriangleRadius:sub_1000025DC(width)];
    v16 = [CompassBearingView alloc];
    [(CompassView *)v5 bounds];
    v17 = [(CompassBearingView *)v16 initWithFrame:?];
    compassBearingView = v5->_compassBearingView;
    v5->_compassBearingView = v17;

    [(CompassView *)v5 addSubview:v5->_compassBackground];
    [(CompassView *)v5 addSubview:v5->_compassBearingView];
    [(CompassView *)v5 addSubview:v5->_compassLabelsView];
    [(CompassView *)v5 addSubview:v5->_compassTriangleView];
    v19 = [[UITapGestureRecognizer alloc] initWithTarget:v5 action:"tappedCompass:"];
    tapRecognizer = v5->_tapRecognizer;
    v5->_tapRecognizer = v19;

    [(CompassView *)v5 addGestureRecognizer:v5->_tapRecognizer];
    if (+[UIApplication shouldMakeUIForDefaultPNG])
    {
      [(CompassBearingView *)v5->_compassBearingView setHidden:1];
      [(CompassLabelsView *)v5->_compassLabelsView setHidden:1];
      [(CompassTriangleView *)v5->_compassTriangleView setHidden:1];
    }
  }

  return v5;
}

- (void)tappedCompass:(id)a3
{
  if (self->_hasBearing)
  {
    [(CompassView *)self unsetBearing];
  }

  else
  {
    [(CompassView *)self setBearing];
  }
}

- (void)setBearing
{
  self->_hasBearing = 1;
  [(CompassBearingView *)self->_compassBearingView setBearing:trunc(self->_compassHeading)];
  [(CompassLabelsView *)self->_compassLabelsView setBearing:1 animated:trunc(self->_compassHeading)];
  compassBackground = self->_compassBackground;
  v4 = trunc(self->_compassHeading);

  [(CompassBackgroundView *)compassBackground setBearing:v4];
}

- (void)unsetBearing
{
  self->_hasBearing = 0;
  [(CompassBearingView *)self->_compassBearingView setBearing:1.79769313e308];
  [(CompassLabelsView *)self->_compassLabelsView setBearing:1 animated:1.79769313e308];
  compassBackground = self->_compassBackground;

  [(CompassBackgroundView *)compassBackground setBearing:1.79769313e308];
}

- (void)setCompassHeading:(double)a3
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(CompassBackgroundView *)self->_compassBackground setCompassHeading:a3];
  [(CompassLabelsView *)self->_compassLabelsView setCompassHeading:a3];
  [(CompassTriangleView *)self->_compassTriangleView setCompassHeading:a3];
  [(CompassBearingView *)self->_compassBearingView setCompassHeading:a3];
  +[CATransaction commit];
  self->_compassHeading = a3;
  self->_needsDisplay = 1;
}

@end