@interface LPARAssetProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation LPARAssetProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPARAssetProperties allocWithZone:zone];
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
  v11.receiver = self;
  v11.super_class = LPARAssetProperties;
  if ([(LPVisualMediaProperties *)&v11 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accessibilityText = [equalCopy accessibilityText];
      accessibilityText2 = [(LPVisualMediaProperties *)self accessibilityText];
      v8 = accessibilityText;
      v9 = accessibilityText2;
      if (v8 | v9)
      {
        v5 = [v8 isEqual:v9];
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end