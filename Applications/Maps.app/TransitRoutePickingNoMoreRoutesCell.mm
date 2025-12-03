@interface TransitRoutePickingNoMoreRoutesCell
- (TransitRoutePickingNoMoreRoutesCell)init;
- (id)_autolayoutConstraints;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_createSubviews;
- (void)_updateConstraintValues;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation TransitRoutePickingNoMoreRoutesCell

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = TransitRoutePickingNoMoreRoutesCell;
  [(TransitRoutePickingNoMoreRoutesCell *)&v4 setHighlighted:0 animated:animated];
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = TransitRoutePickingNoMoreRoutesCell;
  [(TransitRoutePickingNoMoreRoutesCell *)&v3 setSeparatorStyle:0];
}

- (void)_updateConstraintValues
{
  font = [(_MKUILabel *)self->_noMoreRoutesLabel font];
  [font _scaledValueForValue:28.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_labelToTopConstraint setConstant:?];
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  v4 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubhead addingSymbolicTraits:0];
  [(_MKUILabel *)self->_noMoreRoutesLabel setFont:v4];

  [(TransitRoutePickingNoMoreRoutesCell *)self _updateConstraintValues];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TransitRoutePickingNoMoreRoutesCell;
  [(TransitRoutePickingNoMoreRoutesCell *)&v3 didMoveToWindow];
  [(TransitRoutePickingNoMoreRoutesCell *)self _updateConstraintValues];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = TransitRoutePickingNoMoreRoutesCell;
  [(TransitRoutePickingNoMoreRoutesCell *)&v4 dealloc];
}

- (id)_autolayoutConstraints
{
  v19.receiver = self;
  v19.super_class = TransitRoutePickingNoMoreRoutesCell;
  _autolayoutConstraints = [(RoutePickingCell *)&v19 _autolayoutConstraints];
  leadingAnchor = [(_MKUILabel *)self->_noMoreRoutesLabel leadingAnchor];
  contentView = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [_autolayoutConstraints addObject:v7];

  contentView2 = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  bottomAnchor = [contentView2 bottomAnchor];
  lastBaselineAnchor = [(_MKUILabel *)self->_noMoreRoutesLabel lastBaselineAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:8.0];
  [_autolayoutConstraints addObject:v11];

  firstBaselineAnchor = [(_MKUILabel *)self->_noMoreRoutesLabel firstBaselineAnchor];
  contentView3 = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  v15 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  labelToTopConstraint = self->_labelToTopConstraint;
  self->_labelToTopConstraint = v15;

  [_autolayoutConstraints addObject:self->_labelToTopConstraint];
  [(TransitRoutePickingNoMoreRoutesCell *)self _updateConstraintValues];
  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  return _autolayoutConstraints;
}

- (void)_createSubviews
{
  v10.receiver = self;
  v10.super_class = TransitRoutePickingNoMoreRoutesCell;
  [(RoutePickingCell *)&v10 _createSubviews];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"TransitRoutePicking_NoMoreRoutes" value:@"localized string not found" table:0];

  v5 = [[_MKUILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  noMoreRoutesLabel = self->_noMoreRoutesLabel;
  self->_noMoreRoutesLabel = v5;

  [(_MKUILabel *)self->_noMoreRoutesLabel setText:v4];
  [(_MKUILabel *)self->_noMoreRoutesLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  [contentView addSubview:self->_noMoreRoutesLabel];

  v8 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleSubhead addingSymbolicTraits:0];
  [(_MKUILabel *)self->_noMoreRoutesLabel setFont:v8];

  v9 = +[UIColor systemGrayColor];
  [(_MKUILabel *)self->_noMoreRoutesLabel setTextColor:v9];
}

- (TransitRoutePickingNoMoreRoutesCell)init
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(RoutePickingCell *)self initWithStyle:0 reuseIdentifier:v4];

  return v5;
}

@end