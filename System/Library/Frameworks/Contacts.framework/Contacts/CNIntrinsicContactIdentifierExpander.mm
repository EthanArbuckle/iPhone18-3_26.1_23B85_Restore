@interface CNIntrinsicContactIdentifierExpander
+ (CNContactPosterUnifiedContactIdentifierExpansion)sharedExpander;
- (id)expandIdentifiersForContact:(id)contact;
- (id)expandIdentifiersForContactWithIdentifier:(id)identifier;
- (id)preferredIdentifierForContact:(id)contact;
@end

@implementation CNIntrinsicContactIdentifierExpander

+ (CNContactPosterUnifiedContactIdentifierExpansion)sharedExpander
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CNIntrinsicContactIdentifierExpander_sharedExpander__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedExpander_cn_once_token_1 != -1)
  {
    dispatch_once(&sharedExpander_cn_once_token_1, block);
  }

  v2 = sharedExpander_cn_once_object_1;

  return v2;
}

uint64_t __54__CNIntrinsicContactIdentifierExpander_sharedExpander__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedExpander_cn_once_object_1;
  sharedExpander_cn_once_object_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (id)expandIdentifiersForContact:(id)contact
{
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = objc_opt_new();
  identifier = [contactCopy identifier];
  [v4 addObject:identifier];

  if ([contactCopy isKeyAvailable:@"linkIdentifier"])
  {
    linkIdentifier = [contactCopy linkIdentifier];
    [v4 _cn_addNonNilObject:linkIdentifier];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  linkedContacts = [contactCopy linkedContacts];
  v8 = [linkedContacts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(linkedContacts);
        }

        identifier2 = [*(*(&v14 + 1) + 8 * i) identifier];
        [v4 addObject:identifier2];
      }

      v9 = [linkedContacts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v4;
}

- (id)expandIdentifiersForContactWithIdentifier:(id)identifier
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = identifier;
  v3 = MEMORY[0x1E695DEC8];
  identifierCopy = identifier;
  v5 = [v3 arrayWithObjects:v7 count:1];

  return v5;
}

- (id)preferredIdentifierForContact:(id)contact
{
  v17 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if ([contactCopy isUnified])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    linkedContacts = [contactCopy linkedContacts];
    v5 = [linkedContacts countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(linkedContacts);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if ([v9 isPreferredForImage])
          {
            identifier = [v9 identifier];

            goto LABEL_13;
          }
        }

        v6 = [linkedContacts countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  identifier = [contactCopy identifier];
LABEL_13:

  return identifier;
}

@end