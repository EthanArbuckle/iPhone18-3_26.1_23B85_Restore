@interface CNContactAddStaticIdentityAction
+ (id)supportedPasteboardTypes;
- (void)performActionWithSender:(id)sender;
@end

@implementation CNContactAddStaticIdentityAction

+ (id)supportedPasteboardTypes
{
  if (supportedPasteboardTypes_cn_once_token_1_51510 != -1)
  {
    dispatch_once(&supportedPasteboardTypes_cn_once_token_1_51510, &__block_literal_global_51511);
  }

  v3 = supportedPasteboardTypes_cn_once_object_1_51512;

  return v3;
}

void __60__CNContactAddStaticIdentityAction_supportedPasteboardTypes__block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69638B0];
  v3[0] = *MEMORY[0x1E6963870];
  v3[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:2];
  v2 = supportedPasteboardTypes_cn_once_object_1_51512;
  supportedPasteboardTypes_cn_once_object_1_51512 = v1;
}

- (void)performActionWithSender:(id)sender
{
  supportedPasteboardTypes = [objc_opt_class() supportedPasteboardTypes];
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  if ([generalPasteboard containsPasteboardTypes:supportedPasteboardTypes])
  {
    v5 = [supportedPasteboardTypes count];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      while (1)
      {
        v8 = [supportedPasteboardTypes objectAtIndexedSubscript:v7];
        v9 = [generalPasteboard valueForPasteboardType:v8];

        if (v9)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v9 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];

      v9 = v10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_opt_class() stringIsValidIdentity:v9])
    {
      objc_opt_class();
      v11 = v9;
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        [(CNContactAddStaticIdentityAction *)self setChosenIdentity:v13];

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  [(CNContactAddStaticIdentityAction *)self setChosenIdentity:@" "];
LABEL_18:
  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];
}

@end