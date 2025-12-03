@interface AFUIContactInfo
+ (id)symbolNameForLabel:(id)label;
- (AFUIContactInfo)initWithLabel:(id)label;
- (id)customInfoFromContactInfo;
- (id)propertyForTextContentType:(id)type;
- (id)subtitleTextForAutoFillContext:(id)context;
- (id)titleText;
@end

@implementation AFUIContactInfo

- (AFUIContactInfo)initWithLabel:(id)label
{
  labelCopy = label;
  v8.receiver = self;
  v8.super_class = AFUIContactInfo;
  v5 = [(AFUIContactInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AFUIContactInfo *)v5 setLabel:labelCopy];
  }

  return v6;
}

- (id)propertyForTextContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*MEMORY[0x1E698E108]])
  {
    nameString = [(AFUIContactInfo *)self nameString];
LABEL_59:
    v6 = nameString;
    goto LABEL_60;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E0E8]])
  {
    nameString = [(AFUIContactInfo *)self givenNameString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E0D8]])
  {
    nameString = [(AFUIContactInfo *)self familyNameString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E100]])
  {
    nameString = [(AFUIContactInfo *)self middleNameString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E110]])
  {
    nameString = [(AFUIContactInfo *)self namePrefixString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E118]])
  {
    nameString = [(AFUIContactInfo *)self nameSuffixString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E128]])
  {
    nameString = [(AFUIContactInfo *)self nicknameString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E0F0]])
  {
    nameString = [(AFUIContactInfo *)self jobTitleString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E140]])
  {
    nameString = [(AFUIContactInfo *)self organizationNameString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E048]])
  {
    nameString = [(AFUIContactInfo *)self birthdateString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E050]])
  {
    nameString = [(AFUIContactInfo *)self birthdateDayString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E058]])
  {
    nameString = [(AFUIContactInfo *)self birthdateMonthString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E060]])
  {
    nameString = [(AFUIContactInfo *)self birthdateYearString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E0E0]])
  {
    nameString = [(AFUIContactInfo *)self fullStreetAddressString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E158]])
  {
    nameString = [(AFUIContactInfo *)self streetAddressLine1String];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E160]])
  {
    nameString = [(AFUIContactInfo *)self streetAddressLine2String];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E030]])
  {
    nameString = [(AFUIContactInfo *)self cityString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E040]])
  {
    nameString = [(AFUIContactInfo *)self stateString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E168]])
  {
    nameString = [(AFUIContactInfo *)self sublocalityString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E078]])
  {
    nameString = [(AFUIContactInfo *)self countryString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E150]])
  {
    nameString = [(AFUIContactInfo *)self postalCodeString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E198]])
  {
    nameString = [(AFUIContactInfo *)self phoneString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E190]])
  {
    nameString = [(AFUIContactInfo *)self phoneNationalNumberString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E178]])
  {
    nameString = [(AFUIContactInfo *)self phoneCountryCodeString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E170]])
  {
    nameString = [(AFUIContactInfo *)self phoneAreaCodeString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E188]])
  {
    nameString = [(AFUIContactInfo *)self phoneLocalNumberString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E180]])
  {
    nameString = [(AFUIContactInfo *)self phoneExtensionString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E0D0]])
  {
    nameString = [(AFUIContactInfo *)self emailString];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:*MEMORY[0x1E698E1A0]])
  {
    nameString = [(AFUIContactInfo *)self urlString];
    goto LABEL_59;
  }

  v6 = 0;
LABEL_60:

  return v6;
}

- (id)customInfoFromContactInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  nameString = [(AFUIContactInfo *)self nameString];

  if (nameString)
  {
    nameString2 = [(AFUIContactInfo *)self nameString];
    [v3 setObject:nameString2 forKey:*MEMORY[0x1E698E108]];
  }

  givenNameString = [(AFUIContactInfo *)self givenNameString];

  if (givenNameString)
  {
    givenNameString2 = [(AFUIContactInfo *)self givenNameString];
    [v3 setObject:givenNameString2 forKey:*MEMORY[0x1E698E0E8]];
  }

  familyNameString = [(AFUIContactInfo *)self familyNameString];

  if (familyNameString)
  {
    familyNameString2 = [(AFUIContactInfo *)self familyNameString];
    [v3 setObject:familyNameString2 forKey:*MEMORY[0x1E698E0D8]];
  }

  middleNameString = [(AFUIContactInfo *)self middleNameString];

  if (middleNameString)
  {
    middleNameString2 = [(AFUIContactInfo *)self middleNameString];
    [v3 setObject:middleNameString2 forKey:*MEMORY[0x1E698E100]];
  }

  namePrefixString = [(AFUIContactInfo *)self namePrefixString];

  if (namePrefixString)
  {
    namePrefixString2 = [(AFUIContactInfo *)self namePrefixString];
    [v3 setObject:namePrefixString2 forKey:*MEMORY[0x1E698E110]];
  }

  nameSuffixString = [(AFUIContactInfo *)self nameSuffixString];

  if (nameSuffixString)
  {
    nameSuffixString2 = [(AFUIContactInfo *)self nameSuffixString];
    [v3 setObject:nameSuffixString2 forKey:*MEMORY[0x1E698E118]];
  }

  nicknameString = [(AFUIContactInfo *)self nicknameString];

  if (nicknameString)
  {
    nicknameString2 = [(AFUIContactInfo *)self nicknameString];
    [v3 setObject:nicknameString2 forKey:*MEMORY[0x1E698E128]];
  }

  jobTitleString = [(AFUIContactInfo *)self jobTitleString];

  if (jobTitleString)
  {
    jobTitleString2 = [(AFUIContactInfo *)self jobTitleString];
    [v3 setObject:jobTitleString2 forKey:*MEMORY[0x1E698E0F0]];
  }

  organizationNameString = [(AFUIContactInfo *)self organizationNameString];

  if (organizationNameString)
  {
    organizationNameString2 = [(AFUIContactInfo *)self organizationNameString];
    [v3 setObject:organizationNameString2 forKey:*MEMORY[0x1E698E140]];
  }

  birthdateString = [(AFUIContactInfo *)self birthdateString];

  if (birthdateString)
  {
    birthdateString2 = [(AFUIContactInfo *)self birthdateString];
    [v3 setObject:birthdateString2 forKey:*MEMORY[0x1E698E048]];
  }

  birthdateDayString = [(AFUIContactInfo *)self birthdateDayString];

  if (birthdateDayString)
  {
    birthdateDayString2 = [(AFUIContactInfo *)self birthdateDayString];
    [v3 setObject:birthdateDayString2 forKey:*MEMORY[0x1E698E050]];
  }

  birthdateMonthString = [(AFUIContactInfo *)self birthdateMonthString];

  if (birthdateMonthString)
  {
    birthdateMonthString2 = [(AFUIContactInfo *)self birthdateMonthString];
    [v3 setObject:birthdateMonthString2 forKey:*MEMORY[0x1E698E058]];
  }

  birthdateYearString = [(AFUIContactInfo *)self birthdateYearString];

  if (birthdateYearString)
  {
    birthdateYearString2 = [(AFUIContactInfo *)self birthdateYearString];
    [v3 setObject:birthdateYearString2 forKey:*MEMORY[0x1E698E060]];
  }

  fullStreetAddressString = [(AFUIContactInfo *)self fullStreetAddressString];

  if (fullStreetAddressString)
  {
    fullStreetAddressString2 = [(AFUIContactInfo *)self fullStreetAddressString];
    [v3 setObject:fullStreetAddressString2 forKey:*MEMORY[0x1E698E0E0]];
  }

  streetAddressLine1String = [(AFUIContactInfo *)self streetAddressLine1String];

  if (streetAddressLine1String)
  {
    streetAddressLine1String2 = [(AFUIContactInfo *)self streetAddressLine1String];
    [v3 setObject:streetAddressLine1String2 forKey:*MEMORY[0x1E698E158]];
  }

  streetAddressLine2String = [(AFUIContactInfo *)self streetAddressLine2String];

  if (streetAddressLine2String)
  {
    streetAddressLine2String2 = [(AFUIContactInfo *)self streetAddressLine2String];
    [v3 setObject:streetAddressLine2String2 forKey:*MEMORY[0x1E698E160]];
  }

  cityString = [(AFUIContactInfo *)self cityString];

  if (cityString)
  {
    cityString2 = [(AFUIContactInfo *)self cityString];
    [v3 setObject:cityString2 forKey:*MEMORY[0x1E698E030]];
  }

  stateString = [(AFUIContactInfo *)self stateString];

  if (stateString)
  {
    stateString2 = [(AFUIContactInfo *)self stateString];
    [v3 setObject:stateString2 forKey:*MEMORY[0x1E698E040]];
  }

  sublocalityString = [(AFUIContactInfo *)self sublocalityString];

  if (sublocalityString)
  {
    sublocalityString2 = [(AFUIContactInfo *)self sublocalityString];
    [v3 setObject:sublocalityString2 forKey:*MEMORY[0x1E698E168]];
  }

  countryString = [(AFUIContactInfo *)self countryString];

  if (countryString)
  {
    countryString2 = [(AFUIContactInfo *)self countryString];
    [v3 setObject:countryString2 forKey:*MEMORY[0x1E698E078]];
  }

  postalCodeString = [(AFUIContactInfo *)self postalCodeString];

  if (postalCodeString)
  {
    postalCodeString2 = [(AFUIContactInfo *)self postalCodeString];
    [v3 setObject:postalCodeString2 forKey:*MEMORY[0x1E698E150]];
  }

  phoneString = [(AFUIContactInfo *)self phoneString];

  if (phoneString)
  {
    phoneString2 = [(AFUIContactInfo *)self phoneString];
    [v3 setObject:phoneString2 forKey:*MEMORY[0x1E698E198]];
  }

  phoneNationalNumberString = [(AFUIContactInfo *)self phoneNationalNumberString];

  if (phoneNationalNumberString)
  {
    phoneNationalNumberString2 = [(AFUIContactInfo *)self phoneNationalNumberString];
    [v3 setObject:phoneNationalNumberString2 forKey:*MEMORY[0x1E698E190]];
  }

  phoneCountryCodeString = [(AFUIContactInfo *)self phoneCountryCodeString];

  if (phoneCountryCodeString)
  {
    phoneCountryCodeString2 = [(AFUIContactInfo *)self phoneCountryCodeString];
    [v3 setObject:phoneCountryCodeString2 forKey:*MEMORY[0x1E698E178]];
  }

  phoneAreaCodeString = [(AFUIContactInfo *)self phoneAreaCodeString];

  if (phoneAreaCodeString)
  {
    phoneAreaCodeString2 = [(AFUIContactInfo *)self phoneAreaCodeString];
    [v3 setObject:phoneAreaCodeString2 forKey:*MEMORY[0x1E698E170]];
  }

  phoneLocalNumberString = [(AFUIContactInfo *)self phoneLocalNumberString];

  if (phoneLocalNumberString)
  {
    phoneLocalNumberString2 = [(AFUIContactInfo *)self phoneLocalNumberString];
    [v3 setObject:phoneLocalNumberString2 forKey:*MEMORY[0x1E698E188]];
  }

  phoneExtensionString = [(AFUIContactInfo *)self phoneExtensionString];

  if (phoneExtensionString)
  {
    phoneExtensionString2 = [(AFUIContactInfo *)self phoneExtensionString];
    [v3 setObject:phoneExtensionString2 forKey:*MEMORY[0x1E698E180]];
  }

  emailString = [(AFUIContactInfo *)self emailString];

  if (emailString)
  {
    emailString2 = [(AFUIContactInfo *)self emailString];
    [v3 setObject:emailString2 forKey:*MEMORY[0x1E698E0D0]];
  }

  urlString = [(AFUIContactInfo *)self urlString];

  if (urlString)
  {
    urlString2 = [(AFUIContactInfo *)self urlString];
    [v3 setObject:urlString2 forKey:*MEMORY[0x1E698E1A0]];
  }

  return v3;
}

- (id)titleText
{
  label = [(AFUIContactInfo *)self label];
  v4 = [label length];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    nameString = [(AFUIContactInfo *)self nameString];
    label2 = [(AFUIContactInfo *)self label];
    nameString2 = [v5 stringWithFormat:@"%@ - %@", nameString, label2];
  }

  else
  {
    nameString2 = [(AFUIContactInfo *)self nameString];
  }

  return nameString2;
}

- (id)subtitleTextForAutoFillContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  array = [MEMORY[0x1E695DF70] array];
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
        v12 = [contextCopy objectForKey:v11];
        if (v12 && AFTextContentTypeIsInNameSet(v11))
        {
          v13 = [array containsObject:@"Name"];

          if ((v13 & 1) == 0)
          {
            v14 = array;
            v15 = @"Name";
LABEL_27:
            [v14 addObject:v15];
            continue;
          }
        }

        else
        {
        }

        v16 = [contextCopy objectForKey:v11];
        if (v16 && AFTextContentTypeIsInPhoneSet(v11))
        {
          v17 = [array containsObject:@"Phone"];

          if ((v17 & 1) == 0)
          {
            v14 = array;
            v15 = @"Phone";
            goto LABEL_27;
          }
        }

        else
        {
        }

        v18 = [contextCopy objectForKey:v11];
        if (v18 && [v11 isEqualToString:v9])
        {
          v19 = [array containsObject:@"Email"];

          if ((v19 & 1) == 0)
          {
            v14 = array;
            v15 = @"Email";
            goto LABEL_27;
          }
        }

        else
        {
        }

        v20 = [contextCopy objectForKey:v11];
        if (!v20 || !AFTextContentTypeIsInContactSet(v11) || (AFTextContentTypeIsInBirthdaySet(v11) & 1) != 0)
        {

          continue;
        }

        v21 = [array containsObject:@"Address"];

        if ((v21 & 1) == 0)
        {
          v14 = array;
          v15 = @"Address";
          goto LABEL_27;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v7);
  }

  string = [MEMORY[0x1E696AD60] string];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = array;
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

        if ([string length])
        {
          [string appendString:{@", "}];
        }

        [string appendString:v29];
      }

      v24 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v24);
  }

  v30 = *MEMORY[0x1E69E9840];

  return string;
}

+ (id)symbolNameForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy localizedCaseInsensitiveCompare:@"Home"])
  {
    if ([labelCopy localizedCaseInsensitiveCompare:@"Work"])
    {
      if ([labelCopy localizedCaseInsensitiveCompare:@"Phone"])
      {
        if ([labelCopy localizedCaseInsensitiveCompare:@"Mobile"])
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