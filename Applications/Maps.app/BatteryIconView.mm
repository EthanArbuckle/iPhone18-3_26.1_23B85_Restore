@interface BatteryIconView
+ (id)batteryIconWithLevel:(unint64_t)level;
- (BatteryIconView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (void)_setupConstraints;
- (void)setLevel:(unint64_t)level;
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

- (void)setLevel:(unint64_t)level
{
  levelCopy = level;
  if (level == 0x7FFFFFFFFFFFFFFFLL || level < 0x65)
  {
    if (self->_level != level)
    {
      self->_level = level;
      v6 = fmax(level * 0.17, 4.0);
      if (level == 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = 17.0;
        levelCopy = 100;
      }

      [(NSLayoutConstraint *)self->_fillWidthConstraint setConstant:v6];
      v7 = [VehicleBatteryView colorForBatteryLevel:levelCopy];
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
      v9 = levelCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Tried to set %lu level on the battery view.", buf, 0xCu);
    }
  }
}

- (void)_setupConstraints
{
  v3 = +[NSMutableArray array];
  v4 = [(UIImageView *)self->_outlineView _maps_constraintsForCenteringInView:self];
  [v3 addObjectsFromArray:v4];

  widthAnchor = [(UIImageView *)self->_levelView widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:17.0];
  fillWidthConstraint = self->_fillWidthConstraint;
  self->_fillWidthConstraint = v6;

  topAnchor = [(UIImageView *)self->_levelView topAnchor];
  topAnchor2 = [(UIImageView *)self->_outlineView topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
  v19[0] = v8;
  leftAnchor = [(UIImageView *)self->_levelView leftAnchor];
  leftAnchor2 = [(UIImageView *)self->_outlineView leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:2.0];
  v19[1] = v11;
  bottomAnchor = [(UIImageView *)self->_outlineView bottomAnchor];
  bottomAnchor2 = [(UIImageView *)self->_levelView bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:2.0];
  v15 = self->_fillWidthConstraint;
  v19[2] = v14;
  v19[3] = v15;
  v16 = [NSArray arrayWithObjects:v19 count:4];
  [v3 addObjectsFromArray:v16];

  [NSLayoutConstraint activateConstraints:v3];
}

- (BatteryIconView)initWithFrame:(CGRect)frame
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

+ (id)batteryIconWithLevel:(unint64_t)level
{
  v4 = [[BatteryIconView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(BatteryIconView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BatteryIconView *)v4 setLevel:level];
  widthAnchor = [(BatteryIconView *)v4 widthAnchor];
  v6 = [widthAnchor constraintEqualToConstant:24.0];
  [(BatteryIconView *)v4 addConstraint:v6];

  heightAnchor = [(BatteryIconView *)v4 heightAnchor];
  v8 = [heightAnchor constraintEqualToConstant:11.0];
  [(BatteryIconView *)v4 addConstraint:v8];

  [(BatteryIconView *)v4 setNeedsLayout];
  [(BatteryIconView *)v4 layoutIfNeeded];
  traitCollection = [(BatteryIconView *)v4 traitCollection];
  [traitCollection displayScale];
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