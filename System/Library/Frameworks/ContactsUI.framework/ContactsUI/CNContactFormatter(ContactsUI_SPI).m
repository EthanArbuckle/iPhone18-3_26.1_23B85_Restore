@interface CNContactFormatter(ContactsUI_SPI)
- (id)stringFromGroupIdentity:()ContactsUI_SPI;
@end

@implementation CNContactFormatter(ContactsUI_SPI)

- (id)stringFromGroupIdentity:()ContactsUI_SPI
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996568];
  v6 = [v4 groupName];
  LOBYTE(v5) = (*(v5 + 16))(v5, v6);

  if (v5)
  {
    v7 = [v4 contacts];
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v8 = 0;
    }

    else
    {
      v9 = [v7 firstObject];
      if ([v4 numberOfContacts] <= 1)
      {
        v18 = [MEMORY[0x1E695CD80] stringFromContact:v9 style:0];
        if (v18)
        {
          v10 = v18;
          v8 = v10;
        }

        else
        {
          v8 = [a1 stringFromContact:v9];
          v10 = 0;
        }
      }

      else
      {
        v10 = [a1 stringFromContact:v9];
        v11 = [v4 numberOfContacts];
        v12 = *MEMORY[0x1E6996570];
        if (v11 == 2 && (*(v12 + 16))(*MEMORY[0x1E6996570], v10))
        {
          v13 = [v7 lastObject];
          v14 = [a1 stringFromContact:v13];

          v15 = MEMORY[0x1E696AEC0];
          v16 = CNContactsUIBundle();
          v17 = [v16 localizedStringForKey:@"GROUP_IDENTITY_HEADER_TWO_CONTACTS_TITLE" value:&stru_1F0CE7398 table:@"Localized"];
          v8 = [v15 localizedStringWithFormat:v17, v10, v14];
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
          v8 = ;
        }
      }
    }
  }

  else
  {
    v8 = [v4 groupName];
  }

  return v8;
}

@end