@interface CNiOSABUtilities
- (CNiOSABUtilities)initWithAddressBook:(void *)a3;
- (id)allAccountIdentifiers;
- (id)filterPeople:(id)a3 matchingAccountIdentifiers:(id)a4;
- (void)dealloc;
@end

@implementation CNiOSABUtilities

- (CNiOSABUtilities)initWithAddressBook:(void *)a3
{
  v8.receiver = self;
  v8.super_class = CNiOSABUtilities;
  v4 = [(CNiOSABUtilities *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = CFRetain(a3);
    }

    else
    {
      v5 = 0;
    }

    v4->_addressBook = v5;
    v6 = v4;
  }

  return v4;
}

- (id)allAccountIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_addressBook)
  {
    v2 = ABAddressBookCopyArrayOfAllAccounts();
    v3 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = ABAccountCopyIdentifier();
          [v3 addObject:{v9, v11}];
          if (v9)
          {
            CFRelease(v9);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (id)filterPeople:(id)a3 matchingAccountIdentifiers:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_addressBook)
  {
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            v15 = ABPersonCopySource(v14);
            v16 = ABAddressBookCopyAccountIdentifierForSource();
            if ([v7 containsObject:v16])
            {
              [v8 addObject:v14];
            }

            if (v16)
            {
              CFRelease(v16);
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = CNiOSABUtilities;
  [(CNiOSABUtilities *)&v4 dealloc];
}

@end