@interface CNContactVCardWritingAdapter
+ (id)adapterWithContact:(id)a3 options:(id)a4;
+ (id)descriptorForAllSupportedKeysWithOptions:(id)a3;
- (CNContactVCardWritingAdapter)initWithContact:(id)a3 options:(id)a4;
- (NSArray)addressingGrammars;
- (NSArray)phoneNumbers;
- (NSArray)relatedNames;
- (NSData)sensitiveContentConfiguration;
- (NSData)wallpaper;
- (NSDictionary)activityAlerts;
- (NSString)note;
- (id)vCardPropertyItemsForProperty:(id)a3 valueTransform:(id)a4;
- (int)downtimeWhitelistAuthorization;
- (int)sharedPhotoDisplayPreference;
@end

@implementation CNContactVCardWritingAdapter

+ (id)adapterWithContact:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithContact:v7 options:v6];

  return v8;
}

+ (id)descriptorForAllSupportedKeysWithOptions:(id)a3
{
  v9 = MEMORY[0x1E695DF70];
  v8 = a3;
  v3 = [v9 arrayWithObjects:{@"givenName", @"familyName", @"middleName", @"namePrefix", @"nameSuffix", @"nickname", @"previousFamilyName", @"phoneticGivenName", @"phoneticMiddleName", @"phoneticFamilyName", @"pronunciationGivenName", @"pronunciationFamilyName", @"organizationName", @"phoneticOrganizationName", @"departmentName", @"jobTitle", @"contactType", @"emailAddresses", @"phoneNumbers", @"postalAddresses", @"socialProfiles", @"instantMessageAddresses", @"urlAddresses", @"calendarURIs", @"callAlert", @"textAlert", @"thumbnailImageData", @"imageData", @"birthday", @"nonGregorianBirthday", @"dates", @"contactRelations", @"note", @"preferredLikenessSource", @"preferredApplePersonaIdentifier", @"downtimeWhitelist", @"imageType", @"imageHash", @"memojiMetadata", @"wallpaper", @"watchWallpaperImageData", @"sharedPhotoDisplayPreference", @"imageBackgroundColorsData", @"sensitiveContentConfiguration", 0}];
  v4 = [v8 includePronouns];

  if (v4)
  {
    [v3 addObject:@"addressingGrammars"];
  }

  v5 = NSStringFromSelector(a2);
  v6 = [CNContact descriptorWithKeyDescriptors:v3 description:v5];

  return v6;
}

- (CNContactVCardWritingAdapter)initWithContact:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNContactVCardWritingAdapter;
  v9 = [(CNContactVCardWritingAdapter *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contact, a3);
    objc_storeStrong(&v10->_options, a4);
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
  v2 = [(CNContact *)self->_contact activityAlerts];
  v3 = [v2 allKeys];
  v4 = [v3 _cn_map:&__block_literal_global_14_0];
  v5 = [MEMORY[0x1E695DFB0] null];
  v6 = [v2 objectsForKeys:v3 notFoundMarker:v5];

  v7 = [v6 _cn_map:&__block_literal_global_17_2];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v4];

  return v8;
}

- (id)vCardPropertyItemsForProperty:(id)a3 valueTransform:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  [(CNContact *)self->_contact valueForKey:v6];
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
        v14 = [v13 value];
        if (v7)
        {
          v15 = v7[2](v7, v14);

          v14 = v15;
        }

        v16 = MEMORY[0x1E69E4B28];
        v17 = [v13 label];
        v18 = [v13 identifier];
        v19 = [v16 itemWithValue:v14 label:v17 identifier:v18];

        [v8 _cn_addNonNilObject:v19];
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  return v8;
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
    v3 = [(CNContact *)self->_contact note];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)downtimeWhitelistAuthorization
{
  v3 = *MEMORY[0x1E6996568];
  v4 = [(CNContact *)self->_contact downtimeWhitelist];
  LOBYTE(v3) = (*(v3 + 16))(v3, v4);

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
  v2 = [(CNContact *)self->_contact wallpaper];
  v3 = [v2 dataRepresentation];

  return v3;
}

- (int)sharedPhotoDisplayPreference
{
  v2 = [(CNContact *)self->_contact sharedPhotoDisplayPreference];
  if ((v2 - 1) >= 3)
  {
    LODWORD(v2) = 0;
  }

  return v2;
}

- (NSData)sensitiveContentConfiguration
{
  v2 = [(CNContact *)self->_contact sensitiveContentConfiguration];
  v3 = [v2 dataRepresentation];

  return v3;
}

@end