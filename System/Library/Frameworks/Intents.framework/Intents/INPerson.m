@interface INPerson
+ (id)expectedCNContactKeys;
+ (id)toNilScoredPersons:(id)a3;
- (BOOL)_intents_compareValue:(id)a3 relation:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (INPerson)initWithCoder:(id)a3;
- (INPerson)initWithContact:(id)a3;
- (INPerson)initWithHandle:(NSString *)handle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier;
- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier aliases:(NSArray *)aliases suggestionType:(INPersonSuggestionType)suggestionType;
- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier isContactSuggestion:(BOOL)isContactSuggestion suggestionType:(INPersonSuggestionType)suggestionType;
- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier isMe:(BOOL)isMe;
- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier isMe:(BOOL)isMe suggestionType:(INPersonSuggestionType)suggestionType;
- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier relationship:(INPersonRelationship)relationship;
- (NSString)displayName;
- (NSString)firstName;
- (NSString)handle;
- (NSString)lastName;
- (NSString)userIdentifier;
- (NSString)userName;
- (NSString)userURIString;
- (id)_dictionaryRepresentation;
- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 customIdentifier:(id)a9 relationship:(id)a10 aliases:(id)a11 suggestionType:(int64_t)a12 isMe:(BOOL)a13 alternatives:(id)a14 sourceAppBundleIdentifier:(id)a15 phonemeData:(id)a16 isContactSuggestion:(BOOL)a17;
- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 customIdentifier:(id)a9 relationship:(id)a10 aliases:(id)a11 suggestionType:(int64_t)a12 isMe:(BOOL)a13 scoredAlternatives:(id)a14 sourceAppBundleIdentifier:(id)a15 phonemeData:(id)a16 isContactSuggestion:(BOOL)a17 searchProvider:(int64_t)a18;
- (id)_intents_cacheableObjects;
- (id)_intents_indexingRepresentation;
- (id)_intents_readableHandleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)_intents_readableSubtitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)spokenPhrases;
- (unint64_t)hash;
- (void)_injectProxiesForImages:(id)a3 completion:(id)a4;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlternatives:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setHandle:(id)a3;
@end

@implementation INPerson

- (unint64_t)hash
{
  v3 = [(INPersonHandle *)self->_personHandle hash];
  v4 = [(NSPersonNameComponents *)self->_nameComponents hash]^ v3;
  v5 = [(INImage *)self->_image hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_contactIdentifier hash];
  v7 = [(NSString *)self->_customIdentifier hash];
  v8 = v6 ^ v7 ^ [(NSArray *)self->_aliases hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_suggestionType];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMe];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [(NSArray *)self->_scoredAlternatives hash];
  v14 = v13 ^ [(NSString *)self->_phonemeData hash];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_contactSuggestion];
  v16 = v14 ^ [v15 hash];
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:self->_searchProvider];
  v18 = v12 ^ v16 ^ [v17 hash];

  displayName = self->_displayName;
  v20 = [(INPersonHandle *)self->_personHandle value];
  LOBYTE(displayName) = [(NSString *)displayName isEqualToString:v20];

  if ((displayName & 1) == 0)
  {
    v18 ^= [(NSString *)self->_displayName hash];
  }

  return v18;
}

- (NSString)displayName
{
  v3 = self->_displayName;
  if (![(NSString *)v3 length])
  {
    nameComponents = self->_nameComponents;
    if (nameComponents)
    {
      v5 = MEMORY[0x1E696ADF8];
      v6 = nameComponents;
      v7 = [v5 localizedStringFromPersonNameComponents:v6 style:0 options:0];

      v3 = v7;
    }
  }

  if (![(NSString *)v3 length])
  {
    v8 = [INStringLocalizer alloc];
    v9 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v10 = [v9 localeIdentifier];
    v11 = [(INStringLocalizer *)v8 initWithLanguageCode:v10];
    v12 = objc_opt_new();
    v13 = [(INPerson *)self _intents_readableHandleWithLocalizer:v11 metadata:v12];

    v3 = v13;
  }

  if (v3)
  {
    v14 = v3;
  }

  else
  {
    v14 = &stru_1F01E0850;
  }

  v15 = v14;

  return v14;
}

- (id)_dictionaryRepresentation
{
  v28[8] = *MEMORY[0x1E69E9840];
  personHandle = self->_personHandle;
  v26 = personHandle;
  v27[0] = @"personHandle";
  if (!personHandle)
  {
    personHandle = [MEMORY[0x1E695DFB0] null];
  }

  v24 = personHandle;
  v28[0] = personHandle;
  v27[1] = @"nameComponents";
  nameComponents = self->_nameComponents;
  v25 = nameComponents;
  if (!nameComponents)
  {
    nameComponents = [MEMORY[0x1E695DFB0] null];
  }

  v23 = nameComponents;
  v28[1] = nameComponents;
  v27[2] = @"displayName";
  displayName = self->_displayName;
  v6 = displayName;
  if (!displayName)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v6;
  v28[2] = v6;
  v27[3] = @"image";
  image = self->_image;
  v8 = image;
  if (!image)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v8;
  v28[3] = v8;
  v27[4] = @"contactIdentifier";
  contactIdentifier = self->_contactIdentifier;
  v10 = contactIdentifier;
  if (!contactIdentifier)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v10;
  v28[4] = v10;
  v27[5] = @"customIdentifier";
  customIdentifier = self->_customIdentifier;
  v12 = customIdentifier;
  if (!customIdentifier)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v12;
  v27[6] = @"relationship";
  relationship = self->_relationship;
  v14 = relationship;
  if (!relationship)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[6] = v14;
  v27[7] = @"siriMatches";
  v15 = [(INPerson *)self siriMatches];
  v16 = v15;
  if (!v15)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v28[7] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:8];
  if (!v15)
  {
  }

  if (relationship)
  {
    if (customIdentifier)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (customIdentifier)
    {
LABEL_21:
      if (contactIdentifier)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  if (contactIdentifier)
  {
LABEL_22:
    if (image)
    {
      goto LABEL_23;
    }

LABEL_34:

    if (displayName)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

LABEL_33:

  if (!image)
  {
    goto LABEL_34;
  }

LABEL_23:
  if (displayName)
  {
    goto LABEL_24;
  }

LABEL_35:

LABEL_24:
  if (!v25)
  {
  }

  if (!v26)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_intents_indexingRepresentation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(INPerson *)self contactIdentifier];
  v4 = [v3 length];

  if (v4)
  {
    v10 = @"contactIdentifier";
    v5 = [(INPerson *)self contactIdentifier];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v5 = [(INPerson *)self _dictionaryRepresentation];
    v6 = [v5 _intents_indexingRepresentation];
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_intents_cacheableObjects
{
  v2 = [(INPerson *)self image];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)userURIString
{
  v2 = [(INPerson *)self personHandle];
  v3 = [v2 value];

  return v3;
}

- (NSString)userIdentifier
{
  v2 = [(INPerson *)self personHandle];
  v3 = [v2 value];

  return v3;
}

- (NSString)userName
{
  v2 = [(INPerson *)self personHandle];
  v3 = [v2 value];

  return v3;
}

- (NSString)lastName
{
  v2 = [(INPerson *)self nameComponents];
  v3 = [v2 familyName];

  return v3;
}

- (NSString)firstName
{
  v2 = [(INPerson *)self nameComponents];
  v3 = [v2 givenName];

  return v3;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v13 = a3;
  v4 = [(INPerson *)self image];
  if (v4)
  {
    v5 = v4;
    v6 = [(INPerson *)self image];
    v7 = [v6 _identifier];
    v8 = [v13 cacheableObjectForIdentifier:v7];

    if (v8)
    {
      v9 = [(INPerson *)self image];
      v10 = [v9 _identifier];
      v11 = [v13 cacheableObjectForIdentifier:v10];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [(INPerson *)self image];
        [v11 _imageSize];
        [v12 _setImageSize:?];
      }
    }
  }
}

- (id)_intents_readableHandleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INPerson *)self personHandle];
  v7 = [v6 type];

  if (v7 == 2)
  {
    v8 = [v5 locale];
    v9 = [v8 regionCode];
    v10 = [v9 lowercaseString];

    if (!v10)
    {
      v11 = CPPhoneNumberCopyNetworkCountryCode();
      if (!v11)
      {
        v11 = CPPhoneNumberCopyHomeCountryCode();
      }

      v10 = v11;
    }

    v12 = [(INPerson *)self personHandle];
    v13 = [v12 value];
    v14 = PNCreateFormattedStringWithCountry();

    if (!v10)
    {
      goto LABEL_17;
    }

    v15 = [(INPerson *)self personHandle];
    v16 = [v15 value];
    v14 = v14;
    v17 = v16;
    v18 = v17;
    if (v14 == v17)
    {
    }

    else
    {
      if (!v14 || !v17)
      {

        v21 = v14;
        goto LABEL_16;
      }

      v19 = [v14 isEqualToString:v17];

      if ((v19 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v15 = [(INPerson *)self personHandle];
    v18 = [v15 value];
    v21 = PNCreateFormattedStringWithCountry();
LABEL_16:

    v14 = v21;
LABEL_17:
    if ([v14 length])
    {
      v20 = v14;
    }

    else
    {
      v22 = [(INPerson *)self personHandle];
      v20 = [v22 value];
    }

    goto LABEL_21;
  }

  v10 = [(INPerson *)self personHandle];
  v20 = [v10 value];
LABEL_21:

  return v20;
}

- (id)_intents_readableSubtitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INPerson *)self displayName];
  v9 = [(INPerson *)self personHandle];
  v10 = [v9 value];
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_7;
  }

  if (v11 && v12)
  {
    v14 = [v11 isEqualToString:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v15 = [(INPerson *)self _intents_readableHandleWithLocalizer:v6 metadata:v7];
LABEL_10:

  return v15;
}

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(INPerson *)self displayName];
  v9 = [(INPerson *)self personHandle];
  v10 = [v9 value];
  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_7;
  }

  if (v11 && v12)
  {
    v14 = [v11 isEqualToString:v12];

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v15 = [(INPerson *)self _intents_readableHandleWithLocalizer:v6 metadata:v7];
    goto LABEL_10;
  }

LABEL_9:
  v15 = [(INPerson *)self displayName];
LABEL_10:
  v16 = v15;

  return v16;
}

- (INPerson)initWithContact:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v44 = [MEMORY[0x1E696ADF0] componentsForContact:?];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = getCNContactPhoneNumbersKey();
  v5 = [v45 isKeyAvailable:v4];

  if (v5)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v6 = [v45 phoneNumbers];
    v7 = [v6 countByEnumeratingWithState:&v50 objects:v64 count:16];
    if (v7)
    {
      v8 = *v51;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v51 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v50 + 1) + 8 * i);
          v11 = [INPersonHandle alloc];
          v12 = [v10 value];
          v13 = [v12 stringValue];
          v14 = INPersonHandleLabelForCNLabeledValue(v10);
          v15 = [(INPersonHandle *)v11 initWithValue:v13 type:2 label:v14];

          [v3 addObject:v15];
        }

        v7 = [v6 countByEnumeratingWithState:&v50 objects:v64 count:16];
      }

      while (v7);
    }
  }

  v16 = getCNContactEmailAddressesKey();
  v17 = [v45 isKeyAvailable:v16];

  if (v17)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v18 = [v45 emailAddresses];
    v19 = [v18 countByEnumeratingWithState:&v46 objects:v63 count:16];
    if (v19)
    {
      v20 = *v47;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          v23 = [INPersonHandle alloc];
          v24 = [v22 value];
          v25 = INPersonHandleLabelForCNLabeledValue(v22);
          v26 = [(INPersonHandle *)v23 initWithValue:v24 type:1 label:v25];

          [v3 addObject:v26];
        }

        v19 = [v18 countByEnumeratingWithState:&v46 objects:v63 count:16];
      }

      while (v19);
    }
  }

  v27 = [v3 firstObject];
  if ([v3 count] < 2)
  {

    v3 = 0;
  }

  else
  {
    [v3 removeObjectAtIndex:0];
  }

  v28 = getCNContactIdentifierKey();
  v29 = [v45 isKeyAvailable:v28];

  if (v29)
  {
    v30 = [v45 identifier];
  }

  else
  {
    v30 = 0;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v31 = getCNContactImageDataAvailableKeySymbolLoc_ptr;
  v62 = getCNContactImageDataAvailableKeySymbolLoc_ptr;
  if (!getCNContactImageDataAvailableKeySymbolLoc_ptr)
  {
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __getCNContactImageDataAvailableKeySymbolLoc_block_invoke;
    v57 = &unk_1E72888B8;
    v58 = &v59;
    v32 = ContactsLibrary_33522();
    v33 = dlsym(v32, "CNContactImageDataAvailableKey");
    *(v58[1] + 24) = v33;
    getCNContactImageDataAvailableKeySymbolLoc_ptr = *(v58[1] + 24);
    v31 = v60[3];
  }

  _Block_object_dispose(&v59, 8);
  if (!v31)
  {
    goto LABEL_39;
  }

  v34 = *v31;
  if (![v45 isKeyAvailable:v34])
  {
    v39 = 0;
    goto LABEL_36;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v35 = getCNContactImageDataKeySymbolLoc_ptr;
  v62 = getCNContactImageDataKeySymbolLoc_ptr;
  if (!getCNContactImageDataKeySymbolLoc_ptr)
  {
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __getCNContactImageDataKeySymbolLoc_block_invoke;
    v57 = &unk_1E72888B8;
    v58 = &v59;
    v36 = ContactsLibrary_33522();
    v37 = dlsym(v36, "CNContactImageDataKey");
    *(v58[1] + 24) = v37;
    getCNContactImageDataKeySymbolLoc_ptr = *(v58[1] + 24);
    v35 = v60[3];
  }

  _Block_object_dispose(&v59, 8);
  if (!v35)
  {
LABEL_39:
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v38 = [v45 isKeyAvailable:*v35];

  if (!v38 || ![v45 imageDataAvailable])
  {
    v39 = 0;
    goto LABEL_38;
  }

  v34 = [v45 imageData];
  v39 = [INImage imageWithImageData:v34];
LABEL_36:

LABEL_38:
  v40 = [(INPerson *)self initWithPersonHandle:v27 nameComponents:v44 displayName:0 image:v39 contactIdentifier:v30 customIdentifier:0 aliases:v3 suggestionType:0];

  v41 = *MEMORY[0x1E69E9840];
  return v40;
}

- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 customIdentifier:(id)a9 relationship:(id)a10 aliases:(id)a11 suggestionType:(int64_t)a12 isMe:(BOOL)a13 scoredAlternatives:(id)a14 sourceAppBundleIdentifier:(id)a15 phonemeData:(id)a16 isContactSuggestion:(BOOL)a17 searchProvider:(int64_t)a18
{
  v56 = a3;
  v23 = a4;
  v24 = a5;
  v60 = a6;
  v59 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a10;
  v28 = v24;
  v29 = a11;
  v30 = a14;
  v58 = a15;
  v31 = a16;
  v61.receiver = self;
  v61.super_class = INPerson;
  v32 = [(INPerson *)&v61 init];
  if (v32)
  {
    v33 = [v56 copy];
    userInput = v32->_userInput;
    v32->_userInput = v33;

    v35 = [v23 copy];
    personHandle = v32->_personHandle;
    v32->_personHandle = v35;

    v37 = [v28 copy];
    nameComponents = v32->_nameComponents;
    v32->_nameComponents = v37;

    v39 = [v60 copy];
    displayName = v32->_displayName;
    v32->_displayName = v39;

    v41 = [v59 copy];
    image = v32->_image;
    v32->_image = v41;

    v43 = [v25 copy];
    contactIdentifier = v32->_contactIdentifier;
    v32->_contactIdentifier = v43;

    v45 = [v26 copy];
    customIdentifier = v32->_customIdentifier;
    v32->_customIdentifier = v45;

    v47 = [v27 copy];
    relationship = v32->_relationship;
    v32->_relationship = v47;

    v49 = [v29 copy];
    aliases = v32->_aliases;
    v32->_aliases = v49;

    v32->_suggestionType = a12;
    v32->_isMe = a13;
    v51 = [v30 copy];
    scoredAlternatives = v32->_scoredAlternatives;
    v32->_scoredAlternatives = v51;

    objc_storeStrong(&v32->_sourceAppBundleIdentifier, a15);
    v53 = [v31 copy];
    phonemeData = v32->_phonemeData;
    v32->_phonemeData = v53;

    v32->_contactSuggestion = a17;
    v32->_searchProvider = a18;
  }

  return v32;
}

- (id)_initWithUserInput:(id)a3 personHandle:(id)a4 nameComponents:(id)a5 displayName:(id)a6 image:(id)a7 contactIdentifier:(id)a8 customIdentifier:(id)a9 relationship:(id)a10 aliases:(id)a11 suggestionType:(int64_t)a12 isMe:(BOOL)a13 alternatives:(id)a14 sourceAppBundleIdentifier:(id)a15 phonemeData:(id)a16 isContactSuggestion:(BOOL)a17
{
  v35 = a16;
  v32 = a15;
  v31 = a11;
  v21 = a10;
  v29 = a9;
  v30 = a8;
  v22 = a7;
  v23 = a6;
  v34 = a5;
  v24 = a4;
  v25 = a3;
  v37 = [INPerson toNilScoredPersons:a14];
  LOBYTE(v28) = a17;
  LOBYTE(v27) = a13;
  v39 = [(INPerson *)self _initWithUserInput:v25 personHandle:v24 nameComponents:v34 displayName:v23 image:v22 contactIdentifier:v30 customIdentifier:v29 relationship:v21 aliases:v31 suggestionType:a12 isMe:v27 scoredAlternatives:v37 sourceAppBundleIdentifier:v32 phonemeData:v35 isContactSuggestion:v28 searchProvider:0];

  return v39;
}

- (void)setAlternatives:(id)a3
{
  v4 = [INPerson toNilScoredPersons:a3];
  scoredAlternatives = self->_scoredAlternatives;
  self->_scoredAlternatives = v4;

  MEMORY[0x1EEE66BB8](v4, scoredAlternatives);
}

- (INPerson)initWithCoder:(id)a3
{
  v38[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = INPerson;
  v5 = [(INPerson *)&v37 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_userInput"];
    userInput = v5->_userInput;
    v5->_userInput = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personHandle"];
    personHandle = v5->_personHandle;
    v5->_personHandle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nameComponents"];
    nameComponents = v5->_nameComponents;
    v5->_nameComponents = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
    contactIdentifier = v5->_contactIdentifier;
    v5->_contactIdentifier = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customIdentifier"];
    customIdentifier = v5->_customIdentifier;
    v5->_customIdentifier = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relationship"];
    relationship = v5->_relationship;
    v5->_relationship = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"aliases"];
    aliases = v5->_aliases;
    v5->_aliases = v28;

    v5->_suggestionType = [v4 decodeIntegerForKey:@"suggestionType"];
    v5->_isMe = [v4 decodeBoolForKey:@"isMe"];
    v30 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v32 = [v30 setWithArray:v31];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"scoredAlternatives"];
    scoredAlternatives = v5->_scoredAlternatives;
    v5->_scoredAlternatives = v33;

    v5->_contactSuggestion = [v4 decodeBoolForKey:@"contactSuggestion"];
    v5->_searchProvider = [v4 decodeIntForKey:@"searchProvider"];
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  userInput = self->_userInput;
  v5 = a3;
  [v5 encodeObject:userInput forKey:@"_userInput"];
  [v5 encodeObject:self->_personHandle forKey:@"personHandle"];
  [v5 encodeObject:self->_nameComponents forKey:@"nameComponents"];
  [v5 encodeObject:self->_displayName forKey:@"displayName"];
  [v5 encodeObject:self->_image forKey:@"image"];
  [v5 encodeObject:self->_contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeObject:self->_customIdentifier forKey:@"customIdentifier"];
  [v5 encodeObject:self->_relationship forKey:@"relationship"];
  [v5 encodeObject:self->_aliases forKey:@"aliases"];
  [v5 encodeInteger:self->_suggestionType forKey:@"suggestionType"];
  [v5 encodeBool:self->_isMe forKey:@"isMe"];
  [v5 encodeObject:self->_scoredAlternatives forKey:@"scoredAlternatives"];
  [v5 encodeBool:self->_contactSuggestion forKey:@"contactSuggestion"];
  [v5 encodeInteger:self->_searchProvider forKey:@"searchProvider"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v22 = [objc_opt_class() allocWithZone:a3];
  v17 = [(NSString *)self->_userInput copyWithZone:a3];
  v5 = [(INPersonHandle *)self->_personHandle copyWithZone:a3];
  v21 = [(NSPersonNameComponents *)self->_nameComponents copyWithZone:a3];
  v20 = [(NSString *)self->_displayName copyWithZone:a3];
  v19 = [(INImage *)self->_image copyWithZone:a3];
  v18 = [(NSString *)self->_contactIdentifier copyWithZone:a3];
  v16 = [(NSString *)self->_customIdentifier copyWithZone:a3];
  v15 = [(NSString *)self->_relationship copyWithZone:a3];
  v6 = [(NSArray *)self->_aliases copyWithZone:a3];
  isMe = self->_isMe;
  suggestionType = self->_suggestionType;
  v9 = [(NSArray *)self->_scoredAlternatives copyWithZone:a3];
  v10 = [(NSString *)self->_sourceAppBundleIdentifier copyWithZone:a3];
  v11 = [(NSString *)self->_phonemeData copyWithZone:a3];
  LOBYTE(v14) = self->_contactSuggestion;
  LOBYTE(v13) = isMe;
  v23 = [v22 _initWithUserInput:v17 personHandle:v5 nameComponents:v21 displayName:v20 image:v19 contactIdentifier:v18 customIdentifier:v16 relationship:v15 aliases:v6 suggestionType:suggestionType isMe:v13 scoredAlternatives:v9 sourceAppBundleIdentifier:v10 phonemeData:v11 isContactSuggestion:v14 searchProvider:self->_searchProvider];

  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[NSString length](self->_contactIdentifier, "length") && [*(v5 + 12) length] && -[NSString isEqual:](self->_contactIdentifier, "isEqual:", *(v5 + 12)) && (v6 = self->_personHandle) != 0 && *(v5 + 10) && -[INPersonHandle isEqual:](v6, "isEqual:"))
    {
      v7 = 1;
    }

    else
    {
      userInput = self->_userInput;
      if (userInput != *(v5 + 3) && ![(NSString *)userInput isEqual:?])
      {
        goto LABEL_34;
      }

      personHandle = self->_personHandle;
      if (personHandle != *(v5 + 10) && ![(INPersonHandle *)personHandle isEqual:?])
      {
        goto LABEL_34;
      }

      nameComponents = self->_nameComponents;
      if (nameComponents != *(v5 + 2) && ![(NSPersonNameComponents *)nameComponents isEqual:?])
      {
        goto LABEL_34;
      }

      if (((displayName = self->_displayName, displayName == *(v5 + 1)) || [(NSString *)displayName isEqual:?]) && ((image = self->_image, image == *(v5 + 11)) || [(INImage *)image isEqual:?]) && ((contactIdentifier = self->_contactIdentifier, contactIdentifier == *(v5 + 12)) || [(NSString *)contactIdentifier isEqual:?]) && ((customIdentifier = self->_customIdentifier, customIdentifier == *(v5 + 13)) || [(NSString *)customIdentifier isEqual:?]) && ((aliases = self->_aliases, aliases == *(v5 + 4)) || [(NSArray *)aliases isEqual:?]) && self->_suggestionType == *(v5 + 5) && self->_isMe == v5[56] && ((scoredAlternatives = self->_scoredAlternatives, scoredAlternatives == *(v5 + 6)) || [(NSArray *)scoredAlternatives isEqual:?]) && ((phonemeData = self->_phonemeData, phonemeData == *(v5 + 15)) || [(NSString *)phonemeData isEqual:?]) && self->_contactSuggestion == v5[72])
      {
        v7 = self->_searchProvider == *(v5 + 16);
      }

      else
      {
LABEL_34:
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8](v4, displayName);
}

- (void)setHandle:(id)a3
{
  v4 = a3;
  v5 = [[INPersonHandle alloc] initWithValue:v4 type:0];

  [(INPerson *)self setPersonHandle:v5];
}

- (NSString)handle
{
  v2 = [(INPerson *)self personHandle];
  v3 = [v2 value];

  return v3;
}

- (INPerson)initWithHandle:(NSString *)handle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier
{
  v12 = contactIdentifier;
  v13 = image;
  v14 = displayName;
  v15 = nameComponents;
  v16 = handle;
  v17 = [[INPersonHandle alloc] initWithValue:v16 type:0];

  v18 = [(INPerson *)self initWithPersonHandle:v17 nameComponents:v15 displayName:v14 image:v13 contactIdentifier:v12 customIdentifier:0];
  return v18;
}

- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier isMe:(BOOL)isMe suggestionType:(INPersonSuggestionType)suggestionType
{
  LOBYTE(v14) = isMe;
  v10 = [(INPerson *)self initWithPersonHandle:personHandle nameComponents:nameComponents displayName:displayName image:image contactIdentifier:contactIdentifier customIdentifier:customIdentifier isMe:v14];
  v11 = v10;
  if (v10)
  {
    v10->_suggestionType = suggestionType;
    v12 = v10;
  }

  return v11;
}

- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier isContactSuggestion:(BOOL)isContactSuggestion suggestionType:(INPersonSuggestionType)suggestionType
{
  LOBYTE(v14) = 0;
  v10 = [(INPerson *)self initWithPersonHandle:personHandle nameComponents:nameComponents displayName:displayName image:image contactIdentifier:contactIdentifier customIdentifier:customIdentifier isMe:v14];
  v11 = v10;
  if (v10)
  {
    v10->_contactSuggestion = isContactSuggestion;
    v10->_suggestionType = suggestionType;
    v12 = v10;
  }

  return v11;
}

- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier relationship:(INPersonRelationship)relationship
{
  v16 = relationship;
  LOBYTE(v22) = 0;
  v17 = [(INPerson *)self initWithPersonHandle:personHandle nameComponents:nameComponents displayName:displayName image:image contactIdentifier:contactIdentifier customIdentifier:customIdentifier isMe:v22];
  if (v17)
  {
    v18 = [(NSString *)v16 copy];
    v19 = v17->_relationship;
    v17->_relationship = v18;

    v20 = v17;
  }

  return v17;
}

- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier isMe:(BOOL)isMe
{
  v15 = personHandle;
  v16 = nameComponents;
  v17 = displayName;
  v18 = image;
  v19 = contactIdentifier;
  v20 = customIdentifier;
  v35.receiver = self;
  v35.super_class = INPerson;
  v21 = [(INPerson *)&v35 init];
  if (v21)
  {
    v22 = [(INPersonHandle *)v15 copy];
    v23 = v21->_personHandle;
    v21->_personHandle = v22;

    v24 = [(NSPersonNameComponents *)v16 copy];
    v25 = v21->_nameComponents;
    v21->_nameComponents = v24;

    v26 = [(NSString *)v17 copy];
    v27 = v21->_displayName;
    v21->_displayName = v26;

    v28 = [(INImage *)v18 copy];
    v29 = v21->_image;
    v21->_image = v28;

    v30 = [(NSString *)v19 copy];
    v31 = v21->_contactIdentifier;
    v21->_contactIdentifier = v30;

    v32 = [(NSString *)v20 copy];
    v33 = v21->_customIdentifier;
    v21->_customIdentifier = v32;

    v21->_isMe = isMe;
    v21->_suggestionType = 0;
    v21->_contactSuggestion = 0;
    v21->_searchProvider = 0;
  }

  return v21;
}

+ (id)toNilScoredPersons:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [INScoredPerson alloc];
          v12 = [(INScoredPerson *)v11 initWithPerson:v10 score:0, v16];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)expectedCNContactKeys
{
  v46 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v2 = getCNContactNamePrefixKeySymbolLoc_ptr;
  v40 = getCNContactNamePrefixKeySymbolLoc_ptr;
  if (!getCNContactNamePrefixKeySymbolLoc_ptr)
  {
    v3 = ContactsLibrary_33522();
    v38[3] = dlsym(v3, "CNContactNamePrefixKey");
    getCNContactNamePrefixKeySymbolLoc_ptr = v38[3];
    v2 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v2)
  {
    goto LABEL_31;
  }

  v4 = *v2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v5 = getCNContactGivenNameKeySymbolLoc_ptr;
  v40 = getCNContactGivenNameKeySymbolLoc_ptr;
  v41[0] = v4;
  if (!getCNContactGivenNameKeySymbolLoc_ptr)
  {
    v6 = ContactsLibrary_33522();
    v38[3] = dlsym(v6, "CNContactGivenNameKey");
    getCNContactGivenNameKeySymbolLoc_ptr = v38[3];
    v5 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v5)
  {
    goto LABEL_31;
  }

  v7 = *v5;
  v41[1] = v7;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v8 = getCNContactMiddleNameKeySymbolLoc_ptr;
  v40 = getCNContactMiddleNameKeySymbolLoc_ptr;
  if (!getCNContactMiddleNameKeySymbolLoc_ptr)
  {
    v9 = ContactsLibrary_33522();
    v38[3] = dlsym(v9, "CNContactMiddleNameKey");
    getCNContactMiddleNameKeySymbolLoc_ptr = v38[3];
    v8 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v8)
  {
    goto LABEL_31;
  }

  v10 = *v8;
  v41[2] = v10;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v11 = getCNContactFamilyNameKeySymbolLoc_ptr;
  v40 = getCNContactFamilyNameKeySymbolLoc_ptr;
  if (!getCNContactFamilyNameKeySymbolLoc_ptr)
  {
    v12 = ContactsLibrary_33522();
    v38[3] = dlsym(v12, "CNContactFamilyNameKey");
    getCNContactFamilyNameKeySymbolLoc_ptr = v38[3];
    v11 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v11)
  {
    goto LABEL_31;
  }

  v13 = *v11;
  v41[3] = v13;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v14 = getCNContactNameSuffixKeySymbolLoc_ptr;
  v40 = getCNContactNameSuffixKeySymbolLoc_ptr;
  if (!getCNContactNameSuffixKeySymbolLoc_ptr)
  {
    v15 = ContactsLibrary_33522();
    v38[3] = dlsym(v15, "CNContactNameSuffixKey");
    getCNContactNameSuffixKeySymbolLoc_ptr = v38[3];
    v14 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v14)
  {
    goto LABEL_31;
  }

  v16 = *v14;
  v41[4] = v16;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v17 = getCNContactNicknameKeySymbolLoc_ptr;
  v40 = getCNContactNicknameKeySymbolLoc_ptr;
  if (!getCNContactNicknameKeySymbolLoc_ptr)
  {
    v18 = ContactsLibrary_33522();
    v38[3] = dlsym(v18, "CNContactNicknameKey");
    getCNContactNicknameKeySymbolLoc_ptr = v38[3];
    v17 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v17)
  {
    goto LABEL_31;
  }

  v19 = *v17;
  v41[5] = v19;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v20 = getCNContactPhoneticGivenNameKeySymbolLoc_ptr;
  v40 = getCNContactPhoneticGivenNameKeySymbolLoc_ptr;
  if (!getCNContactPhoneticGivenNameKeySymbolLoc_ptr)
  {
    v21 = ContactsLibrary_33522();
    v38[3] = dlsym(v21, "CNContactPhoneticGivenNameKey");
    getCNContactPhoneticGivenNameKeySymbolLoc_ptr = v38[3];
    v20 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v20)
  {
    goto LABEL_31;
  }

  v36 = *v20;
  v41[6] = v36;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v22 = getCNContactPhoneticMiddleNameKeySymbolLoc_ptr;
  v40 = getCNContactPhoneticMiddleNameKeySymbolLoc_ptr;
  if (!getCNContactPhoneticMiddleNameKeySymbolLoc_ptr)
  {
    v23 = ContactsLibrary_33522();
    v38[3] = dlsym(v23, "CNContactPhoneticMiddleNameKey");
    getCNContactPhoneticMiddleNameKeySymbolLoc_ptr = v38[3];
    v22 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v22)
  {
    goto LABEL_31;
  }

  v24 = *v22;
  v41[7] = v24;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v25 = getCNContactPhoneticFamilyNameKeySymbolLoc_ptr;
  v40 = getCNContactPhoneticFamilyNameKeySymbolLoc_ptr;
  if (!getCNContactPhoneticFamilyNameKeySymbolLoc_ptr)
  {
    v26 = ContactsLibrary_33522();
    v38[3] = dlsym(v26, "CNContactPhoneticFamilyNameKey");
    getCNContactPhoneticFamilyNameKeySymbolLoc_ptr = v38[3];
    v25 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v25)
  {
LABEL_31:
    dlerror();
    abort_report_np();
    __break(1u);
  }

  v34 = v4;
  v35 = v7;
  v42 = *v25;
  v27 = v42;
  v28 = getCNContactPhoneNumbersKey();
  v43 = v28;
  v29 = getCNContactEmailAddressesKey();
  v44 = v29;
  v30 = getCNContactIdentifierKey();
  v45 = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:12];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPerson;
  v6 = [(INPerson *)&v11 description];
  v7 = [(INPerson *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INPerson)initWithPersonHandle:(INPersonHandle *)personHandle nameComponents:(NSPersonNameComponents *)nameComponents displayName:(NSString *)displayName image:(INImage *)image contactIdentifier:(NSString *)contactIdentifier customIdentifier:(NSString *)customIdentifier aliases:(NSArray *)aliases suggestionType:(INPersonSuggestionType)suggestionType
{
  LOBYTE(v12) = 0;
  LOBYTE(v11) = 0;
  return [(INPerson *)self _initWithUserInput:0 personHandle:personHandle nameComponents:nameComponents displayName:displayName image:image contactIdentifier:contactIdentifier customIdentifier:customIdentifier relationship:0 aliases:aliases suggestionType:suggestionType isMe:v11 alternatives:0 sourceAppBundleIdentifier:0 phonemeData:0 isContactSuggestion:v12];
}

- (BOOL)_intents_compareValue:(id)a3 relation:(unint64_t)a4
{
  v6 = a3;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __80__INPerson_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke;
  v56[3] = &unk_1E72804A0;
  v56[4] = self;
  v7 = v6;
  v57 = v7;
  v8 = MEMORY[0x193AD7780](v56);
  v9 = v8;
  LOBYTE(v10) = 0;
  if (a4 > 5)
  {
    if (a4 <= 7)
    {
      if (a4 != 6)
      {
        v11 = [(INPerson *)self displayName];
        v17 = v7;
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v26 = v18;

        v27 = [v26 displayName];

        if ([v11 compare:v27] == -1)
        {
          goto LABEL_56;
        }

        goto LABEL_45;
      }

      v11 = [(INPerson *)self displayName];
      v19 = v7;
      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v28 = v20;

      v29 = [v28 displayName];

      v30 = [v11 compare:v29] == -1;
LABEL_63:
      LOBYTE(v10) = v30;

      goto LABEL_67;
    }

    switch(a4)
    {
      case 8uLL:
        v21 = v7;
        if (v21)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v21;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        v14 = v22;

        v31 = [v14 if_flatMap:&__block_literal_global_40676];
        v32 = [(INPerson *)self contactIdentifier];
        if (([v31 containsObject:v32] & 1) == 0)
        {
          v33 = v21;
          if (v21)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }
          }

          else
          {
            v34 = 0;
          }

          v43 = v34;

          v44 = [v43 if_flatMap:&__block_literal_global_4];
          v45 = [(INPerson *)self customIdentifier];
          v55 = v44;
          v46 = v44;
          v47 = v45;
          if ([v46 containsObject:v45])
          {
            LOBYTE(v10) = 1;
          }

          else
          {
            v48 = v33;
            v54 = v43;
            if (v21)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v49 = v48;
              }

              else
              {
                v49 = 0;
              }
            }

            else
            {
              v49 = 0;
            }

            v10 = v49;

            v50 = [v10 if_flatMap:&__block_literal_global_6];

            v51 = [(INPerson *)self personHandle];
            v52 = [v51 value];
            LOBYTE(v10) = [v50 containsObject:v52];

            v43 = v54;
          }

          goto LABEL_86;
        }

        goto LABEL_60;
      case 9uLL:
        v14 = [(INPerson *)self displayName];
        v15 = v7;
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = v15;
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }

        v31 = v25;

        v32 = [v31 displayName];
        if ([v14 containsString:v32])
        {
LABEL_60:
          LOBYTE(v10) = 1;
LABEL_86:

          goto LABEL_87;
        }

        break;
      case 0xAuLL:
        v14 = [(INPerson *)self displayName];
        v15 = v7;
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v31 = v16;

        v32 = [v31 displayName];
        if (![v14 containsString:v32])
        {
          goto LABEL_60;
        }

        break;
      default:
        goto LABEL_87;
    }

    v37 = [(INPerson *)self personHandle];
    v38 = [v37 value];
    v39 = v15;
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    v10 = v40;

    v41 = [v10 personHandle];

    v42 = [v41 value];
    LOBYTE(v10) = [v38 containsString:v42];

    goto LABEL_86;
  }

  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      LOBYTE(v10) = 1;
    }

    else if (a4 == 2)
    {
      LOBYTE(v10) = (*(v8 + 16))(v8);
    }
  }

  else
  {
    if (a4 != 3)
    {
      if (a4 != 4)
      {
        v11 = [(INPerson *)self displayName];
        v12 = v7;
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v35 = v13;

        v27 = [v35 displayName];

        if ([v11 compare:v27] == 1)
        {
LABEL_56:
          LOBYTE(v10) = 1;
          goto LABEL_57;
        }

LABEL_45:
        LOBYTE(v10) = v9[2](v9);
LABEL_57:

LABEL_67:
        goto LABEL_87;
      }

      v11 = [(INPerson *)self displayName];
      v23 = v7;
      if (v23)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v36 = v24;

      v29 = [v36 displayName];

      v30 = [v11 compare:v29] == 1;
      goto LABEL_63;
    }

    LODWORD(v10) = (*(v8 + 16))(v8) ^ 1;
  }

LABEL_87:

  return v10;
}

uint64_t __80__INPerson_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contactIdentifier];
  v3 = *(a1 + 40);
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 contactIdentifier];
  if ([v2 isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) customIdentifier];
    v9 = *(a1 + 40);
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 customIdentifier];
    if ([v8 isEqualToString:v12])
    {
      v7 = 1;
    }

    else
    {
      v13 = [*(a1 + 32) customIdentifier];
      v14 = *(a1 + 40);
      if (v14)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v17 = [v16 customIdentifier];
      if ([v13 isEqualToString:v17])
      {
        v7 = 1;
      }

      else
      {
        v25 = [*(a1 + 32) personHandle];
        v24 = [v25 value];
        v18 = *(a1 + 40);
        v26 = v16;
        v27 = v13;
        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v21 = [v20 personHandle];

        v22 = [v21 value];
        v7 = [v24 isEqualToString:v22];

        v16 = v26;
        v13 = v27;
      }
    }
  }

  return v7;
}

id __80__INPerson_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [a2 personHandle];
  v4 = [v3 value];
  v5 = [v2 if_arrayWithObjectIfNonNil:v4];

  return v5;
}

id __80__INPerson_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [a2 customIdentifier];
  v4 = [v2 if_arrayWithObjectIfNonNil:v3];

  return v4;
}

id __80__INPerson_INCodableAttributeRelationComparing___intents_compareValue_relation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = [a2 contactIdentifier];
  v4 = [v2 if_arrayWithObjectIfNonNil:v3];

  return v4;
}

- (void)_injectProxiesForImages:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(INPerson *)self copy];
    v9 = [(INPerson *)self image];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__INPerson_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke;
      v10[3] = &unk_1E7285CD0;
      v10[4] = v8;
      v11 = v7;
      v6[2](v6, v9, v10);
    }

    else
    {
      (*(v7 + 2))(v7, v8);
    }
  }
}

uint64_t __70__INPerson_INImageProxyInjecting___injectProxiesForImages_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setImage:a2];
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (id)spokenPhrases
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(INPerson *)self spokenPhrase];
  [v3 addObject:v4];

  v5 = [(INPerson *)self nameComponents];
  v6 = [v5 givenName];

  if (v6)
  {
    v7 = [(INPerson *)self nameComponents];
    v8 = [v7 givenName];
    [v3 addObject:v8];
  }

  v9 = [(INPerson *)self nameComponents];
  v10 = [v9 familyName];

  if (v10)
  {
    v11 = [(INPerson *)self nameComponents];
    v12 = [v11 familyName];
    [v3 addObject:v12];
  }

  v13 = [(INPerson *)self nameComponents];
  v14 = [v13 nickname];

  if (v14)
  {
    v15 = [(INPerson *)self nameComponents];
    v16 = [v15 nickname];
    [v3 addObject:v16];
  }

  return v3;
}

@end