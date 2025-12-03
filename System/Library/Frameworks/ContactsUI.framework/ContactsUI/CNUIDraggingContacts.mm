@interface CNUIDraggingContacts
+ (BOOL)canAcceptDropForDropSession:(id)session;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)contactsFromDraggingContacts:(id)contacts withKeys:(id)keys;
+ (id)contactsWithIdentifiers:(id)identifiers store:(id)store keysToFetch:(id)fetch unifyResults:(BOOL)results error:(id *)error;
+ (id)dragItemForContact:(id)contact withContactStore:(id)store;
+ (id)draggingContactsForContacts:(id)contacts contactStore:(id)store;
+ (id)draggingContactsWithItemProviderData:(id)data typeIdentifier:(id)identifier contactStore:(id)store error:(id *)error;
+ (id)imageForDragging;
+ (id)itemProviderForContact:(id)contact withContactStore:(id)store;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (void)provideContactsForDropSession:(id)session withKeys:(id)keys completionBlock:(id)block;
+ (void)provideVCardURLForDropSession:(id)session completionBlock:(id)block;
- (CNUIDraggingContacts)initWithDraggingContacts:(id)contacts contactStore:(id)store;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
@end

@implementation CNUIDraggingContacts

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = *MEMORY[0x1E6996530];
  draggingContacts = [(CNUIDraggingContacts *)self draggingContacts];
  LODWORD(v8) = (*(v8 + 16))(v8, draggingContacts);

  if (v8)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    draggingContacts2 = [(CNUIDraggingContacts *)self draggingContacts];
    v11 = [draggingContacts2 objectAtIndexedSubscript:0];

    v12 = [v11 dataRepresentationForType:identifierCopy];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    (*(handlerCopy + 2))(handlerCopy, v13, 0);
  }

  return 0;
}

- (CNUIDraggingContacts)initWithDraggingContacts:(id)contacts contactStore:(id)store
{
  contactsCopy = contacts;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CNUIDraggingContacts;
  v9 = [(CNUIDraggingContacts *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_draggingContacts, contacts);
    objc_storeStrong(&v10->_contactStore, store);
    v11 = v10;
  }

  return v10;
}

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  v7 = MEMORY[0x1E695CE18];
  identifierCopy = identifier;
  dataCopy = data;
  v10 = objc_alloc_init(v7);
  v11 = [objc_opt_class() draggingContactsWithItemProviderData:dataCopy typeIdentifier:identifierCopy contactStore:v10 error:error];

  return v11;
}

+ (id)draggingContactsForContacts:(id)contacts contactStore:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  storeCopy = store;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(contactsCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = contactsCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = objc_alloc(MEMORY[0x1E695CE80]);
          v16 = [v15 initWithContact:v14 contactStore:{storeCopy, v18}];
          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v7 = [[CNUIDraggingContacts alloc] initWithDraggingContacts:v8 contactStore:storeCopy];
  }

  return v7;
}

+ (id)draggingContactsWithItemProviderData:(id)data typeIdentifier:(id)identifier contactStore:(id)store error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  identifierCopy = identifier;
  storeCopy = store;
  readableTypeIdentifiersForItemProvider = [objc_opt_class() readableTypeIdentifiersForItemProvider];
  v14 = [readableTypeIdentifiersForItemProvider containsObject:identifierCopy];

  if (v14)
  {
    if ([identifierCopy isEqualToString:*MEMORY[0x1E695C260]])
    {
      v15 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:0];
      v16 = 0;
      if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
      {
        v20[0] = *MEMORY[0x1E695C258];
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        v16 = [self contactsWithIdentifiers:v15 store:storeCopy keysToFetch:v17 unifyResults:0 error:error];
      }
    }

    else if ([identifierCopy isEqualToString:*MEMORY[0x1E69638D8]])
    {
      v16 = [MEMORY[0x1E695CE30] contactsWithData:dataCopy error:error];
    }

    else
    {
      v16 = 0;
    }

    v18 = [self draggingContactsForContacts:v16 contactStore:storeCopy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)contactsWithIdentifiers:(id)identifiers store:(id)store keysToFetch:(id)fetch unifyResults:(BOOL)results error:(id *)error
{
  resultsCopy = results;
  v11 = MEMORY[0x1E695CD78];
  fetchCopy = fetch;
  storeCopy = store;
  identifiersCopy = identifiers;
  v15 = [[v11 alloc] initWithKeysToFetch:fetchCopy];

  v16 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:identifiersCopy];

  [v15 setPredicate:v16];
  [v15 setUnifyResults:resultsCopy];
  [v15 setOnlyMainStore:1];
  array = [MEMORY[0x1E695DF70] array];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__CNUIDraggingContacts_contactsWithIdentifiers_store_keysToFetch_unifyResults_error___block_invoke;
  v22[3] = &unk_1E74E3E70;
  v23 = array;
  v18 = array;
  LODWORD(error) = [storeCopy enumerateContactsWithFetchRequest:v15 error:error usingBlock:v22];

  if (error)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69638D8];
  v5[0] = *MEMORY[0x1E695C260];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

+ (void)provideVCardURLForDropSession:(id)session completionBlock:(id)block
{
  v30[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  blockCopy = block;
  v9 = *MEMORY[0x1E69637C0];
  v30[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v11 = [sessionCopy hasItemsConformingToTypeIdentifiers:v10];

  if ((v11 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNUIDraggingContacts.m" lineNumber:145 description:@"dropSession does not contain items of type file URL"];
  }

  v12 = *MEMORY[0x1E6996530];
  items = [sessionCopy items];
  LOBYTE(v12) = (*(v12 + 16))(v12, items);

  if ((v12 & 1) == 0)
  {
    blockCopy[2](blockCopy, 0);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  items2 = [sessionCopy items];
  v15 = [items2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(items2);
        }

        itemProvider = [*(*(&v25 + 1) + 8 * v18) itemProvider];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__CNUIDraggingContacts_provideVCardURLForDropSession_completionBlock___block_invoke;
        v23[3] = &unk_1E74E5080;
        v24 = blockCopy;
        v20 = [itemProvider loadDataRepresentationForTypeIdentifier:v9 completionHandler:v23];

        ++v18;
      }

      while (v16 != v18);
      v16 = [items2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }
}

void __70__CNUIDraggingContacts_provideVCardURLForDropSession_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v6 = [[v3 alloc] initWithData:v4 encoding:4];

  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
  (*(*(a1 + 32) + 16))();
}

+ (id)contactsFromDraggingContacts:(id)contacts withKeys:(id)keys
{
  v34 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  keysCopy = keys;
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = contactsCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v23 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        draggingContacts = [v11 draggingContacts];
        v13 = [draggingContacts countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(draggingContacts);
              }

              v17 = *(*(&v24 + 1) + 8 * j);
              v18 = [v17 fetchContactWithKeys:keysCopy];
              if (v18)
              {
                v19 = [v17 fetchContactWithKeys:keysCopy];
                [v7 addObject:v19];
              }
            }

            v14 = [draggingContacts countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  allObjects = [v7 allObjects];

  return allObjects;
}

+ (void)provideContactsForDropSession:(id)session withKeys:(id)keys completionBlock:(id)block
{
  v29[2] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  keysCopy = keys;
  blockCopy = block;
  v12 = [sessionCopy canLoadObjectsOfClass:objc_opt_class()];
  v13 = *MEMORY[0x1E695C2C0];
  v29[0] = *MEMORY[0x1E695C2B8];
  v29[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v15 = [sessionCopy hasItemsConformingToTypeIdentifiers:v14];

  if ((v12 & 1) == 0 && (v15 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNUIDraggingContacts.m" lineNumber:112 description:@"dropSession does not support creating items of class CNUIDraggingContacts or CNContact"];
  }

  v16 = *MEMORY[0x1E6996530];
  items = [sessionCopy items];
  LOBYTE(v16) = (*(v16 + 16))(v16, items);

  if ((v16 & 1) == 0)
  {
    blockCopy[2](blockCopy, 0);
  }

  if (v15)
  {
    v18 = objc_opt_class();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__CNUIDraggingContacts_provideContactsForDropSession_withKeys_completionBlock___block_invoke;
    v27[3] = &unk_1E74E3E20;
    v19 = &v28;
    v28 = blockCopy;
    v20 = [sessionCopy loadObjectsOfClass:v18 completion:v27];
LABEL_10:

    goto LABEL_11;
  }

  if (v12)
  {
    v21 = objc_opt_class();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __79__CNUIDraggingContacts_provideContactsForDropSession_withKeys_completionBlock___block_invoke_2;
    v24[3] = &unk_1E74E3E48;
    v19 = v26;
    v26[0] = blockCopy;
    v26[1] = self;
    v25 = keysCopy;
    v22 = [sessionCopy loadObjectsOfClass:v21 completion:v24];

    goto LABEL_10;
  }

LABEL_11:
}

void __79__CNUIDraggingContacts_provideContactsForDropSession_withKeys_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [objc_opt_class() contactsFromDraggingContacts:v4 withKeys:*(a1 + 32)];

  (*(v3 + 16))(v3, v5);
}

+ (BOOL)canAcceptDropForDropSession:(id)session
{
  v12[3] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v4 = *MEMORY[0x1E69638D8];
  v12[0] = *MEMORY[0x1E69637C0];
  v12[1] = v4;
  v12[2] = *MEMORY[0x1E695C2C0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  if ([sessionCopy hasItemsConformingToTypeIdentifiers:v5])
  {
    localDragSession = [sessionCopy localDragSession];
    if (localDragSession)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = *MEMORY[0x1E695C2B8];
      v11[0] = *MEMORY[0x1E695C260];
      v11[1] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
      v7 = [sessionCopy hasItemsConformingToTypeIdentifiers:v9] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (id)imageForDragging
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"vCardDragging" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)itemProviderForContact:(id)contact withContactStore:(id)store
{
  v23[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  if (contactCopy)
  {
    v8 = [objc_alloc(MEMORY[0x1E695CE80]) initWithContact:contactCopy contactStore:storeCopy];
    v9 = [CNUIDraggingContacts alloc];
    v23[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v11 = [(CNUIDraggingContacts *)v9 initWithDraggingContacts:v10 contactStore:storeCopy];

    v12 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v11];
    v13 = *MEMORY[0x1E695C2B8];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__CNUIDraggingContacts_itemProviderForContact_withContactStore___block_invoke;
    v19[3] = &unk_1E74E3DF8;
    selfCopy = self;
    v14 = contactCopy;
    v20 = v14;
    v15 = storeCopy;
    v21 = v15;
    [v12 registerDataRepresentationForTypeIdentifier:v13 visibility:0 loadHandler:v19];
    v16 = [objc_alloc(MEMORY[0x1E6996C00]) initWithContactStore:v15];
    v17 = [v16 makeActivityAdvertisingViewingOfContact:v14];
    [v16 updateUserActivityState:v17 withContentsOfContact:v14];
    [v12 registerObject:v17 visibility:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __64__CNUIDraggingContacts_itemProviderForContact_withContactStore___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) identifier];
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v7 = *(a1 + 40);
  v8 = [MEMORY[0x1E695CE30] descriptorForRequiredKeys];
  v16 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v15 = 0;
  v10 = [v4 contactsWithIdentifiers:v6 store:v7 keysToFetch:v9 unifyResults:1 error:&v15];
  v11 = v15;

  if ([v10 count])
  {
    v12 = [v10 objectAtIndexedSubscript:0];
    v13 = [v12 loadDataWithTypeIdentifier:*MEMORY[0x1E695C2B8] forItemProviderCompletionHandler:v3];
  }

  else
  {
    (*(v3 + 2))(v3, 0, 0);
    v13 = 0;
  }

  return v13;
}

+ (id)dragItemForContact:(id)contact withContactStore:(id)store
{
  storeCopy = store;
  contactCopy = contact;
  v8 = [objc_opt_class() itemProviderForContact:contactCopy withContactStore:storeCopy];

  v9 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CNUIDraggingContacts_dragItemForContact_withContactStore___block_invoke;
  v12[3] = &__block_descriptor_40_e20___UIDragPreview_8__0l;
  v12[4] = self;
  [v9 setPreviewProvider:v12];
  v10 = [CNUIVCardUtilities fileNameForContact:contactCopy];

  [v8 setSuggestedName:v10];

  return v9;
}

id __60__CNUIDraggingContacts_dragItemForContact_withContactStore___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v1 = [objc_opt_class() imageForDragging];
  v2 = [v0 initWithImage:v1];

  v3 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:v2];

  return v3;
}

@end