@interface CNPostalAddressFormatter
+ (NSAttributedString)attributedStringFromPostalAddress:(CNPostalAddress *)postalAddress style:(CNPostalAddressFormatterStyle)style withDefaultAttributes:(NSDictionary *)attributes;
+ (NSString)stringFromPostalAddress:(CNPostalAddress *)postalAddress style:(CNPostalAddressFormatterStyle)style;
+ (id)_postalToFormatMap;
+ (id)addressValueForFormatKey:(void *)key postalAddress:;
+ (id)fieldArrangementWithString:(uint64_t)string;
+ (id)fieldLabelMapWithPlist:(uint64_t)plist;
+ (id)formatPropertyKeyForPostalAddressPropertyKey:(id)key;
+ (id)getCountryCodeFromPostalAddress:(uint64_t)address;
+ (id)localizedCountryNameForISOCountryCode:(id)code;
+ (id)postalAddressPropertyKeyForFormatPropertyKey:(id)key;
+ (id)singleLineStringFromPostalAddress:(id)address addCountryName:(BOOL)name;
+ (id)specificationForCountry:(id)country;
+ (id)specificationWithAddressFormatPlist:(id)plist;
- (NSString)stringFromPostalAddress:(CNPostalAddress *)postalAddress;
- (id)attributedStringForObjectValue:(id)value withDefaultAttributes:(id)attributes;
- (id)attributedStringFromPostalAddress:(uint64_t)address name:(void *)name organization:(void *)organization attributes:(void *)attributes order:(void *)order;
- (id)postalAddressFromString:(id)string;
- (id)stringForObjectValue:(id)value;
@end

@implementation CNPostalAddressFormatter

void __46__CNPostalAddressFormatter__postalToFormatMap__block_invoke()
{
  v4[10] = *MEMORY[0x1E69E9840];
  v3[0] = @"Street";
  v3[1] = @"SubLocality";
  v4[0] = @"street";
  v4[1] = @"subLocality";
  v3[2] = @"City";
  v3[3] = @"State";
  v4[2] = @"city";
  v4[3] = @"state";
  v3[4] = @"SubAdministrativeArea";
  v3[5] = @"Region";
  v4[4] = @"subAdministrativeArea";
  v4[5] = @"subAdministrativeArea";
  v3[6] = @"ZIP";
  v3[7] = @"Country";
  v4[6] = @"postalCode";
  v4[7] = @"country";
  v3[8] = @"CountryCode";
  v3[9] = @"FormattedAddress";
  v4[8] = @"ISOCountryCode";
  v4[9] = @"formattedAddress";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = [v0 copy];
  v2 = _postalToFormatMap_cn_once_object_1;
  _postalToFormatMap_cn_once_object_1 = v1;
}

+ (NSString)stringFromPostalAddress:(CNPostalAddress *)postalAddress style:(CNPostalAddressFormatterStyle)style
{
  v5 = postalAddress;
  v6 = objc_alloc_init(CNPostalAddressFormatter);
  [(CNPostalAddressFormatter *)v6 setStyle:style];
  v7 = [(CNPostalAddressFormatter *)v6 stringFromPostalAddress:v5];

  return v7;
}

+ (NSAttributedString)attributedStringFromPostalAddress:(CNPostalAddress *)postalAddress style:(CNPostalAddressFormatterStyle)style withDefaultAttributes:(NSDictionary *)attributes
{
  v7 = attributes;
  v8 = postalAddress;
  v9 = objc_alloc_init(CNPostalAddressFormatter);
  [(CNPostalAddressFormatter *)v9 setStyle:style];
  v10 = [(CNPostalAddressFormatter *)v9 attributedStringFromPostalAddress:v8 withDefaultAttributes:v7];

  return v10;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CNPostalAddressFormatter *)self stringFromPostalAddress:valueCopy];
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
    v8 = [CNPostalAddressFormatter attributedStringFromPostalAddress:valueCopy name:0 organization:0 attributes:attributesCopy order:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)getCountryCodeFromPostalAddress:(uint64_t)address
{
  v2 = a2;
  objc_opt_self();
  iSOCountryCode = [v2 ISOCountryCode];

  if (iSOCountryCode == *MEMORY[0x1E695E738])
  {
    lowercaseString = 0;
  }

  else
  {
    lowercaseString = [iSOCountryCode lowercaseString];
  }

  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) != 0 || (+[CNAddressFormats addressFormats](CNAddressFormats, "addressFormats"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKey:lowercaseString], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v7 = +[CNContactsUserDefaults sharedDefaults];
    countryCode = [v7 countryCode];

    lowercaseString = countryCode;
  }

  return lowercaseString;
}

+ (id)fieldArrangementWithString:(uint64_t)string
{
  v2 = a2;
  v3 = objc_opt_self();
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v5 = [v2 componentsSeparatedByCharactersInSet:newlineCharacterSet];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__CNPostalAddressFormatter_fieldArrangementWithString___block_invoke;
  v8[3] = &__block_descriptor_40_e27___NSArray_16__0__NSString_8l;
  v8[4] = v3;
  v6 = [v5 _cn_map:v8];

  return v6;
}

id __97__CNPostalAddressFormatter_attributedStringFromPostalAddress_name_organization_attributes_order___block_invoke(id *a1, void *a2)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __97__CNPostalAddressFormatter_attributedStringFromPostalAddress_name_organization_attributes_order___block_invoke_2;
  v9[3] = &unk_1E7415FB8;
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v4 = [a2 _cn_map:v9];
  v5 = [v4 _cn_filter:*MEMORY[0x1E6996550]];

  v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:a1[5]];
  v7 = [v5 _cn_join:v6];

  return v7;
}

id __97__CNPostalAddressFormatter_attributedStringFromPostalAddress_name_organization_attributes_order___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  v6 = [*(a1 + 40) mutableCopy];
  [v6 setObject:v4 forKeyedSubscript:@"postalAddressProperty"];
  v7 = [*(a1 + 48) localizedPlaceholderForKey:v4];

  [v6 setObject:v7 forKeyedSubscript:@"postalAddressLocalizedPropertyName"];
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) != 0 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v5 == v8))
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v6];
  }

  v10 = v9;

  return v10;
}

+ (id)postalAddressPropertyKeyForFormatPropertyKey:(id)key
{
  keyCopy = key;
  v4 = +[CNPostalAddressFormatter _postalToFormatMap];
  v5 = [v4 objectForKeyedSubscript:keyCopy];

  return v5;
}

+ (id)_postalToFormatMap
{
  objc_opt_self();
  if (_postalToFormatMap_cn_once_token_1 != -1)
  {
    +[CNPostalAddressFormatter _postalToFormatMap];
  }

  v0 = _postalToFormatMap_cn_once_object_1;

  return v0;
}

+ (id)formatPropertyKeyForPostalAddressPropertyKey:(id)key
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__CNPostalAddressFormatter_formatPropertyKeyForPostalAddressPropertyKey___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = formatPropertyKeyForPostalAddressPropertyKey__cn_once_token_0;
  keyCopy = key;
  if (v3 != -1)
  {
    dispatch_once(&formatPropertyKeyForPostalAddressPropertyKey__cn_once_token_0, block);
  }

  v5 = [formatPropertyKeyForPostalAddressPropertyKey__cn_once_object_0 objectForKeyedSubscript:keyCopy];

  return v5;
}

void __73__CNPostalAddressFormatter_formatPropertyKeyForPostalAddressPropertyKey___block_invoke()
{
  v0 = MEMORY[0x1E695DF20];
  v7 = +[CNPostalAddressFormatter _postalToFormatMap];
  v1 = [v7 allKeys];
  v2 = +[CNPostalAddressFormatter _postalToFormatMap];
  v3 = [v2 allValues];
  v4 = [v0 dictionaryWithObjects:v1 forKeys:v3];
  v5 = [v4 copy];
  v6 = formatPropertyKeyForPostalAddressPropertyKey__cn_once_object_0;
  formatPropertyKeyForPostalAddressPropertyKey__cn_once_object_0 = v5;
}

+ (id)addressValueForFormatKey:(void *)key postalAddress:
{
  v4 = a2;
  keyCopy = key;
  objc_opt_self();
  if ([v4 isEqualToString:@"Street"])
  {
    street = [keyCopy street];
LABEL_12:
    v7 = street;
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"SubLocality"])
  {
    street = [keyCopy subLocality];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"City"])
  {
    street = [keyCopy city];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"State"])
  {
    street = [keyCopy state];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"SubAdministrativeArea"] || objc_msgSend(v4, "isEqualToString:", @"Region"))
  {
    street = [keyCopy subAdministrativeArea];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"ZIP"])
  {
    street = [keyCopy postalCode];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"Country"])
  {
    street = [keyCopy country];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"CountryCode"])
  {
    street = [keyCopy ISOCountryCode];
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"FormattedAddress"])
  {
    street = [keyCopy formattedAddress];
    goto LABEL_12;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (id)postalAddressFromString:(id)string
{
  v3 = [MEMORY[0x1E69967C8] postalAddressFromString:string error:0];
  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965E0]];
    [v4 setStreet:v5];

    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965F0]];
    [v4 setSubLocality:v6];

    v7 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965B8]];
    [v4 setCity:v7];

    v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965E8]];
    [v4 setSubAdministrativeArea:v8];

    v9 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965D8]];
    [v4 setState:v9];

    v10 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965D0]];
    [v4 setPostalCode:v10];

    v11 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965C0]];
    [v4 setCountry:v11];

    v12 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69965C8]];
    [v4 setISOCountryCode:v12];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)singleLineStringFromPostalAddress:(id)address addCountryName:(BOOL)name
{
  nameCopy = name;
  addressCopy = address;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v7 = 0x1E7410000uLL;
  v8 = [CNPostalAddressFormatter getCountryCodeFromPostalAddress:addressCopy];
  v9 = +[CNAddressFormats addressFormats];
  v30 = v8;
  v10 = [v9 objectForKey:v8];

  v26 = v10;
  v25 = [v10 objectForKey:@"URL_FORMAT"];
  v11 = [v25 componentsSeparatedByString:{@", "}];
  v12 = [v11 count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *MEMORY[0x1E6996568];
    v27 = *MEMORY[0x1E695D978];
    v28 = v12;
    v29 = v6;
    do
    {
      v16 = [v11 objectAtIndex:v14];
      v17 = [(CNPostalAddressFormatter *)*(v7 + 2392) addressValueForFormatKey:v16 postalAddress:addressCopy];
      if ([v16 isEqualToString:@"Country"] && nameCopy && (*(v15 + 16))(v15, v17))
      {
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        [currentLocale displayNameForKey:v27 value:v30];
        v19 = v11;
        v20 = v7;
        v21 = nameCopy;
        v23 = v22 = addressCopy;

        v17 = v23;
        addressCopy = v22;
        nameCopy = v21;
        v7 = v20;
        v11 = v19;
        v13 = v28;
        v6 = v29;
      }

      if (((*(v15 + 16))(v15, v17) & 1) == 0)
      {
        if ([v6 length])
        {
          [v6 appendString:@" "];
        }

        [v6 appendString:v17];
      }

      ++v14;
    }

    while (v13 != v14);
  }

  [v6 replaceOccurrencesOfString:@"\n" withString:@" " options:2 range:{0, objc_msgSend(v6, "length")}];

  return v6;
}

+ (id)specificationForCountry:(id)country
{
  v4 = [CNAddressFormats addressFormatForCountryCode:country];
  v5 = [self specificationWithAddressFormatPlist:v4];

  return v5;
}

+ (id)localizedCountryNameForISOCountryCode:(id)code
{
  codeCopy = code;
  v5 = [CNAddressFormats addressFormatForCountryCode:codeCopy];
  v6 = [v5 objectForKeyedSubscript:@"COUNTRY"];
  v7 = [self localizedStringForPostalAddressString:v6];

  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v8 = codeCopy;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

+ (id)specificationWithAddressFormatPlist:(id)plist
{
  if (plist)
  {
    plistCopy = plist;
    v5 = [plistCopy objectForKeyedSubscript:@"FORMAT"];
    v6 = [(CNPostalAddressFormatter *)self fieldArrangementWithString:v5];

    v7 = [plistCopy objectForKeyedSubscript:@"EDIT_FORMAT"];
    v8 = [(CNPostalAddressFormatter *)self fieldArrangementWithString:v7];

    v9 = [(CNPostalAddressFormatter *)self fieldLabelMapWithPlist:plistCopy];

    v10 = [[CNPostalAddressFormattingSpecification alloc] initWithDisplayFieldArrangement:v6 editingFieldArrangement:v8 fieldLabelMap:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)fieldLabelMapWithPlist:(uint64_t)plist
{
  v2 = a2;
  v3 = objc_opt_self();
  if (fieldLabelMapWithPlist__cn_once_token_2 != -1)
  {
    +[CNPostalAddressFormatter fieldLabelMapWithPlist:];
  }

  v4 = fieldLabelMapWithPlist__cn_once_object_2;
  v5 = [v4 _cn_map:&__block_literal_global_53];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__CNPostalAddressFormatter_fieldLabelMapWithPlist___block_invoke_2;
  v14 = &unk_1E7416068;
  v15 = v2;
  v16 = v3;
  v6 = v2;
  v7 = [v4 _cn_map:&v11];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:{v5, v11, v12, v13, v14}];
  v9 = [v8 _cn_filter:&__block_literal_global_51];

  return v9;
}

id __55__CNPostalAddressFormatter_fieldArrangementWithString___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a2;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__CNPostalAddressFormatter_fieldArrangementWithString___block_invoke_2;
  v10[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
  v10[4] = *(a1 + 32);
  v7 = [v6 _cn_map:v10];
  v8 = [v7 _cn_filter:*MEMORY[0x1E6996550]];

  return v8;
}

void __51__CNPostalAddressFormatter_fieldLabelMapWithPlist___block_invoke()
{
  v3[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"Street";
  v3[1] = @"SubLocality";
  v3[2] = @"City";
  v3[3] = @"SubAdministrativeArea";
  v3[4] = @"State";
  v3[5] = @"ZIP";
  v3[6] = @"Country";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:7];
  v1 = [v0 copy];
  v2 = fieldLabelMapWithPlist__cn_once_object_2;
  fieldLabelMapWithPlist__cn_once_object_2 = v1;
}

id __51__CNPostalAddressFormatter_fieldLabelMapWithPlist___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v4 = [v2 localizedStringForPostalAddressString:v3];

  return v4;
}

BOOL __51__CNPostalAddressFormatter_fieldLabelMapWithPlist___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = MEMORY[0x1E695DFB0];
  v6 = a3;
  v7 = [v5 null];

  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    v9 = v8 != v4;
  }

  return v9;
}

- (id)attributedStringFromPostalAddress:(uint64_t)address name:(void *)name organization:(void *)organization attributes:(void *)attributes order:(void *)order
{
  v58[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  organizationCopy = organization;
  attributesCopy = attributes;
  orderCopy = order;
  if (address)
  {
    formattedAddress = [nameCopy formattedAddress];

    if (formattedAddress)
    {
      v14 = objc_alloc(MEMORY[0x1E696AAB0]);
      formattedAddress2 = [nameCopy formattedAddress];
      v16 = [v14 initWithString:formattedAddress2 attributes:0];
    }

    else
    {
      v17 = [CNPostalAddressFormatter getCountryCodeFromPostalAddress:nameCopy];
      v18 = +[CNAddressFormats addressFormats];
      v19 = [v18 objectForKey:v17];

      v47 = v19;
      if (organizationCopy && ([v19 objectForKey:@"LABEL_FORMAT"], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = v20;
        v43 = 1;
      }

      else
      {
        v21 = [v19 objectForKey:@"FORMAT"];
        v43 = 0;
      }

      v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:&stru_1F094DAB0 attributes:orderCopy];
      v48 = v17;
      v22 = [objc_opt_class() specificationForCountry:v17];
      v46 = v21;
      v23 = [CNPostalAddressFormatter fieldArrangementWithString:v21];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __97__CNPostalAddressFormatter_attributedStringFromPostalAddress_name_organization_attributes_order___block_invoke;
      v53[3] = &unk_1E7415FE0;
      v54 = nameCopy;
      v55 = orderCopy;
      v44 = v22;
      v45 = v23;
      v56 = v44;
      v24 = [v23 _cn_map:v53];
      v25 = [v24 _cn_filter:&__block_literal_global_97];

      v42 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:0];
      v58[0] = v42;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
      v27 = [v25 _cn_join:v26];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      _cn_flatten = [v27 _cn_flatten];
      v29 = [_cn_flatten countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v50;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v50 != v31)
            {
              objc_enumerationMutation(_cn_flatten);
            }

            [v16 appendAttributedString:*(*(&v49 + 1) + 8 * i)];
          }

          v30 = [_cn_flatten countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v30);
      }

      if ([attributesCopy length])
      {
        v33 = v43;
      }

      else
      {
        v33 = 1;
      }

      if ((v33 & 1) == 0)
      {
        v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:0];
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"organizationName", @"postalAddressProperty", 0}];
        v36 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:attributesCopy attributes:v35];
        [v36 appendAttributedString:v34];
        [v16 insertAttributedString:v36 atIndex:0];
      }

      if ([organizationCopy length])
      {
        v37 = v43;
      }

      else
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        v38 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:0];
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Name", @"postalAddressProperty", 0}];
        v40 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:organizationCopy attributes:v39];
        [v40 appendAttributedString:v38];
        [v16 insertAttributedString:v40 atIndex:0];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (NSString)stringFromPostalAddress:(CNPostalAddress *)postalAddress
{
  v3 = [CNPostalAddressFormatter attributedStringFromPostalAddress:postalAddress name:0 organization:0 attributes:0 order:?];
  string = [v3 string];

  return string;
}

@end