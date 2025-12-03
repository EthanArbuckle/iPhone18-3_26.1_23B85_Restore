@interface ABSPerson
+ (BOOL)shortNameFormatEnabled;
+ (BOOL)shortNameFormatPrefersNicknames;
+ (id)copyCompositeNameDelimiterForPerson:(id)person;
+ (id)createPeopleInSource:(id)source withVCardRepresentation:(id)representation;
+ (id)defaultKeysToFetch;
+ (id)localizedNameForProperty:(int)property;
+ (id)nameForProperty:(int)property;
+ (id)propertyKeyForPropertyID:(int)d;
+ (id)vCardRepresentationForPeople:(id)people;
+ (unsigned)compositeNameFormatForPerson:(id)person;
+ (unsigned)sortOrdering;
+ (unsigned)typeForProperty:(int)property;
+ (void)initialize;
+ (void)setCompositeNameFormat:(unsigned int)format;
- (ABSAddressBook)addressBook;
- (ABSPerson)initWithMutableContact:(id)contact source:(id)source;
- (ABSSource)source;
- (BOOL)completeCNImplIfNeededWithKeysToFetch:(id)fetch;
- (BOOL)getIdentifier:(int *)identifier label:(id *)label forMultiValueMatchingValue:(id)value property:(int)property;
- (BOOL)hasImageData;
- (BOOL)removeImageDataWithError:(id *)error;
- (BOOL)removeProperty:(int)property withError:(id *)error;
- (BOOL)setImageData:(id)data withError:(id *)error;
- (BOOL)setValue:(void *)value forProperty:(int)property withError:(__CFError *)error;
- (CNMutableContact)cnImpl;
- (NSString)CNIdentifierString;
- (NSString)compositeName;
- (NSString)description;
- (id)compositeNameIgnoringOrganization:(BOOL)organization;
- (id)copyCompositeNameDelimiter;
- (id)copyImageData;
- (id)copyImageDataWithFormat:(int)format;
- (id)linkedPeople;
- (id)shortName;
- (id)soundIdentifierForMultivalueIdentifier:(int)identifier;
- (id)stringFromFormatter:(id)formatter;
- (int)id;
- (int64_t)comparePersonByName:(id)name sortOrdering:(unsigned int)ordering;
- (unsigned)compositeNameFormat;
- (void)copyValueForProperty:(int)property;
- (void)replaceRecordStorageWithCNObject:(id)object;
- (void)setAddressBook:(id)book;
- (void)setValue:(id)value forSoundIdentifier:(int)identifier;
@end

@implementation ABSPerson

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___ABSPerson;
  objc_msgSendSuper2(&v2, sel_initialize);
  +[ABSAddressBook ABInitialize];
}

+ (id)defaultKeysToFetch
{
  if (defaultKeysToFetch_cn_once_token_1 != -1)
  {
    +[ABSPerson defaultKeysToFetch];
  }

  v3 = defaultKeysToFetch_cn_once_object_1;

  return v3;
}

void __31__ABSPerson_defaultKeysToFetch__block_invoke()
{
  v7[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBCFF8];
  v7[0] = *MEMORY[0x277CBD000];
  v7[1] = v0;
  v1 = *MEMORY[0x277CBD090];
  v7[2] = *MEMORY[0x277CBD058];
  v7[3] = v1;
  v2 = *MEMORY[0x277CBD078];
  v7[4] = *MEMORY[0x277CBD160];
  v7[5] = v2;
  v3 = *MEMORY[0x277CBD070];
  v7[6] = *MEMORY[0x277CBD068];
  v7[7] = v3;
  v7[8] = *MEMORY[0x277CBD010];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:9];
  v5 = [v4 copy];
  v6 = defaultKeysToFetch_cn_once_object_1;
  defaultKeysToFetch_cn_once_object_1 = v5;
}

+ (unsigned)typeForProperty:(int)property
{
  v3 = *&property;
  contactPropertiesByABSPropertyID = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [contactPropertiesByABSPropertyID objectForKeyedSubscript:v5];
  absPropertyType = [v6 absPropertyType];

  return absPropertyType;
}

+ (id)localizedNameForProperty:(int)property
{
  v3 = [self nameForProperty:*&property];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [mainBundle localizedStringForKey:v3 value:&stru_2849A7F60 table:0];

  return v5;
}

+ (id)nameForProperty:(int)property
{
  switch(property)
  {
    case 20:
      return @"Prefix";
    case 0:
      return @"First";
    case 6:
      return @"Middle";
    case 1:
      return @"Last";
    case 21:
      return @"Suffix";
    case 19:
      return @"Nickname";
    case 7:
      return @"FirstPhonetic";
    case 8:
      return @"MiddlePhonetic";
    case 9:
      return @"LastPhonetic";
    case 10:
      return @"Organization";
    case 11:
      return @"Department";
    case 18:
      return @"JobTitle";
    case 17:
      return @"Birthday";
    case 14:
      return @"Note";
    case 3:
      return @"Phone";
    case 4:
      return @"Email";
    case 22:
      return @"URLs";
    case 12:
      return @"Date";
    case 13:
      return @"IM";
    case 46:
      return @"SocialProfile";
    case 5:
      return @"Address";
    case 23:
      return @"RelatedNames";
  }

  return @"UNKNOWN_PROPERTY";
}

+ (unsigned)compositeNameFormatForPerson:(id)person
{
  v15[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  descriptorForRequiredKeysForNameOrder = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForNameOrder];
  v15[0] = descriptorForRequiredKeysForNameOrder;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = [personCopy completeCNImplIfNeededWithKeysToFetch:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CBDA78];
    cnImpl = [personCopy cnImpl];
    v9 = [v7 nameOrderForContact:cnImpl];

    v10 = +[ABSConstantsMapping CNToABCompositeNameFormatConstantsMapping];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v12 = [v10 mappedConstant:v11];
    intValue = [v12 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (void)setCompositeNameFormat:(unsigned int)format
{
  v3 = *&format;
  v4 = +[ABSConstantsMapping ABtoCNContactDisplayNameOrderConstantsMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [v4 mappedConstant:v5];
  intValue = [v6 intValue];

  mEMORY[0x277CBDAD0] = [MEMORY[0x277CBDAD0] sharedDefaults];
  [mEMORY[0x277CBDAD0] setDisplayNameOrder:intValue];
}

+ (id)copyCompositeNameDelimiterForPerson:(id)person
{
  v11[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  if (personCopy)
  {
    v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v6 = [personCopy completeCNImplIfNeededWithKeysToFetch:v5];

    v7 = 0;
    if (v6)
    {
      v8 = MEMORY[0x277CBDA78];
      cnImpl = [personCopy cnImpl];
      v7 = [v8 delimiterForContact:cnImpl];
    }
  }

  else
  {
    v7 = @" ";
  }

  return v7;
}

+ (unsigned)sortOrdering
{
  mEMORY[0x277CBDAD0] = [MEMORY[0x277CBDAD0] sharedDefaults];
  sortOrder = [mEMORY[0x277CBDAD0] sortOrder];

  v4 = +[ABSConstantsMapping CNToABPersonSortOrderingConstantsMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:sortOrder];
  v6 = [v4 mappedConstant:v5];
  intValue = [v6 intValue];

  return intValue;
}

+ (BOOL)shortNameFormatEnabled
{
  mEMORY[0x277CBDAD0] = [MEMORY[0x277CBDAD0] sharedDefaults];
  isShortNameFormatEnabled = [mEMORY[0x277CBDAD0] isShortNameFormatEnabled];

  return isShortNameFormatEnabled;
}

+ (BOOL)shortNameFormatPrefersNicknames
{
  mEMORY[0x277CBDAD0] = [MEMORY[0x277CBDAD0] sharedDefaults];
  shortNameFormatPrefersNicknames = [mEMORY[0x277CBDAD0] shortNameFormatPrefersNicknames];

  return shortNameFormatPrefersNicknames;
}

+ (id)vCardRepresentationForPeople:(id)people
{
  v26[1] = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  descriptorForRequiredKeys = [MEMORY[0x277CBDAC8] descriptorForRequiredKeys];
  v26[0] = descriptorForRequiredKeys;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(peopleCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = peopleCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 completeCNImplIfNeededWithKeysToFetch:v5])
        {
          cnImpl = [v12 cnImpl];
        }

        else
        {
          v14 = MEMORY[0x277CBDA58];
          cnImpl2 = [v12 cnImpl];
          cnImpl = [v14 makeContactAndMergeValuesFromAvailableKeysInContact:cnImpl2];
        }

        [v6 addObject:cnImpl];
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v20 = 0;
  v16 = [MEMORY[0x277CBDAC8] dataWithContacts:v6 error:&v20];
  v17 = v20;
  v18 = v17;
  if (!v16)
  {
    NSLog(&cfstr_ErrorCreatingV.isa, v17);
  }

  return v16;
}

+ (id)createPeopleInSource:(id)source withVCardRepresentation:(id)representation
{
  sourceCopy = source;
  v15 = 0;
  v7 = [MEMORY[0x277CBDAC8] contactsWithData:representation error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__ABSPerson_createPeopleInSource_withVCardRepresentation___block_invoke;
    v12[3] = &unk_278A04720;
    selfCopy = self;
    v13 = sourceCopy;
    v10 = [v7 _cn_map:v12];
  }

  else
  {
    NSLog(&cfstr_ErrorDeseriali.isa, v8);
    v10 = MEMORY[0x277CBEBF8];
  }

  return v10;
}

id __58__ABSPerson_createPeopleInSource_withVCardRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [objc_alloc(*(a1 + 40)) initWithMutableContact:v3 source:*(a1 + 32)];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  compositeName = [(ABSPerson *)self compositeName];
  v5 = [v3 appendName:@"name" object:compositeName];

  v6 = [v3 appendName:@"iOSLegacyIdentifier" intValue:{-[ABSPerson id](self, "id")}];
  build = [v3 build];

  return build;
}

- (ABSPerson)initWithMutableContact:(id)contact source:(id)source
{
  contactCopy = contact;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = ABSPerson;
  v8 = [(ABSPerson *)&v12 init];
  if (v8)
  {
    if (!contactCopy)
    {
      contactCopy = objc_alloc_init(MEMORY[0x277CBDB38]);
      v9 = [MEMORY[0x277CBEB58] set];
      nonNilSetProperties = v8->_nonNilSetProperties;
      v8->_nonNilSetProperties = v9;
    }

    objc_storeStrong(&v8->_cnImpl, contactCopy);
    objc_storeWeak(&v8->_source, sourceCopy);
  }

  return v8;
}

- (CNMutableContact)cnImpl
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (!self->_cnImpl)
  {
    revertedRecordIdentifier = [(ABSPerson *)self revertedRecordIdentifier];

    if (revertedRecordIdentifier)
    {
      addressBook = [(ABSPerson *)self addressBook];
      revertedRecordIdentifier2 = [(ABSPerson *)self revertedRecordIdentifier];
      v10[0] = revertedRecordIdentifier2;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      v7 = [addressBook peopleWithCNIdentifiers:v6];
    }
  }

  cnImpl = self->_cnImpl;

  return cnImpl;
}

- (BOOL)completeCNImplIfNeededWithKeysToFetch:(id)fetch
{
  fetchCopy = fetch;
  cnImpl = [(ABSPerson *)self cnImpl];
  v6 = [cnImpl areKeysAvailable:fetchCopy];

  if ((v6 & 1) == 0)
  {
    addressBook = [(ABSPerson *)self addressBook];

    if (!addressBook)
    {
      NSLog(&cfstr_RecordDoesnTBe.isa);
      v9 = 0;
      goto LABEL_5;
    }

    addressBook2 = [(ABSPerson *)self addressBook];
    [addressBook2 completePerson:self withKeysToFetch:fetchCopy];
  }

  v9 = 1;
LABEL_5:

  return v9;
}

- (int)id
{
  cnImpl = [(ABSPerson *)self cnImpl];
  iOSLegacyIdentifier = [cnImpl iOSLegacyIdentifier];

  if (iOSLegacyIdentifier)
  {
    return iOSLegacyIdentifier;
  }

  else
  {
    return -1;
  }
}

- (ABSSource)source
{
  WeakRetained = objc_loadWeakRetained(&self->_source);

  if (WeakRetained)
  {
    defaultSource = objc_loadWeakRetained(&self->_source);
    if (defaultSource)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (-[ABSPerson id](self, "id") == -1 || (-[ABSPerson addressBook](self, "addressBook"), v5 = objc_claimAutoreleasedReturnValue(), [v5 sourceForRecord:self], defaultSource = objc_claimAutoreleasedReturnValue(), v5, objc_storeWeak(&self->_source, defaultSource), !defaultSource))
  {
LABEL_6:
    addressBook = [(ABSPerson *)self addressBook];
    defaultSource = [addressBook defaultSource];

    objc_storeWeak(&self->_source, defaultSource);
  }

LABEL_7:

  return defaultSource;
}

- (NSString)CNIdentifierString
{
  cnImpl = [(ABSPerson *)self cnImpl];
  identifier = [cnImpl identifier];

  return identifier;
}

- (NSString)compositeName
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v4];

  v6 = 0;
  if (v5)
  {
    v7 = MEMORY[0x277CBDA78];
    cnImpl = [(ABSPerson *)self cnImpl];
    v6 = [v7 stringFromContact:cnImpl style:0];
  }

  return v6;
}

- (id)compositeNameIgnoringOrganization:(BOOL)organization
{
  organizationCopy = organization;
  v5 = objc_alloc_init(MEMORY[0x277CBDA78]);
  [v5 setStyle:0];
  [v5 setIgnoresOrganization:organizationCopy];
  v6 = [(ABSPerson *)self stringFromFormatter:v5];

  return v6;
}

- (id)shortName
{
  v3 = objc_alloc_init(MEMORY[0x277CBDA78]);
  [v3 setStyle:1000];
  v4 = [(ABSPerson *)self stringFromFormatter:v3];

  return v4;
}

- (id)stringFromFormatter:(id)formatter
{
  v11[1] = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  descriptorForRequiredKeys = [formatterCopy descriptorForRequiredKeys];
  v11[0] = descriptorForRequiredKeys;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v6];

  if (v7)
  {
    cnImpl = [(ABSPerson *)self cnImpl];
    v9 = [formatterCopy stringFromContact:cnImpl];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)copyValueForProperty:(int)property
{
  v3 = *&property;
  v24[1] = *MEMORY[0x277D85DE8];
  contactPropertiesByABSPropertyID = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v7 = [contactPropertiesByABSPropertyID objectForKeyedSubscript:v6];

  if (v7 && ([v7 key], v8 = objc_claimAutoreleasedReturnValue(), v24[0] = v8, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v24, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[ABSPerson completeCNImplIfNeededWithKeysToFetch:](self, "completeCNImplIfNeededWithKeysToFetch:", v9), v9, v8, v10) && (-[ABSPerson cnImpl](self, "cnImpl"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "key"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isKeyAvailable:", v12), v12, v11, v13))
  {
    cnImpl = [(ABSPerson *)self cnImpl];
    v15 = [v7 CNValueForContact:cnImpl];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v15 count] || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v15, "length")) && (-[ABSPerson nonNilSetProperties](self, "nonNilSetProperties"), (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, -[ABSPerson nonNilSetProperties](self, "nonNilSetProperties"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", v3), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "containsObject:", v19), v19, v18, v17, !v20))
    {
      v22 = 0;
    }

    else
    {
      v21 = [v15 copy];
      v22 = [v7 ABSValueFromCNValue:v21];

      if (v22)
      {
        v22 = CFRetain(v22);
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)setValue:(void *)value forProperty:(int)property withError:(__CFError *)error
{
  v6 = *&property;
  v29[1] = *MEMORY[0x277D85DE8];
  contactPropertiesByABSPropertyID = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v11 = [contactPropertiesByABSPropertyID objectForKeyedSubscript:v10];

  if (v11)
  {
    nonNilSetProperties = [(ABSPerson *)self nonNilSetProperties];

    if (value && nonNilSetProperties)
    {
      nonNilSetProperties2 = [(ABSPerson *)self nonNilSetProperties];
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      [nonNilSetProperties2 addObject:v14];
    }

    v28 = 0;
    v15 = [v11 convertABSValue:value toCNValue:&v28 error:error];
    v16 = v28;
    if (v15)
    {
      v17 = [v11 key];
      v29[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      v19 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v18];

      if (v19)
      {
        cnImpl = [(ABSPerson *)self cnImpl];
        v21 = [v11 key];
        v22 = [cnImpl isKeyAvailable:v21];

        if (v22)
        {
          v23 = [v16 copy];
          cnImpl2 = [(ABSPerson *)self cnImpl];
          [v11 setCNValue:v23 onContact:cnImpl2];

          addressBook = [(ABSPerson *)self addressBook];
          [addressBook recordUpdated:self];

          v26 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      else if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
        *error = v26 = 0;
        goto LABEL_13;
      }
    }

    v26 = 0;
    goto LABEL_13;
  }

  v26 = 1;
LABEL_14:

  return v26;
}

- (BOOL)removeProperty:(int)property withError:(id *)error
{
  v5 = *&property;
  v21[1] = *MEMORY[0x277D85DE8];
  contactPropertiesByABSPropertyID = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v9 = [contactPropertiesByABSPropertyID objectForKeyedSubscript:v8];

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [v9 key];
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v12 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v11];

  if (!v12)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
      *error = v19 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  cnImpl = [(ABSPerson *)self cnImpl];
  v14 = [v9 key];
  v15 = [cnImpl isKeyAvailable:v14];

  if (!v15)
  {
    goto LABEL_7;
  }

  nilValue = [v9 nilValue];
  cnImpl2 = [(ABSPerson *)self cnImpl];
  [v9 setCNValue:nilValue onContact:cnImpl2];

  addressBook = [(ABSPerson *)self addressBook];
  [addressBook recordUpdated:self];

  v19 = 1;
LABEL_8:

  return v19;
}

- (id)linkedPeople
{
  v7[1] = *MEMORY[0x277D85DE8];
  addressBook = [(ABSPerson *)self addressBook];
  v4 = [addressBook peopleLinkedToPerson:self];

  if ((*(*MEMORY[0x277CFBCF8] + 16))())
  {
    v7[0] = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

    v4 = v5;
  }

  return v4;
}

- (unsigned)compositeNameFormat
{
  v3 = objc_opt_class();

  return [v3 compositeNameFormatForPerson:self];
}

- (id)copyCompositeNameDelimiter
{
  v3 = objc_opt_class();

  return [v3 copyCompositeNameDelimiterForPerson:self];
}

- (BOOL)setImageData:(id)data withError:(id *)error
{
  v22[3] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *MEMORY[0x277CBF3A0];
  v21 = v8;
  if (dataCopy)
  {
    v9 = ABSCreateThumbnailDataAndCropRectFromImageData(dataCopy, &v20);
    if (!v9)
    {
      LOBYTE(v10) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277CBD158];
  v22[0] = *MEMORY[0x277CBD028];
  v22[1] = v11;
  v22[2] = *MEMORY[0x277CBCFA8];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{3, v20, v21}];
  v10 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v12];

  if (v10)
  {
    cnImpl = [(ABSPerson *)self cnImpl];
    [cnImpl setImageData:v7];

    cnImpl2 = [(ABSPerson *)self cnImpl];
    [cnImpl2 setThumbnailImageData:v9];

    v15 = v20;
    v16 = v21;
    cnImpl3 = [(ABSPerson *)self cnImpl];
    [cnImpl3 setCropRect:{v15, v16}];

    addressBook = [(ABSPerson *)self addressBook];
    [addressBook recordUpdated:self];
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
  }

  if (v9)
  {
    CFRelease(v9);
  }

LABEL_11:

  return v10;
}

- (id)copyImageData
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277CBD028];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v4 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v3];

  if (!v4)
  {
    return 0;
  }

  cnImpl = [(ABSPerson *)self cnImpl];
  imageData = [cnImpl imageData];
  v7 = [imageData copy];

  return v7;
}

- (id)copyImageDataWithFormat:(int)format
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!format)
  {
    v9[0] = *MEMORY[0x277CBD158];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v5];

    if (v6)
    {
      cnImpl = [(ABSPerson *)self cnImpl];
      thumbnailImageData = [cnImpl thumbnailImageData];

      return thumbnailImageData;
    }

    return 0;
  }

  if (format != 2)
  {
    return 0;
  }

  return [(ABSPerson *)self copyImageData];
}

- (BOOL)hasImageData
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277CBD020];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v4 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v3];

  if (!v4)
  {
    return 0;
  }

  cnImpl = [(ABSPerson *)self cnImpl];
  imageDataAvailable = [cnImpl imageDataAvailable];

  return imageDataAvailable;
}

- (BOOL)removeImageDataWithError:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBD028];
  v25[0] = *MEMORY[0x277CBD028];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v7 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v6];

  if (!v7)
  {
    if (error)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
      v24 = v23;
      result = 0;
      *error = v23;
      return result;
    }

    return 0;
  }

  cnImpl = [(ABSPerson *)self cnImpl];
  v9 = [cnImpl isKeyAvailable:v5];

  if (!v9)
  {
    return 0;
  }

  cnImpl2 = [(ABSPerson *)self cnImpl];
  [cnImpl2 setImageData:0];

  cnImpl3 = [(ABSPerson *)self cnImpl];
  v12 = [cnImpl3 isKeyAvailable:*MEMORY[0x277CBD158]];

  if (v12)
  {
    cnImpl4 = [(ABSPerson *)self cnImpl];
    [cnImpl4 setThumbnailImageData:0];
  }

  cnImpl5 = [(ABSPerson *)self cnImpl];
  v15 = [cnImpl5 isKeyAvailable:*MEMORY[0x277CBCFA8]];

  if (v15)
  {
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    cnImpl6 = [(ABSPerson *)self cnImpl];
    [cnImpl6 setCropRect:{v16, v17, v18, v19}];
  }

  addressBook = [(ABSPerson *)self addressBook];
  [addressBook recordUpdated:self];

  return 1;
}

- (int64_t)comparePersonByName:(id)name sortOrdering:(unsigned int)ordering
{
  v4 = *&ordering;
  v22[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = +[ABSConstantsMapping ABToCNContactSortOrderConstantsMapping];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v9 = [v7 mappedConstant:v8];
  intValue = [v9 intValue];

  v11 = [MEMORY[0x277CBDA58] comparatorForNameSortOrder:intValue];
  descriptorForAllComparatorKeys = [MEMORY[0x277CBDA58] descriptorForAllComparatorKeys];
  v22[0] = descriptorForAllComparatorKeys;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  LODWORD(intValue) = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v13];

  if (intValue && ([MEMORY[0x277CBDA58] descriptorForAllComparatorKeys], v14 = objc_claimAutoreleasedReturnValue(), v21 = v14, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v21, 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(nameCopy, "completeCNImplIfNeededWithKeysToFetch:", v15), v15, v14, v16))
  {
    cnImpl = [(ABSPerson *)self cnImpl];
    cnImpl2 = [nameCopy cnImpl];
    v19 = (v11)[2](v11, cnImpl, cnImpl2);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)propertyKeyForPropertyID:(int)d
{
  v3 = *&d;
  contactPropertiesByABSPropertyID = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [contactPropertiesByABSPropertyID objectForKeyedSubscript:v5];
  v7 = [v6 key];

  return v7;
}

- (void)setAddressBook:(id)book
{
  objc_storeWeak(&self->_addressBook, book);

  [(ABSPerson *)self setNonNilSetProperties:0];
}

- (void)replaceRecordStorageWithCNObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = objectCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSLog(&cfstr_StorageOfAbspe.isa);
      v6 = [v5 mutableCopy];

      v5 = v6;
    }

    v7 = v5;
  }

  else
  {
    cnImpl = [(ABSPerson *)self cnImpl];
    identifier = [cnImpl identifier];
    [(ABSPerson *)self setRevertedRecordIdentifier:identifier];

    v7 = 0;
  }

  v10 = v7;
  [(ABSPerson *)self setCnImpl:v7];
}

- (BOOL)getIdentifier:(int *)identifier label:(id *)label forMultiValueMatchingValue:(id)value property:(int)property
{
  v6 = *&property;
  valueCopy = value;
  if (identifier | label)
  {
    objc_opt_class();
    contactPropertiesByABSPropertyID = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v13 = [contactPropertiesByABSPropertyID objectForKeyedSubscript:v12];
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v16 = v15 != 0;
    if (v15)
    {
      v17 = [(ABSPerson *)self copyValueForProperty:v6];
      allValues = [v17 allValues];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __69__ABSPerson_getIdentifier_label_forMultiValueMatchingValue_property___block_invoke;
      v25 = &unk_278A04748;
      v26 = v15;
      v27 = valueCopy;
      v19 = [allValues _cn_indexOfFirstObjectPassingTest:&v22];

      if (identifier)
      {
        *identifier = [v17 identifierAtIndex:{v19, v22, v23, v24, v25, v26}];
      }

      if (label)
      {
        v20 = [v17 labelAtIndex:v19];
        *label = v20;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)soundIdentifierForMultivalueIdentifier:(int)identifier
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277CBD150];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v6 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v5];

  if (!v6)
  {
    v10 = 0;
    goto LABEL_14;
  }

  cnImpl = [(ABSPerson *)self cnImpl];
  textAlert = [cnImpl textAlert];

  switch(identifier)
  {
    case -102:
      vibration = [textAlert vibration];
      break;
    case -5:
      ignoreMute = [textAlert ignoreMute];
      v12 = @"YES";
      if (!ignoreMute)
      {
        v12 = 0;
      }

      vibration = v12;
      break;
    case -2:
      vibration = [textAlert sound];
      break;
    default:
      v10 = 0;
      goto LABEL_13;
  }

  v10 = vibration;
LABEL_13:

LABEL_14:

  return v10;
}

- (void)setValue:(id)value forSoundIdentifier:(int)identifier
{
  v17[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v17[0] = *MEMORY[0x277CBD150];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v7];

  if (v8)
  {
    cnImpl = [(ABSPerson *)self cnImpl];
    textAlert = [cnImpl textAlert];

    v11 = objc_alloc(MEMORY[0x277CBDB30]);
    sound = [textAlert sound];
    vibration = [textAlert vibration];
    v14 = [v11 initWithSound:sound vibration:vibration ignoreMute:{objc_msgSend(textAlert, "ignoreMute")}];

    switch(identifier)
    {
      case -102:
        [v14 setVibration:valueCopy];
        break;
      case -5:
        [v14 setIgnoreMute:{objc_msgSend(@"YES", "isEqualToString:", valueCopy)}];
        break;
      case -2:
        [v14 setSound:valueCopy];
        break;
    }

    cnImpl2 = [(ABSPerson *)self cnImpl];
    [cnImpl2 setTextAlert:v14];

    addressBook = [(ABSPerson *)self addressBook];
    [addressBook recordUpdated:self];
  }
}

- (ABSAddressBook)addressBook
{
  WeakRetained = objc_loadWeakRetained(&self->_addressBook);

  return WeakRetained;
}

@end