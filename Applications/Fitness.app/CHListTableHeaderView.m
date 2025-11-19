@interface CHListTableHeaderView
+ (id)_monthYearDateFormatter;
- (CHListTableHeaderView)initWithFrame:(CGRect)a3;
- (CHListTableHeaderView)initWithReuseIdentifier:(id)a3;
- (void)_commonInit;
- (void)constrainViews;
- (void)prepareForReuse;
- (void)setDate:(id)a3;
@end

@implementation CHListTableHeaderView

+ (id)_monthYearDateFormatter
{
  if (qword_1008F9A68 != -1)
  {
    sub_10069C774();
  }

  v3 = qword_1008F9A60;

  return v3;
}

- (CHListTableHeaderView)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = CHListTableHeaderView;
  v3 = [(CHListTableHeaderView *)&v6 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(CHListTableHeaderView *)v3 _commonInit];
  }

  return v4;
}

- (CHListTableHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CHListTableHeaderView;
  v3 = [(CHListTableHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CHListTableHeaderView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  if (_UISolariumEnabled())
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  else
  {
    v7 = [UIView alloc];
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    v9 = +[UIColor blackColor];
    [v8 setBackgroundColor:v9];

    [(CHListTableHeaderView *)self setBackgroundView:v8];
  }

  v17 = +[UIListContentConfiguration extraProminentInsetGroupedHeaderConfiguration];
  [v17 directionalLayoutMargins];
  [(CHListTableHeaderView *)self setDirectionalLayoutMargins:?];
  v10 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
  dateLabel = self->_dateLabel;
  self->_dateLabel = v10;

  [(UILabel *)self->_dateLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_dateLabel setAdjustsFontSizeToFitWidth:1];
  v12 = [v17 textProperties];
  v13 = [v12 font];
  [(UILabel *)self->_dateLabel setFont:v13];

  v14 = +[UIColor labelColor];
  [(UILabel *)self->_dateLabel setTextColor:v14];

  v15 = +[UIColor clearColor];
  [(UILabel *)self->_dateLabel setBackgroundColor:v15];

  v16 = [(CHListTableHeaderView *)self contentView];
  [v16 addSubview:self->_dateLabel];

  [(CHListTableHeaderView *)self constrainViews];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CHListTableHeaderView;
  [(CHListTableHeaderView *)&v3 prepareForReuse];
  [(UILabel *)self->_dateLabel setText:0];
}

- (void)setDate:(id)a3
{
  v4 = a3;
  v6 = [objc_opt_class() _monthYearDateFormatter];
  v5 = [v6 stringFromDate:v4];

  [(UILabel *)self->_dateLabel setText:v5];
  [(CHListTableHeaderView *)self setNeedsLayout];
}

- (void)constrainViews
{
  v3 = [(UILabel *)self->_dateLabel topAnchor];
  v4 = [(CHListTableHeaderView *)self contentView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5 constant:14.0];

  v7 = [(UILabel *)self->_dateLabel leadingAnchor];
  v8 = [(CHListTableHeaderView *)self contentView];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor:v9 constant:15.0];

  v11 = [(UILabel *)self->_dateLabel trailingAnchor];
  v12 = [(CHListTableHeaderView *)self contentView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:-15.0];

  v15 = [(UILabel *)self->_dateLabel topAnchor];
  v16 = [(CHListTableHeaderView *)self contentView];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17 constant:-0.0];

  LODWORD(v19) = 1132068864;
  [v18 setPriority:v19];
  v21[0] = v6;
  v21[1] = v10;
  v21[2] = v14;
  v21[3] = v18;
  v20 = [NSArray arrayWithObjects:v21 count:4];
  [NSLayoutConstraint activateConstraints:v20];
}

@end