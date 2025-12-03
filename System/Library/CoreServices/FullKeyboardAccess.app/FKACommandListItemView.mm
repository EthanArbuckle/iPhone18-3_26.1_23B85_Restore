@interface FKACommandListItemView
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation FKACommandListItemView

- (id)accessibilityLabel
{
  arrangedSubviews = [(FKACommandListItemView *)self arrangedSubviews];
  v4 = [arrangedSubviews count];

  if (v4 != 2)
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100014424(v5);
    }
  }

  arrangedSubviews2 = [(FKACommandListItemView *)self arrangedSubviews];
  firstObject = [arrangedSubviews2 firstObject];
  accessibilityLabel = [firstObject accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  arrangedSubviews = [(FKACommandListItemView *)self arrangedSubviews];
  v4 = [arrangedSubviews count];

  if (v4 != 2)
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100014424(v5);
    }
  }

  arrangedSubviews2 = [(FKACommandListItemView *)self arrangedSubviews];
  lastObject = [arrangedSubviews2 lastObject];
  accessibilityLabel = [lastObject accessibilityLabel];

  return accessibilityLabel;
}

@end