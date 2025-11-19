@interface CN
+ (BOOL)areValidDayComponents:(id)a3 error:(id *)a4;
+ (BOOL)areValidGregorianDayComponents:(id)a3 error:(id *)a4;
+ (BOOL)areValidKeyPaths:(id)a3 forObject:(id)a4 expectedClasses:(id)a5 allowNil:(id)a6 error:(id *)a7;
+ (BOOL)areValidNonGregorianDayComponents:(id)a3 error:(id *)a4;
+ (BOOL)hasContactChineseJapaneseKoreanName:(id)a3;
+ (BOOL)hasContactChineseJapaneseKoreanPhoneticName:(id)a3;
+ (BOOL)isEmptyNameContact:(id)a3 phonetic:(BOOL)a4 includingPrefixAndSuffix:(BOOL)a5;
+ (BOOL)shouldContactUseFamilyGivenNameOrder:(id)a3;
+ (NSArray)restrictedProperties;
+ (NSArray)runtimeOnlyProperties;
+ (id)_unifyContacts:(id)a3 options:(id)a4;
+ (id)addressingGrammarsDescription;
+ (id)addressingGrammarsEncryptedDescription;
+ (id)allContactProperties;
+ (id)allContactPropertyKeys;
+ (id)allContainerProperties;
+ (id)allImageDataProperties;
+ (id)allImageDataPropertyKeys;
+ (id)allNameComponentRelatedProperties;
+ (id)allPhoneticNameComponentProperties;
+ (id)allWallpaperProperties;
+ (id)allWallpaperPropertyKeys;
+ (id)alwaysFetchedProperties;
+ (id)avatarRecipeDataDescription;
+ (id)birthdayDescription;
+ (id)calendarURIsDescription;
+ (id)callAlertDescription;
+ (id)contactCardIgnorableContactChangeProperties;
+ (id)contactFlagsDescription;
+ (id)contactPropertiesByKey;
+ (id)contactRelationsDescription;
+ (id)contactTypeDescription;
+ (id)contactUnifyingContacts:(id)a3 includingMainStoreContacts:(BOOL)a4 allowMutableContactFreeze:(BOOL)a5;
+ (id)contactUnifyingContacts:(id)a3 options:(id)a4;
+ (id)containerAccountIdentifierDescription;
+ (id)containerConstraintsPathDescription;
+ (id)containerEnabledDescription;
+ (id)containerExternalIdentifierDescription;
+ (id)containerExternalModificationTagDescription;
+ (id)containerExternalSyncDataDescription;
+ (id)containerExternalSyncTagDescription;
+ (id)containerGuardianRestrictedDescription;
+ (id)containerGuardianStateDirtyDescription;
+ (id)containerIdentifierDescription;
+ (id)containerLastSyncDateDescription;
+ (id)containerMeIdentifierDescription;
+ (id)containerNameDescription;
+ (id)containerProviderIdentifierDescription;
+ (id)containerProviderMetadataDescription;
+ (id)containerRestrictionsDescription;
+ (id)containerTypeDescription;
+ (id)containeriOSLegacyIdentifierDescription;
+ (id)creationDateDescription;
+ (id)cropRectDescription;
+ (id)datesDescription;
+ (id)departmentDescription;
+ (id)downtimeWhitelistDescription;
+ (id)emailAddressesDescription;
+ (id)explicitDisplayNameDescription;
+ (id)externalIdentifierDescription;
+ (id)externalImageURIDescription;
+ (id)externalModificationTagDescription;
+ (id)externalRepresentationDescription;
+ (id)externalUUIDDescription;
+ (id)familyNameDescription;
+ (id)fullscreenImageDataDescription;
+ (id)givenNameDescription;
+ (id)groupIdentifiersByLabeledValue:(id)a3 forProperty:(id)a4;
+ (id)iOSLegacyIdentifierDescription;
+ (id)identifierDescription;
+ (id)identifierMapForUnifiedContact:(id)a3 backingContacts:(id)a4;
+ (id)identifierMapForUnifiedMultiValue:(id)a3 backingMultiValues:(id)a4 forProperty:(id)a5;
+ (id)imageBackgroundColorsDataDescription;
+ (id)imageDataAvailableDescription;
+ (id)imageDataDescription;
+ (id)imageHash;
+ (id)imageSyncFailedTimeDescription;
+ (id)imageType;
+ (id)instantMessagAddressesDescription;
+ (id)isUsingSharedPhotoDescription;
+ (id)jobTitleDescription;
+ (id)joinNonEmptyContactProperties:(id)a3 onContact:(id)a4;
+ (id)joinNonEmptyContactProperties:(id)a3 onContact:(id)a4 withDelimiter:(id)a5;
+ (id)keyVectorForAllUsedKeysForInternationalSupport;
+ (id)linkIdentifierDescription;
+ (id)localizedNameDelimiterForContact:(id)a3;
+ (id)mapsDataDescription;
+ (id)memojiMetadataDescription;
+ (id)middleNameDescription;
+ (id)modificationDateDescription;
+ (id)multiValueContactProperties;
+ (id)mutableContactUnifyingContacts:(id)a3 includingMainStoreContacts:(BOOL)a4;
+ (id)namePrefixDescription;
+ (id)nameSuffixDescription;
+ (id)nicknameDescription;
+ (id)nonGregorianBirthdayDescription;
+ (id)noteDescription;
+ (id)orderForContactName:(id)a3 phonetic:(BOOL)a4;
+ (id)organizationNameDescription;
+ (id)phoneNumbersDescription;
+ (id)phonemeDataDescription;
+ (id)phoneticFamilyNameDescription;
+ (id)phoneticGivenNameDescription;
+ (id)phoneticMiddleNameDescription;
+ (id)phoneticOrganizationNameDescription;
+ (id)postalAddressesDescription;
+ (id)preferredApplePersonaIdentifierDescription;
+ (id)preferredChannelDescription;
+ (id)preferredForImageDescription;
+ (id)preferredForNameDescription;
+ (id)preferredLikenessSourceDescription;
+ (id)previousFamilyNameDescription;
+ (id)pronunciationFamilyNameDescription;
+ (id)pronunciationGivenNameDescription;
+ (id)requiredPropertiesForNameScriptDetection;
+ (id)requiredPropertiesForPhoneticNameScriptDetection;
+ (id)sectionForSortingByFamilyNameDescription;
+ (id)sectionForSortingByGivenNameDescription;
+ (id)sensitiveContentConfigurationDescription;
+ (id)sharedPhotoDisplayPreferenceDescription;
+ (id)singleValueContactProperties;
+ (id)socialProfilesDescription;
+ (id)sourceContactForValue:(id)a3 labeledValueIdentifier:(id)a4 propertyKey:(id)a5 inUnifiedContact:(id)a6;
+ (id)squashableContactCardProperties;
+ (id)squashableContactCardPropertyKeys;
+ (id)syncImageDataDescription;
+ (id)textAlertDescription;
+ (id)thumbnailImageDataDescription;
+ (id)unifyContactMatchInfos:(id)a3 linkedContacts:(id)a4;
+ (id)urlAddressesDescription;
+ (id)wallpaperDescription;
+ (id)wallpaperMetadataDescription;
+ (id)wallpaperSyncFailedTimeDescription;
+ (id)wallpaperURIDescription;
+ (id)watchWallpaperImageDataDescription;
+ (id)writableAlwaysFetchedProperties;
+ (id)writableContactProperties;
+ (id)writableContainerProperties;
+ (id)writableMultiValueContactProperties;
+ (id)writableSingleValueContactProperties;
+ (void)resetRestrictedPropertiesOnMutableContact:(id)a3;
@end

@implementation CN

+ (id)requiredPropertiesForNameScriptDetection
{
  if (requiredPropertiesForNameScriptDetection_cn_once_token_0 != -1)
  {
    +[CN(CNInternationalSupport) requiredPropertiesForNameScriptDetection];
  }

  v3 = requiredPropertiesForNameScriptDetection_cn_once_object_0;

  return v3;
}

void __70__CN_CNInternationalSupport__requiredPropertiesForNameScriptDetection__block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = +[CN givenNameDescription];
  v1 = +[CN middleNameDescription];
  v6[1] = v1;
  v2 = +[CN familyNameDescription];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v3 copy];
  v5 = requiredPropertiesForNameScriptDetection_cn_once_object_0;
  requiredPropertiesForNameScriptDetection_cn_once_object_0 = v4;
}

+ (id)nameSuffixDescription
{
  if (nameSuffixDescription_cn_once_token_29 != -1)
  {
    +[CN(PropertyDescription) nameSuffixDescription];
  }

  v3 = nameSuffixDescription_cn_once_object_29;

  return v3;
}

+ (id)middleNameDescription
{
  if (middleNameDescription_cn_once_token_27 != -1)
  {
    +[CN(PropertyDescription) middleNameDescription];
  }

  v3 = middleNameDescription_cn_once_object_27;

  return v3;
}

+ (id)namePrefixDescription
{
  if (namePrefixDescription_cn_once_token_25 != -1)
  {
    +[CN(PropertyDescription) namePrefixDescription];
  }

  v3 = namePrefixDescription_cn_once_object_25;

  return v3;
}

+ (id)givenNameDescription
{
  if (givenNameDescription_cn_once_token_26 != -1)
  {
    +[CN(PropertyDescription) givenNameDescription];
  }

  v3 = givenNameDescription_cn_once_object_26;

  return v3;
}

+ (id)familyNameDescription
{
  if (familyNameDescription_cn_once_token_28 != -1)
  {
    +[CN(PropertyDescription) familyNameDescription];
  }

  v3 = familyNameDescription_cn_once_object_28;

  return v3;
}

uint64_t __48__CN_PropertyDescription__nameSuffixDescription__block_invoke()
{
  nameSuffixDescription_cn_once_object_29 = objc_alloc_init(CNNameSuffixDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47__CN_PropertyDescription__givenNameDescription__block_invoke()
{
  givenNameDescription_cn_once_object_26 = objc_alloc_init(CNGivenNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__CN_PropertyDescription__middleNameDescription__block_invoke()
{
  middleNameDescription_cn_once_object_27 = objc_alloc_init(CNMiddleNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__CN_PropertyDescription__familyNameDescription__block_invoke()
{
  familyNameDescription_cn_once_object_28 = objc_alloc_init(CNFamilyNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__CN_PropertyDescription__namePrefixDescription__block_invoke()
{
  namePrefixDescription_cn_once_object_25 = objc_alloc_init(CNNamePrefixDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)allImageDataPropertyKeys
{
  if (allImageDataPropertyKeys_cn_once_token_9 != -1)
  {
    +[CN(PropertyDescription) allImageDataPropertyKeys];
  }

  v3 = allImageDataPropertyKeys_cn_once_object_9;

  return v3;
}

+ (id)allContactProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CN_PropertyDescription__allContactProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allContactProperties_cn_once_token_2 != -1)
  {
    dispatch_once(&allContactProperties_cn_once_token_2, block);
  }

  v2 = allContactProperties_cn_once_object_2;

  return v2;
}

+ (id)alwaysFetchedProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CN_PropertyDescription__alwaysFetchedProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (alwaysFetchedProperties_cn_once_token_6 != -1)
  {
    dispatch_once(&alwaysFetchedProperties_cn_once_token_6, block);
  }

  v2 = alwaysFetchedProperties_cn_once_object_6;

  return v2;
}

void __50__CN_PropertyDescription__alwaysFetchedProperties__block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) identifierDescription];
  v7[0] = v2;
  v3 = [*(a1 + 32) iOSLegacyIdentifierDescription];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v4 copy];
  v6 = alwaysFetchedProperties_cn_once_object_6;
  alwaysFetchedProperties_cn_once_object_6 = v5;
}

void __51__CN_PropertyDescription__allImageDataPropertyKeys__block_invoke()
{
  v4 = +[CN allImageDataProperties];
  v0 = [v4 _cn_map:&__block_literal_global_162];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = allImageDataPropertyKeys_cn_once_object_9;
  allImageDataPropertyKeys_cn_once_object_9 = v2;
}

+ (id)allImageDataProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CN_PropertyDescription__allImageDataProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allImageDataProperties_cn_once_token_8 != -1)
  {
    dispatch_once(&allImageDataProperties_cn_once_token_8, block);
  }

  v2 = allImageDataProperties_cn_once_object_8;

  return v2;
}

void __49__CN_PropertyDescription__allImageDataProperties__block_invoke(uint64_t a1)
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [*(a1 + 32) imageDataDescription];
  v16[0] = v15;
  v14 = [*(a1 + 32) fullscreenImageDataDescription];
  v16[1] = v14;
  v2 = [*(a1 + 32) syncImageDataDescription];
  v16[2] = v2;
  v3 = [*(a1 + 32) imageType];
  v16[3] = v3;
  v4 = [*(a1 + 32) imageHash];
  v16[4] = v4;
  v5 = [*(a1 + 32) thumbnailImageDataDescription];
  v16[5] = v5;
  v6 = [*(a1 + 32) cropRectDescription];
  v16[6] = v6;
  v7 = [*(a1 + 32) externalImageURIDescription];
  v16[7] = v7;
  v8 = [*(a1 + 32) memojiMetadataDescription];
  v16[8] = v8;
  v9 = [*(a1 + 32) sharedPhotoDisplayPreferenceDescription];
  v16[9] = v9;
  v10 = [*(a1 + 32) avatarRecipeDataDescription];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];
  v12 = [v11 copy];
  v13 = allImageDataProperties_cn_once_object_8;
  allImageDataProperties_cn_once_object_8 = v12;
}

+ (id)imageHash
{
  if (imageHash_cn_once_token_86 != -1)
  {
    +[CN(PropertyDescription) imageHash];
  }

  v3 = imageHash_cn_once_object_86;

  return v3;
}

+ (id)externalImageURIDescription
{
  if (externalImageURIDescription_cn_once_token_78 != -1)
  {
    +[CN(PropertyDescription) externalImageURIDescription];
  }

  v3 = externalImageURIDescription_cn_once_object_78;

  return v3;
}

+ (id)avatarRecipeDataDescription
{
  if (avatarRecipeDataDescription_cn_once_token_92 != -1)
  {
    +[CN(PropertyDescription) avatarRecipeDataDescription];
  }

  v3 = avatarRecipeDataDescription_cn_once_object_92;

  return v3;
}

uint64_t __52__CN_PropertyDescription__memojiMetadataDescription__block_invoke()
{
  memojiMetadataDescription_cn_once_object_87 = objc_alloc_init(CNMemojiMetadataDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __54__CN_PropertyDescription__avatarRecipeDataDescription__block_invoke()
{
  avatarRecipeDataDescription_cn_once_object_92 = objc_alloc_init(CNAvatarRecipeDataDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)identifierDescription
{
  if (identifierDescription_cn_once_token_23 != -1)
  {
    +[CN(PropertyDescription) identifierDescription];
  }

  v3 = identifierDescription_cn_once_object_23;

  return v3;
}

void __47__CN_PropertyDescription__allContactProperties__block_invoke(uint64_t a1)
{
  v79[74] = *MEMORY[0x1E69E9840];
  v78 = [*(a1 + 32) identifierDescription];
  v79[0] = v78;
  v77 = [*(a1 + 32) iOSLegacyIdentifierDescription];
  v79[1] = v77;
  v76 = [*(a1 + 32) namePrefixDescription];
  v79[2] = v76;
  v75 = [*(a1 + 32) givenNameDescription];
  v79[3] = v75;
  v74 = [*(a1 + 32) middleNameDescription];
  v79[4] = v74;
  v73 = [*(a1 + 32) familyNameDescription];
  v79[5] = v73;
  v72 = [*(a1 + 32) nameSuffixDescription];
  v79[6] = v72;
  v71 = [*(a1 + 32) previousFamilyNameDescription];
  v79[7] = v71;
  v70 = [*(a1 + 32) nicknameDescription];
  v79[8] = v70;
  v69 = [*(a1 + 32) phoneticGivenNameDescription];
  v79[9] = v69;
  v68 = [*(a1 + 32) phoneticMiddleNameDescription];
  v79[10] = v68;
  v67 = [*(a1 + 32) phoneticFamilyNameDescription];
  v79[11] = v67;
  v66 = [*(a1 + 32) phoneticOrganizationNameDescription];
  v79[12] = v66;
  v65 = [*(a1 + 32) pronunciationGivenNameDescription];
  v79[13] = v65;
  v64 = [*(a1 + 32) pronunciationFamilyNameDescription];
  v79[14] = v64;
  v63 = [*(a1 + 32) explicitDisplayNameDescription];
  v79[15] = v63;
  v62 = [*(a1 + 32) addressingGrammarsDescription];
  v79[16] = v62;
  v61 = [*(a1 + 32) addressingGrammarsEncryptedDescription];
  v79[17] = v61;
  v60 = [*(a1 + 32) sectionForSortingByFamilyNameDescription];
  v79[18] = v60;
  v59 = [*(a1 + 32) sectionForSortingByGivenNameDescription];
  v79[19] = v59;
  v58 = [*(a1 + 32) organizationNameDescription];
  v79[20] = v58;
  v57 = [*(a1 + 32) departmentDescription];
  v79[21] = v57;
  v56 = [*(a1 + 32) jobTitleDescription];
  v79[22] = v56;
  v55 = [*(a1 + 32) birthdayDescription];
  v79[23] = v55;
  v54 = [*(a1 + 32) nonGregorianBirthdayDescription];
  v79[24] = v54;
  v53 = [*(a1 + 32) creationDateDescription];
  v79[25] = v53;
  v52 = [*(a1 + 32) modificationDateDescription];
  v79[26] = v52;
  v51 = [*(a1 + 32) noteDescription];
  v79[27] = v51;
  v50 = [*(a1 + 32) imageDataDescription];
  v79[28] = v50;
  v49 = [*(a1 + 32) cropRectDescription];
  v79[29] = v49;
  v48 = [*(a1 + 32) thumbnailImageDataDescription];
  v79[30] = v48;
  v47 = [*(a1 + 32) imageDataAvailableDescription];
  v79[31] = v47;
  v46 = [*(a1 + 32) fullscreenImageDataDescription];
  v79[32] = v46;
  v45 = [*(a1 + 32) syncImageDataDescription];
  v79[33] = v45;
  v44 = [*(a1 + 32) linkIdentifierDescription];
  v79[34] = v44;
  v43 = [*(a1 + 32) preferredForNameDescription];
  v79[35] = v43;
  v42 = [*(a1 + 32) preferredForImageDescription];
  v79[36] = v42;
  v41 = [*(a1 + 32) contactTypeDescription];
  v79[37] = v41;
  v40 = [*(a1 + 32) preferredLikenessSourceDescription];
  v79[38] = v40;
  v39 = [*(a1 + 32) preferredApplePersonaIdentifierDescription];
  v79[39] = v39;
  v38 = [*(a1 + 32) sharedPhotoDisplayPreferenceDescription];
  v79[40] = v38;
  v37 = [*(a1 + 32) isUsingSharedPhotoDescription];
  v79[41] = v37;
  v36 = [*(a1 + 32) phoneNumbersDescription];
  v79[42] = v36;
  v35 = [*(a1 + 32) emailAddressesDescription];
  v79[43] = v35;
  v34 = [*(a1 + 32) urlAddressesDescription];
  v79[44] = v34;
  v33 = [*(a1 + 32) datesDescription];
  v79[45] = v33;
  v32 = [*(a1 + 32) instantMessagAddressesDescription];
  v79[46] = v32;
  v31 = [*(a1 + 32) contactRelationsDescription];
  v79[47] = v31;
  v30 = [*(a1 + 32) socialProfilesDescription];
  v79[48] = v30;
  v29 = [*(a1 + 32) postalAddressesDescription];
  v79[49] = v29;
  v28 = [*(a1 + 32) phonemeDataDescription];
  v79[50] = v28;
  v27 = [*(a1 + 32) textAlertDescription];
  v79[51] = v27;
  v26 = [*(a1 + 32) callAlertDescription];
  v79[52] = v26;
  v25 = [*(a1 + 32) mapsDataDescription];
  v79[53] = v25;
  v24 = [*(a1 + 32) preferredChannelDescription];
  v79[54] = v24;
  v23 = [*(a1 + 32) calendarURIsDescription];
  v79[55] = v23;
  v22 = [*(a1 + 32) externalIdentifierDescription];
  v79[56] = v22;
  v21 = [*(a1 + 32) externalModificationTagDescription];
  v79[57] = v21;
  v20 = [*(a1 + 32) externalRepresentationDescription];
  v79[58] = v20;
  v19 = [*(a1 + 32) externalUUIDDescription];
  v79[59] = v19;
  v18 = [*(a1 + 32) externalImageURIDescription];
  v79[60] = v18;
  v17 = [*(a1 + 32) imageType];
  v79[61] = v17;
  v16 = [*(a1 + 32) imageHash];
  v79[62] = v16;
  v15 = [*(a1 + 32) downtimeWhitelistDescription];
  v79[63] = v15;
  v14 = [*(a1 + 32) memojiMetadataDescription];
  v79[64] = v14;
  v2 = [*(a1 + 32) wallpaperDescription];
  v79[65] = v2;
  v3 = [*(a1 + 32) wallpaperMetadataDescription];
  v79[66] = v3;
  v4 = [*(a1 + 32) watchWallpaperImageDataDescription];
  v79[67] = v4;
  v5 = [*(a1 + 32) wallpaperURIDescription];
  v79[68] = v5;
  v6 = [*(a1 + 32) avatarRecipeDataDescription];
  v79[69] = v6;
  v7 = [*(a1 + 32) imageBackgroundColorsDataDescription];
  v79[70] = v7;
  v8 = [*(a1 + 32) sensitiveContentConfigurationDescription];
  v79[71] = v8;
  v9 = [*(a1 + 32) imageSyncFailedTimeDescription];
  v79[72] = v9;
  v10 = [*(a1 + 32) wallpaperSyncFailedTimeDescription];
  v79[73] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:74];
  v12 = [v11 copy];
  v13 = allContactProperties_cn_once_object_2;
  allContactProperties_cn_once_object_2 = v12;
}

uint64_t __48__CN_PropertyDescription__identifierDescription__block_invoke()
{
  identifierDescription_cn_once_object_23 = objc_alloc_init(CNInternalIdentifierDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)iOSLegacyIdentifierDescription
{
  if (iOSLegacyIdentifierDescription_cn_once_token_24 != -1)
  {
    +[CN(PropertyDescription) iOSLegacyIdentifierDescription];
  }

  v3 = iOSLegacyIdentifierDescription_cn_once_object_24;

  return v3;
}

uint64_t __57__CN_PropertyDescription__fullscreenImageDataDescription__block_invoke()
{
  fullscreenImageDataDescription_cn_once_object_52 = objc_alloc_init(CNFullscreenImageDataDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __51__CN_PropertyDescription__syncImageDataDescription__block_invoke()
{
  syncImageDataDescription_cn_once_object_53 = objc_alloc_init(CNSyncImageDataDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__CN_PropertyDescription__cropRectDescription__block_invoke()
{
  cropRectDescription_cn_once_object_50 = objc_alloc_init(CNCropRectDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __57__CN_PropertyDescription__iOSLegacyIdentifierDescription__block_invoke()
{
  iOSLegacyIdentifierDescription_cn_once_object_24 = objc_alloc_init(CNIOSLegacyIdentifierDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47__CN_PropertyDescription__imageDataDescription__block_invoke()
{
  imageDataDescription_cn_once_object_49 = objc_alloc_init(CNImageDataDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __56__CN_PropertyDescription__thumbnailImageDataDescription__block_invoke()
{
  thumbnailImageDataDescription_cn_once_object_51 = objc_alloc_init(CNThumbnailImageDataDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)cropRectDescription
{
  if (cropRectDescription_cn_once_token_50 != -1)
  {
    +[CN(PropertyDescription) cropRectDescription];
  }

  v3 = cropRectDescription_cn_once_object_50;

  return v3;
}

+ (id)previousFamilyNameDescription
{
  if (previousFamilyNameDescription_cn_once_token_30 != -1)
  {
    +[CN(PropertyDescription) previousFamilyNameDescription];
  }

  v3 = previousFamilyNameDescription_cn_once_object_30;

  return v3;
}

+ (id)syncImageDataDescription
{
  if (syncImageDataDescription_cn_once_token_53 != -1)
  {
    +[CN(PropertyDescription) syncImageDataDescription];
  }

  v3 = syncImageDataDescription_cn_once_object_53;

  return v3;
}

+ (id)imageDataDescription
{
  if (imageDataDescription_cn_once_token_49 != -1)
  {
    +[CN(PropertyDescription) imageDataDescription];
  }

  v3 = imageDataDescription_cn_once_object_49;

  return v3;
}

+ (id)fullscreenImageDataDescription
{
  if (fullscreenImageDataDescription_cn_once_token_52 != -1)
  {
    +[CN(PropertyDescription) fullscreenImageDataDescription];
  }

  v3 = fullscreenImageDataDescription_cn_once_object_52;

  return v3;
}

+ (id)thumbnailImageDataDescription
{
  if (thumbnailImageDataDescription_cn_once_token_51 != -1)
  {
    +[CN(PropertyDescription) thumbnailImageDataDescription];
  }

  v3 = thumbnailImageDataDescription_cn_once_object_51;

  return v3;
}

uint64_t __56__CN_PropertyDescription__previousFamilyNameDescription__block_invoke()
{
  previousFamilyNameDescription_cn_once_object_30 = objc_alloc_init(CNPreviousFamilyNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sharedPhotoDisplayPreferenceDescription
{
  if (sharedPhotoDisplayPreferenceDescription_cn_once_token_61 != -1)
  {
    +[CN(PropertyDescription) sharedPhotoDisplayPreferenceDescription];
  }

  v3 = sharedPhotoDisplayPreferenceDescription_cn_once_object_61;

  return v3;
}

uint64_t __66__CN_PropertyDescription__sharedPhotoDisplayPreferenceDescription__block_invoke()
{
  sharedPhotoDisplayPreferenceDescription_cn_once_object_61 = objc_alloc_init(CNSharedPhotoDisplayPreferenceDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)memojiMetadataDescription
{
  if (memojiMetadataDescription_cn_once_token_87 != -1)
  {
    +[CN(PropertyDescription) memojiMetadataDescription];
  }

  v3 = memojiMetadataDescription_cn_once_object_87;

  return v3;
}

uint64_t __54__CN_PropertyDescription__externalImageURIDescription__block_invoke()
{
  externalImageURIDescription_cn_once_object_78 = objc_alloc_init(CNExternalImageURIDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)imageType
{
  if (imageType_cn_once_token_85 != -1)
  {
    +[CN(PropertyDescription) imageType];
  }

  v3 = imageType_cn_once_object_85;

  return v3;
}

uint64_t __36__CN_PropertyDescription__imageType__block_invoke()
{
  imageType_cn_once_object_85 = objc_alloc_init(CNImageTypeDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __36__CN_PropertyDescription__imageHash__block_invoke()
{
  imageHash_cn_once_object_86 = objc_alloc_init(CNImageHashDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __46__CN_PropertyDescription__nicknameDescription__block_invoke()
{
  nicknameDescription_cn_once_object_31 = objc_alloc_init(CNNicknameNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __55__CN_PropertyDescription__phoneticGivenNameDescription__block_invoke()
{
  phoneticGivenNameDescription_cn_once_object_32 = objc_alloc_init(CNPhoneticGivenNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __56__CN_PropertyDescription__phoneticMiddleNameDescription__block_invoke()
{
  phoneticMiddleNameDescription_cn_once_object_33 = objc_alloc_init(CNPhoneticMiddleNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __56__CN_PropertyDescription__phoneticFamilyNameDescription__block_invoke()
{
  phoneticFamilyNameDescription_cn_once_object_34 = objc_alloc_init(CNPhoneticFamilyNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __62__CN_PropertyDescription__phoneticOrganizationNameDescription__block_invoke()
{
  phoneticOrganizationNameDescription_cn_once_object_35 = objc_alloc_init(CNPhoneticOrganizationNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __60__CN_PropertyDescription__pronunciationGivenNameDescription__block_invoke()
{
  pronunciationGivenNameDescription_cn_once_object_36 = objc_alloc_init(CNPronunciationGivenNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)nicknameDescription
{
  if (nicknameDescription_cn_once_token_31 != -1)
  {
    +[CN(PropertyDescription) nicknameDescription];
  }

  v3 = nicknameDescription_cn_once_object_31;

  return v3;
}

+ (id)phoneticGivenNameDescription
{
  if (phoneticGivenNameDescription_cn_once_token_32 != -1)
  {
    +[CN(PropertyDescription) phoneticGivenNameDescription];
  }

  v3 = phoneticGivenNameDescription_cn_once_object_32;

  return v3;
}

+ (id)phoneticMiddleNameDescription
{
  if (phoneticMiddleNameDescription_cn_once_token_33 != -1)
  {
    +[CN(PropertyDescription) phoneticMiddleNameDescription];
  }

  v3 = phoneticMiddleNameDescription_cn_once_object_33;

  return v3;
}

+ (id)phoneticFamilyNameDescription
{
  if (phoneticFamilyNameDescription_cn_once_token_34 != -1)
  {
    +[CN(PropertyDescription) phoneticFamilyNameDescription];
  }

  v3 = phoneticFamilyNameDescription_cn_once_object_34;

  return v3;
}

+ (id)phoneticOrganizationNameDescription
{
  if (phoneticOrganizationNameDescription_cn_once_token_35 != -1)
  {
    +[CN(PropertyDescription) phoneticOrganizationNameDescription];
  }

  v3 = phoneticOrganizationNameDescription_cn_once_object_35;

  return v3;
}

+ (id)pronunciationGivenNameDescription
{
  if (pronunciationGivenNameDescription_cn_once_token_36 != -1)
  {
    +[CN(PropertyDescription) pronunciationGivenNameDescription];
  }

  v3 = pronunciationGivenNameDescription_cn_once_object_36;

  return v3;
}

+ (id)pronunciationFamilyNameDescription
{
  if (pronunciationFamilyNameDescription_cn_once_token_37 != -1)
  {
    +[CN(PropertyDescription) pronunciationFamilyNameDescription];
  }

  v3 = pronunciationFamilyNameDescription_cn_once_object_37;

  return v3;
}

uint64_t __61__CN_PropertyDescription__pronunciationFamilyNameDescription__block_invoke()
{
  pronunciationFamilyNameDescription_cn_once_object_37 = objc_alloc_init(CNPronunciationFamilyNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __57__CN_PropertyDescription__explicitDisplayNameDescription__block_invoke()
{
  explicitDisplayNameDescription_cn_once_object_38 = objc_alloc_init(CNExplicitDisplayNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)addressingGrammarsDescription
{
  if (addressingGrammarsDescription_cn_once_token_71 != -1)
  {
    +[CN(PropertyDescription) addressingGrammarsDescription];
  }

  v3 = addressingGrammarsDescription_cn_once_object_71;

  return v3;
}

uint64_t __56__CN_PropertyDescription__addressingGrammarsDescription__block_invoke()
{
  addressingGrammarsDescription_cn_once_object_71 = objc_alloc_init(CNAddressingGrammarsDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sectionForSortingByFamilyNameDescription
{
  if (sectionForSortingByFamilyNameDescription_cn_once_token_39 != -1)
  {
    +[CN(PropertyDescription) sectionForSortingByFamilyNameDescription];
  }

  v3 = sectionForSortingByFamilyNameDescription_cn_once_object_39;

  return v3;
}

uint64_t __67__CN_PropertyDescription__sectionForSortingByFamilyNameDescription__block_invoke()
{
  sectionForSortingByFamilyNameDescription_cn_once_object_39 = objc_alloc_init(CNSectionForSortingByFamilyNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)explicitDisplayNameDescription
{
  if (explicitDisplayNameDescription_cn_once_token_38 != -1)
  {
    +[CN(PropertyDescription) explicitDisplayNameDescription];
  }

  v3 = explicitDisplayNameDescription_cn_once_object_38;

  return v3;
}

+ (id)addressingGrammarsEncryptedDescription
{
  if (addressingGrammarsEncryptedDescription_cn_once_token_72 != -1)
  {
    +[CN(PropertyDescription) addressingGrammarsEncryptedDescription];
  }

  v3 = addressingGrammarsEncryptedDescription_cn_once_object_72;

  return v3;
}

uint64_t __65__CN_PropertyDescription__addressingGrammarsEncryptedDescription__block_invoke()
{
  addressingGrammarsEncryptedDescription_cn_once_object_72 = objc_alloc_init(CNAddressingGrammarsEncryptedDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)sectionForSortingByGivenNameDescription
{
  if (sectionForSortingByGivenNameDescription_cn_once_token_40 != -1)
  {
    +[CN(PropertyDescription) sectionForSortingByGivenNameDescription];
  }

  v3 = sectionForSortingByGivenNameDescription_cn_once_object_40;

  return v3;
}

uint64_t __66__CN_PropertyDescription__sectionForSortingByGivenNameDescription__block_invoke()
{
  sectionForSortingByGivenNameDescription_cn_once_object_40 = objc_alloc_init(CNSectionForSortingByGivenNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __54__CN_PropertyDescription__organizationNameDescription__block_invoke()
{
  organizationNameDescription_cn_once_object_41 = objc_alloc_init(CNOrganizationNameDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)organizationNameDescription
{
  if (organizationNameDescription_cn_once_token_41 != -1)
  {
    +[CN(PropertyDescription) organizationNameDescription];
  }

  v3 = organizationNameDescription_cn_once_object_41;

  return v3;
}

uint64_t __46__CN_PropertyDescription__jobTitleDescription__block_invoke()
{
  jobTitleDescription_cn_once_object_43 = objc_alloc_init(CNJobTitleDescription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __48__CN_PropertyDescription__departmentDescription__block_invoke()
{
  departmentDescription_cn_once_object_42 = objc_alloc_init(CNDepartmentDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)birthdayDescription
{
  if (birthdayDescription_cn_once_token_44 != -1)
  {
    +[CN(PropertyDescription) birthdayDescription];
  }

  v3 = birthdayDescription_cn_once_object_44;

  return v3;
}

uint64_t __46__CN_PropertyDescription__birthdayDescription__block_invoke()
{
  birthdayDescription_cn_once_object_44 = objc_alloc_init(CNBirthdayDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)nonGregorianBirthdayDescription
{
  if (nonGregorianBirthdayDescription_cn_once_token_45 != -1)
  {
    +[CN(PropertyDescription) nonGregorianBirthdayDescription];
  }

  v3 = nonGregorianBirthdayDescription_cn_once_object_45;

  return v3;
}

uint64_t __58__CN_PropertyDescription__nonGregorianBirthdayDescription__block_invoke()
{
  nonGregorianBirthdayDescription_cn_once_object_45 = objc_alloc_init(CNNonGregorianBirthdayDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)creationDateDescription
{
  if (creationDateDescription_cn_once_token_46 != -1)
  {
    +[CN(PropertyDescription) creationDateDescription];
  }

  v3 = creationDateDescription_cn_once_object_46;

  return v3;
}

uint64_t __50__CN_PropertyDescription__creationDateDescription__block_invoke()
{
  creationDateDescription_cn_once_object_46 = objc_alloc_init(CNCreationDateDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)modificationDateDescription
{
  if (modificationDateDescription_cn_once_token_47 != -1)
  {
    +[CN(PropertyDescription) modificationDateDescription];
  }

  v3 = modificationDateDescription_cn_once_object_47;

  return v3;
}

uint64_t __54__CN_PropertyDescription__modificationDateDescription__block_invoke()
{
  modificationDateDescription_cn_once_object_47 = objc_alloc_init(CNModificationDateDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)noteDescription
{
  if (noteDescription_cn_once_token_48 != -1)
  {
    +[CN(PropertyDescription) noteDescription];
  }

  v3 = noteDescription_cn_once_object_48;

  return v3;
}

uint64_t __42__CN_PropertyDescription__noteDescription__block_invoke()
{
  noteDescription_cn_once_object_48 = objc_alloc_init(CNNoteDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)imageDataAvailableDescription
{
  if (imageDataAvailableDescription_cn_once_token_54 != -1)
  {
    +[CN(PropertyDescription) imageDataAvailableDescription];
  }

  v3 = imageDataAvailableDescription_cn_once_object_54;

  return v3;
}

uint64_t __56__CN_PropertyDescription__imageDataAvailableDescription__block_invoke()
{
  imageDataAvailableDescription_cn_once_object_54 = objc_alloc_init(CNImageDataAvailableDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)linkIdentifierDescription
{
  if (linkIdentifierDescription_cn_once_token_55 != -1)
  {
    +[CN(PropertyDescription) linkIdentifierDescription];
  }

  v3 = linkIdentifierDescription_cn_once_object_55;

  return v3;
}

uint64_t __52__CN_PropertyDescription__linkIdentifierDescription__block_invoke()
{
  linkIdentifierDescription_cn_once_object_55 = objc_alloc_init(CNLinkIdentifierDescription);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)allWallpaperPropertyKeys
{
  if (allWallpaperPropertyKeys_cn_once_token_11 != -1)
  {
    +[CN(PropertyDescription) allWallpaperPropertyKeys];
  }

  v3 = allWallpaperPropertyKeys_cn_once_object_11;

  return v3;
}

+ (id)contactPropertiesByKey
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CN_PropertyDescription__contactPropertiesByKey__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (contactPropertiesByKey_cn_once_token_19 != -1)
  {
    dispatch_once(&contactPropertiesByKey_cn_once_token_19, block);
  }

  v2 = contactPropertiesByKey_cn_once_object_19;

  return v2;
}

+ (id)preferredLikenessSourceDescription
{
  if (preferredLikenessSourceDescription_cn_once_token_58 != -1)
  {
    +[CN(PropertyDescription) preferredLikenessSourceDescription];
  }

  v3 = preferredLikenessSourceDescription_cn_once_object_58;

  return v3;
}

+ (id)contactTypeDescription
{
  if (contactTypeDescription_cn_once_token_60 != -1)
  {
    +[CN(PropertyDescription) contactTypeDescription];
  }

  v3 = contactTypeDescription_cn_once_object_60;

  return v3;
}

+ (id)departmentDescription
{
  if (departmentDescription_cn_once_token_42 != -1)
  {
    +[CN(PropertyDescription) departmentDescription];
  }

  v3 = departmentDescription_cn_once_object_42;

  return v3;
}

+ (id)jobTitleDescription
{
  if (jobTitleDescription_cn_once_token_43 != -1)
  {
    +[CN(PropertyDescription) jobTitleDescription];
  }

  v3 = jobTitleDescription_cn_once_object_43;

  return v3;
}

+ (id)preferredApplePersonaIdentifierDescription
{
  if (preferredApplePersonaIdentifierDescription_cn_once_token_59 != -1)
  {
    +[CN(PropertyDescription) preferredApplePersonaIdentifierDescription];
  }

  v3 = preferredApplePersonaIdentifierDescription_cn_once_object_59;

  return v3;
}

+ (id)isUsingSharedPhotoDescription
{
  if (isUsingSharedPhotoDescription_cn_once_token_62 != -1)
  {
    +[CN(PropertyDescription) isUsingSharedPhotoDescription];
  }

  v3 = isUsingSharedPhotoDescription_cn_once_object_62;

  return v3;
}

void __49__CN_PropertyDescription__contactPropertiesByKey__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) allContactProperties];
  v1 = [v4 _cn_indexBy:&__block_literal_global_179_0];
  v2 = [v1 copy];
  v3 = contactPropertiesByKey_cn_once_object_19;
  contactPropertiesByKey_cn_once_object_19 = v2;
}

uint64_t __61__CN_PropertyDescription__preferredLikenessSourceDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPreferredLikenessSourceDescription);
  v1 = preferredLikenessSourceDescription_cn_once_object_58;
  preferredLikenessSourceDescription_cn_once_object_58 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __54__CN_PropertyDescription__preferredForNameDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPreferredForNameDescription);
  v1 = preferredForNameDescription_cn_once_object_56;
  preferredForNameDescription_cn_once_object_56 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __49__CN_PropertyDescription__contactTypeDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContactTypeDescription);
  v1 = contactTypeDescription_cn_once_object_60;
  contactTypeDescription_cn_once_object_60 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __55__CN_PropertyDescription__preferredForImageDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPreferredForImageDescription);
  v1 = preferredForImageDescription_cn_once_object_57;
  preferredForImageDescription_cn_once_object_57 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)preferredForNameDescription
{
  if (preferredForNameDescription_cn_once_token_56 != -1)
  {
    +[CN(PropertyDescription) preferredForNameDescription];
  }

  v3 = preferredForNameDescription_cn_once_object_56;

  return v3;
}

+ (id)preferredForImageDescription
{
  if (preferredForImageDescription_cn_once_token_57 != -1)
  {
    +[CN(PropertyDescription) preferredForImageDescription];
  }

  v3 = preferredForImageDescription_cn_once_object_57;

  return v3;
}

uint64_t __69__CN_PropertyDescription__preferredApplePersonaIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPreferredApplePersonaIdentifierDescription);
  v1 = preferredApplePersonaIdentifierDescription_cn_once_object_59;
  preferredApplePersonaIdentifierDescription_cn_once_object_59 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __56__CN_PropertyDescription__isUsingSharedPhotoDescription__block_invoke()
{
  v0 = objc_alloc_init(CNisUsingSharedPhotoDescription);
  v1 = isUsingSharedPhotoDescription_cn_once_object_62;
  isUsingSharedPhotoDescription_cn_once_object_62 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)emailAddressesDescription
{
  if (emailAddressesDescription_cn_once_token_64 != -1)
  {
    +[CN(PropertyDescription) emailAddressesDescription];
  }

  v3 = emailAddressesDescription_cn_once_object_64;

  return v3;
}

uint64_t __52__CN_PropertyDescription__emailAddressesDescription__block_invoke()
{
  v0 = objc_alloc_init(CNEmailAddressesDescription);
  v1 = emailAddressesDescription_cn_once_object_64;
  emailAddressesDescription_cn_once_object_64 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)urlAddressesDescription
{
  if (urlAddressesDescription_cn_once_token_65 != -1)
  {
    +[CN(PropertyDescription) urlAddressesDescription];
  }

  v3 = urlAddressesDescription_cn_once_object_65;

  return v3;
}

+ (id)datesDescription
{
  if (datesDescription_cn_once_token_66 != -1)
  {
    +[CN(PropertyDescription) datesDescription];
  }

  v3 = datesDescription_cn_once_object_66;

  return v3;
}

uint64_t __60__CN_PropertyDescription__instantMessagAddressesDescription__block_invoke()
{
  v0 = objc_alloc_init(CNInstantMessageAddressesDescription);
  v1 = instantMessagAddressesDescription_cn_once_object_67;
  instantMessagAddressesDescription_cn_once_object_67 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)contactRelationsDescription
{
  if (contactRelationsDescription_cn_once_token_68 != -1)
  {
    +[CN(PropertyDescription) contactRelationsDescription];
  }

  v3 = contactRelationsDescription_cn_once_object_68;

  return v3;
}

uint64_t __54__CN_PropertyDescription__contactRelationsDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContactRelationsDescription);
  v1 = contactRelationsDescription_cn_once_object_68;
  contactRelationsDescription_cn_once_object_68 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)socialProfilesDescription
{
  if (socialProfilesDescription_cn_once_token_69 != -1)
  {
    +[CN(PropertyDescription) socialProfilesDescription];
  }

  v3 = socialProfilesDescription_cn_once_object_69;

  return v3;
}

uint64_t __52__CN_PropertyDescription__socialProfilesDescription__block_invoke()
{
  v0 = objc_alloc_init(CNSocialProfilesDescription);
  v1 = socialProfilesDescription_cn_once_object_69;
  socialProfilesDescription_cn_once_object_69 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)textAlertDescription
{
  if (textAlertDescription_cn_once_token_80 != -1)
  {
    +[CN(PropertyDescription) textAlertDescription];
  }

  v3 = textAlertDescription_cn_once_object_80;

  return v3;
}

+ (id)phoneNumbersDescription
{
  if (phoneNumbersDescription_cn_once_token_63 != -1)
  {
    +[CN(PropertyDescription) phoneNumbersDescription];
  }

  v3 = phoneNumbersDescription_cn_once_object_63;

  return v3;
}

uint64_t __50__CN_PropertyDescription__phoneNumbersDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPhoneNumbersDescription);
  v1 = phoneNumbersDescription_cn_once_object_63;
  phoneNumbersDescription_cn_once_object_63 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __50__CN_PropertyDescription__urlAddressesDescription__block_invoke()
{
  v0 = objc_alloc_init(CNUrlAddressesDescription);
  v1 = urlAddressesDescription_cn_once_object_65;
  urlAddressesDescription_cn_once_object_65 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __43__CN_PropertyDescription__datesDescription__block_invoke()
{
  v0 = objc_alloc_init(CNDatesDescription);
  v1 = datesDescription_cn_once_object_66;
  datesDescription_cn_once_object_66 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)instantMessagAddressesDescription
{
  if (instantMessagAddressesDescription_cn_once_token_67 != -1)
  {
    +[CN(PropertyDescription) instantMessagAddressesDescription];
  }

  v3 = instantMessagAddressesDescription_cn_once_object_67;

  return v3;
}

+ (id)postalAddressesDescription
{
  if (postalAddressesDescription_cn_once_token_70 != -1)
  {
    +[CN(PropertyDescription) postalAddressesDescription];
  }

  v3 = postalAddressesDescription_cn_once_object_70;

  return v3;
}

uint64_t __53__CN_PropertyDescription__postalAddressesDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPostalAddressesDescription);
  v1 = postalAddressesDescription_cn_once_object_70;
  postalAddressesDescription_cn_once_object_70 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)phonemeDataDescription
{
  if (phonemeDataDescription_cn_once_token_79 != -1)
  {
    +[CN(PropertyDescription) phonemeDataDescription];
  }

  v3 = phonemeDataDescription_cn_once_object_79;

  return v3;
}

uint64_t __49__CN_PropertyDescription__phonemeDataDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPhonemeDataDescription);
  v1 = phonemeDataDescription_cn_once_object_79;
  phonemeDataDescription_cn_once_object_79 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __50__CN_PropertyDescription__calendarURIsDescription__block_invoke()
{
  v0 = objc_alloc_init(CNCalendarURIsDescription);
  v1 = calendarURIsDescription_cn_once_object_73;
  calendarURIsDescription_cn_once_object_73 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)externalUUIDDescription
{
  if (externalUUIDDescription_cn_once_token_77 != -1)
  {
    +[CN(PropertyDescription) externalUUIDDescription];
  }

  v3 = externalUUIDDescription_cn_once_object_77;

  return v3;
}

+ (id)downtimeWhitelistDescription
{
  if (downtimeWhitelistDescription_cn_once_token_84 != -1)
  {
    +[CN(PropertyDescription) downtimeWhitelistDescription];
  }

  v3 = downtimeWhitelistDescription_cn_once_object_84;

  return v3;
}

uint64_t __55__CN_PropertyDescription__downtimeWhitelistDescription__block_invoke()
{
  v0 = objc_alloc_init(CNDowntimeWhitelistDescription);
  v1 = downtimeWhitelistDescription_cn_once_object_84;
  downtimeWhitelistDescription_cn_once_object_84 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)wallpaperDescription
{
  if (wallpaperDescription_cn_once_token_88 != -1)
  {
    +[CN(PropertyDescription) wallpaperDescription];
  }

  v3 = wallpaperDescription_cn_once_object_88;

  return v3;
}

void __51__CN_PropertyDescription__allWallpaperPropertyKeys__block_invoke()
{
  v4 = +[CN allWallpaperProperties];
  v0 = [v4 _cn_map:&__block_literal_global_166];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = allWallpaperPropertyKeys_cn_once_object_11;
  allWallpaperPropertyKeys_cn_once_object_11 = v2;
}

+ (id)allWallpaperProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CN_PropertyDescription__allWallpaperProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allWallpaperProperties_cn_once_token_10 != -1)
  {
    dispatch_once(&allWallpaperProperties_cn_once_token_10, block);
  }

  v2 = allWallpaperProperties_cn_once_object_10;

  return v2;
}

void __49__CN_PropertyDescription__allWallpaperProperties__block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) wallpaperDescription];
  v3 = [*(a1 + 32) wallpaperMetadataDescription];
  v8[1] = v3;
  v4 = [*(a1 + 32) watchWallpaperImageDataDescription];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v6 = [v5 copy];
  v7 = allWallpaperProperties_cn_once_object_10;
  allWallpaperProperties_cn_once_object_10 = v6;
}

uint64_t __47__CN_PropertyDescription__textAlertDescription__block_invoke()
{
  v0 = objc_alloc_init(CNTextAlertDescription);
  v1 = textAlertDescription_cn_once_object_80;
  textAlertDescription_cn_once_object_80 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)callAlertDescription
{
  if (callAlertDescription_cn_once_token_81 != -1)
  {
    +[CN(PropertyDescription) callAlertDescription];
  }

  v3 = callAlertDescription_cn_once_object_81;

  return v3;
}

uint64_t __47__CN_PropertyDescription__callAlertDescription__block_invoke()
{
  v0 = objc_alloc_init(CNCallAlertDescription);
  v1 = callAlertDescription_cn_once_object_81;
  callAlertDescription_cn_once_object_81 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)mapsDataDescription
{
  if (mapsDataDescription_cn_once_token_83 != -1)
  {
    +[CN(PropertyDescription) mapsDataDescription];
  }

  v3 = mapsDataDescription_cn_once_object_83;

  return v3;
}

uint64_t __46__CN_PropertyDescription__mapsDataDescription__block_invoke()
{
  v0 = objc_alloc_init(CNMapsDataDescription);
  v1 = mapsDataDescription_cn_once_object_83;
  mapsDataDescription_cn_once_object_83 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)preferredChannelDescription
{
  if (preferredChannelDescription_cn_once_token_82 != -1)
  {
    +[CN(PropertyDescription) preferredChannelDescription];
  }

  v3 = preferredChannelDescription_cn_once_object_82;

  return v3;
}

uint64_t __54__CN_PropertyDescription__preferredChannelDescription__block_invoke()
{
  v0 = objc_alloc_init(CNPreferredChannelDescription);
  v1 = preferredChannelDescription_cn_once_object_82;
  preferredChannelDescription_cn_once_object_82 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)calendarURIsDescription
{
  if (calendarURIsDescription_cn_once_token_73 != -1)
  {
    +[CN(PropertyDescription) calendarURIsDescription];
  }

  v3 = calendarURIsDescription_cn_once_object_73;

  return v3;
}

+ (id)externalIdentifierDescription
{
  if (externalIdentifierDescription_cn_once_token_74 != -1)
  {
    +[CN(PropertyDescription) externalIdentifierDescription];
  }

  v3 = externalIdentifierDescription_cn_once_object_74;

  return v3;
}

uint64_t __56__CN_PropertyDescription__externalIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNExternalIdentifierDescription);
  v1 = externalIdentifierDescription_cn_once_object_74;
  externalIdentifierDescription_cn_once_object_74 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)externalModificationTagDescription
{
  if (externalModificationTagDescription_cn_once_token_75 != -1)
  {
    +[CN(PropertyDescription) externalModificationTagDescription];
  }

  v3 = externalModificationTagDescription_cn_once_object_75;

  return v3;
}

uint64_t __61__CN_PropertyDescription__externalModificationTagDescription__block_invoke()
{
  v0 = objc_alloc_init(CNExternalModificationTagDescription);
  v1 = externalModificationTagDescription_cn_once_object_75;
  externalModificationTagDescription_cn_once_object_75 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)externalRepresentationDescription
{
  if (externalRepresentationDescription_cn_once_token_76 != -1)
  {
    +[CN(PropertyDescription) externalRepresentationDescription];
  }

  v3 = externalRepresentationDescription_cn_once_object_76;

  return v3;
}

uint64_t __60__CN_PropertyDescription__externalRepresentationDescription__block_invoke()
{
  v0 = objc_alloc_init(CNExternalRepresentationDescription);
  v1 = externalRepresentationDescription_cn_once_object_76;
  externalRepresentationDescription_cn_once_object_76 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __50__CN_PropertyDescription__externalUUIDDescription__block_invoke()
{
  v0 = objc_alloc_init(CNExternalUUIDDescription);
  v1 = externalUUIDDescription_cn_once_object_77;
  externalUUIDDescription_cn_once_object_77 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __47__CN_PropertyDescription__wallpaperDescription__block_invoke()
{
  v0 = objc_alloc_init(CNWallpaperDescription);
  v1 = wallpaperDescription_cn_once_object_88;
  wallpaperDescription_cn_once_object_88 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)wallpaperMetadataDescription
{
  if (wallpaperMetadataDescription_cn_once_token_89 != -1)
  {
    +[CN(PropertyDescription) wallpaperMetadataDescription];
  }

  v3 = wallpaperMetadataDescription_cn_once_object_89;

  return v3;
}

uint64_t __55__CN_PropertyDescription__wallpaperMetadataDescription__block_invoke()
{
  v0 = objc_alloc_init(CNWallpaperMetadataDescription);
  v1 = wallpaperMetadataDescription_cn_once_object_89;
  wallpaperMetadataDescription_cn_once_object_89 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)watchWallpaperImageDataDescription
{
  if (watchWallpaperImageDataDescription_cn_once_token_90 != -1)
  {
    +[CN(PropertyDescription) watchWallpaperImageDataDescription];
  }

  v3 = watchWallpaperImageDataDescription_cn_once_object_90;

  return v3;
}

uint64_t __61__CN_PropertyDescription__watchWallpaperImageDataDescription__block_invoke()
{
  v0 = objc_alloc_init(CNWatchWallpaperImageDataDescription);
  v1 = watchWallpaperImageDataDescription_cn_once_object_90;
  watchWallpaperImageDataDescription_cn_once_object_90 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)wallpaperURIDescription
{
  if (wallpaperURIDescription_cn_once_token_91 != -1)
  {
    +[CN(PropertyDescription) wallpaperURIDescription];
  }

  v3 = wallpaperURIDescription_cn_once_object_91;

  return v3;
}

uint64_t __50__CN_PropertyDescription__wallpaperURIDescription__block_invoke()
{
  v0 = objc_alloc_init(CNWallpaperURIDescription);
  v1 = wallpaperURIDescription_cn_once_object_91;
  wallpaperURIDescription_cn_once_object_91 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)imageBackgroundColorsDataDescription
{
  if (imageBackgroundColorsDataDescription_cn_once_token_93 != -1)
  {
    +[CN(PropertyDescription) imageBackgroundColorsDataDescription];
  }

  v3 = imageBackgroundColorsDataDescription_cn_once_object_93;

  return v3;
}

uint64_t __63__CN_PropertyDescription__imageBackgroundColorsDataDescription__block_invoke()
{
  v0 = objc_alloc_init(CNImageBackgroundColorsDataDescription);
  v1 = imageBackgroundColorsDataDescription_cn_once_object_93;
  imageBackgroundColorsDataDescription_cn_once_object_93 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)sensitiveContentConfigurationDescription
{
  if (sensitiveContentConfigurationDescription_cn_once_token_94 != -1)
  {
    +[CN(PropertyDescription) sensitiveContentConfigurationDescription];
  }

  v3 = sensitiveContentConfigurationDescription_cn_once_object_94;

  return v3;
}

uint64_t __67__CN_PropertyDescription__sensitiveContentConfigurationDescription__block_invoke()
{
  v0 = objc_alloc_init(CNSensitiveContentConfigurationDescription);
  v1 = sensitiveContentConfigurationDescription_cn_once_object_94;
  sensitiveContentConfigurationDescription_cn_once_object_94 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)imageSyncFailedTimeDescription
{
  if (imageSyncFailedTimeDescription_cn_once_token_95 != -1)
  {
    +[CN(PropertyDescription) imageSyncFailedTimeDescription];
  }

  v3 = imageSyncFailedTimeDescription_cn_once_object_95;

  return v3;
}

uint64_t __57__CN_PropertyDescription__imageSyncFailedTimeDescription__block_invoke()
{
  v0 = objc_alloc_init(CNImageSyncFailedTimeDescription);
  v1 = imageSyncFailedTimeDescription_cn_once_object_95;
  imageSyncFailedTimeDescription_cn_once_object_95 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)wallpaperSyncFailedTimeDescription
{
  if (wallpaperSyncFailedTimeDescription_cn_once_token_96 != -1)
  {
    +[CN(PropertyDescription) wallpaperSyncFailedTimeDescription];
  }

  v3 = wallpaperSyncFailedTimeDescription_cn_once_object_96;

  return v3;
}

uint64_t __61__CN_PropertyDescription__wallpaperSyncFailedTimeDescription__block_invoke()
{
  v0 = objc_alloc_init(CNWallpaperSyncFailedTimeDescription);
  v1 = wallpaperSyncFailedTimeDescription_cn_once_object_96;
  wallpaperSyncFailedTimeDescription_cn_once_object_96 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __60__CN_PropertyDescription__allNameComponentRelatedProperties__block_invoke(uint64_t a1)
{
  v22[15] = *MEMORY[0x1E69E9840];
  v21 = [*(a1 + 32) namePrefixDescription];
  v22[0] = v21;
  v20 = [*(a1 + 32) givenNameDescription];
  v22[1] = v20;
  v19 = [*(a1 + 32) middleNameDescription];
  v22[2] = v19;
  v18 = [*(a1 + 32) familyNameDescription];
  v22[3] = v18;
  v17 = [*(a1 + 32) previousFamilyNameDescription];
  v22[4] = v17;
  v16 = [*(a1 + 32) nameSuffixDescription];
  v22[5] = v16;
  v15 = [*(a1 + 32) nicknameDescription];
  v22[6] = v15;
  v14 = [*(a1 + 32) pronunciationGivenNameDescription];
  v22[7] = v14;
  v2 = [*(a1 + 32) pronunciationFamilyNameDescription];
  v22[8] = v2;
  v3 = [*(a1 + 32) explicitDisplayNameDescription];
  v22[9] = v3;
  v4 = [*(a1 + 32) organizationNameDescription];
  v22[10] = v4;
  v5 = [*(a1 + 32) phoneticOrganizationNameDescription];
  v22[11] = v5;
  v6 = [*(a1 + 32) contactTypeDescription];
  v22[12] = v6;
  v7 = [*(a1 + 32) departmentDescription];
  v22[13] = v7;
  v8 = [*(a1 + 32) jobTitleDescription];
  v22[14] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:15];
  v10 = [*(a1 + 32) allPhoneticNameComponentProperties];
  v11 = [v9 arrayByAddingObjectsFromArray:v10];
  v12 = [v11 copy];
  v13 = allNameComponentRelatedProperties_cn_once_object_12;
  allNameComponentRelatedProperties_cn_once_object_12 = v12;
}

void __61__CN_PropertyDescription__allPhoneticNameComponentProperties__block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) phoneticGivenNameDescription];
  v3 = [*(a1 + 32) phoneticMiddleNameDescription];
  v8[1] = v3;
  v4 = [*(a1 + 32) phoneticFamilyNameDescription];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v6 = [v5 copy];
  v7 = allPhoneticNameComponentProperties_cn_once_object_13;
  allPhoneticNameComponentProperties_cn_once_object_13 = v6;
}

+ (id)allPhoneticNameComponentProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CN_PropertyDescription__allPhoneticNameComponentProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allPhoneticNameComponentProperties_cn_once_token_13 != -1)
  {
    dispatch_once(&allPhoneticNameComponentProperties_cn_once_token_13, block);
  }

  v2 = allPhoneticNameComponentProperties_cn_once_object_13;

  return v2;
}

+ (id)allNameComponentRelatedProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CN_PropertyDescription__allNameComponentRelatedProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allNameComponentRelatedProperties_cn_once_token_12 != -1)
  {
    dispatch_once(&allNameComponentRelatedProperties_cn_once_token_12, block);
  }

  v2 = allNameComponentRelatedProperties_cn_once_object_12;

  return v2;
}

+ (id)writableContactProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CN_PropertyDescription__writableContactProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (writableContactProperties_cn_once_token_16 != -1)
  {
    dispatch_once(&writableContactProperties_cn_once_token_16, block);
  }

  v2 = writableContactProperties_cn_once_object_16;

  return v2;
}

void __52__CN_PropertyDescription__writableContactProperties__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) allContactProperties];
  v1 = [v4 _cn_filter:&__block_literal_global_173_1];
  v2 = [v1 copy];
  v3 = writableContactProperties_cn_once_object_16;
  writableContactProperties_cn_once_object_16 = v2;
}

void __62__CN_PropertyDescription__writableMultiValueContactProperties__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) writableContactProperties];
  v1 = [v4 _cn_filter:&__block_literal_global_177_0];
  v2 = [v1 copy];
  v3 = writableMultiValueContactProperties_cn_once_object_18;
  writableMultiValueContactProperties_cn_once_object_18 = v2;
}

+ (id)writableMultiValueContactProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__CN_PropertyDescription__writableMultiValueContactProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (writableMultiValueContactProperties_cn_once_token_18 != -1)
  {
    dispatch_once(&writableMultiValueContactProperties_cn_once_token_18, block);
  }

  v2 = writableMultiValueContactProperties_cn_once_object_18;

  return v2;
}

void __63__CN_PropertyDescription__writableSingleValueContactProperties__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) writableContactProperties];
  v1 = [v4 _cn_filter:&__block_literal_global_175];
  v2 = [v1 copy];
  v3 = writableSingleValueContactProperties_cn_once_object_17;
  writableSingleValueContactProperties_cn_once_object_17 = v2;
}

+ (id)writableSingleValueContactProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CN_PropertyDescription__writableSingleValueContactProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (writableSingleValueContactProperties_cn_once_token_17 != -1)
  {
    dispatch_once(&writableSingleValueContactProperties_cn_once_token_17, block);
  }

  v2 = writableSingleValueContactProperties_cn_once_object_17;

  return v2;
}

+ (id)multiValueContactProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CN_PropertyDescription__multiValueContactProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (multiValueContactProperties_cn_once_token_15 != -1)
  {
    dispatch_once(&multiValueContactProperties_cn_once_token_15, block);
  }

  v2 = multiValueContactProperties_cn_once_object_15;

  return v2;
}

void __54__CN_PropertyDescription__multiValueContactProperties__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) allContactProperties];
  v1 = [v4 _cn_filter:&__block_literal_global_171];
  v2 = [v1 copy];
  v3 = multiValueContactProperties_cn_once_object_15;
  multiValueContactProperties_cn_once_object_15 = v2;
}

+ (id)contactFlagsDescription
{
  if (contactFlagsDescription_cn_once_token_20 != -1)
  {
    +[CN(PropertyDescription) contactFlagsDescription];
  }

  v3 = contactFlagsDescription_cn_once_object_20;

  return v3;
}

+ (NSArray)runtimeOnlyProperties
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 contactFlagsDescription];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)containerIdentifierDescription
{
  if (containerIdentifierDescription_cn_once_token_0 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerIdentifierDescription];
  }

  v3 = containerIdentifierDescription_cn_once_object_0;

  return v3;
}

uint64_t __68__CN_CNContainerPropertyDescription__containerIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerIdentifierDescription);
  v1 = containerIdentifierDescription_cn_once_object_0;
  containerIdentifierDescription_cn_once_object_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerNameDescription
{
  if (containerNameDescription_cn_once_token_1 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerNameDescription];
  }

  v3 = containerNameDescription_cn_once_object_1;

  return v3;
}

uint64_t __62__CN_CNContainerPropertyDescription__containerNameDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerNameDescription);
  v1 = containerNameDescription_cn_once_object_1;
  containerNameDescription_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerTypeDescription
{
  if (containerTypeDescription_cn_once_token_2 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerTypeDescription];
  }

  v3 = containerTypeDescription_cn_once_object_2;

  return v3;
}

uint64_t __62__CN_CNContainerPropertyDescription__containerTypeDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerTypeDescription);
  v1 = containerTypeDescription_cn_once_object_2;
  containerTypeDescription_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containeriOSLegacyIdentifierDescription
{
  if (containeriOSLegacyIdentifierDescription_cn_once_token_3 != -1)
  {
    +[CN(CNContainerPropertyDescription) containeriOSLegacyIdentifierDescription];
  }

  v3 = containeriOSLegacyIdentifierDescription_cn_once_object_3;

  return v3;
}

uint64_t __77__CN_CNContainerPropertyDescription__containeriOSLegacyIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerIOSLegacyIdentifierDescription);
  v1 = containeriOSLegacyIdentifierDescription_cn_once_object_3;
  containeriOSLegacyIdentifierDescription_cn_once_object_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerAccountIdentifierDescription
{
  if (containerAccountIdentifierDescription_cn_once_token_4 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerAccountIdentifierDescription];
  }

  v3 = containerAccountIdentifierDescription_cn_once_object_4;

  return v3;
}

uint64_t __75__CN_CNContainerPropertyDescription__containerAccountIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerAccountIdentifierDescription);
  v1 = containerAccountIdentifierDescription_cn_once_object_4;
  containerAccountIdentifierDescription_cn_once_object_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerEnabledDescription
{
  if (containerEnabledDescription_cn_once_token_5 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerEnabledDescription];
  }

  v3 = containerEnabledDescription_cn_once_object_5;

  return v3;
}

uint64_t __65__CN_CNContainerPropertyDescription__containerEnabledDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerEnabledDescription);
  v1 = containerEnabledDescription_cn_once_object_5;
  containerEnabledDescription_cn_once_object_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerExternalIdentifierDescription
{
  if (containerExternalIdentifierDescription_cn_once_token_6 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerExternalIdentifierDescription];
  }

  v3 = containerExternalIdentifierDescription_cn_once_object_6;

  return v3;
}

uint64_t __76__CN_CNContainerPropertyDescription__containerExternalIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerExternalIdentifierDescription);
  v1 = containerExternalIdentifierDescription_cn_once_object_6;
  containerExternalIdentifierDescription_cn_once_object_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerExternalModificationTagDescription
{
  if (containerExternalModificationTagDescription_cn_once_token_7 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerExternalModificationTagDescription];
  }

  v3 = containerExternalModificationTagDescription_cn_once_object_7;

  return v3;
}

uint64_t __81__CN_CNContainerPropertyDescription__containerExternalModificationTagDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerExternalModificationTagDescription);
  v1 = containerExternalModificationTagDescription_cn_once_object_7;
  containerExternalModificationTagDescription_cn_once_object_7 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerExternalSyncTagDescription
{
  if (containerExternalSyncTagDescription_cn_once_token_8 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerExternalSyncTagDescription];
  }

  v3 = containerExternalSyncTagDescription_cn_once_object_8;

  return v3;
}

uint64_t __73__CN_CNContainerPropertyDescription__containerExternalSyncTagDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerExternalSyncTagDescription);
  v1 = containerExternalSyncTagDescription_cn_once_object_8;
  containerExternalSyncTagDescription_cn_once_object_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerExternalSyncDataDescription
{
  if (containerExternalSyncDataDescription_cn_once_token_9 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerExternalSyncDataDescription];
  }

  v3 = containerExternalSyncDataDescription_cn_once_object_9;

  return v3;
}

uint64_t __74__CN_CNContainerPropertyDescription__containerExternalSyncDataDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerExternalSyncDataDescription);
  v1 = containerExternalSyncDataDescription_cn_once_object_9;
  containerExternalSyncDataDescription_cn_once_object_9 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerConstraintsPathDescription
{
  if (containerConstraintsPathDescription_cn_once_token_10 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerConstraintsPathDescription];
  }

  v3 = containerConstraintsPathDescription_cn_once_object_10;

  return v3;
}

uint64_t __73__CN_CNContainerPropertyDescription__containerConstraintsPathDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerConstraintsPathDescription);
  v1 = containerConstraintsPathDescription_cn_once_object_10;
  containerConstraintsPathDescription_cn_once_object_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerMeIdentifierDescription
{
  if (containerMeIdentifierDescription_cn_once_token_11 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerMeIdentifierDescription];
  }

  v3 = containerMeIdentifierDescription_cn_once_object_11;

  return v3;
}

uint64_t __70__CN_CNContainerPropertyDescription__containerMeIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerMeIdentifierDescription);
  v1 = containerMeIdentifierDescription_cn_once_object_11;
  containerMeIdentifierDescription_cn_once_object_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerRestrictionsDescription
{
  if (containerRestrictionsDescription_cn_once_token_12 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerRestrictionsDescription];
  }

  v3 = containerRestrictionsDescription_cn_once_object_12;

  return v3;
}

uint64_t __70__CN_CNContainerPropertyDescription__containerRestrictionsDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerRestrictionsDescription);
  v1 = containerRestrictionsDescription_cn_once_object_12;
  containerRestrictionsDescription_cn_once_object_12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerGuardianRestrictedDescription
{
  if (containerGuardianRestrictedDescription_cn_once_token_13 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerGuardianRestrictedDescription];
  }

  v3 = containerGuardianRestrictedDescription_cn_once_object_13;

  return v3;
}

uint64_t __76__CN_CNContainerPropertyDescription__containerGuardianRestrictedDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerGuardianRestrictedDescription);
  v1 = containerGuardianRestrictedDescription_cn_once_object_13;
  containerGuardianRestrictedDescription_cn_once_object_13 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerGuardianStateDirtyDescription
{
  if (containerGuardianStateDirtyDescription_cn_once_token_14 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerGuardianStateDirtyDescription];
  }

  v3 = containerGuardianStateDirtyDescription_cn_once_object_14;

  return v3;
}

uint64_t __76__CN_CNContainerPropertyDescription__containerGuardianStateDirtyDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerGuardianStateDirtyDescription);
  v1 = containerGuardianStateDirtyDescription_cn_once_object_14;
  containerGuardianStateDirtyDescription_cn_once_object_14 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerLastSyncDateDescription
{
  if (containerLastSyncDateDescription_cn_once_token_15 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerLastSyncDateDescription];
  }

  v3 = containerLastSyncDateDescription_cn_once_object_15;

  return v3;
}

uint64_t __70__CN_CNContainerPropertyDescription__containerLastSyncDateDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerLastSyncDateDescription);
  v1 = containerLastSyncDateDescription_cn_once_object_15;
  containerLastSyncDateDescription_cn_once_object_15 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerProviderIdentifierDescription
{
  if (containerProviderIdentifierDescription_cn_once_token_16 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerProviderIdentifierDescription];
  }

  v3 = containerProviderIdentifierDescription_cn_once_object_16;

  return v3;
}

uint64_t __76__CN_CNContainerPropertyDescription__containerProviderIdentifierDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerProviderIdentifierDescription);
  v1 = containerProviderIdentifierDescription_cn_once_object_16;
  containerProviderIdentifierDescription_cn_once_object_16 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)containerProviderMetadataDescription
{
  if (containerProviderMetadataDescription_cn_once_token_17 != -1)
  {
    +[CN(CNContainerPropertyDescription) containerProviderMetadataDescription];
  }

  v3 = containerProviderMetadataDescription_cn_once_object_17;

  return v3;
}

uint64_t __74__CN_CNContainerPropertyDescription__containerProviderMetadataDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContainerProviderMetadataDescription);
  v1 = containerProviderMetadataDescription_cn_once_object_17;
  containerProviderMetadataDescription_cn_once_object_17 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)allContainerProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CN_CNContainerPropertyDescription__allContainerProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allContainerProperties_cn_once_token_18 != -1)
  {
    dispatch_once(&allContainerProperties_cn_once_token_18, block);
  }

  v2 = allContainerProperties_cn_once_object_18;

  return v2;
}

void __60__CN_CNContainerPropertyDescription__allContainerProperties__block_invoke(uint64_t a1)
{
  v23[18] = *MEMORY[0x1E69E9840];
  v22 = [*(a1 + 32) containerIdentifierDescription];
  v23[0] = v22;
  v21 = [*(a1 + 32) containerNameDescription];
  v23[1] = v21;
  v20 = [*(a1 + 32) containerTypeDescription];
  v23[2] = v20;
  v19 = [*(a1 + 32) containeriOSLegacyIdentifierDescription];
  v23[3] = v19;
  v18 = [*(a1 + 32) containerAccountIdentifierDescription];
  v23[4] = v18;
  v17 = [*(a1 + 32) containerEnabledDescription];
  v23[5] = v17;
  v16 = [*(a1 + 32) containerExternalIdentifierDescription];
  v23[6] = v16;
  v15 = [*(a1 + 32) containerExternalModificationTagDescription];
  v23[7] = v15;
  v14 = [*(a1 + 32) containerExternalSyncTagDescription];
  v23[8] = v14;
  v2 = [*(a1 + 32) containerExternalSyncDataDescription];
  v23[9] = v2;
  v3 = [*(a1 + 32) containerConstraintsPathDescription];
  v23[10] = v3;
  v4 = [*(a1 + 32) containerMeIdentifierDescription];
  v23[11] = v4;
  v5 = [*(a1 + 32) containerRestrictionsDescription];
  v23[12] = v5;
  v6 = [*(a1 + 32) containerGuardianRestrictedDescription];
  v23[13] = v6;
  v7 = [*(a1 + 32) containerGuardianStateDirtyDescription];
  v23[14] = v7;
  v8 = [*(a1 + 32) containerLastSyncDateDescription];
  v23[15] = v8;
  v9 = [*(a1 + 32) containerProviderIdentifierDescription];
  v23[16] = v9;
  v10 = [*(a1 + 32) containerProviderMetadataDescription];
  v23[17] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:18];
  v12 = [v11 copy];
  v13 = allContainerProperties_cn_once_object_18;
  allContainerProperties_cn_once_object_18 = v12;
}

+ (id)writableContainerProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CN_CNContainerPropertyDescription__writableContainerProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (writableContainerProperties_cn_once_token_19 != -1)
  {
    dispatch_once(&writableContainerProperties_cn_once_token_19, block);
  }

  v2 = writableContainerProperties_cn_once_object_19;

  return v2;
}

void __65__CN_CNContainerPropertyDescription__writableContainerProperties__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) allContainerProperties];
  v1 = [v4 _cn_filter:&__block_literal_global_155];
  v2 = [v1 copy];
  v3 = writableContainerProperties_cn_once_object_19;
  writableContainerProperties_cn_once_object_19 = v2;
}

+ (id)mutableContactUnifyingContacts:(id)a3 includingMainStoreContacts:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v7 = 0;
  }

  else
  {
    if ([v6 count] == 1)
    {
      objc_opt_class();
      v7 = [v6 firstObject];
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      if (v9)
      {
        v9 = v9;
      }

      else
      {
        v10 = [v6 firstObject];
        v7 = [v10 mutableCopy];
      }
    }

    else
    {
      v9 = objc_alloc_init(CNContactUnificationOptions);
      [(CNContactUnificationOptions *)v9 setShouldIncludeMainStoreContacts:v4];
      v7 = [a1 _unifyContacts:v6 options:v9];
      [v7 setFrozenSelfAsSnapshot];
    }
  }

  return v7;
}

+ (id)contactUnifyingContacts:(id)a3 includingMainStoreContacts:(BOOL)a4 allowMutableContactFreeze:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = objc_alloc_init(CNContactUnificationOptions);
  [(CNContactUnificationOptions *)v9 setShouldIncludeMainStoreContacts:v6];
  [(CNContactUnificationOptions *)v9 setShouldFreezeMutableContacts:v5];
  v10 = [a1 contactUnifyingContacts:v8 options:v9];

  return v10;
}

+ (id)contactUnifyingContacts:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v8 = 0;
  }

  else if ([v6 count] == 1)
  {
    objc_opt_class();
    v9 = [v6 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      if ([v7 shouldFreezeMutableContacts])
      {
        v12 = [v11 freezeWithSelfAsSnapshot];
      }

      else
      {
        v12 = [v11 copy];
      }
    }

    else
    {
      v12 = [v6 firstObject];
    }

    v8 = v12;
  }

  else
  {
    v8 = [a1 _unifyContacts:v6 options:v7];
    v13 = [v8 freezeWithSelfAsSnapshot];
  }

  return v8;
}

+ (id)_unifyContacts:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 _cn_arrayByRotatingRange:0 by:{objc_msgSend(a1, "indexOfPreferredContactsForUnifying:includingMainStoreContacts:", v7, objc_msgSend(v6, "shouldIncludeMainStoreContacts")) + 1, 1}];

  v9 = [CNUnifiedContacts _unifyContactsSortedByPreference:v8 options:v6];

  return v9;
}

+ (id)unifyContactMatchInfos:(id)a3 linkedContacts:(id)a4
{
  v5 = a3;
  v6 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__CN_UnifiedContacts__unifyContactMatchInfos_linkedContacts___block_invoke;
  v19[3] = &unk_1E7413300;
  v7 = v5;
  v20 = v7;
  v21 = &v25;
  v22 = v23;
  [v6 enumerateObjectsUsingBlock:v19];
  if ([v7 count] < 2)
  {
    v8 = v26[5];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__9;
    v17 = __Block_byref_object_dispose__9;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__CN_UnifiedContacts__unifyContactMatchInfos_linkedContacts___block_invoke_2;
    v12[3] = &unk_1E7413328;
    v12[4] = &v13;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = [v26[5] copy];
    [v8 setMatchedTerms:v14[5]];
    _Block_object_dispose(&v13, 8);
  }

  v9 = v20;
  v10 = v8;

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v25, 8);

  return v10;
}

void __61__CN_UnifiedContacts__unifyContactMatchInfos_linkedContacts___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = a1[4];
  v10 = v6;
  v8 = [v6 identifier];
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v9);
  }

  if ([v10 isPreferredForName])
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[5] + 8) + 40))
  {
    *a4 = 1;
  }
}

void __61__CN_UnifiedContacts__unifyContactMatchInfos_linkedContacts___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 matchedTerms];
  v5 = [v4 count];

  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = [MEMORY[0x1E695DFA8] set];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    v10 = [v11 matchedTerms];
    [v6 unionSet:v10];
  }
}

+ (id)identifierMapForUnifiedContact:(id)a3 backingContacts:(id)a4
{
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  v7 = CNResultWithAutoreleasePool();

  return v7;
}

+ (id)identifierMapForUnifiedMultiValue:(id)a3 backingMultiValues:(id)a4 forProperty:(id)a5
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  v10 = CNResultWithAutoreleasePool();

  return v10;
}

+ (id)groupIdentifiersByLabeledValue:(id)a3 forProperty:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E6996780] multiDictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v7 allKeys];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __66__CN_UnifiedContacts__groupIdentifiersByLabeledValue_forProperty___block_invoke;
        v19[3] = &unk_1E7413378;
        v19[4] = v12;
        v20 = v6;
        v14 = [v13 _cn_filter:v19];

        if ([v14 count])
        {
          [v14 lastObject];
        }

        else
        {
          [v12 labelValuePair];
        }
        v15 = ;
        v16 = [v12 identifier];
        [v7 addObject:v16 forKey:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  return v7;
}

uint64_t __66__CN_UnifiedContacts__groupIdentifiersByLabeledValue_forProperty___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 labelValuePair];
  v6 = canUnifyLabeledValuePairs(v5, v4, *(a1 + 40));

  return v6;
}

+ (id)sourceContactForValue:(id)a3 labeledValueIdentifier:(id)a4 propertyKey:(id)a5 inUnifiedContact:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v12 isUnified])
  {
    v13 = +[CN contactPropertiesByKey];
    v14 = [v13 objectForKeyedSubscript:v11];

    v15 = [v14 isMultiValue];
    if (v10 && (v15 & 1) != 0 || (v16 = [v14 isMultiValue], v9) && !v16)
    {
      if ([v14 isMultiValue])
      {
        v17 = v10;
        v18 = v14;
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v19 = ___contactTestMatchingLabeledValueID_block_invoke;
      }

      else
      {
        v17 = v9;
        v18 = v14;
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v19 = ___contactTestMatchingValue_block_invoke;
      }

      v28 = v19;
      v29 = &unk_1E74135B0;
      v30 = v18;
      v31 = v17;
      v21 = _Block_copy(&v26);

      v22 = [v12 linkedContacts];
      v23 = [v22 _cn_firstObjectPassingTest:v21];

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v12;
      }

      v20 = v24;
    }

    else
    {
      v20 = v12;
    }
  }

  else
  {
    v20 = v12;
  }

  return v20;
}

+ (id)squashableContactCardPropertyKeys
{
  if (squashableContactCardPropertyKeys_cn_once_token_3 != -1)
  {
    +[CN(PropertyDescription) squashableContactCardPropertyKeys];
  }

  v3 = squashableContactCardPropertyKeys_cn_once_object_3;

  return v3;
}

void __60__CN_PropertyDescription__squashableContactCardPropertyKeys__block_invoke()
{
  v4 = +[CN squashableContactCardProperties];
  v0 = [v4 _cn_map:&__block_literal_global_149_1];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = squashableContactCardPropertyKeys_cn_once_object_3;
  squashableContactCardPropertyKeys_cn_once_object_3 = v2;
}

+ (id)squashableContactCardProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CN_PropertyDescription__squashableContactCardProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (squashableContactCardProperties_cn_once_token_4 != -1)
  {
    dispatch_once(&squashableContactCardProperties_cn_once_token_4, block);
  }

  v2 = squashableContactCardProperties_cn_once_object_4;

  return v2;
}

void __58__CN_PropertyDescription__squashableContactCardProperties__block_invoke(uint64_t a1)
{
  v31[26] = *MEMORY[0x1E69E9840];
  v30 = [*(a1 + 32) namePrefixDescription];
  v31[0] = v30;
  v29 = [*(a1 + 32) givenNameDescription];
  v31[1] = v29;
  v28 = [*(a1 + 32) middleNameDescription];
  v31[2] = v28;
  v27 = [*(a1 + 32) familyNameDescription];
  v31[3] = v27;
  v26 = [*(a1 + 32) nameSuffixDescription];
  v31[4] = v26;
  v25 = [*(a1 + 32) previousFamilyNameDescription];
  v31[5] = v25;
  v24 = [*(a1 + 32) nicknameDescription];
  v31[6] = v24;
  v23 = [*(a1 + 32) phoneticGivenNameDescription];
  v31[7] = v23;
  v22 = [*(a1 + 32) phoneticMiddleNameDescription];
  v31[8] = v22;
  v21 = [*(a1 + 32) phoneticFamilyNameDescription];
  v31[9] = v21;
  v20 = [*(a1 + 32) phoneticOrganizationNameDescription];
  v31[10] = v20;
  v19 = [*(a1 + 32) addressingGrammarsDescription];
  v31[11] = v19;
  v18 = [*(a1 + 32) addressingGrammarsEncryptedDescription];
  v31[12] = v18;
  v17 = [*(a1 + 32) organizationNameDescription];
  v31[13] = v17;
  v16 = [*(a1 + 32) departmentDescription];
  v31[14] = v16;
  v15 = [*(a1 + 32) jobTitleDescription];
  v31[15] = v15;
  v14 = [*(a1 + 32) birthdayDescription];
  v31[16] = v14;
  v2 = [*(a1 + 32) nonGregorianBirthdayDescription];
  v31[17] = v2;
  v3 = [*(a1 + 32) phoneNumbersDescription];
  v31[18] = v3;
  v4 = [*(a1 + 32) emailAddressesDescription];
  v31[19] = v4;
  v5 = [*(a1 + 32) urlAddressesDescription];
  v31[20] = v5;
  v6 = [*(a1 + 32) datesDescription];
  v31[21] = v6;
  v7 = [*(a1 + 32) instantMessagAddressesDescription];
  v31[22] = v7;
  v8 = [*(a1 + 32) contactRelationsDescription];
  v31[23] = v8;
  v9 = [*(a1 + 32) socialProfilesDescription];
  v31[24] = v9;
  v10 = [*(a1 + 32) postalAddressesDescription];
  v31[25] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:26];
  v12 = [v11 copy];
  v13 = squashableContactCardProperties_cn_once_object_4;
  squashableContactCardProperties_cn_once_object_4 = v12;
}

+ (id)allContactPropertyKeys
{
  if (allContactPropertyKeys_cn_once_token_5 != -1)
  {
    +[CN(PropertyDescription) allContactPropertyKeys];
  }

  v3 = allContactPropertyKeys_cn_once_object_5;

  return v3;
}

void __49__CN_PropertyDescription__allContactPropertyKeys__block_invoke()
{
  v4 = +[CN allContactProperties];
  v0 = [v4 _cn_map:&__block_literal_global_153_0];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = allContactPropertyKeys_cn_once_object_5;
  allContactPropertyKeys_cn_once_object_5 = v2;
}

+ (id)writableAlwaysFetchedProperties
{
  if (writableAlwaysFetchedProperties_cn_once_token_7 != -1)
  {
    +[CN(PropertyDescription) writableAlwaysFetchedProperties];
  }

  v3 = writableAlwaysFetchedProperties_cn_once_object_7;

  return v3;
}

void __58__CN_PropertyDescription__writableAlwaysFetchedProperties__block_invoke()
{
  v3 = +[CN alwaysFetchedProperties];
  v0 = [v3 _cn_filter:&__block_literal_global_158];
  v1 = [v0 copy];
  v2 = writableAlwaysFetchedProperties_cn_once_object_7;
  writableAlwaysFetchedProperties_cn_once_object_7 = v1;
}

+ (id)singleValueContactProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CN_PropertyDescription__singleValueContactProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (singleValueContactProperties_cn_once_token_14 != -1)
  {
    dispatch_once(&singleValueContactProperties_cn_once_token_14, block);
  }

  v2 = singleValueContactProperties_cn_once_object_14;

  return v2;
}

void __55__CN_PropertyDescription__singleValueContactProperties__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) allContactProperties];
  v1 = [v4 _cn_filter:&__block_literal_global_169];
  v2 = [v1 copy];
  v3 = singleValueContactProperties_cn_once_object_14;
  singleValueContactProperties_cn_once_object_14 = v2;
}

uint64_t __50__CN_PropertyDescription__contactFlagsDescription__block_invoke()
{
  v0 = objc_alloc_init(CNContactFlagsDescription);
  v1 = contactFlagsDescription_cn_once_object_20;
  contactFlagsDescription_cn_once_object_20 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)resetRestrictedPropertiesOnMutableContact:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 restrictedProperties];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [v4 isKeyAvailable:v11];

        if (v12)
        {
          [v10 resetGuardianManagedValueOnContact:v4];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

+ (NSArray)restrictedProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CN_PropertyDescription__restrictedProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (restrictedProperties_cn_once_token_21 != -1)
  {
    dispatch_once(&restrictedProperties_cn_once_token_21, block);
  }

  v2 = restrictedProperties_cn_once_object_21;

  return v2;
}

void __47__CN_PropertyDescription__restrictedProperties__block_invoke(uint64_t a1)
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) downtimeWhitelistDescription];
  v13[0] = v2;
  v3 = [*(a1 + 32) externalIdentifierDescription];
  v13[1] = v3;
  v4 = [*(a1 + 32) externalModificationTagDescription];
  v13[2] = v4;
  v5 = [*(a1 + 32) externalRepresentationDescription];
  v13[3] = v5;
  v6 = [*(a1 + 32) externalUUIDDescription];
  v13[4] = v6;
  v7 = [*(a1 + 32) iOSLegacyIdentifierDescription];
  v13[5] = v7;
  v8 = [*(a1 + 32) preferredChannelDescription];
  v13[6] = v8;
  v9 = [*(a1 + 32) externalImageURIDescription];
  v13[7] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:8];
  v11 = [v10 copy];
  v12 = restrictedProperties_cn_once_object_21;
  restrictedProperties_cn_once_object_21 = v11;
}

+ (id)contactCardIgnorableContactChangeProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CN_PropertyDescription__contactCardIgnorableContactChangeProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (contactCardIgnorableContactChangeProperties_cn_once_token_22 != -1)
  {
    dispatch_once(&contactCardIgnorableContactChangeProperties_cn_once_token_22, block);
  }

  v2 = contactCardIgnorableContactChangeProperties_cn_once_object_22;

  return v2;
}

void __70__CN_PropertyDescription__contactCardIgnorableContactChangeProperties__block_invoke(uint64_t a1)
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [*(a1 + 32) identifierDescription];
  v16[0] = v15;
  v14 = [*(a1 + 32) externalIdentifierDescription];
  v16[1] = v14;
  v2 = [*(a1 + 32) externalModificationTagDescription];
  v16[2] = v2;
  v3 = [*(a1 + 32) externalRepresentationDescription];
  v16[3] = v3;
  v4 = [*(a1 + 32) externalUUIDDescription];
  v16[4] = v4;
  v5 = [*(a1 + 32) externalImageURIDescription];
  v16[5] = v5;
  v6 = [*(a1 + 32) syncImageDataDescription];
  v16[6] = v6;
  v7 = [*(a1 + 32) addressingGrammarsDescription];
  v16[7] = v7;
  v8 = [*(a1 + 32) addressingGrammarsEncryptedDescription];
  v16[8] = v8;
  v9 = [*(a1 + 32) imageBackgroundColorsDataDescription];
  v16[9] = v9;
  v10 = [*(a1 + 32) imageHash];
  v16[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];
  v12 = [v11 copy];
  v13 = contactCardIgnorableContactChangeProperties_cn_once_object_22;
  contactCardIgnorableContactChangeProperties_cn_once_object_22 = v12;
}

+ (BOOL)areValidKeyPaths:(id)a3 forObject:(id)a4 expectedClasses:(id)a5 allowNil:(id)a6 error:(id *)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v32 = [MEMORY[0x1E695DF70] array];
  v15 = [v11 count];
  if (v15 != [v13 count])
  {
    +[CN(CNObjectValidation) areValidKeyPaths:forObject:expectedClasses:allowNil:error:];
  }

  v16 = [v11 count];
  if (v16 != [v14 count])
  {
    +[CN(CNObjectValidation) areValidKeyPaths:forObject:expectedClasses:allowNil:error:];
  }

  v31 = a7;
  if ([v11 count])
  {
    v17 = 0;
    do
    {
      v18 = [v11 objectAtIndexedSubscript:v17];
      v19 = [v13 objectAtIndexedSubscript:v17];
      v20 = [v14 objectAtIndexedSubscript:v17];
      v21 = [v20 BOOLValue];

      v22 = [v19 isSubclassOfClass:objc_opt_class()];
      v23 = [v12 valueForKey:v18];
      v24 = v23;
      v25 = v22 ^ 1;
      if (!v23)
      {
        v25 = v21;
      }

      if (v25 != 1 || !((v23 == 0) | v22 & 1) && (objc_opt_isKindOfClass() & 1) == 0)
      {
        [v32 addObject:v18];
      }

      ++v17;
    }

    while (v17 < [v11 count]);
  }

  v26 = [v32 count];
  v27 = v26;
  if (v31 && v26)
  {
    v33 = @"CNKeyPaths";
    v28 = [v32 copy];
    v34[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];

    *v31 = [CNErrorFactory errorWithCode:301 userInfo:v29];
  }

  return v27 == 0;
}

+ (BOOL)areValidDayComponents:(id)a3 error:(id *)a4
{
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke;
  aBlock[3] = &unk_1E7417838;
  v6 = v5;
  v59 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [v4 timeZone];

  if (v8)
  {
    [v6 addObject:@"timeZone"];
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_2;
  v56[3] = &unk_1E7413930;
  v9 = v4;
  v57 = v9;
  v32 = (v8 == 0) & v7[2](v7, v56, @"month", 1);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_3;
  v54[3] = &unk_1E7413930;
  v10 = v9;
  v55 = v10;
  v31 = v7[2](v7, v54, @"day", 1);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_4;
  v52[3] = &unk_1E7413930;
  v11 = v10;
  v53 = v11;
  v30 = v7[2](v7, v52, @"hour", 0);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_5;
  v50[3] = &unk_1E7413930;
  v12 = v11;
  v51 = v12;
  v29 = v7[2](v7, v50, @"minute", 0);
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_6;
  v48[3] = &unk_1E7413930;
  v13 = v12;
  v49 = v13;
  v28 = v7[2](v7, v48, @"second", 0);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_7;
  v46[3] = &unk_1E7413930;
  v14 = v13;
  v47 = v14;
  v15 = v7[2](v7, v46, @"nanosecond", 0);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_8;
  v44[3] = &unk_1E7413930;
  v16 = v14;
  v45 = v16;
  v17 = v7[2](v7, v44, @"weekday", 0);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_9;
  v42[3] = &unk_1E7413930;
  v18 = v16;
  v43 = v18;
  LODWORD(v16) = v7[2](v7, v42, @"weekdayOrdinal", 0);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_10;
  v40[3] = &unk_1E7413930;
  v19 = v18;
  v41 = v19;
  LODWORD(v18) = v7[2](v7, v40, @"quarter", 0);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_11;
  v38[3] = &unk_1E7413930;
  v20 = v19;
  v39 = v20;
  LODWORD(v19) = v7[2](v7, v38, @"weekOfMonth", 0);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_12;
  v36[3] = &unk_1E7413930;
  v21 = v20;
  v37 = v21;
  v22 = v7[2](v7, v36, @"weekOfYear", 0);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke_13;
  v34[3] = &unk_1E7413930;
  v23 = v21;
  v35 = v23;
  v24 = (v7[2])(v7, v34, @"yearForWeekOfYear", 0) & v22 & v19 & v18 & v16 & v17 & v15 & v28 & v29 & v30 & v31 & v32;
  if (a4 && (v24 & 1) == 0)
  {
    v60 = @"CNKeyPaths";
    v25 = [v6 copy];
    v61[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];

    *a4 = [CNErrorFactory errorWithCode:302 userInfo:v26];
  }

  return v24;
}

uint64_t __54__CN_CNObjectValidation__areValidDayComponents_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v7 = a3;
  v8 = ((*(a2 + 16))(a2) == 0x7FFFFFFFFFFFFFFFLL) ^ a4;
  if ((v8 & 1) == 0)
  {
    [*(a1 + 32) addObject:v7];
  }

  return v8;
}

+ (BOOL)areValidGregorianDayComponents:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 calendar];
  if (v7 && (v8 = v7, [v6 calendar], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "calendarIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E695D850]), v10, v9, v8, (v11 & 1) == 0))
  {
    if (a4)
    {
      v14 = @"CNKeyPaths";
      v15[0] = &unk_1F0987648;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *a4 = [CNErrorFactory errorWithCode:302 userInfo:v12];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    LOBYTE(a4) = [a1 areValidDayComponents:v6 error:a4];
  }

  return a4;
}

+ (BOOL)areValidNonGregorianDayComponents:(id)a3 error:(id *)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 calendar];
  if (v7 && (v8 = v7, [v6 calendar], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "calendarIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E695D850]), v10, v9, v8, !v11))
  {
    LOBYTE(a4) = [a1 areValidDayComponents:v6 error:a4];
  }

  else if (a4)
  {
    v14 = @"CNKeyPaths";
    v15[0] = &unk_1F0987660;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [CNErrorFactory errorWithCode:302 userInfo:v12];

    LOBYTE(a4) = 0;
  }

  return a4;
}

+ (BOOL)hasContactChineseJapaneseKoreanName:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (([a1 isEmptyNameContact:v4 phonetic:0 includingPrefixAndSuffix:0] & 1) == 0)
  {
    v6 = [a1 requiredPropertiesForNameScriptDetection];
    v7 = [CN joinNonEmptyContactProperties:v6 onContact:v4 withDelimiter:&stru_1F094DAB0];

    v5 = CNIsChineseJapaneseKoreanString();
  }

  return v5;
}

+ (BOOL)shouldContactUseFamilyGivenNameOrder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E696ADF0] componentsForContact:v3];

  LOBYTE(v3) = [v4 _nameOrderWithOverridesForComponents:v5] == 2;
  return v3;
}

+ (BOOL)hasContactChineseJapaneseKoreanPhoneticName:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (([a1 isEmptyNameContact:v4 phonetic:1 includingPrefixAndSuffix:0] & 1) == 0)
  {
    v6 = [a1 requiredPropertiesForPhoneticNameScriptDetection];
    v7 = [CN joinNonEmptyContactProperties:v6 onContact:v4 withDelimiter:&stru_1F094DAB0];

    v5 = CNIsChineseJapaneseKoreanString();
  }

  return v5;
}

+ (id)localizedNameDelimiterForContact:(id)a3
{
  v4 = a3;
  v5 = [a1 requiredPropertiesForNameScriptDetection];
  v6 = [CN joinNonEmptyContactProperties:v5 onContact:v4 withDelimiter:&stru_1F094DAB0];

  v7 = CNNameDelimiterForString();

  return v7;
}

+ (id)orderForContactName:(id)a3 phonetic:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && [a1 isEmptyNameContact:v6 phonetic:0 includingPrefixAndSuffix:0] && +[CN hasContactChineseJapaneseKoreanPhoneticName:](CN, "hasContactChineseJapaneseKoreanPhoneticName:", v6) || +[CN shouldContactUseFamilyGivenNameOrder:](CN, "shouldContactUseFamilyGivenNameOrder:", v6))
  {
    v7 = +[CNContactNameOrderImpl familyNameFirstOrder];
  }

  else
  {
    if ([a1 isEmptyNameContact:v6 phonetic:v4 includingPrefixAndSuffix:1])
    {
      +[CNContactNameOrderImpl defaultNewContactOrder];
    }

    else
    {
      +[CNContactNameOrderImpl defaultOrder];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

+ (BOOL)isEmptyNameContact:(id)a3 phonetic:(BOOL)a4 includingPrefixAndSuffix:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = v7;
  v9 = *MEMORY[0x1E6996568];
  if (v6)
  {
    v10 = [v7 phoneticFamilyName];
    if ((*(v9 + 16))(v9, v10))
    {
      v11 = [v8 phoneticGivenName];
      if ((*(v9 + 16))(v9, v11))
      {
        v12 = [v8 phoneticMiddleName];
        LOBYTE(v13) = (*(v9 + 16))(v9, v12);

LABEL_15:
        goto LABEL_16;
      }

LABEL_14:
      LOBYTE(v13) = 0;
      goto LABEL_15;
    }

LABEL_13:
    LOBYTE(v13) = 0;
LABEL_16:

    goto LABEL_17;
  }

  v10 = [v7 givenName];
  if (!(*(v9 + 16))(v9, v10))
  {
    goto LABEL_13;
  }

  v11 = [v8 middleName];
  if (!(*(v9 + 16))(v9, v11))
  {
    goto LABEL_14;
  }

  v14 = [v8 familyName];
  v13 = (*(v9 + 16))(v9, v14);

  if (v13)
  {
    v15 = !v5;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v10 = [v8 namePrefix];
    if ((*(v9 + 16))(v9, v10))
    {
      v11 = [v8 nameSuffix];
      LOBYTE(v13) = (*(v9 + 16))(v9, v11);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_17:

  return v13;
}

+ (id)requiredPropertiesForPhoneticNameScriptDetection
{
  if (requiredPropertiesForPhoneticNameScriptDetection_cn_once_token_1 != -1)
  {
    +[CN(CNInternationalSupport) requiredPropertiesForPhoneticNameScriptDetection];
  }

  v3 = requiredPropertiesForPhoneticNameScriptDetection_cn_once_object_1;

  return v3;
}

void __78__CN_CNInternationalSupport__requiredPropertiesForPhoneticNameScriptDetection__block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = +[CN phoneticGivenNameDescription];
  v1 = +[CN phoneticMiddleNameDescription];
  v6[1] = v1;
  v2 = +[CN phoneticFamilyNameDescription];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = [v3 copy];
  v5 = requiredPropertiesForPhoneticNameScriptDetection_cn_once_object_1;
  requiredPropertiesForPhoneticNameScriptDetection_cn_once_object_1 = v4;
}

+ (id)keyVectorForAllUsedKeysForInternationalSupport
{
  if (keyVectorForAllUsedKeysForInternationalSupport_cn_once_token_2 != -1)
  {
    +[CN(CNInternationalSupport) keyVectorForAllUsedKeysForInternationalSupport];
  }

  v3 = keyVectorForAllUsedKeysForInternationalSupport_cn_once_object_2;

  return v3;
}

void __76__CN_CNInternationalSupport__keyVectorForAllUsedKeysForInternationalSupport__block_invoke()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v4[0] = @"namePrefix";
  v4[1] = @"givenName";
  v4[2] = @"middleName";
  v4[3] = @"familyName";
  v4[4] = @"nameSuffix";
  v4[5] = @"phoneticGivenName";
  v4[6] = @"phoneticMiddleName";
  v4[7] = @"phoneticFamilyName";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = keyVectorForAllUsedKeysForInternationalSupport_cn_once_object_2;
  keyVectorForAllUsedKeysForInternationalSupport_cn_once_object_2 = v2;
}

+ (id)joinNonEmptyContactProperties:(id)a3 onContact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CN joinNonEmptyContactProperties:v6 onContact:v5 withDelimiter:&stru_1F094DAB0];
  v8 = CNNameDelimiterForString();

  v9 = [CN joinNonEmptyContactProperties:v6 onContact:v5 withDelimiter:v8];

  return v9;
}

+ (id)joinNonEmptyContactProperties:(id)a3 onContact:(id)a4 withDelimiter:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    v15 = *MEMORY[0x1E6996568];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) CNValueForContact:{v8, v19}];
        if (((*(v15 + 16))(v15, v17) & 1) == 0)
        {
          if ([v10 length])
          {
            [v10 appendString:v9];
          }

          [v10 appendString:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v10;
}

@end