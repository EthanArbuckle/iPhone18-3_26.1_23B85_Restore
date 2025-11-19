@interface _MFFontToFontDescriptorTransformer
- (id)transformValue:(id)a3 inverse:(BOOL)a4;
@end

@implementation _MFFontToFontDescriptorTransformer

- (id)transformValue:(id)a3 inverse:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
LABEL_7:
        v7 = v6;
        goto LABEL_9;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 fontDescriptor];
        goto LABEL_7;
      }
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end