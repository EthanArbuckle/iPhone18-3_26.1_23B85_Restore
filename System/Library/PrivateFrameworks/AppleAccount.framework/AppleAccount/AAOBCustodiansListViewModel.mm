@interface AAOBCustodiansListViewModel
- (AAOBCustodiansListViewModel)init;
- (AAOBCustodiansListViewModel)initWithContacts:(id)contacts;
- (id)contacts;
- (void)_updatePrimaryButtonTitle;
@end

@implementation AAOBCustodiansListViewModel

- (AAOBCustodiansListViewModel)init
{
  v18.receiver = self;
  v18.super_class = AAOBCustodiansListViewModel;
  v2 = [(AAOBCustodiansListViewModel *)&v18 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v4 = [v3 localizedStringForKey:@"CUSTODIAN_LIST_VIEW_TITLE" value:0 table:@"Localizable"];
    title = v2->_title;
    v2->_title = v4;

    v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v7 = [v6 localizedStringForKey:@"CUSTODIAN_LIST_VIEW_DETAIL_TEXT" value:0 table:@"Localizable"];
    detailText = v2->_detailText;
    v2->_detailText = v7;

    v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v10 = [v9 localizedStringForKey:@"CUSTODIAN_LIST_VIEW_PRIMARY_BUTTON" value:0 table:@"Localizable"];
    primaryButton = v2->_primaryButton;
    v2->_primaryButton = v10;

    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
    v13 = [v12 localizedStringForKey:@"CUSTODIAN_LIST_VIEW_SECONDARY_BUTTON" value:0 table:@"Localizable"];
    secondaryButton = v2->_secondaryButton;
    v2->_secondaryButton = v13;

    v15 = objc_opt_new();
    contactsManager = v2->_contactsManager;
    v2->_contactsManager = v15;
  }

  return v2;
}

- (AAOBCustodiansListViewModel)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v6 = [(AAOBCustodiansListViewModel *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contacts, contacts);
    [(AAOBCustodiansListViewModel *)v7 _updatePrimaryButtonTitle];
  }

  return v7;
}

- (id)contacts
{
  v2 = [(NSArray *)self->_contacts copy];

  return v2;
}

- (void)_updatePrimaryButtonTitle
{
  if ([(NSArray *)self->_contacts count]== 1)
  {
    firstObject = [(NSArray *)self->_contacts firstObject];
    contactsManager = self->_contactsManager;
    v12 = firstObject;
    handle = [firstObject handle];
    v6 = [(AAContactsManager *)contactsManager contactForHandle:handle];

    if (v6)
    {
      phoneNumbers = [v6 phoneNumbers];
      v8 = [phoneNumbers count];

      if (v8 == 1)
      {
        v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
        v10 = [v9 localizedStringForKey:@"CUSTODIAN_LIST_VIEW_PRIMARY_BUTTON_CONTINUE" value:0 table:@"Localizable"];
        primaryButton = self->_primaryButton;
        self->_primaryButton = v10;
      }
    }
  }
}

@end