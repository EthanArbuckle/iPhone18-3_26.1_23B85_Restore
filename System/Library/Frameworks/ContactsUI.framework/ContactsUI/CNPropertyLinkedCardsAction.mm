@interface CNPropertyLinkedCardsAction
- (CNContactContentViewControllerDelegate)contactDelegate;
- (CNPropertyLinkedCardsAction)initWithContact:(id)a3;
- (void)dealloc;
- (void)performActionForItem:(id)a3 sender:(id)a4;
- (void)setPreferredForImage;
- (void)setPreferredForName;
@end

@implementation CNPropertyLinkedCardsAction

- (CNContactContentViewControllerDelegate)contactDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactDelegate);

  return WeakRetained;
}

- (void)setPreferredForName
{
  v3 = [(CNContactAction *)self delegate];
  v4 = [v3 contactViewCache];
  v5 = [v4 contactStore];

  v6 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v7 = [(CNPropertyLinkedCardsAction *)self linkedContact];
  v8 = [(CNContactAction *)self mutableContact];
  [v6 preferLinkedContactForName:v7 inUnifiedContact:v8];

  v19 = 0;
  LOBYTE(v8) = [v5 executeSaveRequest:v6 error:&v19];
  v9 = v19;
  v14 = v9;
  if ((v8 & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyLinkedCardsAction.m", 114, 3, @"Could not set preferred contact for name: %@", v10, v11, v12, v13, v9);
  }

  v15 = [(CNPropertyLinkedCardsAction *)self contactController];
  v16 = [(CNPropertyLinkedCardsAction *)self contactController];
  v17 = [v16 cardTopGroup];
  [v15 removeActionWithTarget:self selector:sel_setPreferredForName inGroup:v17];

  v18 = [(CNContactAction *)self delegate];
  [v18 actionDidFinish:self];
}

- (void)setPreferredForImage
{
  v3 = [(CNContactAction *)self delegate];
  v4 = [v3 contactViewCache];
  v5 = [v4 contactStore];

  v6 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v7 = [(CNPropertyLinkedCardsAction *)self linkedContact];
  v8 = [(CNContactAction *)self mutableContact];
  [v6 preferLinkedContactForImage:v7 inUnifiedContact:v8];

  v19 = 0;
  LOBYTE(v8) = [v5 executeSaveRequest:v6 error:&v19];
  v9 = v19;
  v14 = v9;
  if ((v8 & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyLinkedCardsAction.m", 96, 3, @"Could not set preferred contact for image: %@", v10, v11, v12, v13, v9);
  }

  v15 = [(CNPropertyLinkedCardsAction *)self contactController];
  v16 = [(CNPropertyLinkedCardsAction *)self contactController];
  v17 = [v16 cardTopGroup];
  [v15 removeActionWithTarget:self selector:sel_setPreferredForImage inGroup:v17];

  v18 = [(CNContactAction *)self delegate];
  [v18 actionDidFinish:self];
}

- (void)performActionForItem:(id)a3 sender:(id)a4
{
  v49 = a3;
  v6 = [CNContactContentViewController alloc];
  v7 = [v49 contact];
  v8 = [(CNContactContentViewController *)v6 initWithContact:v7];
  [(CNPropertyLinkedCardsAction *)self setContactController:v8];

  v9 = [(CNContactAction *)self delegate];
  v10 = [(CNPropertyLinkedCardsAction *)self contactController];
  [v9 action:self prepareChildContactViewController:v10 sender:self];

  v11 = [(CNContactAction *)self delegate];
  v12 = [v11 contactViewCache];

  v13 = [v49 contact];
  v14 = [v12 accountForContact:v13];

  v15 = [v49 contact];
  v16 = [v12 policyForContact:v15];

  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"ACCOUNT_CARD_ITEM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];

  if (v14)
  {
    v19 = [MEMORY[0x1E695CD10] _cnui_displayNameForACAccount:v14];

    v18 = v19;
  }

  v20 = [(CNPropertyLinkedCardsAction *)self contactController];
  [v20 setTitle:v18];

  v21 = [(CNPropertyLinkedCardsAction *)self contactController];
  if ([v21 allowsEditing] && (objc_msgSend(v16, "isReadonly") & 1) == 0)
  {
    v4 = [(CNContactAction *)self delegate];
    v23 = v4 != 0;
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v24 = [(CNPropertyLinkedCardsAction *)self contactController];
  [v24 setAllowsEditing:v23];

  if (v22)
  {
  }

  v25 = [(CNPropertyLinkedCardsAction *)self contactDelegate];
  v26 = [(CNPropertyLinkedCardsAction *)self contactController];
  [v26 setContactDelegate:v25];

  v27 = [v49 contact];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNPropertyLinkedCardsAction *)self setLinkedContact:v27];
  }

  else
  {
    v28 = [v27 mutableCopy];
    [(CNPropertyLinkedCardsAction *)self setLinkedContact:v28];
  }

  v29 = [(CNPropertyLinkedCardsAction *)self contactController];
  v30 = [v29 allowsSettingLinkedContactsAsPreferred];

  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = [(CNPropertyLinkedCardsAction *)self linkedContact];
  if ([v31 isPreferredForImage])
  {
    goto LABEL_16;
  }

  v32 = [(CNPropertyLinkedCardsAction *)self linkedContact];
  v33 = [v32 thumbnailImageData];

  if (v33)
  {
    v31 = [(CNPropertyLinkedCardsAction *)self contactController];
    v46 = CNContactsUIBundle();
    v34 = [v46 localizedStringForKey:@"SET_PREFERRED_PHOTO_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    v35 = [(CNPropertyLinkedCardsAction *)self contactController];
    v36 = [v35 cardTopGroup];
    [v31 addActionWithTitle:v34 target:self selector:sel_setPreferredForImage inGroup:v36];

LABEL_16:
  }

  v37 = [(CNPropertyLinkedCardsAction *)self linkedContact];
  if (([v37 isPreferredForName] & 1) == 0)
  {
    v38 = MEMORY[0x1E695CD80];
    v39 = [(CNPropertyLinkedCardsAction *)self linkedContact];
    v40 = [v38 stringFromContact:v39 style:0];

    if (!v40)
    {
      goto LABEL_21;
    }

    v37 = [(CNPropertyLinkedCardsAction *)self contactController];
    v47 = CNContactsUIBundle();
    v41 = [v47 localizedStringForKey:@"SET_PREFERRED_NAME_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNPropertyLinkedCardsAction *)self contactController];
    v42 = v48 = v16;
    v43 = [v42 cardTopGroup];
    [v37 addActionWithTitle:v41 target:self selector:sel_setPreferredForName inGroup:v43];

    v16 = v48;
  }

LABEL_21:
  v44 = [(CNContactAction *)self delegate];
  v45 = [(CNPropertyLinkedCardsAction *)self contactController];
  [v44 action:self pushViewController:v45 sender:self];
}

- (void)dealloc
{
  objc_storeWeak(&self->_contactDelegate, 0);
  v3.receiver = self;
  v3.super_class = CNPropertyLinkedCardsAction;
  [(CNPropertyLinkedCardsAction *)&v3 dealloc];
}

- (CNPropertyLinkedCardsAction)initWithContact:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNPropertyLinkedCardsAction;
  return [(CNPropertyAction *)&v4 initWithContact:a3];
}

@end