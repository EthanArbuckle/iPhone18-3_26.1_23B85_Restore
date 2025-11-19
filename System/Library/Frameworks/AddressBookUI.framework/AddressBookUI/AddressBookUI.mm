id PostalAddressByAddingCountry(void *a1)
{
  v1 = a1;
  v2 = [a1 ISOCountryCode];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    v2 = [objc_msgSend(MEMORY[0x277CBDAD0] "sharedDefaults")];
  }

  v3 = [MEMORY[0x277CBDB80] supportedCountries];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __PostalAddressByAddingCountry_block_invoke;
  v8[3] = &unk_278A06490;
  v8[4] = v2;
  v4 = [v3 _cn_firstObjectPassingTest:v8];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 mutableCopy];
    [v6 setCountry:{objc_msgSend(v5, "name")}];
    return [v6 copy];
  }

  return v1;
}

uint64_t __PostalAddressByAddingCountry_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isoCountryCode];

  return [v2 isEqual:v3];
}

uint64_t StringByRemovingConsecutiveNewLines(void *a1)
{
  v1 = [objc_msgSend(a1 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")), "_cn_filter:", &__block_literal_global}];

  return [v1 componentsJoinedByString:@"\n"];
}

NSString *__cdecl ABCreateStringWithAddressDictionary(NSDictionary *address, BOOL addCountryName)
{
  if (address)
  {
    v3 = addCountryName;
    v5 = [(NSDictionary *)address objectForKeyedSubscript:@"ABFormattedAddress"];
    if (!v5)
    {
      v6 = [MEMORY[0x277CBDB78] postalAddressWithAddressBookDictionaryRepresentation:address];
      if ((*(*MEMORY[0x277CFBD30] + 16))(*MEMORY[0x277CFBD30], [v6 country]))
      {
        v7 = !v3;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v6 = PostalAddressByAddingCountry(v6);
      }

      v8 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v6 style:0];
      v9 = [v8 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];
      v5 = [objc_msgSend(objc_msgSend(v9 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")), "_cn_filter:", &__block_literal_global), "componentsJoinedByString:", @"\n"}];
    }
  }

  else
  {
    v5 = &stru_2849AB6B0;
  }

  return v5;
}

uint64_t ABAddressBookUIBundle()
{
  if (ABAddressBookUIBundle_onceToken != -1)
  {
    ABAddressBookUIBundle_cold_1();
  }

  return ABAddressBookUIBundle___bundle;
}

id __ABAddressBookUIBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AddressBookUI"];
  ABAddressBookUIBundle___bundle = result;
  return result;
}

uint64_t ABAddressBookBundle()
{
  if (ABAddressBookBundle_onceToken != -1)
  {
    ABAddressBookBundle_cold_1();
  }

  return ABAddressBookBundle___bundle;
}

id __ABAddressBookBundle_block_invoke()
{
  result = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AddressBook"];
  ABAddressBookBundle___bundle = result;
  return result;
}

uint64_t ABUIOldAppsUseModernUI()
{
  if (ABUIOldAppsUseModernUI_onceToken != -1)
  {
    ABUIOldAppsUseModernUI_cold_1();
  }

  if (ABUIOldAppsUseModernUI_enabled)
  {
    return 1;
  }

  return dyld_program_sdk_at_least();
}

uint64_t __ABUIOldAppsUseModernUI_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"ABOldAppsUseModernUI", *MEMORY[0x277CBF008], &keyExistsAndHasValidFormat);
  if (result)
  {
    v1 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  ABUIOldAppsUseModernUI_enabled = v2;
  return result;
}

uint64_t ABUIAppIsOldFMF()
{
  v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  result = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (result)
  {
    return [v0 integerValue] == 0;
  }

  return result;
}

uint64_t ABUIShouldUseLegacyUI()
{
  if (!ABUIOldAppsUseModernUI())
  {
    return 1;
  }

  return ABUIAppIsOldFMF();
}

uint64_t ABAddressBookGetDefaultRotationContentSettings(uint64_t result)
{
  *result = 257;
  *(result + 2) = 1;
  *(result + 8) = 0x4038000000000000;
  return result;
}

void ABUIRoundToViewScale(void *a1)
{
  [objc_msgSend(a1 "_screen")];
  if (v1 == 0.0 && RoundToScale_onceToken != -1)
  {
    ABUIRoundToViewScale_cold_1();
  }
}

double ABUIPixelAlignedPoint(void *a1, double a2)
{
  [objc_msgSend(a1 "_screen")];
  if (v4 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      ABUIRoundToViewScale_cold_1();
    }

    v4 = *&RoundToScale___s;
  }

  v5 = v4 == 1.0;
  v6 = round(a2 * v4) / v4;
  v7 = round(a2);
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  [objc_msgSend(a1 "_screen")];
  if (v9 == 0.0 && RoundToScale_onceToken != -1)
  {
    ABUIRoundToViewScale_cold_1();
  }

  return v8;
}

double ABUIPixelAlignedSize(void *a1, double a2)
{
  [objc_msgSend(a1 "_screen")];
  if (v4 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      ABUIRoundToViewScale_cold_1();
    }

    v4 = *&RoundToScale___s;
  }

  v5 = v4 == 1.0;
  v6 = round(a2 * v4) / v4;
  v7 = round(a2);
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  [objc_msgSend(a1 "_screen")];
  if (v9 == 0.0 && RoundToScale_onceToken != -1)
  {
    ABUIRoundToViewScale_cold_1();
  }

  return v8;
}

double ABUIPixelAlignedRect(void *a1, double a2)
{
  [objc_msgSend(a1 "_screen")];
  if (v4 == 0.0)
  {
    if (RoundToScale_onceToken != -1)
    {
      ABUIRoundToViewScale_cold_1();
    }

    v4 = *&RoundToScale___s;
  }

  if (v4 == 1.0)
  {
    v5 = round(a2);
  }

  else
  {
    v5 = round(a2 * v4) / v4;
  }

  [objc_msgSend(a1 "_screen")];
  if (v6 == 0.0 && RoundToScale_onceToken != -1)
  {
    ABUIRoundToViewScale_cold_1();
  }

  [objc_msgSend(a1 "_screen")];
  if (v7 == 0.0 && RoundToScale_onceToken != -1)
  {
    ABUIRoundToViewScale_cold_1();
  }

  [objc_msgSend(a1 "_screen")];
  if (v8 == 0.0 && RoundToScale_onceToken != -1)
  {
    ABUIRoundToViewScale_cold_1();
  }

  return v5;
}

uint64_t ABUIShouldUseSiriLocalization()
{
  if (_useSiriLocalization != 1)
  {
    goto LABEL_5;
  }

  [MEMORY[0x277CCA8D8] mainBundle];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    NSLog(&cfstr_YouTriedToUseS.isa);
LABEL_5:
    v0 = 0;
    return v0 & 1;
  }

  v0 = _useSiriLocalization;
  return v0 & 1;
}

BOOL ABUIIsContacts()
{
  v0 = ABUIIsContacts_isContacts;
  if (ABUIIsContacts_isContacts == -1)
  {
    v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    ABUIIsContacts_isContacts = v0;
  }

  return v0 != 0;
}

BOOL ABUIIsMobilePhone()
{
  v0 = ABUIIsMobilePhone_isMobilePhone;
  if (ABUIIsMobilePhone_isMobilePhone == -1)
  {
    v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    ABUIIsMobilePhone_isMobilePhone = v0;
  }

  return v0 != 0;
}

BOOL ABUIIsFaceTime()
{
  v0 = ABUIIsFaceTime_isFaceTime;
  if (ABUIIsFaceTime_isFaceTime == -1)
  {
    v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    ABUIIsFaceTime_isFaceTime = v0;
  }

  return v0 != 0;
}

BOOL ABUIIsGameCenterFriendRequestExtension()
{
  v0 = ABUIIsGameCenterFriendRequestExtension_isGameCenter;
  if (ABUIIsGameCenterFriendRequestExtension_isGameCenter == -1)
  {
    v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    ABUIIsGameCenterFriendRequestExtension_isGameCenter = v0;
  }

  return v0 != 0;
}

BOOL ABUIIsFirstParty()
{
  v0 = ABUIIsFirstParty_isFirstParty;
  if (ABUIIsFirstParty_isFirstParty == -1)
  {
    v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    ABUIIsFirstParty_isFirstParty = v0;
  }

  return v0 != 0;
}

BOOL ABUIIsDDActionsService()
{
  v0 = ABUIIsDDActionsService_isDDActionsService;
  if (ABUIIsDDActionsService_isDDActionsService == -1)
  {
    v0 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    ABUIIsDDActionsService_isDDActionsService = v0;
  }

  return v0 != 0;
}

BOOL ABUIIsBlurSupported()
{
  if (ABUIIsBlurSupported_onceToken != -1)
  {
    ABUIIsBlurSupported_cold_1();
  }

  return ABUIIsBlurSupported_blurSupported == 1 && !UIAccessibilityIsReduceMotionEnabled() && !UIAccessibilityIsReduceTransparencyEnabled();
}

uint64_t __ABUIIsBlurSupported_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277D75DF0] settingsForPrivateStyle:{2030), "blurRadius"}];
  ABUIIsBlurSupported_blurSupported = v1 > 0.0;
  return result;
}

uint64_t __RoundToScale_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  RoundToScale___s = v1;
  return result;
}