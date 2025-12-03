@interface SimpleContaineeAction
- (NSString)accessibilityIdentifier;
- (NSString)labelAccessibilityIdentifier;
- (void)setTitle:(id)title;
@end

@implementation SimpleContaineeAction

- (NSString)labelAccessibilityIdentifier
{
  if (!self->_labelAccessibilityIdentifier)
  {
    title = [(SimpleContaineeAction *)self title];
    v4 = [title length];

    if (v4)
    {
      title2 = [(SimpleContaineeAction *)self title];
      labelAccessibilityIdentifier = self->_labelAccessibilityIdentifier;
      self->_labelAccessibilityIdentifier = title2;
    }
  }

  v7 = self->_labelAccessibilityIdentifier;

  return v7;
}

- (NSString)accessibilityIdentifier
{
  if (!self->_accessibilityIdentifier)
  {
    title = [(SimpleContaineeAction *)self title];
    v4 = [title length];

    if (v4)
    {
      title2 = [(SimpleContaineeAction *)self title];
      v6 = [title2 stringByReplacingOccurrencesOfString:@" " withString:&stru_1016631F0];

      v7 = [NSString stringWithFormat:@"%@Action", v6];
      accessibilityIdentifier = self->_accessibilityIdentifier;
      self->_accessibilityIdentifier = v7;
    }
  }

  v9 = self->_accessibilityIdentifier;

  return v9;
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  accessibilityIdentifier = self->_accessibilityIdentifier;
  self->_accessibilityIdentifier = 0;

  labelAccessibilityIdentifier = self->_labelAccessibilityIdentifier;
  self->_labelAccessibilityIdentifier = 0;
}

@end