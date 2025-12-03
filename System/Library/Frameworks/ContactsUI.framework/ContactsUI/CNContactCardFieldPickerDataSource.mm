@interface CNContactCardFieldPickerDataSource
+ (BOOL)canSharePronounsForContacts:(id)contacts;
+ (BOOL)isSharingMeContactForContacts:(id)contacts;
+ (id)shareableNamePropertiesForContact:(id)contact;
- (BOOL)hasPhotoForContact:(id)contact;
- (BOOL)isFieldHidden:(id)hidden;
- (CNContactCardFieldPickerDataSource)initWithContact:(id)contact;
- (CNContactCardFieldPickerDataSource)initWithContacts:(id)contacts hiddenProperties:(id)properties;
- (id)_loadSectionsForContacts;
- (id)firstContactContainingPhoto;
- (id)groupItemForIndexPath:(id)path;
- (id)itemsForKey:(id)key forContact:(id)contact;
- (id)itemsForKey:(id)key forContacts:(id)contacts;
- (id)keyForIndexPath:(id)path;
- (id)shareableCardProperties;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)totalItemCount;
@end

@implementation CNContactCardFieldPickerDataSource

- (id)shareableCardProperties
{
  v18[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = *MEMORY[0x1E695C208];
  v18[0] = *MEMORY[0x1E695C330];
  v18[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [array addObjectsFromArray:v5];

  v6 = objc_opt_class();
  contacts = [(CNContactCardFieldPickerDataSource *)self contacts];
  LODWORD(v6) = [v6 canSharePronounsForContacts:contacts];

  if (v6)
  {
    [array addObject:*MEMORY[0x1E695C1C0]];
  }

  v8 = *MEMORY[0x1E695C360];
  v17[0] = *MEMORY[0x1E695C418];
  v17[1] = v8;
  v9 = *MEMORY[0x1E695C1F0];
  v17[2] = @"birthdays";
  v17[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  [array addObjectsFromArray:v10];

  v11 = objc_opt_class();
  contacts2 = [(CNContactCardFieldPickerDataSource *)self contacts];
  LODWORD(v11) = [v11 isSharingMeContactForContacts:contacts2];

  if (v11)
  {
    [array addObject:*MEMORY[0x1E695C3A8]];
  }

  v13 = *MEMORY[0x1E695C2B0];
  v16[0] = *MEMORY[0x1E695C3D0];
  v16[1] = v13;
  v16[2] = *MEMORY[0x1E695C320];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  [array addObjectsFromArray:v14];

  return array;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  contacts = [(CNContactCardFieldPickerDataSource *)self contacts];
  v7 = [contacts count];

  if (v7 >= 2)
  {
    sections = [(CNContactCardFieldPickerDataSource *)self sections];
    v10 = [sections objectAtIndexedSubscript:section];

    displayTitle = [v10 displayTitle];
  }

  else
  {
    displayTitle = 0;
  }

  return displayTitle;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sections = [(CNContactCardFieldPickerDataSource *)self sections];
  v10 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  items = [v10 items];
  v12 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  sections2 = [(CNContactCardFieldPickerDataSource *)self sections];
  section = [pathCopy section];

  v15 = [sections2 objectAtIndexedSubscript:section];
  sectionType = [v15 sectionType];
  LODWORD(items) = [sectionType isEqualToString:@"contactCardFieldPickerPhotoSection"];

  if (items && (-[CNContactCardFieldPickerDataSource contacts](self, "contacts"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 count], v17, v18 == 1))
  {
    v19 = [viewCopy dequeueReusableCellWithIdentifier:@"contactCardFieldPickerPhotoCell"];
  }

  else
  {
    v19 = [viewCopy dequeueReusableCellWithIdentifier:@"contactCardFieldPickerCell"];
    contacts = [(CNContactCardFieldPickerDataSource *)self contacts];
    [v19 setDisplaysValue:{objc_msgSend(contacts, "count") == 1}];

    [v19 setItem:v12];
  }

  if (!v19)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContactCardFieldPickerDataSource.m" lineNumber:266 description:@"Cell is nil"];
  }

  [v19 setSelectionStyle:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  textLabel = [v19 textLabel];
  [textLabel setBackgroundColor:clearColor];

  return v19;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(CNContactCardFieldPickerDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:section];
  items = [v6 items];
  v8 = [items count];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(CNContactCardFieldPickerDataSource *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)totalItemCount
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sections = [(CNContactCardFieldPickerDataSource *)self sections];
  v3 = [sections countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(sections);
        }

        items = [*(*(&v10 + 1) + 8 * i) items];
        v5 += [items count];
      }

      v4 = [sections countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)firstContactContainingPhoto
{
  contacts = [(CNContactCardFieldPickerDataSource *)self contacts];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CNContactCardFieldPickerDataSource_firstContactContainingPhoto__block_invoke;
  v6[3] = &unk_1E74E7880;
  v6[4] = self;
  v4 = [contacts _cn_firstObjectPassingTest:v6];

  return v4;
}

- (BOOL)hasPhotoForContact:(id)contact
{
  contactCopy = contact;
  thumbnailImageData = [contactCopy thumbnailImageData];
  if (thumbnailImageData)
  {
    v5 = 1;
  }

  else if ([contactCopy isKeyAvailable:*MEMORY[0x1E695C278]])
  {
    imageData = [contactCopy imageData];
    v5 = imageData != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)groupItemForIndexPath:(id)path
{
  pathCopy = path;
  sections = [(CNContactCardFieldPickerDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  items = [v6 items];
  v8 = [pathCopy row];

  v9 = [items objectAtIndexedSubscript:v8];
  groupItem = [v9 groupItem];

  return groupItem;
}

- (id)keyForIndexPath:(id)path
{
  pathCopy = path;
  sections = [(CNContactCardFieldPickerDataSource *)self sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  sectionType = [v6 sectionType];
  v8 = [sectionType isEqualToString:@"contactCardFieldPickerPhotoSection"];

  if (v8)
  {
    property = *MEMORY[0x1E695C278];
  }

  else
  {
    items = [v6 items];
    v11 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    groupItem = [v11 groupItem];
    property = [groupItem property];
  }

  return property;
}

- (id)itemsForKey:(id)key forContact:(id)contact
{
  v39[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  contactCopy = contact;
  if ([keyCopy isEqualToString:*MEMORY[0x1E695C278]])
  {
    if ([(CNContactCardFieldPickerDataSource *)self hasPhotoForContact:contactCopy])
    {
      v31 = +[CNContactCardFieldItem photoItem];
      v39[0] = v31;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    goto LABEL_22;
  }

  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = [CNCardPropertyGroup groupForProperty:keyCopy contact:contactCopy store:0 policy:0 linkedPolicies:0];
  v10 = [contactCopy valueForKey:keyCopy];
  if ([CNContactView isMultiValueProperty:keyCopy])
  {
    v29 = v10;
    v30 = keyCopy;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v10;
    v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      v14 = *MEMORY[0x1E6996570];
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = v9;
          v17 = v9;
          v18 = contactCopy;
          v19 = [CNPropertyGroupItem propertyGroupItemWithLabeledValue:*(*(&v34 + 1) + 8 * i) group:v17 contact:contactCopy, v29, v30];
          displayValue = [v19 displayValue];
          v21 = (*(v14 + 16))(v14, displayValue);

          if (v21)
          {
            v22 = [[CNContactCardFieldItem alloc] initWithGroupItem:v19];
            [v32 addObject:v22];
          }

          contactCopy = v18;
          v9 = v16;
        }

        v12 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    v10 = v29;
    keyCopy = v30;
    goto LABEL_18;
  }

  v23 = [MEMORY[0x1E695CEE0] labeledValueWithLabel:0 value:v10];
  v24 = [CNPropertyGroupItem propertyGroupItemWithLabeledValue:v23 group:v9 contact:contactCopy];
  v25 = *MEMORY[0x1E6996570];
  displayValue2 = [v24 displayValue];
  LODWORD(v25) = (*(v25 + 16))(v25, displayValue2);

  if (v25)
  {
    v27 = [[CNContactCardFieldItem alloc] initWithGroupItem:v24];
    [v32 addObject:v27];

LABEL_18:
    v8 = v32;
    goto LABEL_20;
  }

  v8 = MEMORY[0x1E695E0F0];
LABEL_20:

LABEL_22:

  return v8;
}

- (id)itemsForKey:(id)key forContacts:(id)contacts
{
  v37 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  contactsCopy = contacts;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __62__CNContactCardFieldPickerDataSource_itemsForKey_forContacts___block_invoke;
  v34[3] = &unk_1E74E2720;
  v34[4] = self;
  v8 = keyCopy;
  v35 = v8;
  v9 = [contactsCopy _cn_flatMap:v34];
  contacts = [(CNContactCardFieldPickerDataSource *)self contacts];
  v11 = [contacts count];

  if (v11 > 1)
  {
    v28 = v8;
    v29 = contactsCopy;
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v27 = v9;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      v12 = MEMORY[0x1E695E0F0];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          groupItem = [v19 groupItem];
          displayLabel = [groupItem displayLabel];
          v22 = [v13 containsObject:displayLabel];

          if ((v22 & 1) == 0)
          {
            v23 = [v12 arrayByAddingObject:v19];

            groupItem2 = [v19 groupItem];
            displayLabel2 = [groupItem2 displayLabel];
            [v13 addObject:displayLabel2];

            v12 = v23;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v16);
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    v8 = v28;
    contactsCopy = v29;
    v9 = v27;
  }

  else
  {
    v12 = v9;
  }

  return v12;
}

- (id)_loadSectionsForContacts
{
  v51[1] = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![(CNContactCardFieldPickerDataSource *)self isFieldHidden:*MEMORY[0x1E695C278]])
  {
    contacts = [(CNContactCardFieldPickerDataSource *)self contacts];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __62__CNContactCardFieldPickerDataSource__loadSectionsForContacts__block_invoke;
    v48[3] = &unk_1E74E7880;
    v48[4] = self;
    v4 = [contacts _cn_any:v48];

    if (v4)
    {
      v5 = [CNContactCardFieldSection alloc];
      v6 = +[CNContactCardFieldItem photoItem];
      v51[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
      v8 = [(CNContactCardFieldSection *)v5 initWithSectionType:@"contactCardFieldPickerPhotoSection" items:v7];

      [v39 addObject:v8];
    }
  }

  contacts2 = [(CNContactCardFieldPickerDataSource *)self contacts];
  v10 = [contacts2 count];

  if (v10 <= 1)
  {
    contacts3 = [(CNContactCardFieldPickerDataSource *)self contacts];
    firstObject = [contacts3 firstObject];
  }

  else
  {
    firstObject = objc_alloc_init(MEMORY[0x1E695CD58]);
  }

  v38 = firstObject;
  v13 = [CNContactCardFieldPickerDataSource shareableNamePropertiesForContact:firstObject];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v44 + 1) + 8 * i);
        if (![(CNContactCardFieldPickerDataSource *)self isFieldHidden:v20])
        {
          contacts4 = [(CNContactCardFieldPickerDataSource *)self contacts];
          v22 = [(CNContactCardFieldPickerDataSource *)self itemsForKey:v20 forContacts:contacts4];
          [v14 addObjectsFromArray:v22];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v17);
  }

  v36 = v15;

  if ([v14 count])
  {
    v23 = [[CNContactCardFieldSection alloc] initWithSectionType:@"contactCardFieldPickerNameSection" items:v14, v15];
    [v39 addObject:v23];
  }

  shareableCardProperties = [(CNContactCardFieldPickerDataSource *)self shareableCardProperties];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = [shareableCardProperties countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(shareableCardProperties);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        contacts5 = [(CNContactCardFieldPickerDataSource *)self contacts];
        v31 = [(CNContactCardFieldPickerDataSource *)self itemsForKey:v29 forContacts:contacts5];

        if ([v31 count])
        {
          v32 = [CNContactCardFieldSection alloc];
          v33 = [MEMORY[0x1E695CD58] localizedStringForKey:v29];
          v34 = [(CNContactCardFieldSection *)v32 initWithSectionType:v29 items:v31 displayTitle:v33];

          [v39 addObject:v34];
        }
      }

      v26 = [shareableCardProperties countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v26);
  }

  return v39;
}

- (BOOL)isFieldHidden:(id)hidden
{
  hiddenCopy = hidden;
  hiddenProperties = [(CNContactCardFieldPickerDataSource *)self hiddenProperties];

  if (hiddenProperties)
  {
    hiddenProperties2 = [(CNContactCardFieldPickerDataSource *)self hiddenProperties];
    v7 = [hiddenProperties2 _cn_containsObject:hiddenCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CNContactCardFieldPickerDataSource)initWithContacts:(id)contacts hiddenProperties:(id)properties
{
  contactsCopy = contacts;
  propertiesCopy = properties;
  v15.receiver = self;
  v15.super_class = CNContactCardFieldPickerDataSource;
  v9 = [(CNContactCardFieldPickerDataSource *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contacts, contacts);
    objc_storeStrong(&v10->_hiddenProperties, properties);
    _loadSections = [(CNContactCardFieldPickerDataSource *)v10 _loadSections];
    sections = v10->_sections;
    v10->_sections = _loadSections;

    v13 = v10;
  }

  return v10;
}

- (CNContactCardFieldPickerDataSource)initWithContact:(id)contact
{
  v10 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = MEMORY[0x1E695DEC8];
  contactCopy2 = contact;
  v6 = [v4 arrayWithObjects:&contactCopy count:1];

  v7 = [(CNContactCardFieldPickerDataSource *)self initWithContacts:v6, contactCopy, v10];
  return v7;
}

+ (BOOL)isSharingMeContactForContacts:(id)contacts
{
  contactsCopy = contacts;
  if ([contactsCopy count] == 1)
  {
    unifiedMeContactMonitor = [MEMORY[0x1E6996BA8] unifiedMeContactMonitor];
    firstObject = [contactsCopy firstObject];
    v6 = [unifiedMeContactMonitor isMeContact:firstObject];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)canSharePronounsForContacts:(id)contacts
{
  contactsCopy = contacts;
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v7 = [featureFlags isFeatureEnabled:23];

  if (v7)
  {
    v8 = [self isSharingMeContactForContacts:contactsCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)shareableNamePropertiesForContact:(id)contact
{
  contactCopy = contact;
  v4 = MEMORY[0x1E695CD80];
  if (contactCopy)
  {
    v5 = [MEMORY[0x1E695CD80] nameOrderForContact:contactCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695CD58]);
    v5 = [v4 nameOrderForContact:v6];
  }

  if (v5 == 1)
  {
    if (shareableNamePropertiesForContact__cn_once_token_1 != -1)
    {
      dispatch_once(&shareableNamePropertiesForContact__cn_once_token_1, &__block_literal_global_11947);
    }

    v7 = &shareableNamePropertiesForContact__cn_once_object_1;
  }

  else
  {
    if (shareableNamePropertiesForContact__cn_once_token_2 != -1)
    {
      dispatch_once(&shareableNamePropertiesForContact__cn_once_token_2, &__block_literal_global_87);
    }

    v7 = &shareableNamePropertiesForContact__cn_once_object_2;
  }

  v8 = *v7;
  v9 = *v7;

  return v8;
}

void __72__CNContactCardFieldPickerDataSource_shareableNamePropertiesForContact___block_invoke_2()
{
  v10[14] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C230];
  v10[0] = *MEMORY[0x1E695C300];
  v10[1] = v0;
  v1 = *MEMORY[0x1E695C390];
  v10[2] = *MEMORY[0x1E695C340];
  v10[3] = v1;
  v2 = *MEMORY[0x1E695C348];
  v10[4] = *MEMORY[0x1E695C240];
  v10[5] = v2;
  v3 = *MEMORY[0x1E695C350];
  v10[6] = *MEMORY[0x1E695C2F0];
  v10[7] = v3;
  v4 = *MEMORY[0x1E695C310];
  v10[8] = *MEMORY[0x1E695C308];
  v10[9] = v4;
  v5 = *MEMORY[0x1E695C1F8];
  v10[10] = *MEMORY[0x1E695C2C8];
  v10[11] = v5;
  v6 = *MEMORY[0x1E695C358];
  v10[12] = *MEMORY[0x1E695C328];
  v10[13] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:14];
  v8 = [v7 copy];
  v9 = shareableNamePropertiesForContact__cn_once_object_2;
  shareableNamePropertiesForContact__cn_once_object_2 = v8;
}

void __72__CNContactCardFieldPickerDataSource_shareableNamePropertiesForContact___block_invoke()
{
  v10[14] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C240];
  v10[0] = *MEMORY[0x1E695C300];
  v10[1] = v0;
  v1 = *MEMORY[0x1E695C2F0];
  v10[2] = *MEMORY[0x1E695C348];
  v10[3] = v1;
  v2 = *MEMORY[0x1E695C230];
  v10[4] = *MEMORY[0x1E695C350];
  v10[5] = v2;
  v3 = *MEMORY[0x1E695C390];
  v10[6] = *MEMORY[0x1E695C340];
  v10[7] = v3;
  v4 = *MEMORY[0x1E695C310];
  v10[8] = *MEMORY[0x1E695C308];
  v10[9] = v4;
  v5 = *MEMORY[0x1E695C1F8];
  v10[10] = *MEMORY[0x1E695C2C8];
  v10[11] = v5;
  v6 = *MEMORY[0x1E695C358];
  v10[12] = *MEMORY[0x1E695C328];
  v10[13] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:14];
  v8 = [v7 copy];
  v9 = shareableNamePropertiesForContact__cn_once_object_1;
  shareableNamePropertiesForContact__cn_once_object_1 = v8;
}

@end