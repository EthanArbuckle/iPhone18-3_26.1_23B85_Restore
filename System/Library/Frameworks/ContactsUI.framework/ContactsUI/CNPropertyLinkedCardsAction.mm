@interface CNPropertyLinkedCardsAction
- (CNContactContentViewControllerDelegate)contactDelegate;
- (CNPropertyLinkedCardsAction)initWithContact:(id)contact;
- (void)dealloc;
- (void)performActionForItem:(id)item sender:(id)sender;
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
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];

  v6 = objc_alloc_init(MEMORY[0x1E695CF88]);
  linkedContact = [(CNPropertyLinkedCardsAction *)self linkedContact];
  mutableContact = [(CNContactAction *)self mutableContact];
  [v6 preferLinkedContactForName:linkedContact inUnifiedContact:mutableContact];

  v19 = 0;
  LOBYTE(mutableContact) = [contactStore executeSaveRequest:v6 error:&v19];
  v9 = v19;
  v14 = v9;
  if ((mutableContact & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyLinkedCardsAction.m", 114, 3, @"Could not set preferred contact for name: %@", v10, v11, v12, v13, v9);
  }

  contactController = [(CNPropertyLinkedCardsAction *)self contactController];
  contactController2 = [(CNPropertyLinkedCardsAction *)self contactController];
  cardTopGroup = [contactController2 cardTopGroup];
  [contactController removeActionWithTarget:self selector:sel_setPreferredForName inGroup:cardTopGroup];

  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 actionDidFinish:self];
}

- (void)setPreferredForImage
{
  delegate = [(CNContactAction *)self delegate];
  contactViewCache = [delegate contactViewCache];
  contactStore = [contactViewCache contactStore];

  v6 = objc_alloc_init(MEMORY[0x1E695CF88]);
  linkedContact = [(CNPropertyLinkedCardsAction *)self linkedContact];
  mutableContact = [(CNContactAction *)self mutableContact];
  [v6 preferLinkedContactForImage:linkedContact inUnifiedContact:mutableContact];

  v19 = 0;
  LOBYTE(mutableContact) = [contactStore executeSaveRequest:v6 error:&v19];
  v9 = v19;
  v14 = v9;
  if ((mutableContact & 1) == 0)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNPropertyLinkedCardsAction.m", 96, 3, @"Could not set preferred contact for image: %@", v10, v11, v12, v13, v9);
  }

  contactController = [(CNPropertyLinkedCardsAction *)self contactController];
  contactController2 = [(CNPropertyLinkedCardsAction *)self contactController];
  cardTopGroup = [contactController2 cardTopGroup];
  [contactController removeActionWithTarget:self selector:sel_setPreferredForImage inGroup:cardTopGroup];

  delegate2 = [(CNContactAction *)self delegate];
  [delegate2 actionDidFinish:self];
}

- (void)performActionForItem:(id)item sender:(id)sender
{
  itemCopy = item;
  v6 = [CNContactContentViewController alloc];
  contact = [itemCopy contact];
  v8 = [(CNContactContentViewController *)v6 initWithContact:contact];
  [(CNPropertyLinkedCardsAction *)self setContactController:v8];

  delegate = [(CNContactAction *)self delegate];
  contactController = [(CNPropertyLinkedCardsAction *)self contactController];
  [delegate action:self prepareChildContactViewController:contactController sender:self];

  delegate2 = [(CNContactAction *)self delegate];
  contactViewCache = [delegate2 contactViewCache];

  contact2 = [itemCopy contact];
  v14 = [contactViewCache accountForContact:contact2];

  contact3 = [itemCopy contact];
  v16 = [contactViewCache policyForContact:contact3];

  v17 = CNContactsUIBundle();
  v18 = [v17 localizedStringForKey:@"ACCOUNT_CARD_ITEM_LABEL" value:&stru_1F0CE7398 table:@"Localized"];

  if (v14)
  {
    v19 = [MEMORY[0x1E695CD10] _cnui_displayNameForACAccount:v14];

    v18 = v19;
  }

  contactController2 = [(CNPropertyLinkedCardsAction *)self contactController];
  [contactController2 setTitle:v18];

  contactController3 = [(CNPropertyLinkedCardsAction *)self contactController];
  if ([contactController3 allowsEditing] && (objc_msgSend(v16, "isReadonly") & 1) == 0)
  {
    delegate3 = [(CNContactAction *)self delegate];
    v23 = delegate3 != 0;
    v22 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  contactController4 = [(CNPropertyLinkedCardsAction *)self contactController];
  [contactController4 setAllowsEditing:v23];

  if (v22)
  {
  }

  contactDelegate = [(CNPropertyLinkedCardsAction *)self contactDelegate];
  contactController5 = [(CNPropertyLinkedCardsAction *)self contactController];
  [contactController5 setContactDelegate:contactDelegate];

  contact4 = [itemCopy contact];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CNPropertyLinkedCardsAction *)self setLinkedContact:contact4];
  }

  else
  {
    v28 = [contact4 mutableCopy];
    [(CNPropertyLinkedCardsAction *)self setLinkedContact:v28];
  }

  contactController6 = [(CNPropertyLinkedCardsAction *)self contactController];
  allowsSettingLinkedContactsAsPreferred = [contactController6 allowsSettingLinkedContactsAsPreferred];

  if (!allowsSettingLinkedContactsAsPreferred)
  {
    goto LABEL_21;
  }

  linkedContact = [(CNPropertyLinkedCardsAction *)self linkedContact];
  if ([linkedContact isPreferredForImage])
  {
    goto LABEL_16;
  }

  linkedContact2 = [(CNPropertyLinkedCardsAction *)self linkedContact];
  thumbnailImageData = [linkedContact2 thumbnailImageData];

  if (thumbnailImageData)
  {
    linkedContact = [(CNPropertyLinkedCardsAction *)self contactController];
    v46 = CNContactsUIBundle();
    v34 = [v46 localizedStringForKey:@"SET_PREFERRED_PHOTO_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    contactController7 = [(CNPropertyLinkedCardsAction *)self contactController];
    cardTopGroup = [contactController7 cardTopGroup];
    [linkedContact addActionWithTitle:v34 target:self selector:sel_setPreferredForImage inGroup:cardTopGroup];

LABEL_16:
  }

  linkedContact3 = [(CNPropertyLinkedCardsAction *)self linkedContact];
  if (([linkedContact3 isPreferredForName] & 1) == 0)
  {
    v38 = MEMORY[0x1E695CD80];
    linkedContact4 = [(CNPropertyLinkedCardsAction *)self linkedContact];
    v40 = [v38 stringFromContact:linkedContact4 style:0];

    if (!v40)
    {
      goto LABEL_21;
    }

    linkedContact3 = [(CNPropertyLinkedCardsAction *)self contactController];
    v47 = CNContactsUIBundle();
    v41 = [v47 localizedStringForKey:@"SET_PREFERRED_NAME_ACTION_BUTTON_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNPropertyLinkedCardsAction *)self contactController];
    v42 = v48 = v16;
    cardTopGroup2 = [v42 cardTopGroup];
    [linkedContact3 addActionWithTitle:v41 target:self selector:sel_setPreferredForName inGroup:cardTopGroup2];

    v16 = v48;
  }

LABEL_21:
  delegate4 = [(CNContactAction *)self delegate];
  contactController8 = [(CNPropertyLinkedCardsAction *)self contactController];
  [delegate4 action:self pushViewController:contactController8 sender:self];
}

- (void)dealloc
{
  objc_storeWeak(&self->_contactDelegate, 0);
  v3.receiver = self;
  v3.super_class = CNPropertyLinkedCardsAction;
  [(CNPropertyLinkedCardsAction *)&v3 dealloc];
}

- (CNPropertyLinkedCardsAction)initWithContact:(id)contact
{
  v4.receiver = self;
  v4.super_class = CNPropertyLinkedCardsAction;
  return [(CNPropertyAction *)&v4 initWithContact:contact];
}

@end