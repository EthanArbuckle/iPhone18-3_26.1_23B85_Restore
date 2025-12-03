@interface LPVisualMediaProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPVisualMediaProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPVisualMediaProperties allocWithZone:zone];
  if (v4)
  {
    accessibilityText = [(LPVisualMediaProperties *)self accessibilityText];
    v6 = [accessibilityText copy];
    [(LPVisualMediaProperties *)v4 setAccessibilityText:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = LPVisualMediaProperties;
  if ([(LPVisualMediaProperties *)&v7 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_3(equalCopy[1], self->_accessibilityText);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end