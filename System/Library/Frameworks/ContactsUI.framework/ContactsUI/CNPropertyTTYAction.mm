@interface CNPropertyTTYAction
- (void)performActionForItem:(id)a3 sender:(id)a4;
@end

@implementation CNPropertyTTYAction

- (void)performActionForItem:(id)a3 sender:(id)a4
{
  v19 = a3;
  v4 = [v19 labeledValue];
  v5 = [v4 value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v19;
  if (isKindOfClass)
  {
    v8 = [v19 labeledValue];
    v9 = [v8 value];

    v10 = [v9 stringValue];
    v11 = [v19 contact];
    if (![v10 length])
    {
LABEL_9:

      v7 = v19;
      goto LABEL_10;
    }

    v12 = [objc_alloc(MEMORY[0x1E6996A90]) initWithStringValue:v10 type:2];
    v13 = [v19 delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v19 delegate];
      v16 = [v15 geminiDataSource];
      v17 = [v16 channelIdentifier];

      if ((*(*MEMORY[0x1E6996568] + 16))())
      {
      }

      else
      {
        v18 = [MEMORY[0x1E695DFF8] _cnui_ttyURLWithHandle:v12 contact:v11 channelIdentifier:v17];

        if (v18)
        {
LABEL_8:
          [*MEMORY[0x1E69DDA98] openURL:v18 withCompletionHandler:0];

          goto LABEL_9;
        }
      }
    }

    v18 = [MEMORY[0x1E695DFF8] _cnui_ttyURLWithHandle:v12 contact:v11];
    goto LABEL_8;
  }

LABEL_10:
}

@end