@interface _MFFontToFontDescriptorTransformer
- (id)transformValue:(id)value inverse:(BOOL)inverse;
@end

@implementation _MFFontToFontDescriptorTransformer

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
        fontDescriptor = [MEMORY[0x1E69DB878] fontWithDescriptor:valueCopy size:0.0];
LABEL_7:
        v7 = fontDescriptor;
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        fontDescriptor = [valueCopy fontDescriptor];
        goto LABEL_7;
      }
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end