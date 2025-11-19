uint64_t _ABCInitialize()
{
  ABCCreateLock();
  ABCSourceInitialize();
  ABCPersonInitialize();
  ABCGroupInitialize(v0, v1, v2, v3, v4, v5, v6, v7, vars0);
  ABCImageStoreInitialize();

  return pthread_once(&_registerOnce, _registerForDistributedNotification);
}

void ABInitialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v16 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABInitialize(void)", 1161, v9, 0, v10, v11, v12, v16);
    CFRelease(v9);
  }

  ABCInitializeLibrary();
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABInitialize(void)", 1163, @">> ", 0, v13, v14, v15, a9);
  }
}

uint64_t ABLogAPIUsage()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return ABDiagnosticsEnabled() & __ABLogAPIUsage;
}

BOOL ABDiagnosticsEnabled()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return __ABLogMaxConsoleLevel > 4 || __ABLogMaxFileLevel > 0;
}

__asl_object_s *___initIfNeeded_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  v0 = *MEMORY[0x1E695E890];
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ABLogConsoleLevel", *MEMORY[0x1E695E890], &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppIntegerValue;
  }

  else
  {
    v2 = 4;
  }

  __ABLogMaxConsoleLevel = v2;
  v3 = CFPreferencesGetAppIntegerValue(@"ABLogFileLevel", v0, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v4 = v3;
  }

  else
  {
    v4 = -1;
  }

  __ABLogMaxFileLevel = v4;
  if (CFPreferencesGetAppBooleanValue(@"ABLogAPIUsage", v0, &keyExistsAndHasValidFormat))
  {
    v5 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __ABLogAPIUsage = v6;
  if (CFPreferencesGetAppBooleanValue(@"ABLogSqlite", v0, &keyExistsAndHasValidFormat))
  {
    v7 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  __ABLogSqliteTrace = v8;
  if (CFPreferencesGetAppBooleanValue(@"ABLogContactsSearch", v0, &keyExistsAndHasValidFormat))
  {
    v9 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  __ABLogContactsSearch = v10;
  if (CFPreferencesGetAppBooleanValue(@"ABLogDataCollection", v0, &keyExistsAndHasValidFormat))
  {
    v11 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  __ABLogDataCollection = v12;
  if (CFPreferencesGetAppBooleanValue(@"ABLogPersonDelete", v0, &keyExistsAndHasValidFormat))
  {
    v13 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  __ABLogPersonDelete = v14;
  result = CFPreferencesGetAppBooleanValue(@"ABLogChangeHistory", v0, &keyExistsAndHasValidFormat);
  if (result)
  {
    v16 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  __ABLogChangeHistory = v17;
  if (__ABLogMaxFileLevel != -1)
  {
    __ABLogAslQueue = dispatch_queue_create([@"com.apple.AddressBookLegacy" UTF8String], 0);
    result = asl_open(0, [@"com.apple.AddressBookLegacy" UTF8String], 0);
    __ABLogAslClient = result;
    if (result)
    {
      return asl_set_filter(result, ~(-1 << (__ABLogMaxFileLevel + 1)));
    }
  }

  return result;
}

void ABCSourceInitialize()
{
  kABCSourceNameProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceExternalIdentifierProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceTypeProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceConstraintsPathProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceExternalModificationTagProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceExternalSyncTagProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceAccountIDProperty = CPRecordIndexOfPropertyNamed();
  kABCSourcePolicyProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceEnabledProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceSyncDataProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceMeIdentifierProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceCapabilitiesProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceInternalUUIDProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceLastSyncDateProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceProviderIdentifierProperty = CPRecordIndexOfPropertyNamed();
  kABCSourceProviderMetadataProperty = CPRecordIndexOfPropertyNamed();

  ABSourceInitialize();
}

void ABCPersonInitialize()
{
  kABCFirstNameProperty = CPRecordIndexOfPropertyNamed();
  kABCFirstNamePhoneticProperty = CPRecordIndexOfPropertyNamed();
  kABCFirstNamePronunciationProperty = CPRecordIndexOfPropertyNamed();
  kABCMiddleNameProperty = CPRecordIndexOfPropertyNamed();
  kABCMiddleNamePhoneticProperty = CPRecordIndexOfPropertyNamed();
  kABCMiddleNamePronunciationProperty = CPRecordIndexOfPropertyNamed();
  kABCLastNameProperty = CPRecordIndexOfPropertyNamed();
  kABCLastNamePhoneticProperty = CPRecordIndexOfPropertyNamed();
  kABCLastNamePronunciationProperty = CPRecordIndexOfPropertyNamed();
  kABCAddressingGrammarProperty = CPRecordIndexOfPropertyNamed();
  kABCOrganizationProperty = CPRecordIndexOfPropertyNamed();
  kABCOrganizationPhoneticProperty = CPRecordIndexOfPropertyNamed();
  kABCOrganizationPronunciationProperty = CPRecordIndexOfPropertyNamed();
  kABCDepartmentProperty = CPRecordIndexOfPropertyNamed();
  kABCDateProperty = CPRecordIndexOfPropertyNamed();
  kABCInstantMessageProperty = CPRecordIndexOfPropertyNamed();
  kABCNoteProperty = CPRecordIndexOfPropertyNamed();
  kABCImageProperty = CPRecordIndexOfPropertyNamed();
  kABCPhoneProperty = CPRecordIndexOfPropertyNamed();
  kABCEmailProperty = CPRecordIndexOfPropertyNamed();
  kABCAddressProperty = CPRecordIndexOfPropertyNamed();
  kABCKindProperty = CPRecordIndexOfPropertyNamed();
  kABCSoundProperty = CPRecordIndexOfPropertyNamed();
  kABCBirthdayProperty = CPRecordIndexOfPropertyNamed();
  kABCJobTitleProperty = CPRecordIndexOfPropertyNamed();
  kABCNicknameProperty = CPRecordIndexOfPropertyNamed();
  kABCPreviousFamilyNameProperty = CPRecordIndexOfPropertyNamed();
  kABCPrefixProperty = CPRecordIndexOfPropertyNamed();
  kABCSuffixProperty = CPRecordIndexOfPropertyNamed();
  kABCURLProperty = CPRecordIndexOfPropertyNamed();
  kABCRelatedNamesProperty = CPRecordIndexOfPropertyNamed();
  kABCFirstSortProperty = CPRecordIndexOfPropertyNamed();
  kABCLastSortProperty = CPRecordIndexOfPropertyNamed();
  kABCCreationDateProperty = CPRecordIndexOfPropertyNamed();
  kABCModificationDateProperty = CPRecordIndexOfPropertyNamed();
  kABCCompositeNameFallbackProperty = CPRecordIndexOfPropertyNamed();
  kABCSyntheticPropertiesReset = CPRecordIndexOfPropertyNamed();
  kABCPersonExternalIdentifierProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonStoreIDProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonStoreReferenceProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonExternalModificationTagProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonExternalUUIDProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonImageURIProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonDisplayNameProperty = CPRecordIndexOfPropertyNamed();
  kABCFirstSortSectionProperty = CPRecordIndexOfPropertyNamed();
  kABCLastSortSectionProperty = CPRecordIndexOfPropertyNamed();
  kABCFirstSortLanguageIndexSortProperty = CPRecordIndexOfPropertyNamed();
  kABCLastSortLanguageIndexSortProperty = CPRecordIndexOfPropertyNamed();
  kABPersonSearchProperty = CPRecordIndexOfPropertyNamed();
  kABPersonNameOnlySearchProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonExternalRepresentationProperty = CPRecordIndexOfPropertyNamed();
  kABPersonLinkProperty = CPRecordIndexOfPropertyNamed();
  kABPersonIsPreferredNameProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonSocialProfileProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonContentExtensionsProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonPhonemeDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonAlternateBirthdayProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonMapsDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonInternalUUIDProperty = CPRecordIndexOfPropertyNamed();
  kABCChangesProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonPreferredLikenessSourceProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonPreferredPersonaIdentifierProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonLinkUUIDProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonImageDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonThumbnailDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonImageCropRectProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonFullscreenImageDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonSyncImageDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonIsPreferredImageProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonHasImageDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonPreferredChannelProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonDowntimeWhitelistProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonImageTypeProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonImageHashProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonMemojiMetadataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonWallpaperProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonWallpaperMetadataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonWatchWallpaperImageDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonAvatarRecipeDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonImageBackgroundColorsDataProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonWallpaperURIProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonDisplayFlagsProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonSensitiveContentConfigurationProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonImageSyncFailedTimeProperty = CPRecordIndexOfPropertyNamed();
  kABCPersonWallpaperSyncFailedTimeProperty = CPRecordIndexOfPropertyNamed();

  ABPersonInitialize();
}

void ABPersonInitialize()
{
  if (ABLogAPIUsage())
  {
    v11 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABPersonInitialize(void)", 1688, v0, 0, v1, v2, v3, v11);
    CFRelease(v0);
  }

  kABPersonFirstNameProperty = kABCFirstNameProperty;
  kABPersonFirstNamePhoneticProperty = kABCFirstNamePhoneticProperty;
  kABPersonFirstNamePronunciationProperty = kABCFirstNamePronunciationProperty;
  kABPersonMiddleNameProperty = kABCMiddleNameProperty;
  kABPersonMiddleNamePhoneticProperty = kABCMiddleNamePhoneticProperty;
  kABPersonMiddleNamePronunciationProperty = kABCMiddleNamePronunciationProperty;
  kABPersonLastNameProperty = kABCLastNameProperty;
  kABPersonLastNamePhoneticProperty = kABCLastNamePhoneticProperty;
  kABPersonLastNamePronunciationProperty = kABCLastNamePronunciationProperty;
  kABPersonPreviousFamilyNameProperty = kABCPreviousFamilyNameProperty;
  kABPersonAddressingGrammarProperty = kABCAddressingGrammarProperty;
  kABPersonOrganizationProperty = kABCOrganizationProperty;
  kABPersonOrganizationPhoneticProperty = kABCOrganizationPhoneticProperty;
  kABPersonOrganizationPronunciationProperty = kABCOrganizationPronunciationProperty;
  kABPersonDepartmentProperty = kABCDepartmentProperty;
  kABPersonDateProperty = kABCDateProperty;
  kABPersonInstantMessageProperty = kABCInstantMessageProperty;
  kABPersonNoteProperty = kABCNoteProperty;
  kABPersonImageProperty = kABCImageProperty;
  kABPersonPhoneProperty = kABCPhoneProperty;
  kABPersonEmailProperty = kABCEmailProperty;
  kABPersonAddressProperty = kABCAddressProperty;
  kABPersonKindProperty = kABCKindProperty;
  kABPersonSoundProperty = kABCSoundProperty;
  kABPersonBirthdayProperty = kABCBirthdayProperty;
  kABPersonJobTitleProperty = kABCJobTitleProperty;
  kABPersonNicknameProperty = kABCNicknameProperty;
  kABPersonPrefixProperty = kABCPrefixProperty;
  kABPersonSuffixProperty = kABCSuffixProperty;
  kABPersonURLProperty = kABCURLProperty;
  kABPersonRelatedNamesProperty = kABCRelatedNamesProperty;
  kABPersonFirstSortProperty = kABCFirstSortProperty;
  kABPersonLastSortProperty = kABCLastSortProperty;
  kABPersonCreationDateProperty = kABCCreationDateProperty;
  kABPersonModificationDateProperty = kABCModificationDateProperty;
  kABPersonCompositeNameFallbackProperty = kABCCompositeNameFallbackProperty;
  kABPersonSyntheticPropertiesReset = kABCSyntheticPropertiesReset;
  kABPersonExternalIdentifierProperty = kABCPersonExternalIdentifierProperty;
  kABPersonStoreIDProperty = kABCPersonStoreIDProperty;
  kABPersonStoreReferenceProperty = kABCPersonStoreReferenceProperty;
  kABPersonExternalRepresentationProperty = kABCPersonExternalRepresentationProperty;
  kABPersonExternalModificationTagProperty = kABCPersonExternalModificationTagProperty;
  kABPersonExternalUUIDProperty = kABCPersonExternalUUIDProperty;
  kABPersonImageURIProperty = kABCPersonImageURIProperty;
  kABPersonFirstSortSectionProperty = kABCFirstSortSectionProperty;
  kABPersonLastSortSectionProperty = kABCLastSortSectionProperty;
  kABPersonFirstSortLanguageIndexSortProperty = kABCFirstSortLanguageIndexSortProperty;
  kABPersonLastSortLanguageIndexSortProperty = kABCLastSortLanguageIndexSortProperty;
  kABPersonDisplayNameProperty = kABCPersonDisplayNameProperty;
  valuePtr = 0;
  kABPersonKindPerson = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  valuePtr = 1;
  kABPersonKindOrganization = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  kABPersonSocialProfileProperty = kABCPersonSocialProfileProperty;
  kABPersonContentExtensionsProperty = kABCPersonContentExtensionsProperty;
  kABPersonPhonemeDataProperty = kABCPersonPhonemeDataProperty;
  kABPersonAlternateBirthdayProperty = kABCPersonAlternateBirthdayProperty;
  kABPersonMapsDataProperty = kABCPersonMapsDataProperty;
  kABPersonLinkUUIDProperty = kABCPersonLinkUUIDProperty;
  kABPersonInternalUUIDProperty = kABCPersonInternalUUIDProperty;
  kABPersonInternalGUIDProperty = kABCPersonInternalUUIDProperty;
  kABChangesProperty = kABCChangesProperty;
  kABPersonPreferredLikenessSourceProperty = kABCPersonPreferredLikenessSourceProperty;
  kABPersonPreferredPersonaIdentifierProperty = kABCPersonPreferredPersonaIdentifierProperty;
  kABPersonPreferredChannelProperty = kABCPersonPreferredChannelProperty;
  kABPersonDowntimeWhitelistProperty = kABCPersonDowntimeWhitelistProperty;
  kABPersonImageTypeProperty = kABCPersonImageTypeProperty;
  kABPersonImageHashProperty = kABCPersonImageHashProperty;
  kABPersonMemojiMetadataProperty = kABCPersonMemojiMetadataProperty;
  kABPersonWallpaperProperty = kABCPersonWallpaperProperty;
  kABPersonWallpaperMetadataProperty = kABCPersonWallpaperMetadataProperty;
  kABPersonWatchWallpaperImageDataProperty = kABCPersonWatchWallpaperImageDataProperty;
  kABPersonWallpaperURIProperty = kABCPersonWallpaperURIProperty;
  kABPersonImageBackgroundColorsDataProperty = kABCPersonImageBackgroundColorsDataProperty;
  kABPersonDisplayFlagsProperty = kABCPersonDisplayFlagsProperty;
  kABPersonSensitiveContentConfigurationProperty = kABCPersonSensitiveContentConfigurationProperty;
  kABPersonImageSyncFailedTimeProperty = kABCPersonImageSyncFailedTimeProperty;
  kABPersonWallpaperSyncFailedTimeProperty = kABCPersonWallpaperSyncFailedTimeProperty;
  __personCompositeNameFormat = 0;
  v4 = [MEMORY[0x1E696ADF8] _defaultDisplayNameOrder];
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v5 = 1;
  }

  __personCompositeNameFormat = v5;
LABEL_8:
  ABPersonRetrieveEditNameFormat();
  ABPersonRetrieveShortNameSettings();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __PreferencesChanged, @"com.apple.AddressBook.PreferenceChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "void ABPersonInitialize(void)", 1818, @">> ", 0, v7, v8, v9, v10);
  }
}

const __CFArray *_abCopyCardDisplayDictionary()
{
  v0 = _ABBundle();
  if (v0)
  {
    v1 = v0;
    v2 = CFBundleCopyBundleLocalizations(v0);
    if (v2)
    {
      v3 = v2;
      v4 = CFBundleCopyLocalizationsForPreferences(v2, 0);
      v5 = v4;
      if (!v4)
      {
        v7 = v3;
LABEL_18:
        CFRelease(v7);
        return v5;
      }

      if (CFArrayGetCount(v4) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v5, 0)) != 0)
      {
        v7 = CFBundleCopyResourceURLForLocalization(v1, @"ABLocalizableDefaults", @"plist", 0, ValueAtIndex);
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v5);
      CFRelease(v3);
      if (v7)
      {
        v8 = *MEMORY[0x1E695E480];
        v9 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], v7);
        if (v9)
        {
          v10 = v9;
          if (CFReadStreamOpen(v9))
          {
            v5 = CFPropertyListCreateWithStream(v8, v10, 0, 0, 0, 0);
            Value = CFDictionaryGetValue(v5, @"_LOCALIZABLE_");
            if (Value)
            {
              v12 = Value;
              CFRetain(Value);
              CFRelease(v5);
              v5 = v12;
            }
          }

          else
          {
            v5 = 0;
          }

          CFRelease(v10);
        }

        else
        {
          v5 = 0;
        }

        goto LABEL_18;
      }
    }
  }

  return 0;
}

uint64_t ABCCreateLock()
{
  v2 = *MEMORY[0x1E69E9840];
  v1.__sig = 0;
  *v1.__opaque = 0;
  pthread_mutexattr_init(&v1);
  pthread_mutexattr_settype(&v1, 2);
  pthread_mutex_init(&stru_1ED646C30, &v1);
  pthread_mutexattr_destroy(&v1);
  pthread_mutexattr_init(&v1);
  pthread_mutexattr_settype(&v1, 2);
  pthread_mutex_init(&stru_1ED646C70, &v1);
  return pthread_mutexattr_destroy(&v1);
}

void ABPersonRetrieveEditNameFormat()
{
  v0 = _abCopyCardDisplayDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, @"personNameOrderingForEdit");
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      __personEditNameFormat = valuePtr;
    }

    CFRelease(v1);
  }
}

void ABSourceInitialize()
{
  kABSourceNameProperty = kABCSourceNameProperty;
  kABSourceTypeProperty = kABCSourceTypeProperty;
  kABSourceConstraintsPathProperty = kABCSourceConstraintsPathProperty;
  kABSourceExternalModificationTagProperty = kABCSourceExternalModificationTagProperty;
  kABSourceExternalSyncTagProperty = kABCSourceExternalSyncTagProperty;
  kABSourceExternalIdentifierProperty = kABCSourceExternalIdentifierProperty;
  kABSourceAccountIDProperty = kABCSourceAccountIDProperty;
  kABSourceEnabledProperty = kABCSourceEnabledProperty;
  kABSourceSyncDataProperty = kABCSourceSyncDataProperty;
  kABSourceMeIdentifierProperty = kABCSourceMeIdentifierProperty;
  kABSourceCapabilitiesProperty = kABCSourceCapabilitiesProperty;
  kABSourceInternalUUIDProperty = kABCSourceInternalUUIDProperty;
  kABSourceLastSyncDateProperty = kABCSourceLastSyncDateProperty;
  kABSourceProviderIdentifierProperty = kABCSourceProviderIdentifierProperty;
  kABSourceProviderMetadataProperty = kABCSourceProviderMetadataProperty;
}

uint64_t _ABBundle()
{
  v0 = _ABBundle___ABBundle;
  if (!_ABBundle___ABBundle)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AddressBookLegacy");
    if (BundleWithIdentifier)
    {
      v0 = BundleWithIdentifier;
      CFRetain(BundleWithIdentifier);
      _ABBundle___ABBundle = v0;
    }

    else
    {
      return _ABBundle___ABBundle;
    }
  }

  return v0;
}

uint64_t ABPersonRetrieveShortNameSettings()
{
  v0 = [MEMORY[0x1E696ADF8] _defaultShortNameFormat] - 1;
  if (v0 <= 3)
  {
    __personShortNameFormat = v0;
  }

  __personShortNameFormatEnabled = [MEMORY[0x1E696ADF8] _shortNameIsEnabled];
  result = [MEMORY[0x1E696ADF8] _shouldPreferNicknames];
  __personShortNamePreferNicknames = result;
  return result;
}

void ABCGroupInitialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  kABCNameProperty = CPRecordIndexOfPropertyNamed();
  kABCMembersProperty = CPRecordIndexOfPropertyNamed();
  kABCAddedMembersAndSubgroupsProperty = CPRecordIndexOfPropertyNamed();
  kABCRemovedMembersAndSubgroupsProperty = CPRecordIndexOfPropertyNamed();
  kABCFetchSortOrderProperty = CPRecordIndexOfPropertyNamed();
  kABCMembersAndSubgroupsProperty = CPRecordIndexOfPropertyNamed();
  kABCSubgroupsProperty = CPRecordIndexOfPropertyNamed();
  kABCGroupExternalIdentifierProperty = CPRecordIndexOfPropertyNamed();
  kABCGroupStoreIDProperty = CPRecordIndexOfPropertyNamed();
  kABCGroupSourceReferenceProperty = CPRecordIndexOfPropertyNamed();
  kABCGroupExternalModificationTagProperty = CPRecordIndexOfPropertyNamed();
  kABCGroupExternalRepresentationProperty = CPRecordIndexOfPropertyNamed();
  kABCGroupExternalUUIDProperty = CPRecordIndexOfPropertyNamed();
  v9 = CPRecordIndexOfPropertyNamed();
  kABCGroupInternalUUIDProperty = v9;

  ABGroupInitialize(v9, v10, v11, v12, v13, v14, v15, v16, a9);
}

void ABGroupInitialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (ABLogAPIUsage())
  {
    v16 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "void ABGroupInitialize(void)", 146, v9, 0, v10, v11, v12, v16);
    CFRelease(v9);
  }

  kABGroupNameProperty = kABCNameProperty;
  kABGroupMembersProperty = kABCMembersProperty;
  kABGroupSubgroupsProperty = kABCSubgroupsProperty;
  kABGroupMembersAndSubgroupsProperty = kABCMembersAndSubgroupsProperty;
  kABGroupExternalIdentifierProperty = kABCGroupExternalIdentifierProperty;
  kABGroupStoreIDProperty = kABCGroupStoreIDProperty;
  kABGroupStoreReferenceProperty = kABCGroupSourceReferenceProperty;
  kABGroupExternalModificationTagProperty = kABCGroupExternalModificationTagProperty;
  kABGroupExternalRepresentationProperty = kABCGroupExternalRepresentationProperty;
  kABGroupExternalUUIDProperty = kABCGroupExternalUUIDProperty;
  kABGroupInternalUUIDProperty = kABCGroupInternalUUIDProperty;
  if (ABLogAPIUsage())
  {

    _ABLog2(6, "void ABGroupInitialize(void)", 158, @">> ", 0, v13, v14, v15, a9);
  }
}

uint64_t ABCImageStoreInitialize()
{
  ABCThumbnailImageRecordIDProperty = CPRecordIndexOfPropertyNamed();
  ABCThumbnailImageFormatProperty = CPRecordIndexOfPropertyNamed();
  ABCThumbnailImageDataProperty = CPRecordIndexOfPropertyNamed();
  ABCThumbnailImageDerivedFromFormatProperty = CPRecordIndexOfPropertyNamed();
  ABCFullSizeImageRecordIDProperty = CPRecordIndexOfPropertyNamed();
  ABCFullSizeImageCropXProperty = CPRecordIndexOfPropertyNamed();
  ABCFullSizeImageCropYProperty = CPRecordIndexOfPropertyNamed();
  ABCFullSizeImageCropWidthProperty = CPRecordIndexOfPropertyNamed();
  ABCFullSizeImageDataProperty = CPRecordIndexOfPropertyNamed();
  ABCAvatarRecipeRecordIDProperty = CPRecordIndexOfPropertyNamed();
  result = CPRecordIndexOfPropertyNamed();
  ABCAvatarRecipeDataProperty = result;
  return result;
}

void _registerForDistributedNotification()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, ABDatabaseChangedByOtherProcess, @"__ABDataBaseChangedByOtherProcessNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

ABAddressBookRef ABAddressBookCreateWithOptions(CFDictionaryRef options, CFErrorRef *error)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreateWithOptions(CFDictionaryRef, CFErrorRef *)", 461, v5, @"options=%@", v6, v7, v8, options);
    CFRelease(v5);
  }

  if (error && *error)
  {
    *error = 0;
  }

  v9 = ABAddressBookCreateWithOptionsAndPolicy(options, 0, error);
  if (ABLogAPIUsage())
  {
    v10 = ABLogAddressBook(v9);
    ABLogErrorPtr(error);
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreateWithOptions(CFDictionaryRef, CFErrorRef *)", 470, @">> ", @"%@, %@", v11, v12, v13, v10);
  }

  return v9;
}

uint64_t ABAddressBookCreateWithDatabaseDirectory(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreateWithDatabaseDirectory(CFStringRef)", 391, v3, @"directory=%@", v4, v5, v6, a1);
    CFRelease(v3);
  }

  v7 = ABCCreateAddressBookWithDatabaseDirectory(a1);
  if (ABLogAPIUsage())
  {
    v8 = ABLogAddressBook(v7);
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreateWithDatabaseDirectory(CFStringRef)", 395, @">> ", @"%@", v9, v10, v11, v8);
  }

  return v7;
}

uint64_t ABDeviceIsBeforeFirstUnlockWithDataProtected()
{
  if (__isBeforeFirstUnlockWithDataProtected != 1)
  {
    return 0;
  }

  result = [MEMORY[0x1E6996770] isDevicePasscodeProtected];
  if (result)
  {
    result = [MEMORY[0x1E6996770] isDeviceUnlockedSinceBoot] ^ 1;
  }

  __isBeforeFirstUnlockWithDataProtected = result;
  return result;
}

ABAddressBookRef ABCCreateAddressBookWithDatabaseDirectoryAndForceInProcessMigrationInProcessLinkingAndResetSortKeys(const __CFString *a1, int a2, int a3, int a4)
{
  v86 = *MEMORY[0x1E69E9840];
  if (ABDeviceIsBeforeFirstUnlockWithDataProtected())
  {
    if (os_variant_has_internal_content())
    {
      ABDiagnosticsEnabled();
      _ABLog2(4, "ABCAddressBookRef ABCCreateAddressBookWithDatabaseDirectoryAndForceInProcessMigrationInProcessLinkingAndResetSortKeys(CFStringRef, _Bool, _Bool, _Bool)", 240, 0, @"%@", v8, v9, v10, @"AddressBook.framework was used before first unlock.");
    }

    ABDeviceRegisterCallbackForFirstUnlock(ABPostDatabaseChanged);
  }

  pthread_once(&_MergedGlobals, _ABCInitialize);
  pthread_once(&stru_1ED646C20, ABCAddressBookRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v12 = Instance;
  if (!Instance)
  {
    return v12;
  }

  v81.__sig = 0;
  *v81.__opaque = 0;
  bzero((Instance + 16), 0x178uLL);
  *(v12 + 384) |= 0x2000000u;
  v72 = 0;
  pthread_mutexattr_init(&v81);
  pthread_mutexattr_settype(&v81, 2);
  pthread_mutex_init((v12 + 80), &v81);
  pthread_mutexattr_destroy(&v81);
  if (a1)
  {
    *(v12 + 72) = CFRetain(a1);
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
    if (!MutableCopy)
    {
LABEL_82:
      CFRelease(v12);
      return 0;
    }

    v14 = MutableCopy;
    CFStringAppend(MutableCopy, @"AddressBook.sqlitedb");
  }

  else
  {
    *(v12 + 72) = 0;
    v14 = @":memory:";
  }

  *(v12 + 16) = ABCDBContextCreateWithPathAndAddressBook(v14, v12);
  CFRelease(v14);
  if (!*(v12 + 16))
  {
    goto LABEL_82;
  }

  *(v12 + 288) = 0u;
  *(v12 + 304) = 0u;
  *(v12 + 320) = 0u;
  *(v12 + 336) = 0;
  *(v12 + 272) = 0;
  *(v12 + 280) = 850045858;
  CPRecordStoreGetDatabase();
  v67 = MEMORY[0x1E69E9820];
  v68 = 3221225472;
  v69 = __ABCCreateAddressBookWithDatabaseDirectoryAndForceInProcessMigrationInProcessLinkingAndResetSortKeys_block_invoke;
  v70 = &__block_descriptor_40_e5_v8__0l;
  v71 = v12;
  CPSqliteRegisterYieldNotifyBlock();
  if (*(v12 + 265))
  {
    CPRecordStoreGetDatabase();
    *(v12 + 64) = CPSqliteDatabaseCopyUniqueIdentifier();
    addressBook = v12;
    if (a2)
    {
      if (v72)
      {
        v17 = CPRecordStoreCopyAllInstancesOfClassWhere();
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v63 objects:v80 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v64;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v64 != v20)
              {
                objc_enumerationMutation(v17);
              }

              ABAddressBookRemoveRecord(v12, *(*(&v63 + 1) + 8 * i), 0);
            }

            v19 = [v17 countByEnumeratingWithState:&v63 objects:v80 count:16];
          }

          while (v19);
        }

        v22 = [v17 count];

        v23 = CPRecordStoreCopyAllInstancesOfClassWhere();
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v59 objects:v79 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v60;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v60 != v26)
              {
                objc_enumerationMutation(v23);
              }

              ABAddressBookRemoveRecord(v12, *(*(&v59 + 1) + 8 * j), 0);
            }

            v25 = [v23 countByEnumeratingWithState:&v59 objects:v79 count:16];
          }

          while (v25);
        }

        v28 = [v23 count];

        v15 = v28 + v22 != 0;
        v16 = v15;
        if (!+[ABPersonLinker isInitialLinkingEnabled])
        {
LABEL_41:
          v58 = 1;
          v31 = ABCIsSortDataValid(addressBook, &v58);
          v32 = 0;
          if (a4 && (v31 & 1) == 0)
          {
            v32 = (a2 ^ 1) & v58;
          }

          if (+[ABPersonLinker isAutoLinkingEnabled])
          {
            v33 = ([ABPersonLinker isLinkDataValidForAddressBook:addressBook]| a3) ^ 1;
          }

          else
          {
            v33 = 0;
          }

          if ((v32 | v33) == 1)
          {
            v34 = ABOSLogGeneral();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = ABLogStringForBool(v32);
              v36 = ABLogStringForBool(v33);
              *buf = 138412546;
              v83 = v35;
              v84 = 2112;
              v85 = v36;
              _os_log_impl(&dword_1B7EFB000, v34, OS_LOG_TYPE_DEFAULT, "shouldRebuildSortKeysOOP = %@, shouldRebuildLinkDataOOP = %@", buf, 0x16u);
            }

            ABStartDatabaseDoctor(addressBook);
          }

          if (a2)
          {
            if ((v72 & 4) != 0)
            {
              v37 = CPRecordStoreCopyAllInstancesOfClassWhere();
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v38 = [v37 countByEnumeratingWithState:&v74 objects:buf count:16];
              if (v38)
              {
                v39 = v38;
                v40 = *v75;
                do
                {
                  for (k = 0; k != v39; ++k)
                  {
                    if (*v75 != v40)
                    {
                      objc_enumerationMutation(v37);
                    }

                    v42 = *(*(&v74 + 1) + 8 * k);
                    error = 0;
                    if (!ABRecordSetValue(v42, kABPersonModificationDateProperty, [MEMORY[0x1E695DF00] date], &error))
                    {
                      ABDiagnosticsEnabled();
                      _ABLog2(3, "_Bool _touchAllRecordsWithKatakanaPhoneticComponents(ABCAddressBook *)", 2781, 0, @"Error touching record %@", v43, v44, v45, error);
                    }
                  }

                  v39 = [v37 countByEnumeratingWithState:&v74 objects:buf count:16];
                }

                while (v39);
                if ([v37 count])
                {
                  v16 = 1;
                }
              }

              else if ([v37 count])
              {
                v16 = 1;
              }
            }

            if ((v72 & 8) == 0)
            {
              if (!v16)
              {
                return addressBook;
              }

              goto LABEL_79;
            }

            v46 = CPRecordStoreCopyAllInstancesOfClassWhere();
            v47 = OUTLINED_FUNCTION_13();
            v49 = [v48 countByEnumeratingWithState:v47 objects:? count:?];
            if (v49)
            {
              v50 = v49;
              v51 = *v57;
              do
              {
                for (m = 0; m != v50; ++m)
                {
                  if (*v57 != v51)
                  {
                    objc_enumerationMutation(v46);
                  }

                  v16 |= ABRecordSetValue(*(v56 + 8 * m), kABPersonKindProperty, kABPersonKindOrganization, 0);
                }

                v50 = [v46 countByEnumeratingWithState:v55 objects:v78 count:16];
              }

              while (v50);
            }
          }

          if ((v16 & 1) == 0)
          {
            return addressBook;
          }

LABEL_79:
          ABAddressBookSave(addressBook, 0);
          return addressBook;
        }
      }

      else
      {
        v15 = 0;
        v16 = 0;
        if (!+[ABPersonLinker isInitialLinkingEnabled])
        {
          goto LABEL_41;
        }
      }

      if ((v72 & 2) != 0)
      {
        CountOfInstancesOfClassWhere = CPRecordStoreGetCountOfInstancesOfClassWhere();
        v16 = CountOfInstancesOfClassWhere != CPRecordStoreGetCountOfInstancesOfClassWhere();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      if (!+[ABPersonLinker isInitialLinkingEnabled])
      {
        goto LABEL_41;
      }

      v15 = 0;
      if ((a3 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (![ABPersonLinker isLinkDataValidForAddressBook:addressBook]|| v16)
    {
      v30 = [[ABPersonLinker alloc] initWithAddressBook:addressBook];
      [(ABPersonLinker *)v30 makeInitialLinks];
    }

    v16 = v15;
    goto LABEL_41;
  }

  return v12;
}

const void *ABAddressBookCreateWithOptionsAndPolicy(const __CFDictionary *a1, uint64_t a2, __CFString **a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    ABLogErrorPtr(a3);
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreateWithOptionsAndPolicy(CFDictionaryRef, ABCreatePolicy, CFErrorRef *)", 416, v7, @"options=%@, policy=%i, %@", v8, v9, v10, a1);
    CFRelease(v7);
  }

  if (ABDiagnosticsEnabled())
  {
    _ABLog2(7, "ABAddressBookRef ABAddressBookCreateWithOptionsAndPolicy(CFDictionaryRef, ABCreatePolicy, CFErrorRef *)", 417, 0, @"policy = %i", v11, v12, v13, a2);
  }

  if (os_variant_has_internal_diagnostics() && _VerifyDirectDatabaseAccessEntitlementPresence_onceToken != -1)
  {
    _VerifyDirectDatabaseAccessEntitlementPresence_cold_1();
  }

  v14 = ABAddressBookCopyDBDirectoryWithOptions(a1);
  v15 = ABAddressBookCreateWithDatabaseDirectory(v14);
  CFRelease(v14);
  v16 = ABTCCIsAccessDenied();
  if (!a2 && v16)
  {
    if (ABDiagnosticsEnabled())
    {
      _ABLog2(7, "ABAddressBookRef ABAddressBookCreateWithOptionsAndPolicy(CFDictionaryRef, ABCreatePolicy, CFErrorRef *)", 444, 0, @"returning NULL ABAddressBookRef", v17, v18, v19, v26);
    }

    CFRelease(v15);
    v15 = 0;
    if (a3)
    {
      *a3 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 1, 0);
    }
  }

  v20 = ABTCCIsAccessUnknown();
  if (a2 == 1 && v20)
  {
    ABTCCRequestAccess();
  }

  ABAddressBookConfigureDelegateOptions(v15, a1);
  if (ABLogAPIUsage())
  {
    v21 = ABLogAddressBook(v15);
    ABLogErrorPtr(a3);
    _ABLog2(6, "ABAddressBookRef ABAddressBookCreateWithOptionsAndPolicy(CFDictionaryRef, ABCreatePolicy, CFErrorRef *)", 455, @">> ", @"%@, %@", v22, v23, v24, v21);
  }

  return v15;
}

uint64_t ABAddressBookCopyDBDirectoryWithOptions(const __CFDictionary *a1)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"ABAddressBookCreateOptionFamilyMemberAltDSID");
    if (Value)
    {
      v2 = Value;
      v3 = ABCAddressBookCopyDBDirectory();
      v4 = [v3 stringByAppendingString:@"Family/"];
      CFRelease(v3);
      CPFileBuildDirectoriesToPath();
      v37 = open([v4 fileSystemRepresentation], 32);
      if (v37 == -1)
      {
        ABDiagnosticsEnabled();
        v35 = *__error();
        _ABLog2(3, "CFStringRef ABAddressBookCopyDirectoryPathForDelegateWithAltDSID(CFStringRef)", 313, 0, @"error opening Family directory lock at path %@, errno %d", v5, v6, v7, v4);
      }

      v36 = [v4 stringByAppendingPathComponent:@"family.plist"];
      v8 = [objc_msgSend(MEMORY[0x1E695DF20] "dictionaryWithContentsOfFile:"mutableCopy"")];
      if (!v8)
      {
        v8 = [MEMORY[0x1E695DF90] dictionary];
      }

      v9 = [v8 objectForKeyedSubscript:@"Generation"];
      v10 = [objc_msgSend(v8 objectForKeyedSubscript:{@"Mappings", "mutableCopy"}];
      if (!v10)
      {
        v10 = [MEMORY[0x1E695DF90] dictionary];
      }

      v11 = [v9 intValue];
      v39 = 0;
      v12 = [v4 stringByAppendingPathComponent:v2];
      if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
      {
        v38 = 0;
        if (v39 == 1)
        {
          if (ABDiagnosticsEnabled())
          {
            _ABLog2(6, "CFStringRef _ABAddressBookCopyMigratedDelegateDatabaseIdentifierIfMigrationNeeded(CFStringRef, CFStringRef, int)", 201, 0, @"migrating folder for deletage with altdsid %@ into mappings registry", v13, v14, v15, v2);
          }

          v16 = [v2 stringByAppendingFormat:@":%d", (v11 + 1), v35];
          v17 = [v4 stringByAppendingString:v16];
          if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
          {
            if (v16)
            {
              CFRetain(v16);
              [v10 setObject:v16 forKeyedSubscript:v2];
              v18 = 1;
              v11 = (v11 + 1);
              goto LABEL_26;
            }
          }

          else
          {
            ABDiagnosticsEnabled();
            _ABLog2(3, "CFStringRef _ABAddressBookCopyMigratedDelegateDatabaseIdentifierIfMigrationNeeded(CFStringRef, CFStringRef, int)", 207, 0, @"error opening moving directory to path %@", v24, v25, v26, v17);
          }
        }

        else
        {
          v20 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
          ABDiagnosticsEnabled();
          if (v20)
          {
            _ABLog2(3, "CFStringRef _ABAddressBookCopyMigratedDelegateDatabaseIdentifierIfMigrationNeeded(CFStringRef, CFStringRef, int)", 211, 0, @"deleted item at path %@ - it wasn't a directory but we expected one", v21, v22, v23, v12);
          }

          else
          {
            v35 = v38;
            _ABLog2(3, "CFStringRef _ABAddressBookCopyMigratedDelegateDatabaseIdentifierIfMigrationNeeded(CFStringRef, CFStringRef, int)", 213, 0, @"error encountered while deleting item of unexpected type at path %@ - it wasn't a directory but we expected one. error: %@", v21, v22, v23, v12);
          }
        }
      }

      v27 = [v10 objectForKeyedSubscript:v2];
      if (!v27)
      {
        goto LABEL_32;
      }

      v28 = CFRetain(v27);
      if (!v28)
      {
        goto LABEL_32;
      }

      v16 = v28;
      v18 = 0;
LABEL_26:
      v29 = [v4 stringByAppendingFormat:@"%@/", v16, v35];
      if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && v29)
      {
        v30 = CFRetain(v29);
        CFRelease(v16);
        if (v30)
        {
          v31 = v37;
          if (!v18)
          {
LABEL_38:
            close(v31);
            return v30;
          }

LABEL_36:
          [v8 setObject:v10 forKeyedSubscript:@"Mappings"];
          [v8 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v11), @"Generation"}];
          v34 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:200 options:0 error:0];
          if (v34)
          {
            [v34 writeToFile:v36 atomically:0];
          }

          goto LABEL_38;
        }
      }

      else
      {
        CFRelease(v16);
      }

LABEL_32:
      v11 = (v11 + 1);
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%d", v2, v11];
      [v10 setObject:v32 forKeyedSubscript:v2];
      v33 = [v4 stringByAppendingFormat:@"%@/", v32];
      if (v33)
      {
        v30 = CFRetain(v33);
      }

      else
      {
        v30 = 0;
      }

      v31 = v37;
      CPFileBuildDirectoriesToPath();
      goto LABEL_36;
    }
  }

  return ABCAddressBookCopyDBDirectory();
}

__CFString *_createMutableDBDirectory()
{
  v0 = CPSharedResourcesDirectory();
  if (!v0)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v0);
  CFStringAppend(MutableCopy, @"/Library/AddressBook/");
  return MutableCopy;
}

uint64_t ABCAddressBookRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  kABCAddressBookTypeID = result;
  return result;
}

CFMutableDictionaryRef __ABCFTSGetCollationContextDictionary_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  ABCFTSGetCollationContextDictionary_collalationContextDict = result;
  return result;
}

uint64_t _initializeConnection()
{
  CPSqliteConnectionPerformSQL();

  return CPSqliteConnectionPerformSQL();
}

uint64_t _initializeConnection_0(void *a1, uint64_t a2)
{
  ABRegisterSQLiteICUTokenizer(*(a2 + 8));
  if (ABLogSqliteTrace())
  {
    sqlite3_trace_v2(*(a2 + 8), 3u, _abSqliteTraceCallback, a1);
  }

  sqlite3_create_function(*(a2 + 8), "ab_normalize_date", 1, 1, 0, ABSqliteNormalizeDate, 0, 0);
  sqlite3_create_function(*(a2 + 8), "ab_repair_guid", 1, 1, 0, ABSqliteRepairUUID, 0, 0);
  sqlite3_create_function(*(a2 + 8), "ab_generate_guid", 0, 1, 0, ABSqliteGenerateUUID, 0, 0);
  sqlite3_create_function(*(a2 + 8), "has_sort_key_prefix", 3, 1, 0, MEMORY[0x1E698B640], 0, 0);
  sqlite3_create_function(*(a2 + 8), "ab_katakana_exclusively", 1, 1, 0, ABSqliteKatakanaExclusively, 0, 0);
  v4 = a1[33];
  sqlite3_create_function(*(a2 + 8), "ab_update_value_from_trigger", 3, 1, v4, ABCDBUpdatePersonValueFromTrigger, 0, 0);
  sqlite3_create_function(*(a2 + 8), "ab_transform_string", -1, 1, v4, ABSqliteTransformString, 0, 0);
  sqlite3_create_function(*(a2 + 8), "ab_is_store_allowed", 4, 1, v4, ABSqliteIsStoreAllowed, 0, 0);
  sqlite3_create_function(*(a2 + 8), "ab_compare_phone_numbers", 4, 1, v4, ABSqliteComparePhoneNumbers, 0, 0);
  sqlite3_create_function(*(a2 + 8), "ab_allowed_preferred_contact", 4, 1, v4, 0, ABSqliteSelectPreferredContact_Step, ABSqliteSelectPreferredContact_Final);
  v5 = *(a2 + 8);

  return sqlite3_create_function(v5, "ab_collect_value_row_map", 3, 1, v4, ABValueRowMapCollect, 0, 0);
}

void __ABCGetICUCollatorVersions_block_invoke()
{
  v1 = 0;
  if (ucol_open())
  {
    ucol_getVersion();
    ucol_getUCAVersion();
    ABCGetICUCollatorVersions_cachedCollatorVersion = 0;
    ABCGetICUCollatorVersions_cachedUCAVersion = 0;
    ucol_close();
  }

  else
  {
    v0 = ABOSLogGeneral();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __ABCGetICUCollatorVersions_block_invoke_cold_1(&v1, v0);
    }
  }
}

uint64_t ABLogSqliteTrace()
{
  if (_initIfNeeded_onceToken != -1)
  {
    ABDiagnosticsEnabled_cold_1();
  }

  return ABDiagnosticsEnabled() & __ABLogSqliteTrace;
}

uint64_t ABCDBContextCreateWithPathAndAddressBook(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = CPRecordStoreCreateWithPathAndOptions();
  if (v3)
  {
    if (a2)
    {
      *(a2 + 264) = ABTCCIsAccessUnknown();
      *(a2 + 265) = ABTCCIsAccessGranted();
    }

    CPRecordStoreSetSetupHandler();
    CPRecordStoreLogChanges();
    Database = CPRecordStoreGetDatabase();
    CPSqliteDatabaseSetVersion();
    CPSqliteDatabaseSetJournalModeWAL();
    CPSqliteDatabaseSetAccessRequestHandler();
    CPSqliteDatabaseSetDataProtectionLevel();
    CPSqliteDatabaseSetAutoRetryStatements();
    CPSqliteDatabaseSetShouldUseInhibitorForConnections();
    *(Database + 264) = a2;
    CPSqliteDatabaseSetConnectionInitializer();
    CPSqliteDatabaseSetCorruptionHandler();
    CPSqliteDatabaseSetDatabaseDeletedCallback();
    *recordStoreContext(v3) = a2;
    CPSqliteDatabaseSetShouldMigrateInProcess();
    CPSqliteDatabaseSetMigrationPluginBundleID();
    CPSqliteDatabaseSetMigrationHandlers();
    CPSqliteDatabaseSetShouldYieldWhenRequested();
    CPSqliteDatabaseSetShouldRequestUnlock();
  }

  else
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "ABCDBContextRef ABCDBContextCreateWithPathAndAddressBook(CFStringRef, ABCAddressBookRef, void *, _Bool)", 1247, 0, @"Could not create address book database", v5, v6, v7, v9);
  }

  return v3;
}

uint64_t ABRegisterSQLiteICUTokenizer(sqlite3 *a1)
{
  if (gFTSEabled != 1)
  {
    return 101;
  }

  ppStmt[3] = v1;
  ppStmt[4] = v2;
  ppStmt[0] = 0;
  result = sqlite3_db_config(a1, 1004, 1, 0);
  if (!result)
  {
    result = sqlite3_prepare_v2(a1, "SELECT fts3_tokenizer(?, ?)", -1, ppStmt, 0);
    if (!result)
    {
      v5 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040CD2B339FuLL);
      v7 = v5;
      *v5 = 0;
      v5[1] = ABCFFTSTokenizerCreate;
      v5[2] = ABCFFTSTokenizerDestroy;
      v5[3] = ABCFFTSTokenizerOpen;
      v5[4] = ABCFFTSTokenizerClose;
      v5[5] = ABCFFTSTokenizerNext;
      v5[6] = a1;
      sqlite3_bind_text(ppStmt[0], 1, "ab_cf_tokenizer", -1, 0);
      sqlite3_bind_blob(ppStmt[0], 2, &v7, 8, 0);
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x6004073DA8B2BuLL);
      v6[3] = v7;
      ABCFTSSetCollationContextForDatabaseConnectionHandle(a1, v6);
      sqlite3_create_function(a1, "ab_cf_tokenizer_namerank", 2, 1, 0, ABCFFTSTokenizerNameRankFunction, 0, 0);
      sqlite3_create_function(a1, "ab_cf_tokenizer_matched_properties", 2, 1, 0, ABCFFTSTokenizerPropertyMatchFunction, 0, 0);
      sqlite3_create_function(a1, "ab_cf_tokenizer_sd_matched_properties", 2, 1, 0, ABCFSmartDialerFTSTokenizerPropertyMatchFunction, 0, 0);
      sqlite3_create_function(a1, "ab_cf_tokenizer_match_collect", 4, 1, 0, ABCFFTSTokenizerPropertyMatchCollectFunction, 0, 0);
      sqlite3_create_function(a1, "ab_cf_tokenizer_sd_match_collect", 4, 1, 0, ABCFSmartDialerFTSTokenizerPropertyMatchCollectFunction, 0, 0);
      sqlite3_create_function(a1, "ab_cf_tokenizer_select_snippet_column", 1, 1, 0, ABCFFTSTokenizerSelectSnippetColumnFunction, 0, 0);
      sqlite3_step(ppStmt[0]);
      return sqlite3_finalize(ppStmt[0]);
    }
  }

  return result;
}

uint64_t ABCFTSSetCollationContextForDatabaseConnectionHandle(const void *a1, const void *a2)
{
  if (ABCFTSGetCollationContextDictionary_predicate != -1)
  {
    ABCFTSGetCollationContextForDatabaseConnectionHandle_cold_1();
  }

  v4 = ABCFTSGetCollationContextDictionary_collalationContextDict;
  pthread_mutex_lock(&gDictionaryMutex);
  if (a2)
  {
    CFDictionarySetValue(v4, a1, a2);
  }

  else
  {
    CFDictionaryRemoveValue(v4, a1);
  }

  return pthread_mutex_unlock(&gDictionaryMutex);
}

uint64_t ABCIsSortDataValid(uint64_t a1, BOOL *a2)
{
  v17 = 0;
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v3 = ABCGetICUVersion();
  ABCGetICUCollatorVersions(&v17 + 1, &v17);
  v4 = CPSqliteConnectionIntegerForProperty();
  v5 = CPSqliteConnectionIntegerForProperty();
  v6 = CPSqliteConnectionIntegerForProperty();
  v7 = CPSqliteConnectionIntegerForProperty();
  v8 = CPSqliteConnectionIntegerForProperty();
  v9 = 0;
  if (v3 == v4 && v5 == 42 && HIDWORD(v17) == v6)
  {
    v9 = v17 == v7;
  }

  if (a2)
  {
    *a2 = v9;
  }

  if (v8 >= 1 || !v9)
  {
    return 0;
  }

  v11 = CPSqliteConnectionCopyValueForProperty();
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  v13 = ABCCopyUserLanguage();
  if (v13)
  {
    v14 = v13;
    v15 = CFStringCompare(v13, v12, 1uLL) == kCFCompareEqualTo;
    CFRelease(v14);
  }

  else
  {
    v15 = 1;
  }

  CFRelease(v12);
  return v15;
}

CFTypeRef ABPersonCopyPreferredLinkedPersonForName(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCopyPreferredLinkedPersonForName(ABRecordRef)", 3057, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  result = _copyPreferredPersonWithPreferredColumnIfExists(a1, 1);
  if (!result)
  {

    return CFRetain(a1);
  }

  return result;
}

uint64_t ABCGetAddressBookForRecord()
{
  result = CPRecordGetStore();
  if (result)
  {

    return ABCDBContextGetAddressBook(result);
  }

  return result;
}

ABRecordRef ABAddressBookGetSourceWithRecordID(ABAddressBookRef addressBook, ABRecordID sourceID)
{
  v2 = *&sourceID;
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "ABRecordRef ABAddressBookGetSourceWithRecordID(ABAddressBookRef, ABRecordID)", 295, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCSourceGetRecordForUniqueID(addressBook, v2);
}

uint64_t ABCSourceGetRecordForUniqueID(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return ABCDBContextRecordForUIDOfType(*(result + 16), a2, ABCSourceClass);
  }

  return result;
}

uint64_t ABRecordGetIntValue(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "int ABRecordGetIntValue(ABRecordRef, ABPropertyID)", 183, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  v8 = ABCRecordCopyValue(a1, a2);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "int ABRecordGetIntValue(ABRecordRef, ABPropertyID)", 185, @">> ", 0, v9, v10, v11, v13);
  }

  return v8;
}

CFTypeRef ABAddressBookCopyMe(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopyMe(ABAddressBookRef)", 1267, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  if (!a1)
  {
    goto LABEL_11;
  }

  IntegerProperty = ABAddressBookGetIntegerProperty(a1);
  if (IntegerProperty == -1)
  {
    goto LABEL_11;
  }

  SourceWithRecordID = ABAddressBookGetSourceWithRecordID(a1, IntegerProperty);
  if (!SourceWithRecordID)
  {
    goto LABEL_11;
  }

  v10 = SourceWithRecordID;
  Me = ABSourceGetMe(SourceWithRecordID);
  if (!Me || (v12 = ABPersonCopyPreferredLinkedPersonForName(Me)) == 0)
  {
    v13 = ABOSLogMeCardChanges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7EFB000, v13, OS_LOG_TYPE_INFO, "Could not copy the Me card", buf, 2u);
    }

    ABSourceSetMe(v10, 0, 0);
LABEL_11:
    v12 = 0;
  }

  if (ABLogAPIUsage())
  {
    v14 = ABLogStringForPerson(v12);
    _ABLog2(6, "ABRecordRef ABAddressBookCopyMe(ABAddressBookRef)", 1288, @">> ", @"me=%@", v15, v16, v17, v14);
  }

  return v12;
}

ABRecordRef ABSourceGetMe(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABSourceGetMe(ABRecordRef)", 1048, v2, 0, v3, v4, v5, v10);
    CFRelease(v2);
  }

  IntValue = ABRecordGetIntValue(a1, kABSourceMeIdentifierProperty);
  if (IntValue == -1)
  {
    return 0;
  }

  v7 = IntValue;
  AddressBook = ABRecordGetAddressBook();

  return ABAddressBookGetPersonWithRecordID(AddressBook, v7);
}

uint64_t ABRecordGetAddressBook()
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABAddressBookRef ABRecordGetAddressBook(ABRecordRef)", 195, v0, 0, v1, v2, v3, v10);
    CFRelease(v0);
  }

  v4 = ABCGetAddressBookForRecord();
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABAddressBookRef ABRecordGetAddressBook(ABRecordRef)", 197, @">> ", 0, v5, v6, v7, v9);
  }

  return v4;
}

ABRecordRef ABAddressBookGetPersonWithRecordID(ABAddressBookRef addressBook, ABRecordID recordID)
{
  v2 = *&recordID;
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(addressBook);
    _ABLog2(6, "ABRecordRef ABAddressBookGetPersonWithRecordID(ABAddressBookRef, ABRecordID)", 779, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  return ABCPersonGetRecordForUniqueID(addressBook, v2);
}

uint64_t ABAddressBookGetSequenceNumber(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "int ABAddressBookGetSequenceNumber(ABAddressBookRef)", 976, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "int ABAddressBookGetSequenceNumber(ABAddressBookRef)", 982, @">> ", @"sequenceNumber=%i", v9, v10, v11, SequenceNumber);
  }

  return SequenceNumber;
}

void ABAddressBookConfigureDelegateOptions(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 objectForKey:@"ABAddressBookCreateOptionFamilyMemberAltDSID"];
    v5 = [a2 objectForKey:@"ABAddressBookCreateOptionFamilyMemberACAccountID"];
    if (v4)
    {
      v6 = v5;
      ABAddressBookPrepareSourceForFamilyDelegate(a1, v4);
      if (v6)
      {

        ABAddressBookPrepareAccountForFamilyDelegate(a1, v4, v6);
      }
    }
  }
}

void ABCAddressBookInvalidateCaches(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v3 = OUTLINED_FUNCTION_11(v10, v2, @"<< Main thread:%@ | ");
    ABLogAddressBook(a1);
    v4 = OUTLINED_FUNCTION_7();
    _ABLog2(v4, v5, 1431, v3, v6, v7, v8, v9, v10);
    CFRelease(v3);
  }

  if (*(a1 + 16))
  {
    CPRecordStoreInvalidateCaches();
  }

  if (*(a1 + 24))
  {
    CPRecordStoreInvalidateCaches();
  }

  ABCAddressBookFlushPhoneCache(a1);
  OUTLINED_FUNCTION_5();
}

void *OUTLINED_FUNCTION_7_0(uint64_t a1)
{
  v2 = a1 + 1;

  return malloc_type_malloc(v2, 0x100004077774924uLL);
}

CFStringRef OUTLINED_FUNCTION_7_1(char *cStr)
{
  v4 = *v1;

  return CFStringCreateWithCString(v4, cStr, 0x8000100u);
}

void ABCAddressBookFlushPhoneCache(uint64_t a1)
{
  if (a1 && *(a1 + 40))
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 48) = 0;
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 56) = 0;
    }

    CFRelease(*(a1 + 40));
    *(a1 + 40) = 0;
  }
}

uint64_t ABAddressBookGetIntegerProperty(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "int ABAddressBookGetIntegerProperty(ABAddressBookRef, CFStringRef)", 930, v3, @"%@, key=%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v8 = CPSqliteConnectionIntegerForPropertyWithDefaultValue();
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "int ABAddressBookGetIntegerProperty(ABAddressBookRef, CFStringRef)", 936, @">> ", @"value=%i", v9, v10, v11, v8);
  }

  return v8;
}

uint64_t recordStoreContext(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    Context = malloc_type_calloc(1uLL, 0x68uLL, 0xE0040B79FBFCFuLL);
    CPRecordStoreSetContext();
  }

  return Context;
}

void ABCGetICUCollatorVersions(_DWORD *a1, _DWORD *a2)
{
  if (ABCGetICUCollatorVersions_onceToken == -1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ABCGetICUCollatorVersions_cold_1();
  if (a2)
  {
LABEL_3:
    *a2 = ABCGetICUCollatorVersions_cachedUCAVersion;
  }

LABEL_4:
  if (a1)
  {
    *a1 = ABCGetICUCollatorVersions_cachedCollatorVersion;
  }
}

uint64_t ABCGetICUVersion()
{
  *versionArray = 0;
  u_getVersion(versionArray);
  return (versionArray[0] << 24) | (versionArray[1] << 16);
}

CFLocaleIdentifier ABCCopyUserLanguage()
{
  v0 = CFPreferencesCopyAppValue(@"AppleLanguages", *MEMORY[0x1E695E890]);
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  if (CFArrayGetCount(v0) <= 0)
  {
    CFRelease(v1);
LABEL_6:
    CanonicalLanguageIdentifierFromString = @"en";
    CFRetain(@"en");
    return CanonicalLanguageIdentifierFromString;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, ValueAtIndex);
  CFRelease(v1);
  if (!CanonicalLanguageIdentifierFromString)
  {
    goto LABEL_6;
  }

  return CanonicalLanguageIdentifierFromString;
}

uint64_t ABPeoplePickerPrefs()
{
  result = ABPeoplePickerPrefs__peoplePickerPrefs;
  if (!ABPeoplePickerPrefs__peoplePickerPrefs)
  {
    if (ABPeoplePickerPrefs___once_peoplePickerPrefs != -1)
    {
      ABPeoplePickerPrefs_cold_1();
    }

    return ABPeoplePickerPrefs__peoplePickerPrefs;
  }

  return result;
}

uint64_t __ABPeoplePickerPrefs_block_invoke()
{
  result = CPCopySharedResourcesPreferencesDomainForDomain();
  ABPeoplePickerPrefs__peoplePickerPrefs = result;
  return result;
}

os_log_t __ABOSLogImageMetadata_block_invoke()
{
  result = os_log_create("com.apple.contacts.AddressBookLegacy", "image-metadata");
  ABOSLogImageMetadata_imageMetadataLog = result;
  return result;
}

uint64_t ABOSLogImageMetadata()
{
  if (ABOSLogImageMetadata_onceToken != -1)
  {
    ABOSLogImageMetadata_cold_1();
  }

  return ABOSLogImageMetadata_imageMetadataLog;
}

uint64_t ABCDBContextGetAddressBook(uint64_t a1)
{
  result = recordStoreContext(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t ABCPersonGetRecordForUniqueID(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return ABCDBContextRecordForUIDOfType(*(result + 16), a2, ABCPersonClass);
  }

  return result;
}

CFTypeRef _copyPreferredPersonWithPreferredColumnIfExists(uint64_t a1, int a2)
{
  v4 = ABCGetAddressBookForRecord();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  IntValue = ABRecordGetIntValue(a1, kABPersonLinkProperty);
  if (IntValue == -1)
  {
    return 0;
  }

  v7 = IntValue;
  CPRecordStoreGetDatabase();
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  v9 = SelectPrefix;
  v10 = a2 ? @" JOIN ABPersonLink abl ON abp.PersonLink = abl.ROWID WHERE (abp.personLink = ? AND abl.PreferredNamePersonID = abp.ROWID)" : @" JOIN ABPersonLink abl ON abp.PersonLink = abl.ROWID WHERE (abp.personLink = ? AND abl.PreferredImagePersonID = abp.ROWID)";
  CFStringAppend(SelectPrefix, v10);
  v11 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(v5);
  CFRelease(v9);
  if (v11 && (v12 = *(v11 + 8)) != 0)
  {
    sqlite3_bind_int(v12, 1, v7);
    v13 = CPRecordStoreProcessStatementWithPropertyIndices();
    CPSqliteStatementReset();
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return 0;
  }

  if (CFArrayGetCount(v13) < 1)
  {
    v15 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
    v15 = CFRetain(ValueAtIndex);
  }

  CFRelease(v13);
  return v15;
}

CFTypeRef ABRecordCopyValue(ABRecordRef record, ABPropertyID property)
{
  if (ABLogAPIUsage())
  {
    v17 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFTypeRef ABRecordCopyValue(ABRecordRef, ABPropertyID)", 88, v4, 0, v5, v6, v7, v17);
    CFRelease(v4);
  }

  v8 = CPRecordCopyProperty();
  valuePtr = v8;
  if (kABPersonCreationDateProperty == property || kABPersonModificationDateProperty == property)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    v10 = CFDateCreate(*MEMORY[0x1E695E480], v8);
    goto LABEL_12;
  }

  PropertyType = ABRecordGetPropertyType(record, property);
  if (PropertyType == 2)
  {
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
LABEL_12:
    valuePtr = v10;
  }

LABEL_13:
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFTypeRef ABRecordCopyValue(ABRecordRef, ABPropertyID)", 116, @">> ", 0, v12, v13, v14, v16);
  }

  return valuePtr;
}

uint64_t ABRecordGetPropertyType(const void *a1, int a2)
{
  RecordType = ABRecordGetRecordType(a1);
  if (RecordType == 1)
  {

    return ABGroupGetTypeOfProperty(a2);
  }

  else if (RecordType)
  {

    return ABSourceGetTypeOfProperty(a2);
  }

  else
  {

    return ABPersonGetTypeOfProperty(a2);
  }
}

ABRecordType ABRecordGetRecordType(ABRecordRef record)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v1 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordType ABRecordGetRecordType(ABRecordRef)", 40, v1, 0, v2, v3, v4, v12);
    CFRelease(v1);
  }

  RecordType = ABCRecordGetRecordType();
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABRecordType ABRecordGetRecordType(ABRecordRef)", 51, @">> ", 0, v6, v7, v8, v11);
  }

  if (RecordType == 258)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (RecordType == 257)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t ABCRecordGetRecordType()
{
  Class = CPRecordGetClass();
  if (Class == ABCGroupClass[0])
  {
    v1 = 258;
  }

  else
  {
    v1 = 259;
  }

  if (Class == ABCPersonClass)
  {
    return 257;
  }

  else
  {
    return v1;
  }
}

ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID property)
{
  if (ABLogAPIUsage())
  {
    v13 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID)", 286, v2, 0, v3, v4, v5, v13);
    CFRelease(v2);
  }

  if (kABPersonModificationDateProperty == property || kABPersonCreationDateProperty == property)
  {
    v7 = 4;
  }

  else
  {
    v7 = ABCPersonTypeOfProperty(property);
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID)", 294, @">> ", 0, v8, v9, v10, v12);
  }

  return v7;
}

uint64_t ABCAddressBookGetPersonRecordDescriptorForPrefetchQueries(uint64_t a1)
{
  result = *(a1 + 376);
  if (!result)
  {
    v3 = malloc_type_malloc(0x98uLL, 0x10F0040C975631FuLL);
    *(a1 + 376) = v3;
    v4 = ABCPersonClass;
    v5 = ABCPersonClass[6];
    v6 = ABCPersonClass[7];
    v7 = ABCPersonClass[8];
    v3[18] = *(ABCPersonClass + 18);
    *(v3 + 7) = v6;
    *(v3 + 8) = v7;
    *(v3 + 6) = v5;
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    *(v3 + 4) = v4[4];
    *(v3 + 5) = v10;
    *(v3 + 2) = v8;
    *(v3 + 3) = v9;
    v11 = v4[1];
    *v3 = *v4;
    *(v3 + 1) = v11;
    v12 = 40 * *(ABCPersonClass + 18);
    v13 = malloc_type_malloc(v12, 0x9DB4D37CuLL);
    *(*(a1 + 376) + 80) = v13;
    memcpy(v13, *(ABCPersonClass + 10), v12);
    return *(a1 + 376);
  }

  return result;
}

uint64_t ABAddressBookGetPreferredNamePeopleCount(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFIndex ABAddressBookGetPreferredNamePeopleCount(ABAddressBookRef)", 1140, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return ABCGetPersonCountInSourceShowingLinks(a1, 0, 1);
}

ABPersonSortOrdering ABPersonGetSortOrdering(void)
{
  valuePtr = 1;
  v0 = ABPeoplePickerPrefs();
  v1 = CFPreferencesCopyAppValue(@"contactsSortOrder", v0);
  if (v1)
  {
    goto LABEL_2;
  }

  v3 = _abCopyCardDisplayDictionary();
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, @"contactsSortOrder");
    if (Value)
    {
      v1 = Value;
      CFRetain(Value);
      CFRelease(v4);
LABEL_2:
      CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v1);
      return valuePtr;
    }

    CFRelease(v4);
  }

  return 1;
}

uint64_t ABRegulatoryLogReadContactsData(uint64_t a1)
{
  result = _shouldRegulatoryLog(a1);
  if (result)
  {
    [objc_msgSend(MEMORY[0x1E6996800] "sharedInstanceForAddressBook")];
    v2 = [MEMORY[0x1E6996800] sharedInstanceForAddressBook];

    return [v2 logContactsDataAccessEvent];
  }

  return result;
}

uint64_t _shouldRegulatoryLog(uint64_t a1)
{
  if (!a1 || ABAddressBookIsUsedByContacts(a1))
  {
    return 0;
  }

  v2 = [MEMORY[0x1E6996648] sharedInstance];

  return [v2 isAccessGranted];
}

uint64_t ABCreateNormalizedPhoneNumberAndDecompose(void *a1, uint64_t a2, int a3, uint64_t *a4, _OWORD *a5)
{
  v7 = a1;
  if (a3)
  {
    v7 = [a1 _cn_stringBySanitizingPhoneNumber];
  }

  if (!v7)
  {
    return 0;
  }

  v8 = PNCopyBestGuessNormalizedNumberForCountry();
  if (v8)
  {
    if (a4)
    {
      *a4 = _PNCopyLastFourDigitsOfLocalNumber();
    }

    if (a5)
    {
      v9 = MEMORY[0x1E69986A8];
      v10 = *(MEMORY[0x1E69986A8] + 16);
      *a5 = *MEMORY[0x1E69986A8];
      a5[1] = v10;
      v11 = *(v9 + 48);
      a5[2] = *(v9 + 32);
      a5[3] = v11;
      decomposePhoneNumber();
    }
  }

  return v8;
}

void AppendPropertyBlobData(int a1, int a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [objc_msgSend(a3 "query")];
  CPRecordStoreGetDatabase();
  v7 = CPSqliteDatabaseConnectionForWriting();
  ppBlob = 0;
  v8 = *(*(*(v6 + 376) + 80) + 40 * a2);
  v9 = sqlite3_blob_open(*(v7 + 8), "main", "ABPerson", v8, a1, 0, &ppBlob);
  if (v9)
  {
    if (v9 == 21)
    {
      v10 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v23 = a3;
        v24 = 2080;
        v25 = v8;
        v26 = 1024;
        v27 = a1;
        _os_log_error_impl(&dword_1B7EFB000, v10, OS_LOG_TYPE_ERROR, "ABBufferQueryCursor (%p) AppendPropertyBlobData, SQLITE_MISUSE opening blob %s from recordID %d", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v11 = sqlite3_blob_bytes(ppBlob);
    if (v11 > 0)
    {
      v18 = 2;
      v19 = a2;
      v20 = v11;
      [objc_msgSend(a3 "mutableData")];
      v12 = [objc_msgSend(a3 "mutableData")];
      v13 = v20;
      [objc_msgSend(a3 "mutableData")];
      v14 = [objc_msgSend(a3 "mutableData")];
      v15 = [objc_msgSend(a3 "mutableData")];
      v16 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [a3 mutableData];
        *buf = 134219522;
        v23 = a3;
        v24 = 2080;
        v25 = v8;
        v26 = 1024;
        v27 = a1;
        v28 = 2048;
        v29 = v17;
        v30 = 2048;
        v31 = v12;
        v32 = 2048;
        v33 = v13;
        v34 = 2048;
        v35 = v15;
        _os_log_impl(&dword_1B7EFB000, v16, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p) AppendPropertyBlobData, reading %s from recordID %d into buffer (%p), [%lu + %lu = %lu]", buf, 0x44u);
      }

      sqlite3_blob_read(ppBlob, (v14 + v12), v13, 0);
    }

    sqlite3_blob_close(ppBlob);
  }
}

CFStringRef ABCImageStoreCreateWithAddressBookAndForceInProcessMigration(uint64_t a1)
{
  result = ABCImageStoreCopyPath(a1);
  if (result)
  {
    v2 = result;
    v3 = ABCImageStoreCreateWithPathAndForceInProcessMigration();
    CFRelease(v2);
    return v3;
  }

  return result;
}

CFStringRef ABCImageStoreCopyPath(uint64_t a1)
{
  if (a1)
  {
    v1 = ABCAddressBookCopyAddressBookDBDirectory(a1);
  }

  else
  {
    v1 = ABCAddressBookCopyDBDirectory();
  }

  v2 = v1;
  v3 = ABCImageStoreCopyDatabasePathForDatabaseDirectory(v1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

CFStringRef ABCImageStoreCopyDatabasePathForDatabaseDirectory(CFStringRef URLString)
{
  v1 = *MEMORY[0x1E695E480];
  if (URLString)
  {
    v2 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
    if (!v2)
    {
      return 0;
    }

    v3 = v2;
    v4 = CFURLCreateCopyAppendingPathComponent(v1, v2, @"AddressBookImages.sqlitedb", 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFURLGetString(v4);
      if (v6)
      {
        Copy = CFStringCreateCopy(v1, v6);
      }

      else
      {
        Copy = 0;
      }

      CFRelease(v5);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v3);
    return Copy;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];

    return CFStringCreateWithCString(v8, ":memory:", 0x8000100u);
  }
}

CFTypeRef ABCAddressBookCopyAddressBookDBDirectory(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t ABCImageStoreCreateWithPathAndForceInProcessMigration()
{
  v0 = CPRecordStoreCreateWithPath();
  if (v0)
  {
    CPRecordStoreSetSetupHandler();
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseSetVersion();
    CPSqliteDatabaseSetAutoVacuumLevel();
    CPSqliteDatabaseSetJournalModeWAL();
    CPSqliteDatabaseSetAccessRequestHandler();
    CPSqliteDatabaseSetDataProtectionLevel();
    CPSqliteDatabaseSetAutoRetryStatements();
    CPSqliteDatabaseSetShouldUseInhibitorForConnections();
    CPSqliteDatabaseSetConnectionInitializer();
    CPSqliteDatabaseSetDatabaseDeletedCallback();
    CPSqliteDatabaseSetShouldMigrateInProcess();
    CPSqliteDatabaseSetMigrationHandlers();
    CPSqliteDatabaseSetShouldYieldWhenRequested();
    CPSqliteDatabaseSetShouldRequestUnlock();
    CPRecordStoreRegisterClass();
    CPRecordStoreRegisterClass();
    CPRecordStoreRegisterClass();
  }

  return v0;
}

CFStringRef ABCAddressBookGetImageStore(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    result = result->length;
    if (!result)
    {
      result = ABCImageStoreCreateWithAddressBook(v1);
      *(v1 + 24) = result;
    }
  }

  return result;
}

uint64_t AppendImageData(int a1, int a2, char a3, uint64_t a4, void *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  ABCAddressBookGetImageStore([objc_msgSend(a5 "query")]);
  v10 = [objc_msgSend(a5 "query")];
  if (a2 == 2)
  {
    v11 = &stru_1F2FE2718;
    if (v10)
    {
      v11 = @", crop_x , crop_y , crop_width";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ROWID %@ FROM ABFullSizeImage WHERE record_id = ?;", v11];
  }

  CPRecordStoreGetDatabase();
  v12 = CPSqliteDatabaseConnectionForReading();
  v13 = CPSqliteConnectionStatementForSQL();
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + 8);
    if (v15)
    {
      sqlite3_bind_int(v15, 1, a1);
      if (a2 != 2)
      {
        sqlite3_bind_int(*(v14 + 8), 2, a2);
      }

      if (sqlite3_step(*(v14 + 8)) != 100)
      {
        goto LABEL_31;
      }

      memset(&v30[1], 0, 13);
      v30[0] = 6;
      v32 = 0;
      v31 = a2;
      v16 = sqlite3_column_int64(*(v14 + 8), 0);
      if (a2 == 2 && [objc_msgSend(a5 "query")])
      {
        v30[1] = 1;
        *&v30[2] = sqlite3_column_int(*(v14 + 8), 1);
        *&v30[6] = sqlite3_column_int(*(v14 + 8), 2);
        *&v30[10] = sqlite3_column_int(*(v14 + 8), 3);
      }

      else
      {
        v30[1] = 0;
      }

      ppBlob = 0;
      if ((a3 & 1) == 0)
      {
        v18 = a2 == 2 ? "ABFullSizeImage" : "ABThumbnailImage";
        if (!sqlite3_blob_open(*(v12 + 8), "main", v18, "data", v16, 0, &ppBlob))
        {
          v19 = sqlite3_blob_bytes(ppBlob);
          v20 = v19;
          v32 = v19;
          v21 = ABOSLogImageMetadata();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [a5 mutableData];
            *buf = 134219008;
            v34 = a5;
            v35 = 1024;
            v36 = a2;
            v37 = 1024;
            v38 = a1;
            v39 = 2048;
            v40 = v22;
            v41 = 2048;
            v42 = v20;
            _os_log_impl(&dword_1B7EFB000, v21, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p) AppendImageData, reading %d from recordID %d into buffer (%p), [%lu]", buf, 0x2Cu);
          }
        }
      }

      [objc_msgSend(a5 "mutableData")];
      [a5 setHasFoundAnyImageDataForCurrentContact:1];
      if (!ppBlob)
      {
        goto LABEL_31;
      }

      v23 = [objc_msgSend(a5 "mutableData")];
      v24 = v32;
      v25 = [objc_msgSend(a5 "mutableData")];
      v26 = v32 + v25;
      if (v26 > [a5 maxBufferSize])
      {
        if (v23 >= [a5 maxBufferSize])
        {
          v24 = 0;
LABEL_29:
          if (v24 != v32)
          {
            [a5 setBlobLength:?];
            [a5 setIncompleteBlob:ppBlob];
            [a5 setBlobBytesWritten:v24];
            [a5 setResumeToken:a4];
            v17 = 1;
            goto LABEL_32;
          }

          sqlite3_blob_close(ppBlob);
LABEL_31:
          v17 = 0;
LABEL_32:
          CPSqliteStatementReset();
          return v17;
        }

        v24 = [a5 maxBufferSize] - v23;
      }

      if (v24)
      {
        [objc_msgSend(a5 "mutableData")];
        v27 = [objc_msgSend(a5 "mutableData")];
        sqlite3_blob_read(ppBlob, (v27 + v23), v24, 0);
      }

      goto LABEL_29;
    }
  }

  return 0;
}

uint64_t ABPersonGetCompositeNameFormatAndDelimiterForRecord(const void *a1, CFStringRef *a2)
{
  if (ABLogAPIUsage())
  {
    v26 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPersonCompositeNameFormat ABPersonGetCompositeNameFormatAndDelimiterForRecord(ABRecordRef, CFStringRef *)", 1295, v4, 0, v5, v6, v7, v26);
    CFRelease(v4);
  }

  v8 = __personCompositeNameFormat;
  if (!a1)
  {
    v16 = @" ";
    goto LABEL_34;
  }

  v9 = ABKatakanaCharacterSet();
  v10 = ABChineseJapaneseKoreanCharacterSet();
  v11 = ABRecordCopyValue(a1, kABPersonFirstNameProperty);
  v12 = ABRecordCopyValue(a1, kABPersonMiddleNameProperty);
  v13 = ABRecordCopyValue(a1, kABPersonLastNameProperty);
  if (v11)
  {
    Length = CFStringGetLength(v11);
    if (v12)
    {
LABEL_6:
      v15 = CFStringGetLength(v12);
      goto LABEL_10;
    }
  }

  else
  {
    Length = 0;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_10:
  v17 = v15 + Length;
  if (v13)
  {
    v18 = CFStringGetLength(v13);
  }

  else
  {
    v18 = 0;
  }

  Mutable = CFStringCreateMutable(0, v17 + v18);
  if (Mutable)
  {
    v20 = Mutable;
    if (v11)
    {
      CFStringAppend(Mutable, v11);
    }

    if (v12)
    {
      CFStringAppend(v20, v12);
    }

    if (v13)
    {
      CFStringAppend(v20, v13);
    }

    v16 = @" ";
    if (CFStringGetLength(v20) >= 1)
    {
      if (ABContentsExclusivelyInCharacterSet(v20, v9))
      {
        v8 = 1;
        v16 = @"・";
      }

      else if (ABContentsExclusivelyInCharacterSet(v20, v10))
      {
        v16 = &stru_1F2FE2718;
        v8 = 1;
      }

      else
      {
        v8 = v8;
      }
    }

    CFRelease(v20);
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v16 = @" ";
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  CFRelease(v11);
LABEL_30:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

LABEL_34:
  if (a2)
  {
    *a2 = CFStringCreateCopy(*MEMORY[0x1E695E480], v16);
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABPersonCompositeNameFormat ABPersonGetCompositeNameFormatAndDelimiterForRecord(ABRecordRef, CFStringRef *)", 1340, @">> ", 0, v21, v22, v23, v25);
  }

  return v8;
}

uint64_t __ABAddressBookPersonBufferRowHandler_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = (*(a2 + 16))(a2);
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69966D0]);
    [v4 setData:{objc_msgSend(*(a1 + 32), "mutableData")}];
    [v4 setIdentifierAccountingData:{objc_msgSend(*(a1 + 32), "contactIdentifiers")}];
    [v4 setMatchInfo:{objc_msgSend(*(a1 + 32), "matchInfo")}];
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setCountOfContactsInBuffer:0];
    v5 = [objc_msgSend(*(a1 + 32) "mutableData")];
    [*(a1 + 32) setMutableData:{objc_msgSend(MEMORY[0x1E695DF88], "data")}];
    v6 = ABOSLogImageMetadata();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 134218496;
      v10 = v7;
      v11 = 2048;
      v12 = [v7 mutableData];
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1B7EFB000, v6, OS_LOG_TYPE_DEFAULT, "ABBufferQueryCursor (%p), re-created buffer (%p) [previous %lu]", &v9, 0x20u);
    }

    [objc_msgSend(*(a1 + 32) "matchInfo")];
    [objc_msgSend(*(a1 + 32) "contactIdentifiers")];
  }

  return v3;
}

uint64_t __ABAddressBookPersonBufferRowHandler_block_invoke_524(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [objc_msgSend(v1 "mutableData")];
  if (v4 >= [v1 maxBufferSize] || objc_msgSend(v1, "maxContactsPerBatch") >= 1 && (v5 = objc_msgSend(v1, "countOfContactsInBuffer"), v5 >= objc_msgSend(v1, "maxContactsPerBatch")))
  {
    v8 = 1;
    [v1 setResumeToken:1];
  }

  else
  {
    if (![v1 resumeToken] || objc_msgSend(v1, "resumeToken") == 1)
    {
      [v1 setResumeToken:0];
      [v1 setCountOfContactsInBuffer:{objc_msgSend(v1, "countOfContactsInBuffer") + 1}];
      v15 = 1;
      v16 = v3;
      value = 0;
      v6 = [objc_msgSend(v1 "query")];
      if (CFDictionaryGetValueIfPresent(v6, kABPersonInternalUUIDProperty, &value))
      {
        v7 = sqlite3_column_bytes(*(v2 + 8), value);
      }

      else
      {
        v7 = 0;
      }

      v17 = v7;
      [objc_msgSend(v1 "mutableData")];
      if (v17)
      {
        v9 = [v1 mutableData];
        v10 = sqlite3_column_blob(*(v2 + 8), value);
        [v9 appendBytes:v10 length:v17];
        if ([objc_msgSend(v1 "query")])
        {
          v11 = [v1 mutableData];
          v12 = [objc_msgSend(v1 "mutableData")];
          [v1 setCurrentRecordIndividualUniqueIDAuditData:{objc_msgSend(v11, "subdataWithRange:", v12 - v17)}];
          if ([objc_msgSend(v1 "query")] == 1 || !objc_msgSend(objc_msgSend(v1, "query"), "fetchLinkedContacts") || objc_msgSend(v1, "contactLinkUUIDColumn") == -1)
          {
            [objc_msgSend(v1 "contactIdentifiers")];
          }
        }
      }
    }

    return 0;
  }

  return v8;
}

uint64_t __ABAddressBookPersonBufferRowHandler_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (![v2 resumeToken] && ((objc_msgSend(objc_msgSend(v2, "query"), "requestedImageData") & 1) != 0 || objc_msgSend(objc_msgSend(v2, "query"), "requestedImageCropRect")))
  {
    if ([objc_msgSend(v2 "query")])
    {
      v4 = [objc_msgSend(v2 "query")] ^ 1;
    }

    else
    {
      v4 = 0;
    }

    appended = AppendImageData(v1, 2, v4, 2, v2);
  }

  else
  {
    if ([v2 resumeToken] == 2)
    {
      if (!AppendPendingBlobData(v2))
      {
        appended = 1;
        goto LABEL_13;
      }

      [v2 setResumeToken:0];
    }

    appended = 0;
  }

LABEL_13:
  if ([v2 resumeToken] || !objc_msgSend(objc_msgSend(v2, "query"), "requestedImageThumbnail"))
  {
    if ([v2 resumeToken] == 3)
    {
      if (AppendPendingBlobData(v2))
      {
        [v2 setResumeToken:0];
      }

      else
      {
        appended = 1;
      }
    }
  }

  else
  {
    appended = AppendImageData(v1, 0, 0, 3, v2);
  }

  if ([v2 resumeToken] || !objc_msgSend(objc_msgSend(v2, "query"), "requestedImageFullscreenData"))
  {
    if ([v2 resumeToken] == 4)
    {
      if (AppendPendingBlobData(v2))
      {
        [v2 setResumeToken:0];
      }

      else
      {
        appended = 1;
      }
    }
  }

  else
  {
    appended = AppendImageData(v1, 4, 0, 4, v2);
  }

  if ([v2 resumeToken] || !objc_msgSend(objc_msgSend(v2, "query"), "requestedSyncImageData"))
  {
    if ([v2 resumeToken] == 5)
    {
      if (AppendPendingBlobData(v2))
      {
        [v2 setResumeToken:0];
      }

      else
      {
        appended = 1;
      }
    }
  }

  else
  {
    appended = AppendImageData(v1, 5, 0, 5, v2);
  }

  if (![v2 resumeToken] && objc_msgSend(objc_msgSend(v2, "query"), "requestedHasImageData"))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = __AppendHasImageData_block_invoke;
    v14 = &unk_1E7CCD560;
    v15 = v2;
    if ([v2 hasFoundAnyImageDataForCurrentContact] & 1) != 0 || (objc_msgSend(objc_msgSend(v2, "query"), "requestedImageData") & 1) == 0 && (objc_msgSend(objc_msgSend(v2, "query"), "requestedImageCropRect") & 1) == 0 && ((v13)(v12, @"SELECT COUNT(ROWID) FROM ABFullSizeImage WHERE record_id = ? AND data IS NOT NULL;", v1))
    {
      v5 = 1;
    }

    else if ([objc_msgSend(v2 "query")] && (objc_msgSend(objc_msgSend(v2, "query"), "requestedImageFullscreenData") & 1) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = (v13)(v12, @"SELECT COUNT(ROWID) FROM ABThumbnailImage WHERE record_id = ? AND data IS NOT NULL;", v1);
    }

    v9 = 2;
    v10 = kABCPersonHasImageDataProperty;
    v11 = 4;
    v8 = v5;
    [objc_msgSend(v2 "mutableData")];
    v6 = [v2 mutableData];
    [v6 appendBytes:&v8 length:v11];
  }

  return appended;
}

void ABValueRowMapCollect(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 3)
  {
    v5 = sqlite3_value_int(a3[2]);
    v6 = sqlite3_value_blob(*a3);
    if (v6)
    {
      v7 = v6;
      v8 = sqlite3_value_text(a3[1]);
      if (v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
        v10 = NSMapGet(v7, v5);
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          NSMapInsert(v7, v5, v10);
        }

        [v10 addObject:v9];
      }
    }

    sqlite3_result_int(a1, v5);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

uint64_t ABCDBContextDestroy()
{
  CPRecordStoreGetDatabase();
  v0 = CPSqliteDatabaseConnectionForReading();
  if (v0)
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = 0;
  }

  Context = CPRecordStoreGetContext();
  if (Context)
  {
    v3 = Context;
    v4 = *(Context + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = v3[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v3[3];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = v3[4];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = v3[5];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = v3[6];
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = v3[7];
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = v3[8];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v3[9];
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = v3[10];
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = v3[11];
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = v3[12];
    if (v15)
    {
      CFRelease(v15);
    }

    free(v3);
  }

  CPRecordStoreDestroy();

  return ABCFTSCollationContextFreeContextForDatabaseHandle(v1);
}

void ABSqliteComparePhoneNumbers(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 4)
  {
    v5 = sqlite3_value_blob(*a3);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = sqlite3_value_text(a3[1]);
    v8 = sqlite3_value_text(a3[2]);
    v9 = sqlite3_value_blob(a3[3]);
    if (v8)
    {
      v10 = v9;
      v11 = strlen(v8);
      v12 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v8, v11, 0x8000100u, 0, *MEMORY[0x1E695E498]);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      if (v12)
      {
        v13 = v12;
        v14 = ABCreateNormalizedPhoneNumberAndDecompose(v12, v10, 0, 0, &v18);
        LODWORD(v8) = 0;
        if (v14)
        {
          v15 = v6 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          v16 = v14;
          LODWORD(v8) = 0;
          if (decomposedPhoneNumbersEqual())
          {
            if (v7 && (v17 = strlen(v7), !strncmp(v7, v16, v17)))
            {
              LODWORD(v8) = 2;
            }

            else
            {
              LODWORD(v8) = 1;
            }
          }

          free(v16);
        }

        CFRelease(v13);
      }

      else
      {
        LODWORD(v8) = 0;
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
    }

    sqlite3_result_int(a1, v8);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

void ABAddressBookUnregisterAllChangeCallbacks(uint64_t a1)
{
  if (!a1)
  {
    ABAddressBookUnregisterAllChangeCallbacks_cold_1();
  }

  v2 = *(a1 + 168);
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
    CFRelease(*(a1 + 168));
    *(a1 + 168) = 0;
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    CFArrayRemoveAllValues(v3);
    CFRelease(*(a1 + 176));
    *(a1 + 176) = 0;
  }
}

void ABCDestroyAddressBook(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      ABCDBContextDestroy();
    }

    if (*(a1 + 24))
    {
      CPRecordStoreDestroy();
    }

    if (*(a1 + 40))
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        CFRelease(v2);
      }

      v3 = *(a1 + 56);
      if (v3)
      {
        CFRelease(v3);
      }

      CFRelease(*(a1 + 40));
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 192);
    if (v5)
    {
      ABCReleaseCollator(v5);
    }

    v6 = *(a1 + 208);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 200);
    if (v7)
    {
      ABCReleaseCollator(v7);
    }

    v8 = *(a1 + 216);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 240);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 224);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a1 + 232);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 72);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(a1 + 256);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = *(a1 + 360);
    if (v15)
    {
      CFRelease(v15);
    }

    if (*(a1 + 272))
    {
      pthread_mutex_lock((a1 + 280));
      v16 = *(a1 + 272);
      *(a1 + 272) = 0;
      _Block_release(v16);
      pthread_mutex_unlock((a1 + 280));
    }

    pthread_mutex_destroy((a1 + 280));
    v17 = *(a1 + 344);
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(a1 + 368);
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = *(a1 + 376);
    if (v19)
    {
      if (v19[10])
      {
        free(v19[10]);
        v19 = *(a1 + 376);
      }

      free(v19);
    }

    ABAddressBookUnregisterAllExternalChangeCallbacks(a1);

    ABAddressBookUnregisterAllChangeCallbacks(a1);
  }
}

void ABAddressBookUnregisterAllExternalChangeCallbacks(CFMutableArrayRef *a1)
{
  v2 = a1[18];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[20], v4 - 2);
        releaseThreadHandle(ValueAtIndex);
        CFArrayRemoveValueAtIndex(a1[18], v4 - 2);
        CFArrayRemoveValueAtIndex(a1[19], v4 - 2);
        CFArrayRemoveValueAtIndex(a1[20], v4 - 2);
        --v4;
      }

      while (v4 > 1);
    }

    v6 = a1[18];
    if (v6)
    {
      CFRelease(v6);
      a1[18] = 0;
    }
  }

  v7 = a1[19];
  if (v7)
  {
    CFRelease(v7);
    a1[19] = 0;
  }

  v8 = a1[20];
  if (v8)
  {
    CFRelease(v8);
    a1[20] = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a1, @"ABCDataBaseChangedExternallyNotification", 0);
}

void ABAddressBookRegisterChangeCallback(uint64_t a1, const void *a2, const void *a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookRegisterChangeCallback(ABAddressBookRef, ABChangeCallback, void *)", 2174, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    ABAddressBookRegisterChangeCallback_cold_1();
  }

  Mutable = *(a1 + 168);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 168) = Mutable;
  }

  if (!*(a1 + 176))
  {
    *(a1 + 176) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    Mutable = *(a1 + 168);
  }

  CFArrayAppendValue(Mutable, a2);
  v13 = *(a1 + 176);

  CFArrayAppendValue(v13, a3);
}

void ABAddressBookRegisterExternalChangeCallback(ABAddressBookRef addressBook, ABExternalChangeCallback callback, void *context)
{
  if (ABLogAPIUsage())
  {
    v28 = _isMainThread();
    v7 = OUTLINED_FUNCTION_11(v28, v6, @"<< Main thread:%@ | ");
    ABLogAddressBook(addressBook);
    v8 = OUTLINED_FUNCTION_7();
    _ABLog2(v8, v9, 2019, v7, v10, v11, v12, v13, v28);
    CFRelease(v7);
  }

  if (addressBook)
  {
    if (!ABLinkedOnOrAfter() && *(addressBook + 264) && ABTCCIsAccessGranted())
    {
      v26 = copyCurrentThreadHandle();
      v14 = !ABAddressBookIsCallbackRegistered(addressBook, callback, context, v26);
    }

    else
    {
      v14 = 0;
    }

    pthread_mutex_lock((addressBook + 80));
    if (callback)
    {
      v15 = *(addressBook + 18);
      if (!v15 || !CFArrayGetCount(v15))
      {
        LocalCenter = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterAddObserver(LocalCenter, addressBook, ABCAddressBookDatabaseChanged, @"ABCDataBaseChangedExternallyNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      }

      if (!*(addressBook + 18))
      {
        *(addressBook + 20) = OUTLINED_FUNCTION_9();
        *(addressBook + 18) = OUTLINED_FUNCTION_9();
        *(addressBook + 19) = OUTLINED_FUNCTION_9();
      }

      v17 = *(addressBook + 20);
      v18 = copyCurrentThreadHandle();
      CFArrayAppendValue(v17, v18);
      CFArrayAppendValue(*(addressBook + 18), callback);
      if (context)
      {
        v19 = context;
      }

      else
      {
        v19 = *MEMORY[0x1E695E738];
      }

      CFArrayAppendValue(*(addressBook + 19), v19);
    }

    pthread_mutex_unlock((addressBook + 80));
    if (v14)
    {
      ABDiagnosticsEnabled();
      _ABLog2(5, "void ABAddressBookRegisterExternalChangeCallback(ABCAddressBookRef, ABExternalChangeCallback, void *)", 2053, 0, @"The external change callback was registered after the access status changed, invoking it now.", v20, v21, v22, v27);
      _ABCPostDatabaseChangedNotification(0, 1);
    }

    if (ABLogAPIUsage())
    {

      _ABLog2(6, "void ABAddressBookRegisterExternalChangeCallback(ABCAddressBookRef, ABExternalChangeCallback, void *)", 2057, @">> ", 0, v23, v24, v25, v30);
    }
  }
}

uint64_t ABLinkedOnOrAfter()
{
  if (__ABLinkedOnOrAfterSimulateLinkedBefore)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEDB8250]();
  }
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return CPSqliteConnectionSetIntegerForProperty();
}

id copyCurrentThreadHandle()
{
  v0 = [MEMORY[0x1E696AF00] currentThread];

  return v0;
}

uint64_t ABAddressBookCopyArrayOfUIDsMatchingEmailAddress(uint64_t a1, const __CFString *a2, void *a3, void *a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopyArrayOfUIDsMatchingEmailAddress(ABAddressBookRef, CFStringRef, CFArrayRef *, CFArrayRef *)", 1972, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  return ABCCopyArrayOfUIDsMatchingEmailAddress(a1, a2, a3, a4);
}

uint64_t _ABCDBContextCopyPersonUIDsWithMultivaluePropertyLikeIncludingLabels(uint64_t a1, int a2, const __CFString *a3, void *a4, void *a5)
{
  if (ABPhoneUtilitiesIgnoreMatchingForLostMode())
  {
    return 0;
  }

  usedBufLen = 0;
  *a5 = 0;
  *a4 = 0;
  CPRecordStoreGetDatabase();
  v11 = CPSqliteDatabaseStatementForReading();
  v12 = recordStoreContext(a1);
  if (v12)
  {
    v12 = *v12;
  }

  ABRegulatoryLogReadContactsData(v12);
  if (v11)
  {
    v13 = *(v11 + 8);
    if (v13)
    {
      sqlite3_bind_int(v13, 1, a2);
      Length = CFStringGetLength(a3);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v16 = malloc_type_malloc(MaximumSizeForEncoding + 2, 0x100004077774924uLL);
      if (v16)
      {
        v17 = v16;
        v19.location = 0;
        v19.length = Length;
        CFStringGetBytes(a3, v19, 0x8000100u, 0, 0, v16, MaximumSizeForEncoding, &usedBufLen);
        *&v17[usedBufLen] = 37;
        sqlite3_bind_text(*(v11 + 8), 2, v17, -1, MEMORY[0x1E69E9B38]);
        CPSqliteStatementSendResults();
        CPSqliteStatementReset();
        CPSqliteDatabaseReleaseSqliteStatement();
      }
    }
  }

  return 0;
}

uint64_t _getLostMode()
{
  v0 = _isDeviceLocked_AB_MKBGetDeviceLockState;
  if (_isDeviceLocked__MobileKeyBagFrameworkHandle)
  {
    v1 = _isDeviceLocked_AB_MKBGetDeviceLockState == 0;
  }

  else
  {
    v1 = 1;
  }

  if (!v1 || ([ABDynamicLoader loadFrameworkAtPath:@"/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag" andStoreHandle:&_isDeviceLocked__MobileKeyBagFrameworkHandle bundle:0], v0 = dlsym(_isDeviceLocked__MobileKeyBagFrameworkHandle, "MKBGetDeviceLockState"), (_isDeviceLocked_AB_MKBGetDeviceLockState = v0) != 0))
  {
    if (v0(0) - 1 > 1)
    {
      result = 0;
      goto LABEL_15;
    }
  }

  if (!__FindMyDeviceFramework)
  {
    v2 = objc_opt_new();
    if ([ABDynamicLoader loadFrameworkAtPath:@"System/Library/PrivateFrameworks/FindMyDevice.framework/FindMyDevice" andStoreHandle:&__FindMyDeviceFramework bundle:0])
    {
      __FMDFMIPManager = NSClassFromString(&cfstr_Fmdfmipmanager.isa);
      __kLostModeChangedRestrictedNotification = *dlsym(__FindMyDeviceFramework, "kLostModeChangedRestrictedNotification");
    }
  }

  result = __FMDFMIPManager;
  if (__FMDFMIPManager)
  {
    result = [objc_msgSend(__FMDFMIPManager "sharedInstance")];
LABEL_15:
    _ignoreMatchingForLostMode = result;
  }

  return result;
}

void _ABPhoneUtilitiesInitializeLostMode()
{
  _getLostMode();
  if (__kLostModeChangedRestrictedNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v1 = __kLostModeChangedRestrictedNotification;

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __LostModeChanged, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void AppendBaseProperties(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (![a2 resumeToken])
  {
    Count = CFDictionaryGetCount([objc_msgSend(a2 "query")]);
    v5 = (MEMORY[0x1EEE9AC00])();
    v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    MEMORY[0x1EEE9AC00](v5);
    v9 = (&v13 - v8);
    CFDictionaryGetKeysAndValues([objc_msgSend(a2 "query")], v7, (&v13 - v8));
    if (Count)
    {
      v10 = kABPersonInternalUUIDProperty;
      do
      {
        if (*v7 != v10)
        {
          if (sqlite3_column_bytes(*(a1 + 8), *v9))
          {
            v17 = 0;
            v18[0] = 0.0;
            v14 = 0;
            v15 = 2;
            v16 = *v7;
            TypeOfProperty = ABPersonGetTypeOfProperty(v16);
            v13 = 0;
            GetBytePointerAndLengthForTypeAtColumn(a1, TypeOfProperty, *v9, &v14, &v13, v18);
            v17 = v13;
            [objc_msgSend(a2 "mutableData")];
            v12 = [a2 mutableData];
            [v12 appendBytes:v14 length:v17];
          }
        }

        v9 += 2;
        ++v7;
        --Count;
      }

      while (Count);
    }
  }
}

void GetBytePointerAndLengthForTypeAtColumn(uint64_t a1, int a2, int iCol, void *a4, uint64_t *a5, double *a6)
{
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (a2 != 4)
    {
      if (a2 == 5)
      {
LABEL_12:
        *a4 = sqlite3_column_blob(*(a1 + 8), iCol);
        v9 = sqlite3_column_bytes(*(a1 + 8), iCol);
LABEL_17:
        *a5 = v9;
        return;
      }

      goto LABEL_18;
    }

LABEL_15:
    *a4 = a6;
    *a6 = sqlite3_column_double(*(a1 + 8), iCol);
    v9 = 8;
    goto LABEL_17;
  }

  if (a2 <= 257)
  {
    if (a2 != 7 && a2 != 257)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a2 == 258)
  {
LABEL_16:
    *a4 = a6;
    *a6 = sqlite3_column_int(*(a1 + 8), iCol);
    v9 = 4;
    goto LABEL_17;
  }

  if (a2 == 260)
  {
    goto LABEL_15;
  }

LABEL_18:
  *a5 = 0;
  *a4 = 0;
}

ABRecordRef ABPersonCreate(void)
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordRef ABPersonCreate(void)", 278, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return ABCPersonCreateNewPerson(0);
}

const void *ABCPersonCreateNewPersonInSourceAndReturnError(uint64_t a1, const void *a2, CFErrorRef *a3)
{
  ABCInitializeLibrary();
  v6 = CPRecordCreate();
  if (!a2)
  {
    CPRecordSetProperty();
    CPRecordInitializeProperty();
    goto LABEL_6;
  }

  Policy = ABCSourceGetPolicy(a2);
  if (!Policy || ABPolicyShouldAddRecord(Policy, a1, v6, 0))
  {
    CPRecordSetProperty();
    CPRecordSetProperty();
LABEL_6:
    CPRecordInitializeProperty();
    return v6;
  }

  if (a3)
  {
    *a3 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 0, 0);
  }

  CFRelease(v6);
  return 0;
}

BOOL ABRecordSetValue(ABRecordRef record, ABPropertyID property, CFTypeRef value, CFErrorRef *error)
{
  v6 = *&property;
  if (ABLogAPIUsage())
  {
    v13 = _isMainThread();
    v8 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABRecordSetValue(ABRecordRef, ABPropertyID, CFTypeRef, CFErrorRef *)", 122, v8, 0, v9, v10, v11, v13);
    CFRelease(v8);
  }

  return ABCRecordSetValueAndReturnError(record, v6, value, error);
}

uint64_t ABCRecordSetValueAndReturnError(const void *a1, uint64_t a2, __CFString *a3, CFAllocatorRef *a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = ABCGetAddressBookForRecord();
  Class = CPRecordGetClass();
  if (Class == ABCGroupClass[0])
  {
    v10 = 258;
  }

  else
  {
    v10 = 259;
  }

  if (Class == ABCPersonClass)
  {
    v11 = 257;
  }

  else
  {
    v11 = v10;
  }

  allocator = 0;
  if (a4)
  {
    p_allocator = &allocator;
  }

  else
  {
    p_allocator = 0;
  }

  if (kABPersonInternalUUIDProperty == a2)
  {
    if (!a3 || (v13 = CFGetTypeID(a3), v13 != CFStringGetTypeID()) || !CFStringGetLength(a3))
    {
      ABCRecordSetValueAndReturnError_cold_1();
    }

    goto LABEL_17;
  }

  if (a3)
  {
LABEL_17:
    v14 = unwrapCPValue(a3, a2, a1);
    v15 = 0;
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 1;
LABEL_18:
  if (v11 == 259)
  {
    RecordID = ABRecordGetRecordID(a1);
    v19 = kABSourceEnabledProperty != a2 && kABSourceMeIdentifierProperty != a2 && RecordID == 0;
    v20 = !v19;
    if (v19)
    {
      ABDiagnosticsEnabled();
      ABLogBacktrace();
      _ABLog2(3, "_Bool ABCRecordSetValueAndReturnError(ABCRecordRef, ABCPropertyID, CFTypeRef, ABCErrorRef *)", 115, 0, @"Someone tried to change property=%i on the local store. Please open a radar to PEP Address Book. %@", v21, v22, v23, a2);
    }

    if (kABSourceCapabilitiesProperty == a2)
    {
      if (v8 && ABAddressBookIgnoresGuardianRestrictions(v8))
      {
        if ((v20 & 1) == 0)
        {
LABEL_109:
          if (a4)
          {
            v30 = 0;
            if (allocator)
            {
              *a4 = allocator;
            }

            else
            {
              *a4 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 0, 0);
            }

            return v30;
          }

          return 0;
        }

LABEL_52:
        v24 = 0;
LABEL_53:
        v26 = 1;
        goto LABEL_54;
      }

      Policy = ABCSourceGetPolicy(a1);
      if (!Policy || (ABPolicyShouldIgnoreCapabilitiesRestrictions(Policy) & 1) == 0)
      {
        v32 = ABRecordGetIntValue(a1, a2) & 0xC;
        if ((v14 & 0xC) != v32 && (v8 || (v14 & 0xC & ~v32) == 0))
        {
          ABPolicyPopulateRecordReadOnlyError(p_allocator, 1, @"RecordPropertyNotWritable");
          goto LABEL_109;
        }
      }
    }

    if (!v20)
    {
      goto LABEL_109;
    }

    goto LABEL_52;
  }

  if (v11 == 258)
  {
    v16 = ABCGroupCopySource();
  }

  else
  {
    v16 = ABCPersonCopySource();
  }

  v24 = v16;
  if (!v16)
  {
    goto LABEL_53;
  }

  v25 = ABCSourceGetPolicy(v16);
  if (v25 && (ABPolicyShouldSetValue(v25, v8, a1, a2, a3, 0, p_allocator) & 1) == 0)
  {
    if (a4)
    {
      v27 = allocator;
      if (!allocator)
      {
        v27 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 0, 0);
      }

      SocialProfileValueFillMissingData = 0;
      PhoneNumberValueSanitized = 0;
      v30 = 0;
      *a4 = v27;
    }

    else
    {
      SocialProfileValueFillMissingData = 0;
      PhoneNumberValueSanitized = 0;
      v30 = 0;
    }

    goto LABEL_70;
  }

  v26 = 0;
LABEL_54:
  v33 = CPRecordGetClass();
  if (v33 == ABCPersonClass)
  {
    if (kABCPhoneProperty == a2)
    {
      ABCPersonClearAddressBookPhoneCacheForPerson(v8);
      if (v15)
      {
        PhoneNumberValueSanitized = 0;
        SocialProfileValueFillMissingData = 0;
        a3 = 0;
        goto LABEL_80;
      }

      PhoneNumberValueSanitized = ABPersonCreatePhoneNumberValueSanitized(a3);
      unwrapCPValue(PhoneNumberValueSanitized, a2, a1);
      a3 = PhoneNumberValueSanitized;
      if (!PhoneNumberValueSanitized)
      {
        goto LABEL_79;
      }
    }

    else
    {
      PhoneNumberValueSanitized = 0;
      if (!a3)
      {
        goto LABEL_79;
      }
    }

    if (kABPersonSocialProfileProperty == a2)
    {
      SocialProfileValueFillMissingData = ABCPersonCreateSocialProfileValueFillMissingData(a3);
      unwrapCPValue(SocialProfileValueFillMissingData, a2, a1);
      a3 = SocialProfileValueFillMissingData;
      goto LABEL_80;
    }

LABEL_79:
    SocialProfileValueFillMissingData = 0;
LABEL_80:
    ABCPersonInvalidateSyntheticPropertiesIfNeeded(a1, a2);
    if (v8)
    {
      v43 = 0x2000;
      if (kABPersonPrefixProperty == a2 || kABPersonFirstNameProperty == a2 || kABPersonMiddleNameProperty == a2 || kABPersonLastNameProperty == a2 || kABPersonSuffixProperty == a2 || kABPersonKindProperty == a2 || kABPersonOrganizationProperty == a2 || kABPersonNicknameProperty == a2 || kABPersonPreviousFamilyNameProperty == a2 || kABPersonFirstNamePhoneticProperty == a2 || kABPersonMiddleNamePhoneticProperty == a2 || kABPersonLastNamePhoneticProperty == a2 || kABPersonOrganizationPhoneticProperty == a2 || kABPersonFirstNamePronunciationProperty == a2 || kABPersonMiddleNamePronunciationProperty == a2 || kABPersonLastNamePronunciationProperty == a2 || kABPersonOrganizationPronunciationProperty == a2 || (v43 = 0x20000, kABPersonBirthdayProperty == a2) || kABPersonAlternateBirthdayProperty == a2)
      {
        v8[96] |= v43;
      }
    }

    if ((ABRecordTypeOfProperty() & 0x100) != 0)
    {
      ABCDBContextMultiValueWillChange(a1, a2, a3);
    }

    if (v8 && ABPersonIsLinkedToMe(v8, a1))
    {
      v8[96] |= 0x40000u;
    }

    goto LABEL_69;
  }

  if (v33 != ABCSourceClass)
  {
LABEL_68:
    PhoneNumberValueSanitized = 0;
    SocialProfileValueFillMissingData = 0;
    goto LABEL_69;
  }

  if (kABCSourceConstraintsPathProperty == a2)
  {
    CPRecordSetProperty();
    goto LABEL_68;
  }

  PhoneNumberValueSanitized = 0;
  if (kABSourceEnabledProperty == a2 && !v14)
  {
    SocialProfileValueFillMissingData = 0;
    if (!v8)
    {
      goto LABEL_69;
    }

    v34 = ABRecordGetRecordID(a1);
    if (v34 == ABAddressBookGetIntegerProperty(v8))
    {
      ABAddressBookClearPreferredMeSource(v8, v35, v36, v37, v38, v39, v40, v41);
    }

    goto LABEL_68;
  }

  SocialProfileValueFillMissingData = 0;
LABEL_69:
  CPRecordSetProperty();
  v30 = 1;
  if ((v26 & 1) == 0)
  {
LABEL_70:
    CFRelease(v24);
  }

  if (SocialProfileValueFillMissingData)
  {
    CFRelease(SocialProfileValueFillMissingData);
  }

  if (PhoneNumberValueSanitized)
  {
    CFRelease(PhoneNumberValueSanitized);
  }

  return v30;
}

uint64_t ABCPersonCopySource()
{
  v0 = ABCGetAddressBookForRecord();
  v1 = CPRecordCopyProperty();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v0 == 0;
  }

  if (!v2)
  {
    Property = CPRecordGetProperty();
    if (Property == -1)
    {
      return 0;
    }

    else
    {
      RecordForUniqueID = ABCSourceGetRecordForUniqueID(v0, Property);
      v1 = RecordForUniqueID;
      if (RecordForUniqueID)
      {
        CFRetain(RecordForUniqueID);
      }
    }
  }

  return v1;
}

uint64_t ABCPersonInvalidateSyntheticPropertiesIfNeeded(uint64_t a1, int a2)
{
  if (CPRecordGetProperty())
  {
    return 0;
  }

  v4 = kABCFirstNameProperty == a2 || kABCLastNameProperty == a2;
  v5 = v4 || kABCFirstNamePhoneticProperty == a2;
  v6 = v5 || kABCLastNamePhoneticProperty == a2;
  v7 = v6 || kABCKindProperty == a2;
  v8 = v7 || kABCOrganizationProperty == a2;
  v9 = v8 || kABCOrganizationPhoneticProperty == a2;
  v10 = v9 || kABCNicknameProperty == a2;
  if (!v10 && kABCEmailProperty != a2 && kABCPhoneProperty != a2 && kABCJobTitleProperty != a2)
  {
    return 0;
  }

  ABCPersonInvalidateSyntheticProperties();
  return 1;
}

uint64_t ABRecordTypeOfProperty()
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABCPropertyType ABRecordTypeOfProperty(ABCRecordRef, ABCPropertyID)", 282, v0, 0, v1, v2, v3, v10);
    CFRelease(v0);
  }

  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABCPropertyType ABRecordTypeOfProperty(ABCRecordRef, ABCPropertyID)", 284, @">> ", 0, v5, v6, v7, v9);
  }

  if (PropertyDescriptor)
  {
    return *(PropertyDescriptor + 32);
  }

  else
  {
    return 0;
  }
}

unint64_t unwrapCPValue(const __CFNumber *a1, int a2, const void *a3)
{
  v3 = a1;
  if (kABPersonCreationDateProperty == a2 || kABPersonModificationDateProperty == a2)
  {
    return llround(MEMORY[0x1B8CB5340](a1));
  }

  PropertyType = ABRecordGetPropertyType(a3, a2);
  if (PropertyType == 2)
  {
    valuePtr = 0;
    CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return v3;
}

CFTypeRef ABPersonCopyShortName(const void *a1)
{
  if (!ABPersonGetShortNamePreferNicknames() || (v2 = ABRecordCopyValue(a1, kABPersonNicknameProperty)) == 0)
  {
    if (!ABPersonGetShortNameFormatEnabled())
    {
      return 0;
    }

    ShortNameFormat = ABPersonGetShortNameFormat();
    v4 = ABRecordCopyValue(a1, kABPersonKindProperty);
    v5 = CFNumberCompare(v4, kABPersonKindPerson, 0);
    CFRelease(v4);
    if (v5)
    {
      return 0;
    }

    v7 = ABRecordCopyValue(a1, kABPersonFirstNameProperty);
    v16 = v7;
    v8 = ABRecordCopyValue(a1, kABPersonLastNameProperty);
    v15 = v8;
    if (_ABStringContainsNonLatinCharacters(v7) || _ABStringContainsEmojiCharacters(v7) || _ABStringContainsNonLatinCharacters(v8) || _ABStringContainsEmojiCharacters(v8))
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (ShortNameFormat == 2 && v7)
    {
      Length = CFStringGetLength(v7);
      v10 = v7;
    }

    else
    {
      if (ShortNameFormat != 3 || !v8)
      {
        if (!ShortNameFormat && v7 && v8)
        {
          if (CFStringGetLength(v7) >= 2)
          {
            _replaceNameWithInitial(&v15);
            v8 = v15;
          }
        }

        else if (ShortNameFormat == 1 && v7 && v8 && CFStringGetLength(v8) >= 2)
        {
          _replaceNameWithInitial(&v16);
          v7 = v16;
        }

LABEL_35:
        if (v7 && v8)
        {
          CompositeNameFormatAndDelimiterForRecord = ABPersonGetCompositeNameFormatAndDelimiterForRecord(0, 0);
          if (CompositeNameFormatAndDelimiterForRecord)
          {
            v12 = v8;
          }

          else
          {
            v12 = v7;
          }

          if (CompositeNameFormatAndDelimiterForRecord)
          {
            v13 = v7;
          }

          else
          {
            v13 = v8;
          }

          v14 = CFStringCreateWithFormat(0, 0, @"%@ %@", v12, v13);
          goto LABEL_47;
        }

        if (v7 && !v8)
        {
          v14 = CFRetain(v7);
LABEL_47:
          v2 = v14;
LABEL_13:
          CFRelease(v7);
LABEL_14:
          if (!v8)
          {
            return v2;
          }

LABEL_15:
          CFRelease(v8);
          return v2;
        }

        v2 = 0;
        if (!v7 && v8)
        {
          v2 = CFRetain(v8);
          goto LABEL_15;
        }

LABEL_12:
        if (!v7)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      Length = CFStringGetLength(v8);
      v10 = v8;
    }

    if (Length > 1)
    {
      v2 = CFRetain(v10);
      if (v2)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_35;
  }

  return v2;
}

uint64_t ABPersonGetShortNamePreferNicknames()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonGetShortNamePreferNicknames(void)", 1600, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return __personShortNamePreferNicknames;
}

uint64_t ABPersonGetShortNameFormatEnabled()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "_Bool ABPersonGetShortNameFormatEnabled(void)", 1582, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return __personShortNameFormatEnabled;
}

uint64_t ABPersonGetShortNameFormat()
{
  if (ABLogAPIUsage())
  {
    v5 = _isMainThread();
    v0 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABPersonShortNameFormat ABPersonGetShortNameFormat(void)", 1564, v0, 0, v1, v2, v3, v5);
    CFRelease(v0);
  }

  return __personShortNameFormat;
}

BOOL _ABStringContainsNonLatinCharacters(_BOOL8 a1)
{
  v1 = a1;
  if (a1)
  {
    if (_ABStringContainsNonLatinCharacters_onceToken != -1)
    {
      _ABStringContainsNonLatinCharacters_cold_1();
    }

    v2 = [v1 length];
    v3 = malloc_type_malloc(2 * v2, 0x1000040BDFB0063uLL);
    [v1 getCharacters:v3 range:{0, v2}];
    v1 = v2 != MEMORY[0x1B8CB7250](_ABStringContainsNonLatinCharacters___latinSet, v3, v2, 1);
    free(v3);
  }

  return v1;
}

const void *ABCFTSGetCollationContextForDatabaseConnectionHandle(const void *a1)
{
  if (ABCFTSGetCollationContextDictionary_predicate != -1)
  {
    ABCFTSGetCollationContextForDatabaseConnectionHandle_cold_1();
  }

  v2 = ABCFTSGetCollationContextDictionary_collalationContextDict;
  pthread_mutex_lock(&gDictionaryMutex);
  Value = CFDictionaryGetValue(v2, a1);
  pthread_mutex_unlock(&gDictionaryMutex);
  return Value;
}

uint64_t ABCFTSCollationContextFreeContextForDatabaseHandle(const void *a1)
{
  v2 = ABCFTSGetCollationContextForDatabaseConnectionHandle(a1);
  if (v2)
  {
    v3 = v2;
    v4 = *v2;
    if (v4)
    {
      ABCReleaseCollator(v4);
    }

    v5 = v3[1];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = v3[2];
    if (v6)
    {
      CFRelease(v6);
    }

    free(v3[3]);
    free(v3);
  }

  return ABCFTSSetCollationContextForDatabaseConnectionHandle(a1, 0);
}

void *ABGetCharacterSetWithPattern(void *result)
{
  if (result)
  {
    v1 = [result _cn_resultWithAllCharacters:&__block_literal_global_9];

    return [v1 pointerValue];
  }

  return result;
}

BOOL _ABStringContainsEmojiCharacters(_BOOL8 theString)
{
  if (theString)
  {
    v1 = theString;
    if (_ABStringContainsEmojiCharacters_onceToken != -1)
    {
      _ABStringContainsEmojiCharacters_cold_1();
    }

    v3.location = 0;
    v3.length = 0;
    v2 = _ABStringContainsEmojiCharacters___emojiSet;
    v4.length = CFStringGetLength(v1);
    v4.location = 0;
    return CFStringFindCharacterFromSet(v1, v2, v4, 0, &v3) != 0;
  }

  return theString;
}

CFMutableStringRef ABPersonCopyCompositeNameIgnoringOrganization(const void *a1, char a2)
{
  if (ABLogAPIUsage())
  {
    v14 = _isMainThread();
    v4 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopyCompositeNameIgnoringOrganization(ABRecordRef, _Bool)", 1415, v4, 0, v5, v6, v7, v14);
    CFRelease(v4);
  }

  v8 = ABPersonCopyCompositeNameIgnoringOrganizationAndNickname(a1, a2, 0);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABPersonCopyCompositeNameIgnoringOrganization(ABRecordRef, _Bool)", 1417, @">> ", 0, v9, v10, v11, v13);
  }

  return v8;
}

CFMutableStringRef ABPersonCopyCompositeName(const void *a1)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopyCompositeName(ABRecordRef)", 1492, v2, 0, v3, v4, v5, v12);
    CFRelease(v2);
  }

  v6 = ABPersonCopyCompositeNameIgnoringOrganization(a1, 0);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABPersonCopyCompositeName(ABRecordRef)", 1494, @">> ", 0, v7, v8, v9, v11);
  }

  return v6;
}

CFMutableStringRef ABPersonCopyCompositeNameIgnoringOrganizationAndNickname(const void *a1, char a2, char a3)
{
  if (ABLogAPIUsage())
  {
    v22 = _isMainThread();
    v6 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonCopyCompositeNameIgnoringOrganizationAndNickname(ABRecordRef, _Bool, _Bool)", 1422, v6, 0, v7, v8, v9, v22);
    CFRelease(v6);
  }

  cf = 0;
  CompositeNameFormatAndDelimiterForRecord = ABPersonGetCompositeNameFormatAndDelimiterForRecord(a1, &cf);
  v11 = ABRecordCopyValue(a1, kABPersonKindProperty);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (a2)
  {
LABEL_4:
    ABPersonAppendNameParts(a1, 31, Mutable, CompositeNameFormatAndDelimiterForRecord, cf, 0);
    goto LABEL_10;
  }

  if (CFNumberCompare(v11, kABPersonKindPerson, 0))
  {
    ABPersonAppendNamePartToCompositeName(a1, kABPersonOrganizationProperty, Mutable, cf, 0);
    if (CFStringGetLength(Mutable))
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  ABPersonAppendNameParts(a1, 31, Mutable, CompositeNameFormatAndDelimiterForRecord, cf, 0);
  if (!CFStringGetLength(Mutable))
  {
    ABPersonAppendNamePartToCompositeName(a1, kABPersonOrganizationProperty, Mutable, cf, 0);
  }

LABEL_10:
  if ((a3 & 1) == 0 && !CFStringGetLength(Mutable))
  {
    v13 = ABRecordCopyValue(a1, kABPersonNicknameProperty);
    if (v13)
    {
      v14 = v13;
      if (CFStringGetLength(v13) >= 1)
      {
        CFStringAppend(Mutable, v14);
      }

      CFRelease(v14);
    }
  }

  if (!CFStringGetLength(Mutable))
  {
    v15 = ABRecordCopyValue(a1, kABPersonDisplayNameProperty);
    if (v15)
    {
      v16 = v15;
      if (CFStringGetLength(v15) >= 1)
      {
        CFStringAppend(Mutable, v16);
      }

      CFRelease(v16);
    }
  }

  if (!CFStringGetLength(Mutable))
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABPersonCopyCompositeNameIgnoringOrganizationAndNickname(ABRecordRef, _Bool, _Bool)", 1477, @">> ", 0, v17, v18, v19, v21);
  }

  return Mutable;
}

uint64_t ABKatakanaCharacterSet()
{
  if (ABKatakanaCharacterSet___onceToken != -1)
  {
    ABKatakanaCharacterSet_cold_1();
  }

  return ABKatakanaCharacterSet___katakanaSet;
}

uint64_t __ABKatakanaCharacterSet_block_invoke()
{
  result = [objc_msgSend(@"[[:scx=Kana:]]" _cn_resultWithAllCharacters:{&__block_literal_global_9), "pointerValue"}];
  ABKatakanaCharacterSet___katakanaSet = result;
  return result;
}

uint64_t ABChineseJapaneseKoreanCharacterSet()
{
  if (ABChineseJapaneseKoreanCharacterSet___onceToken != -1)
  {
    ABChineseJapaneseKoreanCharacterSet_cold_1();
  }

  return ABChineseJapaneseKoreanCharacterSet___CJKSet;
}

uint64_t __ABChineseJapaneseKoreanCharacterSet_block_invoke()
{
  result = [objc_msgSend(@"[[:Hani:][:Hiragana:][[:scx=Kana:]][:Bopomofo:][ˉˊˇˋ˙][:Hangul:][()（）]]" _cn_resultWithAllCharacters:{&__block_literal_global_9), "pointerValue"}];
  ABChineseJapaneseKoreanCharacterSet___CJKSet = result;
  return result;
}

uint64_t ABContentsExclusivelyInCharacterSet(void *a1, uint64_t a2)
{
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    return 1;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __ABContentsExclusivelyInCharacterSet_block_invoke;
  v5[3] = &__block_descriptor_40_e13__24__0r_S8Q16l;
  v5[4] = a2;
  return [objc_msgSend(a1 _cn_resultWithAllCharacters:{v5), "BOOLValue"}];
}

uint64_t __ABContentsExclusivelyInCharacterSet_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E695E118];
  }

  v2 = MEMORY[0x1E696AD98];
  v3 = uset_containsAllCodePoints();

  return [v2 numberWithChar:v3];
}

void ABPersonAppendNamePartToCompositeName(const void *a1, ABPropertyID a2, __CFString *a3, const __CFString *a4, int a5)
{
  v8 = ABRecordCopyValue(a1, a2);
  if (v8)
  {
    v9 = v8;
    if (CFStringGetLength(v8) >= 1)
    {
      Length = CFStringGetLength(a3);
      if (a4 && Length >= 1)
      {
        CFStringAppend(a3, a4);
      }

      if (a5)
      {
        v11 = *MEMORY[0x1E695E480];
        v12 = CFStringGetLength(v9);
        MutableCopy = CFStringCreateMutableCopy(v11, v12, v9);
        CFStringTrimWhitespace(MutableCopy);
        CFStringAppend(a3, MutableCopy);
        CFRelease(MutableCopy);
      }

      else
      {
        CFStringAppend(a3, v9);
      }
    }

    CFRelease(v9);
  }
}

void ABPersonAppendNameParts(const void *a1, int a2, __CFString *a3, int a4, const __CFString *a5, int a6)
{
  if (a4)
  {
    v11 = 8;
  }

  else
  {
    v11 = 2;
  }

  if (a4)
  {
    v12 = 2;
  }

  else
  {
    v12 = 4;
  }

  if (a4)
  {
    v13 = 4;
  }

  else
  {
    v13 = 8;
  }

  v14 = v11 & a2;
  if (a4)
  {
    v15 = kABPersonMiddleNameProperty;
  }

  else
  {
    v15 = kABPersonLastNameProperty;
  }

  v19 = v15;
  if (a4)
  {
    v16 = kABPersonFirstNameProperty;
  }

  else
  {
    v16 = kABPersonMiddleNameProperty;
  }

  if (a4)
  {
    v17 = kABPersonLastNameProperty;
  }

  else
  {
    v17 = kABPersonFirstNameProperty;
  }

  if (a2)
  {
    ABPersonAppendNamePartToCompositeName(a1, kABPersonPrefixProperty, a3, a5, a6);
  }

  v18 = v12 & a2;
  if (v14)
  {
    ABPersonAppendNamePartToCompositeName(a1, v17, a3, a5, a6);
  }

  if (v18)
  {
    ABPersonAppendNamePartToCompositeName(a1, v16, a3, a5, a6);
  }

  if ((v13 & a2) != 0)
  {
    ABPersonAppendNamePartToCompositeName(a1, v19, a3, a5, a6);
  }

  if ((a2 & 0x10) != 0)
  {

    ABPersonAppendNamePartToCompositeName(a1, kABPersonSuffixProperty, a3, a5, a6);
  }
}

void multivalueSearchRowHandlerIncludingLabels(uint64_t a1, __CFArray ***a2, int a3)
{
  if (!**a2)
  {
    **a2 = CFArrayCreateMutable(0, 0, 0);
  }

  if (!*a2[1])
  {
    *a2[1] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  if (*a2[2])
  {
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *a2[2] = CFArrayCreateMutable(0, 0, 0);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  if (!*a2[3])
  {
    *a2[3] = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

LABEL_11:
  v6 = **a2;
  v7 = sqlite3_column_int(*(a1 + 8), 0);
  CFArrayAppendValue(v6, v7);
  v8 = sqlite3_column_text(*(a1 + 8), 1);
  v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
  CFArrayAppendValue(*a2[1], v9);
  CFRelease(v9);
  v10 = *a2[2];
  v11 = sqlite3_column_int(*(a1 + 8), 2);
  CFArrayAppendValue(v10, v11);
  if (a3)
  {
    v12 = sqlite3_column_text(*(a1 + 8), 3);
    if (v12)
    {
      v13 = CFStringCreateWithCString(0, v12, 0x8000100u);
      CFArrayAppendValue(*a2[3], v13);

      CFRelease(v13);
    }

    else
    {
      v14 = *a2[3];
      v15 = *MEMORY[0x1E695E738];

      CFArrayAppendValue(v14, v15);
    }
  }
}

uint64_t ABAddressBookGetPreferredNamePeopleCountForManagedConfiguration(uint64_t a1, void *a2)
{
  if (a2 && ([a2 deviceHasManagementRestrictions] & 1) != 0)
  {
    v4 = ABAddressBookIndexSetOfAllowedSourceIdentifiersIncludingDisabledSources(a1, a2, 0);
    v5 = SQLInClauseStringForParameterCount([v4 count]);
    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT COUNT() FROM ABPerson WHERE ROWID IN (SELECT rowid FROM ABPerson WHERE personlink = -1 AND StoreID IN %@ UNION SELECT ab_allowed_preferred_contact(abp.rowid, abp.StoreID, abp.IsPreferredName, ?) FROM ABPerson abp JOIN ABPersonLink abpl on abpl.rowid = abp.PersonLink WHERE abp.StoreID IN %@ GROUP BY abpl.rowid) ", v5, v5];
    ABRegulatoryLogReadContactsData(a1);
    CPRecordStoreGetDatabase();
    v6 = CPSqliteDatabaseStatementForReading();
    if (!v6)
    {
      return -1;
    }

    v7 = v6;
    if (!*(v6 + 8))
    {
      return -1;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __ABAddressBookGetPreferredNamePeopleCountForManagedConfiguration_block_invoke;
    v13[3] = &unk_1E7CCCBD0;
    v13[4] = &v14;
    v13[5] = v6;
    [v4 enumerateIndexesUsingBlock:v13];
    v8 = *(v7 + 8);
    v9 = *(v15 + 6);
    *(v15 + 6) = v9 + 1;
    sqlite3_bind_blob(v8, v9, v4, 8, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __ABAddressBookGetPreferredNamePeopleCountForManagedConfiguration_block_invoke_2;
    v12[3] = &unk_1E7CCCBD0;
    v12[4] = &v14;
    v12[5] = v7;
    [v4 enumerateIndexesUsingBlock:v12];
    if (sqlite3_step(*(v7 + 8)) == 100)
    {
      v10 = sqlite3_column_int(*(v7 + 8), 0);
    }

    else
    {
      v10 = -1;
    }

    CPSqliteStatementReset();
    _Block_object_dispose(&v14, 8);
    return v10;
  }

  else
  {

    return ABAddressBookGetPreferredNamePeopleCount(a1);
  }
}

uint64_t ABCGetPersonCountInSourceShowingLinks(uint64_t a1, ABRecordRef record, int a3)
{
  CountOfInstancesOfClassWhere = a1;
  if (!a1)
  {
    return CountOfInstancesOfClassWhere;
  }

  if (record)
  {
    RecordID = ABRecordGetRecordID(record);
    if (RecordID != -1)
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"StoreID = %i", RecordID);
LABEL_7:
      v7 = v6;
      goto LABEL_9;
    }
  }

  if (a3)
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"IsPreferredName = 1");
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:
  CountOfInstancesOfClassWhere = CPRecordStoreGetCountOfInstancesOfClassWhere();
  if (v7)
  {
    CFRelease(v7);
  }

  return CountOfInstancesOfClassWhere;
}

uint64_t ABCopyArrayOfSectionListOffsets(uint64_t a1, int a2, __CFArray **a3, CFMutableArrayRef *a4, __CFArray **a5)
{
  if (ABLogAPIUsage())
  {
    v10 = _isMainThread();
    v11 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v10);
    v12 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABCopyArrayOfSectionListOffsets(ABAddressBookRef, ABPersonSortOrdering, CFArrayRef *, CFArrayRef *, CFArrayRef *)", 972, v11, @"%@", v13, v14, v15, v12);
    CFRelease(v11);
  }

  if (!a1)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, @"SELECT LanguageIndex, Section, 0, number FROM ");
  v17 = MutableCopy;
  v18 = a2 ? @"LastSortSectionCountTotal" : @"FirstSortSectionCountTotal";
  CFStringAppend(MutableCopy, v18);
  CFStringAppend(v17, @" WHERE number > 0 ORDER BY LanguageIndex ASC, Section ASC;");
  CPRecordStoreGetDatabase();
  v19 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(a1);
  CFRelease(v17);
  if (!v19 || !*(v19 + 8))
  {
    return 0;
  }

  v20 = *MEMORY[0x1E695E480];
  if (a3)
  {
    *a3 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  }

  *a4 = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
  *a5 = CFArrayCreateMutable(v20, 0, 0);
  while (sqlite3_step(*(v19 + 8)) == 100)
  {
    v21 = sqlite3_column_text(*(v19 + 8), 1);
    if (v21)
    {
      v22 = v21;
      v23 = strlen(v21);
      v24 = CFStringCreateWithBytes(v20, v22, v23, 0x8000100u, 0);
      CFArrayAppendValue(*a4, v24);
      CFRelease(v24);
      if (a3)
      {
        v25 = *a3;
        v26 = sqlite3_column_int(*(v19 + 8), 0);
        CFArrayAppendValue(v25, v26);
      }

      v27 = *a5;
      v28 = sqlite3_column_int(*(v19 + 8), 3);
      CFArrayAppendValue(v27, v28);
    }
  }

  CPSqliteStatementReset();
  CPSqliteDatabaseReleaseSqliteStatement();
  return 1;
}

uint64_t ABCopyArrayOfSectionListOffsetsForManagedConfiguration(uint64_t a1, void *a2, int a3, __CFArray **a4, CFMutableArrayRef *a5, __CFArray **a6)
{
  if (a2 && ([a2 deviceHasManagementRestrictions] & 1) != 0)
  {
    v12 = ABAddressBookIndexSetOfAllowedSourceIdentifiersIncludingDisabledSources(a1, a2, 0);
    v13 = SQLInClauseStringForParameterCount([v12 count]);
    v14 = @"FirstSortLanguageIndex, FirstSortSection";
    v15 = @"LastSortLanguageIndex ASC, LastSortSection ASC";
    if (a3)
    {
      v14 = @"LastSortLanguageIndex, LastSortSection";
    }

    else
    {
      v15 = @"FirstSortLanguageIndex ASC, FirstSortSection ASC";
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@, COUNT() from ABPerson where rowid in (SELECT rowid FROM ABPerson WHERE personlink = -1 AND StoreID IN %@ UNION SELECT ab_allowed_preferred_contact(abp.rowid, abp.StoreID, abp.IsPreferredName, ?) FROM ABPerson abp JOIN ABPersonLink abpl on abpl.rowid = abp.PersonLink WHERE abp.StoreID IN %@ GROUP BY abpl.rowid) GROUP BY %@ ORDER BY %@;", v14, v13, v13, v14, v15];
    CPRecordStoreGetDatabase();
    CPSqliteDatabaseConnectionForReading();
    result = CPSqliteConnectionStatementForSQL();
    if (result)
    {
      v17 = result;
      if (*(result + 8))
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 1;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __ABCopyArrayOfSectionListOffsetsForManagedConfiguration_block_invoke;
        v30[3] = &unk_1E7CCCBD0;
        v30[4] = &v31;
        v30[5] = result;
        [v12 enumerateIndexesUsingBlock:v30];
        v18 = *(v17 + 8);
        v19 = *(v32 + 6);
        *(v32 + 6) = v19 + 1;
        sqlite3_bind_blob(v18, v19, v12, 8, 0);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __ABCopyArrayOfSectionListOffsetsForManagedConfiguration_block_invoke_2;
        v29[3] = &unk_1E7CCCBD0;
        v29[4] = &v31;
        v29[5] = v17;
        [v12 enumerateIndexesUsingBlock:v29];
        v20 = *MEMORY[0x1E695E480];
        if (a4)
        {
          *a4 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        }

        *a5 = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
        *a6 = CFArrayCreateMutable(v20, 0, 0);
        while (sqlite3_step(*(v17 + 8)) == 100)
        {
          v21 = sqlite3_column_text(*(v17 + 8), 1);
          v22 = v21;
          if (v21)
          {
            v23 = strlen(v21);
            v24 = CFStringCreateWithBytes(v20, v22, v23, 0x8000100u, 0);
            CFArrayAppendValue(*a5, v24);
            CFRelease(v24);
            if (a4)
            {
              v25 = *a4;
              v26 = sqlite3_column_int(*(v17 + 8), 0);
              CFArrayAppendValue(v25, v26);
            }

            v27 = *a6;
            v28 = sqlite3_column_int(*(v17 + 8), 2);
            CFArrayAppendValue(v27, v28);
          }
        }

        CPSqliteStatementReset();
        CPSqliteDatabaseReleaseSqliteStatement();
        _Block_object_dispose(&v31, 8);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {

    return ABCopyArrayOfSectionListOffsets(a1, a3, a4, a5, a6);
  }

  return result;
}

CFIndex ABAddressBookGetPersonCount(ABAddressBookRef addressBook)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(addressBook);
    _ABLog2(6, "CFIndex ABAddressBookGetPersonCount(ABAddressBookRef)", 767, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return ABCGetPersonCountInSourceShowingLinks(addressBook, 0, 0);
}

ABAuthorizationStatus ABAddressBookGetAuthorizationStatus(void)
{
  v0 = ABTCCIsAccessRestricted();
  if (ABTCCIsAccessUnknown())
  {
    return (v0 != 0);
  }

  if (ABTCCIsAccessDenied())
  {
    if (v0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else if (ABTCCIsAccessGranted())
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t ABAddressBookCopyUniqueIdentifier(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFStringRef ABAddressBookCopyUniqueIdentifier(ABAddressBookRef)", 715, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = *(a1 + 64);
  if (v8 || (CPRecordStoreGetDatabase(), v8 = CPSqliteDatabaseCopyUniqueIdentifier(), (*(a1 + 64) = v8) != 0))
  {
    CFRetain(v8);
    v9 = *(a1 + 64);
  }

  else
  {
    v9 = 0;
  }

  if (ABDiagnosticsEnabled())
  {
    _ABLog2(7, "CFStringRef ABAddressBookCopyUniqueIdentifier(ABAddressBookRef)", 727, 0, @"returning %@", v10, v11, v12, v9);
  }

  if (ABLogAPIUsage())
  {
    _ABLog2(6, "CFStringRef ABAddressBookCopyUniqueIdentifier(ABAddressBookRef)", 728, @">> ", @"uniqueIdentifier=%@", v13, v14, v15, v9);
  }

  return v9;
}

const void *ABAddressBookCopyPersonMatchingInternalUUID(uint64_t a1, uint64_t a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "ABRecordRef ABAddressBookCopyPersonMatchingInternalUUID(ABAddressBookRef, CFStringRef)", 2269, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  v10 = kABPersonInternalUUIDProperty;

  return _copyPersonMatchingPrivateProperty(a1, v10, a2);
}

__CFString *ABPersonNameForProperty(int a1)
{
  if (ABLogAPIUsage())
  {
    v7 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "CFStringRef ABPersonNameForProperty(ABPropertyID)", 1936, v2, 0, v3, v4, v5, v7);
    CFRelease(v2);
  }

  return ABCPersonNameForProperty(a1);
}

const void *_copyPersonMatchingPrivateProperty(uint64_t a1, int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = ABPersonNameForProperty(a2);
  v4 = CFStringCreateWithFormat(0, 0, @"WHERE %@ = ?", v3);
  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  CFRelease(v4);
  if (!v5)
  {
    return 0;
  }

  if (CFArrayGetCount(v5) < 1)
  {
    v7 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    v7 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  CFRelease(v5);
  return v7;
}

uint64_t _CurrentProcessHasDirectDatabaseAccessEntitlement()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  error = 0;
  v1 = SecTaskCopyValueForEntitlement(v0, @"com.apple.Contacts.database-allow", &error);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 BOOLValue];
    if (!v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ABDiagnosticsEnabled();
  _ABLog2(3, "BOOL _CurrentProcessHasDirectDatabaseAccessEntitlement(void)", 158, 0, @"Couldn't get entitlement value: %@", v5, v6, v7, error);
  v3 = 0;
  if (v0)
  {
LABEL_3:
    CFRelease(v0);
  }

LABEL_4:
  if (v2)
  {
    CFRelease(v2);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v3;
}

__CFString *ABCPersonNameForProperty(int a1)
{
  if (kABCPhoneProperty == a1)
  {
    return @"Phone";
  }

  if (kABCEmailProperty == a1)
  {
    return @"Email";
  }

  if (kABCFirstNameProperty == a1)
  {
    return @"First";
  }

  if (kABCFirstNamePhoneticProperty == a1)
  {
    return @"FirstPhonetic";
  }

  if (kABCFirstNamePronunciationProperty == a1)
  {
    return @"FirstPronunciation";
  }

  if (kABCMiddleNameProperty == a1)
  {
    return @"Middle";
  }

  if (kABCMiddleNamePhoneticProperty == a1)
  {
    return @"MiddlePhonetic";
  }

  if (kABCMiddleNamePronunciationProperty == a1)
  {
    return @"MiddlePronunciation";
  }

  if (kABCLastNameProperty == a1)
  {
    return @"Last";
  }

  if (kABCLastNamePhoneticProperty == a1)
  {
    return @"LastPhonetic";
  }

  if (kABCLastNamePronunciationProperty == a1)
  {
    return @"LastPronunciation";
  }

  if (kABCAddressingGrammarProperty == a1)
  {
    return @"AddressingGrammar";
  }

  if (kABCOrganizationProperty == a1)
  {
    return @"Organization";
  }

  if (kABCOrganizationPhoneticProperty == a1)
  {
    return @"OrganizationPhonetic";
  }

  if (kABCOrganizationPronunciationProperty == a1)
  {
    return @"OrganizationPronunciation";
  }

  if (kABCDepartmentProperty == a1)
  {
    return @"Department";
  }

  if (kABCDateProperty == a1)
  {
    return @"Date";
  }

  if (kABCInstantMessageProperty == a1)
  {
    return @"IM";
  }

  if (kABCNoteProperty == a1)
  {
    return @"Note";
  }

  if (kABCImageProperty == a1)
  {
    return @"Image";
  }

  if (kABCKindProperty == a1)
  {
    return @"Kind";
  }

  if (kABCSoundProperty == a1)
  {
    return @"Sound";
  }

  if (kABCBirthdayProperty == a1)
  {
    return @"Birthday";
  }

  if (kABCJobTitleProperty == a1)
  {
    return @"JobTitle";
  }

  if (kABCNicknameProperty == a1)
  {
    return @"Nickname";
  }

  if (kABCPreviousFamilyNameProperty == a1)
  {
    return @"PreviousFamilyName";
  }

  if (kABCPrefixProperty == a1)
  {
    return @"Prefix";
  }

  if (kABCSuffixProperty == a1)
  {
    return @"Suffix";
  }

  if (kABCURLProperty == a1)
  {
    return @"URL";
  }

  if (kABCRelatedNamesProperty == a1)
  {
    return @"RelatedNames";
  }

  if (kABCFirstSortProperty == a1)
  {
    return @"FirstSort";
  }

  if (kABCLastSortProperty == a1)
  {
    return @"LastSort";
  }

  if (kABCCreationDateProperty == a1)
  {
    return @"CreationDate";
  }

  if (kABCModificationDateProperty == a1)
  {
    return @"ModificationDate";
  }

  if (kABCCompositeNameFallbackProperty == a1)
  {
    return @"CompositeNameFallback";
  }

  if (kABCSyntheticPropertiesReset == a1)
  {
    return @"SyntheticPropertiesReset";
  }

  if (kABCPersonExternalIdentifierProperty == a1)
  {
    return @"ExternalIdentifier";
  }

  if (kABCPersonStoreIDProperty == a1)
  {
    return @"StoreID";
  }

  if (kABCPersonExternalModificationTagProperty == a1)
  {
    return @"ExternalModificationTag";
  }

  if (kABCPersonExternalUUIDProperty == a1)
  {
    return @"ExternalUUID";
  }

  if (kABCPersonImageURIProperty == a1)
  {
    return @"ImageURI";
  }

  if (kABCPersonStoreReferenceProperty == a1)
  {
    return @"StoreReference";
  }

  if (kABCAddressProperty == a1)
  {
    return @"Address";
  }

  if (kABCPersonDisplayNameProperty == a1)
  {
    return @"DisplayName";
  }

  if (kABCFirstSortSectionProperty == a1)
  {
    return @"FirstSortSection";
  }

  if (kABCLastSortSectionProperty == a1)
  {
    return @"LastSortSection";
  }

  if (kABCFirstSortLanguageIndexSortProperty == a1)
  {
    return @"FirstSortLanguageIndex";
  }

  if (kABCLastSortLanguageIndexSortProperty == a1)
  {
    return @"LastSortLanguageIndex";
  }

  if (kABPersonSearchProperty == a1)
  {
    return @"Search";
  }

  if (kABPersonNameOnlySearchProperty == a1)
  {
    return @"NameOnlySearch";
  }

  if (kABPersonExternalRepresentationProperty == a1)
  {
    return @"ExternalRepresentation";
  }

  if (kABPersonLinkProperty == a1)
  {
    return @"PersonLink";
  }

  if (kABPersonIsPreferredNameProperty == a1)
  {
    return @"IsPreferredName";
  }

  if (kABCPersonSocialProfileProperty == a1)
  {
    return @"SocialProfile";
  }

  if (kABCPersonContentExtensionsProperty == a1)
  {
    return @"GeoData";
  }

  if (kABCPersonPhonemeDataProperty == a1)
  {
    return @"PhonemeData";
  }

  if (kABCPersonAlternateBirthdayProperty == a1)
  {
    return @"AlternateBirthday";
  }

  if (kABCPersonMapsDataProperty == a1)
  {
    return @"MapsData";
  }

  if (kABCPersonInternalUUIDProperty == a1)
  {
    return @"guid";
  }

  if (kABCPersonPreferredLikenessSourceProperty == a1)
  {
    return @"PreferredLikenessSource";
  }

  if (kABCPersonPreferredPersonaIdentifierProperty == a1)
  {
    return @"PreferredPersonaIdentifier";
  }

  if (kABCChangesProperty == a1)
  {
    return @"Changes";
  }

  if (kABCPersonLinkUUIDProperty == a1)
  {
    return @"LinkUUID";
  }

  if (kABCPersonImageDataProperty == a1)
  {
    return @"ImageData";
  }

  if (kABCPersonThumbnailDataProperty == a1)
  {
    return @"ThumbnailData";
  }

  if (kABCPersonImageCropRectProperty == a1)
  {
    return @"ImageCropRect";
  }

  if (kABCPersonFullscreenImageDataProperty == a1)
  {
    return @"FullscreenImageData";
  }

  if (kABCPersonSyncImageDataProperty == a1)
  {
    return @"SyncImageData";
  }

  if (kABCPersonIsPreferredImageProperty == a1)
  {
    return @"IsPreferredImage";
  }

  if (kABCPersonHasImageDataProperty == a1)
  {
    return @"HasImageData";
  }

  if (kABCPersonPreferredChannelProperty == a1)
  {
    return @"PreferredChannel";
  }

  if (kABCPersonDowntimeWhitelistProperty == a1)
  {
    return @"DowntimeWhitelist";
  }

  if (kABCPersonImageTypeProperty == a1)
  {
    return @"ImageType";
  }

  if (kABCPersonImageHashProperty == a1)
  {
    return @"ImageHash";
  }

  if (kABCPersonMemojiMetadataProperty == a1)
  {
    return @"MemojiMetadata";
  }

  if (kABCPersonWallpaperProperty == a1)
  {
    return @"Wallpaper";
  }

  if (kABCPersonWallpaperMetadataProperty == a1)
  {
    return @"WallpaperMetadata";
  }

  if (kABCPersonWatchWallpaperImageDataProperty == a1)
  {
    return @"WatchWallpaperImageData";
  }

  if (kABCPersonAvatarRecipeDataProperty == a1)
  {
    return @"AvatarRecipeData";
  }

  if (kABCPersonImageBackgroundColorsDataProperty == a1)
  {
    return @"ImageBackgroundColorsData";
  }

  if (kABCPersonDisplayFlagsProperty == a1)
  {
    return @"DisplayFlags";
  }

  if (kABCPersonSensitiveContentConfigurationProperty == a1)
  {
    return @"SensitiveContentConfiguration";
  }

  if (kABCPersonWallpaperURIProperty == a1)
  {
    return @"WallpaperURI";
  }

  if (kABCPersonImageSyncFailedTimeProperty == a1)
  {
    return @"ImageSyncFailedTime";
  }

  if (kABCPersonWallpaperSyncFailedTimeProperty == a1)
  {
    return @"WallpaperSyncFailedTime";
  }

  return @"UNKNOWN_PROPERTY";
}

void ___copyPersonMatchingPrivateProperty_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      v3 = _CPCreateUTF8StringFromCFString();
      v4 = MEMORY[0x1E69E9B38];

      sqlite3_bind_text(v2, 1, v3, -1, v4);
    }
  }
}

ABRecordID ABRecordGetRecordID(ABRecordRef record)
{
  if (ABLogAPIUsage())
  {
    v12 = _isMainThread();
    v2 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ");
    _ABLog2(6, "ABRecordID ABRecordGetRecordID(ABRecordRef)", 32, v2, 0, v3, v4, v5, v12);
    CFRelease(v2);
  }

  UniqueId = ABCRecordGetUniqueId(record);
  if (ABLogAPIUsage())
  {
    _ABLog2(6, "ABRecordID ABRecordGetRecordID(ABRecordRef)", 34, @">> ", 0, v7, v8, v9, v11);
  }

  return UniqueId;
}

BOOL __AppendHasImageData_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  ABCAddressBookGetImageStore([objc_msgSend(*(a1 + 32) "query")]);
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v4 = CPSqliteConnectionStatementForSQL();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 8);
  if (!v6)
  {
    return 0;
  }

  sqlite3_bind_int(v6, 1, a3);
  v7 = sqlite3_step(*(v5 + 8)) == 100 && sqlite3_column_int(*(v5 + 8), 0) > 0;
  CPSqliteStatementReset();
  return v7;
}

uint64_t __ABCCreateAddressBookWithDatabaseDirectoryAndForceInProcessMigrationInProcessLinkingAndResetSortKeys_block_invoke(uint64_t a1)
{
  pthread_mutex_lock((*(a1 + 32) + 280));
  v2 = *(a1 + 32);
  v3 = *(v2 + 272);
  if (v3)
  {
    (*(v3 + 16))();
    v2 = *(a1 + 32);
  }

  return pthread_mutex_unlock((v2 + 280));
}

uint64_t ABStartDatabaseDoctor(uint64_t a1)
{
  result = ABDeviceIsBeforeFirstUnlockWithDataProtected();
  if ((result & 1) == 0)
  {
    result = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if ((result & 1) == 0)
    {
      pthread_mutex_lock(&stru_1ED646C30);
      if (!__startABDatabaseDoctorCoalescingTimer)
      {
        v3 = [objc_msgSend(MEMORY[0x1E69966E8] "currentEnvironment")];
        v4 = objc_alloc(MEMORY[0x1E6996678]);
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = ___createStartABDatabaseDoctorCoalescingTimer_block_invoke;
        v5[3] = &__block_descriptor_40_e5_v8__0l;
        v5[4] = a1;
        __startABDatabaseDoctorCoalescingTimer = [v4 initWithDelay:1 options:v5 block:v3 schedulerProvider:objc_msgSend(v3 downstreamScheduler:{"backgroundScheduler"), 1.0}];
      }

      pthread_mutex_unlock(&stru_1ED646C30);
      return [__startABDatabaseDoctorCoalescingTimer handleEvent];
    }
  }

  return result;
}

uint64_t ABCAddressBookMarkDirectoryForDeletion(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6996650] currentBootSessionUUID];
  if (!v2)
  {
    v3 = ABOSLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ABCAddressBookMarkDirectoryForDeletion_cold_1(v3);
    }

    v2 = @"ERROR-FETCHING-BOOT-UUID";
  }

  v4 = ABOSLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 138543618;
    *&v14[1] = a1;
    v15 = 2114;
    v16 = v2;
    _os_log_impl(&dword_1B7EFB000, v4, OS_LOG_TYPE_DEFAULT, "Marking database path %{public}@ for future deletion with current boot uuid %{public}@.", v14, 0x16u);
  }

  v5 = [objc_msgSend(MEMORY[0x1E696AC08] defaultManager];
  if ((v5 & 1) == 0)
  {
    v6 = ABOSLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ABCAddressBookMarkDirectoryForDeletion_cold_2(v14, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return v5;
}

BOOL ABCAddressBookIsDirectoryMarkedForDeletion(uint64_t a1, _BYTE *a2)
{
  v12 = 0;
  v13 = 0;
  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    v5 = ABOSLogGeneral();
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ABCAddressBookIsDirectoryMarkedForDeletion_cold_1(&v13, v5, v6, v7, v8, v9, v10, v11);
    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  if (a2)
  {
    v3 = [MEMORY[0x1E6996650] currentBootSessionUUID];
    *a2 = [v12 isEqualToString:v3] ^ 1;
  }

  return 1;
}

uint64_t ABAddressBookDeleteAllRecordsInLocalStore(void *a1)
{
  v2 = ABAddressBookCopyLocalSource(a1);
  if (v2)
  {
    v4 = v2;
    _ABAddressBookDeleteAllRecordsWithStore(a1, v2, 1);
    CFRelease(v4);
  }

  return 1;
}

void _ABCPostDatabaseChangedNotification(CFDictionaryRef theDict, int a2)
{
  valuePtr = a2;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v3 = MutableCopy;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v3, @"isLocal", v4);
  CFRelease(v4);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"ABCDataBaseChangedExternallyNotification", 0, v3, 1u);
  CFRelease(v3);
}

uint64_t _hasAnyBackgroundColorRelatedImageUpdate(const void *a1, ABRecordID a2)
{
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a1, a2);
  Value = ABCRecordGetValue(PersonWithRecordID);
  if (!Value)
  {
    return 1;
  }

  v4 = Value;
  Count = CFArrayGetCount(Value);
  v6 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    CFArrayGetValueAtIndex(v4, v7);
    v9 = CPRecordGetClass() == ABCFullSizeImageClass;
    result = v9;
    v9 = v9 || v6 == v7++;
  }

  while (!v9);
  return result;
}

void _clearBackgroundColorsForUpdatedPeople(void *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ABChangeCallbackInfoUpdatedPeople");
    if (Value)
    {

      CFDictionaryApplyFunction(Value, ABCClearBackgroundColorsForUpdatedPerson_Apply, a1);
    }
  }
}

void ABCClearBackgroundColorsForUpdatedPerson_Apply(ABRecordID a1, CFArrayRef theArray, const void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  v7 = ABOSLogImageMetadata();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 67109120;
    LODWORD(v17) = a1;
    _os_log_impl(&dword_1B7EFB000, v7, OS_LOG_TYPE_DEFAULT, "ABCClearBackgroundColorsForUpdatedPerson_Apply to recordID = %d", &v16, 8u);
  }

  v19.location = 0;
  v19.length = Count;
  if (!CFArrayContainsValue(theArray, v19, kABCPersonImageBackgroundColorsDataProperty))
  {
    if (Count >= 1)
    {
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v10 = kABCPersonImageTypeProperty == ValueAtIndex || kABCPersonWallpaperProperty == ValueAtIndex;
        v11 = v10 || kABCPersonWallpaperMetadataProperty == ValueAtIndex;
        if (v11 || kABCImageProperty == ValueAtIndex && (_hasAnyBackgroundColorRelatedImageUpdate(a3, a1) & 1) != 0)
        {
          break;
        }

        if (Count == ++v8)
        {
          goto LABEL_19;
        }
      }

      PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a3, a1);
      ABRecordSetValue(PersonWithRecordID, kABCPersonImageBackgroundColorsDataProperty, 0, 0);
      v13 = ABRecordCopyValue(PersonWithRecordID, kABPersonInternalUUIDProperty);
      v14 = ABOSLogImageMetadata();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&dword_1B7EFB000, v14, OS_LOG_TYPE_DEFAULT, "Cleared image background colors for contact identifier %{public}@", &v16, 0xCu);
      }
    }

LABEL_19:
    v15 = ABOSLogImageMetadata();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 67109120;
      LODWORD(v17) = a1;
      _os_log_impl(&dword_1B7EFB000, v15, OS_LOG_TYPE_DEFAULT, "ABCClearBackgroundColorsForUpdatedPerson_Apply scanned recordID = %d", &v16, 8u);
    }
  }
}

BOOL _shouldClearbackgroundColors(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v2 = (*(a1 + 386) & 0x40) == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = ABOSLogImageMetadata();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_1B7EFB000, v3, OS_LOG_TYPE_DEFAULT, "_shouldClearbackgroundColors = %d", v5, 8u);
  }

  return v2;
}

void _logUpdatesZeroingPhoneAndEmailForChangedPeople(void *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ABChangeCallbackInfoUpdatedPeople");
    if (Value)
    {

      CFDictionaryApplyFunction(Value, _ABCLogZeroedPhoneAndEmailForUpdatedPersonApplier, a1);
    }
  }
}

void _ABCLogZeroedPhoneAndEmailForUpdatedPersonApplier(ABRecordID recordID, int a2, ABAddressBookRef addressBook)
{
  v16 = *MEMORY[0x1E69E9840];
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, recordID);
  Value = ABCRecordGetValue(PersonWithRecordID);
  v5 = ABCRecordGetValue(PersonWithRecordID);
  if (Value && ABMultiValueGetCount(Value) || v5 && ABMultiValueGetCount(v5))
  {
    return;
  }

  v6 = ABRecordCopyOriginalValue(PersonWithRecordID, kABPersonPhoneProperty);
  v7 = ABRecordCopyOriginalValue(PersonWithRecordID, kABPersonEmailProperty);
  v8 = v7;
  if (!v6)
  {
    Count = 0;
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  Count = ABMultiValueGetCount(v6);
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10 = ABMultiValueGetCount(v8);
LABEL_10:
  if (v10 > 0 || Count >= 1)
  {
    v11 = ABOSLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218240;
      v13 = Count;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "[Unusual Clearing of Contact] Saving an ABPerson to have no phone numbers or emails. Previous number of phone numbers: %ld, emails: %ld", &v12, 0x16u);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void _logUpdatesMutatingSharedPhotoPreference(void *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ABChangeCallbackInfoUpdatedPeople");
    if (Value)
    {

      CFDictionaryApplyFunction(Value, _ABCLogMutatedSharedPhotoPreferenceForUpdatedPersonApplier, a1);
    }
  }
}

void _ABCLogMutatedSharedPhotoPreferenceForUpdatedPersonApplier(ABRecordID recordID, int a2, ABAddressBookRef addressBook)
{
  v18 = *MEMORY[0x1E69E9840];
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, recordID);
  v5 = kABPersonDisplayFlagsProperty;
  v6 = ABRecordCopyValue(PersonWithRecordID, kABPersonDisplayFlagsProperty);
  v7 = ABRecordCopyOriginalValue(PersonWithRecordID, v5);
  v8 = [v6 integerValue];
  v9 = [(__CFDate *)v7 integerValue];
  if (v8 != v9)
  {
    v10 = v9;
    v11 = ABOSLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134218496;
      v13 = v10;
      v14 = 2048;
      v15 = v8;
      v16 = 1024;
      v17 = recordID;
      _os_log_impl(&dword_1B7EFB000, v11, OS_LOG_TYPE_DEFAULT, "[Shared Photo Display Preference] Updating an ABPerson's sharedPhotoDisplayPreference from %#lo to %#lo, id: %d", &v12, 0x1Cu);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void _updateModificationDateForUpdatedAndAddedPeople(void *a1, CFDictionaryRef theDict, CFArrayRef theArray)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ABChangeCallbackInfoUpdatedPeople");
    if (Value)
    {
      CFDictionaryApplyFunction(Value, _ABCUpdateModificationDateForUpdatedPersonApplier, a1);
    }

    else
    {
      v6 = ABOSLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B7EFB000, v6, OS_LOG_TYPE_INFO, "ABCAddressBook _updateModificationDateForUpdatedAndAddedPeople() found no updated people", v7, 2u);
      }
    }
  }

  if (theArray)
  {
    v8.length = CFArrayGetCount(theArray);
    v8.location = 0;
    CFArrayApplyFunction(theArray, v8, _ABCUpdateModificationDateForRecordApplier, a1);
  }
}

void _ABCUpdateModificationDateForUpdatedPersonApplier(ABRecordID recordID, const __CFArray *a2, ABAddressBookRef addressBook)
{
  v21 = *MEMORY[0x1E69E9840];
  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, recordID);
  Count = CFArrayGetCount(a2);
  SetOfModificationDateTouchingPropertyIDs = ABPersonGetSetOfModificationDateTouchingPropertyIDs();
  if (Count < 1)
  {
    v9 = 0;
  }

  else
  {
    v7 = SetOfModificationDateTouchingPropertyIDs;
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    if (CFSetContainsValue(v7, ValueAtIndex))
    {
      v9 = 1;
    }

    else
    {
      v10 = 1;
      do
      {
        v11 = v10;
        if (Count == v10)
        {
          break;
        }

        v12 = CFArrayGetValueAtIndex(a2, v10);
        v13 = CFSetContainsValue(v7, v12);
        v10 = v11 + 1;
      }

      while (!v13);
      v9 = v11 < Count;
    }
  }

  v14 = ABRecordCopyValue(PersonWithRecordID, kABPersonInternalUUIDProperty);
  v15 = ABOSLogGeneral();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = @"will not";
    if (v9)
    {
      v16 = @"will";
    }

    v17 = 138543618;
    v18 = v16;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_1B7EFB000, v15, OS_LOG_TYPE_INFO, "ABCAddressBook _ABCUpdateModificationDateForUpdatedPersonApplier() (%{public}@) touch the modification date for contact identifier (%{public}@)", &v17, 0x16u);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v9)
  {
    _ABCUpdateModificationDateForRecordApplier(PersonWithRecordID);
  }
}

uint64_t _ABCUpdateModificationDateForRecordApplier(const void *a1)
{
  result = ABRecordGetRecordType(a1);
  if (!result)
  {

    return CPRecordSetProperty();
  }

  return result;
}

void ABPostDistributedNotification(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  if (ABGetProcessDistributedNotificationIdentifier_onceToken != -1)
  {
    ABPostDistributedNotification_cold_1();
  }

  [v3 postNotificationName:a1 object:ABGetProcessDistributedNotificationIdentifier_processNotificationIdentifier userInfo:0];

  objc_autoreleasePoolPop(v2);
}

__CFString *FamilyDirectoryURL()
{
  result = _createMutableDBDirectory();
  if (result)
  {
    v1 = result;
    v2 = [(__CFString *)result stringByAppendingPathComponent:@"Family"];
    CFRelease(v1);
    v3 = MEMORY[0x1E695DFF8];

    return [v3 fileURLWithPath:v2 isDirectory:1];
  }

  return result;
}

uint64_t FamilyDirectoryContents()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = FamilyDirectoryURL();
  if (v0 && (v1 = v0, v2 = [objc_msgSend(MEMORY[0x1E69966E8] "currentEnvironment")], v5[0] = *MEMORY[0x1E695DB78], v3 = objc_msgSend(v2, "contentsOfDirectoryAtURL:includingPropertiesForKeys:options:", v1, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v5, 1), 5), objc_msgSend(v3, "isSuccess")))
  {
    return [v3 value];
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

CFTypeRef ABCAddressBookCopyDelegateDBDirectories()
{
  result = [objc_msgSend(FamilyDirectoryContents() _cn_filter:{objc_msgSend(MEMORY[0x1E6996868], "isDirectory")), "valueForKey:", @"path"}];
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

__CFString *ABCAddressBookCopyDBPath()
{
  MutableDBDirectory = _createMutableDBDirectory();
  CFStringAppend(MutableDBDirectory, @"AddressBook.sqlitedb");
  return MutableDBDirectory;
}

CFStringRef ABCCopyLocalizedPropertyOrLabel(const __CFString *a1)
{
  v2 = _ABBundle();

  return CFBundleCopyLocalizedString(v2, a1, a1, @"Localized");
}

CFMutableArrayRef ABCCopyAllLabelsForProperty(uint64_t a1, uint64_t a2)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    return ABCDBContextCopyAllLabelsForProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ABCDeleteLabel(uint64_t result, const __CFString *a2)
{
  if (result)
  {
    result = *(result + 16);
    if (result)
    {
      return ABCDBContextDeleteLabel(result, a2);
    }
  }

  return result;
}

uint64_t ABCStartSortDataReset(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABCStartSortDataReset(ABCAddressBookRef)", 1707, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return ABStartDatabaseDoctor(a1);
}

uint64_t ABCResetSortData(uint64_t a1, uint64_t a2)
{
  Mutable = CFSetCreateMutable(0, 0, 0);
  v5 = 0;
  while (1)
  {
    v6 = ABCCopyArrayOfAllPeople(a1);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count < 1 || a2 < 1)
    {
      CFRelease(v7);
      break;
    }

    v9 = Count;
    v10 = 0;
    v11 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v11 - 1);
      UniqueId = ABCRecordGetUniqueId(ValueAtIndex);
      if (!CFSetContainsValue(Mutable, UniqueId))
      {
        ABCPersonInvalidateSyntheticProperties();
        CFSetAddValue(Mutable, UniqueId);
        ++v10;
      }

      if (v11 >= v9)
      {
        break;
      }

      ++v11;
    }

    while (v10 < a2);
    CFRelease(v7);
    v5 += v10;
    if (!v10)
    {
      break;
    }

    if (ABCResetSortData_cold_1(a1))
    {
      goto LABEL_15;
    }
  }

  ABCDBContextUpdateSortDataVersions();
  ABCAddressBookSaveWithConflictPolicy(a1, 0, 0);
LABEL_15:
  CFRelease(Mutable);
  return v5;
}

uint64_t ABCRebuildSearchIndex(void *a1)
{
  result = ABCFTSIsEnabled();
  if (result)
  {
    result = a1[2];
    if (result)
    {
      CPRecordStoreGetDatabase();
      result = CPSqliteDatabaseConnectionForWriting();
      if (result)
      {
        v3 = result;
        ABCDBContextCreateSearchTablesAndDropFirst(result, 1);
        v4 = ABAddressBookCopyArrayOfAllPeople(a1);
        sqlite3_exec(*(v3 + 8), "BEGIN IMMEDIATE;", 0, 0, 0);
        if (v4)
        {
          Count = CFArrayGetCount(v4);
          if (Count >= 1)
          {
            v6 = Count;
            for (i = 0; i != v6; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
              ABCDContextCreateSearchIndexEntryForPerson(v3, ValueAtIndex);
              v9 = CFArrayGetValueAtIndex(v4, i);
              ABCDContextUpdateSearchIndexForPerson(v3, v9);
            }
          }

          CFRelease(v4);
        }

        v10 = *(v3 + 8);

        return sqlite3_exec(v10, "END;", 0, 0, 0);
      }
    }
  }

  return result;
}

uint64_t ABGetProcessDistributedNotificationIdentifier()
{
  if (ABGetProcessDistributedNotificationIdentifier_onceToken != -1)
  {
    ABPostDistributedNotification_cold_1();
  }

  return ABGetProcessDistributedNotificationIdentifier_processNotificationIdentifier;
}

id __ABGetProcessDistributedNotificationIdentifier_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AFB0] "UUID")];
  ABGetProcessDistributedNotificationIdentifier_processNotificationIdentifier = result;
  return result;
}

uint64_t ABCAddressBookDatabaseChanged(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a2 + 80));
  v3 = *(a2 + 384);
  if ((v3 & 0x3FC) != 0)
  {
    *(a2 + 384) = v3 & 0xFFFFFC03 | (4 * ((v3 + 1020) >> 2));
  }

  else
  {
    v5 = *(a2 + 144);
    if (v5)
    {
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count;
        Copy = CFArrayCreateCopy(0, *(a2 + 144));
        v9 = CFArrayCreateCopy(0, *(a2 + 160));
        v10 = CFArrayCreateCopy(0, *(a2 + 152));
        v11 = 0;
        v12 = *MEMORY[0x1E695E738];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Copy, v11);
          v14 = CFArrayGetValueAtIndex(v9, v11);
          v15 = CFArrayGetValueAtIndex(v10, v11);
          if (!ValueAtIndex)
          {
            ABCAddressBookDatabaseChanged_cold_1();
          }

          if (v15 == v12)
          {
            v16 = 0;
          }

          else
          {
            v16 = v15;
          }

          invokeOnThread(a2, ValueAtIndex, v16, v14);
          ++v11;
        }

        while (v7 != v11);
        CFRelease(Copy);
        CFRelease(v9);
        CFRelease(v10);
      }
    }
  }

  return pthread_mutex_unlock((a2 + 80));
}

void ABAddressBookUnregisterChangeCallback(uint64_t a1, const void *a2, const void *a3)
{
  if (ABLogAPIUsage())
  {
    v6 = _isMainThread();
    v7 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v6);
    v8 = ABLogAddressBook(a1);
    _ABLog2(6, "void ABAddressBookUnregisterChangeCallback(ABAddressBookRef, ABChangeCallback, void *)", 2191, v7, @"%@", v9, v10, v11, v8);
    CFRelease(v7);
  }

  if (!a1)
  {
    ABAddressBookUnregisterChangeCallback_cold_1();
  }

  v12 = *(a1 + 168);
  if (v12)
  {
    Count = CFArrayGetCount(v12);
    if (Count >= 1)
    {
      v14 = Count;
      v15 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 168), v15);
        if (CFArrayGetValueAtIndex(*(a1 + 176), v15) == a3 && ValueAtIndex == a2)
        {
          break;
        }

        if (++v15 >= v14)
        {
          return;
        }
      }

      CFArrayRemoveValueAtIndex(*(a1 + 168), v15);
      v18 = *(a1 + 176);

      CFArrayRemoveValueAtIndex(v18, v15);
    }
  }
}

uint64_t ABAddressBookHasPendingTransaction()
{
  CPRecordStoreGetDatabase();
  result = CPSqliteDatabaseConnectionForWriting();
  if (result)
  {
    return sqlite3_get_autocommit(*(result + 8)) == 0;
  }

  return result;
}

uint64_t ABCAddressBookShouldAddMember(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ABCGroupCopySource();
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  Policy = ABSourceGetPolicy(v6);
  if (Policy)
  {
    ShouldAddMember = ABPolicyShouldAddMember(Policy, a1, a2, a3);
  }

  else
  {
    ShouldAddMember = 1;
  }

  CFRelease(v7);
  return ShouldAddMember;
}

uint64_t ABCAddressBookShouldSetValue(const void *a1, ABRecordRef record, uint64_t a3, void *a4)
{
  if (ABRecordGetRecordType(record))
  {
    v8 = ABCGroupCopySource();
  }

  else
  {
    v8 = ABCPersonCopySource();
  }

  v9 = v8;
  if (!v8)
  {
    return 1;
  }

  Policy = ABSourceGetPolicy(v8);
  if (Policy)
  {
    ShouldSetValue = ABPolicyShouldSetValue(Policy, a1, record, a3, a4, 0, 0);
  }

  else
  {
    ShouldSetValue = 1;
  }

  CFRelease(v9);
  return ShouldSetValue;
}

void *ABAddressBookSetSectionDictionary(uint64_t a1, CFDictionaryRef theDict)
{
  *(a1 + 248) = 1;
  result = *(a1 + 184);
  if (result != theDict)
  {
    if (result)
    {
      CFRelease(result);
    }

    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    }

    else
    {
      MutableCopy = 0;
    }

    *(a1 + 184) = MutableCopy;
    v6 = *(a1 + 224);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 224) = 0;
    }

    result = ABCFTSIsEnabled();
    if (result)
    {
      v7 = ABCCreateCollator(a1, 1);
      v8 = ABAddressBookCopyCollatorType(a1, 1);
      if (v8)
      {
        v9 = v8;
        v10 = CFLocaleCreate(0, v8);
        CFRelease(v9);
      }

      else
      {
        v10 = 0;
      }

      CPRecordStoreGetDatabase();
      v11 = CPSqliteDatabaseConnectionForReading();
      result = ABCFTSSetCollatorOverrideForDatabaseConnectionHandle(*(v11 + 8), v7);
      if (v10)
      {
        v12 = *(v11 + 8);

        return ABCFTSSetLocaleOverrideForDatabaseConnectionHandle(v12, v10);
      }
    }
  }

  return result;
}

const __CFString *ABAddressBookCopyCollatorType(uint64_t a1, int a2)
{
  if (ABLogAPIUsage())
  {
    v4 = _isMainThread();
    v5 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v4);
    v6 = ABLogAddressBook(a1);
    _ABLog2(6, "CFStringRef ABAddressBookCopyCollatorType(ABAddressBookRef, _Bool)", 2556, v5, @"%@", v7, v8, v9, v6);
    CFRelease(v5);
  }

  v10 = ABAddressBookCopySectionInfoDictionary(a1);
  if (!v10)
  {
    if ((a2 & 1) == 0)
    {
      return 0;
    }

LABEL_14:
    v15 = 1;
    v17 = ABCCopyUserLanguage();
    LocaleIdentifierFromComponents = 0;
    v16 = v17;
    goto LABEL_15;
  }

  v11 = v10;
  if (a2)
  {
    Value = CFDictionaryGetValue(v10, @"ABSearchCollationKey");
    if (Value)
    {
      LocaleIdentifierFromComponents = Value;
      v14 = 1;
LABEL_8:
      CFRetain(LocaleIdentifierFromComponents);
      goto LABEL_9;
    }
  }

  LocaleIdentifierFromComponents = CFDictionaryGetValue(v11, @"ABCollationKey");
  v14 = 0;
  if (LocaleIdentifierFromComponents)
  {
    goto LABEL_8;
  }

LABEL_9:
  CFRelease(v11);
  if ((v14 & 1) != 0 || !a2)
  {
    return LocaleIdentifierFromComponents;
  }

  if (!LocaleIdentifierFromComponents)
  {
    goto LABEL_14;
  }

  v15 = 0;
  v16 = 0;
  v17 = LocaleIdentifierFromComponents;
LABEL_15:
  v18 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E6C8], @"search");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E6F0], v17);
  if ((v15 & 1) == 0)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(v18, Mutable);
  CFRelease(Mutable);
  if (v16)
  {
    CFRelease(v16);
  }

  return LocaleIdentifierFromComponents;
}

uint64_t ABAddressBookGetCollator(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 192);
  }

  else
  {
    v1 = 0;
  }

  if (a1)
  {
    v2 = (a1 + 208);
  }

  else
  {
    v2 = 0;
  }

  return _ABAddressBookGetCollator(a1, v1, v2, &ABAddressBookGetSortCollator__globalSortCollator, &ABAddressBookGetSortCollator__globalSortCollatorLocaleIdentifier, 0);
}

uint64_t ABAddressBookGetSortCollator(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 192);
  }

  else
  {
    v1 = 0;
  }

  if (a1)
  {
    v2 = (a1 + 208);
  }

  else
  {
    v2 = 0;
  }

  return _ABAddressBookGetCollator(a1, v1, v2, &ABAddressBookGetSortCollator__globalSortCollator, &ABAddressBookGetSortCollator__globalSortCollatorLocaleIdentifier, 0);
}

uint64_t _ABAddressBookGetCollator(uint64_t a1, uint64_t *a2, CFTypeRef *a3, uint64_t *a4, CFTypeRef *a5, int a6)
{
  v12 = ABCCopyUserLanguage();
  v13 = v12;
  if (a2)
  {
    if (a3 && v12 && *a3 && !CFEqual(v12, *a3))
    {
      if (*a2)
      {
        ABCReleaseCollator(*a2);
        *a2 = 0;
      }

      *a2 = ABCCreateCollator(a1, a6);
    }

    else
    {
      v14 = *a2;
      if (*a2)
      {
        goto LABEL_26;
      }

      v15 = ABCCreateCollator(a1, a6);
      *a2 = v15;
      if (!a3)
      {
LABEL_16:
        v14 = v15;
        goto LABEL_26;
      }
    }

    if (*a3)
    {
      CFRelease(*a3);
    }

    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (!a4)
  {
    v14 = 0;
    goto LABEL_26;
  }

  if (a5 && v12 && *a5 && !CFEqual(v12, *a5))
  {
    if (*a4)
    {
      ABCReleaseCollator(*a4);
      *a4 = 0;
    }

    *a4 = ABCCreateCollator(a1, a6);
  }

  else
  {
    v14 = *a4;
    if (*a4)
    {
      goto LABEL_26;
    }

    v15 = ABCCreateCollator(a1, a6);
    *a4 = v15;
    if (!a5)
    {
      goto LABEL_16;
    }
  }

  if (*a5)
  {
    CFRelease(*a5);
  }

  a3 = a5;
  a2 = a4;
  if (v13)
  {
LABEL_24:
    CFRetain(v13);
  }

LABEL_25:
  *a3 = v13;
  v14 = *a2;
LABEL_26:
  if (v13)
  {
    CFRelease(v13);
  }

  return v14;
}

uint64_t ABAddressBookGetSearchCollator(uint64_t a1)
{
  if (a1)
  {
    v1 = (a1 + 200);
  }

  else
  {
    v1 = 0;
  }

  if (a1)
  {
    v2 = (a1 + 216);
  }

  else
  {
    v2 = 0;
  }

  return _ABAddressBookGetCollator(a1, v1, v2, &ABAddressBookGetSearchCollator__globalSearchCollator, &ABAddressBookGetSearchCollator__globalSearchCollatorLocaleIdentifier, 1);
}

CFStringTokenizerRef ABAddressBookGetWordTokenizer(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 224);
    v3 = ABAddressBookCopyCollatorType(a1, 1);
    if (v3)
    {
      v4 = v3;
      v5 = CFLocaleCreate(0, v3);
      CFRelease(v4);
      if (!v5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v6 = CFLocaleCopyPreferredLanguages();
      if (v6)
      {
        v7 = v6;
        if (CFArrayGetCount(v6))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
          v5 = CFLocaleCreate(0, ValueAtIndex);
          CFRelease(v7);
          if (v5)
          {
            goto LABEL_12;
          }
        }

        else
        {
          CFRelease(v7);
        }
      }

      v5 = CFLocaleCopyCurrent();
      if (!v5)
      {
LABEL_21:
        *(a1 + 224) = v2;
        return v2;
      }
    }

LABEL_12:
    v9 = *(a1 + 232);
    if (v9 && (v10 = MEMORY[0x1B8CB54E0](v5), !CFEqual(v9, v10)))
    {
      if (v2)
      {
        CFRelease(v2);
      }

      CFRelease(*(a1 + 232));
      *(a1 + 232) = 0;
    }

    else if (v2)
    {
LABEL_20:
      CFRelease(v5);
      goto LABEL_21;
    }

    v13.location = 0;
    v13.length = 0;
    v2 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], &stru_1F2FE2718, v13, 0x810000uLL, v5);
    v11 = MEMORY[0x1B8CB54E0](v5);
    *(a1 + 232) = CFRetain(v11);
    goto LABEL_20;
  }

  return 0;
}

const __CFArray *ABAddressBookCopySectionInfoDictionary(uint64_t a1)
{
  if (a1)
  {
    v3 = ABCCopyUserLanguage();
    v4 = v3;
    v5 = *(a1 + 184);
    if (!v5)
    {
      goto LABEL_11;
    }

    if (!*(a1 + 248))
    {
      v6 = CFEqual(v3, *(a1 + 240));
      v5 = *(a1 + 184);
      if (!v6)
      {
        CFRelease(*(a1 + 184));
        *(a1 + 184) = 0;
        goto LABEL_11;
      }

      if (!v5)
      {
LABEL_11:
        *(a1 + 184) = ABAddressBookCreateSectionHeaderDictionary();
        v8 = *(a1 + 240);
        if (v8)
        {
          CFRelease(v8);
        }

        if (v4)
        {
          v9 = CFRetain(v4);
        }

        else
        {
          v9 = 0;
        }

        *(a1 + 240) = v9;
        v5 = *(a1 + 184);
        if (!v5)
        {
          goto LABEL_18;
        }
      }
    }

    CFRetain(v5);
LABEL_18:
    if (v4)
    {
      CFRelease(v4);
    }

    return v5;
  }

  return ABAddressBookCreateSectionHeaderDictionary();
}

const void *ABAddressBookCopySectionIndices(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopySectionIndices(ABAddressBookRef)", 2593, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABAddressBookCopySectionInfoDictionary(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"SectionIndices");
  v11 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v9);
  return v11;
}

const void *ABAddressBookCopySectionHeaderDictionaries(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (ABLogAPIUsage())
  {
    v8 = _isMainThread();
    v9 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v8);
    v10 = ABLogAddressBook(a1);
    _ABLog2(6, "CFArrayRef ABAddressBookCopySectionHeaderDictionaries(ABAddressBookRef, CFArrayRef *, CFArrayRef *, UCollator *)", 2635, v9, @"%@", v11, v12, v13, v10);
    CFRelease(v9);
  }

  v14 = ABAddressBookCopySectionInfoDictionary(a1);
  if (v14)
  {
    v15 = v14;
    Value = CFDictionaryGetValue(v14, @"SectionHeaders");
    if (!Value)
    {
LABEL_35:
      CFRelease(v15);
      return Value;
    }

    if (!(a2 | a3))
    {
LABEL_34:
      CFRetain(Value);
      goto LABEL_35;
    }

    v17 = CFDictionaryGetValue(v15, @"LanguageSortedSectionHeaders");
    v18 = v17;
    if (v17)
    {
      CFRetain(v17);
      v19 = CFDictionaryGetValue(v15, @"LanguageSortedSectionHeaderSortKeys");
      if (!v19)
      {
LABEL_13:
        if (a2)
        {
LABEL_14:
          *a2 = v18;
LABEL_30:
          if (a3)
          {
            *a3 = v19;
          }

          else if (v19)
          {
            CFRelease(v19);
          }

          goto LABEL_34;
        }

LABEL_28:
        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_30;
      }
    }

    else
    {
      v20 = CFDictionaryGetValue(v15, @"LanguageSortedSectionHeaderSortKeys");
      if (!v20)
      {
        v35 = a2;
        v36 = a3;
        Count = CFArrayGetCount(Value);
        v22 = *MEMORY[0x1E695E480];
        v23 = MEMORY[0x1E695E9C0];
        theArray = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
        allocator = v22;
        Mutable = CFArrayCreateMutable(v22, Count, v23);
        v40 = Count;
        if (Count >= 1)
        {
          v24 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, v24);
            v26 = CFDictionaryGetValue(ValueAtIndex, @"Headers");
            MutableCopy = CFArrayCreateMutableCopy(allocator, 0, v26);
            v28 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            v29 = CFArrayGetCount(v26);
            if (v29 >= 1)
            {
              for (i = 0; i != v29; ++i)
              {
                v31 = CFArrayGetValueAtIndex(v26, i);
                v32 = ABCreateDataSortKey(v31, a4, 0);
                if (v32)
                {
                  v33 = v32;
                  CFArrayAppendValue(v28, v32);
                  CFRelease(v33);
                }
              }
            }

            v41.location = 0;
            v41.length = v29;
            CFArraySortValues(MutableCopy, v41, ABCompareStringsUsingICUSortKey, a4);
            v42.location = 0;
            v42.length = v29;
            CFArraySortValues(v28, v42, ABCompareDataSortKeys, a4);
            if (MutableCopy)
            {
              CFArrayAppendValue(theArray, MutableCopy);
              CFRelease(MutableCopy);
            }

            if (v28)
            {
              CFArrayAppendValue(Mutable, v28);
              CFRelease(v28);
            }

            ++v24;
          }

          while (v24 != v40);
        }

        v18 = theArray;
        CFDictionarySetValue(v15, @"LanguageSortedSectionHeaders", theArray);
        v19 = Mutable;
        CFDictionarySetValue(v15, @"LanguageSortedSectionHeaderSortKeys", Mutable);
        a2 = v35;
        a3 = v36;
        if (v35)
        {
          goto LABEL_14;
        }

        goto LABEL_28;
      }

      v19 = v20;
    }

    CFRetain(v19);
    goto LABEL_13;
  }

  return 0;
}

const void *ABAddressBookCopyLocalizedSectionIndexDictionary(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFDictionaryRef ABAddressBookCopyLocalizedSectionIndexDictionary(ABAddressBookRef)", 2696, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABAddressBookCopySectionInfoDictionary(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"LocalizedSectionIndices");
  v11 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v9);
  return v11;
}

const void *ABAddressBookCopyLocalizedSectionHeaderDictionary(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFDictionaryRef ABAddressBookCopyLocalizedSectionHeaderDictionary(ABAddressBookRef)", 2710, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = ABAddressBookCopySectionInfoDictionary(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"LocalizedSectionHeaders");
  v11 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v9);
  return v11;
}

const void *ABAddressBookCopySectionNameTransform(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFStringRef ABAddressBookCopySectionNameTransform(ABAddressBookRef)", 2739, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return _ABAddressBookCopySectionPropertyValue(a1, @"NameTransform");
}

const void *_ABAddressBookCopySectionPropertyValue(uint64_t a1, const void *a2)
{
  v3 = ABAddressBookCopySectionInfoDictionary(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, a2);
  v6 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v4);
  return v6;
}

const void *ABAddressBookCopySearchTransform(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "CFStringRef ABAddressBookCopySearchTransform(ABAddressBookRef)", 2745, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  return _ABAddressBookCopySectionPropertyValue(a1, @"SearchTransform");
}

BOOL ABAddressBookShouldUseExtraTokenizations(uint64_t a1)
{
  if (ABLogAPIUsage())
  {
    v2 = _isMainThread();
    v3 = CFStringCreateWithFormat(0, 0, @"<< Main thread:%@ | ", v2);
    v4 = ABLogAddressBook(a1);
    _ABLog2(6, "_Bool ABAddressBookShouldUseExtraTokenizations(ABAddressBookRef)", 2751, v3, @"%@", v5, v6, v7, v4);
    CFRelease(v3);
  }

  v8 = _ABAddressBookCopySectionPropertyValue(a1, @"ABUseExtraTokenizations");
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFGetTypeID(v8);
  if (v10 == CFBooleanGetTypeID())
  {
    v11 = CFBooleanGetValue(v9) != 0;
  }

  else
  {
    fwrite("The ABContactSections plist contains an entry of the wrong type for ABUseExtraTokenizations it should be a BOOLean value. Ignoring:", 0x85uLL, 1uLL, *MEMORY[0x1E69E9848]);
    CFShow(v9);
    v11 = 0;
  }

  CFRelease(v9);
  return v11;
}

void ABDatabaseChangedByOtherProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  pthread_mutex_lock(&stru_1ED646C70);
  if (_darwinNotificationCancellationCount < 1)
  {
    pthread_mutex_unlock(&stru_1ED646C70);

    _ABCPostDatabaseChangedNotification(a5, 0);
  }

  else
  {
    --_darwinNotificationCancellationCount;

    pthread_mutex_unlock(&stru_1ED646C70);
  }
}

void ___createStartABDatabaseDoctorCoalescingTimer_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  Remote = CFMessagePortCreateRemote(*MEMORY[0x1E695E480], @"com.apple.ABDatabaseDoctor");
  if (Remote)
  {
    v2 = Remote;
    CFMessagePortSendRequest(Remote, 1, 0, 1.0, 0.0, 0, 0);
    CFRelease(v2);
  }

  else
  {
    v3 = ABOSLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___createStartABDatabaseDoctorCoalescingTimer_block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  objc_autoreleasePoolPop(v0);
}

uint64_t _createDefaultCoalescingTimerForDarwinNotification(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = objc_alloc(MEMORY[0x1E6996678]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___createDefaultCoalescingTimerForDarwinNotification_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = a1;
  v5 = [v4 initWithDelay:1 options:v7 block:v3 schedulerProvider:objc_msgSend(v3 downstreamScheduler:{"backgroundScheduler"), 1.0}];
  objc_autoreleasePoolPop(v2);
  return v5;
}

void ___createDefaultCoalescingTimerForDarwinNotification_block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

const __CFArray *ABAddressBookCreateSectionHeaderDictionary()
{
  v0 = _ABBundle();
  v1 = CFBundleCopyBundleLocalizations(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFPreferencesCopyAppValue(@"AppleLanguages", *MEMORY[0x1E695E890]);
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3))
    {
      v5 = CFBundleCopyLocalizationsForPreferences(v2, v4);
      CFRelease(v4);
      if (!v5)
      {
LABEL_5:
        v6 = v2;
LABEL_22:
        CFRelease(v6);
        return v5;
      }

      goto LABEL_8;
    }

    CFRelease(v4);
  }

  v5 = CFBundleCopyLocalizationsForPreferences(v2, 0);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_8:
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    v6 = 0;
  }

  else
  {
    v8 = Count;
    v9 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v9 - 1);
      v11 = _ABBundle();
      v12 = CFBundleCopyResourceURLForLocalization(v11, @"ABContactSections", @"plist", 0, ValueAtIndex);
      v6 = v12;
      if (v9 >= v8)
      {
        break;
      }

      ++v9;
    }

    while (!v12);
  }

  CFRelease(v5);
  CFRelease(v2);
  if (v6)
  {
    v13 = *MEMORY[0x1E695E480];
    v14 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], v6);
    if (v14)
    {
      v15 = v14;
      if (CFReadStreamOpen(v14))
      {
        v5 = CFPropertyListCreateWithStream(v13, v15, 0, 1uLL, 0, 0);
      }

      else
      {
        v5 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_22;
  }

  return 0;
}

CFMutableArrayRef OUTLINED_FUNCTION_9()
{

  return CFArrayCreateMutable(v0, 0, 0);
}

void OUTLINED_FUNCTION_10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

CFStringRef OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, const __CFString *a3)
{

  return CFStringCreateWithFormat(0, 0, a3);
}

uint64_t ABCGroupGetRecordForUniqueID(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return ABCDBContextRecordForUIDOfType(*(result + 16), a2, ABCGroupClass[0]);
  }

  return result;
}

uint64_t ABCGroupCopyRecordsForUUIDs(uint64_t result, const __CFArray *a2)
{
  if (result)
  {
    return ABCDBContextCopyRecordsForUUIDsOfType(*(result + 16), a2, ABCGroupClass[0]);
  }

  return result;
}

uint64_t ABCGroupAddMember(const void *a1, const void *a2)
{
  if (ABCRecordGetRecordType() != 257)
  {
    return 0;
  }

  return ABCGroupAddMemberOrSubgroup(a1, a2);
}

uint64_t ABCGroupAddMemberAndReturnError(const void *a1, const void *a2)
{
  if (ABCRecordGetRecordType() != 257)
  {
    return 0;
  }

  return ABCGroupAddMemberOrSubgroup(a1, a2);
}

uint64_t ABCGroupAddSubgroup(const void *a1, const void *a2)
{
  if (ABCRecordGetRecordType() != 258)
  {
    return 0;
  }

  return ABCGroupAddMemberOrSubgroup(a1, a2);
}

__CFString *ABCGroupNameForProperty(int a1)
{
  if (kABGroupNameProperty == a1)
  {
    return @"Name";
  }

  if (kABGroupExternalIdentifierProperty == a1)
  {
    return @"ExternalIdentifier";
  }

  if (kABGroupExternalModificationTagProperty == a1)
  {
    return @"ExternalModificationTag";
  }

  if (kABGroupExternalRepresentationProperty == a1)
  {
    return @"ExternalRepresentation";
  }

  if (kABGroupExternalUUIDProperty == a1)
  {
    return @"ExternalUUID";
  }

  if (kABGroupInternalUUIDProperty == a1)
  {
    return @"guid";
  }

  return @"UNKNOWN_PROPERTY";
}

uint64_t ABCGroupCreateNewGroup()
{
  ABCInitializeLibrary();

  return CPRecordCreate();
}

uint64_t ABCGroupCreateNewGroupAndReturnError()
{
  ABCInitializeLibrary();

  return CPRecordCreate();
}

const void *ABCGroupCreateNewGroupInSourceAndReturnError(uint64_t a1, const void *a2, CFErrorRef *a3)
{
  ABCInitializeLibrary();
  v6 = CPRecordCreate();
  if (a2)
  {
    if ((ABSourceIsContentReadonly(a2) & 1) != 0 || (Policy = ABCSourceGetPolicy(a2)) != 0 && !ABPolicyShouldAddRecord(Policy, a1, v6, 0))
    {
      if (a3)
      {
        *a3 = CFErrorCreate(0, @"ABAddressBookErrorDomain", 0, 0);
      }

      CFRelease(v6);
      return 0;
    }

    else
    {
      CPRecordSetProperty();
    }
  }

  return v6;
}

uint64_t ABCGroupPrepareToAddToAddressBook(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = ABCGroupCopySource();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v10 = ABAddressBookCopyDefaultSource(a2);
    if (!v10)
    {
      return 1;
    }

    v7 = v10;
    CPRecordSetProperty();
    if ((ABRecordGetIntValue(v7, kABSourceTypeProperty) & 0x1000000) != 0)
    {
      ShouldAddRecord = 0;
      goto LABEL_4;
    }

    Policy = ABCSourceGetPolicy(v7);
    if (Policy)
    {
      ShouldAddRecord = ABPolicyShouldAddRecord(Policy, a2, a1, a3);
      goto LABEL_4;
    }
  }

  ShouldAddRecord = 1;
LABEL_4:
  CFRelease(v7);
  return ShouldAddRecord;
}

uint64_t ABCGroupCopySource()
{
  v0 = ABCGetAddressBookForRecord();
  v1 = CPRecordCopyProperty();
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v0 == 0;
  }

  if (!v2)
  {
    Property = CPRecordGetProperty();
    if (Property == -1)
    {
      return 0;
    }

    else
    {
      RecordForUniqueID = ABCSourceGetRecordForUniqueID(v0, Property);
      v1 = RecordForUniqueID;
      if (RecordForUniqueID)
      {
        CFRetain(RecordForUniqueID);
      }
    }
  }

  return v1;
}

uint64_t __ABCCopyArrayOfAllGroupsInSource_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      return sqlite3_bind_int(*(a2 + 8), 1, *(result + 32));
    }
  }

  return result;
}

uint64_t ABCCopyArrayOfAllGroupsWithSortOrdering(uint64_t result)
{
  if (result)
  {
    return CPRecordStoreCopyAllInstancesOfClassWhere();
  }

  return result;
}

uint64_t ABCCopyArrayOfAllGroupsWithMembersOfTypeWithUUIDs(uint64_t a1, unsigned int a2, int a3, CFArrayRef theArray)
{
  v4 = 0;
  if (a1)
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v4 = 0;
      if (a2 <= 1)
      {
        if (Count)
        {
          Mutable = CFStringCreateMutable(0, 0);
          v10 = Mutable;
          v11 = @"1";
          if (!a2)
          {
            v11 = @"0";
          }

          v12 = @"ABGroup";
          if (!a2)
          {
            v12 = @"ABPerson";
          }

          v13 = &stru_1F2FE2718;
          if (a3)
          {
            v13 = @"RECURSIVE";
          }

          CFStringAppendFormat(Mutable, 0, CFSTR(" WHERE ROWID IN (WITH %@ direct_members(groupid) AS (SELECT  abgm.group_id FROM ABGroupMembers abgm JOIN %@ abr ON abgm.member_type = %@ AND abgm.member_id = abr.ROWID WHERE abr.guid IN("), v13, v12, v11);
          v14 = CFArrayGetCount(theArray);
          if (v14 >= 1)
          {
            for (i = 0; i != v14; ++i)
            {
              if (i)
              {
                v16 = @", ?";
              }

              else
              {
                v16 = @"?";
              }

              CFStringAppend(v10, v16);
            }
          }

          CFStringAppend(v10, @")"));
          if (a3)
          {
            CFStringAppendFormat(v10, 0, @", ancestor_group(a_groupid) AS (SELECT groupid FROM direct_members UNION SELECT abgm.group_id FROM ABGroupMembers abgm JOIN ABGroup abg ON abgm.member_type = 1 AND abgm.member_id = abg.ROWID JOIN ancestor_group ag ON ag.a_groupid = abgm.member_id) SELECT a_groupid FROM ancestor_group"));
          }

          else
          {
            CFStringAppendFormat(v10, 0, @" SELECT groupid FROM direct_members"));
          }

          v4 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
          if (v10)
          {
            CFRelease(v10);
          }
        }
      }
    }
  }

  return v4;
}

uint64_t __ABCCopyArrayOfAllGroupsWithMembersOfTypeWithUUIDs_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8))
    {
      v3 = result;
      if (*(result + 32) >= 1)
      {
        v4 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(v3 + 40), v4);
          v5 = *(a2 + 8);
          ++v4;
          v6 = _CPCreateUTF8StringFromCFString();
          result = sqlite3_bind_text(v5, v4, v6, -1, MEMORY[0x1E69E9B38]);
        }

        while (*(v3 + 32) > v4);
      }
    }
  }

  return result;
}

uint64_t ABCGroupDelete(int a1)
{
  result = CPSqliteConnectionStatementForSQL();
  if (result)
  {
    sqlite3_bind_int(*(result + 8), 1, a1);
    CPSqliteStatementPerform();
    CPSqliteStatementReset();

    return CPSqliteDatabaseReleaseSqliteStatement();
  }

  return result;
}

uint64_t _prepareGroupForSave()
{
  result = CPRecordGetProperty();
  if (result)
  {
    CPRecordGetID();

    return CPRecordSetProperty();
  }

  return result;
}

void showMembersAndSubgroups(const __CFArray *a1)
{
  if (a1)
  {
    Count = ABCMultiValueGetCount(a1);
    v3 = Count - 1;
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = MEMORY[0x1E69E9848];
      do
      {
        v7 = ABCMultiValueCopyValueAtIndex(a1, v5);
        v8 = *v6;
        if (ABCRecordGetRecordType() == 257)
        {
          v9 = "person";
        }

        else
        {
          v9 = "group";
        }

        ID = CPRecordGetID();
        fprintf(v8, "%s %d", v9, ID);
        if (v7)
        {
          CFRelease(v7);
        }

        if (v5 < v3)
        {
          fwrite(", ", 2uLL, 1uLL, *v6);
        }

        ++v5;
      }

      while (v4 != v5);
    }
  }
}

uint64_t addMemberFromUID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = sqlite3_column_int(*(a1 + 8), 0);
  v6 = *(a2 + 8);
  v7 = sqlite3_column_int(*(a1 + 8), 1);
  v8 = &ABCPersonClass;
  if (v7)
  {
    v8 = ABCGroupClass;
  }

  v9 = ABCDBContextRecordForUIDOfType(v6, v5, *v8);
  if (v9)
  {
    ABCMultiValueAdd(v4, v9, &stru_1F2FE2718, 0, 0);
  }

  return 0;
}

CFIndex OUTLINED_FUNCTION_4_0(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, v1);
}

CFIndex OUTLINED_FUNCTION_5_0(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, v1);
}

uint64_t _configureImageDatabase(uint64_t result, uint64_t a2)
{
  if (result && a2)
  {
    CPRecordStoreCreateTablesForClass();
    CPRecordStoreCreateTablesForClass();
    CPRecordStoreCreateTablesForClass();

    return _recreateIndexes();
  }

  return result;
}

uint64_t _databaseDeleted(uint64_t *a1, int a2)
{
  ABDiagnosticsEnabled();
  _ABLog2(4, "void _databaseDeleted(CPSqliteDatabase *, CPSqliteDatabaseDeleteReason)", 183, 0, @"image database was deleted, %@", v4, v5, v6, *a1);
  result = ABDatabaseIntegrityResolutionRecorder(1);
  if (!a2)
  {
    result = os_variant_has_internal_content();
    if (result)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_async(global_queue, &__block_literal_global_0);

      return sleep(1u);
    }
  }

  return result;
}

uint64_t _imageStoreMigrationMigrateDatabase(uint64_t a1, uint64_t a2, int a3, __CFArray *a4)
{
  v7 = MEMORY[0x1E695E480];
  if (!a2)
  {
    goto LABEL_86;
  }

  if (a3 < 5)
  {
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
    _recreateIndexes();
    CPSqliteConnectionPerformSQL();
    v147 = 0;
    ppStmt[0] = 0;
    v145 = 0;
    pStmt = 0;
    if (!sqlite3_prepare(*(a2 + 8), "SELECT record_id, crop_x, crop_y, crop_width, crop_height, data FROM ABImage WHERE format=?;", -1, ppStmt, 0) && !sqlite3_prepare(*(a2 + 8), "SELECT record_id, crop_x, crop_y, crop_width, data FROM ABFullSizeImage;", -1, &v147, 0) && !sqlite3_prepare(*(a2 + 8), "INSERT OR IGNORE INTO ABFullSizeImage(record_id, crop_x, crop_y, crop_width, data) VALUES (?, ?, ?, ?, ?);", -1, &pStmt, 0) && !sqlite3_prepare(*(a2 + 8), "INSERT OR IGNORE INTO ABThumbnailImage(record_id, format, derived_from_format, data) VALUES (?, ?, 2, ?);", -1, &v145, 0))
    {
      v136 = a4;
      allocator = *v7;
      v8 = *MEMORY[0x1E695E498];
      v9 = &dword_1B7F76EBC;
      v10 = 2;
      do
      {
        sqlite3_bind_int(ppStmt[0], 1, v10);
        while (sqlite3_step(ppStmt[0]) == 100)
        {
          v11 = sqlite3_column_int(ppStmt[0], 0);
          v12 = sqlite3_column_int(ppStmt[0], 1);
          v13 = sqlite3_column_int(ppStmt[0], 2);
          v14 = sqlite3_column_int(ppStmt[0], 3);
          v15 = sqlite3_column_int(ppStmt[0], 4);
          v16 = sqlite3_column_blob(ppStmt[0], 5);
          v17 = sqlite3_column_bytes(ppStmt[0], 5);
          if (v16)
          {
            if (v17 >= 1)
            {
              v18 = CFDataCreateWithBytesNoCopy(allocator, v16, v17, v8);
              if (v18)
              {
                v19 = v18;
                LODWORD(cf) = 0;
                v144 = 0;
                if (ABImageUtilsCopyImageSourceAndGetSizeFromData(v18, 0, &cf, &v144))
                {
                  v20 = v12;
                  v21 = v13;
                  v22 = v14;
                  v152.size.height = v15;
                  v152.origin.x = v12;
                  v152.origin.y = v13;
                  v152.size.width = v14;
                  if (CGRectIsEmpty(v152))
                  {
                    v23 = cf;
                    v24 = v144;
                    IsLessThanOrEqualToPixelSize = ABPersonImageFormatIsLessThanOrEqualToPixelSize(1u, cf, v144);
                    v26 = 0.0;
                    v27 = 0.0;
                    if (IsLessThanOrEqualToPixelSize)
                    {
                      v26 = ABImageUtilsCenteredRectWithFullScreenRatioForRect(0.0, 0.0, v23, v24);
                      v23 = v28;
                      v24 = v29;
                    }

                    v20 = ABImageUtilsCenteredSquareForRect(v26, v27, v23, v24);
                    v21 = v30;
                    v22 = v31;
                  }

                  sqlite3_bind_int(pStmt, 1, v11);
                  sqlite3_bind_int(pStmt, 2, v20);
                  sqlite3_bind_int(pStmt, 3, v21);
                  sqlite3_bind_int(pStmt, 4, v22);
                  v32 = pStmt;
                  BytePtr = CFDataGetBytePtr(v19);
                  Length = CFDataGetLength(v19);
                  sqlite3_bind_blob(v32, 5, BytePtr, Length, 0);
                  sqlite3_step(pStmt);
                  sqlite3_reset(pStmt);
                  sqlite3_clear_bindings(pStmt);
                }

                CFRelease(v19);
              }
            }
          }
        }

        sqlite3_reset(ppStmt[0]);
        v35 = *v9++;
        v10 = v35;
      }

      while (v35 != -1);
      sqlite3_exec(*(a2 + 8), "INSERT OR IGNORE INTO ABThumbnailImage(record_id, format, derived_from_format, data) SELECT record_id, format, 2, data FROM ABImage WHERE format IN (0, 1) AND record_id IN (SELECT record_id FROM ABImage WHERE format=2) AND data IS NOT NULL;", 0, 0, 0);
      v36 = sqlite3_step(v147);
      a4 = v136;
      v7 = MEMORY[0x1E695E480];
      if (v36 == 100)
      {
        do
        {
          v138 = sqlite3_column_int(v147, 0);
          v37 = sqlite3_column_int(v147, 1);
          v38 = sqlite3_column_int(v147, 2);
          v39 = sqlite3_column_int(v147, 3);
          v40 = sqlite3_column_blob(v147, 4);
          v41 = sqlite3_column_bytes(v147, 4);
          if (v40)
          {
            v42 = CFDataCreateWithBytesNoCopy(allocator, v40, v41, v8);
            cf = 0;
            v144 = 0;
            v142 = 0;
            if (ABImageUtilsCopyImageSourceAndGetSizeFromData(v42, &cf, &v144, &v142))
            {
              v135 = v42;
              v43 = v144;
              v44 = v142;
              v45 = v39;
              PixelHeight = v39;
              PixelWidth = v39;
              if (ABPersonImageFormatIsLessThanOrEqualToPixelSize(0, v39, v39))
              {
                PixelWidth = ABPersonImageFormatGetPixelWidth(0);
                PixelHeight = ABPersonImageFormatGetPixelHeight(0);
              }

              v48 = v37;
              v49 = v38;
              v139 = v44;
              v140 = v43;
              ImageFromImageSourceWithSizeCropRectMaxSize = ABImageUtilsCreateImageFromImageSourceWithSizeCropRectMaxSize(cf, v43, v44, v37, v38, v39, v39, PixelWidth, PixelHeight);
              if (ImageFromImageSourceWithSizeCropRectMaxSize)
              {
                v51 = ImageFromImageSourceWithSizeCropRectMaxSize;
                Scale = ABPersonImageFormatGetScale(-1);
                ScaledImageData = ABImageUtilsCreateScaledImageData(v51, 8u, @"public.jpeg", 0, PixelWidth / Scale, PixelHeight / Scale, Scale);
                CFRelease(v51);
                if (ScaledImageData)
                {
                  sqlite3_bind_int(v145, 1, v138);
                  sqlite3_bind_int(v145, 2, 0);
                  v54 = v145;
                  v55 = CFDataGetBytePtr(ScaledImageData);
                  v56 = CFDataGetLength(ScaledImageData);
                  sqlite3_bind_blob(v54, 3, v55, v56, 0);
                  sqlite3_step(v145);
                  sqlite3_reset(v145);
                  sqlite3_clear_bindings(v145);
                  CFRelease(ScaledImageData);
                }
              }

              v57 = v49 + v45 * -0.25;
              v155.origin.x = 0.0;
              v155.origin.y = 0.0;
              v153.origin.x = v37;
              v153.origin.y = v57;
              v153.size.width = v45;
              v153.size.height = v45 * 1.5;
              v155.size.height = v139;
              v155.size.width = v43;
              v154 = CGRectIntersection(v153, v155);
              width = v154.size.width;
              height = v154.size.height;
              v60 = 1;
              v61 = &dword_1B7F76EC8;
              do
              {
                if (ABPersonImageFormatIsLessThanOrEqualToPixelSize(v60, width, height))
                {
                  v62 = ABPersonImageFormatGetPixelWidth(v60);
                  v63 = ABPersonImageFormatGetPixelHeight(v60);
                  v64 = ABImageUtilsCreateImageFromImageSourceWithSizeCropRectMaxSize(cf, v140, v139, v48, v57, v45, v45 * 1.5, PixelWidth, PixelHeight);
                  if (v64)
                  {
                    v65 = v64;
                    v66 = ABPersonImageFormatGetScale(v60);
                    v67 = ABImageUtilsCreateScaledImageData(v65, 8u, @"public.jpeg", 0, v62 / v66, v63 / v66, v66);
                    if (v67)
                    {
                      v68 = v67;
                      sqlite3_bind_int(v145, 1, v138);
                      sqlite3_bind_int(v145, 2, v60);
                      v69 = v145;
                      v70 = CFDataGetBytePtr(v68);
                      v71 = CFDataGetLength(v68);
                      sqlite3_bind_blob(v69, 3, v70, v71, 0);
                      sqlite3_step(v145);
                      sqlite3_reset(v145);
                      sqlite3_clear_bindings(v145);
                      CFRelease(v68);
                    }

                    CFRelease(v65);
                  }
                }

                v72 = *v61++;
                v60 = v72;
              }

              while (v72 != -1);
              CFRelease(cf);
              cf = 0;
              v42 = v135;
              a4 = v136;
              v7 = MEMORY[0x1E695E480];
            }

            CFRelease(v42);
          }
        }

        while (sqlite3_step(v147) == 100);
      }
    }

    if (ppStmt[0])
    {
      sqlite3_finalize(ppStmt[0]);
    }

    if (v147)
    {
      sqlite3_finalize(v147);
    }

    if (pStmt)
    {
      sqlite3_finalize(pStmt);
    }

    if (v145)
    {
      sqlite3_finalize(v145);
    }

    CPSqliteConnectionPerformSQL();
  }

  if (a3 <= 5)
  {
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
LABEL_51:
    CPSqliteConnectionPerformSQL();
    goto LABEL_52;
  }

  if (a3 == 6)
  {
    goto LABEL_51;
  }

  if (a3 > 7)
  {
    goto LABEL_86;
  }

LABEL_52:
  v147 = 0;
  v73 = *v7;
  Mutable = CFArrayCreateMutable(*v7, 0, 0);
  v75 = CFArrayCreateMutable(v73, 0, 0);
  v76 = v75;
  if (Mutable)
  {
    v77 = v75 == 0;
  }

  else
  {
    v77 = 1;
  }

  if (v77)
  {
    goto LABEL_82;
  }

  if (!sqlite3_prepare(*(a2 + 8), "SELECT record_id, data, ROWID FROM ABThumbnailImage WHERE format=?;", -1, &v147, 0))
  {
    sqlite3_bind_int(v147, 1, 5);
    while (sqlite3_step(v147) == 100)
    {
      v78 = sqlite3_column_blob(v147, 1);
      v79 = sqlite3_column_bytes(v147, 1);
      if (v79 >= 1)
      {
        v80 = CFDataCreate(0, v78, v79);
        if (v80)
        {
          v81 = v80;
          if (!ABImageUtilsIsImageDataInSyncCompatibleFormat(v80))
          {
            v82 = sqlite3_column_int64(v147, 0);
            CFArrayAppendValue(Mutable, v82);
            v83 = sqlite3_column_int64(v147, 2);
            CFArrayAppendValue(v76, v83);
          }

          CFRelease(v81);
        }
      }
    }

    if (CFArrayGetCount(v76) >= 1)
    {
      v84 = CFStringCreateMutable(v73, 0);
      if (v84)
      {
        v85 = v84;
        v86 = a4;
        CFStringAppend(v84, @"DELETE FROM ABThumbnailImage WHERE ROWID IN(?");
        Count = CFArrayGetCount(v76);
        v88 = Count;
        if (Count >= 2)
        {
          v89 = Count - 1;
          do
          {
            CFStringAppend(v85, @", ?");
            --v89;
          }

          while (v89);
        }

        CFStringAppend(v85, @";"));
        ppStmt[0] = 0;
        v90 = *(a2 + 8);
        v91 = _CPCreateUTF8StringFromCFString();
        if (sqlite3_prepare(v90, v91, -1, ppStmt, 0))
        {
          ABDiagnosticsEnabled();
          _ABLog2(3, "_Bool _ABCImageStoreDeleteSyncThumbnailImagesWithRowIDs(CPSqliteConnection *, CFArrayRef)", 602, 0, @"error preparing delete statement for invalid sync thumbnails", v92, v93, v94, v134);
        }

        else
        {
          if (v88 >= 1)
          {
            v95 = 0;
            do
            {
              v96 = ppStmt[0];
              v97 = v95 + 1;
              ValueAtIndex = CFArrayGetValueAtIndex(v76, v95);
              sqlite3_bind_int(v96, v97, ValueAtIndex);
              v95 = v97;
            }

            while (v88 != v97);
          }

            ;
          }

          sqlite3_finalize(ppStmt[0]);
        }

        a4 = v86;
        CFRelease(v85);
      }
    }

    if (a4)
    {
      v150.length = CFArrayGetCount(Mutable);
      v150.location = 0;
      CFArrayAppendArray(a4, Mutable, v150);
    }

    sqlite3_finalize(v147);
LABEL_82:
    if (!Mutable)
    {
      goto LABEL_84;
    }
  }

  CFRelease(Mutable);
LABEL_84:
  if (v76)
  {
    CFRelease(v76);
  }

LABEL_86:
  if (a3 <= 8)
  {
    CPSqliteConnectionPerformSQL();
    CPSqliteConnectionPerformSQL();
  }

  if (_imageStoreMigrationMigrateDatabase_onceToken != -1)
  {
    _imageStoreMigrationMigrateDatabase_cold_1();
  }

  if (a3 <= 9)
  {
    v147 = 0;
    ppStmt[0] = 0;
    v99 = CFArrayCreateMutable(*v7, 0, 0);
    if (v99)
    {
      v100 = v99;
      if (sqlite3_prepare(*(a2 + 8), "SELECT record_id, data, ROWID FROM ABThumbnailImage WHERE format=?;", -1, ppStmt, 0) || sqlite3_prepare(*(a2 + 8), "UPDATE ABThumbnailImage SET data=? WHERE ROWID=?;", -1, &v147, 0))
      {
LABEL_94:
        CFRelease(v100);
        return 0;
      }

      v137 = a4;
      sqlite3_bind_int(ppStmt[0], 1, 0);
      if (sqlite3_step(ppStmt[0]) != 100)
      {
LABEL_124:
        if (ppStmt[0])
        {
          sqlite3_finalize(ppStmt[0]);
        }

        if (v147)
        {
          sqlite3_finalize(v147);
        }

        if (v137 && CFArrayGetCount(v100) >= 1)
        {
          v151.length = CFArrayGetCount(v100);
          v151.location = 0;
          CFArrayAppendArray(v137, v100, v151);
          ABDiagnosticsEnabled();
          v130 = CFArrayGetCount(v100);
          _ABLog2(5, "CPSqliteMigrationContinuation _imageStoreMigrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)", 563, 0, @"AB Migration - Compressed %ld oversized thumbnails", v131, v132, v133, v130);
        }

        goto LABEL_94;
      }

      v102 = &OBJC_IVAR___ABVCardLexer__length;
      v103 = "CPSqliteMigrationContinuation _imageStoreMigrationMigrateDatabase(CPSqliteDatabase *, CPSqliteConnection *, int, void *)";
      v104 = &OBJC_IVAR___ABVCardLexer__length;
      while (1)
      {
        v105 = sqlite3_column_blob(ppStmt[0], 1);
        v106 = sqlite3_column_bytes(ppStmt[0], 1);
        v107 = sqlite3_column_int64(ppStmt[0], 0);
        v108 = sqlite3_column_int64(ppStmt[0], 2);
        v109 = CFDataCreate(0, v105, v106);
        if (v109)
        {
          break;
        }

LABEL_123:
        if (sqlite3_step(ppStmt[0]) != 100)
        {
          goto LABEL_124;
        }
      }

      v110 = v109;
      pStmt = 0;
      LODWORD(v145) = 0;
      LODWORD(cf) = 0;
      if (!ABImageUtilsCopyImageSourceAndGetSizeFromData(v109, &pStmt, &v145, &cf) || *(v102 + 221) >= v145 && *(v104 + 222) >= cf || (ABDiagnosticsEnabled(), _ABLog2(5, v103, 514, 0, @"AB Migration - Attempting to compress thumbnail image of original size {%d x %d}", v111, v112, v113, v145), (ImageAtIndex = CGImageSourceCreateImageAtIndex(pStmt, 0, 0)) == 0))
      {
LABEL_120:
        if (pStmt)
        {
          CFRelease(pStmt);
        }

        CFRelease(v110);
        goto LABEL_123;
      }

      v115 = ImageAtIndex;
      v116 = v145 / cf;
      v117 = *(v102 + 221);
      if (v116 <= 1.0)
      {
        v117 = floor(v116 * v117);
        v118 = *(v104 + 222);
      }

      else
      {
        v118 = floor(*(v104 + 222) / v116);
      }

      v119 = ABImageUtilsCreateScaledImageData(ImageAtIndex, 8u, @"public.jpeg", 0, v117, v118, 1.0);
      v120 = v119;
      v121 = v147;
      if (v119)
      {
        v122 = v147 == 0;
      }

      else
      {
        v122 = 1;
      }

      if (v122)
      {
        if (!v119)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v123 = v103;
        v124 = CFDataGetBytePtr(v119);
        v125 = CFDataGetLength(v120);
        v126 = v124;
        v103 = v123;
        v102 = &OBJC_IVAR___ABVCardLexer__length;
        sqlite3_bind_blob(v121, 1, v126, v125, 0);
        sqlite3_bind_int(v147, 2, v108);
        if (sqlite3_step(v147) == 101)
        {
          v149.length = CFArrayGetCount(v100);
          v149.location = 0;
          if (!CFArrayContainsValue(v100, v149, v107))
          {
            CFArrayAppendValue(v100, v107);
          }

          ABDiagnosticsEnabled();
          CFDataGetLength(v120);
          _ABLog2(5, v103, 538, 0, @"AB Migration - Compressed thumbnail for record_id %ld: %d bytes -> %ld bytes", v127, v128, v129, v107);
        }

        sqlite3_reset(v147);
      }

      CFRelease(v120);
LABEL_119:
      CFRelease(v115);
      v104 = &OBJC_IVAR___ABVCardLexer__length;
      goto LABEL_120;
    }
  }

  return 0;
}

CFStringRef ABCImageStoreCreateWithAddressBookPath(CFStringRef theString)
{
  if (theString)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
    v5.length = CFStringGetLength(MutableCopy);
    v5.location = 0;
    v3 = 0;
    if (CFStringFindAndReplace(MutableCopy, @"AddressBook.sqlitedb", @"AddressBookImages.sqlitedb", v5, 1uLL) == 1)
    {
      v3 = ABCImageStoreCreateWithPathAndForceInProcessMigration();
    }

    CFRelease(MutableCopy);
    return v3;
  }

  else
  {

    return ABCImageStoreCreateWithAddressBookAndForceInProcessMigration(0);
  }
}

uint64_t ABCImageStoreCopyImagesForRecordWithFormat(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  CPRecordStoreGetDatabase();
  if (a4 == 2)
  {
    v6 = CPSqliteDatabaseStatementForReading();
    ABRegulatoryLogReadContactsData(a1);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
        ID = CPRecordGetID();
        sqlite3_bind_int(v7, 1, ID);
LABEL_8:
        v12 = CPRecordStoreProcessStatement();
        CPSqliteStatementReset();
        return v12;
      }
    }
  }

  else
  {
    v9 = CPSqliteDatabaseStatementForReading();
    ABRegulatoryLogReadContactsData(a1);
    if (v9)
    {
      v10 = *(v9 + 8);
      if (v10)
      {
        v11 = CPRecordGetID();
        sqlite3_bind_int(v10, 1, v11);
        sqlite3_bind_int(*(v9 + 8), 2, a4);
        goto LABEL_8;
      }
    }
  }

  return 0;
}

uint64_t ABCImageStoreCopyAvatarRecipeDataForRecord(uint64_t a1)
{
  CPRecordStoreGetDatabase();
  v2 = CPSqliteDatabaseStatementForReading();
  ABRegulatoryLogReadContactsData(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  ID = CPRecordGetID();
  sqlite3_bind_int(v3, 1, ID);
  v5 = CPRecordStoreProcessStatement();
  CPSqliteStatementReset();
  return v5;
}

uint64_t ABCImageStoreHasImagesForRecordWithFormat(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = a2;
  v6 = a1;
  if (a3 == -1)
  {
    if (_imageStoreHasFullSizeImageForRecord(a1, a2, a4))
    {
      return 1;
    }

    a1 = v6;
    a2 = v5;
    a3 = -1;
    return _imageStoreCountOfThumbnailImagesForRecordWithFormat(a1, a2, a3, a4) > 0;
  }

  if (a3 != 2)
  {
    return _imageStoreCountOfThumbnailImagesForRecordWithFormat(a1, a2, a3, a4) > 0;
  }

  return _imageStoreHasFullSizeImageForRecord(a1, a2, a4);
}

BOOL _imageStoreHasFullSizeImageForRecord(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = @"SELECT COUNT(ROWID) FROM ABFullSizeImage WHERE record_id = ? AND data IS NOT NULL;";
  }

  else
  {
    v3 = @"SELECT COUNT(ROWID) FROM ABFullSizeImage WHERE record_id = ?;";
  }

  CPRecordStoreGetDatabase();
  v4 = CPSqliteDatabaseStatementForReading();
  CFRelease(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 8);
  if (!v5)
  {
    return 0;
  }

  ID = CPRecordGetID();
  sqlite3_bind_int(v5, 1, ID);
  v7 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v7 != 0;
}

uint64_t _imageStoreCountOfThumbnailImagesForRecordWithFormat(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = @"SELECT COUNT(ROWID) FROM ABThumbnailImage WHERE record_id = ? AND format = ? AND data IS NOT NULL;";
  if (a3 == -1)
  {
    v5 = @"SELECT COUNT(ROWID) FROM ABThumbnailImage WHERE record_id = ? AND data IS NOT NULL;";
  }

  v6 = @"SELECT COUNT(ROWID) FROM ABThumbnailImage WHERE record_id = ?;";
  if (a3 != -1)
  {
    v6 = @"SELECT COUNT(ROWID) FROM ABThumbnailImage WHERE record_id = ? AND format = ?;";
  }

  if (a4)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  CPRecordStoreGetDatabase();
  v8 = CPSqliteDatabaseStatementForReading();
  CFRelease(v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    return 0;
  }

  ID = CPRecordGetID();
  sqlite3_bind_int(v9, 1, ID);
  if (a3 != -1)
  {
    sqlite3_bind_int(*(v8 + 8), 2, a3);
  }

  v11 = CPSqliteStatementIntegerResult();
  CPSqliteStatementReset();
  return v11;
}

uint64_t ABCImageStoreRemoveImagesForRecordIds(const __CFString *a1, uint64_t a2, CFArrayRef theArray, int a4)
{
  if (!theArray)
  {
    return 1;
  }

  Count = CFArrayGetCount(theArray);
  result = 1;
  if (a2 && Count)
  {
    CPRecordStoreGetDatabase();
    v9 = CFArrayGetCount(theArray);
    allocator = *MEMORY[0x1E695E480];
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], v9, theArray);
    for (i = MutableCopy; ; MutableCopy = i)
    {
      if (!CFArrayGetCount(MutableCopy))
      {
        CFRelease(i);
        v25 = CFArrayGetCount(theArray);
        v26 = malloc_type_malloc(8 * v25, 0x80040B8603338uLL);
        v30.location = 0;
        v30.length = v25;
        CFArrayGetValues(theArray, v30, v26);
        v27 = CFSetCreate(allocator, v26, v25, 0);
        ABCPersonInvalidateSpecificImageDataForSetOfPersonIds(a1);
        CFRelease(v27);
        free(v26);
        return 1;
      }

      if (a4 == -1)
      {
        v12 = CPSqliteDatabaseStatementForWriting();
        v13 = CPSqliteDatabaseStatementForWriting();
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v12 = CPSqliteDatabaseStatementForWriting();
        v13 = 0;
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      v14 = *(v12 + 8);
      if (!v14 || v13 && !*(v13 + 8))
      {
LABEL_34:
        CFArrayGetCount(i);
        CFRelease(i);
        return 0;
      }

      if (a4 == -1)
      {
        v15 = 1;
      }

      else
      {
        sqlite3_bind_int(v14, 1, a4);
        v15 = 2;
      }

      if (CFArrayGetCount(i) <= 100)
      {
        v16 = CFArrayGetCount(i);
        if (v16 < 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v16 = 100;
      }

      v17 = v16;
      do
      {
        v18 = *(v12 + 8);
        ValueAtIndex = CFArrayGetValueAtIndex(i, 0);
        sqlite3_bind_int(v18, v15, ValueAtIndex);
        if (v13)
        {
          v20 = *(v13 + 8);
          v21 = CFArrayGetValueAtIndex(i, 0);
          sqlite3_bind_int(v20, v15, v21);
        }

        ++v15;
        CFArrayRemoveValueAtIndex(i, 0);
        --v17;
      }

      while (v17);
      if (v16 <= 0x63)
      {
LABEL_24:
        v22 = v16 - 100;
        do
        {
          v23 = v15 + 1;
          sqlite3_bind_null(*(v12 + 8), v15);
          if (v13)
          {
            sqlite3_bind_null(*(v13 + 8), v15 + 1);
            v23 = v15 + 2;
          }

          v15 = v23;
        }

        while (!__CFADD__(v22++, 1));
      }

      CPSqliteStatementPerform();
      CPSqliteStatementReset();
      if (v13)
      {
        CPSqliteStatementPerform();
        CPSqliteStatementReset();
      }

      ABRegulatoryLogModifyContactsData(a1);
    }
  }

  return result;
}

CFStringRef ABCImageStoreGetCountOfImagesWithFormat(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {

    return CPRecordStoreGetCountOfInstancesOfClassWhere();
  }

  else
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"format = %d", a2);
    if (result)
    {
      v3 = result;
      CountOfInstancesOfClassWhere = CPRecordStoreGetCountOfInstancesOfClassWhere();
      CFRelease(v3);
      return CountOfInstancesOfClassWhere;
    }
  }

  return result;
}

BOOL ABCImageStoreHasIndexes()
{
  CPRecordStoreGetDatabase();
  CPSqliteDatabaseConnectionForReading();
  v0 = CPSqliteConnectionPerformSQL();
  v1 = CPSqliteConnectionPerformSQL();
  v2 = CPSqliteConnectionPerformSQL();
  v5 = v0 != 1 && v1 != 1 && v2 != 1;
  CPSqliteDatabaseReleaseSqliteConnection();
  return v5;
}

uint64_t _recreateIndexes()
{
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();

  return CPSqliteConnectionPerformSQL();
}

uint64_t ABCMultiValueRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  kABCMultiValueTypeID = result;
  return result;
}

CFIndex ABCMultiValueGetCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 40)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

const __CFArray *ABCMultiValueCopyValueAtIndex(const __CFArray *result, CFIndex a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 5);
    if (result)
    {
      if (CFArrayGetCount(result) <= a2)
      {
        return 0;
      }

      else
      {
        v4 = ABCSingleValueType(*(v2 + 4));
        v5 = ABCCallBacksForType(v4);
        result = CFArrayGetValueAtIndex(*(v2 + 5), a2);
        v6 = *v5;
        if (*v5)
        {

          return (v6)(result);
        }
      }
    }
  }

  return result;
}

CFArrayRef ABCMultiValueCopyValues(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 40)) != 0)
  {
    return CFArrayCreateCopy(*MEMORY[0x1E695E480], v1);
  }

  else
  {
    return 0;
  }
}

uint64_t ABCMultiValueGetPrimaryIdentifier(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

CFIndex ABCMultiValueIndexForIdentifier(uint64_t a1, int a2)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return -1;
  }

  v4.length = CFArrayGetCount(*(a1 + 24));
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, a2);
}

uint64_t ABCMultiValueGetIdentifierAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 24);
  if (v3 && CFArrayGetCount(v3) > a2)
  {
    return CFArrayGetValueAtIndex(*(a1 + 24), a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ABCMultiValuePropertyType(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

CFIndex ABCMultiValueGetFirstIndexOfValue(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return -1;
  }

  v4.length = CFArrayGetCount(*(a1 + 40));
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, a2);
}

uint64_t ABCMultiValueGetFirstIndexOfValueWithCallback(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, const void *))
{
  if (!a1)
  {
    return -1;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    return -1;
  }

  Count = CFArrayGetCount(v4);
  if (Count < 1)
  {
    return -1;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v9);
    if (a3(a2, ValueAtIndex))
    {
      break;
    }

    if (v8 == ++v9)
    {
      return -1;
    }
  }

  return v9;
}

CFIndex ABCMultiValueGetFirstIndexOfLabel(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return -1;
  }

  v4.length = CFArrayGetCount(*(a1 + 32));
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v2, v4, a2);
}

CFTypeRef ABCMultiValueCreateCopy(CFTypeRef cf)
{
  if (cf)
  {
    if (*(cf + 60))
    {
      return _copyMultivalue(cf);
    }

    else
    {
      return CFRetain(cf);
    }
  }

  return cf;
}

uint64_t ABCMultiValueReplaceValue(uint64_t result, const void *a2, CFIndex a3)
{
  if (result)
  {
    v3 = result;
    result = *(result + 40);
    if (result)
    {
      if (CFArrayGetCount(result) <= a3)
      {
        return 0;
      }

      else
      {
        CFArraySetValueAtIndex(*(v3 + 40), a3, a2);
        return 1;
      }
    }
  }

  return result;
}

uint64_t ABCMultiValueReplaceLabel(uint64_t result, const void *a2, CFIndex a3)
{
  if (result)
  {
    v3 = result;
    result = *(result + 32);
    if (result)
    {
      if (CFArrayGetCount(result) <= a3)
      {
        return 0;
      }

      else
      {
        if (a2)
        {
          v6 = a2;
        }

        else
        {
          v6 = *MEMORY[0x1E695E738];
        }

        CFArraySetValueAtIndex(*(v3 + 32), a3, v6);
        return 1;
      }
    }
  }

  return result;
}

uint64_t ABCMultiValueLoad(void *a1, int a2, uint64_t a3)
{
  v6 = *(CPRecordGetPropertyDescriptor() + 32);

  return ABCDBContextFetchMultiValuePropertyIntoRecord(a3, a1, a2, v6);
}

uint64_t ABCMultiValueSave(const void *a1, int a2, uint64_t a3)
{
  Value = ABCRecordGetValue(a1);
  v7 = *(CPRecordGetPropertyDescriptor() + 32);

  return ABCDBContextSaveMultiValue(a3, a1, a2, Value, v7);
}

CFMutableArrayRef OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, const __CFArray *a3)
{
  v5 = *v3;

  return CFArrayCreateMutableCopy(v5, 0, a3);
}

__CFString *ABCSmartDialerPersonNameForProperty(int a1)
{
  if (kABCFirstNameProperty == a1)
  {
    return @"FirstEncoding";
  }

  if (kABCMiddleNameProperty == a1)
  {
    return @"MiddleEncoding";
  }

  if (kABCLastNameProperty == a1)
  {
    return @"LastEncoding";
  }

  if (kABCOrganizationProperty == a1)
  {
    return @"OrganizationEncoding";
  }

  if (kABCNicknameProperty == a1)
  {
    return @"NickNameEncoding";
  }

  if (kABCPhoneProperty == a1)
  {
    return @"PhoneLastFourDigits";
  }

  return @"UNKNOWN_PROPERTY";
}

uint64_t ABPersonCreateTemporaryNewPersonWithRecordID()
{
  ABCInitializeLibrary();
  v0 = CPRecordCreateWithRecordID();
  CPRecordInitializeProperty();
  CPRecordInitializeProperty();
  return v0;
}

uint64_t ABCPersonPrepareToAddToAddressBook(const void *a1, _DWORD *a2, CFTypeRef *a3)
{
  Property = CPRecordGetProperty();
  v7 = ABCPersonCopySource();
  v8 = v7;
  if (v7 || Property == -1)
  {
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    result = ABAddressBookCopyDefaultSource(a2);
    v8 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  RecordForUniqueID = ABCSourceGetRecordForUniqueID(a2, Property);
  if (!RecordForUniqueID)
  {
    goto LABEL_6;
  }

  v8 = RecordForUniqueID;
  CFRetain(RecordForUniqueID);
LABEL_7:
  CPRecordSetProperty();
  Policy = ABCSourceGetPolicy(v8);
  if (!Policy)
  {
    goto LABEL_27;
  }

  v12 = Policy;
  if (!ABPolicyShouldAddRecord(Policy, a2, a1, a3))
  {
    CFRelease(v8);
    return 0;
  }

  v13 = CPRecordCopyChangedProperties();
  if (v13)
  {
    v14 = v13;
    Count = CFArrayGetCount(v13);
    if (Count >= 1)
    {
      v16 = Count;
      v25 = 0;
      v17 = 0;
      v24 = *MEMORY[0x1E695E738];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
        v19 = ABRecordCopyValue(a1, ValueAtIndex);
        if (ABPolicyShouldSetValue(v12, a2, a1, ValueAtIndex, v19, 0, a3))
        {
          if (v19 && v19 != v24)
          {
            v21 = kABPersonBirthdayProperty == ValueAtIndex || kABPersonAlternateBirthdayProperty == ValueAtIndex;
            v25 |= v21;
LABEL_24:
            CFRelease(v19);
            goto LABEL_25;
          }
        }

        else
        {
          ABRecordRemoveValue(a1, ValueAtIndex, 0);
        }

        if (v19)
        {
          goto LABEL_24;
        }

LABEL_25:
        if (v16 == ++v17)
        {
          goto LABEL_30;
        }
      }
    }

    v25 = 0;
LABEL_30:
    CFRelease(v14);
    v22 = v25;
  }

  else
  {
LABEL_27:
    v22 = 0;
  }

  CFRelease(v8);
  v23 = a2[96];
  a2[96] = v23 | 0x2000;
  if (v22)
  {
    a2[96] = v23 | 0x22000;
  }

  return 1;
}

sqlite3_stmt *__ABCCopyArrayOfAllPeopleInSourceWithSortOrdering_block_invoke(sqlite3_stmt *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    result = *(a2 + 8);
    if (result)
    {
      v3 = *(v2 + 8);
      if (v3 != -1)
      {
        return sqlite3_bind_int(result, 1, v3);
      }
    }
  }

  return result;
}

uint64_t ABCPersonCopyRecordsForUniqueIDs(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return ABCDBContextCopyRecordsForUIDsOfType(*(result + 16), a2, ABCPersonClass);
  }

  return result;
}

uint64_t ABCPersonCopyRecordsForUUIDs(uint64_t result, const __CFArray *a2)
{
  if (result)
  {
    return ABCDBContextCopyRecordsForUUIDsOfType(*(result + 16), a2, ABCPersonClass);
  }

  return result;
}

uint64_t ABCPersonCopyRecordsForLinkIdentifers(uint64_t a1, CFArrayRef theArray)
{
  v2 = 0;
  if (a1 && theArray)
  {
    if (CFArrayGetCount(theArray) < 1)
    {
      return 0;
    }

    else
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v6 = CFStringCreateMutable(0, 0);
      v7 = v6;
      v2 = 0;
      if (Mutable && v6)
      {
        CFStringAppend(v6, @"PersonLink IN (");
        Count = CFArrayGetCount(theArray);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            if (i)
            {
              CFStringAppend(v7, @", ");
            }

            CFStringAppend(v7, @"?");
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            v12 = CFStringCreateWithFormat(0, 0, @"%d", ValueAtIndex);
            if (v12)
            {
              v13 = v12;
              CFArrayAppendValue(Mutable, v12);
              CFRelease(v13);
            }
          }
        }

        CFStringAppend(v7, @""));
        v2 = ABCCopyArrayOfAllInstancesOfClassInSourceMatchingPredicate(*(a1 + 16), ABCPersonClass, 0, v7, Mutable);
      }

      if (v7)
      {
        CFRelease(v7);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }

  return v2;
}

void ABCPersonAppendNamePartToCompositeName(uint64_t a1, uint64_t a2, __CFString *a3)
{
  Value = ABCRecordGetValue(a1);
  if (Value)
  {
    v5 = Value;
    if (CFStringGetLength(Value) >= 1)
    {
      if (CFStringGetLength(a3) >= 1)
      {
        CFStringAppend(a3, @" ");
      }

      CFStringAppend(a3, v5);
    }
  }
}

CFMutableStringRef ABCPersonCopyCompositePhoneticName(const void *a1)
{
  CompositeNameFormatForRecord = ABPersonGetCompositeNameFormatForRecord(a1);
  if (CompositeNameFormatForRecord)
  {
    v3 = kABCFirstNamePhoneticProperty;
  }

  else
  {
    v3 = kABCLastNamePhoneticProperty;
  }

  v4 = kABCMiddleNamePhoneticProperty;
  if (CompositeNameFormatForRecord)
  {
    v5 = kABCLastNamePhoneticProperty;
  }

  else
  {
    v5 = kABCFirstNamePhoneticProperty;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  ABCPersonAppendNamePartToCompositeName(a1, v5, Mutable);
  ABCPersonAppendNamePartToCompositeName(a1, v4, Mutable);
  ABCPersonAppendNamePartToCompositeName(a1, v3, Mutable);
  if (!CFStringGetLength(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t ABCPersonClearAddressBookPhoneCacheForPerson(uint64_t a1)
{
  v4[0] = 0;
  v5 = 0u;
  v4[1] = a1;
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      DWORD2(v5) = CPRecordGetID();
      CFDictionaryApplyFunction(*(a1 + 40), ABCPersonClearAddressBookPhoneCacheForPerson_apply, v4);
      LOBYTE(v2) = v4[0];
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}