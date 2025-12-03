@interface NavTrafficIncidentDetailsView
- (NavTrafficIncidentDetailsView)initWithFrame:(CGRect)frame;
- (id)_initialConstraints;
- (void)_setupViews;
- (void)setPrimaryLabelText:(id)text;
@end

@implementation NavTrafficIncidentDetailsView

- (void)setPrimaryLabelText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v5 = objc_alloc_init(NSMutableParagraphStyle);
    v6 = [UIFont _maps_systemFontWithFixedSize:20.0];
    [v6 lineHeight];
    [v5 setLineSpacing:24.0 - v7];

    v8 = [NSAttributedString alloc];
    v11 = NSParagraphStyleAttributeName;
    v12 = v5;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v10 = [v8 initWithString:textCopy attributes:v9];
    [(UILabel *)self->_primaryLabel setAttributedText:v10];
  }

  else
  {
    [(UILabel *)self->_primaryLabel setAttributedText:0];
  }
}

- (id)_initialConstraints
{
  leadingAnchor = [(UILabel *)self->_primaryLabel leadingAnchor];
  leadingAnchor2 = [(NavTrafficIncidentDetailsView *)self leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:21.0];
  v26[0] = v23;
  trailingAnchor = [(UILabel *)self->_primaryLabel trailingAnchor];
  trailingAnchor2 = [(NavTrafficIncidentDetailsView *)self trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v26[1] = v20;
  leadingAnchor3 = [(UILabel *)self->_secondaryLabel leadingAnchor];
  leadingAnchor4 = [(UILabel *)self->_primaryLabel leadingAnchor];
  v17 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v26[2] = v17;
  trailingAnchor3 = [(UILabel *)self->_secondaryLabel trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_primaryLabel trailingAnchor];
  v14 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v26[3] = v14;
  firstBaselineAnchor = [(UILabel *)self->_primaryLabel firstBaselineAnchor];
  topAnchor = [(NavTrafficIncidentDetailsView *)self topAnchor];
  v5 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:40.0];
  v26[4] = v5;
  firstBaselineAnchor2 = [(UILabel *)self->_secondaryLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UILabel *)self->_primaryLabel lastBaselineAnchor];
  v8 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:44.0];
  v26[5] = v8;
  bottomAnchor = [(NavTrafficIncidentDetailsView *)self bottomAnchor];
  lastBaselineAnchor2 = [(UILabel *)self->_secondaryLabel lastBaselineAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor2 constant:35.0];
  v26[6] = v11;
  v12 = [NSArray arrayWithObjects:v26 count:7];

  return v12;
}

- (void)_setupViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v7;

  [(UILabel *)self->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [UIFont _maps_systemFontWithFixedSize:20.0];
  [(UILabel *)self->_primaryLabel setFont:v9];

  [(UILabel *)self->_primaryLabel setNumberOfLines:0];
  [(UILabel *)self->_primaryLabel setLineBreakStrategy:0];
  v10 = +[UIColor labelColor];
  [(UILabel *)self->_primaryLabel setTextColor:v10];

  [(UILabel *)self->_primaryLabel setAccessibilityIdentifier:@"PrimaryLabel"];
  [(NavTrafficIncidentDetailsView *)self addSubview:self->_primaryLabel];
  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v11;

  [(UILabel *)self->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [UIFont _maps_systemFontWithFixedSize:20.0];
  [(UILabel *)self->_secondaryLabel setFont:v13];

  [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  [(UILabel *)self->_secondaryLabel setLineBreakStrategy:0];
  v14 = +[UIColor labelColor];
  [(UILabel *)self->_secondaryLabel setTextColor:v14];

  [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:@"SecondaryLabel"];
  v15 = self->_secondaryLabel;

  [(NavTrafficIncidentDetailsView *)self addSubview:v15];
}

- (NavTrafficIncidentDetailsView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NavTrafficIncidentDetailsView;
  v3 = [(NavTrafficIncidentDetailsView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NavTrafficIncidentDetailsView *)v3 _setupViews];
    [(NavTrafficIncidentDetailsView *)v4 setAccessibilityIdentifier:@"NavTrafficIncidentDetailsView"];
    _initialConstraints = [(NavTrafficIncidentDetailsView *)v4 _initialConstraints];
    [NSLayoutConstraint activateConstraints:_initialConstraints];
  }

  return v4;
}

@end