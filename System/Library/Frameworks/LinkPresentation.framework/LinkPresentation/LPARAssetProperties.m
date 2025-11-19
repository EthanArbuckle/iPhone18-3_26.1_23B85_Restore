@interface LPARAssetProperties
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation LPARAssetProperties

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPARAssetProperties allocWithZone:a3];
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
  v11.receiver = self;
  v11.super_class = LPARAssetProperties;
  if ([(LPVisualMediaProperties *)&v11 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 accessibilityText];
      v7 = [(LPVisualMediaProperties *)self accessibilityText];
      v8 = v6;
      v9 = v7;
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