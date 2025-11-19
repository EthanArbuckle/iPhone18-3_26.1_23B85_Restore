@interface LPVisualMediaProperties
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LPVisualMediaProperties

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPVisualMediaProperties allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPVisualMediaProperties *)self accessibilityText];
    v6 = [v5 copy];
    [(LPVisualMediaProperties *)v4 setAccessibilityText:v6];

    v7 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LPVisualMediaProperties;
  if ([(LPVisualMediaProperties *)&v7 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objectsAreEqual_3(v4[1], self->_accessibilityText);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end