@interface AFUIContactsController
- (AFUIContactPropertyPickerDelegate)contactPropertyPickerDelegate;
- (AFUIContactsController)init;
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (id)_customInfoForContactProperty:(id)property useMultilineFallback:(BOOL)fallback;
- (id)_meContactInfosForTextContentType:(id)type meContact:(id)contact;
- (id)_meDisplayName;
- (id)allContactsViewControllerForTextContentType:(id)type;
- (id)contactsKeysForTextContentType:(id)type;
- (id)formattedDateForComponents:(id)components;
- (id)meCardViewControllerForTextContentType:(id)type;
- (id)meContactInfosForTextContentType:(id)type;
- (void)_loadMe;
- (void)addMeDisplayNameObserverAndGetInitialValue:(id)value;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPickerDidCancel:(id)cancel;
- (void)copyAddressContactInfoFromContactInfo:(id)info toContactInfo:(id)contactInfo;
- (void)copyPhoneContactInfoFromContactInfo:(id)info toContactInfo:(id)contactInfo;
- (void)removeMeDisplayNameObserver:(id)observer;
- (void)unifyPhoneNumberAndAddressDataAcrossContactInfos:(id)infos withTextContentType:(id)type;
@end

@implementation AFUIContactsController

- (AFUIContactsController)init
{
  v9.receiver = self;
  v9.super_class = AFUIContactsController;
  v2 = [(AFUIContactsController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CE18]);
    contactStore = v2->_contactStore;
    v2->_contactStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    meDisplayNameObservers = v2->_meDisplayNameObservers;
    v2->_meDisplayNameObservers = v5;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__loadMe name:*MEMORY[0x1E695C3E0] object:0];

    [(AFUIContactsController *)v2 _loadMe];
  }

  return v2;
}

- (void)addMeDisplayNameObserverAndGetInitialValue:(id)value
{
  valueCopy = value;
  meDisplayNameObservers = [(AFUIContactsController *)self meDisplayNameObservers];
  [meDisplayNameObservers addObject:valueCopy];

  _meDisplayName = [(AFUIContactsController *)self _meDisplayName];
  if (_meDisplayName)
  {
    [valueCopy meDisplayNameChanged:_meDisplayName];
  }
}

- (void)removeMeDisplayNameObserver:(id)observer
{
  observerCopy = observer;
  meDisplayNameObservers = [(AFUIContactsController *)self meDisplayNameObservers];
  [meDisplayNameObservers removeObject:observerCopy];
}

- (id)allContactsViewControllerForTextContentType:(id)type
{
  v4 = MEMORY[0x1E695D120];
  typeCopy = type;
  v6 = objc_alloc_init(v4);
  v7 = [(AFUIContactsController *)self contactsKeysForTextContentType:typeCopy];
  [v6 setDisplayedPropertyKeys:v7];

  [v6 setDelegate:self];
  [v6 setModalPresentationStyle:2];
  LOBYTE(v7) = AFTextContentTypeIsInNameSet(typeCopy);

  if ((v7 & 1) != 0 || self->_alwaysAllowsNamePicking) && (objc_opt_respondsToSelector())
  {
    [v6 setValue:MEMORY[0x1E695E118] forKey:@"allowsNamePicking"];
  }

  return v6;
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  propertyCopy = property;
  contactPropertyPickerDelegate = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  v8 = -[AFUIContactsController _customInfoForContactProperty:useMultilineFallback:](self, "_customInfoForContactProperty:useMultilineFallback:", propertyCopy, [contactPropertyPickerDelegate isSingleLineDocument] ^ 1);

  contactPropertyPickerDelegate2 = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  [contactPropertyPickerDelegate2 userSelectedContactProperties:v8];
}

- (void)contactPickerDidCancel:(id)cancel
{
  contactPropertyPickerDelegate = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  [contactPropertyPickerDelegate contactPickerDidCancel];
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  propertyCopy = property;
  controllerCopy = controller;
  contactPropertyPickerDelegate = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  v9 = -[AFUIContactsController _customInfoForContactProperty:useMultilineFallback:](self, "_customInfoForContactProperty:useMultilineFallback:", propertyCopy, [contactPropertyPickerDelegate isSingleLineDocument] ^ 1);

  contactPropertyPickerDelegate2 = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  [contactPropertyPickerDelegate2 userSelectedContactProperties:v9];

  navigationController = [controllerCopy navigationController];

  [navigationController dismissViewControllerAnimated:1 completion:0];
  return 0;
}

- (void)_loadMe
{
  v17[15] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v17[0] = v3;
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v5 = *MEMORY[0x1E695C208];
  v17[1] = descriptorForRequiredKeys;
  v17[2] = v5;
  v6 = *MEMORY[0x1E695C360];
  v17[3] = *MEMORY[0x1E695C330];
  v17[4] = v6;
  v7 = *MEMORY[0x1E695C240];
  v17[5] = *MEMORY[0x1E695C300];
  v17[6] = v7;
  v8 = *MEMORY[0x1E695C230];
  v17[7] = *MEMORY[0x1E695C2F0];
  v17[8] = v8;
  v9 = *MEMORY[0x1E695C308];
  v17[9] = *MEMORY[0x1E695C390];
  v17[10] = v9;
  v10 = *MEMORY[0x1E695C328];
  v17[11] = *MEMORY[0x1E695C2C8];
  v17[12] = v10;
  v11 = *MEMORY[0x1E695C1D0];
  v17[13] = *MEMORY[0x1E695C418];
  v17[14] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:15];

  contactStore = [(AFUIContactsController *)self contactStore];
  v16 = 0;
  v14 = [contactStore _ios_meContactWithKeysToFetch:v12 error:&v16];
  [(AFUIContactsController *)self setMe:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_meContactInfosForTextContentType:(id)type meContact:(id)contact
{
  v169 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  contactCopy = contact;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  emailAddresses = [contactCopy emailAddresses];
  v8 = [emailAddresses countByEnumeratingWithState:&v159 objects:v168 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v160;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v160 != v10)
        {
          objc_enumerationMutation(emailAddresses);
        }

        v12 = *(*(&v159 + 1) + 8 * i);
        v13 = MEMORY[0x1E695CEE0];
        label = [v12 label];
        v15 = [v13 localizedStringForLabel:label];
        v16 = v15;
        v17 = &stru_1F4E9A028;
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        v19 = [v6 objectForKey:v18];
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = [[AFUIContactInfo alloc] initWithLabel:v18];
          [v6 setObject:v20 forKey:v18];
          if (!v20)
          {
            goto LABEL_12;
          }
        }

        value = [v12 value];
        [(AFUIContactInfo *)v20 setEmailString:value];

LABEL_12:
      }

      v9 = [emailAddresses countByEnumeratingWithState:&v159 objects:v168 count:16];
    }

    while (v9);
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  urlAddresses = [contactCopy urlAddresses];
  v23 = [urlAddresses countByEnumeratingWithState:&v155 objects:v167 count:16];
  if (!v23)
  {
    goto LABEL_27;
  }

  v24 = v23;
  v25 = *v156;
  do
  {
    for (j = 0; j != v24; ++j)
    {
      if (*v156 != v25)
      {
        objc_enumerationMutation(urlAddresses);
      }

      v27 = *(*(&v155 + 1) + 8 * j);
      v28 = MEMORY[0x1E695CEE0];
      label2 = [v27 label];
      v30 = [v28 localizedStringForLabel:label2];
      v31 = v30;
      v32 = &stru_1F4E9A028;
      if (v30)
      {
        v32 = v30;
      }

      v33 = v32;

      v34 = [v6 objectForKey:v33];
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = [[AFUIContactInfo alloc] initWithLabel:v33];
        [v6 setObject:v35 forKey:v33];
        if (!v35)
        {
          goto LABEL_25;
        }
      }

      value2 = [v27 value];
      [(AFUIContactInfo *)v35 setUrlString:value2];

LABEL_25:
    }

    v24 = [urlAddresses countByEnumeratingWithState:&v155 objects:v167 count:16];
  }

  while (v24);
LABEL_27:

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = [contactCopy phoneNumbers];
  v136 = [obj countByEnumeratingWithState:&v151 objects:v166 count:16];
  if (!v136)
  {
    goto LABEL_51;
  }

  v37 = *v152;
  v38 = 0x1E695C000uLL;
  while (2)
  {
    v39 = 0;
    while (2)
    {
      if (*v152 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v151 + 1) + 8 * v39);
      v41 = MEMORY[0x1E695CEE0];
      label3 = [v40 label];
      v43 = [v41 localizedStringForLabel:label3];
      v44 = v43;
      v45 = &stru_1F4E9A028;
      if (v43)
      {
        v45 = v43;
      }

      v46 = v45;

      v47 = [v6 objectForKey:v46];
      if (v47)
      {
        v48 = v47;
        goto LABEL_37;
      }

      v48 = [[AFUIContactInfo alloc] initWithLabel:v46];
      [v6 setObject:v48 forKey:v46];
      if (v48)
      {
LABEL_37:
        value3 = [v40 value];
        stringValue = [value3 stringValue];
        [(AFUIContactInfo *)v48 setPhoneString:stringValue];

        value4 = [v40 value];
        digitsRemovingDialingCode = [value4 digitsRemovingDialingCode];

        if (digitsRemovingDialingCode)
        {
          [(AFUIContactInfo *)v48 setPhoneNationalNumberString:digitsRemovingDialingCode];
          if ([digitsRemovingDialingCode length] == 10)
          {
            v53 = [digitsRemovingDialingCode substringToIndex:3];
            [(AFUIContactInfo *)v48 setPhoneAreaCodeString:v53];

            v54 = [digitsRemovingDialingCode substringFromIndex:3];
            [(AFUIContactInfo *)v48 setPhoneLocalNumberString:v54];
          }

          else if ([digitsRemovingDialingCode length] == 7)
          {
            [(AFUIContactInfo *)v48 setPhoneAreaCodeString:&stru_1F4E9A028];
            [(AFUIContactInfo *)v48 setPhoneLocalNumberString:digitsRemovingDialingCode];
          }

          [(AFUIContactInfo *)v48 setPhoneExtensionString:&stru_1F4E9A028];
        }

        v55 = *(v38 + 3920);
        value5 = [v40 value];
        countryCode = [value5 countryCode];
        v58 = v38;
        v59 = countryCode;
        if (countryCode)
        {
          v60 = [v55 dialingCodeForISOCountryCode:countryCode];
        }

        else
        {
          [*(v58 + 3920) defaultCountryCode];
          v133 = v46;
          v61 = contactCopy;
          v62 = v6;
          v64 = v63 = v37;
          v60 = [v55 dialingCodeForISOCountryCode:v64];

          v37 = v63;
          v6 = v62;
          contactCopy = v61;
          v46 = v133;
        }

        if (v60)
        {
          [(AFUIContactInfo *)v48 setPhoneCountryCodeString:v60];
        }

        v38 = 0x1E695C000;
      }

      if (v136 != ++v39)
      {
        continue;
      }

      break;
    }

    v136 = [obj countByEnumeratingWithState:&v151 objects:v166 count:16];
    if (v136)
    {
      continue;
    }

    break;
  }

LABEL_51:

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  postalAddresses = [contactCopy postalAddresses];
  v65 = [postalAddresses countByEnumeratingWithState:&v147 objects:v165 count:16];
  if (!v65)
  {
    goto LABEL_68;
  }

  v66 = v65;
  v137 = *v148;
  while (2)
  {
    v67 = 0;
    while (2)
    {
      if (*v148 != v137)
      {
        objc_enumerationMutation(postalAddresses);
      }

      v68 = *(*(&v147 + 1) + 8 * v67);
      v69 = MEMORY[0x1E695CEE0];
      label4 = [v68 label];
      v71 = [v69 localizedStringForLabel:label4];
      v72 = v71;
      v73 = &stru_1F4E9A028;
      if (v71)
      {
        v73 = v71;
      }

      v74 = v73;

      value6 = [v68 value];
      street = [value6 street];
      v77 = [street componentsSeparatedByString:@"\n"];

      v78 = [v6 objectForKey:v74];
      if (v78)
      {
        v79 = v78;
        goto LABEL_61;
      }

      v79 = [[AFUIContactInfo alloc] initWithLabel:v74];
      [v6 setObject:v79 forKey:v74];
      if (v79)
      {
LABEL_61:
        if (v77)
        {
          v80 = [v77 objectAtIndex:0];
          [(AFUIContactInfo *)v79 setStreetAddressLine1String:v80];
        }

        if ([v77 count] >= 2)
        {
          v81 = [v77 objectAtIndex:1];
          [(AFUIContactInfo *)v79 setStreetAddressLine2String:v81];
        }

        value7 = [v68 value];
        subLocality = [value7 subLocality];
        [(AFUIContactInfo *)v79 setSublocalityString:subLocality];

        value8 = [v68 value];
        city = [value8 city];
        [(AFUIContactInfo *)v79 setCityString:city];

        value9 = [v68 value];
        state = [value9 state];
        [(AFUIContactInfo *)v79 setStateString:state];

        value10 = [v68 value];
        postalCode = [value10 postalCode];
        [(AFUIContactInfo *)v79 setPostalCodeString:postalCode];

        value11 = [v68 value];
        country = [value11 country];
        [(AFUIContactInfo *)v79 setCountryString:country];

        v92 = MEMORY[0x1E695CF68];
        value12 = [v68 value];
        v94 = [v92 singleLineStringFromPostalAddress:value12 addCountryName:0];

        [(AFUIContactInfo *)v79 setFullStreetAddressString:v94];
      }

      if (v66 != ++v67)
      {
        continue;
      }

      break;
    }

    v66 = [postalAddresses countByEnumeratingWithState:&v147 objects:v165 count:16];
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_68:

  allKeys = [v6 allKeys];
  v96 = [allKeys count];

  if (!v96)
  {
    v97 = objc_alloc_init(AFUIContactInfo);
    [v6 setObject:v97 forKey:&stru_1F4E9A028];
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  allKeys2 = [v6 allKeys];
  v98 = [allKeys2 countByEnumeratingWithState:&v143 objects:v164 count:16];
  if (v98)
  {
    v99 = v98;
    v100 = *v144;
    do
    {
      for (k = 0; k != v99; ++k)
      {
        if (*v144 != v100)
        {
          objc_enumerationMutation(allKeys2);
        }

        v102 = [v6 objectForKey:*(*(&v143 + 1) + 8 * k)];
        v103 = [MEMORY[0x1E695CD80] stringFromContact:contactCopy style:0];
        [v102 setNameString:v103];

        givenName = [contactCopy givenName];
        [v102 setGivenNameString:givenName];

        familyName = [contactCopy familyName];
        [v102 setFamilyNameString:familyName];

        middleName = [contactCopy middleName];
        [v102 setMiddleNameString:middleName];

        namePrefix = [contactCopy namePrefix];
        [v102 setNamePrefixString:namePrefix];

        nameSuffix = [contactCopy nameSuffix];
        [v102 setNameSuffixString:nameSuffix];

        nickname = [contactCopy nickname];
        [v102 setNicknameString:nickname];

        jobTitle = [contactCopy jobTitle];
        [v102 setJobTitleString:jobTitle];

        organizationName = [contactCopy organizationName];
        [v102 setOrganizationNameString:organizationName];

        birthday = [contactCopy birthday];
        v113 = [(AFUIContactsController *)self formattedDateForComponents:birthday];
        [v102 setBirthdateString:v113];

        v114 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(birthday, "day")}];
        stringValue2 = [v114 stringValue];
        [v102 setBirthdateDayString:stringValue2];

        v116 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(birthday, "month")}];
        stringValue3 = [v116 stringValue];
        [v102 setBirthdateMonthString:stringValue3];

        v118 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(birthday, "year")}];
        stringValue4 = [v118 stringValue];
        [v102 setBirthdateYearString:stringValue4];
      }

      v99 = [allKeys2 countByEnumeratingWithState:&v143 objects:v164 count:16];
    }

    while (v99);
  }

  [(AFUIContactsController *)self unifyPhoneNumberAndAddressDataAcrossContactInfos:v6 withTextContentType:typeCopy];
  v120 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  if (_meContactInfosForTextContentType_meContact__onceToken != -1)
  {
    [AFUIContactsController _meContactInfosForTextContentType:meContact:];
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v121 = _meContactInfosForTextContentType_meContact__preferredLabelOrder;
  v122 = [v121 countByEnumeratingWithState:&v139 objects:v163 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v140;
    do
    {
      for (m = 0; m != v123; ++m)
      {
        if (*v140 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*(*(&v139 + 1) + 8 * m)];
        v127 = [v6 objectForKey:v126];
        if (v127)
        {
          [v120 addObject:v127];
          [v6 removeObjectForKey:v126];
        }
      }

      v123 = [v121 countByEnumeratingWithState:&v139 objects:v163 count:16];
    }

    while (v123);
  }

  allValues = [v6 allValues];
  [v120 addObjectsFromArray:allValues];

  v129 = *MEMORY[0x1E69E9840];

  return v120;
}

void __70__AFUIContactsController__meContactInfosForTextContentType_meContact___block_invoke()
{
  v7[8] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695CB88];
  v7[0] = *MEMORY[0x1E695CB90];
  v7[1] = v0;
  v1 = *MEMORY[0x1E695CB60];
  v7[2] = *MEMORY[0x1E695CBC0];
  v7[3] = v1;
  v2 = *MEMORY[0x1E695CBC8];
  v7[4] = *MEMORY[0x1E695CBD8];
  v7[5] = v2;
  v3 = *MEMORY[0x1E695CBD0];
  v7[6] = *MEMORY[0x1E695CB68];
  v7[7] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:8];
  v5 = _meContactInfosForTextContentType_meContact__preferredLabelOrder;
  _meContactInfosForTextContentType_meContact__preferredLabelOrder = v4;

  v6 = *MEMORY[0x1E69E9840];
}

- (id)meContactInfosForTextContentType:(id)type
{
  typeCopy = type;
  v5 = [(AFUIContactsController *)self me];
  v6 = [(AFUIContactsController *)self _meContactInfosForTextContentType:typeCopy meContact:v5];

  return v6;
}

- (id)formattedDateForComponents:(id)components
{
  v3 = MEMORY[0x1E695DEE8];
  componentsCopy = components;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar dateFromComponents:componentsCopy];

  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  [v7 setLocale:currentLocale];

  [v7 setLocalizedDateFormatFromTemplate:@"ddMMyyyy"];
  v9 = [v7 stringFromDate:v6];

  return v9;
}

- (void)unifyPhoneNumberAndAddressDataAcrossContactInfos:(id)infos withTextContentType:(id)type
{
  infosCopy = infos;
  typeCopy = type;
  v6 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CB60]];
  v7 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CB90]];
  v8 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CB88]];
  v9 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CBC0]];
  v10 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CBD0]];
  v11 = [infosCopy objectForKey:v6];
  v12 = infosCopy;
  if (v11)
  {
    v13 = [infosCopy objectForKey:v6];
    phoneString = [v13 phoneString];
    if (phoneString)
    {
      v15 = phoneString;
LABEL_23:

      v12 = infosCopy;
      goto LABEL_24;
    }

    v16 = [infosCopy objectForKey:v6];
    fullStreetAddressString = [v16 fullStreetAddressString];

    v12 = infosCopy;
    if (fullStreetAddressString)
    {
      v11 = [infosCopy objectForKey:v7];
      v13 = [infosCopy objectForKey:v8];
      v15 = [infosCopy objectForKey:v9];
      v66 = [infosCopy objectForKey:v6];
      if (v11)
      {
        fullStreetAddressString2 = [v11 fullStreetAddressString];

        if (!fullStreetAddressString2)
        {
          [(AFUIContactsController *)self copyAddressContactInfoFromContactInfo:v66 toContactInfo:v11];
        }

        emailString = [v11 emailString];

        if (!emailString)
        {
          emailString2 = [v66 emailString];
          [v11 setEmailString:emailString2];
        }
      }

      if (v13)
      {
        fullStreetAddressString3 = [v13 fullStreetAddressString];

        if (!fullStreetAddressString3)
        {
          [(AFUIContactsController *)self copyAddressContactInfoFromContactInfo:v66 toContactInfo:v13];
        }

        emailString3 = [v13 emailString];

        if (!emailString3)
        {
          emailString4 = [v66 emailString];
          [v13 setEmailString:emailString4];
        }
      }

      if (v15)
      {
        fullStreetAddressString4 = [v15 fullStreetAddressString];

        if (!fullStreetAddressString4)
        {
          [(AFUIContactsController *)self copyAddressContactInfoFromContactInfo:v66 toContactInfo:v15];
        }

        emailString5 = [v15 emailString];

        if (!emailString5)
        {
          emailString6 = [v66 emailString];
          [v15 setEmailString:emailString6];
        }
      }

      if (AFTextContentTypeIsInPhoneSet(typeCopy))
      {
        [infosCopy removeObjectForKey:v6];
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v27 = [v12 objectForKey:v6];
  if (v27)
  {
    v28 = v27;
    v29 = [infosCopy objectForKey:v6];
    phoneString2 = [v29 phoneString];

    if (!phoneString2)
    {
      v35 = [infosCopy objectForKey:v7];
      if (!v35)
      {
        goto LABEL_41;
      }

      v36 = v35;
      v37 = [infosCopy objectForKey:v7];
      phoneString3 = [v37 phoneString];

      if (phoneString3)
      {
        v39 = [infosCopy objectForKey:v7];
        v40 = [infosCopy objectForKey:v6];
        [(AFUIContactsController *)self copyPhoneContactInfoFromContactInfo:v39 toContactInfo:v40];

        v41 = AFTextContentTypeIsInAddressSet(typeCopy);
        v42 = v7;
        if ((v41 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_41:
        v52 = [infosCopy objectForKey:v8];
        if (!v52)
        {
          goto LABEL_45;
        }

        v53 = v52;
        v54 = [infosCopy objectForKey:v8];
        phoneString4 = [v54 phoneString];

        if (phoneString4)
        {
          v56 = [infosCopy objectForKey:v8];
          v57 = [infosCopy objectForKey:v6];
          [(AFUIContactsController *)self copyPhoneContactInfoFromContactInfo:v56 toContactInfo:v57];

          v58 = AFTextContentTypeIsInAddressSet(typeCopy);
          v42 = v8;
          if ((v58 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_45:
          v59 = [infosCopy objectForKey:v9];
          if (!v59)
          {
            goto LABEL_26;
          }

          v60 = v59;
          v61 = [infosCopy objectForKey:v9];
          phoneString5 = [v61 phoneString];

          if (!phoneString5)
          {
            goto LABEL_26;
          }

          v63 = [infosCopy objectForKey:v9];
          v64 = [infosCopy objectForKey:v6];
          [(AFUIContactsController *)self copyPhoneContactInfoFromContactInfo:v63 toContactInfo:v64];

          v65 = AFTextContentTypeIsInAddressSet(typeCopy);
          v42 = v9;
          if (!v65)
          {
            goto LABEL_26;
          }
        }
      }

      [infosCopy removeObjectForKey:v42];
    }
  }

LABEL_26:
  v31 = [infosCopy objectForKey:v6];
  if (v31)
  {
    v32 = v31;
    v33 = [infosCopy objectForKey:v6];
    urlString = [v33 urlString];
    if (urlString)
    {
    }

    else
    {
      v43 = [infosCopy objectForKey:v6];
      fullStreetAddressString5 = [v43 fullStreetAddressString];

      if (fullStreetAddressString5)
      {
        v45 = [infosCopy objectForKey:v10];
        if (v45)
        {
          v46 = v45;
          v47 = [infosCopy objectForKey:v10];
          urlString2 = [v47 urlString];

          if (urlString2)
          {
            v49 = [infosCopy objectForKey:v10];
            urlString3 = [v49 urlString];
            v51 = [infosCopy objectForKey:v6];
            [v51 setUrlString:urlString3];

            if ([typeCopy isEqualToString:*MEMORY[0x1E698E1A0]])
            {
              [infosCopy removeObjectForKey:v10];
            }
          }
        }
      }
    }
  }
}

- (void)copyAddressContactInfoFromContactInfo:(id)info toContactInfo:(id)contactInfo
{
  infoCopy = info;
  contactInfoCopy = contactInfo;
  fullStreetAddressString = [infoCopy fullStreetAddressString];
  [contactInfoCopy setFullStreetAddressString:fullStreetAddressString];

  streetAddressLine1String = [infoCopy streetAddressLine1String];

  if (streetAddressLine1String)
  {
    streetAddressLine1String2 = [infoCopy streetAddressLine1String];
    [contactInfoCopy setStreetAddressLine1String:streetAddressLine1String2];
  }

  streetAddressLine2String = [infoCopy streetAddressLine2String];

  if (streetAddressLine2String)
  {
    streetAddressLine2String2 = [infoCopy streetAddressLine2String];
    [contactInfoCopy setStreetAddressLine2String:streetAddressLine2String2];
  }

  sublocalityString = [infoCopy sublocalityString];
  [contactInfoCopy setSublocalityString:sublocalityString];

  cityString = [infoCopy cityString];
  [contactInfoCopy setCityString:cityString];

  stateString = [infoCopy stateString];
  [contactInfoCopy setStateString:stateString];

  postalCodeString = [infoCopy postalCodeString];
  [contactInfoCopy setPostalCodeString:postalCodeString];

  countryString = [infoCopy countryString];
  [contactInfoCopy setCountryString:countryString];
}

- (void)copyPhoneContactInfoFromContactInfo:(id)info toContactInfo:(id)contactInfo
{
  infoCopy = info;
  contactInfoCopy = contactInfo;
  phoneString = [infoCopy phoneString];
  [contactInfoCopy setPhoneString:phoneString];

  phoneNationalNumberString = [infoCopy phoneNationalNumberString];

  if (phoneNationalNumberString)
  {
    phoneNationalNumberString2 = [infoCopy phoneNationalNumberString];
    [contactInfoCopy setPhoneNationalNumberString:phoneNationalNumberString2];

    phoneAreaCodeString = [infoCopy phoneAreaCodeString];
    [contactInfoCopy setPhoneAreaCodeString:phoneAreaCodeString];

    phoneLocalNumberString = [infoCopy phoneLocalNumberString];
    [contactInfoCopy setPhoneLocalNumberString:phoneLocalNumberString];

    phoneExtensionString = [infoCopy phoneExtensionString];
    [contactInfoCopy setPhoneExtensionString:phoneExtensionString];
  }

  phoneCountryCodeString = [infoCopy phoneCountryCodeString];

  if (phoneCountryCodeString)
  {
    phoneCountryCodeString2 = [infoCopy phoneCountryCodeString];
    [contactInfoCopy setPhoneCountryCodeString:phoneCountryCodeString2];
  }
}

- (id)_meDisplayName
{
  v3 = [(AFUIContactsController *)self me];

  if (v3)
  {
    v4 = MEMORY[0x1E695CD80];
    v5 = [(AFUIContactsController *)self me];
    v6 = [v4 stringFromContact:v5 style:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactsKeysForTextContentType:(id)type
{
  typeCopy = type;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  if (AFTextContentTypeIsInPhoneSet(typeCopy))
  {
    v5 = MEMORY[0x1E695C330];
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E698E0D0]])
  {
    v5 = MEMORY[0x1E695C208];
  }

  else if ([typeCopy isEqualToString:*MEMORY[0x1E698E1A0]])
  {
    v5 = MEMORY[0x1E695C418];
  }

  else
  {
    if (!AFTextContentTypeIsInAddressSet(typeCopy))
    {
      goto LABEL_10;
    }

    v5 = MEMORY[0x1E695C360];
  }

  [v4 addObject:*v5];
LABEL_10:
  if ([v4 count])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)meCardViewControllerForTextContentType:(id)type
{
  v4 = MEMORY[0x1E695D148];
  typeCopy = type;
  v6 = [(AFUIContactsController *)self me];
  v7 = [v4 viewControllerForContact:v6];

  v8 = [(AFUIContactsController *)self contactsKeysForTextContentType:typeCopy];

  [v7 setDisplayedPropertyKeys:v8];
  [v7 setAllowsEditing:0];
  [v7 setDelegate:self];
  [v7 setModalPresentationStyle:2];
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];

  return v9;
}

- (id)_customInfoForContactProperty:(id)property useMultilineFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  propertyCopy = property;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  contact = [propertyCopy contact];
  givenName = [contact givenName];

  if (givenName)
  {
    givenName2 = [contact givenName];
    [dictionary setObject:givenName2 forKey:*MEMORY[0x1E698E0E8]];
  }

  middleName = [contact middleName];

  if (middleName)
  {
    middleName2 = [contact middleName];
    [dictionary setObject:middleName2 forKey:*MEMORY[0x1E698E100]];
  }

  familyName = [contact familyName];

  if (familyName)
  {
    familyName2 = [contact familyName];
    [dictionary setObject:familyName2 forKey:*MEMORY[0x1E698E0D8]];
  }

  namePrefix = [contact namePrefix];

  if (namePrefix)
  {
    namePrefix2 = [contact namePrefix];
    [dictionary setObject:namePrefix2 forKey:*MEMORY[0x1E698E110]];
  }

  nameSuffix = [contact nameSuffix];

  if (nameSuffix)
  {
    nameSuffix2 = [contact nameSuffix];
    [dictionary setObject:nameSuffix2 forKey:*MEMORY[0x1E698E118]];
  }

  if ([contact isKeyAvailable:@"nickname"])
  {
    nickname = [contact nickname];

    if (nickname)
    {
      nickname2 = [contact nickname];
      [dictionary setObject:nickname2 forKey:*MEMORY[0x1E698E128]];
    }
  }

  if ([contact isKeyAvailable:@"jobTitle"])
  {
    jobTitle = [contact jobTitle];

    if (jobTitle)
    {
      jobTitle2 = [contact jobTitle];
      [dictionary setObject:jobTitle2 forKey:*MEMORY[0x1E698E0F0]];
    }
  }

  if ([contact isKeyAvailable:@"organizationName"])
  {
    organizationName = [contact organizationName];

    if (organizationName)
    {
      organizationName2 = [contact organizationName];
      [dictionary setObject:organizationName2 forKey:*MEMORY[0x1E698E140]];
    }
  }

  v25 = [MEMORY[0x1E695CD80] stringFromContact:contact style:0];
  if ([v25 length])
  {
    [dictionary setObject:v25 forKey:*MEMORY[0x1E698E108]];
  }

  v26 = [propertyCopy key];
  if ([v26 isEqualToString:*MEMORY[0x1E695C240]])
  {
    goto LABEL_37;
  }

  v27 = [propertyCopy key];
  if ([v27 isEqualToString:*MEMORY[0x1E695C2F0]])
  {
LABEL_36:

LABEL_37:
LABEL_38:
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"didPickContactNamePropertyKey"];
    v34 = dictionary;
    goto LABEL_39;
  }

  v28 = [propertyCopy key];
  if ([v28 isEqualToString:*MEMORY[0x1E695C230]])
  {
LABEL_35:

    goto LABEL_36;
  }

  v29 = [propertyCopy key];
  if ([v29 isEqualToString:*MEMORY[0x1E695C300]])
  {
LABEL_34:

    goto LABEL_35;
  }

  v72 = fallbackCopy;
  v30 = [propertyCopy key];
  if ([v30 isEqualToString:*MEMORY[0x1E695C308]])
  {
LABEL_33:

    goto LABEL_34;
  }

  v71 = v30;
  v31 = [propertyCopy key];
  if ([v31 isEqualToString:*MEMORY[0x1E695C310]])
  {
LABEL_32:

    v30 = v71;
    goto LABEL_33;
  }

  v70 = v31;
  v32 = [propertyCopy key];
  if ([v32 isEqualToString:*MEMORY[0x1E695C2C8]])
  {
LABEL_31:

    v31 = v70;
    goto LABEL_32;
  }

  v69 = v32;
  v33 = [propertyCopy key];
  if ([v33 isEqualToString:*MEMORY[0x1E695C328]])
  {

    v32 = v69;
    goto LABEL_31;
  }

  v67 = [propertyCopy key];
  v68 = [v67 isEqualToString:@"displayName"];

  if (v68)
  {
    goto LABEL_38;
  }

  value = [propertyCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [dictionary setObject:value forKey:*MEMORY[0x1E698E130]];
    v37 = [propertyCopy key];
    v38 = [v37 isEqualToString:*MEMORY[0x1E695C208]];

    if (v38)
    {
      [dictionary setObject:value forKey:*MEMORY[0x1E698E0D0]];
    }

    v39 = [propertyCopy key];
    v40 = [v39 isEqualToString:*MEMORY[0x1E695C418]];

    if (v40)
    {
      [dictionary setObject:value forKey:*MEMORY[0x1E698E1A0]];
    }

    v34 = dictionary;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [(AFUIContactsController *)self formattedDateForComponents:value];
      [dictionary setObject:v41 forKey:*MEMORY[0x1E698E130]];
      v42 = [propertyCopy key];
      v43 = [v42 isEqualToString:*MEMORY[0x1E695C1D0]];

      if (v43)
      {
        [dictionary setObject:v41 forKey:*MEMORY[0x1E698E048]];
      }

      v34 = dictionary;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = value;
          street = [v48 street];

          if (street)
          {
            street2 = [v48 street];
            [dictionary setObject:street2 forKey:*MEMORY[0x1E698E158]];
          }

          city = [v48 city];

          if (city)
          {
            city2 = [v48 city];
            [dictionary setObject:city2 forKey:*MEMORY[0x1E698E030]];
          }

          state = [v48 state];

          if (state)
          {
            state2 = [v48 state];
            [dictionary setObject:state2 forKey:*MEMORY[0x1E698E040]];
          }

          subLocality = [v48 subLocality];

          if (subLocality)
          {
            subLocality2 = [v48 subLocality];
            [dictionary setObject:subLocality2 forKey:*MEMORY[0x1E698E168]];
          }

          postalCode = [v48 postalCode];

          if (postalCode)
          {
            postalCode2 = [v48 postalCode];
            [dictionary setObject:postalCode2 forKey:*MEMORY[0x1E698E150]];
          }

          country = [v48 country];

          if (country)
          {
            country2 = [v48 country];
            [dictionary setObject:country2 forKey:*MEMORY[0x1E698E078]];
          }

          if (v72)
          {
            [MEMORY[0x1E695CF68] stringFromPostalAddress:v48 style:0];
          }

          else
          {
            [MEMORY[0x1E695CF68] singleLineStringFromPostalAddress:v48 addCountryName:0];
          }
          v66 = ;
          [dictionary setObject:v66 forKey:*MEMORY[0x1E698E0E0]];
          [dictionary setObject:v66 forKey:*MEMORY[0x1E698E130]];

          v34 = dictionary;
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_82;
      }

      v41 = value;
      stringValue = [v41 stringValue];
      [dictionary setObject:stringValue forKey:*MEMORY[0x1E698E198]];

      digitsRemovingDialingCode = [v41 digitsRemovingDialingCode];
      if (digitsRemovingDialingCode)
      {
        [dictionary setObject:digitsRemovingDialingCode forKey:*MEMORY[0x1E698E190]];
        if ([digitsRemovingDialingCode length] == 10)
        {
          v46 = [digitsRemovingDialingCode substringToIndex:3];
          [dictionary setObject:v46 forKey:*MEMORY[0x1E698E170]];

          v47 = [digitsRemovingDialingCode substringFromIndex:3];
          [dictionary setObject:v47 forKey:*MEMORY[0x1E698E188]];
        }

        else if ([digitsRemovingDialingCode length] == 7)
        {
          [dictionary setObject:digitsRemovingDialingCode forKey:*MEMORY[0x1E698E188]];
        }
      }

      v61 = MEMORY[0x1E695CF50];
      countryCode = [v41 countryCode];
      if (countryCode)
      {
        v63 = [v61 dialingCodeForISOCountryCode:countryCode];
      }

      else
      {
        defaultCountryCode = [MEMORY[0x1E695CF50] defaultCountryCode];
        v63 = [v61 dialingCodeForISOCountryCode:defaultCountryCode];
      }

      if (v63)
      {
        [dictionary setObject:v63 forKey:*MEMORY[0x1E698E178]];
      }

      stringValue2 = [v41 stringValue];
      [dictionary setObject:stringValue2 forKey:*MEMORY[0x1E698E130]];

      v34 = dictionary;
    }
  }

LABEL_82:

LABEL_39:

  return v34;
}

- (AFUIContactPropertyPickerDelegate)contactPropertyPickerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contactPropertyPickerDelegate);

  return WeakRetained;
}

@end