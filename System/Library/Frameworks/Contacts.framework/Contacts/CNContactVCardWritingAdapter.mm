@interface CNContactVCardWritingAdapter
+ (id)adapterWithContact:(id)contact options:(id)options;
+ (id)descriptorForAllSupportedKeysWithOptions:(id)options;
- (CNContactVCardWritingAdapter)initWithContact:(id)contact options:(id)options;
- (NSArray)addressingGrammars;
- (NSArray)phoneNumbers;
- (NSArray)relatedNames;
- (NSData)sensitiveContentConfiguration;
- (NSData)wallpaper;
- (NSDictionary)activityAlerts;
- (NSString)note;
- (id)vCardPropertyItemsForProperty:(id)property valueTransform:(id)transform;
- (int)downtimeWhitelistAuthorization;
- (int)sharedPhotoDisplayPreference;
@end

@implementation CNContactVCardWritingAdapter

+ (id)adapterWithContact:(id)contact options:(id)options
{
  optionsCopy = options;
  contactCopy = contact;
  v8 = [[self alloc] initWithContact:contactCopy options:optionsCopy];

  return v8;
}

+ (id)descriptorForAllSupportedKeysWithOptions:(id)options
{
  v9 = MEMORY[0x1E695DF70];
  optionsCopy = options;
  v3 = [v9 arrayWithObjects:{@"givenName", @"familyName", @"middleName", @"namePrefix", @"nameSuffix", @"nickname", @"previousFamilyName", @"phoneticGivenName", @"phoneticMiddleName", @"phoneticFamilyName", @"pronunciationGivenName", @"pronunciationFamilyName", @"organizationName", @"phoneticOrganizationName", @"departmentName", @"jobTitle", @"contactType", @"emailAddresses", @"phoneNumbers", @"postalAddresses", @"socialProfiles", @"instantMessageAddresses", @"urlAddresses", @"calendarURIs", @"callAlert", @"textAlert", @"thumbnailImageData", @"imageData", @"birthday", @"nonGregorianBirthday", @"dates", @"contactRelations", @"note", @"preferredLikenessSource", @"preferredApplePersonaIdentifier", @"downtimeWhitelist", @"imageType", @"imageHash", @"memojiMetadata", @"wallpaper", @"watchWallpaperImageData", @"sharedPhotoDisplayPreference", @"imageBackgroundColorsData", @"sensitiveContentConfiguration", 0}];
  includePronouns = [optionsCopy includePronouns];

  if (includePronouns)
  {
    [v3 addObject:@"addressingGrammars"];
  }

  v5 = NSStringFromSelector(a2);
  v6 = [CNContact descriptorWithKeyDescriptors:v3 description:v5];

  return v6;
}

- (CNContactVCardWritingAdapter)initWithContact:(id)contact options:(id)options
{
  contactCopy = contact;
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = CNContactVCardWritingAdapter;
  v9 = [(CNContactVCardWritingAdapter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, contact);
    objc_storeStrong(&v10->_options, options);
    v11 = v10;
  }

  return v10;
}

- (NSArray)addressingGrammars
{
  if ([(CNVCardWritingOptions *)self->_options useUnencryptedPronouns])
  {
    +[CN addressingGrammarToStringTransform];
  }

  else
  {
    +[CN addressingGrammarToEncryptedStringTransform];
  }
  v3 = ;
  v4 = [(CNContactVCardWritingAdapter *)self vCardPropertyItemsForProperty:@"addressingGrammars" valueTransform:v3];

  return v4;
}

- (NSArray)phoneNumbers
{
  v3 = +[CN phoneNumberToStringTransform];
  v4 = [(CNContactVCardWritingAdapter *)self vCardPropertyItemsForProperty:@"phoneNumbers" valueTransform:v3];

  return v4;
}

id __46__CNContactVCardWritingAdapter_socialProfiles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CN socialProfileToDictionaryTransform];
  v4 = (v3)[2](v3, v2);

  v5 = [v4 mutableCopy];
  v6 = +[CNVCardConstantsMapping CNToVCardSocialProfileConstantsMapping];
  v7 = [v5 objectForKeyedSubscript:@"service"];
  v8 = [v6 mappedConstant:v7];

  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"service"];
  }

  return v5;
}

id __57__CNContactVCardWritingAdapter_instantMessagingAddresses__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CN instantMessageAddressToDictionaryTransform];
  v4 = (v3)[2](v3, v2);

  v5 = [v4 mutableCopy];
  v6 = +[CNVCardConstantsMapping CNToVCardInstantMessageConstantsMapping];
  v7 = [v5 objectForKeyedSubscript:@"service"];
  v8 = [v6 mappedConstant:v7];

  if (v8)
  {
    [v5 setObject:v8 forKeyedSubscript:@"service"];
  }

  return v5;
}

- (NSDictionary)activityAlerts
{
  activityAlerts = [(CNContact *)self->_contact activityAlerts];
  allKeys = [activityAlerts allKeys];
  v4 = [allKeys _cn_map:&__block_literal_global_14_0];
  null = [MEMORY[0x1E695DFB0] null];
  v6 = [activityAlerts objectsForKeys:allKeys notFoundMarker:null];

  v7 = [v6 _cn_map:&__block_literal_global_17_2];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v4];

  return v8;
}

- (id)vCardPropertyItemsForProperty:(id)property valueTransform:(id)transform
{
  v27 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  transformCopy = transform;
  array = [MEMORY[0x1E695DF70] array];
  [(CNContact *)self->_contact valueForKey:propertyCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        value = [v13 value];
        if (transformCopy)
        {
          v15 = transformCopy[2](transformCopy, value);

          value = v15;
        }

        v16 = MEMORY[0x1E69E4B28];
        label = [v13 label];
        identifier = [v13 identifier];
        v19 = [v16 itemWithValue:value label:label identifier:identifier];

        [array _cn_addNonNilObject:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  return array;
}

- (NSArray)relatedNames
{
  v3 = +[CN relatedContactToStringTransform];
  v4 = [(CNContactVCardWritingAdapter *)self vCardPropertyItemsForProperty:@"contactRelations" valueTransform:v3];

  return v4;
}

- (NSString)note
{
  if ([(CNContact *)self->_contact isKeyAvailable:@"note"])
  {
    note = [(CNContact *)self->_contact note];
  }

  else
  {
    note = 0;
  }

  return note;
}

- (int)downtimeWhitelistAuthorization
{
  v3 = *MEMORY[0x1E6996568];
  downtimeWhitelist = [(CNContact *)self->_contact downtimeWhitelist];
  LOBYTE(v3) = (*(v3 + 16))(v3, downtimeWhitelist);

  if (v3)
  {
    return 0;
  }

  if ([CNDowntimeWhitelist isWhitelistedContact:self->_contact])
  {
    return 1;
  }

  return 2;
}

- (NSData)wallpaper
{
  wallpaper = [(CNContact *)self->_contact wallpaper];
  dataRepresentation = [wallpaper dataRepresentation];

  return dataRepresentation;
}

- (int)sharedPhotoDisplayPreference
{
  sharedPhotoDisplayPreference = [(CNContact *)self->_contact sharedPhotoDisplayPreference];
  if ((sharedPhotoDisplayPreference - 1) >= 3)
  {
    LODWORD(sharedPhotoDisplayPreference) = 0;
  }

  return sharedPhotoDisplayPreference;
}

- (NSData)sensitiveContentConfiguration
{
  sensitiveContentConfiguration = [(CNContact *)self->_contact sensitiveContentConfiguration];
  dataRepresentation = [sensitiveContentConfiguration dataRepresentation];

  return dataRepresentation;
}

@end