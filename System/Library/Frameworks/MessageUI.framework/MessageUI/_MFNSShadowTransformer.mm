@interface _MFNSShadowTransformer
- (id)transformValue:(id)value inverse:(BOOL)inverse;
@end

@implementation _MFNSShadowTransformer

- (id)transformValue:(id)value inverse:(BOOL)inverse
{
  inverseCopy = inverse;
  valueCopy = value;
  if (valueCopy)
  {
    if (inverseCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        shadow = [valueCopy shadow];
LABEL_7:
        v7 = shadow;
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        shadow = [[_MFNSShadow alloc] initWithShadow:valueCopy];
        goto LABEL_7;
      }
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end