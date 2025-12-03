@interface TransitSchedulesDepartureInfoViewCell
- (TransitSchedulesDepartureInfoViewCell)initWithFrame:(CGRect)frame;
- (void)setContent:(id)content;
- (void)setTitle:(id)title;
@end

@implementation TransitSchedulesDepartureInfoViewCell

- (void)setContent:(id)content
{
  contentCopy = content;
  if (![(NSString *)self->_content isEqualToString:?])
  {
    v4 = [contentCopy copy];
    content = self->_content;
    self->_content = v4;

    [(UILabel *)self->_subtitleLabel setText:self->_content];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    [(UILabel *)self->_titleLabel setText:self->_title];
  }
}

- (TransitSchedulesDepartureInfoViewCell)initWithFrame:(CGRect)frame
{
  v40.receiver = self;
  v40.super_class = TransitSchedulesDepartureInfoViewCell;
  v3 = [(TransitSchedulesDepartureInfoViewCell *)&v40 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(TransitSchedulesDepartureInfoViewCell *)v3 setBackgroundColor:v4];

    contentView = [(TransitSchedulesDepartureInfoViewCell *)v3 contentView];
    v6 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v10 = [v6 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v10;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v12];

    [DynamicTypeWizard autorefreshLabel:v3->_titleLabel withFontProvider:&stru_10165D968];
    [contentView addSubview:v3->_titleLabel];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v13;

    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor labelColor];
    [(UILabel *)v3->_subtitleLabel setTextColor:v15];

    [DynamicTypeWizard autorefreshLabel:v3->_subtitleLabel withFontProvider:&stru_10165DA88];
    [contentView addSubview:v3->_subtitleLabel];
    topAnchor = [(UILabel *)v3->_titleLabel topAnchor];
    topAnchor2 = [contentView topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
    v41[0] = v37;
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v41[1] = v34;
    trailingAnchor = [(UILabel *)v3->_titleLabel trailingAnchor];
    v31 = contentView;
    trailingAnchor2 = [contentView trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v41[2] = v30;
    topAnchor3 = [(UILabel *)v3->_subtitleLabel topAnchor];
    bottomAnchor = [(UILabel *)v3->_titleLabel bottomAnchor];
    v27 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:5.0];
    v41[3] = v27;
    bottomAnchor2 = [(UILabel *)v3->_subtitleLabel bottomAnchor];
    bottomAnchor3 = [contentView bottomAnchor];
    v17 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-12.0];
    v41[4] = v17;
    leadingAnchor3 = [(UILabel *)v3->_subtitleLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v20 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v41[5] = v20;
    trailingAnchor3 = [(UILabel *)v3->_subtitleLabel trailingAnchor];
    trailingAnchor4 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v23 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v41[6] = v23;
    v24 = [NSArray arrayWithObjects:v41 count:7];
    [NSLayoutConstraint activateConstraints:v24];
  }

  return v3;
}

@end