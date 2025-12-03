@interface CNContactFormatter
+ (CNContactDisplayNameOrder)nameOrderForContact:(CNContact *)contact;
+ (NSAttributedString)attributedStringFromContact:(CNContact *)contact style:(CNContactFormatterStyle)style defaultAttributes:(NSDictionary *)attributes;
+ (NSString)delimiterForContact:(CNContact *)contact;
+ (NSString)stringFromContact:(CNContact *)contact style:(CNContactFormatterStyle)style;
+ (id)abbreviatedStringFromContact:(id)contact trimmingWhitespace:(BOOL)whitespace;
+ (id)descriptorForRequiredKeysForNameOrder;
+ (id)descriptorForRequiredKeysForStyle:(CNContactFormatterStyle)style;
+ (id)posterNameComponentsForContact:(id)contact;
+ (id)posterNameComponentsForContact:(id)contact nameOrder:(int64_t)order localeEmphasisStyle:(int64_t)style preferNicknames:(BOOL)nicknames;
+ (int64_t)nameEmphasisStyleForContact:(id)contact;
+ (int64_t)nameEmphasisStyleForContact:(id)contact localeBasedEmphasisStyle:(int64_t)style preferNickname:(BOOL)nickname;
+ (int64_t)singleNameStyleForContact:(id)contact;
- (CNContactFormatter)init;
- (CNContactFormatter)initWithCoder:(id)coder;
- (NSAttributedString)attributedStringFromContact:(CNContact *)contact defaultAttributes:(NSDictionary *)attributes;
- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptorForRequiredKeys;
- (id)fullNameForContact:(void *)contact attributes:(uint64_t)attributes style:;
- (id)stringForObjectValue:(id)value;
- (id)stringFromContact:(id)contact attributes:(id)attributes;
- (id)stringFromPotentiallySuggestedContact:(id)contact relatedToProperty:(id)property;
- (void)appendValue:(void *)value derivedFromPropertyName:(void *)name toString:(void *)string delimiter:(void *)delimiter attributes:;
- (void)appendValueForProperties:(void *)properties fromContact:(void *)contact toString:(void *)string delimiter:(void *)delimiter attributes:(int)attributes fallback:;
- (void)avatarNameForContact:(void *)contact attributes:(void *)attributes;
- (void)encodeWithCoder:(id)coder;
- (void)nameFormatter;
- (void)shortNameForContact:(void *)contact attributes:(void *)attributes;
@end

@implementation CNContactFormatter

- (CNContactFormatter)init
{
  v3.receiver = self;
  v3.super_class = CNContactFormatter;
  result = [(CNContactFormatter *)&v3 init];
  if (result)
  {
    result->_fallbackStyle = 1;
  }

  return result;
}

- (id)descriptorForRequiredKeys
{
  if (([(CNContactFormatter *)self style]== CNContactFormatterStyleFullName || (v3 = [(CNContactFormatter *)self style], objc_opt_self(), (v3 & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)) && [(CNContactFormatter *)self fallbackStyle]== -1)
  {
    v4 = objc_alloc_init(CNContactFormatterSmartFetcher);
    [(CNContactFormatterSmartFetcher *)v4 setIgnoresNickname:[(CNContactFormatter *)self ignoresNickname]];
    [(CNContactFormatterSmartFetcher *)v4 setIgnoresOrganization:[(CNContactFormatter *)self ignoresOrganization]];
  }

  else
  {
    v4 = [objc_opt_class() descriptorForRequiredKeysForStyle:{-[CNContactFormatter style](self, "style")}];
  }

  return v4;
}

- (void)nameFormatter
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = [MEMORY[0x1E696ADF8] formatterWithCNContactStyle:{objc_msgSend(self, "style")}];
      v5 = selfCopy[2];
      selfCopy[2] = v4;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

+ (id)posterNameComponentsForContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CNContactsUserDefaults sharedDefaults];
  v6 = [self posterNameComponentsForContact:contactCopy nameOrder:0 localeEmphasisStyle:4 preferNicknames:{objc_msgSend(v5, "shortNameFormatPrefersNicknames")}];

  return v6;
}

+ (id)posterNameComponentsForContact:(id)contact nameOrder:(int64_t)order localeEmphasisStyle:(int64_t)style preferNicknames:(BOOL)nicknames
{
  nicknamesCopy = nicknames;
  contactCopy = contact;
  v10 = objc_opt_new();
  v11 = [MEMORY[0x1E696ADF0] componentsForContact:contactCopy];
  v12 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  [v12 setStyle:2];
  v13 = [CNContactFormatter nameEmphasisStyleForContact:contactCopy localeBasedEmphasisStyle:style preferNickname:nicknamesCopy];
  v14 = [CNContactFormatter singleNameStyleForContact:contactCopy];
  if (v13 == 2)
  {
    goto LABEL_5;
  }

  if (v13 == 3)
  {
    nickname = [contactCopy nickname];
    [v10 setFirstNameComponent:nickname];

    [v10 setEmphasizedNameComponentIndex:0];
    v16 = 0;
LABEL_4:
    [v10 setSingleNameComponentIndex:v16];
    goto LABEL_5;
  }

  v26 = v14;
  if (!order)
  {
    order = [v12 _nameOrderWithOverridesForComponents:v11];
  }

  if (order == 2)
  {
    familyName = [v11 familyName];
    v32 = [familyName length];

    if (!v32)
    {
      goto LABEL_5;
    }

    familyName2 = [v11 familyName];
    if ([familyName2 length])
    {
      familyName3 = [v11 familyName];
      [v10 setFirstNameComponent:familyName3];
    }

    else
    {
      [v10 setFirstNameComponent:&stru_1F094DAB0];
    }

    givenName = [v11 givenName];
    if ([givenName length])
    {
      givenName2 = [v11 givenName];
      [v10 setSecondNameComponent:givenName2];
    }

    else
    {
      [v10 setSecondNameComponent:0];
    }

    if (v13)
    {
      if (v13 != 1)
      {
LABEL_40:
        v16 = v26 == 0;
        goto LABEL_4;
      }

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    [v10 setEmphasizedNameComponentIndex:v39];
    goto LABEL_40;
  }

  if (order == 1)
  {
    givenName3 = [v11 givenName];
    v28 = [givenName3 length];

    if (v28)
    {
      givenName4 = [v11 givenName];
      if ([givenName4 length])
      {
        givenName5 = [v11 givenName];
        [v10 setFirstNameComponent:givenName5];
      }

      else
      {
        [v10 setFirstNameComponent:&stru_1F094DAB0];
      }

      familyName4 = [v11 familyName];
      if ([familyName4 length])
      {
        familyName5 = [v11 familyName];
        [v10 setSecondNameComponent:familyName5];
      }

      else
      {
        [v10 setSecondNameComponent:0];
      }

      if (v13 <= 1)
      {
        [v10 setEmphasizedNameComponentIndex:v13];
      }

      v16 = v26 != 0;
      goto LABEL_4;
    }
  }

LABEL_5:
  firstNameComponent = [v10 firstNameComponent];
  v18 = [firstNameComponent length];

  if (!v18)
  {
    v19 = [v12 stringFromPersonNameComponents:v11];
    [v10 setFirstNameComponent:v19];
  }

  firstNameComponent2 = [v10 firstNameComponent];
  v21 = [firstNameComponent2 length];

  if (!v21)
  {
    organizationName = [contactCopy organizationName];
    [v10 setFirstNameComponent:organizationName];
  }

  secondNameComponent = [v10 secondNameComponent];
  v24 = [secondNameComponent length];

  if (!v24)
  {
    [v10 setSingleNameComponentIndex:0];
  }

  return v10;
}

+ (NSString)stringFromContact:(CNContact *)contact style:(CNContactFormatterStyle)style
{
  v6 = contact;
  v7 = objc_alloc_init(self);
  [v7 setStyle:style];
  v8 = [v7 stringFromContact:v6];

  return v8;
}

+ (NSAttributedString)attributedStringFromContact:(CNContact *)contact style:(CNContactFormatterStyle)style defaultAttributes:(NSDictionary *)attributes
{
  v8 = attributes;
  v9 = contact;
  v10 = objc_alloc_init(self);
  [v10 setStyle:style];
  v11 = [v10 attributedStringFromContact:v9 defaultAttributes:v8];

  return v11;
}

+ (id)abbreviatedStringFromContact:(id)contact trimmingWhitespace:(BOOL)whitespace
{
  whitespaceCopy = whitespace;
  v5 = [contact mutableCopy];
  v6 = v5;
  if (whitespaceCopy)
  {
    givenName = [v5 givenName];
    _cn_trimmedString = [givenName _cn_trimmedString];
    [v6 setGivenName:_cn_trimmedString];

    familyName = [v6 familyName];
    _cn_trimmedString2 = [familyName _cn_trimmedString];
    [v6 setFamilyName:_cn_trimmedString2];
  }

  v11 = [objc_opt_class() stringFromContact:v6 style:1002];

  return v11;
}

+ (id)descriptorForRequiredKeysForStyle:(CNContactFormatterStyle)style
{
  if (style == 1003)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__CNContactFormatter_descriptorForRequiredKeysForStyle___block_invoke_2;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = self;
    v7[5] = 1003;
    if (descriptorForRequiredKeysForStyle__cn_once_token_1 != -1)
    {
      dispatch_once(&descriptorForRequiredKeysForStyle__cn_once_token_1, v7);
    }

    v3 = &descriptorForRequiredKeysForStyle__cn_once_object_1;
  }

  else if (style == CNContactFormatterStylePhoneticFullName)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__CNContactFormatter_descriptorForRequiredKeysForStyle___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = 1;
    if (descriptorForRequiredKeysForStyle__cn_once_token_0 != -1)
    {
      dispatch_once(&descriptorForRequiredKeysForStyle__cn_once_token_0, block);
    }

    v3 = &descriptorForRequiredKeysForStyle__cn_once_object_0;
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__CNContactFormatter_descriptorForRequiredKeysForStyle___block_invoke_3;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = style;
    if (descriptorForRequiredKeysForStyle__cn_once_token_2 != -1)
    {
      dispatch_once(&descriptorForRequiredKeysForStyle__cn_once_token_2, v6);
    }

    v3 = &descriptorForRequiredKeysForStyle__cn_once_object_2;
  }

  v4 = *v3;

  return v4;
}

void __56__CNContactFormatter_descriptorForRequiredKeysForStyle___block_invoke(uint64_t a1)
{
  v9[8] = *MEMORY[0x1E69E9840];
  v9[0] = @"givenName";
  v9[1] = @"middleName";
  v9[2] = @"familyName";
  v9[3] = @"phoneticGivenName";
  v9[4] = @"phoneticMiddleName";
  v9[5] = @"phoneticFamilyName";
  v9[6] = @"phoneticOrganizationName";
  v9[7] = @"contactType";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:8];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v5 = [v3 stringWithFormat:@"Formatter style: %@", v4];
  v6 = [CNAggregateKeyDescriptor keyDescriptorWithKeyDescriptors:v2 description:v5];
  v7 = [v6 copy];
  v8 = descriptorForRequiredKeysForStyle__cn_once_object_0;
  descriptorForRequiredKeysForStyle__cn_once_object_0 = v7;
}

void __56__CNContactFormatter_descriptorForRequiredKeysForStyle___block_invoke_2(uint64_t a1)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) descriptorForRequiredKeysForStyle:0];
  v10[0] = v2;
  v10[1] = @"phoneticGivenName";
  v10[2] = @"phoneticMiddleName";
  v10[3] = @"phoneticFamilyName";
  v10[4] = @"phoneticOrganizationName";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v6 = [v4 stringWithFormat:@"Formatter style: %@", v5];
  v7 = [CNAggregateKeyDescriptor keyDescriptorWithKeyDescriptors:v3 description:v6];
  v8 = [v7 copy];
  v9 = descriptorForRequiredKeysForStyle__cn_once_object_1;
  descriptorForRequiredKeysForStyle__cn_once_object_1 = v8;
}

void __56__CNContactFormatter_descriptorForRequiredKeysForStyle___block_invoke_3(uint64_t a1)
{
  v9[8] = *MEMORY[0x1E69E9840];
  v9[0] = @"namePrefix";
  v9[1] = @"givenName";
  v9[2] = @"middleName";
  v9[3] = @"familyName";
  v9[4] = @"nameSuffix";
  v9[5] = @"contactType";
  v9[6] = @"organizationName";
  v9[7] = @"nickname";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:8];
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v5 = [v3 stringWithFormat:@"Formatter style: %@", v4];
  v6 = [CNAggregateKeyDescriptor keyDescriptorWithKeyDescriptors:v2 description:v5];
  v7 = [v6 copy];
  v8 = descriptorForRequiredKeysForStyle__cn_once_object_2;
  descriptorForRequiredKeysForStyle__cn_once_object_2 = v7;
}

+ (id)descriptorForRequiredKeysForNameOrder
{
  if (descriptorForRequiredKeysForNameOrder_cn_once_token_3 != -1)
  {
    +[CNContactFormatter descriptorForRequiredKeysForNameOrder];
  }

  v3 = descriptorForRequiredKeysForNameOrder_cn_once_object_3;

  return v3;
}

void __59__CNContactFormatter_descriptorForRequiredKeysForNameOrder__block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = +[NSPersonNameComponents keyVectorForUsedKeys];
  v1 = [v0 mutableCopy];

  v2 = +[CN keyVectorForAllUsedKeysForInternationalSupport];
  [v1 unionKeyVector:v2];

  v7[0] = v1;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [CNAggregateKeyDescriptor keyDescriptorWithKeyDescriptors:v3 description:@"Name order"];

  v5 = [v4 copy];
  v6 = descriptorForRequiredKeysForNameOrder_cn_once_object_3;
  descriptorForRequiredKeysForNameOrder_cn_once_object_3 = v5;
}

+ (CNContactDisplayNameOrder)nameOrderForContact:(CNContact *)contact
{
  v3 = contact;
  v4 = MEMORY[0x1E696ADF8];
  v5 = [MEMORY[0x1E696ADF0] componentsForContact:v3];
  v6 = [v4 _nameOrderWithOverridesForComponents:v5 options:0];

  newContactDisplayNameOrder = [MEMORY[0x1E696ADF8] contactsNameOrderFromFoundationNameOrder:v6];
  if ([CN isEmptyNameContact:v3 phonetic:0 includingPrefixAndSuffix:1]&& [CN isEmptyNameContact:v3 phonetic:1 includingPrefixAndSuffix:1])
  {
    v8 = +[CNContactsUserDefaults sharedDefaults];
    newContactDisplayNameOrder = [v8 newContactDisplayNameOrder];
  }

  return newContactDisplayNameOrder;
}

+ (int64_t)nameEmphasisStyleForContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CNContactsUserDefaults sharedDefaults];
  v6 = [self nameEmphasisStyleForContact:contactCopy localeBasedEmphasisStyle:4 preferNickname:{objc_msgSend(v5, "shortNameFormatPrefersNicknames")}];

  return v6;
}

+ (int64_t)nameEmphasisStyleForContact:(id)contact localeBasedEmphasisStyle:(int64_t)style preferNickname:(BOOL)nickname
{
  contactCopy = contact;
  nickname = [contactCopy nickname];
  v10 = [nickname length];

  if (v10 && nickname)
  {
    style = 3;
  }

  else if ([CN hasContactChineseJapaneseKoreanName:contactCopy])
  {
    style = 2;
  }

  else if (style == 4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__CNContactFormatter_nameEmphasisStyleForContact_localeBasedEmphasisStyle_preferNickname___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (nameEmphasisStyleForContact_localeBasedEmphasisStyle_preferNickname__onceToken != -1)
    {
      dispatch_once(&nameEmphasisStyleForContact_localeBasedEmphasisStyle_preferNickname__onceToken, block);
    }

    style = nameEmphasisStyleForContact_localeBasedEmphasisStyle_preferNickname___localeEmphasisStyle;
  }

  return style;
}

void __90__CNContactFormatter_nameEmphasisStyleForContact_localeBasedEmphasisStyle_preferNickname___block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"CNContactNameFormatStyle" ofType:@"plist"];
  v5 = [v0 dictionaryWithContentsOfFile:v2];

  v3 = [v5 objectForKeyedSubscript:@"_LOCALIZABLE_"];
  v4 = [v3 objectForKey:@"CNContactNameFormatStyle"];
  nameEmphasisStyleForContact_localeBasedEmphasisStyle_preferNickname___localeEmphasisStyle = [v4 integerValue];
}

+ (int64_t)singleNameStyleForContact:(id)contact
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CNContactFormatter_singleNameStyleForContact___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (singleNameStyleForContact__onceToken != -1)
  {
    dispatch_once(&singleNameStyleForContact__onceToken, block);
  }

  return singleNameStyleForContact___localeSingleNameStyle;
}

void __48__CNContactFormatter_singleNameStyleForContact___block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"CNContactNameFormatStyle" ofType:@"plist"];
  v6 = [v0 dictionaryWithContentsOfFile:v2];

  v3 = [v6 objectForKeyedSubscript:@"_LOCALIZABLE_"];
  v4 = [v3 objectForKey:@"CNContactSingleNameStyle"];

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  singleNameStyleForContact___localeSingleNameStyle = v5;
}

+ (NSString)delimiterForContact:(CNContact *)contact
{
  v3 = MEMORY[0x1E696ADF8];
  v4 = [MEMORY[0x1E696ADF0] componentsForContact:contact];
  v5 = [v3 _localizedDelimiterForComponents:v4 options:0];

  return v5;
}

- (NSAttributedString)attributedStringFromContact:(CNContact *)contact defaultAttributes:(NSDictionary *)attributes
{
  v6 = attributes;
  v7 = MEMORY[0x1E695DF90];
  v8 = contact;
  dictionary = [v7 dictionary];
  v10 = [(CNContactFormatter *)self stringFromContact:v8 attributes:dictionary];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10 attributes:v6];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __68__CNContactFormatter_attributedStringFromContact_defaultAttributes___block_invoke;
    v18 = &unk_1E7414B98;
    v19 = v11;
    v20 = v6;
    v12 = v11;
    [dictionary enumerateKeysAndObjectsUsingBlock:&v15];
    v13 = [v12 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __68__CNContactFormatter_attributedStringFromContact_defaultAttributes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 rangeValue];
  v9 = v8;
  [*(a1 + 32) addAttributes:v6 range:{v7, v8}];
  v10 = [v6 objectForKey:@"contactNameEmphasis"];
  v11 = [v10 BOOLValue];

  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [*(a1 + 40) objectForKey:@"contactNameEmphasisFont"];
  if (!v12)
  {
    v15 = [*(a1 + 32) attribute:getkCTFontAttributeName() atIndex:v7 effectiveRange:0];
    if (v15)
    {
      v16 = v15;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v17 = getCTFontCreateCopyWithSymbolicTraitsSymbolLoc_ptr;
      v26 = getCTFontCreateCopyWithSymbolicTraitsSymbolLoc_ptr;
      if (!getCTFontCreateCopyWithSymbolicTraitsSymbolLoc_ptr)
      {
        v18 = CoreTextLibrary();
        v24[3] = dlsym(v18, "CTFontCreateCopyWithSymbolicTraits");
        getCTFontCreateCopyWithSymbolicTraitsSymbolLoc_ptr = v24[3];
        v17 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v17)
      {
        v19 = v17(v16, 0, 2, 2, 0.0);
        goto LABEL_13;
      }

      getMDItemUniqueIdentifier_cold_1();
    }

    else
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v20 = getCTFontCreateUIFontForLanguageSymbolLoc_ptr;
      v26 = getCTFontCreateUIFontForLanguageSymbolLoc_ptr;
      if (!getCTFontCreateUIFontForLanguageSymbolLoc_ptr)
      {
        v21 = CoreTextLibrary();
        v24[3] = dlsym(v21, "CTFontCreateUIFontForLanguage");
        getCTFontCreateUIFontForLanguageSymbolLoc_ptr = v24[3];
        v20 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v20)
      {
        v19 = v20(3, 0, 0.0);
LABEL_13:
        v14 = v19;
        v13 = v19;
        if (!v19)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }
    }

    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v23, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  v13 = v12;
  v14 = 0;
LABEL_14:
  [*(a1 + 32) addAttribute:getkCTFontAttributeName() value:v13 range:{v7, v9}];
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_16:
}

- (id)stringFromContact:(id)contact attributes:(id)attributes
{
  contactCopy = contact;
  attributesCopy = attributes;
  style = [(CNContactFormatter *)self style];
  v9 = style;
  v10 = 0;
  if (style > 1000)
  {
    if (style == 1001 || style == 1002)
    {
      v11 = [CNContactFormatter avatarNameForContact:contactCopy attributes:?];
      goto LABEL_15;
    }

    if (style != 1003)
    {
      goto LABEL_16;
    }

    selfCopy3 = self;
    v13 = contactCopy;
    v14 = attributesCopy;
    v15 = 1003;
LABEL_13:
    v11 = [(CNContactFormatter *)selfCopy3 fullNameForContact:v13 attributes:v14 style:v15];
    goto LABEL_15;
  }

  switch(style)
  {
    case 0:
      selfCopy3 = self;
      v13 = contactCopy;
      v14 = attributesCopy;
      v15 = 0;
      goto LABEL_13;
    case 1:
      selfCopy3 = self;
      v13 = contactCopy;
      v14 = attributesCopy;
      v15 = 1;
      goto LABEL_13;
    case 1000:
      v11 = [CNContactFormatter shortNameForContact:contactCopy attributes:?];
LABEL_15:
      v10 = v11;
      break;
  }

LABEL_16:
  v16 = *MEMORY[0x1E6996568];
  v17 = (*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v10);
  if (v9)
  {
    if (v17)
    {
      if (([(CNContactFormatter *)self fallbackStyle]& 1) != 0)
      {
        objc_opt_self();
        if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
        {
          v19 = [(CNContactFormatter *)self fullNameForContact:contactCopy attributes:attributesCopy style:0];

          v10 = v19;
        }
      }
    }
  }

  if ((*(v16 + 16))(v16, v10))
  {

    v10 = 0;
  }

  return v10;
}

uint64_t __58__CNContactFormatter_fullNameForContact_attributes_style___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__CNContactFormatter_fullNameForContact_attributes_style___block_invoke_2;
  v9[3] = &unk_1E7414BC0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __58__CNContactFormatter_fullNameForContact_attributes_style___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v6 = [v8 objectForKey:@"contactProperty"];
  if ([v6 isEqual:*(a1 + 32)])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v8 setObject:v7 forKey:@"contactNameEmphasis"];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __98__CNContactFormatter_appendValueForProperties_fromContact_toString_delimiter_attributes_fallback___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 CNValueForContact:*(a1 + 32)];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
  {
    if (!__98__CNContactFormatter_appendValueForProperties_fromContact_toString_delimiter_attributes_fallback___block_invoke_cold_1(a1, v7, v6, a4))
    {
LABEL_5:
      *a4 = 1;
    }
  }

  else if (a4 && (*(a1 + 72) & 1) == 0)
  {
    goto LABEL_5;
  }
}

- (CNContactFormatter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CNContactFormatter;
  v5 = [(CNContactFormatter *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v5->_ignoresNickname = [coderCopy decodeBoolForKey:@"ignoresNickname"];
    v5->_ignoresOrganization = [coderCopy decodeBoolForKey:@"ignoresOrganization"];
    v5->_fallbackStyle = [coderCopy decodeIntegerForKey:@"fallbackStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNContactFormatter;
  coderCopy = coder;
  [(CNContactFormatter *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_style forKey:{@"style", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_ignoresOrganization forKey:@"ignoresOrganization"];
  [coderCopy encodeBool:self->_ignoresNickname forKey:@"ignoresNickname"];
  [coderCopy encodeInteger:self->_fallbackStyle forKey:@"fallbackStyle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CNContactFormatter;
  v4 = [(CNContactFormatter *)&v6 copyWithZone:zone];
  [v4 setIgnoresNickname:{-[CNContactFormatter ignoresNickname](self, "ignoresNickname")}];
  [v4 setIgnoresOrganization:{-[CNContactFormatter ignoresOrganization](self, "ignoresOrganization")}];
  [v4 setFallbackStyle:{-[CNContactFormatter fallbackStyle](self, "fallbackStyle")}];
  [v4 setStyle:{-[CNContactFormatter style](self, "style")}];
  return v4;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CNContactFormatter *)self stringFromContact:valueCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes
{
  valueCopy = value;
  attributesCopy = attributes;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(CNContactFormatter *)self attributedStringFromContact:valueCopy defaultAttributes:attributesCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stringFromPotentiallySuggestedContact:(id)contact relatedToProperty:(id)property
{
  propertyCopy = property;
  contactCopy = contact;
  v8 = [(CNContactFormatter *)self stringFromContact:contactCopy];
  isSuggested = [contactCopy isSuggested];

  if ((isSuggested & 1) != 0 || ([propertyCopy labeledValue], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isSuggested"), v10, v11))
  {
    v12 = [MEMORY[0x1E6996750] localizedStringForString:@"MAYBE_FORMAT-%@" class:objc_opt_class() returningNilIfNotFound:0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:v12, v8];

    v8 = v13;
  }

  return v8;
}

- (id)fullNameForContact:(void *)contact attributes:(uint64_t)attributes style:
{
  v92[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  contactCopy = contact;
  if (self)
  {
    if (attributes == 1)
    {
      v9 = [CN localizedPhoneticNameDelimiterForContact:v7];
      v10 = [CN orderForContactPhoneticName:v7];
      v11 = +[CN phoneticOrganizationNameDescription];
      v91 = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];

      v86 = v10;
      phoneticNameProperties = [v10 phoneticNameProperties];
    }

    else
    {
      v9 = [CN localizedNameDelimiterForContact:v7];
      if (attributes == 1003)
      {
        v14 = +[CNContactNameOrderImpl orderForSortOrder:](CNContactNameOrderImpl, "orderForSortOrder:", [self sortOrder]);
        v15 = +[CN phoneticOrganizationNameDescription];
        v92[0] = v15;
        v16 = +[CN organizationNameDescription];
        v92[1] = v16;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];

        v86 = v14;
        phoneticNameProperties = [v14 sortingNameProperties];
      }

      else
      {
        v17 = [CN orderForContactName:v7];
        v18 = +[CN organizationNameDescription];
        v90 = v18;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];

        v86 = v17;
        phoneticNameProperties = [v17 nameProperties];
      }
    }

    v88 = phoneticNameProperties;
    string = [MEMORY[0x1E696AD60] string];
    v20 = attributes == 1003 || [self fallbackStyle] == -1;
    if (([self ignoresOrganization] & 1) == 0 && objc_msgSend(v7, "contactType") == 1)
    {
      OUTLINED_FUNCTION_0_10();
      [(CNContactFormatter *)v43 appendValueForProperties:v44 fromContact:v45 toString:v46 delimiter:v47 attributes:v48 fallback:v20];
    }

    v87 = v12;
    if ([string length])
    {
      firstObject = [v12 firstObject];
      v22 = [firstObject key];
    }

    else
    {
      OUTLINED_FUNCTION_0_10();
      [(CNContactFormatter *)v31 appendValueForProperties:v32 fromContact:v33 toString:v34 delimiter:v35 attributes:v36 fallback:v20];
      v22 = 0;
    }

    v23 = [string length];
    if (attributes != 1 && !v23 && ([self ignoresNickname] & 1) == 0)
    {
      v49 = +[CN nicknameDescription];
      v89 = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
      OUTLINED_FUNCTION_0_10();
      [(CNContactFormatter *)v51 appendValueForProperties:v52 fromContact:v53 toString:v54 delimiter:v55 attributes:v56 fallback:v20];

      v57 = [v49 key];

      v22 = v57;
    }

    if (![string length] && (objc_msgSend(self, "ignoresOrganization") & 1) == 0 && objc_msgSend(v7, "contactType") != 1)
    {
      OUTLINED_FUNCTION_0_10();
      [(CNContactFormatter *)v58 appendValueForProperties:v59 fromContact:v60 toString:v61 delimiter:v62 attributes:v63 fallback:v20];
      v64 = @"organizationName";

      v22 = v64;
    }

    if (![string length])
    {
      fallbackStyle = [self fallbackStyle];
      if (attributes != 1 && fallbackStyle == -1)
      {
        if ([v7 isKeyAvailable:@"emailAddresses"])
        {
          emailAddresses = [v7 emailAddresses];
          firstObject2 = [emailAddresses firstObject];

          value = [firstObject2 value];
          OUTLINED_FUNCTION_0_10();
          [(CNContactFormatter *)v68 appendValue:v69 derivedFromPropertyName:v70 toString:v71 delimiter:v72 attributes:v73];

          v74 = @"emailAddresses";
          v22 = v74;
        }

        if (![string length] && objc_msgSend(v7, "isKeyAvailable:", @"phoneNumbers"))
        {
          phoneNumbers = [v7 phoneNumbers];
          firstObject3 = [phoneNumbers firstObject];

          value2 = [firstObject3 value];
          formattedStringValue = [value2 formattedStringValue];
          OUTLINED_FUNCTION_0_10();
          [(CNContactFormatter *)v79 appendValue:v80 derivedFromPropertyName:v81 toString:v82 delimiter:v83 attributes:v84];

          v85 = @"phoneNumbers";
          v22 = v85;
        }
      }
    }

    emphasizesPrimaryNameComponent = [self emphasizesPrimaryNameComponent];
    if (!contactCopy || !emphasizesPrimaryNameComponent)
    {
      goto LABEL_52;
    }

    v27 = +[CNContactsUserDefaults sharedDefaults];
    sortOrder = [v27 sortOrder];

    if (v22)
    {
LABEL_37:
      if (__58__CNContactFormatter_fullNameForContact_attributes_style___block_invoke(v29, v22, contactCopy))
      {
LABEL_52:
        if ([string length])
        {
          v41 = [string copy];
        }

        else
        {
          v41 = 0;
        }

        goto LABEL_56;
      }

LABEL_47:
      v37 = [@"givenName" isEqual:v22];
      v38 = @"familyName";
      if ((v37 & 1) != 0 || (v39 = [@"familyName" isEqual:v22], v38 = @"givenName", v39))
      {
        v38 = v38;
        v40 = v38;
      }

      else
      {
        v40 = 0;
      }

      __58__CNContactFormatter_fullNameForContact_attributes_style___block_invoke(v38, v40, contactCopy);

      goto LABEL_52;
    }

    if ([v9 length])
    {
      if (sortOrder == 2)
      {
        v30 = &CNContactGivenNameKey;
LABEL_46:
        v29 = *v30;
        v22 = v29;
        if (!v29)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (sortOrder == 3)
      {
        v30 = &CNContactFamilyNameKey;
        goto LABEL_46;
      }
    }

    v22 = 0;
    goto LABEL_47;
  }

  v41 = 0;
LABEL_56:

  return v41;
}

- (void)shortNameForContact:(void *)contact attributes:(void *)attributes
{
  attributesCopy = attributes;
  v4 = attributesCopy;
  if (contact)
  {
    if ([attributesCopy contactType] != 1 || (+[CNContactsUserDefaults sharedDefaults](CNContactsUserDefaults, "sharedDefaults"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "shortNameFormatPrefersNicknames"), v5, v6))
    {
      nameFormatter = [(CNContactFormatter *)contact nameFormatter];
      contact = [nameFormatter stringFromContact:v4];
    }

    else
    {
      contact = 0;
    }
  }

  return contact;
}

- (void)avatarNameForContact:(void *)contact attributes:(void *)attributes
{
  contactCopy = contact;
  if (contact)
  {
    attributesCopy = attributes;
    nameFormatter = [(CNContactFormatter *)contactCopy nameFormatter];
    contactCopy = [nameFormatter stringFromContact:attributesCopy];
  }

  return contactCopy;
}

- (void)appendValueForProperties:(void *)properties fromContact:(void *)contact toString:(void *)string delimiter:(void *)delimiter attributes:(int)attributes fallback:
{
  HIDWORD(v41) = attributes;
  v63 = *MEMORY[0x1E69E9840];
  obj = a2;
  propertiesCopy = properties;
  contactCopy = contact;
  stringCopy = string;
  delimiterCopy = delimiter;
  v22 = delimiterCopy;
  if (self)
  {
    v23 = OUTLINED_FUNCTION_1_4(delimiterCopy, v15, v16, v17, v18, v19, v20, v21, v38, obj, v41, propertiesCopy, aBlock, v45, v46, v47, v48, selfCopy, v50, v51, v52, v53, 0, 0, 0, 0, 0, 0, 0, 0, v62);
    if (v23)
    {
      v24 = v23;
      v25 = *v56;
      do
      {
        v26 = 0;
        do
        {
          if (*v56 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(v55 + 8 * v26);
          aBlock = MEMORY[0x1E69E9820];
          v45 = 3221225472;
          v46 = __98__CNContactFormatter_appendValueForProperties_fromContact_toString_delimiter_attributes_fallback___block_invoke;
          v47 = &unk_1E7414BE8;
          v28 = propertiesCopy;
          LOBYTE(v53) = BYTE4(v42);
          v48 = v28;
          selfCopy = self;
          v50 = contactCopy;
          v51 = stringCopy;
          v52 = v22;
          v29 = _Block_copy(&aBlock);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v27 enumerateObjectsUsingBlock:v29];
          }

          else
          {
            (*(v29 + 2))(v29, v27, 0, 0);
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = OUTLINED_FUNCTION_1_4(v30, v31, v32, v33, v34, v35, v36, v37, v39, obj, v42, propertiesCopy, aBlock, v45, v46, v47, v48, selfCopy, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
      }

      while (v24);
    }
  }
}

- (void)appendValue:(void *)value derivedFromPropertyName:(void *)name toString:(void *)string delimiter:(void *)delimiter attributes:
{
  v17 = a2;
  valueCopy = value;
  nameCopy = name;
  stringCopy = string;
  delimiterCopy = delimiter;
  if (self && [v17 length])
  {
    if ([nameCopy length])
    {
      [nameCopy appendString:stringCopy];
    }

    if (delimiterCopy)
    {
      v15 = [MEMORY[0x1E696B098] valueWithRange:{objc_msgSend(nameCopy, "length"), objc_msgSend(v17, "length")}];
      dictionary = [delimiterCopy objectForKey:v15];
      if (!dictionary)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [delimiterCopy setObject:dictionary forKey:v15];
      }

      [dictionary setObject:valueCopy forKey:@"contactProperty"];
    }

    [nameCopy appendString:v17];
  }
}

BOOL __98__CNContactFormatter_appendValueForProperties_fromContact_toString_delimiter_attributes_fallback___block_invoke_cold_1(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  v8 = [a2 key];
  [(CNContactFormatter *)v7 appendValue:a3 derivedFromPropertyName:v8 toString:*(a1 + 48) delimiter:*(a1 + 56) attributes:*(a1 + 64)];

  return a4 == 0;
}

@end