@interface CarSmallWidgetNoContentView
- (CarSmallWidgetNoContentView)initWithCoder:(id)a3;
- (CarSmallWidgetNoContentView)initWithFrame:(CGRect)a3;
- (void)_commonInit;
@end

@implementation CarSmallWidgetNoContentView

- (void)_commonInit
{
  [(CarSmallWidgetNoContentView *)self setAccessibilityIdentifier:@"CarSmallWidgetNoContentView"];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  noContentLabel = self->_noContentLabel;
  self->_noContentLabel = v3;

  [(UILabel *)self->_noContentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [UIFont systemFontOfSize:17.0];
  [(UILabel *)self->_noContentLabel setFont:v5];

  [(UILabel *)self->_noContentLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_noContentLabel setMinimumScaleFactor:0.600000024];
  [(UILabel *)self->_noContentLabel setNumberOfLines:0];
  [(UILabel *)self->_noContentLabel setTextAlignment:1];
  v6 = +[UIColor labelColor];
  [(UILabel *)self->_noContentLabel setTextColor:v6];

  [(UILabel *)self->_noContentLabel setAccessibilityIdentifier:@"NoContentLabel"];
  [(CarSmallWidgetNoContentView *)self addSubview:self->_noContentLabel];
  v7 = [(UILabel *)self->_noContentLabel _maps_constraintsForCenteringInView:self edgeInsets:6.0, 6.0, 6.0, 6.0];
  [NSLayoutConstraint activateConstraints:v7];

  v9 = +[NSBundle mainBundle];
  v8 = [v9 localizedStringForKey:@"CarPlay_Dashboard_NoContentLabel" value:@"localized string not found" table:0];
  [(UILabel *)self->_noContentLabel setText:v8];
}

- (CarSmallWidgetNoContentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetNoContentView;
  v3 = [(CarSmallWidgetNoContentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CarSmallWidgetNoContentView *)v3 _commonInit];
  }

  return v4;
}

- (CarSmallWidgetNoContentView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetNoContentView;
  v3 = [(CarSmallWidgetNoContentView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CarSmallWidgetNoContentView *)v3 _commonInit];
  }

  return v4;
}

@end