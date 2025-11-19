@interface CNPropertySendMessageAction
- (BOOL)shouldPresentDisambiguationMenu;
- (CNContactActionsController)actionsController;
- (CNPropertySendMessageAction)initWithContact:(id)a3 propertyItems:(id)a4 actionDataSource:(id)a5;
- (id)menuProviderForContextMenuInteraction:(id)a3;
- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4;
- (void)didSelectActionItem:(id)a3 shouldDismissController:(BOOL)a4;
- (void)performActionForItem:(id)a3 sender:(id)a4;
- (void)performActionWithSender:(id)a3;
- (void)setUpActionsController;
@end

@implementation CNPropertySendMessageAction

- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v7 = a4;
  if ([v7 count])
  {
    v5 = [(CNPropertySendMessageAction *)self actionMenuHelper];
    v6 = [(CNPropertySendMessageAction *)self contextMenuInteraction];
    [v5 updateWithMenuItems:v7 contextMenuInteraction:v6];
  }
}

- (void)didSelectActionItem:(id)a3 shouldDismissController:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v7 = [v9 performActionWithContext:v6];

  v8 = [(CNContactAction *)self delegate];
  [v8 actionDidFinish:self];

  if (v4)
  {
    [(CNPropertySendMessageAction *)self setActionsController:0];
    [(CNPropertySendMessageAction *)self setActionMenuHelper:0];
  }
}

- (void)performActionForItem:(id)a3 sender:(id)a4
{
  v25[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 property];
  v6 = [v5 isEqualToString:*MEMORY[0x1E695C330]];

  if (v6)
  {
    v7 = [v4 labeledValue];
    v8 = [v7 value];

    v9 = [v8 stringValue];
LABEL_5:
    v12 = v9;

    goto LABEL_7;
  }

  v10 = [v4 property];
  v11 = [v10 isEqualToString:*MEMORY[0x1E695C208]];

  if (v11)
  {
    v8 = [v4 labeledValue];
    v9 = [v8 value];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v15 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v14];
  v16 = [v13 stringWithFormat:@"sms:%@", v15];

  v17 = [MEMORY[0x1E695DFF8] URLWithString:v16];
  v18 = +[CNUIDataCollector sharedCollector];
  v19 = CNUIContactActionTypeSendMessage;
  v24[0] = CNUIContactActionDestinationType;
  v20 = &CNUIContactActionDestinationTypePhoneNumber;
  if (!v6)
  {
    v20 = &CNUIContactActionDestinationTypeEmail;
  }

  v25[0] = *v20;
  v24[1] = CNUIDataCollectorActionTypeAttributeContact;
  v21 = [v4 contact];
  v25[1] = v21;
  v24[2] = CNUIDataCollectorActionTypeAttributeLabeledValue;
  v22 = [v4 labeledValue];
  v25[2] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  [v18 logContactActionType:v19 attributes:v23];

  [*MEMORY[0x1E69DDA98] openURL:v17 withCompletionHandler:0];
}

- (void)performActionWithSender:(id)a3
{
  v6 = a3;
  if (![(CNPropertySendMessageAction *)self shouldPresentDisambiguationMenu])
  {
    v4 = [(CNPropertyAction *)self propertyItem];
    [(CNPropertySendMessageAction *)self performActionForItem:v4 sender:v6];

    v5 = [(CNContactAction *)self delegate];
    [v5 actionDidFinish:self];
  }
}

- (void)setUpActionsController
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [CNContactActionsController alloc];
  v4 = [(CNContactAction *)self contact];
  v5 = [(CNPropertySendMessageAction *)self actionsDataSource];
  v11[0] = *MEMORY[0x1E695C178];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(CNContactActionsController *)v3 initWithContact:v4 dataSource:v5 actionTypes:v6];
  [(CNPropertySendMessageAction *)self setActionsController:v7];

  v8 = [(CNPropertySendMessageAction *)self actionsController];
  [v8 setShouldUseOutlinedActionGlyphStyle:1];

  v9 = [(CNPropertySendMessageAction *)self actionsController];
  [v9 setDelegate:self];

  v10 = [(CNPropertySendMessageAction *)self actionsController];
  [v10 retrieveModels];
}

- (CNContactActionsController)actionsController
{
  actionsController = self->_actionsController;
  if (!actionsController)
  {
    [(CNPropertySendMessageAction *)self setUpActionsController];
    actionsController = self->_actionsController;
  }

  return actionsController;
}

- (id)menuProviderForContextMenuInteraction:(id)a3
{
  v4 = a3;
  if ([(CNPropertySendMessageAction *)self shouldPresentDisambiguationMenu])
  {
    [(CNPropertySendMessageAction *)self setContextMenuInteraction:v4];
    v5 = objc_alloc_init(CNActionMenuHelper);
    [(CNPropertySendMessageAction *)self setActionMenuHelper:v5];

    [(CNPropertySendMessageAction *)self setUpActionsController];
    v6 = [(CNPropertySendMessageAction *)self actionMenuHelper];
    v7 = [v6 menuProviderWithActionBlock:&__block_literal_global_43884];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldPresentDisambiguationMenu
{
  v2 = [(CNPropertyAction *)self propertyItems];
  v3 = [v2 count] != 1;

  return v3;
}

- (CNPropertySendMessageAction)initWithContact:(id)a3 propertyItems:(id)a4 actionDataSource:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CNPropertySendMessageAction;
  v10 = [(CNPropertyAction *)&v13 initWithContact:a3 propertyItems:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionsDataSource, a5);
  }

  return v11;
}

@end