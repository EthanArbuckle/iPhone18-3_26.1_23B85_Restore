@interface SimpleContaineeAction
- (NSString)accessibilityIdentifier;
- (NSString)labelAccessibilityIdentifier;
- (void)setTitle:(id)a3;
@end

@implementation SimpleContaineeAction

- (NSString)labelAccessibilityIdentifier
{
  if (!self->_labelAccessibilityIdentifier)
  {
    v3 = [(SimpleContaineeAction *)self title];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [(SimpleContaineeAction *)self title];
      labelAccessibilityIdentifier = self->_labelAccessibilityIdentifier;
      self->_labelAccessibilityIdentifier = v5;
    }
  }

  v7 = self->_labelAccessibilityIdentifier;

  return v7;
}

- (NSString)accessibilityIdentifier
{
  if (!self->_accessibilityIdentifier)
  {
    v3 = [(SimpleContaineeAction *)self title];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [(SimpleContaineeAction *)self title];
      v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_1016631F0];

      v7 = [NSString stringWithFormat:@"%@Action", v6];
      accessibilityIdentifier = self->_accessibilityIdentifier;
      self->_accessibilityIdentifier = v7;
    }
  }

  v9 = self->_accessibilityIdentifier;

  return v9;
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

  accessibilityIdentifier = self->_accessibilityIdentifier;
  self->_accessibilityIdentifier = 0;

  labelAccessibilityIdentifier = self->_labelAccessibilityIdentifier;
  self->_labelAccessibilityIdentifier = 0;
}

@end