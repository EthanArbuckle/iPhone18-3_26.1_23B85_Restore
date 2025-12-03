@interface CNDraggingContact
+ (OS_os_log)os_log;
+ (id)availableDataRepresentationTypes;
- (CNDraggingContact)initWithContact:(id)contact contactStore:(id)store;
- (id)dataRepresentationForType:(id)type;
- (id)fetchContactWithKeys:(id)keys;
- (id)fileNameForContact:(id)contact;
- (id)fileURLRepresentation;
- (id)serializeContactToVCard:(id)card;
- (void)cleanupFileURLRepresentation;
- (void)fileURLRepresentation;
@end

@implementation CNDraggingContact

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_0_16 != -1)
  {
    +[CNDraggingContact os_log];
  }

  v3 = os_log_cn_once_object_0_16;

  return v3;
}

uint64_t __27__CNDraggingContact_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "dragging");
  v1 = os_log_cn_once_object_0_16;
  os_log_cn_once_object_0_16 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)availableDataRepresentationTypes
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"CNContactIdentifiersPboardType";
  v4[1] = @"CNLinkedContactsIdentifiersPboardType";
  v4[2] = *MEMORY[0x1E69638D8];
  v4[3] = @"com.apple.contacts.vCardDisplayNames";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

- (CNDraggingContact)initWithContact:(id)contact contactStore:(id)store
{
  contactCopy = contact;
  storeCopy = store;
  if (contactCopy)
  {
    objc_storeStrong(&self->_contact, contact);
    objc_storeStrong(&self->_contactStore, store);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)fetchContactWithKeys:(id)keys
{
  v46[1] = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  contact = [(CNDraggingContact *)self contact];
  v46[0] = keysCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v7 = [contact areKeysAvailable:v6];

  if (v7)
  {
    contact2 = [(CNDraggingContact *)self contact];
  }

  else
  {
    contactStore = [(CNDraggingContact *)self contactStore];
    v10 = contactStore == 0;

    if (v10)
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_INFO, "No contact store injected, using a store with default options", buf, 2u);
      }

      v12 = objc_alloc_init(CNContactStore);
      [(CNDraggingContact *)self setContactStore:v12];
    }

    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__25;
    v36 = __Block_byref_object_dispose__25;
    v37 = 0;
    contact3 = [(CNDraggingContact *)self contact];
    identifier = [contact3 identifier];
    v15 = [identifier length] == 0;

    if (v15)
    {
      v24 = 0;
    }

    else
    {
      v16 = [CNContactFetchRequest alloc];
      v45 = keysCopy;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      v18 = [(CNContactFetchRequest *)v16 initWithKeysToFetch:v17];

      [(CNContactFetchRequest *)v18 setOnlyMainStore:1];
      contact4 = [(CNDraggingContact *)self contact];
      identifier2 = [contact4 identifier];
      v44 = identifier2;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
      v22 = [CNContact predicateForContactsWithIdentifiers:v21];
      [(CNContactFetchRequest *)v18 setPredicate:v22];

      contactStore2 = [(CNDraggingContact *)self contactStore];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __42__CNDraggingContact_fetchContactWithKeys___block_invoke;
      v30[3] = &unk_1E7412670;
      v30[4] = buf;
      v31 = 0;
      [contactStore2 enumerateContactsWithFetchRequest:v18 error:&v31 usingBlock:v30];
      v24 = v31;
    }

    v25 = *(v33 + 5);
    if (!v25)
    {
      os_log2 = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
      {
        contact5 = [(CNDraggingContact *)self contact];
        contactStore3 = [(CNDraggingContact *)self contactStore];
        *v38 = 138412802;
        v39 = contact5;
        v40 = 2114;
        v41 = contactStore3;
        v42 = 2114;
        v43 = v24;
        _os_log_error_impl(&dword_1954A0000, os_log2, OS_LOG_TYPE_ERROR, "Error refetching contact %@ from store %{public}@: %{public}@", v38, 0x20u);
      }

      v25 = *(v33 + 5);
    }

    contact2 = v25;
    _Block_object_dispose(buf, 8);
  }

  return contact2;
}

- (id)serializeContactToVCard:(id)card
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E4B40];
  cardCopy = card;
  optionsFromPreferences = [v3 optionsFromPreferences];
  [optionsFromPreferences setIncludePhotos:1];
  v9[0] = cardCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [CNContactVCardSerialization dataWithContacts:v6 options:optionsFromPreferences error:0];

  return v7;
}

- (id)fileNameForContact:(id)contact
{
  v3 = [CNContactFormatter stringFromContact:contact style:0];
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = [MEMORY[0x1E6996750] localizedStringForString:@"VCARD_DEFAULT_FILE_NAME" class:objc_opt_class() returningNilIfNotFound:1];

    v3 = v4;
  }

  v5 = [v3 stringByAppendingPathExtension:@"vcf"];

  return v5;
}

- (id)fileURLRepresentation
{
  contact = [(CNDraggingContact *)self contact];

  if (contact)
  {
    cachedFileURLRepresentation = [(CNDraggingContact *)self cachedFileURLRepresentation];

    if (!cachedFileURLRepresentation)
    {
      v5 = +[CNContactVCardSerialization descriptorForRequiredKeys];
      v6 = [(CNDraggingContact *)self fetchContactWithKeys:v5];

      v7 = [(CNDraggingContact *)self serializeContactToVCard:v6];
      mEMORY[0x1E69966F8] = [MEMORY[0x1E69966F8] sharedInstance];
      v9 = [mEMORY[0x1E69966F8] secureTemporarySubdirectoryWithName:@"DraggedItems"];

      v10 = [(CNDraggingContact *)self fileNameForContact:v6];
      v11 = [v9 URLByAppendingPathComponent:v10];

      v17 = 0;
      v12 = [v7 writeToURL:v11 options:1 error:&v17];
      v13 = v17;
      if (v12)
      {
        [(CNDraggingContact *)self setCachedFileURLRepresentation:v11];
      }

      else
      {
        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
        {
          [(CNDraggingContact *)v6 fileURLRepresentation];
        }
      }
    }

    cachedFileURLRepresentation2 = [(CNDraggingContact *)self cachedFileURLRepresentation];
  }

  else
  {
    cachedFileURLRepresentation2 = 0;
  }

  return cachedFileURLRepresentation2;
}

- (void)cleanupFileURLRepresentation
{
  cachedFileURLRepresentation = [(CNDraggingContact *)self cachedFileURLRepresentation];

  if (cachedFileURLRepresentation)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    cachedFileURLRepresentation2 = [(CNDraggingContact *)self cachedFileURLRepresentation];
    [defaultManager removeItemAtURL:cachedFileURLRepresentation2 error:0];

    [(CNDraggingContact *)self setCachedFileURLRepresentation:0];
  }
}

- (id)dataRepresentationForType:(id)type
{
  v27[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  contact = [(CNDraggingContact *)self contact];

  if (contact)
  {
    if ([typeCopy isEqualToString:*MEMORY[0x1E69638D8]])
    {
      v6 = +[CNContactVCardSerialization descriptorForRequiredKeys];
      contact2 = [(CNDraggingContact *)self fetchContactWithKeys:v6];

      v8 = [(CNDraggingContact *)self serializeContactToVCard:contact2];
LABEL_6:

      goto LABEL_13;
    }

    if ([typeCopy isEqualToString:@"CNContactIdentifiersPboardType"])
    {
      v9 = MEMORY[0x1E696AE40];
      contact2 = [(CNDraggingContact *)self contact];
      identifier = [contact2 identifier];
      v27[0] = identifier;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v8 = [v9 dataWithPropertyList:v11 format:200 options:0 error:0];

      goto LABEL_6;
    }

    if ([typeCopy isEqualToString:@"CNLinkedContactsIdentifiersPboardType"])
    {
      contact3 = [(CNDraggingContact *)self contact];
      linkedContacts = [contact3 linkedContacts];
      v14 = [linkedContacts count];

      contact4 = [(CNDraggingContact *)self contact];
      v16 = contact4;
      if (v14)
      {
        linkedContacts2 = [contact4 linkedContacts];
        v18 = [linkedContacts2 _cn_map:&__block_literal_global_32_0];
      }

      else
      {
        linkedContacts2 = [contact4 identifier];
        v26 = linkedContacts2;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      }

      v24 = v18;

      v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:v24 format:200 options:0 error:0];

      goto LABEL_13;
    }

    if ([typeCopy isEqualToString:@"com.apple.contacts.vCardDisplayNames"])
    {
      v19 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
      contact2 = [(CNDraggingContact *)self fetchContactWithKeys:v19];

      v20 = [(CNDraggingContact *)self fileNameForContact:contact2];
      v21 = MEMORY[0x1E696AE40];
      v25 = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v8 = [v21 dataWithPropertyList:v22 format:200 options:0 error:0];

      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (void)fileURLRepresentation
{
  v10 = *MEMORY[0x1E69E9840];
  identifier = [self identifier];
  v6 = 138412546;
  v7 = identifier;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1954A0000, a3, OS_LOG_TYPE_ERROR, "Error writing contact %@ to temporary file: %{public}@", &v6, 0x16u);
}

@end