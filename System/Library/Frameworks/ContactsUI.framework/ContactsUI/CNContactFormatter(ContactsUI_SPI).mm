@interface CNContactFormatter(ContactsUI_SPI)
- (id)stringFromGroupIdentity:()ContactsUI_SPI;
@end

@implementation CNContactFormatter(ContactsUI_SPI)

- (id)stringFromGroupIdentity:()ContactsUI_SPI
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996568];
  groupName = [v4 groupName];
  LOBYTE(v5) = (*(v5 + 16))(v5, groupName);

  if (v5)
  {
    contacts = [v4 contacts];
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      groupName2 = 0;
    }

    else
    {
      firstObject = [contacts firstObject];
      if ([v4 numberOfContacts] <= 1)
      {
        v18 = [MEMORY[0x1E695CD80] stringFromContact:firstObject style:0];
        if (v18)
        {
          v10 = v18;
          groupName2 = v10;
        }

        else
        {
          groupName2 = [self stringFromContact:firstObject];
          v10 = 0;
        }
      }

      else
      {
        v10 = [self stringFromContact:firstObject];
        numberOfContacts = [v4 numberOfContacts];
        v12 = *MEMORY[0x1E6996570];
        if (numberOfContacts == 2 && (*(v12 + 16))(*MEMORY[0x1E6996570], v10))
        {
          lastObject = [contacts lastObject];
          v14 = [self stringFromContact:lastObject];

          v15 = MEMORY[0x1E696AEC0];
          v16 = CNContactsUIBundle();
          v17 = [v16 localizedStringForKey:@"GROUP_IDENTITY_HEADER_TWO_CONTACTS_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
          groupName2 = [v15 localizedStringWithFormat:v17, v10, v14];
        }

        else
        {
          v19 = (*(v12 + 16))(v12, v10);
          v20 = MEMORY[0x1E696AEC0];
          v21 = CNContactsUIBundle();
          v14 = v21;
          if (v19)
          {
            v16 = [v21 localizedStringForKey:@"GROUP_HEADER_CONTACT_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
            [v20 localizedStringWithFormat:v16, v10, objc_msgSend(v4, "numberOfContacts") - 1];
          }

          else
          {
            v16 = [v21 localizedStringForKey:@"GROUP_HEADER_CONTACT_NO_NAME_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
            [v20 localizedStringWithFormat:v16, objc_msgSend(v4, "numberOfContacts"), v23];
          }
          groupName2 = ;
        }
      }
    }
  }

  else
  {
    groupName2 = [v4 groupName];
  }

  return groupName2;
}

@end