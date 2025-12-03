@interface CNPropertySendMessageAction
- (BOOL)shouldPresentDisambiguationMenu;
- (CNContactActionsController)actionsController;
- (CNPropertySendMessageAction)initWithContact:(id)contact propertyItems:(id)items actionDataSource:(id)source;
- (id)menuProviderForContextMenuInteraction:(id)interaction;
- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu;
- (void)didSelectActionItem:(id)item shouldDismissController:(BOOL)controller;
- (void)performActionForItem:(id)item sender:(id)sender;
- (void)performActionWithSender:(id)sender;
- (void)setUpActionsController;
@end

@implementation CNPropertySendMessageAction

- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  menuCopy = menu;
  if ([menuCopy count])
  {
    actionMenuHelper = [(CNPropertySendMessageAction *)self actionMenuHelper];
    contextMenuInteraction = [(CNPropertySendMessageAction *)self contextMenuInteraction];
    [actionMenuHelper updateWithMenuItems:menuCopy contextMenuInteraction:contextMenuInteraction];
  }
}

- (void)didSelectActionItem:(id)item shouldDismissController:(BOOL)controller
{
  controllerCopy = controller;
  itemCopy = item;
  v6 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v7 = [itemCopy performActionWithContext:v6];

  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];

  if (controllerCopy)
  {
    [(CNPropertySendMessageAction *)self setActionsController:0];
    [(CNPropertySendMessageAction *)self setActionMenuHelper:0];
  }
}

- (void)performActionForItem:(id)item sender:(id)sender
{
  v25[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  property = [itemCopy property];
  v6 = [property isEqualToString:*MEMORY[0x1E695C330]];

  if (v6)
  {
    labeledValue = [itemCopy labeledValue];
    value = [labeledValue value];

    stringValue = [value stringValue];
LABEL_5:
    v12 = stringValue;

    goto LABEL_7;
  }

  property2 = [itemCopy property];
  v11 = [property2 isEqualToString:*MEMORY[0x1E695C208]];

  if (v11)
  {
    value = [itemCopy labeledValue];
    stringValue = [value value];
    goto LABEL_5;
  }

  v12 = 0;
LABEL_7:
  v13 = MEMORY[0x1E696AEC0];
  uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v15 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
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
  contact = [itemCopy contact];
  v25[1] = contact;
  v24[2] = CNUIDataCollectorActionTypeAttributeLabeledValue;
  labeledValue2 = [itemCopy labeledValue];
  v25[2] = labeledValue2;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  [v18 logContactActionType:v19 attributes:v23];

  [*MEMORY[0x1E69DDA98] openURL:v17 withCompletionHandler:0];
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  if (![(CNPropertySendMessageAction *)self shouldPresentDisambiguationMenu])
  {
    propertyItem = [(CNPropertyAction *)self propertyItem];
    [(CNPropertySendMessageAction *)self performActionForItem:propertyItem sender:senderCopy];

    delegate = [(CNContactAction *)self delegate];
    [delegate actionDidFinish:self];
  }
}

- (void)setUpActionsController
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [CNContactActionsController alloc];
  contact = [(CNContactAction *)self contact];
  actionsDataSource = [(CNPropertySendMessageAction *)self actionsDataSource];
  v11[0] = *MEMORY[0x1E695C178];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(CNContactActionsController *)v3 initWithContact:contact dataSource:actionsDataSource actionTypes:v6];
  [(CNPropertySendMessageAction *)self setActionsController:v7];

  actionsController = [(CNPropertySendMessageAction *)self actionsController];
  [actionsController setShouldUseOutlinedActionGlyphStyle:1];

  actionsController2 = [(CNPropertySendMessageAction *)self actionsController];
  [actionsController2 setDelegate:self];

  actionsController3 = [(CNPropertySendMessageAction *)self actionsController];
  [actionsController3 retrieveModels];
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

- (id)menuProviderForContextMenuInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(CNPropertySendMessageAction *)self shouldPresentDisambiguationMenu])
  {
    [(CNPropertySendMessageAction *)self setContextMenuInteraction:interactionCopy];
    v5 = objc_alloc_init(CNActionMenuHelper);
    [(CNPropertySendMessageAction *)self setActionMenuHelper:v5];

    [(CNPropertySendMessageAction *)self setUpActionsController];
    actionMenuHelper = [(CNPropertySendMessageAction *)self actionMenuHelper];
    v7 = [actionMenuHelper menuProviderWithActionBlock:&__block_literal_global_43884];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldPresentDisambiguationMenu
{
  propertyItems = [(CNPropertyAction *)self propertyItems];
  v3 = [propertyItems count] != 1;

  return v3;
}

- (CNPropertySendMessageAction)initWithContact:(id)contact propertyItems:(id)items actionDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = CNPropertySendMessageAction;
  v10 = [(CNPropertyAction *)&v13 initWithContact:contact propertyItems:items];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_actionsDataSource, source);
  }

  return v11;
}

@end