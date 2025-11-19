@interface WidgetFocusableView
- (void)focusableItemFocused:(BOOL)a3;
- (void)focusableItemPressed:(BOOL)a3;
- (void)focusableItemSelected;
- (void)layoutSubviews;
@end

@implementation WidgetFocusableView

- (void)layoutSubviews
{
  v2 = self;
  sub_100074B08();
}

- (void)focusableItemPressed:(BOOL)a3
{
  v4 = self;
  sub_100074C28(a3);
}

- (void)focusableItemSelected
{
  v2 = self;
  sub_100074DD4();
}

- (void)focusableItemFocused:(BOOL)a3
{
  v4 = self;
  sub_100074F9C(a3);
}

@end