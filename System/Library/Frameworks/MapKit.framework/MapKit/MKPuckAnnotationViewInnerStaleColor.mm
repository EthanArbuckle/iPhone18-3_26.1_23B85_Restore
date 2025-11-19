@interface MKPuckAnnotationViewInnerStaleColor
@end

@implementation MKPuckAnnotationViewInnerStaleColor

id ___MKPuckAnnotationViewInnerStaleColor_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 userInterfaceStyle] == 2)
  {
    v3 = [v2 traitCollectionByModifyingTraits:&__block_literal_global_22_27246];
    v4 = [MEMORY[0x1E69DC888] systemGray2Color];
    v5 = [v4 resolvedColorWithTraitCollection:v3];
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] systemGrayColor];
  }

  return v5;
}

@end