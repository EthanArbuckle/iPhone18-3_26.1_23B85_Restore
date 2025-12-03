@interface _SFUserActivityController
+ (id)searchableItemAttributesForDictionary:(id)dictionary profileIdentifier:(id)identifier;
+ (id)sharedActivityController;
@end

@implementation _SFUserActivityController

+ (id)sharedActivityController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___SFUserActivityController_sharedActivityController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[_SFUserActivityController sharedActivityController]::onceToken != -1)
  {
    dispatch_once(&+[_SFUserActivityController sharedActivityController]::onceToken, block);
  }

  v2 = +[_SFUserActivityController sharedActivityController]::sharedController;

  return v2;
}

+ (id)searchableItemAttributesForDictionary:(id)dictionary profileIdentifier:(id)identifier
{
  v30[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v7 = [dictionaryCopy objectForKey:@"streetAddress"];
  if (v7)
  {
  }

  else
  {
    v8 = [dictionaryCopy objectForKey:@"telephone"];

    if (!v8)
    {
      goto LABEL_23;
    }
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v9 = getCSSearchableItemAttributeSetClass(void)::softClass;
  v29 = getCSSearchableItemAttributeSetClass(void)::softClass;
  if (!getCSSearchableItemAttributeSetClass(void)::softClass)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___ZL36getCSSearchableItemAttributeSetClassv_block_invoke;
    v25[3] = &unk_1E848F7D0;
    v25[4] = &v26;
    ___ZL36getCSSearchableItemAttributeSetClassv_block_invoke(v25);
    v9 = v27[3];
  }

  v10 = v9;
  _Block_object_dispose(&v26, 8);
  v8 = [[v9 alloc] initWithItemContentType:@"com.apple.mobilesafari.UserActivity.ProactiveConnection"];
  v11 = [MEMORY[0x1E69C9078] coreSpotlightPageDonationIdentifierForProfileWithIdentifier:identifierCopy];
  [v8 setDomainIdentifier:v11];

  v12 = [dictionaryCopy objectForKeyedSubscript:@"addressLocality"];
  if (v12)
  {
    [v8 setCity:v12];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"addressCountry"];
  if (v13)
  {
    [v8 setCountry:v13];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"addressRegion"];
  if (v14)
  {
    [v8 setStateOrProvince:v14];
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"telephone"];
  v16 = v15;
  if (v15)
  {
    v30[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v8 setPhoneNumbers:v17];
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v18)
  {
    [v8 setNamedLocation:v18];
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"url"];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v19];
    [v8 setURL:v20];
    v21 = [MEMORY[0x1E69C9078] historyItemIdentifierForURL:v20 profileIdentifier:identifierCopy];
    [v8 setRelatedUniqueIdentifier:v21];
  }

  v22 = [dictionaryCopy objectForKeyedSubscript:@"postalCode"];
  if (v22)
  {
    [v8 setPostalCode:v22];
  }

  v23 = [dictionaryCopy objectForKeyedSubscript:@"streetAddress"];
  if (v23)
  {
    [v8 setThoroughfare:v23];
  }

LABEL_23:

  return v8;
}

@end