@interface FKACommandListItemView
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation FKACommandListItemView

- (id)accessibilityLabel
{
  v3 = [(FKACommandListItemView *)self arrangedSubviews];
  v4 = [v3 count];

  if (v4 != 2)
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100014424(v5);
    }
  }

  v6 = [(FKACommandListItemView *)self arrangedSubviews];
  v7 = [v6 firstObject];
  v8 = [v7 accessibilityLabel];

  return v8;
}

- (id)accessibilityValue
{
  v3 = [(FKACommandListItemView *)self arrangedSubviews];
  v4 = [v3 count];

  if (v4 != 2)
  {
    v5 = FKALogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_100014424(v5);
    }
  }

  v6 = [(FKACommandListItemView *)self arrangedSubviews];
  v7 = [v6 lastObject];
  v8 = [v7 accessibilityLabel];

  return v8;
}

@end