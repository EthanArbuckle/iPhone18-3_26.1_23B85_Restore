@interface AFUIContactsController
- (AFUIContactPropertyPickerDelegate)contactPropertyPickerDelegate;
- (AFUIContactsController)init;
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (id)_customInfoForContactProperty:(id)a3 useMultilineFallback:(BOOL)a4;
- (id)_meContactInfosForTextContentType:(id)a3 meContact:(id)a4;
- (id)_meDisplayName;
- (id)allContactsViewControllerForTextContentType:(id)a3;
- (id)contactsKeysForTextContentType:(id)a3;
- (id)formattedDateForComponents:(id)a3;
- (id)meCardViewControllerForTextContentType:(id)a3;
- (id)meContactInfosForTextContentType:(id)a3;
- (void)_loadMe;
- (void)addMeDisplayNameObserverAndGetInitialValue:(id)a3;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)copyAddressContactInfoFromContactInfo:(id)a3 toContactInfo:(id)a4;
- (void)copyPhoneContactInfoFromContactInfo:(id)a3 toContactInfo:(id)a4;
- (void)removeMeDisplayNameObserver:(id)a3;
- (void)unifyPhoneNumberAndAddressDataAcrossContactInfos:(id)a3 withTextContentType:(id)a4;
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

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__loadMe name:*MEMORY[0x1E695C3E0] object:0];

    [(AFUIContactsController *)v2 _loadMe];
  }

  return v2;
}

- (void)addMeDisplayNameObserverAndGetInitialValue:(id)a3
{
  v6 = a3;
  v4 = [(AFUIContactsController *)self meDisplayNameObservers];
  [v4 addObject:v6];

  v5 = [(AFUIContactsController *)self _meDisplayName];
  if (v5)
  {
    [v6 meDisplayNameChanged:v5];
  }
}

- (void)removeMeDisplayNameObserver:(id)a3
{
  v4 = a3;
  v5 = [(AFUIContactsController *)self meDisplayNameObservers];
  [v5 removeObject:v4];
}

- (id)allContactsViewControllerForTextContentType:(id)a3
{
  v4 = MEMORY[0x1E695D120];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(AFUIContactsController *)self contactsKeysForTextContentType:v5];
  [v6 setDisplayedPropertyKeys:v7];

  [v6 setDelegate:self];
  [v6 setModalPresentationStyle:2];
  LOBYTE(v7) = AFTextContentTypeIsInNameSet(v5);

  if ((v7 & 1) != 0 || self->_alwaysAllowsNamePicking) && (objc_opt_respondsToSelector())
  {
    [v6 setValue:MEMORY[0x1E695E118] forKey:@"allowsNamePicking"];
  }

  return v6;
}

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v5 = a4;
  v6 = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  v8 = -[AFUIContactsController _customInfoForContactProperty:useMultilineFallback:](self, "_customInfoForContactProperty:useMultilineFallback:", v5, [v6 isSingleLineDocument] ^ 1);

  v7 = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  [v7 userSelectedContactProperties:v8];
}

- (void)contactPickerDidCancel:(id)a3
{
  v3 = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  [v3 contactPickerDidCancel];
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  v9 = -[AFUIContactsController _customInfoForContactProperty:useMultilineFallback:](self, "_customInfoForContactProperty:useMultilineFallback:", v6, [v8 isSingleLineDocument] ^ 1);

  v10 = [(AFUIContactsController *)self contactPropertyPickerDelegate];
  [v10 userSelectedContactProperties:v9];

  v11 = [v7 navigationController];

  [v11 dismissViewControllerAnimated:1 completion:0];
  return 0;
}

- (void)_loadMe
{
  v17[15] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v17[0] = v3;
  v4 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v5 = *MEMORY[0x1E695C208];
  v17[1] = v4;
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

  v13 = [(AFUIContactsController *)self contactStore];
  v16 = 0;
  v14 = [v13 _ios_meContactWithKeysToFetch:v12 error:&v16];
  [(AFUIContactsController *)self setMe:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_meContactInfosForTextContentType:(id)a3 meContact:(id)a4
{
  v169 = *MEMORY[0x1E69E9840];
  v131 = a3;
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v7 = [v5 emailAddresses];
  v8 = [v7 countByEnumeratingWithState:&v159 objects:v168 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v159 + 1) + 8 * i);
        v13 = MEMORY[0x1E695CEE0];
        v14 = [v12 label];
        v15 = [v13 localizedStringForLabel:v14];
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

        v21 = [v12 value];
        [(AFUIContactInfo *)v20 setEmailString:v21];

LABEL_12:
      }

      v9 = [v7 countByEnumeratingWithState:&v159 objects:v168 count:16];
    }

    while (v9);
  }

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v22 = [v5 urlAddresses];
  v23 = [v22 countByEnumeratingWithState:&v155 objects:v167 count:16];
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
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v155 + 1) + 8 * j);
      v28 = MEMORY[0x1E695CEE0];
      v29 = [v27 label];
      v30 = [v28 localizedStringForLabel:v29];
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

      v36 = [v27 value];
      [(AFUIContactInfo *)v35 setUrlString:v36];

LABEL_25:
    }

    v24 = [v22 countByEnumeratingWithState:&v155 objects:v167 count:16];
  }

  while (v24);
LABEL_27:

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = [v5 phoneNumbers];
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
      v42 = [v40 label];
      v43 = [v41 localizedStringForLabel:v42];
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
        v49 = [v40 value];
        v50 = [v49 stringValue];
        [(AFUIContactInfo *)v48 setPhoneString:v50];

        v51 = [v40 value];
        v52 = [v51 digitsRemovingDialingCode];

        if (v52)
        {
          [(AFUIContactInfo *)v48 setPhoneNationalNumberString:v52];
          if ([v52 length] == 10)
          {
            v53 = [v52 substringToIndex:3];
            [(AFUIContactInfo *)v48 setPhoneAreaCodeString:v53];

            v54 = [v52 substringFromIndex:3];
            [(AFUIContactInfo *)v48 setPhoneLocalNumberString:v54];
          }

          else if ([v52 length] == 7)
          {
            [(AFUIContactInfo *)v48 setPhoneAreaCodeString:&stru_1F4E9A028];
            [(AFUIContactInfo *)v48 setPhoneLocalNumberString:v52];
          }

          [(AFUIContactInfo *)v48 setPhoneExtensionString:&stru_1F4E9A028];
        }

        v55 = *(v38 + 3920);
        v56 = [v40 value];
        v57 = [v56 countryCode];
        v58 = v38;
        v59 = v57;
        if (v57)
        {
          v60 = [v55 dialingCodeForISOCountryCode:v57];
        }

        else
        {
          [*(v58 + 3920) defaultCountryCode];
          v133 = v46;
          v61 = v5;
          v62 = v6;
          v64 = v63 = v37;
          v60 = [v55 dialingCodeForISOCountryCode:v64];

          v37 = v63;
          v6 = v62;
          v5 = v61;
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
  v134 = [v5 postalAddresses];
  v65 = [v134 countByEnumeratingWithState:&v147 objects:v165 count:16];
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
        objc_enumerationMutation(v134);
      }

      v68 = *(*(&v147 + 1) + 8 * v67);
      v69 = MEMORY[0x1E695CEE0];
      v70 = [v68 label];
      v71 = [v69 localizedStringForLabel:v70];
      v72 = v71;
      v73 = &stru_1F4E9A028;
      if (v71)
      {
        v73 = v71;
      }

      v74 = v73;

      v75 = [v68 value];
      v76 = [v75 street];
      v77 = [v76 componentsSeparatedByString:@"\n"];

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

        v82 = [v68 value];
        v83 = [v82 subLocality];
        [(AFUIContactInfo *)v79 setSublocalityString:v83];

        v84 = [v68 value];
        v85 = [v84 city];
        [(AFUIContactInfo *)v79 setCityString:v85];

        v86 = [v68 value];
        v87 = [v86 state];
        [(AFUIContactInfo *)v79 setStateString:v87];

        v88 = [v68 value];
        v89 = [v88 postalCode];
        [(AFUIContactInfo *)v79 setPostalCodeString:v89];

        v90 = [v68 value];
        v91 = [v90 country];
        [(AFUIContactInfo *)v79 setCountryString:v91];

        v92 = MEMORY[0x1E695CF68];
        v93 = [v68 value];
        v94 = [v92 singleLineStringFromPostalAddress:v93 addCountryName:0];

        [(AFUIContactInfo *)v79 setFullStreetAddressString:v94];
      }

      if (v66 != ++v67)
      {
        continue;
      }

      break;
    }

    v66 = [v134 countByEnumeratingWithState:&v147 objects:v165 count:16];
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_68:

  v95 = [v6 allKeys];
  v96 = [v95 count];

  if (!v96)
  {
    v97 = objc_alloc_init(AFUIContactInfo);
    [v6 setObject:v97 forKey:&stru_1F4E9A028];
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v138 = [v6 allKeys];
  v98 = [v138 countByEnumeratingWithState:&v143 objects:v164 count:16];
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
          objc_enumerationMutation(v138);
        }

        v102 = [v6 objectForKey:*(*(&v143 + 1) + 8 * k)];
        v103 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];
        [v102 setNameString:v103];

        v104 = [v5 givenName];
        [v102 setGivenNameString:v104];

        v105 = [v5 familyName];
        [v102 setFamilyNameString:v105];

        v106 = [v5 middleName];
        [v102 setMiddleNameString:v106];

        v107 = [v5 namePrefix];
        [v102 setNamePrefixString:v107];

        v108 = [v5 nameSuffix];
        [v102 setNameSuffixString:v108];

        v109 = [v5 nickname];
        [v102 setNicknameString:v109];

        v110 = [v5 jobTitle];
        [v102 setJobTitleString:v110];

        v111 = [v5 organizationName];
        [v102 setOrganizationNameString:v111];

        v112 = [v5 birthday];
        v113 = [(AFUIContactsController *)self formattedDateForComponents:v112];
        [v102 setBirthdateString:v113];

        v114 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v112, "day")}];
        v115 = [v114 stringValue];
        [v102 setBirthdateDayString:v115];

        v116 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v112, "month")}];
        v117 = [v116 stringValue];
        [v102 setBirthdateMonthString:v117];

        v118 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v112, "year")}];
        v119 = [v118 stringValue];
        [v102 setBirthdateYearString:v119];
      }

      v99 = [v138 countByEnumeratingWithState:&v143 objects:v164 count:16];
    }

    while (v99);
  }

  [(AFUIContactsController *)self unifyPhoneNumberAndAddressDataAcrossContactInfos:v6 withTextContentType:v131];
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

  v128 = [v6 allValues];
  [v120 addObjectsFromArray:v128];

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

- (id)meContactInfosForTextContentType:(id)a3
{
  v4 = a3;
  v5 = [(AFUIContactsController *)self me];
  v6 = [(AFUIContactsController *)self _meContactInfosForTextContentType:v4 meContact:v5];

  return v6;
}

- (id)formattedDateForComponents:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 dateFromComponents:v4];

  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v8 = [MEMORY[0x1E695DF58] currentLocale];
  [v7 setLocale:v8];

  [v7 setLocalizedDateFormatFromTemplate:@"ddMMyyyy"];
  v9 = [v7 stringFromDate:v6];

  return v9;
}

- (void)unifyPhoneNumberAndAddressDataAcrossContactInfos:(id)a3 withTextContentType:(id)a4
{
  v68 = a3;
  v5 = a4;
  v6 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CB60]];
  v7 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CB90]];
  v8 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CB88]];
  v9 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CBC0]];
  v10 = [MEMORY[0x1E695CEE0] localizedStringForLabel:*MEMORY[0x1E695CBD0]];
  v11 = [v68 objectForKey:v6];
  v12 = v68;
  if (v11)
  {
    v13 = [v68 objectForKey:v6];
    v14 = [v13 phoneString];
    if (v14)
    {
      v15 = v14;
LABEL_23:

      v12 = v68;
      goto LABEL_24;
    }

    v16 = [v68 objectForKey:v6];
    v17 = [v16 fullStreetAddressString];

    v12 = v68;
    if (v17)
    {
      v11 = [v68 objectForKey:v7];
      v13 = [v68 objectForKey:v8];
      v15 = [v68 objectForKey:v9];
      v66 = [v68 objectForKey:v6];
      if (v11)
      {
        v18 = [v11 fullStreetAddressString];

        if (!v18)
        {
          [(AFUIContactsController *)self copyAddressContactInfoFromContactInfo:v66 toContactInfo:v11];
        }

        v19 = [v11 emailString];

        if (!v19)
        {
          v20 = [v66 emailString];
          [v11 setEmailString:v20];
        }
      }

      if (v13)
      {
        v21 = [v13 fullStreetAddressString];

        if (!v21)
        {
          [(AFUIContactsController *)self copyAddressContactInfoFromContactInfo:v66 toContactInfo:v13];
        }

        v22 = [v13 emailString];

        if (!v22)
        {
          v23 = [v66 emailString];
          [v13 setEmailString:v23];
        }
      }

      if (v15)
      {
        v24 = [v15 fullStreetAddressString];

        if (!v24)
        {
          [(AFUIContactsController *)self copyAddressContactInfoFromContactInfo:v66 toContactInfo:v15];
        }

        v25 = [v15 emailString];

        if (!v25)
        {
          v26 = [v66 emailString];
          [v15 setEmailString:v26];
        }
      }

      if (AFTextContentTypeIsInPhoneSet(v5))
      {
        [v68 removeObjectForKey:v6];
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v27 = [v12 objectForKey:v6];
  if (v27)
  {
    v28 = v27;
    v29 = [v68 objectForKey:v6];
    v30 = [v29 phoneString];

    if (!v30)
    {
      v35 = [v68 objectForKey:v7];
      if (!v35)
      {
        goto LABEL_41;
      }

      v36 = v35;
      v37 = [v68 objectForKey:v7];
      v38 = [v37 phoneString];

      if (v38)
      {
        v39 = [v68 objectForKey:v7];
        v40 = [v68 objectForKey:v6];
        [(AFUIContactsController *)self copyPhoneContactInfoFromContactInfo:v39 toContactInfo:v40];

        v41 = AFTextContentTypeIsInAddressSet(v5);
        v42 = v7;
        if ((v41 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_41:
        v52 = [v68 objectForKey:v8];
        if (!v52)
        {
          goto LABEL_45;
        }

        v53 = v52;
        v54 = [v68 objectForKey:v8];
        v55 = [v54 phoneString];

        if (v55)
        {
          v56 = [v68 objectForKey:v8];
          v57 = [v68 objectForKey:v6];
          [(AFUIContactsController *)self copyPhoneContactInfoFromContactInfo:v56 toContactInfo:v57];

          v58 = AFTextContentTypeIsInAddressSet(v5);
          v42 = v8;
          if ((v58 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_45:
          v59 = [v68 objectForKey:v9];
          if (!v59)
          {
            goto LABEL_26;
          }

          v60 = v59;
          v61 = [v68 objectForKey:v9];
          v62 = [v61 phoneString];

          if (!v62)
          {
            goto LABEL_26;
          }

          v63 = [v68 objectForKey:v9];
          v64 = [v68 objectForKey:v6];
          [(AFUIContactsController *)self copyPhoneContactInfoFromContactInfo:v63 toContactInfo:v64];

          v65 = AFTextContentTypeIsInAddressSet(v5);
          v42 = v9;
          if (!v65)
          {
            goto LABEL_26;
          }
        }
      }

      [v68 removeObjectForKey:v42];
    }
  }

LABEL_26:
  v31 = [v68 objectForKey:v6];
  if (v31)
  {
    v32 = v31;
    v33 = [v68 objectForKey:v6];
    v34 = [v33 urlString];
    if (v34)
    {
    }

    else
    {
      v43 = [v68 objectForKey:v6];
      v44 = [v43 fullStreetAddressString];

      if (v44)
      {
        v45 = [v68 objectForKey:v10];
        if (v45)
        {
          v46 = v45;
          v47 = [v68 objectForKey:v10];
          v48 = [v47 urlString];

          if (v48)
          {
            v49 = [v68 objectForKey:v10];
            v50 = [v49 urlString];
            v51 = [v68 objectForKey:v6];
            [v51 setUrlString:v50];

            if ([v5 isEqualToString:*MEMORY[0x1E698E1A0]])
            {
              [v68 removeObjectForKey:v10];
            }
          }
        }
      }
    }
  }
}

- (void)copyAddressContactInfoFromContactInfo:(id)a3 toContactInfo:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [v16 fullStreetAddressString];
  [v5 setFullStreetAddressString:v6];

  v7 = [v16 streetAddressLine1String];

  if (v7)
  {
    v8 = [v16 streetAddressLine1String];
    [v5 setStreetAddressLine1String:v8];
  }

  v9 = [v16 streetAddressLine2String];

  if (v9)
  {
    v10 = [v16 streetAddressLine2String];
    [v5 setStreetAddressLine2String:v10];
  }

  v11 = [v16 sublocalityString];
  [v5 setSublocalityString:v11];

  v12 = [v16 cityString];
  [v5 setCityString:v12];

  v13 = [v16 stateString];
  [v5 setStateString:v13];

  v14 = [v16 postalCodeString];
  [v5 setPostalCodeString:v14];

  v15 = [v16 countryString];
  [v5 setCountryString:v15];
}

- (void)copyPhoneContactInfoFromContactInfo:(id)a3 toContactInfo:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [v14 phoneString];
  [v5 setPhoneString:v6];

  v7 = [v14 phoneNationalNumberString];

  if (v7)
  {
    v8 = [v14 phoneNationalNumberString];
    [v5 setPhoneNationalNumberString:v8];

    v9 = [v14 phoneAreaCodeString];
    [v5 setPhoneAreaCodeString:v9];

    v10 = [v14 phoneLocalNumberString];
    [v5 setPhoneLocalNumberString:v10];

    v11 = [v14 phoneExtensionString];
    [v5 setPhoneExtensionString:v11];
  }

  v12 = [v14 phoneCountryCodeString];

  if (v12)
  {
    v13 = [v14 phoneCountryCodeString];
    [v5 setPhoneCountryCodeString:v13];
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

- (id)contactsKeysForTextContentType:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  if (AFTextContentTypeIsInPhoneSet(v3))
  {
    v5 = MEMORY[0x1E695C330];
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E698E0D0]])
  {
    v5 = MEMORY[0x1E695C208];
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E698E1A0]])
  {
    v5 = MEMORY[0x1E695C418];
  }

  else
  {
    if (!AFTextContentTypeIsInAddressSet(v3))
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

- (id)meCardViewControllerForTextContentType:(id)a3
{
  v4 = MEMORY[0x1E695D148];
  v5 = a3;
  v6 = [(AFUIContactsController *)self me];
  v7 = [v4 viewControllerForContact:v6];

  v8 = [(AFUIContactsController *)self contactsKeysForTextContentType:v5];

  [v7 setDisplayedPropertyKeys:v8];
  [v7 setAllowsEditing:0];
  [v7 setDelegate:self];
  [v7 setModalPresentationStyle:2];
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];

  return v9;
}

- (id)_customInfoForContactProperty:(id)a3 useMultilineFallback:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [v6 contact];
  v9 = [v8 givenName];

  if (v9)
  {
    v10 = [v8 givenName];
    [v7 setObject:v10 forKey:*MEMORY[0x1E698E0E8]];
  }

  v11 = [v8 middleName];

  if (v11)
  {
    v12 = [v8 middleName];
    [v7 setObject:v12 forKey:*MEMORY[0x1E698E100]];
  }

  v13 = [v8 familyName];

  if (v13)
  {
    v14 = [v8 familyName];
    [v7 setObject:v14 forKey:*MEMORY[0x1E698E0D8]];
  }

  v15 = [v8 namePrefix];

  if (v15)
  {
    v16 = [v8 namePrefix];
    [v7 setObject:v16 forKey:*MEMORY[0x1E698E110]];
  }

  v17 = [v8 nameSuffix];

  if (v17)
  {
    v18 = [v8 nameSuffix];
    [v7 setObject:v18 forKey:*MEMORY[0x1E698E118]];
  }

  if ([v8 isKeyAvailable:@"nickname"])
  {
    v19 = [v8 nickname];

    if (v19)
    {
      v20 = [v8 nickname];
      [v7 setObject:v20 forKey:*MEMORY[0x1E698E128]];
    }
  }

  if ([v8 isKeyAvailable:@"jobTitle"])
  {
    v21 = [v8 jobTitle];

    if (v21)
    {
      v22 = [v8 jobTitle];
      [v7 setObject:v22 forKey:*MEMORY[0x1E698E0F0]];
    }
  }

  if ([v8 isKeyAvailable:@"organizationName"])
  {
    v23 = [v8 organizationName];

    if (v23)
    {
      v24 = [v8 organizationName];
      [v7 setObject:v24 forKey:*MEMORY[0x1E698E140]];
    }
  }

  v25 = [MEMORY[0x1E695CD80] stringFromContact:v8 style:0];
  if ([v25 length])
  {
    [v7 setObject:v25 forKey:*MEMORY[0x1E698E108]];
  }

  v26 = [v6 key];
  if ([v26 isEqualToString:*MEMORY[0x1E695C240]])
  {
    goto LABEL_37;
  }

  v27 = [v6 key];
  if ([v27 isEqualToString:*MEMORY[0x1E695C2F0]])
  {
LABEL_36:

LABEL_37:
LABEL_38:
    [v7 setObject:MEMORY[0x1E695E118] forKey:@"didPickContactNamePropertyKey"];
    v34 = v7;
    goto LABEL_39;
  }

  v28 = [v6 key];
  if ([v28 isEqualToString:*MEMORY[0x1E695C230]])
  {
LABEL_35:

    goto LABEL_36;
  }

  v29 = [v6 key];
  if ([v29 isEqualToString:*MEMORY[0x1E695C300]])
  {
LABEL_34:

    goto LABEL_35;
  }

  v72 = v4;
  v30 = [v6 key];
  if ([v30 isEqualToString:*MEMORY[0x1E695C308]])
  {
LABEL_33:

    goto LABEL_34;
  }

  v71 = v30;
  v31 = [v6 key];
  if ([v31 isEqualToString:*MEMORY[0x1E695C310]])
  {
LABEL_32:

    v30 = v71;
    goto LABEL_33;
  }

  v70 = v31;
  v32 = [v6 key];
  if ([v32 isEqualToString:*MEMORY[0x1E695C2C8]])
  {
LABEL_31:

    v31 = v70;
    goto LABEL_32;
  }

  v69 = v32;
  v33 = [v6 key];
  if ([v33 isEqualToString:*MEMORY[0x1E695C328]])
  {

    v32 = v69;
    goto LABEL_31;
  }

  v67 = [v6 key];
  v68 = [v67 isEqualToString:@"displayName"];

  if (v68)
  {
    goto LABEL_38;
  }

  v36 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setObject:v36 forKey:*MEMORY[0x1E698E130]];
    v37 = [v6 key];
    v38 = [v37 isEqualToString:*MEMORY[0x1E695C208]];

    if (v38)
    {
      [v7 setObject:v36 forKey:*MEMORY[0x1E698E0D0]];
    }

    v39 = [v6 key];
    v40 = [v39 isEqualToString:*MEMORY[0x1E695C418]];

    if (v40)
    {
      [v7 setObject:v36 forKey:*MEMORY[0x1E698E1A0]];
    }

    v34 = v7;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [(AFUIContactsController *)self formattedDateForComponents:v36];
      [v7 setObject:v41 forKey:*MEMORY[0x1E698E130]];
      v42 = [v6 key];
      v43 = [v42 isEqualToString:*MEMORY[0x1E695C1D0]];

      if (v43)
      {
        [v7 setObject:v41 forKey:*MEMORY[0x1E698E048]];
      }

      v34 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v48 = v36;
          v49 = [v48 street];

          if (v49)
          {
            v50 = [v48 street];
            [v7 setObject:v50 forKey:*MEMORY[0x1E698E158]];
          }

          v51 = [v48 city];

          if (v51)
          {
            v52 = [v48 city];
            [v7 setObject:v52 forKey:*MEMORY[0x1E698E030]];
          }

          v53 = [v48 state];

          if (v53)
          {
            v54 = [v48 state];
            [v7 setObject:v54 forKey:*MEMORY[0x1E698E040]];
          }

          v55 = [v48 subLocality];

          if (v55)
          {
            v56 = [v48 subLocality];
            [v7 setObject:v56 forKey:*MEMORY[0x1E698E168]];
          }

          v57 = [v48 postalCode];

          if (v57)
          {
            v58 = [v48 postalCode];
            [v7 setObject:v58 forKey:*MEMORY[0x1E698E150]];
          }

          v59 = [v48 country];

          if (v59)
          {
            v60 = [v48 country];
            [v7 setObject:v60 forKey:*MEMORY[0x1E698E078]];
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
          [v7 setObject:v66 forKey:*MEMORY[0x1E698E0E0]];
          [v7 setObject:v66 forKey:*MEMORY[0x1E698E130]];

          v34 = v7;
        }

        else
        {
          v34 = 0;
        }

        goto LABEL_82;
      }

      v41 = v36;
      v44 = [v41 stringValue];
      [v7 setObject:v44 forKey:*MEMORY[0x1E698E198]];

      v45 = [v41 digitsRemovingDialingCode];
      if (v45)
      {
        [v7 setObject:v45 forKey:*MEMORY[0x1E698E190]];
        if ([v45 length] == 10)
        {
          v46 = [v45 substringToIndex:3];
          [v7 setObject:v46 forKey:*MEMORY[0x1E698E170]];

          v47 = [v45 substringFromIndex:3];
          [v7 setObject:v47 forKey:*MEMORY[0x1E698E188]];
        }

        else if ([v45 length] == 7)
        {
          [v7 setObject:v45 forKey:*MEMORY[0x1E698E188]];
        }
      }

      v61 = MEMORY[0x1E695CF50];
      v62 = [v41 countryCode];
      if (v62)
      {
        v63 = [v61 dialingCodeForISOCountryCode:v62];
      }

      else
      {
        v64 = [MEMORY[0x1E695CF50] defaultCountryCode];
        v63 = [v61 dialingCodeForISOCountryCode:v64];
      }

      if (v63)
      {
        [v7 setObject:v63 forKey:*MEMORY[0x1E698E178]];
      }

      v65 = [v41 stringValue];
      [v7 setObject:v65 forKey:*MEMORY[0x1E698E130]];

      v34 = v7;
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