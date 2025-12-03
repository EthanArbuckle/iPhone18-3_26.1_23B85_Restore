@interface INPerson(PhoneRecents)
- (uint64_t)initWithContact:()PhoneRecents handle:;
@end

@implementation INPerson(PhoneRecents)

- (uint64_t)initWithContact:()PhoneRecents handle:
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v56 = [MEMORY[0x277CCAC00] componentsForContact:v5];
  array = [MEMORY[0x277CBEB18] array];
  v53 = v6;
  if ([v5 isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v52 = v5;
    phoneNumbers = [v5 phoneNumbers];
    v9 = [phoneNumbers countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v64;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v64 != v11)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          v13 = *(*(&v63 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x277CD3E98]);
          value = [v13 value];
          stringValue = [value stringValue];
          v17 = INPersonHandleLabelForCNLabeledValue();
          v18 = [v14 initWithValue:stringValue type:2 label:v17];

          [array addObject:v18];
        }

        v10 = [phoneNumbers countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v10);
    }

    v5 = v52;
    v6 = v53;
  }

  if ([v5 isKeyAvailable:*MEMORY[0x277CBCFC0]])
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v19 = v5;
    emailAddresses = [v5 emailAddresses];
    v21 = [emailAddresses countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v60;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(emailAddresses);
          }

          v25 = *(*(&v59 + 1) + 8 * j);
          v26 = objc_alloc(MEMORY[0x277CD3E98]);
          value2 = [v25 value];
          v28 = INPersonHandleLabelForCNLabeledValue();
          v29 = [v26 initWithValue:value2 type:1 label:v28];

          [array addObject:v29];
        }

        v22 = [emailAddresses countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v22);
    }

    v5 = v19;
    v6 = v53;
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __49__INPerson_PhoneRecents__initWithContact_handle___block_invoke;
  v57[3] = &unk_278C19DD8;
  v30 = v6;
  v58 = v30;
  v31 = [array if_firstObjectPassingTest:v57];
  v32 = v31;
  if (v31)
  {
    firstObject = v31;
  }

  else
  {
    firstObject = [array firstObject];
  }

  v34 = firstObject;

  if ([array count] < 2)
  {

    array = 0;
  }

  else
  {
    [array removeObject:v34];
  }

  if ([v5 isKeyAvailable:*MEMORY[0x277CBD018]])
  {
    identifier = [v5 identifier];
  }

  else
  {
    identifier = 0;
  }

  if (![v5 isKeyAvailable:*MEMORY[0x277CBD020]] || !objc_msgSend(v5, "isKeyAvailable:", *MEMORY[0x277CBD158]) || !objc_msgSend(v5, "imageDataAvailable") || (v36 = MEMORY[0x277CD3D10], objc_msgSend(v5, "thumbnailImageData"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "imageWithImageData:", v37), v38 = objc_claimAutoreleasedReturnValue(), v37, !v38))
  {
    v54 = v34;
    v39 = v30;
    v40 = objc_alloc_init(MEMORY[0x277CBDBD0]);
    v41 = MEMORY[0x277CBDBE0];
    currentDevice = [MEMORY[0x277D79F18] currentDevice];
    [currentDevice screenScale];
    v44 = [v41 scopeWithPointSize:0 scale:0 rightToLeft:60.0 style:{60.0, v43}];

    v67 = v5;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    v46 = [v40 avatarImageForContacts:v45 scope:v44];

    v47 = [objc_alloc(MEMORY[0x277D79FC8]) initWithPlatformImage:v46];
    pNGRepresentation = [v47 PNGRepresentation];
    if (pNGRepresentation)
    {
      v38 = [MEMORY[0x277CD3D10] imageWithImageData:pNGRepresentation];
    }

    else
    {
      v38 = 0;
    }

    v30 = v39;
    v34 = v54;
  }

  v49 = [self initWithPersonHandle:v34 nameComponents:v56 displayName:0 image:v38 contactIdentifier:identifier customIdentifier:0 aliases:array suggestionType:0];

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

@end