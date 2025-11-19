@interface BatteryIconView
+ (id)batteryIconWithLevel:(unint64_t)a3;
- (BatteryIconView)initWithFrame:(CGRect)a3;
- (CGSize)intrinsicContentSize;
- (void)_setupConstraints;
- (void)setLevel:(unint64_t)a3;
@end

@implementation BatteryIconView

- (CGSize)intrinsicContentSize
{
  v2 = 24.0;
  v3 = 11.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setLevel:(unint64_t)a3
{
  v3 = a3;
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || a3 < 0x65)
  {
    if (self->_level != a3)
    {
      self->_level = a3;
      v6 = fmax(a3 * 0.17, 4.0);
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 17.0;
        v3 = 100;
      }

      [(NSLayoutConstraint *)self->_fillWidthConstraint setConstant:v6];
      v7 = [VehicleBatteryView colorForBatteryLevel:v3];
      [(UIImageView *)self->_levelView setTintColor:v7];
      [(UIImageView *)self->_outlineView setTintColor:v7];
      [(BatteryIconView *)self setNeedsLayout];
    }
  }

  else
  {
    v5 = sub_100022C48();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Tried to set %lu level on the battery view.", buf, 0xCu);
    }
  }
}

- (void)_setupConstraints
{
  v3 = +[NSMutableArray array];
  v4 = [(UIImageView *)self->_outlineView _maps_constraintsForCenteringInView:self];
  [v3 addObjectsFromArray:v4];

  v5 = [(UIImageView *)self->_levelView widthAnchor];
  v6 = [v5 constraintEqualToConstant:17.0];
  fillWidthConstraint = self->_fillWidthConstraint;
  self->_fillWidthConstraint = v6;

  v18 = [(UIImageView *)self->_levelView topAnchor];
  v17 = [(UIImageView *)self->_outlineView topAnchor];
  v8 = [v18 constraintEqualToAnchor:v17 constant:2.0];
  v19[0] = v8;
  v9 = [(UIImageView *)self->_levelView leftAnchor];
  v10 = [(UIImageView *)self->_outlineView leftAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:2.0];
  v19[1] = v11;
  v12 = [(UIImageView *)self->_outlineView bottomAnchor];
  v13 = [(UIImageView *)self->_levelView bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:2.0];
  v15 = self->_fillWidthConstraint;
  v19[2] = v14;
  v19[3] = v15;
  v16 = [NSArray arrayWithObjects:v19 count:4];
  [v3 addObjectsFromArray:v16];

  [NSLayoutConstraint activateConstraints:v3];
}

- (BatteryIconView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = BatteryIconView;
  v3 = [(BatteryIconView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v3)
  {
    v4 = [UIImageView alloc];
    v5 = [UIImage imageNamed:@"batteryOutline"];
    v6 = [v5 imageWithRenderingMode:2];
    v7 = [v4 initWithImage:v6];
    outlineView = v3->_outlineView;
    v3->_outlineView = v7;

    [(UIImageView *)v3->_outlineView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BatteryIconView *)v3 addSubview:v3->_outlineView];
    v9 = [UIImageView alloc];
    v10 = [UIImage imageNamed:@"batteryFill"];
    v11 = [v10 imageWithRenderingMode:2];
    v12 = [v9 initWithImage:v11];
    levelView = v3->_levelView;
    v3->_levelView = v12;

    [(UIImageView *)v3->_levelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BatteryIconView *)v3 addSubview:v3->_levelView];
    [(BatteryIconView *)v3 _setupConstraints];
    [(BatteryIconView *)v3 setLevel:0x7FFFFFFFFFFFFFFFLL];
  }

  return v3;
}

+ (id)batteryIconWithLevel:(unint64_t)a3
{
  v4 = [[BatteryIconView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BatteryIconView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BatteryIconView *)v4 setLevel:a3];
  v5 = [(BatteryIconView *)v4 widthAnchor];
  v6 = [v5 constraintEqualToConstant:24.0];
  [(BatteryIconView *)v4 addConstraint:v6];

  v7 = [(BatteryIconView *)v4 heightAnchor];
  v8 = [v7 constraintEqualToConstant:11.0];
  [(BatteryIconView *)v4 addConstraint:v8];

  [(BatteryIconView *)v4 setNeedsLayout];
  [(BatteryIconView *)v4 layoutIfNeeded];
  v9 = [(BatteryIconView *)v4 traitCollection];
  [v9 displayScale];
  v11 = v10;
  v15.width = 24.0;
  v15.height = 11.0;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v11);

  [(BatteryIconView *)v4 drawViewHierarchyInRect:1 afterScreenUpdates:0.0, 0.0, 24.0, 11.0];
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v12;
}

@end