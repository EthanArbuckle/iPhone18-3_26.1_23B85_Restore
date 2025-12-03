@interface CarSmallWidgetCollectionViewCell
- (CarFocusableCollectionItemDelegate)delegate;
- (CarSmallWidgetCollectionViewCell)initWithFrame:(CGRect)frame;
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
  delegate = [(CarSmallWidgetCollectionViewCell *)self delegate];
  [delegate didSelectFocusableCollectionCell:self];
}

- (CarSmallWidgetCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CarSmallWidgetCollectionViewCell;
  v3 = [(CarShortcutCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_focusColorDidChange" name:CRSUIDashboardWidgetWindowFocusHighlightColorDidChangeNotification object:0];

    [(CarSmallWidgetCollectionViewCell *)v3 setAccessibilityIdentifier:@"CarSmallWidgetCollectionViewCell"];
  }

  return v3;
}

@end