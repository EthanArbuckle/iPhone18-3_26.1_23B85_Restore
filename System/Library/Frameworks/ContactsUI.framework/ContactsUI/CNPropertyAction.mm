@interface CNPropertyAction
+ (void)performDefaultActionForItem:(id)a3 sender:(id)a4;
- (CNPropertyAction)initWithContact:(id)a3 propertyItem:(id)a4;
- (CNPropertyAction)initWithContact:(id)a3 propertyItems:(id)a4;
- (CNPropertyGroupItem)propertyItem;
- (void)performActionForItem:(id)a3 sender:(id)a4;
- (void)performActionWithSender:(id)a3;
- (void)presentDisambiguationAlertWithSender:(id)a3;
@end

@implementation CNPropertyAction

- (void)presentDisambiguationAlertWithSender:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v18 = a3;
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
        v10 = [v9 displayValue];
        v11 = [v9 displayLabel];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __57__CNPropertyAction_presentDisambiguationAlertWithSender___block_invoke;
        v21[3] = &unk_1E74E7308;
        v21[4] = self;
        v21[5] = v9;
        v12 = [MEMORY[0x1E69DC648] _actionWithTitle:v10 descriptiveText:v11 image:0 style:0 handler:v21 shouldDismissHandler:0];
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

  v17 = [(CNContactAction *)self delegate];
  [v17 action:self presentViewController:v4 sender:v18];
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

- (void)performActionWithSender:(id)a3
{
  v8 = a3;
  v4 = [(CNPropertyAction *)self propertyItems];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [(CNPropertyAction *)self propertyItem];
    [(CNPropertyAction *)self performActionForItem:v6 sender:v8];

    v7 = [(CNContactAction *)self delegate];
    [v7 actionDidFinish:self];
  }

  else
  {
    [(CNPropertyAction *)self presentDisambiguationAlertWithSender:v8];
  }
}

- (void)performActionForItem:(id)a3 sender:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() performDefaultActionForItem:v6 sender:v5];
}

- (CNPropertyGroupItem)propertyItem
{
  v2 = [(CNPropertyAction *)self propertyItems];
  v3 = [v2 firstObject];

  return v3;
}

- (CNPropertyAction)initWithContact:(id)a3 propertyItem:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];

  v10 = [(CNPropertyAction *)self initWithContact:v8 propertyItems:v9, v12, v13];
  return v10;
}

- (CNPropertyAction)initWithContact:(id)a3 propertyItems:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = CNPropertyAction;
  v7 = [(CNContactAction *)&v11 initWithContact:a3];
  if (v7)
  {
    v8 = [v6 copy];
    propertyItems = v7->_propertyItems;
    v7->_propertyItems = v8;
  }

  return v7;
}

+ (void)performDefaultActionForItem:(id)a3 sender:(id)a4
{
  v26[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = [v4 defaultActionURL];
  if (v9)
  {
    if ([v4 isSuggested])
    {
      SGSuggestedActionMetricsClass = getSGSuggestedActionMetricsClass();
      v11 = [v4 property];
      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 bundleIdentifier];
      [(objc_class *)SGSuggestedActionMetricsClass recordContactDetailUsage:v11 withApp:v13];
    }

    v14 = +[CNUIDataCollector sharedCollector];
    v15 = CNUIContactActionTypeTapProperty;
    v25[0] = CNUIContactActionTapPropertyIdentifier;
    v16 = [v4 property];
    v26[0] = v16;
    v25[1] = CNUIDataCollectorActionTypeAttributeContact;
    v17 = [v4 contact];
    v26[1] = v17;
    v25[2] = CNUIDataCollectorActionTypeAttributeLabeledValue;
    v18 = [v4 labeledValue];
    v26[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
    [v14 logContactActionType:v15 attributes:v19];

    v20 = +[CNUIContactsEnvironment currentEnvironment];
    v21 = [v20 applicationWorkspace];
    v23 = *MEMORY[0x1E6963550];
    v24 = MEMORY[0x1E695E118];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    [v21 openSensitiveURLInBackground:v9 withOptions:v22];
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyAction.m", 89, 6, @"%@ doesn’t define a default action URL", v5, v6, v7, v8, v4);
  }
}

@end