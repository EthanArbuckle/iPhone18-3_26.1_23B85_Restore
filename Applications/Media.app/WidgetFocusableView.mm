@interface WidgetFocusableView
- (void)focusableItemFocused:(BOOL)focused;
- (void)focusableItemPressed:(BOOL)pressed;
- (void)focusableItemSelected;
- (void)layoutSubviews;
@end

@implementation WidgetFocusableView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100074B08();
}

- (void)focusableItemPressed:(BOOL)pressed
{
  selfCopy = self;
  sub_100074C28(pressed);
}

- (void)focusableItemSelected
{
  selfCopy = self;
  sub_100074DD4();
}

- (void)focusableItemFocused:(BOOL)focused
{
  selfCopy = self;
  sub_100074F9C(focused);
}

@end