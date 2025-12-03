@interface ATXUserNotification(RawIdentifiers)
- (void)setRawIdentifiersWithContactRepresentationDataStore:()RawIdentifiers;
@end

@implementation ATXUserNotification(RawIdentifiers)

- (void)setRawIdentifiersWithContactRepresentationDataStore:()RawIdentifiers
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  contactIDs = [self contactIDs];
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = contactIDs;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v4 cnContactForCnContactId:*(*(&v21 + 1) + 8 * v10) rawIdentifier:0];
        phoneNumbers = [v11 phoneNumbers];
        v13 = [phoneNumbers _pas_mappedArrayWithTransform:&__block_literal_global_28];

        emailAddresses = [v11 emailAddresses];
        v15 = [emailAddresses _pas_mappedArrayWithTransform:&__block_literal_global_18];

        if ([v13 count])
        {
          firstObject = [v13 firstObject];
          [v6 addObject:firstObject];
        }

        if ([v15 count])
        {
          firstObject2 = [v15 firstObject];
          [v6 addObject:firstObject2];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  [selfCopy setRawIdentifiers:v6];
  v18 = *MEMORY[0x277D85DE8];
}

@end