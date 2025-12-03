@interface CNPropertyTTYRelayAction
- (void)performActionForItem:(id)item sender:(id)sender;
@end

@implementation CNPropertyTTYRelayAction

- (void)performActionForItem:(id)item sender:(id)sender
{
  itemCopy = item;
  labeledValue = [itemCopy labeledValue];
  value = [labeledValue value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = itemCopy;
  if (isKindOfClass)
  {
    labeledValue2 = [itemCopy labeledValue];
    value2 = [labeledValue2 value];

    stringValue = [value2 stringValue];
    contact = [itemCopy contact];
    if (![stringValue length])
    {
LABEL_9:

      v7 = itemCopy;
      goto LABEL_10;
    }

    v12 = [objc_alloc(MEMORY[0x1E6996A90]) initWithStringValue:stringValue type:2];
    delegate = [itemCopy delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      delegate2 = [itemCopy delegate];
      geminiDataSource = [delegate2 geminiDataSource];
      channelIdentifier = [geminiDataSource channelIdentifier];

      if ((*(*MEMORY[0x1E6996568] + 16))())
      {
      }

      else
      {
        v18 = [MEMORY[0x1E695DFF8] _cnui_ttyRelayURLWithHandle:v12 contact:contact channelIdentifier:channelIdentifier];

        if (v18)
        {
LABEL_8:
          [*MEMORY[0x1E69DDA98] openURL:v18 withCompletionHandler:0];

          goto LABEL_9;
        }
      }
    }

    v18 = [MEMORY[0x1E695DFF8] _cnui_ttyRelayURLWithHandle:v12 contact:contact];
    goto LABEL_8;
  }

LABEL_10:
}

@end