@interface CNStaticIdentityEditingCell
+ (id)supportedPasteboardTypes;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)copy:(id)a3;
@end

@implementation CNStaticIdentityEditingCell

+ (id)supportedPasteboardTypes
{
  if (supportedPasteboardTypes_cn_once_token_1 != -1)
  {
    dispatch_once(&supportedPasteboardTypes_cn_once_token_1, &__block_literal_global_11571);
  }

  v3 = supportedPasteboardTypes_cn_once_object_1;

  return v3;
}

void __55__CNStaticIdentityEditingCell_supportedPasteboardTypes__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69638B0];
  v3[0] = *MEMORY[0x1E6963870];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = supportedPasteboardTypes_cn_once_object_1;
  supportedPasteboardTypes_cn_once_object_1 = v1;
}

- (void)copy:(id)a3
{
  v4 = [a3 identity];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v3 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v3 setString:v4];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v5 = a4;
  if (sel_copy_ == a3)
  {
    v6 = 1;
  }

  else if (sel_paste_ == a3)
  {
    v7 = [MEMORY[0x1E69DCD50] generalPasteboard];
    v8 = [objc_opt_class() supportedPasteboardTypes];
    v6 = [v7 containsPasteboardTypes:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end