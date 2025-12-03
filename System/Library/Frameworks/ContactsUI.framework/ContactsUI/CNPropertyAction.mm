@interface CNPropertyAction
+ (void)performDefaultActionForItem:(id)item sender:(id)sender;
- (CNPropertyAction)initWithContact:(id)contact propertyItem:(id)item;
- (CNPropertyAction)initWithContact:(id)contact propertyItems:(id)items;
- (CNPropertyGroupItem)propertyItem;
- (void)performActionForItem:(id)item sender:(id)sender;
- (void)performActionWithSender:(id)sender;
- (void)presentDisambiguationAlertWithSender:(id)sender;
@end

@implementation CNPropertyAction

- (void)presentDisambiguationAlertWithSender:(id)sender
{
  v27 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(CNPropertyAction *)self propertyItems];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        displayValue = [v9 displayValue];
        displayLabel = [v9 displayLabel];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __57__CNPropertyAction_presentDisambiguationAlertWithSender___block_invoke;
        v21[3] = &unk_1E74E7308;
        v21[4] = self;
        v21[5] = v9;
        v12 = [MEMORY[0x1E69DC648] _actionWithTitle:displayValue descriptiveText:displayLabel image:0 style:0 handler:v21 shouldDismissHandler:0];
        [v4 addAction:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v13 = MEMORY[0x1E69DC648];
  v14 = CNContactsUIBundle();
  v15 = [v14 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__CNPropertyAction_presentDisambiguationAlertWithSender___block_invoke_2;
  v20[3] = &unk_1E74E6C28;
  v20[4] = self;
  v16 = [v13 actionWithTitle:v15 style:1 handler:v20];
  [v4 addAction:v16];

  delegate = [(CNContactAction *)self delegate];
  [delegate action:self presentViewController:v4 sender:senderCopy];
}

void __57__CNPropertyAction_presentDisambiguationAlertWithSender___block_invoke(uint64_t a1)
{
  [*(a1 + 32) performActionForItem:*(a1 + 40) sender:*(a1 + 32)];
  v2 = [*(a1 + 32) delegate];
  [v2 actionDidFinish:*(a1 + 32)];
}

void __57__CNPropertyAction_presentDisambiguationAlertWithSender___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 actionWasCanceled:*(a1 + 32)];
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  propertyItems = [(CNPropertyAction *)self propertyItems];
  v5 = [propertyItems count];

  if (v5 == 1)
  {
    propertyItem = [(CNPropertyAction *)self propertyItem];
    [(CNPropertyAction *)self performActionForItem:propertyItem sender:senderCopy];

    delegate = [(CNContactAction *)self delegate];
    [delegate actionDidFinish:self];
  }

  else
  {
    [(CNPropertyAction *)self presentDisambiguationAlertWithSender:senderCopy];
  }
}

- (void)performActionForItem:(id)item sender:(id)sender
{
  senderCopy = sender;
  itemCopy = item;
  [objc_opt_class() performDefaultActionForItem:itemCopy sender:senderCopy];
}

- (CNPropertyGroupItem)propertyItem
{
  propertyItems = [(CNPropertyAction *)self propertyItems];
  firstObject = [propertyItems firstObject];

  return firstObject;
}

- (CNPropertyAction)initWithContact:(id)contact propertyItem:(id)item
{
  v13 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = MEMORY[0x1E695DEC8];
  itemCopy2 = item;
  contactCopy = contact;
  v9 = [v6 arrayWithObjects:&itemCopy count:1];

  v10 = [(CNPropertyAction *)self initWithContact:contactCopy propertyItems:v9, itemCopy, v13];
  return v10;
}

- (CNPropertyAction)initWithContact:(id)contact propertyItems:(id)items
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = CNPropertyAction;
  v7 = [(CNContactAction *)&v11 initWithContact:contact];
  if (v7)
  {
    v8 = [itemsCopy copy];
    propertyItems = v7->_propertyItems;
    v7->_propertyItems = v8;
  }

  return v7;
}

+ (void)performDefaultActionForItem:(id)item sender:(id)sender
{
  v26[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  defaultActionURL = [itemCopy defaultActionURL];
  if (defaultActionURL)
  {
    if ([itemCopy isSuggested])
    {
      SGSuggestedActionMetricsClass = getSGSuggestedActionMetricsClass();
      property = [itemCopy property];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      [(objc_class *)SGSuggestedActionMetricsClass recordContactDetailUsage:property withApp:bundleIdentifier];
    }

    v14 = +[CNUIDataCollector sharedCollector];
    v15 = CNUIContactActionTypeTapProperty;
    v25[0] = CNUIContactActionTapPropertyIdentifier;
    property2 = [itemCopy property];
    v26[0] = property2;
    v25[1] = CNUIDataCollectorActionTypeAttributeContact;
    contact = [itemCopy contact];
    v26[1] = contact;
    v25[2] = CNUIDataCollectorActionTypeAttributeLabeledValue;
    labeledValue = [itemCopy labeledValue];
    v26[2] = labeledValue;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v14 logContactActionType:v15 attributes:v19];

    v20 = +[CNUIContactsEnvironment currentEnvironment];
    applicationWorkspace = [v20 applicationWorkspace];
    v23 = *MEMORY[0x1E6963550];
    v24 = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [applicationWorkspace openSensitiveURLInBackground:defaultActionURL withOptions:v22];
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyAction.m", 89, 6, @"%@ doesn’t define a default action URL", v5, v6, v7, v8, itemCopy);
  }
}

@end