@interface CNPropertyGroupPostalAddressItem
+ (id)emptyValueForLabel:(id)label;
- (BOOL)_isMinimalAddress:(id)address;
- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing;
- (CNPostalAddress)address;
- (id)bestValue:(id)value;
- (id)displayStringForValue:(id)value;
- (id)normalizedValue;
@end

@implementation CNPropertyGroupPostalAddressItem

+ (id)emptyValueForLabel:(id)label
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF60]);

  return v3;
}

- (id)bestValue:(id)value
{
  valueCopy = value;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  labeledValue2 = [valueCopy labeledValue];

  value2 = [labeledValue2 value];

  LODWORD(labeledValue2) = __46__CNPropertyGroupPostalAddressItem_bestValue___block_invoke(value);
  if (labeledValue2 >= __46__CNPropertyGroupPostalAddressItem_bestValue___block_invoke(value2))
  {
    v9 = value;
  }

  else
  {
    v9 = value2;
  }

  v10 = v9;

  return v9;
}

uint64_t __46__CNPropertyGroupPostalAddressItem_bestValue___block_invoke(void *a1)
{
  v1 = a1;
  v2 = [v1 street];
  v3 = [v2 length];

  v4 = [v1 subLocality];
  v5 = [v4 length];

  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v3 != 0;
  }

  v8 = [v1 city];
  v9 = [v8 length];

  if (v9)
  {
    ++v7;
  }

  v10 = [v1 subAdministrativeArea];
  v11 = [v10 length];

  if (v11)
  {
    ++v7;
  }

  v12 = [v1 state];
  v13 = [v12 length];

  if (v13)
  {
    ++v7;
  }

  v14 = [v1 postalCode];
  v15 = [v14 length];

  if (v15)
  {
    ++v7;
  }

  v16 = [v1 country];
  v17 = [v16 length];

  if (v17)
  {
    v18 = v7 + 1;
  }

  else
  {
    v18 = v7;
  }

  v19 = [v1 ISOCountryCode];

  v20 = [v19 length];
  if (v20)
  {
    return v18 + 1;
  }

  else
  {
    return v18;
  }
}

- (BOOL)_isMinimalAddress:(id)address
{
  street = [address street];
  v4 = street == 0;

  return v4;
}

- (BOOL)isEquivalentToItem:(id)item whenEditing:(BOOL)editing
{
  itemCopy = item;
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  labeledValue2 = [itemCopy labeledValue];
  value2 = [labeledValue2 value];

  labeledValue3 = [(CNPropertyGroupItem *)self labeledValue];
  label = [labeledValue3 label];

  labeledValue4 = [itemCopy labeledValue];

  label2 = [labeledValue4 label];

  if ([(CNPropertyGroupPostalAddressItem *)self _isMinimalAddress:value]|| [(CNPropertyGroupPostalAddressItem *)self _isMinimalAddress:value2])
  {
    subLocality = [value subLocality];
    subLocality2 = [value2 subLocality];
    v16 = [subLocality caseInsensitiveCompare:subLocality2];
    if (v16)
    {
      labeledValue4 = [value subLocality];
      if (labeledValue4)
      {
        subLocality3 = [value2 subLocality];
        if (subLocality3)
        {

          v18 = 0;
LABEL_80:

LABEL_81:
          goto LABEL_82;
        }

        v19 = 1;
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

    city = [value city];
    city2 = [value2 city];
    v77 = [city caseInsensitiveCompare:?];
    if (v77)
    {
      city3 = [value city];
      if (!city3)
      {
        v78 = subLocality2;
        v23 = v16;
        v24 = subLocality;
        v25 = label2;
        v26 = labeledValue4;
        v27 = label;
        v28 = v19;
        v73 = 0;
        goto LABEL_19;
      }

      v73 = city3;
      city4 = [value2 city];
      if (city4)
      {

        v18 = 0;
        if (!v16)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }
    }

    v78 = subLocality2;
    v23 = v16;
    v24 = subLocality;
    v25 = label2;
    v26 = labeledValue4;
    v27 = label;
    v28 = v19;
LABEL_19:
    postalCode = [value postalCode];
    postalCode2 = [value2 postalCode];
    v75 = postalCode;
    v72 = [postalCode caseInsensitiveCompare:?];
    v76 = city;
    if (v72)
    {
      postalCode3 = [value postalCode];
      if (postalCode3)
      {
        v69 = postalCode3;
        postalCode4 = [value2 postalCode];
        v32 = v28;
        if (postalCode4)
        {

          v18 = 0;
          label = v27;
          labeledValue4 = v26;
          label2 = v25;
          subLocality = v24;
          v33 = v23;
          subLocality2 = v78;
          goto LABEL_77;
        }

LABEL_26:
        label = v27;
        subAdministrativeArea = [value subAdministrativeArea];
        subAdministrativeArea2 = [value2 subAdministrativeArea];
        v71 = subAdministrativeArea;
        v35 = [subAdministrativeArea caseInsensitiveCompare:?];
        labeledValue4 = v26;
        v68 = v35;
        if (v35)
        {
          subAdministrativeArea3 = [value subAdministrativeArea];
          label2 = v25;
          if (subAdministrativeArea3)
          {
            v65 = subAdministrativeArea3;
            subAdministrativeArea4 = [value2 subAdministrativeArea];
            subLocality = v24;
            if (subAdministrativeArea4)
            {

              v18 = 0;
              v33 = v23;
              subLocality2 = v78;
LABEL_74:
              if (v72)
              {
              }

LABEL_77:
              if (v77)
              {
              }

              if (!v33)
              {
                goto LABEL_81;
              }

              goto LABEL_80;
            }

LABEL_33:
            v33 = v23;
            state = [value state];
            state2 = [value2 state];
            v67 = state;
            v39 = [state caseInsensitiveCompare:?];
            subLocality2 = v78;
            v64 = v39;
            if (v39)
            {
              state3 = [value state];
              if (state3)
              {
                v61 = state3;
                state4 = [value2 state];
                if (state4)
                {

                  v18 = 0;
LABEL_71:
                  if (v68)
                  {
                  }

                  goto LABEL_74;
                }

                v42 = v32;
              }

              else
              {
                v42 = v32;
                v61 = 0;
              }
            }

            else
            {
              v42 = v32;
            }

            country = [value country];
            country2 = [value2 country];
            v63 = country;
            v60 = [country caseInsensitiveCompare:?];
            if (v60)
            {
              country3 = [value country];
              if (country3)
              {
                v56 = country3;
                country4 = [value2 country];
                if (country4)
                {

                  v18 = 0;
LABEL_68:
                  if (v64)
                  {
                  }

                  goto LABEL_71;
                }

                HIDWORD(v57) = v42;
                v59 = labeledValue4;
                v46 = label2;
                v47 = label;
                LODWORD(v57) = 1;
              }

              else
              {
                LODWORD(v57) = 0;
                HIDWORD(v57) = v42;
                v59 = labeledValue4;
                v46 = label2;
                v47 = label;
                v56 = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              HIDWORD(v57) = v42;
              v59 = labeledValue4;
              v46 = label2;
              v47 = label;
            }

            v58 = v33;
            iSOCountryCode = [value ISOCountryCode];
            iSOCountryCode2 = [value2 ISOCountryCode];
            v50 = [iSOCountryCode caseInsensitiveCompare:iSOCountryCode2];
            if (v50 && ([value ISOCountryCode], (v33 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(value2, "ISOCountryCode"), (v51 = objc_claimAutoreleasedReturnValue()) != 0))
            {

              v18 = 0;
            }

            else
            {
              if ([v47 caseInsensitiveCompare:{v46, subLocality, v56, v57}])
              {
                v52 = v47 == 0;
              }

              else
              {
                v52 = 1;
              }

              v18 = v52 || v46 == 0;
              if (v50)
              {
              }

              subLocality = v55;
            }

            label = v47;
            label2 = v46;
            subLocality2 = v78;
            v33 = v58;
            if (v60)
            {
            }

            labeledValue4 = v59;
            goto LABEL_68;
          }

          v65 = 0;
        }

        else
        {
          label2 = v25;
        }

        subLocality = v24;
        goto LABEL_33;
      }

      v69 = 0;
    }

    v32 = v28;
    goto LABEL_26;
  }

  v18 = 0;
LABEL_82:

  return v18;
}

- (id)displayStringForValue:(id)value
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CF68];
  address = [(CNPropertyGroupPostalAddressItem *)self address];
  v6 = [v4 stringFromPostalAddress:address style:0];

  if (![v6 length])
  {
    address2 = [(CNPropertyGroupPostalAddressItem *)self address];
    dictionaryRepresentation = [address2 dictionaryRepresentation];
    allValues = [dictionaryRepresentation allValues];
    v10 = [allValues componentsJoinedByString:@" "];

    v6 = v10;
  }

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v27 = v6;
  v12 = [v6 componentsSeparatedByCharactersInSet:newlineCharacterSet];

  string = [MEMORY[0x1E696AD60] string];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v28 + 1) + 8 * i);
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
        v23 = [v22 length];

        if (v23)
        {
          v24 = &stru_1F0CE7398;
          if (v17)
          {
            v24 = @"\n";
          }

          [string appendFormat:@"%@%@", v24, v20];
          v17 = 1;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  v25 = [string copy];

  return v25;
}

- (id)normalizedValue
{
  displayValue = [(CNPropertyGroupItem *)self displayValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [displayValue stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];

    displayValue = [v3 stringByReplacingOccurrencesOfString:@"\r" withString:@"\n"];
  }

  return displayValue;
}

- (CNPostalAddress)address
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  return value;
}

@end