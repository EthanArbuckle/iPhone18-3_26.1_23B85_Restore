@interface OfflineMapDeviceExplanatoryRowView
- (OfflineMapDeviceExplanatoryRowView)initWithFrame:(CGRect)frame;
- (void)_configureSubviews;
- (void)setText:(id)text;
@end

@implementation OfflineMapDeviceExplanatoryRowView

- (void)setText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_text] & 1) == 0)
  {
    isHidden = [(UILabel *)self->_reasonLabel isHidden];
    v5 = [textCopy copy];
    text = self->_text;
    self->_text = v5;

    [(UILabel *)self->_reasonLabel setText:self->_text];
    [(UILabel *)self->_reasonLabel setHidden:[(NSString *)self->_text length]== 0];
    if (isHidden != [(UILabel *)self->_reasonLabel isHidden])
    {
      if (isHidden)
      {
        v7 = &OBJC_IVAR___OfflineMapDeviceExplanatoryRowView__noValueConstraints;
      }

      else
      {
        v7 = &OBJC_IVAR___OfflineMapDeviceExplanatoryRowView__valueConstraints;
      }

      if (isHidden)
      {
        v8 = &OBJC_IVAR___OfflineMapDeviceExplanatoryRowView__valueConstraints;
      }

      else
      {
        v8 = &OBJC_IVAR___OfflineMapDeviceExplanatoryRowView__noValueConstraints;
      }

      [NSLayoutConstraint deactivateConstraints:*&self->MKViewWithHairline_opaque[*v7]];
      [NSLayoutConstraint activateConstraints:*&self->MKViewWithHairline_opaque[*v8]];
    }
  }
}

- (void)_configureSubviews
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleSubheadline weight:UIFontWeightMedium];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"MAP_DETAILS_STATE_LABEL_WAITING" value:@"localized string not found" table:@"Offline"];
  [(UILabel *)self->_titleLabel setText:v8];

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"RowLabel"];
  [(OfflineMapDeviceExplanatoryRowView *)self addSubview:self->_titleLabel];
  v9 = objc_alloc_init(UILabel);
  reasonLabel = self->_reasonLabel;
  self->_reasonLabel = v9;

  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [(UILabel *)self->_reasonLabel setFont:v11];

  v12 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_reasonLabel setTextColor:v12];

  [(UILabel *)self->_reasonLabel setNumberOfLines:0];
  [(UILabel *)self->_reasonLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_reasonLabel setAccessibilityIdentifier:@"RowValue"];
  [(UILabel *)self->_reasonLabel setHidden:1];
  [(OfflineMapDeviceExplanatoryRowView *)self addSubview:self->_reasonLabel];
  LODWORD(v13) = 1148846080;
  [(UILabel *)self->_reasonLabel setContentCompressionResistancePriority:1 forAxis:v13];
  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor2 = [(OfflineMapDeviceExplanatoryRowView *)self leadingAnchor];
  v14 = kMUPlacePlatterPadding;
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:kMUPlacePlatterPadding];
  v46[0] = v41;
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor2 = [(OfflineMapDeviceExplanatoryRowView *)self topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
  v46[1] = v38;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor2 = [(OfflineMapDeviceExplanatoryRowView *)self trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v14];
  v46[2] = v35;
  leadingAnchor3 = [(UILabel *)self->_reasonLabel leadingAnchor];
  leadingAnchor4 = [(OfflineMapDeviceExplanatoryRowView *)self leadingAnchor];
  v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v14];
  v46[3] = v32;
  topAnchor3 = [(UILabel *)self->_reasonLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v17 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:2.0];
  v46[4] = v17;
  trailingAnchor3 = [(UILabel *)self->_reasonLabel trailingAnchor];
  trailingAnchor4 = [(OfflineMapDeviceExplanatoryRowView *)self trailingAnchor];
  v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-v14];
  v46[5] = v20;
  v21 = [NSArray arrayWithObjects:v46 count:6];
  [NSLayoutConstraint activateConstraints:v21];

  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  bottomAnchor3 = [(OfflineMapDeviceExplanatoryRowView *)self bottomAnchor];
  v24 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-12.0];
  v45 = v24;
  v25 = [NSArray arrayWithObjects:&v45 count:1];
  noValueConstraints = self->_noValueConstraints;
  self->_noValueConstraints = v25;

  bottomAnchor4 = [(UILabel *)self->_reasonLabel bottomAnchor];
  bottomAnchor5 = [(OfflineMapDeviceExplanatoryRowView *)self bottomAnchor];
  v29 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-12.0];
  v44 = v29;
  v30 = [NSArray arrayWithObjects:&v44 count:1];
  valueConstraints = self->_valueConstraints;
  self->_valueConstraints = v30;

  [NSLayoutConstraint activateConstraints:self->_noValueConstraints];
}

- (OfflineMapDeviceExplanatoryRowView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = OfflineMapDeviceExplanatoryRowView;
  v3 = [(OfflineMapDeviceExplanatoryRowView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v4 = v3;
  if (v3)
  {
    text = v3->_text;
    v3->_text = &stru_1016631F0;

    [(OfflineMapDeviceExplanatoryRowView *)v4 _configureSubviews];
    v6 = v4;
  }

  return v4;
}

@end