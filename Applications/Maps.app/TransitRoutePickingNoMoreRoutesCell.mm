@interface TransitRoutePickingNoMoreRoutesCell
- (TransitRoutePickingNoMoreRoutesCell)init;
- (id)_autolayoutConstraints;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_createSubviews;
- (void)_updateConstraintValues;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setSeparatorStyle:(int64_t)a3;
@end

@implementation TransitRoutePickingNoMoreRoutesCell

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = TransitRoutePickingNoMoreRoutesCell;
  [(TransitRoutePickingNoMoreRoutesCell *)&v4 setHighlighted:0 animated:a4];
}

- (void)setSeparatorStyle:(int64_t)a3
{
  v3.receiver = self;
  v3.super_class = TransitRoutePickingNoMoreRoutesCell;
  [(TransitRoutePickingNoMoreRoutesCell *)&v3 setSeparatorStyle:0];
}

- (void)_updateConstraintValues
{
  v3 = [(_MKUILabel *)self->_noMoreRoutesLabel font];
  [v3 _scaledValueForValue:28.0];
  UIRoundToViewScale();
  [(NSLayoutConstraint *)self->_labelToTopConstraint setConstant:?];
}

- (void)_contentSizeCategoryDidChange:(id)a3
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
  v3 = [(RoutePickingCell *)&v19 _autolayoutConstraints];
  v4 = [(_MKUILabel *)self->_noMoreRoutesLabel leadingAnchor];
  v5 = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  v9 = [v8 bottomAnchor];
  v10 = [(_MKUILabel *)self->_noMoreRoutesLabel lastBaselineAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:8.0];
  [v3 addObject:v11];

  v12 = [(_MKUILabel *)self->_noMoreRoutesLabel firstBaselineAnchor];
  v13 = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  v14 = [v13 topAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  labelToTopConstraint = self->_labelToTopConstraint;
  self->_labelToTopConstraint = v15;

  [v3 addObject:self->_labelToTopConstraint];
  [(TransitRoutePickingNoMoreRoutesCell *)self _updateConstraintValues];
  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  return v3;
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
  v7 = [(TransitRoutePickingNoMoreRoutesCell *)self contentView];
  [v7 addSubview:self->_noMoreRoutesLabel];

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