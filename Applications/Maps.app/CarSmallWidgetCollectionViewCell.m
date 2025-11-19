@interface CarSmallWidgetCollectionViewCell
- (CarFocusableCollectionItemDelegate)delegate;
- (CarSmallWidgetCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)focusableItemSelected;
@end

@implementation CarSmallWidgetCollectionViewCell

- (CarFocusableCollectionItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained((&self->super._focusOverridden + 1));

  return WeakRetained;
}

- (void)focusableItemSelected
{
  v3 = [(CarSmallWidgetCollectionViewCell *)self delegate];
  [v3 didSelectFocusableCollectionCell:self];
}

- (CarSmallWidgetCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetCollectionViewCell;
  v3 = [(CarShortcutCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_focusColorDidChange" name:CRSUIDashboardWidgetWindowFocusHighlightColorDidChangeNotification object:0];

    [(CarSmallWidgetCollectionViewCell *)v3 setAccessibilityIdentifier:@"CarSmallWidgetCollectionViewCell"];
  }

  return v3;
}

@end