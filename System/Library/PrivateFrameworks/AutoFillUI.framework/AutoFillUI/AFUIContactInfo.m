@interface AFUIContactInfo
+ (id)symbolNameForLabel:(id)a3;
- (AFUIContactInfo)initWithLabel:(id)a3;
- (id)customInfoFromContactInfo;
- (id)propertyForTextContentType:(id)a3;
- (id)subtitleTextForAutoFillContext:(id)a3;
- (id)titleText;
@end

@implementation AFUIContactInfo

- (AFUIContactInfo)initWithLabel:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AFUIContactInfo;
  v5 = [(AFUIContactInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AFUIContactInfo *)v5 setLabel:v4];
  }

  return v6;
}

- (id)propertyForTextContentType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x1E698E108]])
  {
    v5 = [(AFUIContactInfo *)self nameString];
LABEL_59:
    v6 = v5;
    goto LABEL_60;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E0E8]])
  {
    v5 = [(AFUIContactInfo *)self givenNameString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E0D8]])
  {
    v5 = [(AFUIContactInfo *)self familyNameString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E100]])
  {
    v5 = [(AFUIContactInfo *)self middleNameString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E110]])
  {
    v5 = [(AFUIContactInfo *)self namePrefixString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E118]])
  {
    v5 = [(AFUIContactInfo *)self nameSuffixString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E128]])
  {
    v5 = [(AFUIContactInfo *)self nicknameString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E0F0]])
  {
    v5 = [(AFUIContactInfo *)self jobTitleString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E140]])
  {
    v5 = [(AFUIContactInfo *)self organizationNameString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E048]])
  {
    v5 = [(AFUIContactInfo *)self birthdateString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E050]])
  {
    v5 = [(AFUIContactInfo *)self birthdateDayString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E058]])
  {
    v5 = [(AFUIContactInfo *)self birthdateMonthString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E060]])
  {
    v5 = [(AFUIContactInfo *)self birthdateYearString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E0E0]])
  {
    v5 = [(AFUIContactInfo *)self fullStreetAddressString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E158]])
  {
    v5 = [(AFUIContactInfo *)self streetAddressLine1String];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E160]])
  {
    v5 = [(AFUIContactInfo *)self streetAddressLine2String];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E030]])
  {
    v5 = [(AFUIContactInfo *)self cityString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E040]])
  {
    v5 = [(AFUIContactInfo *)self stateString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E168]])
  {
    v5 = [(AFUIContactInfo *)self sublocalityString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E078]])
  {
    v5 = [(AFUIContactInfo *)self countryString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E150]])
  {
    v5 = [(AFUIContactInfo *)self postalCodeString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E198]])
  {
    v5 = [(AFUIContactInfo *)self phoneString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E190]])
  {
    v5 = [(AFUIContactInfo *)self phoneNationalNumberString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E178]])
  {
    v5 = [(AFUIContactInfo *)self phoneCountryCodeString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E170]])
  {
    v5 = [(AFUIContactInfo *)self phoneAreaCodeString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E188]])
  {
    v5 = [(AFUIContactInfo *)self phoneLocalNumberString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E180]])
  {
    v5 = [(AFUIContactInfo *)self phoneExtensionString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E0D0]])
  {
    v5 = [(AFUIContactInfo *)self emailString];
    goto LABEL_59;
  }

  if ([v4 isEqualToString:*MEMORY[0x1E698E1A0]])
  {
    v5 = [(AFUIContactInfo *)self urlString];
    goto LABEL_59;
  }

  v6 = 0;
LABEL_60:

  return v6;
}

- (id)customInfoFromContactInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AFUIContactInfo *)self nameString];

  if (v4)
  {
    v5 = [(AFUIContactInfo *)self nameString];
    [v3 setObject:v5 forKey:*MEMORY[0x1E698E108]];
  }

  v6 = [(AFUIContactInfo *)self givenNameString];

  if (v6)
  {
    v7 = [(AFUIContactInfo *)self givenNameString];
    [v3 setObject:v7 forKey:*MEMORY[0x1E698E0E8]];
  }

  v8 = [(AFUIContactInfo *)self familyNameString];

  if (v8)
  {
    v9 = [(AFUIContactInfo *)self familyNameString];
    [v3 setObject:v9 forKey:*MEMORY[0x1E698E0D8]];
  }

  v10 = [(AFUIContactInfo *)self middleNameString];

  if (v10)
  {
    v11 = [(AFUIContactInfo *)self middleNameString];
    [v3 setObject:v11 forKey:*MEMORY[0x1E698E100]];
  }

  v12 = [(AFUIContactInfo *)self namePrefixString];

  if (v12)
  {
    v13 = [(AFUIContactInfo *)self namePrefixString];
    [v3 setObject:v13 forKey:*MEMORY[0x1E698E110]];
  }

  v14 = [(AFUIContactInfo *)self nameSuffixString];

  if (v14)
  {
    v15 = [(AFUIContactInfo *)self nameSuffixString];
    [v3 setObject:v15 forKey:*MEMORY[0x1E698E118]];
  }

  v16 = [(AFUIContactInfo *)self nicknameString];

  if (v16)
  {
    v17 = [(AFUIContactInfo *)self nicknameString];
    [v3 setObject:v17 forKey:*MEMORY[0x1E698E128]];
  }

  v18 = [(AFUIContactInfo *)self jobTitleString];

  if (v18)
  {
    v19 = [(AFUIContactInfo *)self jobTitleString];
    [v3 setObject:v19 forKey:*MEMORY[0x1E698E0F0]];
  }

  v20 = [(AFUIContactInfo *)self organizationNameString];

  if (v20)
  {
    v21 = [(AFUIContactInfo *)self organizationNameString];
    [v3 setObject:v21 forKey:*MEMORY[0x1E698E140]];
  }

  v22 = [(AFUIContactInfo *)self birthdateString];

  if (v22)
  {
    v23 = [(AFUIContactInfo *)self birthdateString];
    [v3 setObject:v23 forKey:*MEMORY[0x1E698E048]];
  }

  v24 = [(AFUIContactInfo *)self birthdateDayString];

  if (v24)
  {
    v25 = [(AFUIContactInfo *)self birthdateDayString];
    [v3 setObject:v25 forKey:*MEMORY[0x1E698E050]];
  }

  v26 = [(AFUIContactInfo *)self birthdateMonthString];

  if (v26)
  {
    v27 = [(AFUIContactInfo *)self birthdateMonthString];
    [v3 setObject:v27 forKey:*MEMORY[0x1E698E058]];
  }

  v28 = [(AFUIContactInfo *)self birthdateYearString];

  if (v28)
  {
    v29 = [(AFUIContactInfo *)self birthdateYearString];
    [v3 setObject:v29 forKey:*MEMORY[0x1E698E060]];
  }

  v30 = [(AFUIContactInfo *)self fullStreetAddressString];

  if (v30)
  {
    v31 = [(AFUIContactInfo *)self fullStreetAddressString];
    [v3 setObject:v31 forKey:*MEMORY[0x1E698E0E0]];
  }

  v32 = [(AFUIContactInfo *)self streetAddressLine1String];

  if (v32)
  {
    v33 = [(AFUIContactInfo *)self streetAddressLine1String];
    [v3 setObject:v33 forKey:*MEMORY[0x1E698E158]];
  }

  v34 = [(AFUIContactInfo *)self streetAddressLine2String];

  if (v34)
  {
    v35 = [(AFUIContactInfo *)self streetAddressLine2String];
    [v3 setObject:v35 forKey:*MEMORY[0x1E698E160]];
  }

  v36 = [(AFUIContactInfo *)self cityString];

  if (v36)
  {
    v37 = [(AFUIContactInfo *)self cityString];
    [v3 setObject:v37 forKey:*MEMORY[0x1E698E030]];
  }

  v38 = [(AFUIContactInfo *)self stateString];

  if (v38)
  {
    v39 = [(AFUIContactInfo *)self stateString];
    [v3 setObject:v39 forKey:*MEMORY[0x1E698E040]];
  }

  v40 = [(AFUIContactInfo *)self sublocalityString];

  if (v40)
  {
    v41 = [(AFUIContactInfo *)self sublocalityString];
    [v3 setObject:v41 forKey:*MEMORY[0x1E698E168]];
  }

  v42 = [(AFUIContactInfo *)self countryString];

  if (v42)
  {
    v43 = [(AFUIContactInfo *)self countryString];
    [v3 setObject:v43 forKey:*MEMORY[0x1E698E078]];
  }

  v44 = [(AFUIContactInfo *)self postalCodeString];

  if (v44)
  {
    v45 = [(AFUIContactInfo *)self postalCodeString];
    [v3 setObject:v45 forKey:*MEMORY[0x1E698E150]];
  }

  v46 = [(AFUIContactInfo *)self phoneString];

  if (v46)
  {
    v47 = [(AFUIContactInfo *)self phoneString];
    [v3 setObject:v47 forKey:*MEMORY[0x1E698E198]];
  }

  v48 = [(AFUIContactInfo *)self phoneNationalNumberString];

  if (v48)
  {
    v49 = [(AFUIContactInfo *)self phoneNationalNumberString];
    [v3 setObject:v49 forKey:*MEMORY[0x1E698E190]];
  }

  v50 = [(AFUIContactInfo *)self phoneCountryCodeString];

  if (v50)
  {
    v51 = [(AFUIContactInfo *)self phoneCountryCodeString];
    [v3 setObject:v51 forKey:*MEMORY[0x1E698E178]];
  }

  v52 = [(AFUIContactInfo *)self phoneAreaCodeString];

  if (v52)
  {
    v53 = [(AFUIContactInfo *)self phoneAreaCodeString];
    [v3 setObject:v53 forKey:*MEMORY[0x1E698E170]];
  }

  v54 = [(AFUIContactInfo *)self phoneLocalNumberString];

  if (v54)
  {
    v55 = [(AFUIContactInfo *)self phoneLocalNumberString];
    [v3 setObject:v55 forKey:*MEMORY[0x1E698E188]];
  }

  v56 = [(AFUIContactInfo *)self phoneExtensionString];

  if (v56)
  {
    v57 = [(AFUIContactInfo *)self phoneExtensionString];
    [v3 setObject:v57 forKey:*MEMORY[0x1E698E180]];
  }

  v58 = [(AFUIContactInfo *)self emailString];

  if (v58)
  {
    v59 = [(AFUIContactInfo *)self emailString];
    [v3 setObject:v59 forKey:*MEMORY[0x1E698E0D0]];
  }

  v60 = [(AFUIContactInfo *)self urlString];

  if (v60)
  {
    v61 = [(AFUIContactInfo *)self urlString];
    [v3 setObject:v61 forKey:*MEMORY[0x1E698E1A0]];
  }

  return v3;
}

- (id)titleText
{
  v3 = [(AFUIContactInfo *)self label];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(AFUIContactInfo *)self nameString];
    v7 = [(AFUIContactInfo *)self label];
    v8 = [v5 stringWithFormat:@"%@ - %@", v6, v7];
  }

  else
  {
    v8 = [(AFUIContactInfo *)self nameString];
  }

  return v8;
}

- (id)subtitleTextForAutoFillContext:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = AFUIPreferredSubtitleOrder();
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v9 = *MEMORY[0x1E698E0D0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v3 objectForKey:v11];
        if (v12 && AFTextContentTypeIsInNameSet(v11))
        {
          v13 = [v4 containsObject:@"Name"];

          if ((v13 & 1) == 0)
          {
            v14 = v4;
            v15 = @"Name";
LABEL_27:
            [v14 addObject:v15];
            continue;
          }
        }

        else
        {
        }

        v16 = [v3 objectForKey:v11];
        if (v16 && AFTextContentTypeIsInPhoneSet(v11))
        {
          v17 = [v4 containsObject:@"Phone"];

          if ((v17 & 1) == 0)
          {
            v14 = v4;
            v15 = @"Phone";
            goto LABEL_27;
          }
        }

        else
        {
        }

        v18 = [v3 objectForKey:v11];
        if (v18 && [v11 isEqualToString:v9])
        {
          v19 = [v4 containsObject:@"Email"];

          if ((v19 & 1) == 0)
          {
            v14 = v4;
            v15 = @"Email";
            goto LABEL_27;
          }
        }

        else
        {
        }

        v20 = [v3 objectForKey:v11];
        if (!v20 || !AFTextContentTypeIsInContactSet(v11) || (AFTextContentTypeIsInBirthdaySet(v11) & 1) != 0)
        {

          continue;
        }

        v21 = [v4 containsObject:@"Address"];

        if ((v21 & 1) == 0)
        {
          v14 = v4;
          v15 = @"Address";
          goto LABEL_27;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  v22 = [MEMORY[0x1E696AD60] string];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v33 + 1) + 8 * j);
        v28 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v29 = [v28 localizedStringForKey:v27 value:&stru_1F4E9A028 table:@"Localizable"];

        if ([v22 length])
        {
          [v22 appendString:{@", "}];
        }

        [v22 appendString:v29];
      }

      v24 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v24);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)symbolNameForLabel:(id)a3
{
  v3 = a3;
  if ([v3 localizedCaseInsensitiveCompare:@"Home"])
  {
    if ([v3 localizedCaseInsensitiveCompare:@"Work"])
    {
      if ([v3 localizedCaseInsensitiveCompare:@"Phone"])
      {
        if ([v3 localizedCaseInsensitiveCompare:@"Mobile"])
        {
          v4 = @"person.text.rectangle";
        }

        else
        {
          v4 = @"iphone";
        }
      }

      else
      {
        v4 = @"phone";
      }
    }

    else
    {
      v4 = @"building.2";
    }
  }

  else
  {
    v4 = @"house";
  }

  return v4;
}

@end