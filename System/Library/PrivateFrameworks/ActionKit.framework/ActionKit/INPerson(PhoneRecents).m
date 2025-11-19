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
  v7 = [MEMORY[0x277CBEB18] array];
  v53 = v6;
  if ([v5 isKeyAvailable:*MEMORY[0x277CBD098]])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v52 = v5;
    v8 = [v5 phoneNumbers];
    v9 = [v8 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v63 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x277CD3E98]);
          v15 = [v13 value];
          v16 = [v15 stringValue];
          v17 = INPersonHandleLabelForCNLabeledValue();
          v18 = [v14 initWithValue:v16 type:2 label:v17];

          [v7 addObject:v18];
        }

        v10 = [v8 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
    v20 = [v5 emailAddresses];
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v68 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v59 + 1) + 8 * j);
          v26 = objc_alloc(MEMORY[0x277CD3E98]);
          v27 = [v25 value];
          v28 = INPersonHandleLabelForCNLabeledValue();
          v29 = [v26 initWithValue:v27 type:1 label:v28];

          [v7 addObject:v29];
        }

        v22 = [v20 countByEnumeratingWithState:&v59 objects:v68 count:16];
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
  v31 = [v7 if_firstObjectPassingTest:v57];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = [v7 firstObject];
  }

  v34 = v33;

  if ([v7 count] < 2)
  {

    v7 = 0;
  }

  else
  {
    [v7 removeObject:v34];
  }

  if ([v5 isKeyAvailable:*MEMORY[0x277CBD018]])
  {
    v35 = [v5 identifier];
  }

  else
  {
    v35 = 0;
  }

  if (![v5 isKeyAvailable:*MEMORY[0x277CBD020]] || !objc_msgSend(v5, "isKeyAvailable:", *MEMORY[0x277CBD158]) || !objc_msgSend(v5, "imageDataAvailable") || (v36 = MEMORY[0x277CD3D10], objc_msgSend(v5, "thumbnailImageData"), v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "imageWithImageData:", v37), v38 = objc_claimAutoreleasedReturnValue(), v37, !v38))
  {
    v54 = v34;
    v39 = v30;
    v40 = objc_alloc_init(MEMORY[0x277CBDBD0]);
    v41 = MEMORY[0x277CBDBE0];
    v42 = [MEMORY[0x277D79F18] currentDevice];
    [v42 screenScale];
    v44 = [v41 scopeWithPointSize:0 scale:0 rightToLeft:60.0 style:{60.0, v43}];

    v67 = v5;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    v46 = [v40 avatarImageForContacts:v45 scope:v44];

    v47 = [objc_alloc(MEMORY[0x277D79FC8]) initWithPlatformImage:v46];
    v48 = [v47 PNGRepresentation];
    if (v48)
    {
      v38 = [MEMORY[0x277CD3D10] imageWithImageData:v48];
    }

    else
    {
      v38 = 0;
    }

    v30 = v39;
    v34 = v54;
  }

  v49 = [a1 initWithPersonHandle:v34 nameComponents:v56 displayName:0 image:v38 contactIdentifier:v35 customIdentifier:0 aliases:v7 suggestionType:0];

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

@end