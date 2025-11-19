@interface SiriGKMapButtonView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SiriGKMapButtonView)initWithCoordinate:(CLLocationCoordinate2D)a3 mapSpan:(double)a4 mapTitle:(id)a5;
- (id)mapViewSnippet;
- (void)layoutSubviews;
@end

@implementation SiriGKMapButtonView

- (SiriGKMapButtonView)initWithCoordinate:(CLLocationCoordinate2D)a3 mapSpan:(double)a4 mapTitle:(id)a5
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a5;
  v29.receiver = self;
  v29.super_class = SiriGKMapButtonView;
  v10 = [(SiriGKMapButtonView *)&v29 init];
  v11 = v10;
  if (v10)
  {
    v10->_coordinate.latitude = latitude;
    v10->_coordinate.longitude = longitude;
    v10->_mapSpan = a4;
    v12 = [v9 copy];
    mapSnippetTitleString = v11->_mapSnippetTitleString;
    v11->_mapSnippetTitleString = v12;

    [(SiriGKView *)v11 setEdgeInsets:0.0, SiriUIPlatterStyle[32], 0.0, SiriUIPlatterStyle[34]];
    v14 = +[SiriSharedUIContentLabel label];
    titleLabel = v11->_titleLabel;
    v11->_titleLabel = v14;

    v16 = v11->_titleLabel;
    v17 = SiriGKLocalizedString(@"MAP_BUTTON_TITLE");
    [(SiriSharedUIContentLabel *)v16 setText:v17];

    v18 = v11->_titleLabel;
    v19 = SiriUIIsCompactWidth();
    v20 = 18.0;
    if (v19)
    {
      v20 = 14.0;
    }

    v21 = [UIFont siriui_lightWeightFontWithSize:v20];
    [(SiriSharedUIContentLabel *)v18 setFont:v21];

    [(SiriGKMapButtonView *)v11 addSubview:v11->_titleLabel];
    v22 = [UIImageView alloc];
    v23 = +[UIImage siriui_semiTransparentChevronImage];
    v24 = [v22 initWithImage:v23];
    chevronImageView = v11->_chevronImageView;
    v11->_chevronImageView = v24;

    [(SiriGKMapButtonView *)v11 addSubview:v11->_chevronImageView];
    v26 = +[SiriUIKeyline keyline];
    keyline = v11->_keyline;
    v11->_keyline = v26;

    [(SiriGKMapButtonView *)v11 addSubview:v11->_keyline];
  }

  return v11;
}

- (id)mapViewSnippet
{
  v3 = objc_alloc_init(SAGKMapPod);
  v4 = [NSNumber numberWithDouble:self->_mapSpan];
  [v3 setZoomLevel:v4];

  v5 = objc_alloc_init(SALocation);
  v6 = [NSNumber numberWithDouble:self->_coordinate.latitude];
  [v5 setLatitude:v6];

  v7 = [NSNumber numberWithDouble:self->_coordinate.longitude];
  [v5 setLongitude:v7];

  [v3 setLocation:v5];
  v8 = objc_alloc_init(SAGKSnippet);
  v11 = v3;
  v9 = [NSArray arrayWithObjects:&v11 count:1];
  [v8 setPods:v9];

  [v8 setTitle:self->_mapSnippetTitleString];

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(SiriGKView *)self edgeInsets:a3.width];
  v6 = width - (v4 + v5);
  v7 = SiriUIPlatterStyle[26];
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = SiriGKMapButtonView;
  [(SiriGKMapButtonView *)&v35 layoutSubviews];
  [(SiriGKMapButtonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = +[UIScreen mainScreen];
  [v9 scale];
  SiriUIRectForLabelWithDistanceFromTopToBaseline();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(SiriSharedUIContentLabel *)self->_titleLabel setFrame:v11, v13, v15, v17];
  [(UIImageView *)self->_chevronImageView frame];
  v19 = v18;
  v21 = v20;
  v22 = v4 + v8;
  v23 = SiriUIPlatterStyle[34];
  v24 = +[UIScreen mainScreen];
  [v24 scale];
  if (v25 >= 2.0)
  {
    v26 = 15.5;
  }

  else
  {
    v26 = 16.0;
  }

  [(UIImageView *)self->_chevronImageView setFrame:v22 - v19 - v23, v26, v19, v21];
  keyline = self->_keyline;
  [(SiriGKMapButtonView *)self bounds];
  [(SiriUIKeyline *)keyline sizeThatFits:v28, v29];
  v31 = v30;
  v33 = v32;
  [(SiriGKMapButtonView *)self bounds];
  Height = CGRectGetHeight(v36);
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v31;
  v37.size.height = v33;
  [(SiriUIKeyline *)self->_keyline setFrame:v4, Height - CGRectGetHeight(v37), v31, v33];
}

@end