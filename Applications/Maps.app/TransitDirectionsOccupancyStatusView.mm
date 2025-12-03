@interface TransitDirectionsOccupancyStatusView
- (TransitDirectionsOccupancyStatusView)initWithFrame:(CGRect)frame;
- (id)bottomView;
- (id)topView;
- (void)_updateContent;
- (void)setOccupancyStatus:(int64_t)status;
@end

@implementation TransitDirectionsOccupancyStatusView

- (void)_updateContent
{
  occupancyStatus = [(TransitDirectionsOccupancyStatusView *)self occupancyStatus];
  if (occupancyStatus > 4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v4 = *(&off_1016270D0 + occupancyStatus);
    v7 = [UIImage imageNamed:*(&off_1016270A8 + occupancyStatus)];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:@"localized string not found" table:0];
  }

  [(UIImageView *)self->_imageView setImage:v7];
  [(UILabel *)self->_label setText:v6];
}

- (void)setOccupancyStatus:(int64_t)status
{
  if (self->_occupancyStatus != status)
  {
    self->_occupancyStatus = status;
    [(TransitDirectionsOccupancyStatusView *)self _updateContent];
  }
}

- (id)bottomView
{
  label = self->_label;
  if (!label)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_label;
    self->_label = v4;

    [(UILabel *)self->_label setAccessibilityIdentifier:@"Label"];
    [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_label setAdjustsFontForContentSizeCategory:1];
    v6 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_label setTextColor:v6];

    v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)self->_label setFont:v7];

    [(UILabel *)self->_label setLineBreakMode:0];
    [(UILabel *)self->_label setNumberOfLines:2];
    LODWORD(v8) = 1148846080;
    [(UILabel *)self->_label setContentCompressionResistancePriority:1 forAxis:v8];
    LODWORD(v9) = 1148829696;
    [(UILabel *)self->_label setContentCompressionResistancePriority:0 forAxis:v9];
    LODWORD(v10) = 1148846080;
    [(UILabel *)self->_label setContentHuggingPriority:1 forAxis:v10];
    LODWORD(v11) = 1132068864;
    [(UILabel *)self->_label setContentHuggingPriority:0 forAxis:v11];
    [(TransitDirectionsOccupancyStatusView *)self addSubview:self->_label];
    label = self->_label;
  }

  return label;
}

- (id)topView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [[AutolayoutImageView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_imageView;
    self->_imageView = &v4->super;

    [(UIImageView *)self->_imageView setAccessibilityIdentifier:@"ImageView"];
    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_imageView setContentMode:1];
    LODWORD(v6) = 1148846080;
    [(UIImageView *)self->_imageView setContentHuggingPriority:0 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(UIImageView *)self->_imageView setContentHuggingPriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(UIImageView *)self->_imageView setContentCompressionResistancePriority:1 forAxis:v8];
    LODWORD(v9) = 1148846080;
    [(UIImageView *)self->_imageView setContentCompressionResistancePriority:0 forAxis:v9];
    heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:20.0];
    [v11 setActive:1];

    [(TransitDirectionsOccupancyStatusView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  return imageView;
}

- (TransitDirectionsOccupancyStatusView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = TransitDirectionsOccupancyStatusView;
  v3 = [(TransitDirectionsBoardingInfoStackView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_occupancyStatus = 0;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(TransitDirectionsOccupancyStatusView *)v4 setAccessibilityIdentifier:v6];

    [(TransitDirectionsOccupancyStatusView *)v4 _updateContent];
  }

  return v4;
}

@end