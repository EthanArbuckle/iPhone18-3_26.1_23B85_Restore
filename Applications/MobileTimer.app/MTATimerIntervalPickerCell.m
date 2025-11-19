@interface MTATimerIntervalPickerCell
- (UILabel)textLabel;
@end

@implementation MTATimerIntervalPickerCell

- (UILabel)textLabel
{
  textLabel = self->_textLabel;
  if (!textLabel)
  {
    v4 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(MTATimerIntervalPickerCell *)self setTextLabel:v4];

    [(UILabel *)self->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(UILabel *)self->_textLabel setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(UILabel *)self->_textLabel setContentCompressionResistancePriority:0 forAxis:v6];
    [(MTATimerIntervalPickerCell *)self addSubview:self->_textLabel];
    v7 = [(MTATimerIntervalPickerCell *)self mtui_isRTL];
    v18 = [(UILabel *)self->_textLabel centerYAnchor];
    v8 = [(MTATimerIntervalPickerCell *)self centerYAnchor];
    v9 = [v18 constraintEqualToAnchor:v8];
    v19[0] = v9;
    v10 = [(UILabel *)self->_textLabel heightAnchor];
    v11 = [v10 constraintEqualToConstant:32.0];
    v19[1] = v11;
    v12 = [(UILabel *)self->_textLabel trailingAnchor];
    v13 = [(MTATimerIntervalPickerCell *)self leadingAnchor];
    v14 = 47.0;
    if (v7)
    {
      v14 = 51.0;
    }

    v15 = [v12 constraintEqualToAnchor:v13 constant:v14];
    v19[2] = v15;
    v16 = [NSArray arrayWithObjects:v19 count:3];
    [NSLayoutConstraint activateConstraints:v16];

    textLabel = self->_textLabel;
  }

  return textLabel;
}

@end