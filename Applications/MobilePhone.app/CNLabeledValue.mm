@interface CNLabeledValue
- (NSString)localizedLabel;
@end

@implementation CNLabeledValue

- (NSString)localizedLabel
{
  label = [(CNLabeledValue *)self label];
  if (label)
  {
    v3 = [objc_opt_class() localizedStringForLabel:label];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end