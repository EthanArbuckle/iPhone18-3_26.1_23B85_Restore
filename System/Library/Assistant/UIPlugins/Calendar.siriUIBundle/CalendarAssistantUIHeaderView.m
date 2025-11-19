@interface CalendarAssistantUIHeaderView
+ (double)headerHeight;
- (CalendarAssistantUIHeaderView)initWithReuseIdentifier:(id)a3;
- (UILabel)overlayLabel;
- (void)_createSeparators;
- (void)_setUpBackgroundView;
@end

@implementation CalendarAssistantUIHeaderView

- (CalendarAssistantUIHeaderView)initWithReuseIdentifier:(id)a3
{
  v15.receiver = self;
  v15.super_class = CalendarAssistantUIHeaderView;
  v3 = [(CalendarAssistantUIHeaderView *)&v15 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(CalendarAssistantUIHeaderView *)v3 _setUpBackgroundView];
    v5 = objc_opt_new();
    calTextLabel = v4->_calTextLabel;
    v4->_calTextLabel = v5;

    v7 = [objc_opt_class() _primaryFont];
    [(UILabel *)v4->_calTextLabel setFont:v7];

    [(UILabel *)v4->_calTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(CalendarAssistantUIHeaderView *)v4 contentView];
    [v8 addSubview:v4->_calTextLabel];

    LODWORD(v9) = 1148846080;
    [(UILabel *)v4->_calTextLabel setContentCompressionResistancePriority:0 forAxis:v9];
    v18 = @"_calTextLabel";
    v19 = v4->_calTextLabel;
    v10 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v11 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(16)-[_calTextLabel]-(7.5)-|", 0, 0, v10);
    [NSLayoutConstraint activateConstraints:v11];

    v16 = @"_calTextLabel";
    v17 = v4->_calTextLabel;
    v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v13 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(16)-[_calTextLabel]-(>=0)-|", 0, 0, v12);
    [NSLayoutConstraint activateConstraints:v13];

    [(CalendarAssistantUIHeaderView *)v4 _createSeparators];
  }

  return v4;
}

+ (double)headerHeight
{
  v2 = [a1 _primaryFont];
  [v2 lineHeight];
  CalCeilToScreenScale();
  v4 = v3;

  return v4;
}

- (void)_createSeparators
{
  v3 = objc_alloc_init(UIView);
  v4 = +[UIColor separatorColor];
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(CalendarAssistantUIHeaderView *)self contentView];
  [v5 addSubview:v3];

  v6 = [(CalendarAssistantUIHeaderView *)self contentView];
  v7 = [NSLayoutConstraint constraintWithItem:v3 attribute:5 relatedBy:0 toItem:v6 attribute:5 multiplier:1.0 constant:0.0];
  v15[0] = v7;
  v8 = [(CalendarAssistantUIHeaderView *)self contentView];
  v9 = [NSLayoutConstraint constraintWithItem:v3 attribute:4 relatedBy:0 toItem:v8 attribute:4 multiplier:1.0 constant:0.0];
  v15[1] = v9;
  v10 = [(CalendarAssistantUIHeaderView *)self contentView];
  v11 = [NSLayoutConstraint constraintWithItem:v3 attribute:7 relatedBy:0 toItem:v10 attribute:7 multiplier:1.0 constant:0.0];
  v15[2] = v11;
  EKUISeparatorLineThickness();
  v13 = [NSLayoutConstraint constraintWithItem:v3 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v12];
  v15[3] = v13;
  v14 = [NSArray arrayWithObjects:v15 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_setUpBackgroundView
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = +[UIColor clearColor];
  [v4 setBackgroundColor:v3];

  [(CalendarAssistantUIHeaderView *)self setBackgroundView:v4];
}

- (UILabel)overlayLabel
{
  overlayLabel = self->_overlayLabel;
  if (!overlayLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_overlayLabel;
    self->_overlayLabel = v4;

    v6 = [UIFont siriui_lightWeightFontWithSize:12.0];
    [(UILabel *)self->_overlayLabel setFont:v6];

    v7 = +[UIColor clearColor];
    [(UILabel *)self->_overlayLabel setBackgroundColor:v7];

    [(CalendarAssistantUIHeaderView *)self addSubview:self->_overlayLabel];
    [(UILabel *)self->_overlayLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_overlayLabel;
    v14 = @"overlay";
    v15 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[overlay]-(16)-|" options:0 metrics:0 views:v9];
    [NSLayoutConstraint activateConstraints:v10];

    v11 = [NSLayoutConstraint constraintWithItem:self->_overlayLabel attribute:11 relatedBy:0 toItem:self->_calTextLabel attribute:11 multiplier:1.0 constant:0.0];
    [v11 setActive:1];

    v12 = [NSLayoutConstraint constraintWithItem:self->_overlayLabel attribute:5 relatedBy:1 toItem:self->_calTextLabel attribute:6 multiplier:1.0 constant:10.0];
    [v12 setActive:1];

    overlayLabel = self->_overlayLabel;
  }

  return overlayLabel;
}

@end