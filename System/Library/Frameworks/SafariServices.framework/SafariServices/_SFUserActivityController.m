@interface _SFUserActivityController
+ (id)searchableItemAttributesForDictionary:(id)a3 profileIdentifier:(id)a4;
+ (id)sharedActivityController;
@end

@implementation _SFUserActivityController

+ (id)sharedActivityController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___SFUserActivityController_sharedActivityController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[_SFUserActivityController sharedActivityController]::onceToken != -1)
  {
    dispatch_once(&+[_SFUserActivityController sharedActivityController]::onceToken, block);
  }

  v2 = +[_SFUserActivityController sharedActivityController]::sharedController;

  return v2;
}

+ (id)searchableItemAttributesForDictionary:(id)a3 profileIdentifier:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"streetAddress"];
  if (v7)
  {
  }

  else
  {
    v8 = [v5 objectForKey:@"telephone"];

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
  v11 = [MEMORY[0x1E69C9078] coreSpotlightPageDonationIdentifierForProfileWithIdentifier:v6];
  [v8 setDomainIdentifier:v11];

  v12 = [v5 objectForKeyedSubscript:@"addressLocality"];
  if (v12)
  {
    [v8 setCity:v12];
  }

  v13 = [v5 objectForKeyedSubscript:@"addressCountry"];
  if (v13)
  {
    [v8 setCountry:v13];
  }

  v14 = [v5 objectForKeyedSubscript:@"addressRegion"];
  if (v14)
  {
    [v8 setStateOrProvince:v14];
  }

  v15 = [v5 objectForKeyedSubscript:@"telephone"];
  v16 = v15;
  if (v15)
  {
    v30[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    [v8 setPhoneNumbers:v17];
  }

  v18 = [v5 objectForKeyedSubscript:@"name"];
  if (v18)
  {
    [v8 setNamedLocation:v18];
  }

  v19 = [v5 objectForKeyedSubscript:@"url"];
  if (v19)
  {
    v20 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:v19];
    [v8 setURL:v20];
    v21 = [MEMORY[0x1E69C9078] historyItemIdentifierForURL:v20 profileIdentifier:v6];
    [v8 setRelatedUniqueIdentifier:v21];
  }

  v22 = [v5 objectForKeyedSubscript:@"postalCode"];
  if (v22)
  {
    [v8 setPostalCode:v22];
  }

  v23 = [v5 objectForKeyedSubscript:@"streetAddress"];
  if (v23)
  {
    [v8 setThoroughfare:v23];
  }

LABEL_23:

  return v8;
}

@end