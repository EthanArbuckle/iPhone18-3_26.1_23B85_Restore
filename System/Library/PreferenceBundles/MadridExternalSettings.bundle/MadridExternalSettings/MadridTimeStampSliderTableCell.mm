@interface MadridTimeStampSliderTableCell
- (MadridTimeStampSliderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)newControl;
- (void)layoutSubviews;
@end

@implementation MadridTimeStampSliderTableCell

- (MadridTimeStampSliderTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v27.receiver = self;
  v27.super_class = MadridTimeStampSliderTableCell;
  v5 = [(MadridTimeStampSliderTableCell *)&v27 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = objc_alloc_init(UILabel);
    valueLabel1 = v5->_valueLabel1;
    v5->_valueLabel1 = v6;

    v8 = v5->_valueLabel1;
    v9 = [UIFont systemFontOfSize:12.0];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)v5->_valueLabel1 setText:@"OFF"];
    [(UILabel *)v5->_valueLabel1 sizeToFit];
    contentView = [(MadridTimeStampSliderTableCell *)v5 contentView];
    [contentView addSubview:v5->_valueLabel1];

    v11 = objc_alloc_init(UILabel);
    valueLabel2 = v5->_valueLabel2;
    v5->_valueLabel2 = v11;

    v13 = v5->_valueLabel2;
    v14 = [UIFont systemFontOfSize:12.0];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)v5->_valueLabel2 setText:@"15"];
    [(UILabel *)v5->_valueLabel2 sizeToFit];
    contentView2 = [(MadridTimeStampSliderTableCell *)v5 contentView];
    [contentView2 addSubview:v5->_valueLabel2];

    v16 = objc_alloc_init(UILabel);
    valueLabel3 = v5->_valueLabel3;
    v5->_valueLabel3 = v16;

    v18 = v5->_valueLabel3;
    v19 = [UIFont systemFontOfSize:12.0];
    [(UILabel *)v18 setFont:v19];

    [(UILabel *)v5->_valueLabel3 setText:@"30"];
    [(UILabel *)v5->_valueLabel3 sizeToFit];
    contentView3 = [(MadridTimeStampSliderTableCell *)v5 contentView];
    [contentView3 addSubview:v5->_valueLabel3];

    v21 = objc_alloc_init(UILabel);
    valueLabel4 = v5->_valueLabel4;
    v5->_valueLabel4 = v21;

    v23 = v5->_valueLabel4;
    v24 = [UIFont systemFontOfSize:12.0];
    [(UILabel *)v23 setFont:v24];

    [(UILabel *)v5->_valueLabel4 setText:@"60"];
    [(UILabel *)v5->_valueLabel4 sizeToFit];
    contentView4 = [(MadridTimeStampSliderTableCell *)v5 contentView];
    [contentView4 addSubview:v5->_valueLabel4];
  }

  return v5;
}

- (id)newControl
{
  v2 = [UIColor colorWithWhite:0.596078431 alpha:1.0];
  v3 = [[MadridDiscreteSlider alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MadridDiscreteSlider *)v3 setMinimumTrackTintColor:v2];
  [(MadridDiscreteSlider *)v3 setMaximumTrackTintColor:v2];
  [(MadridDiscreteSlider *)v3 setTrackMarkersColor:v2];

  return v3;
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = MadridTimeStampSliderTableCell;
  [(MadridTimeStampSliderTableCell *)&v45 layoutSubviews];
  contentView = [(MadridTimeStampSliderTableCell *)self contentView];
  [contentView bounds];

  control = [(MadridTimeStampSliderTableCell *)self control];
  [control frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  PSRoundToPixel();
  [control setFrame:{v6, v11, v8, v10}];
  contentView2 = [(MadridTimeStampSliderTableCell *)self contentView];
  [control bounds];
  [control trackRectForBounds:?];
  [contentView2 convertRect:control fromView:?];
  v14 = v13;
  v16 = v15;

  [(UILabel *)self->_valueLabel1 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  PSRoundToPixel();
  [(UILabel *)self->_valueLabel1 setFrame:v14 - v23, v18, v20, v22];
  [(UILabel *)self->_valueLabel1 _setFirstLineBaselineFrameOriginY:40.0];
  [(UILabel *)self->_valueLabel2 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  PSRoundToPixel();
  [(UILabel *)self->_valueLabel2 setFrame:v14 + v16 / 3.0 - v30, v25, v27, v29];
  [(UILabel *)self->_valueLabel2 _setFirstLineBaselineFrameOriginY:40.0];
  [(UILabel *)self->_valueLabel3 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  PSRoundToPixel();
  [(UILabel *)self->_valueLabel3 setFrame:v14 + v16 / 3.0 * 2.0 - v37, v32, v34, v36];
  [(UILabel *)self->_valueLabel3 _setFirstLineBaselineFrameOriginY:40.0];
  [(UILabel *)self->_valueLabel4 frame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  PSRoundToPixel();
  [(UILabel *)self->_valueLabel4 setFrame:v14 + v16 / 3.0 * 3.0 - v44, v39, v41, v43];
  [(UILabel *)self->_valueLabel4 _setFirstLineBaselineFrameOriginY:40.0];
}

@end