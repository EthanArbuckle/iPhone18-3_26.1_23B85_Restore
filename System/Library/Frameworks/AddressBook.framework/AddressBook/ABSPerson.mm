@interface ABSPerson
+ (BOOL)shortNameFormatEnabled;
+ (BOOL)shortNameFormatPrefersNicknames;
+ (id)copyCompositeNameDelimiterForPerson:(id)a3;
+ (id)createPeopleInSource:(id)a3 withVCardRepresentation:(id)a4;
+ (id)defaultKeysToFetch;
+ (id)localizedNameForProperty:(int)a3;
+ (id)nameForProperty:(int)a3;
+ (id)propertyKeyForPropertyID:(int)a3;
+ (id)vCardRepresentationForPeople:(id)a3;
+ (unsigned)compositeNameFormatForPerson:(id)a3;
+ (unsigned)sortOrdering;
+ (unsigned)typeForProperty:(int)a3;
+ (void)initialize;
+ (void)setCompositeNameFormat:(unsigned int)a3;
- (ABSAddressBook)addressBook;
- (ABSPerson)initWithMutableContact:(id)a3 source:(id)a4;
- (ABSSource)source;
- (BOOL)completeCNImplIfNeededWithKeysToFetch:(id)a3;
- (BOOL)getIdentifier:(int *)a3 label:(id *)a4 forMultiValueMatchingValue:(id)a5 property:(int)a6;
- (BOOL)hasImageData;
- (BOOL)removeImageDataWithError:(id *)a3;
- (BOOL)removeProperty:(int)a3 withError:(id *)a4;
- (BOOL)setImageData:(id)a3 withError:(id *)a4;
- (BOOL)setValue:(void *)a3 forProperty:(int)a4 withError:(__CFError *)a5;
- (CNMutableContact)cnImpl;
- (NSString)CNIdentifierString;
- (NSString)compositeName;
- (NSString)description;
- (id)compositeNameIgnoringOrganization:(BOOL)a3;
- (id)copyCompositeNameDelimiter;
- (id)copyImageData;
- (id)copyImageDataWithFormat:(int)a3;
- (id)linkedPeople;
- (id)shortName;
- (id)soundIdentifierForMultivalueIdentifier:(int)a3;
- (id)stringFromFormatter:(id)a3;
- (int)id;
- (int64_t)comparePersonByName:(id)a3 sortOrdering:(unsigned int)a4;
- (unsigned)compositeNameFormat;
- (void)copyValueForProperty:(int)a3;
- (void)replaceRecordStorageWithCNObject:(id)a3;
- (void)setAddressBook:(id)a3;
- (void)setValue:(id)a3 forSoundIdentifier:(int)a4;
@end

@implementation ABSPerson

+ (void)initialize
{
  v2.receiver = a1;
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

+ (unsigned)typeForProperty:(int)a3
{
  v3 = *&a3;
  v4 = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 absPropertyType];

  return v7;
}

+ (id)localizedNameForProperty:(int)a3
{
  v3 = [a1 nameForProperty:*&a3];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 localizedStringForKey:v3 value:&stru_2849A7F60 table:0];

  return v5;
}

+ (id)nameForProperty:(int)a3
{
  switch(a3)
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

+ (unsigned)compositeNameFormatForPerson:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForNameOrder];
  v15[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v6 = [v3 completeCNImplIfNeededWithKeysToFetch:v5];

  if (v6)
  {
    v7 = MEMORY[0x277CBDA78];
    v8 = [v3 cnImpl];
    v9 = [v7 nameOrderForContact:v8];

    v10 = +[ABSConstantsMapping CNToABCompositeNameFormatConstantsMapping];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v12 = [v10 mappedConstant:v11];
    v13 = [v12 intValue];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)setCompositeNameFormat:(unsigned int)a3
{
  v3 = *&a3;
  v4 = +[ABSConstantsMapping ABtoCNContactDisplayNameOrderConstantsMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [v4 mappedConstant:v5];
  v7 = [v6 intValue];

  v8 = [MEMORY[0x277CBDAD0] sharedDefaults];
  [v8 setDisplayNameOrder:v7];
}

+ (id)copyCompositeNameDelimiterForPerson:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v6 = [v3 completeCNImplIfNeededWithKeysToFetch:v5];

    v7 = 0;
    if (v6)
    {
      v8 = MEMORY[0x277CBDA78];
      v9 = [v3 cnImpl];
      v7 = [v8 delimiterForContact:v9];
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
  v2 = [MEMORY[0x277CBDAD0] sharedDefaults];
  v3 = [v2 sortOrder];

  v4 = +[ABSConstantsMapping CNToABPersonSortOrderingConstantsMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
  v6 = [v4 mappedConstant:v5];
  v7 = [v6 intValue];

  return v7;
}

+ (BOOL)shortNameFormatEnabled
{
  v2 = [MEMORY[0x277CBDAD0] sharedDefaults];
  v3 = [v2 isShortNameFormatEnabled];

  return v3;
}

+ (BOOL)shortNameFormatPrefersNicknames
{
  v2 = [MEMORY[0x277CBDAD0] sharedDefaults];
  v3 = [v2 shortNameFormatPrefersNicknames];

  return v3;
}

+ (id)vCardRepresentationForPeople:(id)a3
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBDAC8] descriptorForRequiredKeys];
  v26[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v3;
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
          v13 = [v12 cnImpl];
        }

        else
        {
          v14 = MEMORY[0x277CBDA58];
          v15 = [v12 cnImpl];
          v13 = [v14 makeContactAndMergeValuesFromAvailableKeysInContact:v15];
        }

        [v6 addObject:v13];
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

+ (id)createPeopleInSource:(id)a3 withVCardRepresentation:(id)a4
{
  v6 = a3;
  v15 = 0;
  v7 = [MEMORY[0x277CBDAC8] contactsWithData:a4 error:&v15];
  v8 = v15;
  v9 = v8;
  if (v7)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__ABSPerson_createPeopleInSource_withVCardRepresentation___block_invoke;
    v12[3] = &unk_278A04720;
    v14 = a1;
    v13 = v6;
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
  v4 = [(ABSPerson *)self compositeName];
  v5 = [v3 appendName:@"name" object:v4];

  v6 = [v3 appendName:@"iOSLegacyIdentifier" intValue:{-[ABSPerson id](self, "id")}];
  v7 = [v3 build];

  return v7;
}

- (ABSPerson)initWithMutableContact:(id)a3 source:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ABSPerson;
  v8 = [(ABSPerson *)&v12 init];
  if (v8)
  {
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBDB38]);
      v9 = [MEMORY[0x277CBEB58] set];
      nonNilSetProperties = v8->_nonNilSetProperties;
      v8->_nonNilSetProperties = v9;
    }

    objc_storeStrong(&v8->_cnImpl, v6);
    objc_storeWeak(&v8->_source, v7);
  }

  return v8;
}

- (CNMutableContact)cnImpl
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (!self->_cnImpl)
  {
    v3 = [(ABSPerson *)self revertedRecordIdentifier];

    if (v3)
    {
      v4 = [(ABSPerson *)self addressBook];
      v5 = [(ABSPerson *)self revertedRecordIdentifier];
      v10[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      v7 = [v4 peopleWithCNIdentifiers:v6];
    }
  }

  cnImpl = self->_cnImpl;

  return cnImpl;
}

- (BOOL)completeCNImplIfNeededWithKeysToFetch:(id)a3
{
  v4 = a3;
  v5 = [(ABSPerson *)self cnImpl];
  v6 = [v5 areKeysAvailable:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(ABSPerson *)self addressBook];

    if (!v7)
    {
      NSLog(&cfstr_RecordDoesnTBe.isa);
      v9 = 0;
      goto LABEL_5;
    }

    v8 = [(ABSPerson *)self addressBook];
    [v8 completePerson:self withKeysToFetch:v4];
  }

  v9 = 1;
LABEL_5:

  return v9;
}

- (int)id
{
  v2 = [(ABSPerson *)self cnImpl];
  v3 = [v2 iOSLegacyIdentifier];

  if (v3)
  {
    return v3;
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
    v4 = objc_loadWeakRetained(&self->_source);
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (-[ABSPerson id](self, "id") == -1 || (-[ABSPerson addressBook](self, "addressBook"), v5 = objc_claimAutoreleasedReturnValue(), [v5 sourceForRecord:self], v4 = objc_claimAutoreleasedReturnValue(), v5, objc_storeWeak(&self->_source, v4), !v4))
  {
LABEL_6:
    v6 = [(ABSPerson *)self addressBook];
    v4 = [v6 defaultSource];

    objc_storeWeak(&self->_source, v4);
  }

LABEL_7:

  return v4;
}

- (NSString)CNIdentifierString
{
  v2 = [(ABSPerson *)self cnImpl];
  v3 = [v2 identifier];

  return v3;
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
    v8 = [(ABSPerson *)self cnImpl];
    v6 = [v7 stringFromContact:v8 style:0];
  }

  return v6;
}

- (id)compositeNameIgnoringOrganization:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBDA78]);
  [v5 setStyle:0];
  [v5 setIgnoresOrganization:v3];
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

- (id)stringFromFormatter:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 descriptorForRequiredKeys];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v6];

  if (v7)
  {
    v8 = [(ABSPerson *)self cnImpl];
    v9 = [v4 stringFromContact:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)copyValueForProperty:(int)a3
{
  v3 = *&a3;
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7 && ([v7 key], v8 = objc_claimAutoreleasedReturnValue(), v24[0] = v8, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v24, 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[ABSPerson completeCNImplIfNeededWithKeysToFetch:](self, "completeCNImplIfNeededWithKeysToFetch:", v9), v9, v8, v10) && (-[ABSPerson cnImpl](self, "cnImpl"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "key"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isKeyAvailable:", v12), v12, v11, v13))
  {
    v14 = [(ABSPerson *)self cnImpl];
    v15 = [v7 CNValueForContact:v14];

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

- (BOOL)setValue:(void *)a3 forProperty:(int)a4 withError:(__CFError *)a5
{
  v6 = *&a4;
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = [(ABSPerson *)self nonNilSetProperties];

    if (a3 && v12)
    {
      v13 = [(ABSPerson *)self nonNilSetProperties];
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      [v13 addObject:v14];
    }

    v28 = 0;
    v15 = [v11 convertABSValue:a3 toCNValue:&v28 error:a5];
    v16 = v28;
    if (v15)
    {
      v17 = [v11 key];
      v29[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      v19 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v18];

      if (v19)
      {
        v20 = [(ABSPerson *)self cnImpl];
        v21 = [v11 key];
        v22 = [v20 isKeyAvailable:v21];

        if (v22)
        {
          v23 = [v16 copy];
          v24 = [(ABSPerson *)self cnImpl];
          [v11 setCNValue:v23 onContact:v24];

          v25 = [(ABSPerson *)self addressBook];
          [v25 recordUpdated:self];

          v26 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      else if (a5)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
        *a5 = v26 = 0;
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

- (BOOL)removeProperty:(int)a3 withError:(id *)a4
{
  v5 = *&a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v9 = [v7 objectForKeyedSubscript:v8];

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
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
      *a4 = v19 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_8;
  }

  v13 = [(ABSPerson *)self cnImpl];
  v14 = [v9 key];
  v15 = [v13 isKeyAvailable:v14];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = [v9 nilValue];
  v17 = [(ABSPerson *)self cnImpl];
  [v9 setCNValue:v16 onContact:v17];

  v18 = [(ABSPerson *)self addressBook];
  [v18 recordUpdated:self];

  v19 = 1;
LABEL_8:

  return v19;
}

- (id)linkedPeople
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(ABSPerson *)self addressBook];
  v4 = [v3 peopleLinkedToPerson:self];

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

- (BOOL)setImageData:(id)a3 withError:(id *)a4
{
  v22[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *MEMORY[0x277CBF3A0];
  v21 = v8;
  if (v6)
  {
    v9 = ABSCreateThumbnailDataAndCropRectFromImageData(v6, &v20);
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
    v13 = [(ABSPerson *)self cnImpl];
    [v13 setImageData:v7];

    v14 = [(ABSPerson *)self cnImpl];
    [v14 setThumbnailImageData:v9];

    v15 = v20;
    v16 = v21;
    v17 = [(ABSPerson *)self cnImpl];
    [v17 setCropRect:{v15, v16}];

    v18 = [(ABSPerson *)self addressBook];
    [v18 recordUpdated:self];
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
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

  v5 = [(ABSPerson *)self cnImpl];
  v6 = [v5 imageData];
  v7 = [v6 copy];

  return v7;
}

- (id)copyImageDataWithFormat:(int)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v9[0] = *MEMORY[0x277CBD158];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v6 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v5];

    if (v6)
    {
      v7 = [(ABSPerson *)self cnImpl];
      v8 = [v7 thumbnailImageData];

      return v8;
    }

    return 0;
  }

  if (a3 != 2)
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

  v5 = [(ABSPerson *)self cnImpl];
  v6 = [v5 imageDataAvailable];

  return v6;
}

- (BOOL)removeImageDataWithError:(id *)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBD028];
  v25[0] = *MEMORY[0x277CBD028];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v7 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v6];

  if (!v7)
  {
    if (a3)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ABSAddressBookErrorDomain" code:1 userInfo:0];
      v24 = v23;
      result = 0;
      *a3 = v23;
      return result;
    }

    return 0;
  }

  v8 = [(ABSPerson *)self cnImpl];
  v9 = [v8 isKeyAvailable:v5];

  if (!v9)
  {
    return 0;
  }

  v10 = [(ABSPerson *)self cnImpl];
  [v10 setImageData:0];

  v11 = [(ABSPerson *)self cnImpl];
  v12 = [v11 isKeyAvailable:*MEMORY[0x277CBD158]];

  if (v12)
  {
    v13 = [(ABSPerson *)self cnImpl];
    [v13 setThumbnailImageData:0];
  }

  v14 = [(ABSPerson *)self cnImpl];
  v15 = [v14 isKeyAvailable:*MEMORY[0x277CBCFA8]];

  if (v15)
  {
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [(ABSPerson *)self cnImpl];
    [v20 setCropRect:{v16, v17, v18, v19}];
  }

  v21 = [(ABSPerson *)self addressBook];
  [v21 recordUpdated:self];

  return 1;
}

- (int64_t)comparePersonByName:(id)a3 sortOrdering:(unsigned int)a4
{
  v4 = *&a4;
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[ABSConstantsMapping ABToCNContactSortOrderConstantsMapping];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v9 = [v7 mappedConstant:v8];
  v10 = [v9 intValue];

  v11 = [MEMORY[0x277CBDA58] comparatorForNameSortOrder:v10];
  v12 = [MEMORY[0x277CBDA58] descriptorForAllComparatorKeys];
  v22[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  LODWORD(v10) = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v13];

  if (v10 && ([MEMORY[0x277CBDA58] descriptorForAllComparatorKeys], v14 = objc_claimAutoreleasedReturnValue(), v21 = v14, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v21, 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v6, "completeCNImplIfNeededWithKeysToFetch:", v15), v15, v14, v16))
  {
    v17 = [(ABSPerson *)self cnImpl];
    v18 = [v6 cnImpl];
    v19 = (v11)[2](v11, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)propertyKeyForPropertyID:(int)a3
{
  v3 = *&a3;
  v4 = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 key];

  return v7;
}

- (void)setAddressBook:(id)a3
{
  objc_storeWeak(&self->_addressBook, a3);

  [(ABSPerson *)self setNonNilSetProperties:0];
}

- (void)replaceRecordStorageWithCNObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
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
    v8 = [(ABSPerson *)self cnImpl];
    v9 = [v8 identifier];
    [(ABSPerson *)self setRevertedRecordIdentifier:v9];

    v7 = 0;
  }

  v10 = v7;
  [(ABSPerson *)self setCnImpl:v7];
}

- (BOOL)getIdentifier:(int *)a3 label:(id *)a4 forMultiValueMatchingValue:(id)a5 property:(int)a6
{
  v6 = *&a6;
  v10 = a5;
  if (a3 | a4)
  {
    objc_opt_class();
    v11 = [MEMORY[0x277CBDA20] contactPropertiesByABSPropertyID];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    v13 = [v11 objectForKeyedSubscript:v12];
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
      v18 = [v17 allValues];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __69__ABSPerson_getIdentifier_label_forMultiValueMatchingValue_property___block_invoke;
      v25 = &unk_278A04748;
      v26 = v15;
      v27 = v10;
      v19 = [v18 _cn_indexOfFirstObjectPassingTest:&v22];

      if (a3)
      {
        *a3 = [v17 identifierAtIndex:{v19, v22, v23, v24, v25, v26}];
      }

      if (a4)
      {
        v20 = [v17 labelAtIndex:v19];
        *a4 = v20;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)soundIdentifierForMultivalueIdentifier:(int)a3
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

  v7 = [(ABSPerson *)self cnImpl];
  v8 = [v7 textAlert];

  switch(a3)
  {
    case -102:
      v9 = [v8 vibration];
      break;
    case -5:
      v11 = [v8 ignoreMute];
      v12 = @"YES";
      if (!v11)
      {
        v12 = 0;
      }

      v9 = v12;
      break;
    case -2:
      v9 = [v8 sound];
      break;
    default:
      v10 = 0;
      goto LABEL_13;
  }

  v10 = v9;
LABEL_13:

LABEL_14:

  return v10;
}

- (void)setValue:(id)a3 forSoundIdentifier:(int)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17[0] = *MEMORY[0x277CBD150];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v8 = [(ABSPerson *)self completeCNImplIfNeededWithKeysToFetch:v7];

  if (v8)
  {
    v9 = [(ABSPerson *)self cnImpl];
    v10 = [v9 textAlert];

    v11 = objc_alloc(MEMORY[0x277CBDB30]);
    v12 = [v10 sound];
    v13 = [v10 vibration];
    v14 = [v11 initWithSound:v12 vibration:v13 ignoreMute:{objc_msgSend(v10, "ignoreMute")}];

    switch(a4)
    {
      case -102:
        [v14 setVibration:v6];
        break;
      case -5:
        [v14 setIgnoreMute:{objc_msgSend(@"YES", "isEqualToString:", v6)}];
        break;
      case -2:
        [v14 setSound:v6];
        break;
    }

    v15 = [(ABSPerson *)self cnImpl];
    [v15 setTextAlert:v14];

    v16 = [(ABSPerson *)self addressBook];
    [v16 recordUpdated:self];
  }
}

- (ABSAddressBook)addressBook
{
  WeakRetained = objc_loadWeakRetained(&self->_addressBook);

  return WeakRetained;
}

@end