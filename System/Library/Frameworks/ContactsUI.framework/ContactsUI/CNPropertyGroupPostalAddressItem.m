@interface CNPropertyGroupPostalAddressItem
+ (id)emptyValueForLabel:(id)a3;
- (BOOL)_isMinimalAddress:(id)a3;
- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4;
- (CNPostalAddress)address;
- (id)bestValue:(id)a3;
- (id)displayStringForValue:(id)a3;
- (id)normalizedValue;
@end

@implementation CNPropertyGroupPostalAddressItem

+ (id)emptyValueForLabel:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E695CF60]);

  return v3;
}

- (id)bestValue:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupItem *)self labeledValue];
  v6 = [v5 value];

  v7 = [v4 labeledValue];

  v8 = [v7 value];

  LODWORD(v7) = __46__CNPropertyGroupPostalAddressItem_bestValue___block_invoke(v6);
  if (v7 >= __46__CNPropertyGroupPostalAddressItem_bestValue___block_invoke(v8))
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
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

- (BOOL)_isMinimalAddress:(id)a3
{
  v3 = [a3 street];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)isEquivalentToItem:(id)a3 whenEditing:(BOOL)a4
{
  v5 = a3;
  v6 = [(CNPropertyGroupItem *)self labeledValue];
  v7 = [v6 value];

  v8 = [v5 labeledValue];
  v9 = [v8 value];

  v10 = [(CNPropertyGroupItem *)self labeledValue];
  v11 = [v10 label];

  v12 = [v5 labeledValue];

  v13 = [v12 label];

  if ([(CNPropertyGroupPostalAddressItem *)self _isMinimalAddress:v7]|| [(CNPropertyGroupPostalAddressItem *)self _isMinimalAddress:v9])
  {
    v14 = [v7 subLocality];
    v15 = [v9 subLocality];
    v16 = [v14 caseInsensitiveCompare:v15];
    if (v16)
    {
      v12 = [v7 subLocality];
      if (v12)
      {
        v17 = [v9 subLocality];
        if (v17)
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

    v20 = [v7 city];
    v79 = [v9 city];
    v77 = [v20 caseInsensitiveCompare:?];
    if (v77)
    {
      v21 = [v7 city];
      if (!v21)
      {
        v78 = v15;
        v23 = v16;
        v24 = v14;
        v25 = v13;
        v26 = v12;
        v27 = v11;
        v28 = v19;
        v73 = 0;
        goto LABEL_19;
      }

      v73 = v21;
      v22 = [v9 city];
      if (v22)
      {

        v18 = 0;
        if (!v16)
        {
          goto LABEL_81;
        }

        goto LABEL_80;
      }
    }

    v78 = v15;
    v23 = v16;
    v24 = v14;
    v25 = v13;
    v26 = v12;
    v27 = v11;
    v28 = v19;
LABEL_19:
    v29 = [v7 postalCode];
    v74 = [v9 postalCode];
    v75 = v29;
    v72 = [v29 caseInsensitiveCompare:?];
    v76 = v20;
    if (v72)
    {
      v30 = [v7 postalCode];
      if (v30)
      {
        v69 = v30;
        v31 = [v9 postalCode];
        v32 = v28;
        if (v31)
        {

          v18 = 0;
          v11 = v27;
          v12 = v26;
          v13 = v25;
          v14 = v24;
          v33 = v23;
          v15 = v78;
          goto LABEL_77;
        }

LABEL_26:
        v11 = v27;
        v34 = [v7 subAdministrativeArea];
        v70 = [v9 subAdministrativeArea];
        v71 = v34;
        v35 = [v34 caseInsensitiveCompare:?];
        v12 = v26;
        v68 = v35;
        if (v35)
        {
          v36 = [v7 subAdministrativeArea];
          v13 = v25;
          if (v36)
          {
            v65 = v36;
            v37 = [v9 subAdministrativeArea];
            v14 = v24;
            if (v37)
            {

              v18 = 0;
              v33 = v23;
              v15 = v78;
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
            v38 = [v7 state];
            v66 = [v9 state];
            v67 = v38;
            v39 = [v38 caseInsensitiveCompare:?];
            v15 = v78;
            v64 = v39;
            if (v39)
            {
              v40 = [v7 state];
              if (v40)
              {
                v61 = v40;
                v41 = [v9 state];
                if (v41)
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

            v43 = [v7 country];
            v62 = [v9 country];
            v63 = v43;
            v60 = [v43 caseInsensitiveCompare:?];
            if (v60)
            {
              v44 = [v7 country];
              if (v44)
              {
                v56 = v44;
                v45 = [v9 country];
                if (v45)
                {

                  v18 = 0;
LABEL_68:
                  if (v64)
                  {
                  }

                  goto LABEL_71;
                }

                HIDWORD(v57) = v42;
                v59 = v12;
                v46 = v13;
                v47 = v11;
                LODWORD(v57) = 1;
              }

              else
              {
                LODWORD(v57) = 0;
                HIDWORD(v57) = v42;
                v59 = v12;
                v46 = v13;
                v47 = v11;
                v56 = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              HIDWORD(v57) = v42;
              v59 = v12;
              v46 = v13;
              v47 = v11;
            }

            v58 = v33;
            v48 = [v7 ISOCountryCode];
            v49 = [v9 ISOCountryCode];
            v50 = [v48 caseInsensitiveCompare:v49];
            if (v50 && ([v7 ISOCountryCode], (v33 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v9, "ISOCountryCode"), (v51 = objc_claimAutoreleasedReturnValue()) != 0))
            {

              v18 = 0;
            }

            else
            {
              if ([v47 caseInsensitiveCompare:{v46, v14, v56, v57}])
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

              v14 = v55;
            }

            v11 = v47;
            v13 = v46;
            v15 = v78;
            v33 = v58;
            if (v60)
            {
            }

            v12 = v59;
            goto LABEL_68;
          }

          v65 = 0;
        }

        else
        {
          v13 = v25;
        }

        v14 = v24;
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

- (id)displayStringForValue:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695CF68];
  v5 = [(CNPropertyGroupPostalAddressItem *)self address];
  v6 = [v4 stringFromPostalAddress:v5 style:0];

  if (![v6 length])
  {
    v7 = [(CNPropertyGroupPostalAddressItem *)self address];
    v8 = [v7 dictionaryRepresentation];
    v9 = [v8 allValues];
    v10 = [v9 componentsJoinedByString:@" "];

    v6 = v10;
  }

  v11 = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v27 = v6;
  v12 = [v6 componentsSeparatedByCharactersInSet:v11];

  v13 = [MEMORY[0x1E696AD60] string];
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
        v21 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v22 = [v20 stringByTrimmingCharactersInSet:v21];
        v23 = [v22 length];

        if (v23)
        {
          v24 = &stru_1F0CE7398;
          if (v17)
          {
            v24 = @"\n";
          }

          [v13 appendFormat:@"%@%@", v24, v20];
          v17 = 1;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  v25 = [v13 copy];

  return v25;
}

- (id)normalizedValue
{
  v2 = [(CNPropertyGroupItem *)self displayValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];

    v2 = [v3 stringByReplacingOccurrencesOfString:@"\r" withString:@"\n"];
  }

  return v2;
}

- (CNPostalAddress)address
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];

  return v3;
}

@end