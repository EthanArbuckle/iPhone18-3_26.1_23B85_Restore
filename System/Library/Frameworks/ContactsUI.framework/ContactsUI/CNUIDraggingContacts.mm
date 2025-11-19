@interface CNUIDraggingContacts
+ (BOOL)canAcceptDropForDropSession:(id)a3;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)contactsFromDraggingContacts:(id)a3 withKeys:(id)a4;
+ (id)contactsWithIdentifiers:(id)a3 store:(id)a4 keysToFetch:(id)a5 unifyResults:(BOOL)a6 error:(id *)a7;
+ (id)dragItemForContact:(id)a3 withContactStore:(id)a4;
+ (id)draggingContactsForContacts:(id)a3 contactStore:(id)a4;
+ (id)draggingContactsWithItemProviderData:(id)a3 typeIdentifier:(id)a4 contactStore:(id)a5 error:(id *)a6;
+ (id)imageForDragging;
+ (id)itemProviderForContact:(id)a3 withContactStore:(id)a4;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (void)provideContactsForDropSession:(id)a3 withKeys:(id)a4 completionBlock:(id)a5;
+ (void)provideVCardURLForDropSession:(id)a3 completionBlock:(id)a4;
- (CNUIDraggingContacts)initWithDraggingContacts:(id)a3 contactStore:(id)a4;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation CNUIDraggingContacts

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *MEMORY[0x1E6996530];
  v9 = [(CNUIDraggingContacts *)self draggingContacts];
  LODWORD(v8) = (*(v8 + 16))(v8, v9);

  if (v8)
  {
    (*(v7 + 2))(v7, 0, 0);
  }

  else
  {
    v10 = [(CNUIDraggingContacts *)self draggingContacts];
    v11 = [v10 objectAtIndexedSubscript:0];

    v12 = [v11 dataRepresentationForType:v6];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    (*(v7 + 2))(v7, v13, 0);
  }

  return 0;
}

- (CNUIDraggingContacts)initWithDraggingContacts:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNUIDraggingContacts;
  v9 = [(CNUIDraggingContacts *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_draggingContacts, a3);
    objc_storeStrong(&v10->_contactStore, a4);
    v11 = v10;
  }

  return v10;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x1E695CE18];
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(v7);
  v11 = [objc_opt_class() draggingContactsWithItemProviderData:v9 typeIdentifier:v8 contactStore:v10 error:a5];

  return v11;
}

+ (id)draggingContactsForContacts:(id)a3 contactStore:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v5;
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
          v16 = [v15 initWithContact:v14 contactStore:{v6, v18}];
          [v8 addObject:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v7 = [[CNUIDraggingContacts alloc] initWithDraggingContacts:v8 contactStore:v6];
  }

  return v7;
}

+ (id)draggingContactsWithItemProviderData:(id)a3 typeIdentifier:(id)a4 contactStore:(id)a5 error:(id *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_opt_class() readableTypeIdentifiersForItemProvider];
  v14 = [v13 containsObject:v11];

  if (v14)
  {
    if ([v11 isEqualToString:*MEMORY[0x1E695C260]])
    {
      v15 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
      v16 = 0;
      if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
      {
        v20[0] = *MEMORY[0x1E695C258];
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        v16 = [a1 contactsWithIdentifiers:v15 store:v12 keysToFetch:v17 unifyResults:0 error:a6];
      }
    }

    else if ([v11 isEqualToString:*MEMORY[0x1E69638D8]])
    {
      v16 = [MEMORY[0x1E695CE30] contactsWithData:v10 error:a6];
    }

    else
    {
      v16 = 0;
    }

    v18 = [a1 draggingContactsForContacts:v16 contactStore:v12];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)contactsWithIdentifiers:(id)a3 store:(id)a4 keysToFetch:(id)a5 unifyResults:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v11 = MEMORY[0x1E695CD78];
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [[v11 alloc] initWithKeysToFetch:v12];

  v16 = [MEMORY[0x1E695CD58] predicateForContactsWithIdentifiers:v14];

  [v15 setPredicate:v16];
  [v15 setUnifyResults:v8];
  [v15 setOnlyMainStore:1];
  v17 = [MEMORY[0x1E695DF70] array];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__CNUIDraggingContacts_contactsWithIdentifiers_store_keysToFetch_unifyResults_error___block_invoke;
  v22[3] = &unk_1E74E3E70;
  v23 = v17;
  v18 = v17;
  LODWORD(a7) = [v13 enumerateContactsWithFetchRequest:v15 error:a7 usingBlock:v22];

  if (a7)
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

+ (void)provideVCardURLForDropSession:(id)a3 completionBlock:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = *MEMORY[0x1E69637C0];
  v30[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v11 = [v7 hasItemsConformingToTypeIdentifiers:v10];

  if ((v11 & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"CNUIDraggingContacts.m" lineNumber:145 description:@"dropSession does not contain items of type file URL"];
  }

  v12 = *MEMORY[0x1E6996530];
  v13 = [v7 items];
  LOBYTE(v12) = (*(v12 + 16))(v12, v13);

  if ((v12 & 1) == 0)
  {
    v8[2](v8, 0);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = [v7 items];
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v25 + 1) + 8 * v18) itemProvider];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__CNUIDraggingContacts_provideVCardURLForDropSession_completionBlock___block_invoke;
        v23[3] = &unk_1E74E5080;
        v24 = v8;
        v20 = [v19 loadDataRepresentationForTypeIdentifier:v9 completionHandler:v23];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

+ (id)contactsFromDraggingContacts:(id)a3 withKeys:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v5, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
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
        v12 = [v11 draggingContacts];
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v24 + 1) + 8 * j);
              v18 = [v17 fetchContactWithKeys:v6];
              if (v18)
              {
                v19 = [v17 fetchContactWithKeys:v6];
                [v7 addObject:v19];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v20 = [v7 allObjects];

  return v20;
}

+ (void)provideContactsForDropSession:(id)a3 withKeys:(id)a4 completionBlock:(id)a5
{
  v29[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 canLoadObjectsOfClass:objc_opt_class()];
  v13 = *MEMORY[0x1E695C2C0];
  v29[0] = *MEMORY[0x1E695C2B8];
  v29[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v15 = [v9 hasItemsConformingToTypeIdentifiers:v14];

  if ((v12 & 1) == 0 && (v15 & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"CNUIDraggingContacts.m" lineNumber:112 description:@"dropSession does not support creating items of class CNUIDraggingContacts or CNContact"];
  }

  v16 = *MEMORY[0x1E6996530];
  v17 = [v9 items];
  LOBYTE(v16) = (*(v16 + 16))(v16, v17);

  if ((v16 & 1) == 0)
  {
    v11[2](v11, 0);
  }

  if (v15)
  {
    v18 = objc_opt_class();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __79__CNUIDraggingContacts_provideContactsForDropSession_withKeys_completionBlock___block_invoke;
    v27[3] = &unk_1E74E3E20;
    v19 = &v28;
    v28 = v11;
    v20 = [v9 loadObjectsOfClass:v18 completion:v27];
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
    v26[0] = v11;
    v26[1] = a1;
    v25 = v10;
    v22 = [v9 loadObjectsOfClass:v21 completion:v24];

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

+ (BOOL)canAcceptDropForDropSession:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69638D8];
  v12[0] = *MEMORY[0x1E69637C0];
  v12[1] = v4;
  v12[2] = *MEMORY[0x1E695C2C0];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  if ([v3 hasItemsConformingToTypeIdentifiers:v5])
  {
    v6 = [v3 localDragSession];
    if (v6)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v8 = *MEMORY[0x1E695C2B8];
      v11[0] = *MEMORY[0x1E695C260];
      v11[1] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
      v7 = [v3 hasItemsConformingToTypeIdentifiers:v9] ^ 1;
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

+ (id)itemProviderForContact:(id)a3 withContactStore:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E695CE80]) initWithContact:v6 contactStore:v7];
    v9 = [CNUIDraggingContacts alloc];
    v23[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v11 = [(CNUIDraggingContacts *)v9 initWithDraggingContacts:v10 contactStore:v7];

    v12 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v11];
    v13 = *MEMORY[0x1E695C2B8];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__CNUIDraggingContacts_itemProviderForContact_withContactStore___block_invoke;
    v19[3] = &unk_1E74E3DF8;
    v22 = a1;
    v14 = v6;
    v20 = v14;
    v15 = v7;
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

+ (id)dragItemForContact:(id)a3 withContactStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() itemProviderForContact:v7 withContactStore:v6];

  v9 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__CNUIDraggingContacts_dragItemForContact_withContactStore___block_invoke;
  v12[3] = &__block_descriptor_40_e20___UIDragPreview_8__0l;
  v12[4] = a1;
  [v9 setPreviewProvider:v12];
  v10 = [CNUIVCardUtilities fileNameForContact:v7];

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