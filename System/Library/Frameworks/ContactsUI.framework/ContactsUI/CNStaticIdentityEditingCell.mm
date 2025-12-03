@interface CNStaticIdentityEditingCell
+ (id)supportedPasteboardTypes;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)copy:(id)copy;
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

- (void)copy:(id)copy
{
  identity = [copy identity];
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setString:identity];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if (sel_copy_ == action)
  {
    v6 = 1;
  }

  else if (sel_paste_ == action)
  {
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    supportedPasteboardTypes = [objc_opt_class() supportedPasteboardTypes];
    v6 = [generalPasteboard containsPasteboardTypes:supportedPasteboardTypes];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end