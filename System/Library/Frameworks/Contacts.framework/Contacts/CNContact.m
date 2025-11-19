@interface CNContact
+ (BOOL)_shouldRedactDescription;
+ (BOOL)isContactUTIType:(id)a3;
+ (BOOL)isCoreRecentsAcceptedIdentifier:(id)a3;
+ (CNContact)contactWithArchivedData:(id)a3 error:(id *)a4;
+ (CNContact)contactWithContact:(id)a3;
+ (CNContact)contactWithDisplayName:(id)a3 emailOrPhoneNumber:(id)a4;
+ (CNContact)contactWithDisplayName:(id)a3 handleStrings:(id)a4;
+ (CNContact)contactWithIdentifier:(id)a3;
+ (CNContact)contactWithIdentifierOnly:(id)a3;
+ (CNContact)contactWithVCardData:(id)a3 error:(id *)a4;
+ (CNKeyDescriptor)descriptorForAllImageDataKeys;
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (NSComparator)comparatorForNameSortOrder:(CNContactSortOrder)sortOrder;
+ (NSPredicate)predicateForContactsInContainerWithIdentifier:(NSString *)containerIdentifier;
+ (NSPredicate)predicateForContactsInGroupWithIdentifier:(NSString *)groupIdentifier;
+ (NSPredicate)predicateForContactsMatchingEmailAddress:(NSString *)emailAddress;
+ (NSPredicate)predicateForContactsMatchingName:(NSString *)name;
+ (NSPredicate)predicateForContactsMatchingPhoneNumber:(CNPhoneNumber *)phoneNumber;
+ (NSPredicate)predicateForContactsWithIdentifiers:(NSArray *)identifiers;
+ (OS_os_log)os_log;
+ (id)_contactWithContact:(id)a3 createNewInstance:(BOOL)a4 propertyDescriptions:(id)a5;
+ (id)_shortHashForName:(id)a3;
+ (id)alwaysFetchedKeys;
+ (id)contact;
+ (id)contactFromPerson:(void *)a3 keysToFetch:(id)a4 mutable:(BOOL)a5;
+ (id)contactFromPublicABPerson:(void *)a3 keysToFetch:(id)a4 mutable:(BOOL)a5;
+ (id)contactIdentifierFromSuggestionID:(id)a3;
+ (id)contactPropertyKeyFromABPropertyID:(int)a3;
+ (id)contactPropertyKeyFromPublicABPropertyID:(int)a3;
+ (id)debugDescriptionForName:(id)a3;
+ (id)descriptorForRequiredKeysForSearchableItem;
+ (id)emptyContact;
+ (id)identifierProvider;
+ (id)makeContactAndMergeValuesFromAvailableKeysInContact:(id)a3;
+ (id)makeIdentifierString;
+ (id)newContactWithPropertyKeys:(id)a3 withValuesFromContact:(id)a4;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)persistedContactWithIdentifierOnly:(id)a3;
+ (id)predicateForAllContacts;
+ (id)predicateForContactMatchingEKParticipantWithName:(id)a3 emailAddress:(id)a4 URL:(id)a5 predicateDescription:(id)a6;
+ (id)predicateForContactMatchingEmailAddress:(id)a3;
+ (id)predicateForContactMatchingLabeledValueIdentifier:(id)a3;
+ (id)predicateForContactMatchingMapString:(id)a3;
+ (id)predicateForContactMatchingPhoneNumber:(id)a3;
+ (id)predicateForContactMatchingPhoneNumberWithDigits:(id)a3 countryCode:(id)a4;
+ (id)predicateForContactMatchingURLString:(id)a3;
+ (id)predicateForContactsLinkedToContact:(id)a3;
+ (id)predicateForContactsLinkedToContactWithIdentifier:(id)a3;
+ (id)predicateForContactsMatchingEmailAddress:(id)a3 groupIdentifiers:(id)a4 limitToOneResult:(BOOL)a5;
+ (id)predicateForContactsMatchingExternalUUIDs:(id)a3;
+ (id)predicateForContactsMatchingFullTextSearch:(id)a3 containerIdentifiers:(id)a4 groupIdentifiers:(id)a5;
+ (id)predicateForContactsMatchingHandleStrings:(id)a3;
+ (id)predicateForContactsMatchingHandleStrings:(id)a3 inContainersWithIdentifiers:(id)a4;
+ (id)predicateForContactsMatchingInstantMessageAddress:(id)a3;
+ (id)predicateForContactsMatchingName:(id)a3 options:(unint64_t)a4;
+ (id)predicateForContactsMatchingPhoneNumber:(id)a3 prefixHint:(id)a4;
+ (id)predicateForContactsMatchingPhoneNumber:(id)a3 prefixHint:(id)a4 groupIdentifiers:(id)a5 limitToOneResult:(BOOL)a6;
+ (id)predicateForContactsMatchingPostalAddress:(id)a3;
+ (id)predicateForContactsMatchingPreferredChannel:(id)a3 limitOne:(BOOL)a4;
+ (id)predicateForContactsMatchingSmartDialerString:(id)a3;
+ (id)predicateForContactsMatchingSocialProfile:(id)a3;
+ (id)predicateForContactsMatchingString:(id)a3 accountIdentifier:(id)a4 containerIdentifier:(id)a5 groupIdentifier:(id)a6;
+ (id)predicateForContactsMissingBackgroundColors;
+ (id)predicateForContactsWithExternalIdentifiers:(id)a3;
+ (id)predicateForContactsWithNonUnifiedIdentifiers:(id)a3;
+ (id)predicateForContactsWithOrganizationName:(id)a3;
+ (id)predicateForContactsWithWallpaperMetadata;
+ (id)predicateForFaultFulfillmentForLegacyIdentifier:(unsigned int)a3 identifier:(id)a4;
+ (id)predicateForLegacyIdentifier:(unsigned int)a3;
+ (id)predicateForMeContact;
+ (id)predicateForPreferredNameInContainersWithIdentifiers:(id)a3 groupsWithIdentifiers:(id)a4;
+ (id)predicateForPreferredNameInRange:(_NSRange)a3;
+ (id)predicateForSuggestionIdentifier:(unint64_t)a3;
+ (id)preferredImageComparator;
+ (id)previewURLForContact:(id)a3;
+ (id)storeInfoFromCoder:(id)a3 storeIdentifier:(id)a4 key:(id)a5;
+ (id)suggestionIDFromContactIdentifier:(id)a3;
+ (int)abPropertyIDfromContactPropertyKey:(id)a3;
+ (int)publicABPropertyIDFromContactPropertyKey:(id)a3;
- (BOOL)areAllAvailableKeysEqualToContact:(id)a3 ignoringIdentifiers:(BOOL)a4;
- (BOOL)areAllPropertiesEqualToContactIgnoringIdentifiers:(id)a3;
- (BOOL)areKeysAvailable:(NSArray *)keyDescriptors;
- (BOOL)arePropertiesEqualToContact:(id)a3 ignoredProperties:(id)a4;
- (BOOL)hasChanges;
- (BOOL)hasSuggestedProperties;
- (BOOL)isCoreRecentsAccepted;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringIdentifiers:(id)a3;
- (BOOL)isEquivalent:(id)a3 ignoringProperties:(id)a4;
- (BOOL)isSuggested;
- (BOOL)isSuggestedMe;
- (BOOL)isUnified;
- (BOOL)isUnifiedWithContactWithIdentifier:(NSString *)contactIdentifier;
- (BOOL)isUnifiedWithContactsWithIdentifiers:(id)a3;
- (BOOL)isUsingSharedPhoto;
- (BOOL)overwritePerson:(void *)a3 error:(id *)a4;
- (BOOL)overwritePublicABPerson:(void *)a3;
- (BOOL)preferredForImage;
- (BOOL)preferredForName;
- (BOOL)updateNewPublicABPerson:(void *)a3 inAddressBook:(void *)a4;
- (CGRect)cropRect;
- (CNActivityAlert)callAlert;
- (CNActivityAlert)textAlert;
- (CNContact)init;
- (CNContact)initWithCoder:(id)a3;
- (CNContact)initWithIdentifier:(id)a3;
- (CNContact)initWithIdentifier:(id)a3 availableKeyDescriptor:(id)a4;
- (CNContact)initWithIdentifier:(id)a3 persisted:(BOOL)a4;
- (CNContactType)contactType;
- (CNSensitiveContentConfiguration)sensitiveContentConfiguration;
- (CNWallpaper)wallpaper;
- (NSArray)addressingGrammars;
- (NSArray)addressingGrammarsEncrypted;
- (NSArray)calendarURIs;
- (NSArray)contactRelations;
- (NSArray)dates;
- (NSArray)emailAddresses;
- (NSArray)instantMessageAddresses;
- (NSArray)phoneNumbers;
- (NSArray)postalAddresses;
- (NSArray)relatedNames;
- (NSArray)socialProfiles;
- (NSArray)termsOfAddress;
- (NSArray)urlAddresses;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (NSData)avatarRecipeData;
- (NSData)externalRepresentation;
- (NSData)fullscreenImageData;
- (NSData)imageBackgroundColorsData;
- (NSData)imageData;
- (NSData)imageHash;
- (NSData)memojiMetadata;
- (NSData)syncImageData;
- (NSData)thumbnailImageData;
- (NSData)watchWallpaperImageData;
- (NSDate)creationDate;
- (NSDate)imageSyncFailedTime;
- (NSDate)modificationDate;
- (NSDate)wallpaperSyncFailedTime;
- (NSDateComponents)birthday;
- (NSDateComponents)nonGregorianBirthday;
- (NSDictionary)activityAlerts;
- (NSNumber)coreRecentsIdentifier;
- (NSSet)availableKeys;
- (NSString)cardDAVUID;
- (NSString)coreRecentsDomain;
- (NSString)departmentName;
- (NSString)description;
- (NSString)downtimeWhitelist;
- (NSString)externalIdentifier;
- (NSString)externalImageURI;
- (NSString)externalModificationTag;
- (NSString)externalUUID;
- (NSString)familyName;
- (NSString)givenName;
- (NSString)identifier;
- (NSString)imageType;
- (NSString)jobTitle;
- (NSString)linkIdentifier;
- (NSString)mapsData;
- (NSString)middleName;
- (NSString)namePrefix;
- (NSString)nameSuffix;
- (NSString)nickname;
- (NSString)note;
- (NSString)organizationName;
- (NSString)phonemeData;
- (NSString)phoneticFamilyName;
- (NSString)phoneticGivenName;
- (NSString)phoneticMiddleName;
- (NSString)phoneticOrganizationName;
- (NSString)preferredApplePersonaIdentifier;
- (NSString)preferredLikenessSource;
- (NSString)previousFamilyName;
- (NSString)pronunciationFamilyName;
- (NSString)pronunciationGivenName;
- (NSString)searchIndex;
- (NSString)sectionForSortingByFamilyName;
- (NSString)sectionForSortingByGivenName;
- (NSString)stringForIndexing;
- (NSString)suggestionFoundInBundleId;
- (NSString)wallpaperURI;
- (NSUUID)id;
- (SGRecordId)suggestionRecordId;
- (id)_filteredArrayForValidValues:(id)a3;
- (id)_searchableItemIncludingInternalAttributes:(BOOL)a3;
- (id)allLinkedIdentifiers;
- (id)areKeysAvailable:(id)a3 useIgnorableKeys:(BOOL)a4 findMissingKeys:(BOOL)a5;
- (id)copyWithDistinctIdentifier;
- (id)copyWithPropertyKeys:(id)a3;
- (id)copyWithSelfAsSnapshot;
- (id)diffToSnapshotAndReturnError:(id *)a3;
- (id)explicitDisplayName;
- (id)linkedContactsFromStoreWithIdentifier:(id)a3;
- (id)linkedIdentifierMap;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)searchableItemAttributeSetForUserActivity;
- (id)selfOrMutableCopy;
- (id)shortDebugDescription;
- (id)snapshot;
- (id)wallpaperMetadata;
- (int64_t)sharedPhotoDisplayPreference;
- (unint64_t)hash;
- (void)_appendNameInBuilder:(id)a3;
- (void)assertKeyIsAvailable:(id)a3;
- (void)assertKeysAreAvailable:(id)a3;
- (void)detachedPersonWithError:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNContact

+ (id)predicateForMeContact
{
  v2 = objc_alloc_init(CNiOSABMeContactsPredicate);

  return v2;
}

+ (id)alwaysFetchedKeys
{
  if (alwaysFetchedKeys_cn_once_token_1 != -1)
  {
    +[CNContact alwaysFetchedKeys];
  }

  v3 = alwaysFetchedKeys_cn_once_object_1;

  return v3;
}

void __30__CNContact_alwaysFetchedKeys__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = +[CN alwaysFetchedProperties];
  v1 = [v4 _cn_map:&__block_literal_global_9_4];
  v2 = [v0 initWithArray:v1];
  v3 = alwaysFetchedKeys_cn_once_object_1;
  alwaysFetchedKeys_cn_once_object_1 = v2;
}

- (NSString)identifier
{
  v3 = [(CNContact *)self internalIdentifier];
  v4 = [(CNContact *)self storeIdentifier];
  if (v4)
  {
    v5 = [CNContactStore storeClassWithIdentifier:v4];
    if (v5)
    {
      v6 = v5;
      if (objc_opt_respondsToSelector())
      {
        v7 = [(objc_class *)v6 contactIdentifierFromInternalIdentifier:v3];

        v3 = v7;
      }
    }
  }

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNContact *)self identifier];
  v5 = [v3 appendName:@"identifier" object:v4];

  [(CNContact *)self _appendNameInBuilder:v3];
  if ([(CNContact *)self isKeyAvailable:@"organizationName"])
  {
    organizationName = self->_organizationName;
  }

  else
  {
    organizationName = @"(not fetched)";
  }

  v7 = [v3 appendName:@"organizationName" object:organizationName];
  if ([(CNContact *)self isKeyAvailable:@"phoneNumbers"])
  {
    phoneNumbers = self->_phoneNumbers;
  }

  else
  {
    phoneNumbers = @"(not fetched)";
  }

  v9 = [v3 appendName:@"phoneNumbers" object:phoneNumbers];
  if ([(CNContact *)self isKeyAvailable:@"emailAddresses"])
  {
    emailAddresses = self->_emailAddresses;
  }

  else
  {
    emailAddresses = @"(not fetched)";
  }

  v11 = [v3 appendName:@"emailAddresses" object:emailAddresses];
  if ([(CNContact *)self isKeyAvailable:@"postalAddresses"])
  {
    postalAddresses = self->_postalAddresses;
  }

  else
  {
    postalAddresses = @"(not fetched)";
  }

  v13 = [v3 appendName:@"postalAddresses" object:postalAddresses];
  v14 = [v3 build];

  return v14;
}

+ (BOOL)_shouldRedactDescription
{
  v2 = [MEMORY[0x1E69966E8] currentEnvironment];
  if ([v2 isInternalBuild])
  {
    v3 = [v2 userDefaults];
    v4 = [v3 BOOLForKey:@"CNDisableContactDescriptionObfuscation"];

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNContact)init
{
  v3 = [objc_opt_class() makeIdentifier];
  v4 = [(CNContact *)self initWithIdentifier:v3];

  return v4;
}

+ (id)makeIdentifierString
{
  v2 = [a1 identifierProvider];
  v3 = [v2 makeIdentifier];

  return v3;
}

+ (id)identifierProvider
{
  if (identifierProvider_cn_once_token_2 != -1)
  {
    +[CNContact identifierProvider];
  }

  v3 = identifierProvider_cn_once_object_2;

  return v3;
}

uint64_t __31__CNContact_identifierProvider__block_invoke()
{
  v0 = [[CNUuidIdentifierProvider alloc] initWithSuffix:@"ABPerson"];
  v1 = identifierProvider_cn_once_object_2;
  identifierProvider_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSArray)emailAddresses
{
  v3 = self->_emailAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"emailAddresses"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"emailAddresses"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (CNContactType)contactType
{
  contactType = self->_contactType;
  availableKeyDescriptor = self->_availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"contactType"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return contactType;
}

uint64_t __17__CNContact_hash__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) storeIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

uint64_t __17__CNContact_hash__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E6996730];
  v2 = [*(a1 + 32) internalIdentifier];
  v3 = [v1 objectHash:v2];

  return v3;
}

- (unint64_t)hash
{
  v2 = MEMORY[0x1E6996730];
  aBlock[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __17__CNContact_hash__block_invoke;
  v7[3] = &unk_1E7412250;
  v7[4] = self;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __17__CNContact_hash__block_invoke_2;
  aBlock[3] = &unk_1E7412250;
  v3 = _Block_copy(aBlock);
  v4 = [v2 hashWithBlocks:{v7, v3, 0}];

  return v4;
}

- (NSData)imageData
{
  v3 = self->_imageData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"imageData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)thumbnailImageData
{
  v3 = self->_thumbnailImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"thumbnailImageData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"thumbnailImageData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)avatarRecipeData
{
  v3 = self->_avatarRecipeData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"avatarRecipeData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"avatarRecipeData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)namePrefix
{
  v3 = self->_namePrefix;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"namePrefix"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"namePrefix"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)middleName
{
  v3 = self->_middleName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"middleName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"middleName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)nameSuffix
{
  v3 = self->_nameSuffix;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"nameSuffix"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"nameSuffix"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)nickname
{
  v3 = self->_nickname;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"nickname"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"nickname"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)phoneticGivenName
{
  v3 = self->_phoneticGivenName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticGivenName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"phoneticGivenName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)phoneticMiddleName
{
  v3 = self->_phoneticMiddleName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticMiddleName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"phoneticMiddleName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)phoneticFamilyName
{
  v3 = self->_phoneticFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticFamilyName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"phoneticFamilyName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)givenName
{
  v3 = self->_givenName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"givenName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"givenName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)familyName
{
  v3 = self->_familyName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"familyName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"familyName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)phoneNumbers
{
  v3 = self->_phoneNumbers;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneNumbers"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"phoneNumbers"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSUUID)id
{
  v3 = sub_19565CFAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  v8 = [(CNContact *)v7 identifier];
  if (!v8)
  {
    sub_19565D28C();
    v8 = sub_19565D27C();
  }

  v9 = [objc_opt_self() uuidFromContactIdentifier_];

  sub_19565CF8C();
  v10 = sub_19565CF7C();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (NSString)linkIdentifier
{
  v3 = self->_linkIdentifier;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"linkIdentifier"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"linkIdentifier"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (BOOL)isUnified
{
  if (![(CNContact *)self isKeyAvailable:@"linkIdentifier"])
  {
    return 0;
  }

  v3 = [(CNContact *)self linkedContacts];
  v4 = [v3 count] > 1;

  return v4;
}

- (NSArray)socialProfiles
{
  v3 = self->_socialProfiles;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"socialProfiles"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"socialProfiles"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)organizationName
{
  v3 = self->_organizationName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"organizationName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"organizationName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)previousFamilyName
{
  v3 = self->_previousFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"previousFamilyName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"previousFamilyName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSDateComponents)birthday
{
  v3 = [(NSDateComponents *)self->_birthday copy];
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"birthday"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"birthday"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSDateComponents)nonGregorianBirthday
{
  v3 = [(NSDateComponents *)self->_nonGregorianBirthday copy];
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"nonGregorianBirthday"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"nonGregorianBirthday"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)postalAddresses
{
  v3 = self->_postalAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"postalAddresses"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"postalAddresses"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)contactRelations
{
  v3 = self->_contactRelations;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"contactRelations"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"contactRelations"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)dates
{
  v3 = self->_dates;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"dates"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"dates"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)pronunciationGivenName
{
  v3 = self->_pronunciationGivenName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"pronunciationGivenName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"pronunciationGivenName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)pronunciationFamilyName
{
  v3 = self->_pronunciationFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"pronunciationFamilyName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"pronunciationFamilyName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)sectionForSortingByFamilyName
{
  v3 = self->_sectionForSortingByFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sectionForSortingByFamilyName"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"sectionForSortingByFamilyName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)sectionForSortingByGivenName
{
  v3 = self->_sectionForSortingByGivenName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sectionForSortingByGivenName"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"sectionForSortingByGivenName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)departmentName
{
  v3 = self->_departmentName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"departmentName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"departmentName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)jobTitle
{
  v3 = self->_jobTitle;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"jobTitle"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"jobTitle"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)note
{
  v3 = self->_note;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"note"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"note"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)fullscreenImageData
{
  v3 = self->_fullscreenImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"fullscreenImageData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"fullscreenImageData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)preferredLikenessSource
{
  v3 = self->_preferredLikenessSource;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredLikenessSource"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"preferredLikenessSource"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)preferredApplePersonaIdentifier
{
  v3 = self->_preferredApplePersonaIdentifier;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredApplePersonaIdentifier"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"preferredApplePersonaIdentifier"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)urlAddresses
{
  v3 = self->_urlAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"urlAddresses"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"urlAddresses"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)instantMessageAddresses
{
  v3 = self->_instantMessageAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"instantMessageAddresses"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"instantMessageAddresses"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)phonemeData
{
  v3 = self->_phonemeData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phonemeData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"phonemeData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)externalIdentifier
{
  v3 = self->_externalIdentifier;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalIdentifier"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"externalIdentifier"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)externalModificationTag
{
  v3 = self->_externalModificationTag;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalModificationTag"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"externalModificationTag"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)externalRepresentation
{
  v3 = self->_externalRepresentation;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalRepresentation"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"externalRepresentation"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)externalUUID
{
  v3 = self->_externalUUID;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalUUID"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"externalUUID"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)imageType
{
  v3 = self->_imageType;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageType"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"imageType"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)memojiMetadata
{
  v3 = self->_memojiMetadata;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"memojiMetadata"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"memojiMetadata"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (CNWallpaper)wallpaper
{
  v3 = self->_wallpaper;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaper"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"wallpaper"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (id)wallpaperMetadata
{
  v3 = self->_wallpaperMetadata;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaperMetadata"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"wallpaperMetadata"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)watchWallpaperImageData
{
  v3 = self->_watchWallpaperImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"watchWallpaperImageData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"watchWallpaperImageData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)phoneticOrganizationName
{
  v3 = self->_phoneticOrganizationName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticOrganizationName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"phoneticOrganizationName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (id)explicitDisplayName
{
  v3 = self->_explicitDisplayName;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"explicitDisplayName"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"explicitDisplayName"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)addressingGrammars
{
  v3 = self->_addressingGrammars;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"addressingGrammars"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"addressingGrammars"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)addressingGrammarsEncrypted
{
  v3 = self->_addressingGrammarsEncrypted;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"addressingGrammarsEncrypted"])
    {
      v3 = MEMORY[0x1E695E0F0];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"addressingGrammarsEncrypted"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = MEMORY[0x1E695E0F0];
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)syncImageData
{
  v3 = self->_syncImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"syncImageData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"syncImageData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (CNActivityAlert)textAlert
{
  v3 = self->_textAlert;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"textAlert"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"textAlert"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (CNActivityAlert)callAlert
{
  v3 = self->_callAlert;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"callAlert"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"callAlert"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)mapsData
{
  v3 = self->_mapsData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"mapsData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"mapsData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSArray)calendarURIs
{
  v3 = self->_calendarURIs;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"calendarURIs"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"calendarURIs"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)externalImageURI
{
  v3 = self->_externalImageURI;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalImageURI"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"externalImageURI"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)imageHash
{
  v3 = self->_imageHash;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageHash"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"imageHash"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)downtimeWhitelist
{
  v3 = self->_downtimeWhitelist;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"downtimeWhitelist"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"downtimeWhitelist"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)wallpaperURI
{
  v3 = self->_wallpaperURI;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaperURI"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"wallpaperURI"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSData)imageBackgroundColorsData
{
  v3 = self->_imageBackgroundColorsData;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageBackgroundColorsData"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"imageBackgroundColorsData"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (CNSensitiveContentConfiguration)sensitiveContentConfiguration
{
  v3 = self->_sensitiveContentConfiguration;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sensitiveContentConfiguration"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"sensitiveContentConfiguration"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (int64_t)sharedPhotoDisplayPreference
{
  sharedPhotoDisplayPreference = self->_sharedPhotoDisplayPreference;
  availableKeyDescriptor = self->_availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sharedPhotoDisplayPreference"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return sharedPhotoDisplayPreference;
}

- (id)shortDebugDescription
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [(CNContact *)self identifier];
  v5 = [v3 appendName:@"identifier" object:v4];

  [(CNContact *)self _appendNameInBuilder:v3];
  v6 = [v3 build];

  return v6;
}

- (BOOL)preferredForName
{
  preferredForName = self->_preferredForName;
  availableKeyDescriptor = self->_availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredForName"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return preferredForName;
}

- (BOOL)preferredForImage
{
  preferredForImage = self->_preferredForImage;
  availableKeyDescriptor = self->_availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredForImage"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return preferredForImage;
}

- (CGRect)cropRect
{
  [(CNContact *)self assertKeyIsAvailable:@"cropRect"];
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isUsingSharedPhoto
{
  isUsingSharedPhoto = self->_isUsingSharedPhoto;
  availableKeyDescriptor = self->_availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"isUsingSharedPhoto"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return isUsingSharedPhoto;
}

- (id)snapshot
{
  v2 = self;
  snapshot = self->_snapshot;
  v4 = [MEMORY[0x1E695DFB0] null];
  if (snapshot != v4)
  {
    v2 = v2->_snapshot;
  }

  v5 = v2;

  return v2;
}

+ (id)predicateForAllContacts
{
  if (predicateForAllContacts_cn_once_token_0 != -1)
  {
    +[CNContact(Predicates_Private) predicateForAllContacts];
  }

  v3 = predicateForAllContacts_cn_once_object_0;

  return v3;
}

- (BOOL)isSuggested
{
  v5 = [(CNContact *)self storeIdentifier];
  if (!v5)
  {
    v2 = +[CNSuggestedContactStore storeIdentifier];
    if (!v2)
    {
      v8 = 1;
      goto LABEL_14;
    }
  }

  v6 = [(CNContact *)self storeIdentifier];
  v7 = +[CNSuggestedContactStore storeIdentifier];
  if (([v6 isEqual:v7] & 1) == 0)
  {
    v9 = [(CNContact *)self storeIdentifier];
    if (v9 || (+[CNDonationMapper mapperIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = [(CNContact *)self storeIdentifier];
      v11 = +[CNDonationMapper mapperIdentifier];
      v8 = [v10 isEqual:v11];

      if (v9)
      {

        goto LABEL_13;
      }
    }

    else
    {
      v8 = 1;
    }

LABEL_13:
    if (v5)
    {
      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 1;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

+ (id)descriptorForRequiredKeysForSearchableItem
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__CNContact_Spotlight__descriptorForRequiredKeysForSearchableItem__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (descriptorForRequiredKeysForSearchableItem_cn_once_token_0 != -1)
  {
    dispatch_once(&descriptorForRequiredKeysForSearchableItem_cn_once_token_0, block);
  }

  v2 = descriptorForRequiredKeysForSearchableItem_cn_once_object_0;

  return v2;
}

void __66__CNContact_Spotlight__descriptorForRequiredKeysForSearchableItem__block_invoke(uint64_t a1)
{
  v9[24] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  [v2 addObject:v3];

  v9[0] = @"namePrefix";
  v9[1] = @"givenName";
  v9[2] = @"middleName";
  v9[3] = @"familyName";
  v9[4] = @"nameSuffix";
  v9[5] = @"nickname";
  v9[6] = @"phoneticFamilyName";
  v9[7] = @"phoneticGivenName";
  v9[8] = @"phoneticMiddleName";
  v9[9] = @"phoneNumbers";
  v9[10] = @"emailAddresses";
  v9[11] = @"instantMessageAddresses";
  v9[12] = @"dates";
  v9[13] = @"postalAddresses";
  v9[14] = @"urlAddresses";
  v9[15] = @"socialProfiles";
  v9[16] = @"note";
  v9[17] = @"organizationName";
  v9[18] = @"contactType";
  v9[19] = @"departmentName";
  v9[20] = @"jobTitle";
  v9[21] = @"birthday";
  v9[22] = @"nonGregorianBirthday";
  v9[23] = @"creationDate";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:24];
  [v2 addObjectsFromArray:v4];

  v5 = NSStringFromSelector(*(a1 + 32));
  v6 = [CNContact descriptorWithKeyDescriptors:v2 description:v5];

  v7 = [v6 copy];
  v8 = descriptorForRequiredKeysForSearchableItem_cn_once_object_0;
  descriptorForRequiredKeysForSearchableItem_cn_once_object_0 = v7;
}

- (id)searchableItemAttributeSetForUserActivity
{
  v3 = [objc_alloc(getCSSearchableItemAttributeSetClass()) initWithItemContentType:@"public.contact"];
  v4 = [(CNContact *)self identifier];
  [v3 setRelatedUniqueIdentifier:v4];

  return v3;
}

- (id)_searchableItemIncludingInternalAttributes:(BOOL)a3
{
  v70 = a3;
  v95[9] = *MEMORY[0x1E69E9840];
  v76 = [objc_alloc(getCSSearchableItemAttributeSetClass()) initWithItemContentType:@"public.contact"];
  context = objc_autoreleasePoolPush();
  v77 = self;
  v4 = [CNContactFormatter stringFromContact:self style:0];
  [v76 setDisplayName:v4];

  v80 = [(CNContact *)v77 namePrefix];
  v95[0] = v80;
  v5 = [(CNContact *)v77 givenName];
  v95[1] = v5;
  v6 = [(CNContact *)v77 middleName];
  v95[2] = v6;
  v7 = [(CNContact *)v77 familyName];
  v95[3] = v7;
  v8 = [(CNContact *)v77 nameSuffix];
  v95[4] = v8;
  v9 = [(CNContact *)v77 nickname];
  v95[5] = v9;
  v10 = [(CNContact *)v77 phoneticFamilyName];
  v95[6] = v10;
  v11 = [(CNContact *)v77 phoneticGivenName];
  v95[7] = v11;
  v12 = [(CNContact *)v77 phoneticMiddleName];
  v95[8] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:9];
  v14 = [(CNContact *)v77 _filteredArrayForValidValues:v13];
  [v76 setAlternateNames:v14];

  v15 = [(CNContact *)v77 phoneNumbers];
  v16 = [v15 valueForKey:@"value"];
  v17 = [v16 valueForKey:@"stringValue"];
  v74 = [(CNContact *)v77 _filteredArrayForValidValues:v17];

  v18 = [(CNContact *)v77 emailAddresses];
  v19 = [v18 valueForKey:@"value"];
  v73 = [(CNContact *)v77 _filteredArrayForValidValues:v19];

  v20 = [(CNContact *)v77 instantMessageAddresses];
  v21 = [v20 valueForKey:@"value"];
  v22 = [v21 valueForKey:@"username"];
  v72 = [(CNContact *)v77 _filteredArrayForValidValues:v22];

  v23 = [(CNContact *)v77 socialProfiles];
  v24 = [v23 valueForKey:@"value"];
  v25 = [v24 valueForKey:@"username"];
  v71 = [(CNContact *)v77 _filteredArrayForValidValues:v25];

  [v76 setPhoneNumbers:v74];
  [v76 setEmailAddresses:v73];
  [v76 setInstantMessageAddresses:v72];
  v94[0] = v74;
  v94[1] = v73;
  v94[2] = v72;
  v94[3] = v71;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:4];
  v27 = [v26 _cn_flatten];
  [v76 setAccountHandles:v27];

  if (![(CNContact *)v77 isUnitTesting])
  {
    v28 = [(CNContact *)v77 note];
    [v76 setTextContent:v28];
  }

  v29 = [(CNContact *)v77 organizationName];
  v93[0] = v29;
  v30 = [(CNContact *)v77 departmentName];
  v93[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v32 = [(CNContact *)v77 _filteredArrayForValidValues:v31];
  [v76 setOrganizations:v32];

  v33 = [(CNContact *)v77 jobTitle];
  [v76 setRole:v33];

  v34 = [(CNContact *)v77 dates];
  v35 = [v34 valueForKey:@"value"];
  v36 = [v35 valueForKey:@"date"];
  v75 = [v36 mutableCopy];

  v37 = [(CNContact *)v77 birthday];
  v38 = [v37 date];
  if (v38)
  {
    [v75 addObject:v38];
  }

  else
  {
    v39 = [MEMORY[0x1E695DFB0] null];
    [v75 addObject:v39];
  }

  v40 = [(CNContact *)v77 nonGregorianBirthday];
  v41 = [v40 date];
  if (v41)
  {
    [v75 addObject:v41];
  }

  else
  {
    v42 = [MEMORY[0x1E695DFB0] null];
    [v75 addObject:v42];
  }

  v43 = [(CNContact *)v77 _filteredArrayForValidValues:v75];
  [v76 setImportantDates:v43];

  v81 = [MEMORY[0x1E695DF70] array];
  v44 = [(CNContact *)v77 postalAddresses];
  v45 = [v44 valueForKey:@"value"];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v45;
  v46 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
  if (v46)
  {
    v79 = *v83;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v83 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(*(&v82 + 1) + 8 * i);
        v49 = [v48 street];
        v91[0] = v49;
        v50 = [v48 subLocality];
        v91[1] = v50;
        v51 = [v48 city];
        v91[2] = v51;
        v52 = [v48 subAdministrativeArea];
        v91[3] = v52;
        v53 = [v48 state];
        v91[4] = v53;
        v54 = [v48 postalCode];
        v91[5] = v54;
        v55 = [v48 country];
        v91[6] = v55;
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:7];
        [v81 addObjectsFromArray:v56];
      }

      v46 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
    }

    while (v46);
  }

  v57 = [(CNContact *)v77 urlAddresses];
  v58 = [v57 valueForKey:@"value"];
  [v81 addObjectsFromArray:v58];

  v59 = [(CNContact *)v77 _filteredArrayForValidValues:v81];
  [v76 setAuthorAddresses:v59];

  v60 = +[CNDraggingContact availableDataRepresentationTypes];
  [v76 setProviderDataTypeIdentifiers:v60];

  if (v70 && ![(CNContact *)v77 isUnitTesting])
  {
    v61 = [(CNContact *)v77 creationDate];
    [v76 setContentCreationDate:v61];
  }

  v62 = [(CNContact *)v77 identifier];
  [CNEntitySpotlightIndexing associateAttributeSet:v76 withContactEntityIdentifiedBy:v62];

  objc_autoreleasePoolPop(context);
  v87 = 0;
  v88 = &v87;
  v89 = 0x2050000000;
  v63 = getCSSearchableItemClass_softClass;
  v90 = getCSSearchableItemClass_softClass;
  if (!getCSSearchableItemClass_softClass)
  {
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __getCSSearchableItemClass_block_invoke;
    v86[3] = &unk_1E7412110;
    v86[4] = &v87;
    __getCSSearchableItemClass_block_invoke(v86);
    v63 = v88[3];
  }

  v64 = v63;
  _Block_object_dispose(&v87, 8);
  v65 = [v63 alloc];
  v66 = [(CNContact *)v77 identifier];
  v67 = [v65 initWithUniqueIdentifier:v66 domainIdentifier:@"contact" attributeSet:v76];

  return v67;
}

- (id)_filteredArrayForValidValues:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (([v10 isEqualToString:&stru_1F094DAB0] & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_14:
              [v4 addObject:v10];
              continue;
            }

            v11 = [(CNContact *)self _filteredArrayForValidValues:v10];
            if (([v11 isEqualToArray:MEMORY[0x1E695E0F0]] & 1) == 0)
            {
              [v4 addObject:v11];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (NSPredicate)predicateForContactsWithIdentifiers:(NSArray *)identifiers
{
  v3 = identifiers;
  v4 = [(CNContactsWithIdentifiersPredicate *)[CNiOSABContactIdentifiersPredicate alloc] initWithIdentifiers:v3];

  return v4;
}

+ (NSPredicate)predicateForContactsInGroupWithIdentifier:(NSString *)groupIdentifier
{
  v3 = groupIdentifier;
  v4 = [[CNiOSABContactsInGroupPredicate alloc] initWithParentGroupIdentifier:v3];

  return v4;
}

+ (NSPredicate)predicateForContactsMatchingName:(NSString *)name
{
  v3 = name;
  v4 = [(CNContactWithNamePredicate *)[CNiOSABContactWithNamePredicate alloc] initWithName:v3];

  return v4;
}

+ (NSPredicate)predicateForContactsInContainerWithIdentifier:(NSString *)containerIdentifier
{
  v3 = containerIdentifier;
  v4 = [[CNiOSABContactsInContainerPredicate alloc] initWithParentContainerIdentifier:v3];

  return v4;
}

+ (NSPredicate)predicateForContactsMatchingEmailAddress:(NSString *)emailAddress
{
  v3 = emailAddress;
  v4 = [(CNEmailAddressContactPredicate *)[CNiOSABEmailAddressContactPredicate alloc] initWithEmailAddress:v3 returnMultipleResults:1];

  return v4;
}

+ (NSPredicate)predicateForContactsMatchingPhoneNumber:(CNPhoneNumber *)phoneNumber
{
  v3 = phoneNumber;
  v4 = [CNiOSABPhoneNumberContactPredicate alloc];
  v6 = [(CNPhoneNumberContactPredicate *)v4 initWithPhoneNumber:v3 returnMultipleResults:1, v5];

  return v6;
}

+ (id)predicateForContactsMatchingName:(id)a3 options:(unint64_t)a4
{
  v5 = a3;
  v6 = [(CNContactWithNamePredicate *)[CNiOSABContactWithNamePredicate alloc] initWithName:v5 options:a4];

  return v6;
}

+ (id)predicateForContactsWithOrganizationName:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABOrganizationNameContactPredicate alloc] initWithOrganizationName:v3];

  return v4;
}

+ (id)predicateForContactMatchingEmailAddress:(id)a3
{
  v3 = a3;
  v4 = [(CNEmailAddressContactPredicate *)[CNiOSABEmailAddressContactPredicate alloc] initWithEmailAddress:v3 returnMultipleResults:0];

  return v4;
}

+ (id)predicateForContactsMatchingEmailAddress:(id)a3 groupIdentifiers:(id)a4 limitToOneResult:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = [(CNEmailAddressContactPredicate *)[CNiOSABEmailAddressContactPredicate alloc] initWithEmailAddress:v8 groupIdentifiers:v7 returnMultipleResults:!v5];

  return v9;
}

+ (id)predicateForContactsMatchingPhoneNumber:(id)a3 prefixHint:(id)a4 groupIdentifiers:(id)a5 limitToOneResult:(BOOL)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(CNPhoneNumberContactPredicate *)[CNiOSABPhoneNumberContactPredicate alloc] initWithPhoneNumber:v11 prefixHint:v10 groupIdentifiers:v9 returnMultipleResults:!a6];

  return v12;
}

+ (id)predicateForContactsMatchingHandleStrings:(id)a3
{
  v3 = a3;
  v4 = [(CNHandleStringsContactPredicate *)[CNiOSABHandleStringsContactPredicate alloc] initWithHandleStrings:v3 containerIdentifiers:0];

  return v4;
}

+ (id)predicateForContactsMatchingHandleStrings:(id)a3 inContainersWithIdentifiers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(CNHandleStringsContactPredicate *)[CNiOSABHandleStringsContactPredicate alloc] initWithHandleStrings:v6 containerIdentifiers:v5];

  return v7;
}

+ (id)predicateForContactsMatchingPostalAddress:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABPostalAddressContactPredicate alloc] initWithPostalAddress:v3];

  return v4;
}

+ (id)predicateForContactsLinkedToContactWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [(CNLinkedContactsPredicate *)[CNiOSABLinkedContactsPredicate alloc] initWithContactIdentifier:v3];

  return v4;
}

+ (id)predicateForContactsLinkedToContact:(id)a3
{
  v3 = a3;
  v4 = [(CNLinkedContactsPredicate *)[CNiOSABLinkedContactsPredicate alloc] initWithContact:v3];

  return v4;
}

+ (id)predicateForContactsMatchingSmartDialerString:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABSmartDialerStringContactPredicate alloc] initWithString:v3];

  return v4;
}

+ (id)predicateForContactsMatchingFullTextSearch:(id)a3 containerIdentifiers:(id)a4 groupIdentifiers:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[CNiOSABFullTextSearchContactPredicate alloc] initWithSearchString:v9 containerIdentifiers:v8 groupIdentifiers:v7];

  return v10;
}

+ (id)predicateForContactMatchingMapString:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABMapDataContactPredicate alloc] initWithString:v3];

  return v4;
}

+ (id)predicateForContactMatchingPhoneNumber:(id)a3
{
  v3 = a3;
  v4 = [CNiOSABPhoneNumberContactPredicate alloc];
  v6 = [(CNPhoneNumberContactPredicate *)v4 initWithPhoneNumber:v3 returnMultipleResults:0, v5];

  return v6;
}

+ (id)predicateForContactsMatchingPhoneNumber:(id)a3 prefixHint:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(CNPhoneNumberContactPredicate *)[CNiOSABPhoneNumberContactPredicate alloc] initWithPhoneNumber:v6 prefixHint:v5 returnMultipleResults:1];

  return v7;
}

+ (id)predicateForContactMatchingPhoneNumberWithDigits:(id)a3 countryCode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(CNPhoneNumberContactPredicate *)[CNiOSABPhoneNumberContactPredicate alloc] initWithDigits:v6 countryCode:v5 returnMultipleResults:0];

  return v7;
}

+ (id)predicateForPreferredNameInRange:(_NSRange)a3
{
  v3 = [[CNiOSABPreferredNameContactsPredicate alloc] initWithRange:a3.location, a3.length];

  return v3;
}

+ (id)predicateForPreferredNameInContainersWithIdentifiers:(id)a3 groupsWithIdentifiers:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNiOSABPreferredNameInContainersAndGroupsPredicate alloc] initWithContainerIdentifiers:v6 groupIdentifiers:v5];

  return v7;
}

+ (id)predicateForContactsMatchingString:(id)a3 accountIdentifier:(id)a4 containerIdentifier:(id)a5 groupIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[CNiOSABStringMatchContactPredicate alloc] initWithSearchString:v12 accountIdentifier:v11 containerIdentifier:v10 groupIdentifier:v9];

  return v13;
}

+ (id)predicateForContactMatchingURLString:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABURLContactPredicate alloc] initWithURLString:v3];

  return v4;
}

+ (id)predicateForContactMatchingLabeledValueIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABLabeledValueContactPredicate alloc] initWithLabeledValueIdentifier:v3];

  return v4;
}

+ (id)predicateForContactMatchingEKParticipantWithName:(id)a3 emailAddress:(id)a4 URL:(id)a5 predicateDescription:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[CNiOSABEKParticipantPredicate alloc] initWithName:v12 URL:v10 emailAddress:v11 customDescription:v9];

  return v13;
}

+ (id)predicateForLegacyIdentifier:(unsigned int)a3
{
  v3 = [[CNiOSABContactLegacyIdentifierPredicate alloc] initWithLegacyIdentifier:*&a3];

  return v3;
}

+ (id)predicateForContactsMatchingSocialProfile:(id)a3
{
  v3 = a3;
  v4 = [(CNSocialProfileContactPredicate *)[CNiOSABSocialProfileContactPredicate alloc] initWithSocialProfile:v3];

  return v4;
}

+ (id)predicateForContactsMatchingInstantMessageAddress:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABInstantMessageAddressContactPredicate alloc] initWithInstantMessageAddress:v3];

  return v4;
}

+ (id)predicateForContactsMatchingPreferredChannel:(id)a3 limitOne:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[CNiOSABPreferredChannelContactPredicate alloc] initWithPreferredChannel:v5 limitOne:v4];

  return v6;
}

+ (id)predicateForContactsMatchingExternalUUIDs:(id)a3
{
  v3 = a3;
  v4 = [(CNExternalUUIDContactPredicate *)[CNiOSABExternalUUIDContactPredicate alloc] initWithExternalUUIDs:v3];

  return v4;
}

+ (id)predicateForContactsWithExternalIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [(CNExternalIdentifierContactPredicate *)[CNiOSABExternalIdentifierContactPredicate alloc] initWithExternalIdentifiers:v3];

  return v4;
}

+ (id)predicateForContactsWithNonUnifiedIdentifiers:(id)a3
{
  v3 = a3;
  v4 = [[CNiOSABContactIdentifiersPredicate alloc] initWithIdentifiers:v3 ignoreUnifiedIdentifiers:1];

  return v4;
}

+ (id)predicateForFaultFulfillmentForLegacyIdentifier:(unsigned int)a3 identifier:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = [[CNiOSABFaultFulfillmentPredicate alloc] initWithLegacyIdentifier:v4 identifier:v5];

  return v6;
}

void __56__CNContact_Predicates_Private__predicateForAllContacts__block_invoke()
{
  v2 = objc_alloc_init(CNiOSABAllContactsPredicate);
  v0 = [(CNiOSABAllContactsPredicate *)v2 copy];
  v1 = predicateForAllContacts_cn_once_object_0;
  predicateForAllContacts_cn_once_object_0 = v0;
}

+ (id)predicateForContactsMissingBackgroundColors
{
  v2 = objc_alloc_init(CNiOSABMissingBackgroundColorsContactPredicate);

  return v2;
}

+ (id)predicateForContactsWithWallpaperMetadata
{
  v2 = objc_alloc_init(CNiOSABWithWallpaperMetadataContactPredicate);

  return v2;
}

- (void)detachedPersonWithError:(id *)a3
{
  v5 = ABPersonCreate();
  if (![(CNContact *)self overwritePerson:v5 error:a3])
  {
    CFRelease(v5);
    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  return CFAutorelease(v5);
}

- (BOOL)overwritePerson:(void *)a3 error:(id *)a4
{
  v7 = objc_alloc_init(CNiOSABDependentPropertiesUpdateContext);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v8 = [(CNContact *)self keyVector];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__CNContact_iOSABLegacyCompatibility__overwritePerson_error___block_invoke;
  v16[3] = &unk_1E7413BC0;
  v16[4] = self;
  v19 = a3;
  v9 = v7;
  v20 = a4;
  v17 = v9;
  v18 = &v21;
  [v8 enumeratePropertiesUsingBlock:v16];

  if (*(v22 + 24) == 1)
  {
    v10 = +[CNContactsEnvironment currentEnvironment];
    v11 = [v10 loggerProvider];
    v12 = [v11 contactsLogger];

    v13 = [(CNiOSABDependentPropertiesUpdateContext *)v9 flushPendingImageChangesToPerson:a3 logger:v12 error:a4];
    *(v22 + 24) = v13;

    v14 = *(v22 + 24);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v14 & 1;
}

void __61__CNContact_iOSABLegacyCompatibility__overwritePerson_error___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = +[CN identifierDescription];
  if (v5 != v9)
  {
    v6 = +[CN iOSLegacyIdentifierDescription];

    v7 = v9;
    if (v6 == v9)
    {
      goto LABEL_6;
    }

    v8 = [v9 CNValueForContact:a1[4]];
    v5 = [v9 valueWithResetIdentifiers:v8];

    if (([v9 setCNValue:v5 onABPerson:a1[7] withDependentPropertiesContext:a1[5] error:a1[8]] & 1) == 0)
    {
      *a3 = 1;
      *(*(a1[6] + 8) + 24) = 0;
    }
  }

  v7 = v9;
LABEL_6:
}

+ (id)contactFromPerson:(void *)a3 keysToFetch:(id)a4 mutable:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = +[CNContact alwaysFetchedKeys];
  v9 = [v8 allObjects];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];

  v11 = [CNiOSABConversions contactFromABPerson:a3 keysToConvert:v10 mutable:v5];
  if ([v11 hasBeenPersisted])
  {
    v12 = CPRecordCopyChangedProperties();
    if (v12)
    {
      v13 = v12;
      Count = CFArrayGetCount(v12);
      if (Count >= 1)
      {
        v15 = Count;
        v16 = [v11 mutableCopy];
        v28 = v10;
        v29 = v7;
        v27 = v5;
        if (contactFromPerson_keysToFetch_mutable__cn_once_token_0 != -1)
        {
          +[CNContact(iOSABLegacyCompatibility) contactFromPerson:keysToFetch:mutable:];
        }

        v17 = contactFromPerson_keysToFetch_mutable__cn_once_object_0;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
          v20 = ValueAtIndex;
          v21 = [MEMORY[0x1E696AD98] numberWithInt:ValueAtIndex];
          v22 = [v17 objectForKeyedSubscript:v21];

          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __77__CNContact_iOSABLegacyCompatibility__contactFromPerson_keysToFetch_mutable___block_invoke_3;
          v30[3] = &unk_1E7413C08;
          v32 = a3;
          v33 = v20;
          v23 = v16;
          v31 = v23;
          [v22 enumerateObjectsUsingBlock:v30];
        }

        if (v27)
        {
          v24 = v11;
          [v24 setSnapshot:v23];
          v11 = v24;
        }

        else
        {
          v24 = [v11 mutableCopy];
          [v24 setSnapshot:v23];
          v25 = [v24 copy];

          v11 = v25;
        }

        v10 = v28;

        v7 = v29;
      }

      CFRelease(v13);
    }
  }

  return v11;
}

void __77__CNContact_iOSABLegacyCompatibility__contactFromPerson_keysToFetch_mutable___block_invoke()
{
  v3 = +[CN writableContactProperties];
  v0 = [v3 _cn_groupBy:&__block_literal_global_8_1];
  v1 = [v0 copy];
  v2 = contactFromPerson_keysToFetch_mutable__cn_once_object_0;
  contactFromPerson_keysToFetch_mutable__cn_once_object_0 = v1;
}

id __77__CNContact_iOSABLegacyCompatibility__contactFromPerson_keysToFetch_mutable___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = 0;
  if ([a2 abPropertyID:&v4])
  {
    [MEMORY[0x1E696AD98] numberWithInt:v4];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }
  v2 = ;

  return v2;
}

void __77__CNContact_iOSABLegacyCompatibility__contactFromPerson_keysToFetch_mutable___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = ABRecordCopyOriginalValue();
  v4 = ABPersonCreate();
  ABRecordSetValue(v4, *(a1 + 48), v3, 0);
  v5 = [v7 ABValueForABPerson:v4];
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v6 = [v7 CNValueFromABValue:v5];
  [v7 setCNValue:v6 onContact:*(a1 + 32)];
}

+ (id)contactPropertyKeyFromABPropertyID:(int)a3
{
  v4 = +[CN allContactProperties];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNContact_iOSABLegacyCompatibility__contactPropertyKeyFromABPropertyID___block_invoke;
  v8[3] = &__block_descriptor_36_e8_B16__0_8l;
  v9 = a3;
  v5 = [v4 _cn_firstObjectPassingTest:v8];
  v6 = [v5 key];

  return v6;
}

BOOL __74__CNContact_iOSABLegacyCompatibility__contactPropertyKeyFromABPropertyID___block_invoke(uint64_t a1, void *a2)
{
  v5 = 0;
  v3 = [a2 abPropertyID:&v5];
  result = 0;
  if (v3)
  {
    return v5 == *(a1 + 32);
  }

  return result;
}

+ (int)abPropertyIDfromContactPropertyKey:(id)a3
{
  v3 = a3;
  v4 = +[CN contactPropertiesByKey];
  v5 = [v4 objectForKeyedSubscript:v3];

  v7 = 0;
  [v5 abPropertyID:&v7];
  LODWORD(v4) = v7;

  return v4;
}

- (BOOL)overwritePublicABPerson:(void *)a3
{
  ABSPublicABCNCompatibilityClass = getABSPublicABCNCompatibilityClass();

  return [ABSPublicABCNCompatibilityClass overwritePublicABPerson:a3 withContact:self];
}

- (BOOL)updateNewPublicABPerson:(void *)a3 inAddressBook:(void *)a4
{
  ABSPublicABCNCompatibilityClass = getABSPublicABCNCompatibilityClass();

  return [ABSPublicABCNCompatibilityClass updateNewPublicABPerson:a3 withSavedContact:self inAddressBook:a4];
}

+ (id)contactFromPublicABPerson:(void *)a3 keysToFetch:(id)a4 mutable:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [getABSPublicABCNCompatibilityClass() contactFromPublicABPerson:a3 keysToFetch:v7 mutable:v5];

  return v8;
}

+ (id)contactPropertyKeyFromPublicABPropertyID:(int)a3
{
  v3 = *&a3;
  ABSPublicABCNCompatibilityClass = getABSPublicABCNCompatibilityClass();

  return [ABSPublicABCNCompatibilityClass contactPropertyKeyFromPublicABPropertyID:v3];
}

+ (int)publicABPropertyIDFromContactPropertyKey:(id)a3
{
  v3 = a3;
  v4 = [getABSPublicABCNCompatibilityClass() publicABPropertyIDFromContactPropertyKey:v3];

  return v4;
}

+ (BOOL)isCoreRecentsAcceptedIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[CNCoreRecentsContactStore acceptedContactsDomainIdentifier];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CNContact_CoreRecents__isCoreRecentsAcceptedIdentifier___block_invoke;
  block[3] = &unk_1E7412A88;
  v5 = v4;
  v17 = v5;
  if (isCoreRecentsAcceptedIdentifier__cn_once_token_0 != -1)
  {
    dispatch_once(&isCoreRecentsAcceptedIdentifier__cn_once_token_0, block);
  }

  v6 = isCoreRecentsAcceptedIdentifier__cn_once_object_0;

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __58__CNContact_CoreRecents__isCoreRecentsAcceptedIdentifier___block_invoke_2;
  v14 = &unk_1E7412A88;
  v7 = v6;
  v15 = v7;
  if (isCoreRecentsAcceptedIdentifier__cn_once_token_1 != -1)
  {
    dispatch_once(&isCoreRecentsAcceptedIdentifier__cn_once_token_1, &v11);
  }

  v8 = isCoreRecentsAcceptedIdentifier__cn_once_object_1;

  if ([v8 length])
  {
    v9 = [v3 hasPrefix:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __58__CNContact_CoreRecents__isCoreRecentsAcceptedIdentifier___block_invoke(uint64_t a1)
{
  v1 = [CNCoreRecentsContactStore internalIdentifierForDomain:*(a1 + 32) recentsIdentifier:&stru_1F094DAB0];
  v2 = isCoreRecentsAcceptedIdentifier__cn_once_object_0;
  isCoreRecentsAcceptedIdentifier__cn_once_object_0 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

uint64_t __58__CNContact_CoreRecents__isCoreRecentsAcceptedIdentifier___block_invoke_2(uint64_t a1)
{
  v1 = [(CNContactStore *)CNCoreRecentsContactStore contactIdentifierFromInternalIdentifier:*(a1 + 32)];
  v2 = isCoreRecentsAcceptedIdentifier__cn_once_object_1;
  isCoreRecentsAcceptedIdentifier__cn_once_object_1 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (NSString)coreRecentsDomain
{
  v2 = [(CNContact *)self storeInfo];
  v3 = [v2 objectForKey:CNRecentContactDomainKey];

  return v3;
}

- (NSNumber)coreRecentsIdentifier
{
  objc_opt_class();
  v3 = [(CNContact *)self storeInfo];
  v4 = [v3 objectForKeyedSubscript:CNRecentContactRecentIDKey];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (BOOL)isCoreRecentsAccepted
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_1;
  v13 = getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_1;
  if (!getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_1)
  {
    v4 = CoreRecentsLibrary_0();
    v11[3] = dlsym(v4, "CRRecentsDomainAcceptedIntroductions");
    getCRRecentsDomainAcceptedIntroductionsSymbolLoc_ptr_1 = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    MDItemUniqueIdentifier_cold_1 = getMDItemUniqueIdentifier_cold_1();
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(MDItemUniqueIdentifier_cold_1);
  }

  if (!*v3)
  {
    return 0;
  }

  v5 = *v3;
  v6 = [(CNContact *)self coreRecentsDomain];
  v7 = [v6 isEqualToString:v5];

  return v7;
}

+ (OS_os_log)os_log
{
  if (os_log_cn_once_token_0_18 != -1)
  {
    +[CNContact os_log];
  }

  v3 = os_log_cn_once_object_0_18;

  return v3;
}

uint64_t __19__CNContact_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "api");
  v1 = os_log_cn_once_object_0_18;
  os_log_cn_once_object_0_18 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (NSDate)creationDate
{
  v3 = self->_creationDate;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"creationDate"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"creationDate"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSDate)modificationDate
{
  v3 = self->_modificationDate;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"modificationDate"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"modificationDate"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)searchIndex
{
  v3 = self->_searchIndex;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"searchIndex"])
    {
      v3 = &stru_1F094DAB0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"searchIndex"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = &stru_1F094DAB0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSDate)imageSyncFailedTime
{
  v3 = self->_imageSyncFailedTime;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageSyncFailedTime"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"imageSyncFailedTime"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSDate)wallpaperSyncFailedTime
{
  v3 = self->_wallpaperSyncFailedTime;
  if (!v3)
  {
    availableKeyDescriptor = self->_availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaperSyncFailedTime"])
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[CNLabeledValue emptyEntries];
  if (v3 != v4)
  {
    goto LABEL_10;
  }

  v5 = self->_availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"wallpaperSyncFailedTime"];

  if (!v6)
  {
LABEL_9:
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
    v4 = v3;
    v3 = 0;
LABEL_10:
  }

LABEL_11:

  return v3;
}

- (NSString)cardDAVUID
{
  v2 = [(NSString *)self->_cardDAVUID copy];

  return v2;
}

- (NSDictionary)activityAlerts
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(CNContact *)self callAlert];
  [v3 _cn_setNonNilObject:v4 forKey:@"callAlert"];

  v5 = [(CNContact *)self textAlert];
  [v3 _cn_setNonNilObject:v5 forKey:@"textAlert"];

  return v3;
}

+ (CNContact)contactWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

+ (CNContact)contactWithIdentifierOnly:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [CNContactKeyVector keyVectorWithKey:@"identifier"];
  v7 = [v5 initWithIdentifier:v4 availableKeyDescriptor:v6];

  return v7;
}

+ (id)contact
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (CNContact)contactWithDisplayName:(id)a3 emailOrPhoneNumber:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v14 = v6;
    v8 = MEMORY[0x1E695DEC8];
    v9 = a3;
    v10 = [v8 arrayWithObjects:&v14 count:1];
    v11 = [a1 contactWithDisplayName:v9 handleStrings:{v10, v14, v15}];
  }

  else
  {
    v12 = a3;
    v11 = [a1 contactWithDisplayName:v12 handleStrings:MEMORY[0x1E695E0F0]];
  }

  return v11;
}

+ (CNContact)contactWithDisplayName:(id)a3 handleStrings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[CNContact contactWithDisplayName:handleStrings:];
  }

  v9 = [a1 os_log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CNContact contactWithDisplayName:v6 handleStrings:v9];
  }

  v10 = [a1 os_log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [CNContact contactWithDisplayName:v7 handleStrings:v10];
  }

  v11 = objc_alloc_init(CNMutableContact);
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    v12 = [MEMORY[0x1E6996790] componentsFromString:v6];
    [v12 overrideComponentsInContact:v11];
  }

  v13 = [MEMORY[0x1E6996728] classificationOfHandleStrings:v7];
  v14 = [[CNContactClassifiedHandleStringInterpreter alloc] initWithHandleStringClassification:v13];
  v15 = [(CNContactClassifiedHandleStringInterpreter *)v14 emailAddresses];
  [(CNMutableContact *)v11 setEmailAddresses:v15];

  v16 = [(CNContactClassifiedHandleStringInterpreter *)v14 phoneNumbers];
  [(CNMutableContact *)v11 setPhoneNumbers:v16];

  [a1 freezeIfInstancetypeIsImmutable:v11];
  v17 = [a1 os_log];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    +[CNContact contactWithDisplayName:handleStrings:];
  }

  return v11;
}

- (CNContact)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[CNContactKeyVector keyVectorWithAllKeys];
  v6 = [(CNContact *)self initWithIdentifier:v4 availableKeyDescriptor:v5];

  return v6;
}

- (CNContact)initWithIdentifier:(id)a3 availableKeyDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (CNGuardOSLog_cn_once_token_0_7 != -1)
    {
      [CNContact initWithIdentifier:availableKeyDescriptor:];
    }

    v8 = CNGuardOSLog_cn_once_object_0_7;
    if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_7, OS_LOG_TYPE_FAULT))
    {
      [CNContact initWithIdentifier:v8 availableKeyDescriptor:?];
    }
  }

  v43.receiver = self;
  v43.super_class = CNContact;
  v9 = [(CNContact *)&v43 init];
  if (v9)
  {
    v10 = [v6 copy];
    internalIdentifier = v9->_internalIdentifier;
    v9->_internalIdentifier = v10;

    v12 = [v7 copy];
    availableKeyDescriptor = v9->_availableKeyDescriptor;
    v9->_availableKeyDescriptor = v12;

    v9->_displayNameOrder = 0;
    v9->_sharedPhotoDisplayPreference = 0;
    *&v9->_preferredForName = 1;
    v9->_iOSLegacyIdentifier = -1;
    v14 = +[CNLabeledValue emptyEntries];
    v15 = [v14 copy];
    phoneNumbers = v9->_phoneNumbers;
    v9->_phoneNumbers = v15;

    v17 = [v14 copy];
    emailAddresses = v9->_emailAddresses;
    v9->_emailAddresses = v17;

    v19 = [v14 copy];
    urlAddresses = v9->_urlAddresses;
    v9->_urlAddresses = v19;

    v21 = [v14 copy];
    dates = v9->_dates;
    v9->_dates = v21;

    v23 = [v14 copy];
    instantMessageAddresses = v9->_instantMessageAddresses;
    v9->_instantMessageAddresses = v23;

    v25 = [v14 copy];
    contactRelations = v9->_contactRelations;
    v9->_contactRelations = v25;

    v27 = [v14 copy];
    socialProfiles = v9->_socialProfiles;
    v9->_socialProfiles = v27;

    v29 = [v14 copy];
    postalAddresses = v9->_postalAddresses;
    v9->_postalAddresses = v29;

    v31 = [v14 copy];
    calendarURIs = v9->_calendarURIs;
    v9->_calendarURIs = v31;

    v33 = [v14 copy];
    addressingGrammars = v9->_addressingGrammars;
    v9->_addressingGrammars = v33;

    v35 = [v14 copy];
    addressingGrammarsEncrypted = v9->_addressingGrammarsEncrypted;
    v9->_addressingGrammarsEncrypted = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    linkedContacts = v9->_linkedContacts;
    v9->_linkedContacts = v37;

    if ([v7 containsKey:@"creationDate"])
    {
      v39 = [MEMORY[0x1E695DF00] date];
      creationDate = v9->_creationDate;
      v9->_creationDate = v39;
    }

    v41 = v9;
  }

  return v9;
}

- (CNContact)initWithIdentifier:(id)a3 persisted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [CNContactKeyVector keyVectorWithKey:@"identifier"];
  v8 = [(CNContact *)self initWithIdentifier:v6 availableKeyDescriptor:v7];

  if (v8)
  {
    if (v4)
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      snapshot = v8->_snapshot;
      v8->_snapshot = v9;
    }

    v11 = v8;
  }

  return v8;
}

+ (id)persistedContactWithIdentifierOnly:(id)a3
{
  v3 = [CNContact contactWithIdentifierOnly:a3];
  v4 = [MEMORY[0x1E695DFB0] null];
  v5 = v3[67];
  v3[67] = v4;

  return v3;
}

+ (id)_contactWithContact:(id)a3 createNewInstance:(BOOL)a4 propertyDescriptions:(id)a5
{
  v6 = a4;
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_7 != -1)
  {
    [CNContact initWithIdentifier:availableKeyDescriptor:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_7, OS_LOG_TYPE_FAULT))
  {
    +[CNContact _contactWithContact:createNewInstance:propertyDescriptions:];
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_7 != -1)
  {
    +[CNContact _contactWithContact:createNewInstance:propertyDescriptions:];
  }

  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_7, OS_LOG_TYPE_FAULT))
  {
    +[CNContact _contactWithContact:createNewInstance:propertyDescriptions:];
  }

LABEL_10:
  v42 = a1;
  if (v6)
  {
    [a1 makeIdentifier];
  }

  else
  {
    [v8 internalIdentifier];
  }
  v10 = ;
  v11 = objc_alloc_init(CNMutableContactKeyVector);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __72__CNContact__contactWithContact_createNewInstance_propertyDescriptions___block_invoke;
  v51[3] = &unk_1E74166D8;
  v54 = v6;
  v12 = v8;
  v52 = v12;
  v13 = v11;
  v53 = v13;
  [v9 enumerateObjectsUsingBlock:v51];
  v40 = v13;
  v41 = v10;
  v14 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v10 availableKeyDescriptor:v13];
  v15 = +[CN alwaysFetchedProperties];
  v16 = [v9 arrayByAddingObjectsFromArray:v15];

  v17 = +[CN runtimeOnlyProperties];
  v18 = [v16 arrayByAddingObjectsFromArray:v17];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v48;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v48 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v47 + 1) + 8 * i);
        v25 = [v24 key];
        v26 = [v12 isKeyAvailable:v25];

        if (v26)
        {
          v27 = [v24 CNValueForContact:v12];
          if (v6)
          {
            v28 = [v24 valueWithResetIdentifiers:v27];

            v27 = v28;
          }
        }

        else
        {
          if (!v6)
          {
            continue;
          }

          v27 = [v24 nilValue];
        }

        [v24 setCNValue:v27 onContact:v14];
      }

      v21 = [v19 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v21);
  }

  v29 = [v12[67] copy];
  snapshot = v14->super._snapshot;
  v14->super._snapshot = v29;

  if ([v12 isUnified])
  {
    v31 = [v12 linkedContacts];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __72__CNContact__contactWithContact_createNewInstance_propertyDescriptions___block_invoke_2;
    v43[3] = &unk_1E7416700;
    v45 = v42;
    v46 = v6;
    v44 = v19;
    v32 = [v31 _cn_map:v43];

    [(CNMutableContact *)v14 setLinkedContacts:v32];
  }

  v33 = [v12[69] copy];
  accountIdentifier = v14->super._accountIdentifier;
  v14->super._accountIdentifier = v33;

  if (!v6)
  {
    v35 = [v12 storeIdentifier];
    [(CNMutableContact *)v14 setStoreIdentifier:v35];

    v36 = [v12 storeInfo];
    [(CNMutableContact *)v14 setStoreInfo:v36];
  }

  if ([v42 isSubclassOfClass:objc_opt_class()])
  {
    v37 = v14;
  }

  else
  {
    v37 = [(CNMutableContact *)v14 freeze];
  }

  v38 = v37;

  return v38;
}

void __72__CNContact__contactWithContact_createNewInstance_propertyDescriptions___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ((*(a1 + 48) & 1) != 0 || (v3 = *(a1 + 32), [v8 key], v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = objc_msgSend(v3, "isKeyAvailable:", v4), v4, v5 = v8, v3))
  {
    v6 = *(a1 + 40);
    v7 = [v8 key];
    [v6 addKey:v7];

    v5 = v8;
  }
}

+ (id)emptyContact
{
  if (emptyContact_cn_once_token_10 != -1)
  {
    +[CNContact emptyContact];
  }

  v3 = emptyContact_cn_once_object_10;

  return v3;
}

uint64_t __25__CNContact_emptyContact__block_invoke()
{
  v0 = objc_alloc_init(CNContact);
  v1 = emptyContact_cn_once_object_10;
  emptyContact_cn_once_object_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (CNContact)contactWithContact:(id)a3
{
  v4 = a3;
  v5 = +[CN allContactProperties];
  v6 = [a1 _contactWithContact:v4 createNewInstance:0 propertyDescriptions:v5];

  return v6;
}

+ (id)newContactWithPropertyKeys:(id)a3 withValuesFromContact:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DFA8];
  v7 = a3;
  v8 = [v6 set];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__CNContact_newContactWithPropertyKeys_withValuesFromContact___block_invoke;
  v18 = &unk_1E7416750;
  v19 = v8;
  v20 = v5;
  v9 = v5;
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:&v15];

  v11 = objc_opt_class();
  v12 = [v10 allObjects];
  v13 = [v11 _contactWithContact:v9 createNewInstance:1 propertyDescriptions:v12];

  return v13;
}

void __62__CNContact_newContactWithPropertyKeys_withValuesFromContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_CNIsObject_CNKeyDescriptorPrivate(v3))
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __62__CNContact_newContactWithPropertyKeys_withValuesFromContact___block_invoke_2;
    v4[3] = &unk_1E7416728;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    [v3 _cn_executeGetterForRepresentedKeys:v4];
  }
}

id __62__CNContact_newContactWithPropertyKeys_withValuesFromContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CN contactPropertiesByKey];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    if ([*(a1 + 40) isKeyAvailable:v3])
    {
      [v5 CNValueForContact:*(a1 + 40)];
    }

    else
    {
      [v5 nilValue];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithPropertyKeys:(id)a3
{
  v4 = MEMORY[0x1E695DFA8];
  v5 = a3;
  v6 = [v4 set];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __34__CNContact_copyWithPropertyKeys___block_invoke;
  v15 = &unk_1E7416750;
  v16 = self;
  v17 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v12];

  v8 = objc_opt_class();
  v9 = [v7 allObjects];
  v10 = [v8 _contactWithContact:self createNewInstance:0 propertyDescriptions:v9];

  return v10;
}

void __34__CNContact_copyWithPropertyKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_CNIsObject_CNKeyDescriptorPrivate(v3))
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__CNContact_copyWithPropertyKeys___block_invoke_2;
    v5[3] = &unk_1E7416728;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    [v3 _cn_executeGetterForRepresentedKeys:v5];
  }
}

id __34__CNContact_copyWithPropertyKeys___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CN contactPropertiesByKey];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5 && [*(a1 + 32) isKeyAvailable:v3])
  {
    [*(a1 + 40) addObject:v5];
    v6 = [v5 CNValueForContact:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithDistinctIdentifier
{
  v3 = objc_opt_class();
  v4 = +[CN allContactProperties];
  v5 = [v3 _contactWithContact:self createNewInstance:1 propertyDescriptions:v4];
  v6 = [v5 mutableCopy];

  [v6 updateStateFromContact:0];
  [CN resetRestrictedPropertiesOnMutableContact:v6];
  v7 = [v6 copy];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(CNContact *)CNMutableContact contactWithContact:self];
  snapshot = self->_snapshot;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (snapshot == v6)
  {
    [v4 setSnapshot:self];
  }

  return v4;
}

- (id)copyWithSelfAsSnapshot
{
  v2 = [(CNContact *)self mutableCopy];
  v3 = [v2 freezeWithSelfAsSnapshot];

  return v3;
}

- (id)selfOrMutableCopy
{
  v2 = [(CNContact *)self mutableCopy];

  return v2;
}

+ (id)makeContactAndMergeValuesFromAvailableKeysInContact:(id)a3
{
  v4 = a3;
  v5 = +[CN allContactProperties];
  v6 = [a1 _contactWithContact:v4 createNewInstance:1 propertyDescriptions:v5];

  return v6;
}

- (CNContact)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CNContact *)self init];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = MEMORY[0x1E695DFD8];
    if (isKindOfClass)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:@"availableKeyDescriptor"];
      v11 = [v10 copy];
      availableKeyDescriptor = v6->_availableKeyDescriptor;
      v6->_availableKeyDescriptor = v11;
    }

    else
    {
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v8 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"availableKeys"];
      v9 = [v17 allObjects];

      if (!v9)
      {
        if ([v4 requiresSecureCoding])
        {
          v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"availableKeys_v2"];
        }

        else
        {
          v18 = MEMORY[0x1E695DFD8];
          v19 = objc_opt_class();
          v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
          v21 = [v4 decodeObjectOfClasses:v20 forKey:@"availableKeys_v2"];
          v9 = [v21 allObjects];
        }
      }

      v22 = [CNContactKeyVector keyVectorWithKeys:v9];
      v10 = v6->_availableKeyDescriptor;
      v6->_availableKeyDescriptor = v22;
    }

    v23 = v6->_availableKeyDescriptor;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __27__CNContact_initWithCoder___block_invoke;
    v52[3] = &unk_1E7413F08;
    v24 = v4;
    v53 = v24;
    v25 = v6;
    v54 = v25;
    [(CNContactKeyVector *)v23 enumeratePropertiesUsingBlock:v52];
    v26 = +[CN runtimeOnlyProperties];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __27__CNContact_initWithCoder___block_invoke_2;
    v49[3] = &unk_1E7416778;
    v27 = v24;
    v50 = v27;
    v13 = v25;
    v51 = v13;
    [v26 _cn_each:v49];

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v27 decodeObjectOfClasses:v30 forKey:@"snapshot"];
    v32 = [v31 copy];
    snapshot = v13->_snapshot;
    v13->_snapshot = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
    v37 = [v27 decodeObjectOfClasses:v36 forKey:@"linkedContacts"];
    v38 = [v37 copy];
    linkedContacts = v13->_linkedContacts;
    v13->_linkedContacts = v38;

    v40 = [v27 decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
    v41 = [v40 copy];
    storeIdentifier = v13->_storeIdentifier;
    v13->_storeIdentifier = v41;

    v43 = [CNContact storeInfoFromCoder:v27 storeIdentifier:v13->_storeIdentifier key:@"storeInfo"];
    v44 = [v43 copy];
    storeInfo = v13->_storeInfo;
    v13->_storeInfo = v44;

    if (!v13->_internalIdentifier)
    {

      v46 = os_log_create("com.apple.contacts", "data-access-error");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [CNContact initWithCoder:];
      }

      v47 = [CNErrorFactory errorWithCode:2 userInfo:0];
      [v27 failWithError:v47];

      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFA8] set];
  }

  availableKeyDescriptor = self->_availableKeyDescriptor;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __29__CNContact_encodeWithCoder___block_invoke;
  v23[3] = &unk_1E74167A0;
  v8 = v4;
  v24 = v8;
  v25 = self;
  v9 = v6;
  v26 = v9;
  [(CNContactKeyVector *)availableKeyDescriptor enumeratePropertiesUsingBlock:v23];
  v10 = +[CN runtimeOnlyProperties];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __29__CNContact_encodeWithCoder___block_invoke_2;
  v20[3] = &unk_1E7416778;
  v11 = v8;
  v21 = v11;
  v22 = self;
  [v10 _cn_each:v20];

  if ((isKindOfClass & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AE30] processInfo];
    v13 = [v12 environment];
    v14 = [v13 objectForKeyedSubscript:@"CN_UNIT_TESTING"];
    if ([v14 _cn_caseInsensitiveIsEqual:@"YES"] & 1) != 0 || (objc_msgSend(v14, "_cn_caseInsensitiveIsEqual:", @"Y") & 1) != 0 || (objc_msgSend(v14, "_cn_caseInsensitiveIsEqual:", @"TRUE") & 1) != 0 || (objc_msgSend(v14, "_cn_caseInsensitiveIsEqual:", @"T"))
    {
    }

    else
    {
      v19 = [v14 integerValue];

      if (!v19)
      {
        goto LABEL_17;
      }
    }

    v15 = [(CNContact *)self _availableKeyEncodingStrategy];
    if (v15 != 2)
    {
      if (v15 == 1)
      {
        v16 = [v9 allObjects];
      }

      else
      {
        v16 = [v9 copy];
      }

      v17 = v16;
      v18 = @"availableKeys";
      goto LABEL_18;
    }

LABEL_17:
    v17 = [v9 allObjects];
    v18 = @"availableKeys_v2";
LABEL_18:
    [v11 encodeObject:v17 forKey:v18];

    goto LABEL_19;
  }

  [v11 encodeObject:self->_availableKeyDescriptor forKey:@"availableKeyDescriptor"];
LABEL_19:
  [v11 encodeObject:self->_snapshot forKey:@"snapshot"];
  [v11 encodeObject:self->_linkedContacts forKey:@"linkedContacts"];
  [v11 encodeObject:self->_storeIdentifier forKey:@"storeIdentifier"];
  [v11 encodeObject:self->_storeInfo forKey:@"storeInfo"];
}

void __29__CNContact_encodeWithCoder___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 encodeUsingCoder:v3 contact:v4];
  v6 = a1[6];
  v7 = [v5 key];

  [v6 addObject:v7];
}

+ (id)storeInfoFromCoder:(id)a3 storeIdentifier:(id)a4 key:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [CNContactStore storeClassWithIdentifier:a4];
  if (v9)
  {
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
    v16 = +[CNSecureCodingClassSets contactStoreClasses];
    LODWORD(v12) = [v16 containsObject:v9];

    if (v12)
    {
      v17 = [(objc_class *)v9 storeInfoClasses];
      if (v17)
      {
        v18 = v17;
        v19 = [v15 setByAddingObjectsFromSet:v17];

        v15 = v19;
      }
    }

    v9 = [v7 decodeObjectOfClasses:v15 forKey:v8];
  }

  return v9;
}

- (void)assertKeyIsAvailable:(id)a3
{
  if (![(CNContact *)self isKeyAvailable:a3])
  {

    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)assertKeysAreAvailable:(id)a3
{
  v5 = a3;
  if (![(CNContact *)self areKeysAvailable:?])
  {
    v4 = [v5 description];
    [MEMORY[0x1E695DF30] raise:@"CNPropertyNotFetchedException" format:{@"Contact %p is missing some of the required key descriptors: %@", self, v4}];
  }
}

- (NSSet)availableKeys
{
  v3 = [MEMORY[0x1E695DFA8] set];
  availableKeyDescriptor = self->_availableKeyDescriptor;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__CNContact_availableKeys__block_invoke;
  v8[3] = &unk_1E7413F98;
  v9 = v3;
  v5 = v3;
  [(CNContactKeyVector *)availableKeyDescriptor enumeratePropertiesUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

void __26__CNContact_availableKeys__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addObject:v3];
}

- (BOOL)isUnifiedWithContactWithIdentifier:(NSString *)contactIdentifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = contactIdentifier;
  if ((*(*MEMORY[0x1E6996570] + 16))() && [(CNContact *)self isUnified])
  {
    v5 = [(CNContact *)self identifier];
    v6 = [v5 isEqualToString:v4];

    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v10[0] = v4;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      v7 = [(CNContact *)self isUnifiedWithContactsWithIdentifiers:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isUnifiedWithContactsWithIdentifiers:(id)a3
{
  v4 = a3;
  if ([(CNContact *)self isUnified])
  {
    if ([v4 count])
    {
      v5 = MEMORY[0x1E695DFD8];
      v6 = [(CNContact *)self allLinkedIdentifiers];
      v7 = [v5 setWithArray:v6];

      v8 = [MEMORY[0x1E695DFD8] setWithArray:v4];
      v9 = [v8 isSubsetOfSet:v7];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)allLinkedIdentifiers
{
  v3 = MEMORY[0x1E695DF70];
  v4 = [(CNContact *)self identifier];
  v5 = [v3 arrayWithObject:v4];

  if ([(CNContact *)self isUnified])
  {
    v6 = [(CNContact *)self linkedContacts];
    v7 = [v6 _cn_map:&__block_literal_global_299];
    [v5 addObjectsFromArray:v7];
  }

  return v5;
}

+ (CNKeyDescriptor)descriptorForAllImageDataKeys
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = +[CN allImageDataPropertyKeys];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = +[CNContact descriptorWithKeyDescriptors:description:](CNContact, "descriptorWithKeyDescriptors:description:", v3, @"+[CNContact descriptorForAllImageDataKeys]");

  return v4;
}

- (BOOL)areKeysAvailable:(NSArray *)keyDescriptors
{
  v3 = [(CNContact *)self areKeysAvailable:keyDescriptors useIgnorableKeys:1 findMissingKeys:0];
  v4 = [v3 first];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)areKeysAvailable:(id)a3 useIgnorableKeys:(BOOL)a4 findMissingKeys:(BOOL)a5
{
  v5 = a5;
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = self;
  v28 = v7;
  if (self->_availableKeyDescriptor)
  {
    v8 = v7;
    v34 = v5;
    if (v5)
    {
      v32 = objc_alloc_init(CNMutableContactKeyVector);
    }

    else
    {
      v32 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:{16, v28}];
    if (v10)
    {
      v11 = *v46;
      v12 = 1;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v46 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v45 + 1) + 8 * i);
          if (_CNIsObject_CNKeyDescriptorPrivate(v14))
          {
            if (a4)
            {
              [v14 _cn_ignorableKeys];
            }

            else
            {
              +[CNContactKeyVector keyVector];
            }
            v15 = ;
            v16 = [v14 _cn_requiredKeys];
            v17 = [v16 keyVectorByRemovingKeysFromKeyVector:v15];

            if (([v17 isSubsetOfKeyVector:v33->_availableKeyDescriptor] & 1) == 0)
            {
              if (!v34)
              {

                v12 = 0;
                v23 = 0;
                goto LABEL_31;
              }

              [(CNMutableContactKeyVector *)v32 unionKeyVector:v17];
              [(CNMutableContactKeyVector *)v32 minusKeyVector:v33->_availableKeyDescriptor];
              v12 = 0;
            }

            v18 = [v14 _cn_optionalKeys];
            v19 = +[CNContactKeyVector keyVector];
            v20 = [v18 isEqualToKeyVector:v19];

            if ((v20 & 1) == 0)
            {
              v41 = 0;
              v42 = &v41;
              v43 = 0x2020000000;
              v44 = 0;
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __63__CNContact_areKeysAvailable_useIgnorableKeys_findMissingKeys___block_invoke;
              v37[3] = &unk_1E74167D8;
              v37[4] = v33;
              v21 = v15;
              v38 = v21;
              v40 = &v41;
              v39 = v32;
              [v14 _cn_executeGetterForRepresentedKeys:v37];
              v22 = *(v42 + 24);

              v12 &= v22 ^ 1;
              _Block_object_dispose(&v41, 8);
              if (((v22 ^ 1 | v34) & 1) == 0)
              {

                goto LABEL_29;
              }
            }
          }

          else
          {
            v12 = 0;
            if (!v34)
            {
              v23 = 0;
              goto LABEL_32;
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 1;
    }

LABEL_29:

    if (v34)
    {
      v24 = [MEMORY[0x1E695DFA8] set];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __63__CNContact_areKeysAvailable_useIgnorableKeys_findMissingKeys___block_invoke_2;
      v35[3] = &unk_1E7413F98;
      v36 = v24;
      obj = v24;
      [(CNContactKeyVector *)v32 enumeratePropertiesUsingBlock:v35];
      v23 = [obj allObjects];
      v15 = v36;
LABEL_31:

LABEL_32:
    }

    else
    {
      v23 = 0;
    }

    v25 = MEMORY[0x1E69967A8];
    v26 = [MEMORY[0x1E696AD98] numberWithBool:v12 & 1];
    v9 = [v25 pairWithFirst:v26 second:v23];
  }

  else
  {
    v9 = [MEMORY[0x1E69967A8] pairWithFirst:MEMORY[0x1E695E118] second:{0, v7}];
  }

  return v9;
}

id __63__CNContact_areKeysAvailable_useIgnorableKeys_findMissingKeys___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isKeyAvailable:v3])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKeyedSubscript:v3];

    v6 = [v5 CNValueForContact:*(a1 + 32)];
  }

  else if ([*(a1 + 40) containsKey:v3])
  {
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKeyedSubscript:v3];

    v6 = [v8 nilValue];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    [*(a1 + 48) addKey:v3];
    v6 = 0;
  }

  return v6;
}

void __63__CNContact_areKeysAvailable_useIgnorableKeys_findMissingKeys___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  [v2 addObject:v3];
}

- (id)linkedContactsFromStoreWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNContact *)self linkedContacts];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 storeIdentifier];
          if (v4 | v13)
          {
            v14 = v13;
            v15 = [v12 storeIdentifier];
            v16 = [v15 isEqual:v4];

            if (!v16)
            {
              continue;
            }
          }

          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v5 = v18;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (NSString)stringForIndexing
{
  v3 = objc_alloc_init(CNContactSearchIndexFormatter);
  v4 = [(CNContactSearchIndexFormatter *)v3 stringFromContact:self];

  return v4;
}

- (NSArray)termsOfAddress
{
  v2 = [(CNContact *)self addressingGrammars];
  v3 = [v2 _cn_compactMap:&__block_literal_global_309];

  return v3;
}

void *__27__CNContact_termsOfAddress__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  if ((*(*MEMORY[0x1E6996528] + 16))())
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

- (BOOL)hasChanges
{
  v2 = self;
  v3 = [(CNContact *)self snapshot];
  LOBYTE(v2) = [(CNContact *)v2 isEqual:v3];

  return v2 ^ 1;
}

- (id)diffToSnapshotAndReturnError:(id *)a3
{
  v5 = [(CNContact *)self snapshot];
  v6 = [CNContactDiff diffContact:v5 to:self error:a3];

  return v6;
}

+ (id)debugDescriptionForName:(id)a3
{
  v4 = a3;
  if ([a1 _shouldRedactDescription])
  {
    v5 = [a1 _shortHashForName:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = (*(*MEMORY[0x1E69964C0] + 16))();

  return v7;
}

- (void)_appendNameInBuilder:(id)a3
{
  v10 = a3;
  v4 = [objc_opt_class() _shouldRedactDescription];
  if (![(CNContact *)self isKeyAvailable:@"givenName"])
  {
    v5 = @"(not fetched)";
    if (![(CNContact *)self isKeyAvailable:@"familyName"])
    {
      v7 = @"(not fetched)";
      goto LABEL_13;
    }

    if (v4)
    {
LABEL_7:
      v6 = [objc_opt_class() _shortHashForName:self->_familyName];
LABEL_10:
      v7 = v6;
      goto LABEL_13;
    }

LABEL_9:
    v6 = self->_familyName;
    goto LABEL_10;
  }

  if (v4)
  {
    v5 = [objc_opt_class() _shortHashForName:self->_givenName];
    if (![(CNContact *)self isKeyAvailable:@"familyName"])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v5 = self->_givenName;
  if ([(CNContact *)self isKeyAvailable:@"familyName"])
  {
    goto LABEL_9;
  }

LABEL_12:
  v7 = @"(not fetched)";
LABEL_13:
  v8 = [v10 appendName:@"givenName" object:v5];
  v9 = [v10 appendName:@"familyName" object:v7];
}

+ (id)_shortHashForName:(id)a3
{
  v3 = a3;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v4 = [v3 dataUsingEncoding:4];
    v5 = [v4 _cn_md5Hash];
    v6 = [v5 _cn_hexString];
    v7 = [v6 length];
    if (v7 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 substringToIndex:v8];
  }

  else
  {
    v9 = &stru_1F094DAB0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (isEqual__cn_once_token_13 != -1)
  {
    [CNContact isEqual:];
  }

  v5 = isEqual__cn_once_object_13;
  v6 = v4;
  v7 = MEMORY[0x1E69966F0];
  v8 = objc_opt_class();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __21__CNContact_isEqual___block_invoke_2;
  v25[3] = &unk_1E7412228;
  v25[4] = self;
  v26 = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __21__CNContact_isEqual___block_invoke_3;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v9 = v26;
  v24 = v9;
  v10 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __21__CNContact_isEqual___block_invoke_4;
  v21[3] = &unk_1E7412228;
  v21[4] = self;
  v11 = v9;
  v22 = v11;
  v12 = _Block_copy(v21);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __21__CNContact_isEqual___block_invoke_5;
  v18[3] = &unk_1E7416850;
  v18[4] = self;
  v19 = v11;
  v20 = v5;
  v13 = v5;
  v14 = v11;
  v15 = _Block_copy(v18);
  v16 = [v7 isObject:v14 kindOfClass:v8 andEqualToObject:self withBlocks:{v25, v10, v12, v15, 0}];

  return v16;
}

void __21__CNContact_isEqual___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = +[CN identifierDescription];
  v4[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [v1 copy];
  v3 = isEqual__cn_once_object_13;
  isEqual__cn_once_object_13 = v2;
}

uint64_t __21__CNContact_isEqual___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  if (!v3)
  {
    v1 = [*(a1 + 40) identifier];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) identifier];
  v5 = [*(a1 + 40) identifier];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

uint64_t __21__CNContact_isEqual___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) storeIdentifier];
  if (!v3)
  {
    v1 = [*(a1 + 40) storeIdentifier];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) storeIdentifier];
  v5 = [*(a1 + 40) storeIdentifier];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEquivalent:(id)a3 ignoringProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = MEMORY[0x1E69966F0];
  v10 = objc_opt_class();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __45__CNContact_isEquivalent_ignoringProperties___block_invoke;
  v26[3] = &unk_1E7412228;
  v26[4] = self;
  v27 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__CNContact_isEquivalent_ignoringProperties___block_invoke_2;
  aBlock[3] = &unk_1E7412228;
  aBlock[4] = self;
  v11 = v27;
  v25 = v11;
  v12 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __45__CNContact_isEquivalent_ignoringProperties___block_invoke_3;
  v22[3] = &unk_1E7412228;
  v22[4] = self;
  v13 = v11;
  v23 = v13;
  v14 = _Block_copy(v22);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__CNContact_isEquivalent_ignoringProperties___block_invoke_4;
  v19[3] = &unk_1E7416850;
  v19[4] = self;
  v20 = v13;
  v21 = v7;
  v15 = v7;
  v16 = v13;
  v17 = _Block_copy(v19);
  LOBYTE(self) = [v9 isObject:v16 kindOfClass:v10 andEqualToObject:self withBlocks:{v26, v12, v14, v17, 0}];

  return self;
}

uint64_t __45__CNContact_isEquivalent_ignoringProperties___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  if (!v3)
  {
    v1 = [*(a1 + 40) identifier];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) identifier];
  v5 = [*(a1 + 40) identifier];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

uint64_t __45__CNContact_isEquivalent_ignoringProperties___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) storeIdentifier];
  if (!v3)
  {
    v1 = [*(a1 + 40) storeIdentifier];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) storeIdentifier];
  v5 = [*(a1 + 40) storeIdentifier];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (BOOL)areAllAvailableKeysEqualToContact:(id)a3 ignoringIdentifiers:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CNContact *)self availableKeyDescriptor];
  v8 = [v6 availableKeyDescriptor];

  if (v7 == v8)
  {
    v17 = 1;
  }

  else
  {
    if (v4)
    {
      if (areAllAvailableKeysEqualToContact_ignoringIdentifiers__cn_once_token_14 != -1)
      {
        [CNContact areAllAvailableKeysEqualToContact:ignoringIdentifiers:];
      }

      v9 = areAllAvailableKeysEqualToContact_ignoringIdentifiers__cn_once_object_14;
      v10 = [(CNContact *)self keyVector];
      v11 = [v10 mutableCopy];

      v12 = [v6 keyVector];
      v13 = [v12 mutableCopy];

      [v11 minusKeyVector:v9];
      [v13 minusKeyVector:v9];

      v15 = v11;
      v16 = v13;
    }

    else
    {
      v11 = [(CNContact *)self keyVector];
      v14 = [v6 keyVector];
      v13 = v14;
      v15 = v11;
      v16 = v14;
    }

    v17 = __67__CNContact_areAllAvailableKeysEqualToContact_ignoringIdentifiers___block_invoke(v14, v15, v16);
  }

  return v17;
}

uint64_t __67__CNContact_areAllAvailableKeysEqualToContact_ignoringIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (a2 && v4)
  {
    v6 = [a2 isEqualToKeyVector:v4];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if (([a2 containsAllKeys] & 1) == 0)
  {
    v6 = [v5 containsAllKeys];
    goto LABEL_7;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

void __67__CNContact_areAllAvailableKeysEqualToContact_ignoringIdentifiers___block_invoke_2()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"identifier";
  v3[1] = @"iOSLegacyIdentifier";
  v3[2] = @"linkIdentifier";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = areAllAvailableKeysEqualToContact_ignoringIdentifiers__cn_once_object_14;
  areAllAvailableKeysEqualToContact_ignoringIdentifiers__cn_once_object_14 = v1;
}

- (BOOL)arePropertiesEqualToContact:(id)a3 ignoredProperties:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = +[CN allContactProperties];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (([v7 containsObject:v13] & 1) == 0)
        {
          v14 = [v13 key];
          v15 = [(CNContact *)self isKeyAvailable:v14];

          if (v15 && ![v13 isEqualForContact:self other:v6])
          {
            v16 = 0;
            goto LABEL_13;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_13:

  return v16;
}

- (BOOL)areAllPropertiesEqualToContactIgnoringIdentifiers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = +[CN writableContactProperties];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 key];
        v12 = [(CNContact *)self isKeyAvailable:v11];

        if (v12 && ![(CNContact *)self isProperty:v10 equalToOtherIgnoreIdentifiers:v4])
        {
          v13 = 0;
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)isEqualIgnoringIdentifiers:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__CNContact_isEqualIgnoringIdentifiers___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__CNContact_isEqualIgnoringIdentifiers___block_invoke_2;
  v13 = &unk_1E7412228;
  v14 = self;
  v15 = v17;
  v7 = v17;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, v14}];

  return self;
}

+ (NSComparator)comparatorForNameSortOrder:(CNContactSortOrder)sortOrder
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CNContact_comparatorForNameSortOrder___block_invoke;
  aBlock[3] = &__block_descriptor_40_e11_q24__0_8_16l;
  aBlock[4] = sortOrder;
  v3 = _Block_copy(aBlock);
  v4 = [v3 copy];

  return v4;
}

uint64_t __40__CNContact_comparatorForNameSortOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[9] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(CNContactFormatter);
  [(CNContactFormatter *)v7 setStyle:1003];
  [(CNContactFormatter *)v7 setSortOrder:*(a1 + 32)];
  v22[0] = @"familyName";
  v22[1] = @"phoneticFamilyName";
  v22[2] = @"givenName";
  v22[3] = @"phoneticGivenName";
  v22[4] = @"middleName";
  v22[5] = @"phoneticMiddleName";
  v22[6] = @"nickname";
  v22[7] = @"organizationName";
  v22[8] = @"phoneticOrganizationName";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:9];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CNContact_comparatorForNameSortOrder___block_invoke_2;
  aBlock[3] = &unk_1E7416900;
  v9 = v8;
  v21 = v9;
  v10 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      v12 = [MEMORY[0x1E695DF90] dictionary];
      v19 = [(CNContactFormatter *)v7 stringFromContact:v5 attributes:v11];
      v13 = [(CNContactFormatter *)v7 stringFromContact:v6 attributes:v12];
      v14 = v10[2](v10, v11);
      v15 = v10[2](v10, v12);
      if (!v14 || v15)
      {
        if (v14 & 1 | ((v15 & 1) == 0))
        {
          v17 = v19;
          v16 = [v19 localizedStandardCompare:v13];
LABEL_11:

          goto LABEL_12;
        }

        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      v17 = v19;
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

uint64_t __40__CNContact_comparatorForNameSortOrder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CNContact_comparatorForNameSortOrder___block_invoke_3;
  v6[3] = &unk_1E74168D8;
  v7 = *(a1 + 32);
  v8 = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v4;
}

void __40__CNContact_comparatorForNameSortOrder___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CNContact_comparatorForNameSortOrder___block_invoke_4;
  v7[3] = &unk_1E74168B0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __40__CNContact_comparatorForNameSortOrder___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([a2 isEqual:@"contactProperty"] && objc_msgSend(*(a1 + 32), "containsObject:", v7))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)preferredImageComparator
{
  if (preferredImageComparator_cn_once_token_15 != -1)
  {
    +[CNContact preferredImageComparator];
  }

  v3 = preferredImageComparator_cn_once_object_15;

  return v3;
}

void __37__CNContact_preferredImageComparator__block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = &__block_literal_global_336;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v1 = CNAggregateComparator();
  v2 = [v1 copy];
  v3 = preferredImageComparator_cn_once_object_15;
  preferredImageComparator_cn_once_object_15 = v2;
}

- (id)linkedIdentifierMap
{
  v3 = [(CNContact *)self snapshot];
  v4 = [(CNContact *)self linkedContacts];
  v5 = [CN identifierMapForUnifiedContact:v3 backingContacts:v4];

  return v5;
}

+ (id)previewURLForContact:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AF20];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 isUnified];
  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = v7;
  [v5 setScheme:@"addressbook"];
  v9 = [v4 identifier];

  [v5 setHost:v9];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"unify" value:v8];

  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 setQueryItems:v11];

  v12 = [v5 URL];

  return v12;
}

- (NSArray)relatedNames
{
  v2 = [(CNContact *)self contactRelations];
  v3 = [v2 valueForKey:@"name"];

  return v3;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.contacts.contact.persisted";
  v4[1] = @"com.apple.contacts.contact";
  v4[2] = *MEMORY[0x1E69638D8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([a1 isContactUTIType:v9])
  {
    v10 = [a1 contactWithArchivedData:v8 error:a5];
LABEL_5:
    v11 = v10;
    goto LABEL_9;
  }

  if ([a1 isVCardDataUTIType:v9])
  {
    v10 = [a1 contactWithVCardData:v8 error:a5];
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
  if (a5)
  {
    v12 = v12;
    *a5 = v12;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

+ (BOOL)isContactUTIType:(id)a3
{
  v3 = a3;
  if (UTTypeConformsTo(v3, @"com.apple.contacts.contact"))
  {
    v4 = 1;
  }

  else
  {
    v4 = UTTypeConformsTo(v3, @"com.apple.contacts.contact.persisted") != 0;
  }

  return v4;
}

+ (CNContact)contactWithArchivedData:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6996618];
  v6 = a3;
  v14 = 0;
  v7 = [v5 decodeObjectOfClass:objc_opt_class() data:v6 error:&v14];

  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    if (v8)
    {
      v15 = *MEMORY[0x1E696AA08];
      v16[0] = v8;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v11];
    if (a4)
    {
      v12 = v12;
      *a4 = v12;
    }
  }

  return v7;
}

+ (CNContact)contactWithVCardData:(id)a3 error:(id *)a4
{
  v5 = [CNContactVCardSerialization contactsWithData:a3 error:?];
  v6 = v5;
  if (v5)
  {
    if ([v5 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      goto LABEL_6;
    }

    CNSetError(a4, 700, 0);
  }

  v7 = 0;
LABEL_6:

  return v7;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.contacts.contact";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (NSArray)writableTypeIdentifiersForItemProvider
{
  v15[1] = *MEMORY[0x1E69E9840];
  if ([(CNContact *)self hasBeenPersisted])
  {
    v3 = @"com.apple.contacts.contact.persisted";
  }

  else
  {
    v3 = @"com.apple.contacts.contact";
  }

  v4 = +[CNContactVCardSerialization descriptorForRequiredKeys];
  v15[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v6 = [(CNContact *)self areKeysAvailable:v5];

  if (v6)
  {
    v7 = *MEMORY[0x1E69638D8];
    v14[0] = v3;
    v14[1] = v7;
    v8 = MEMORY[0x1E695DEC8];
    v9 = v14;
    v10 = 2;
  }

  else
  {
    v13 = v3;
    v8 = MEMORY[0x1E695DEC8];
    v9 = &v13;
    v10 = 1;
  }

  v11 = [v8 arrayWithObjects:v9 count:v10];

  return v11;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([objc_opt_class() isContactUTIType:v6])
  {
    v8 = [MEMORY[0x1E6996618] encodeObject:self error:0];
    v7[2](v7, v8, 0);
  }

  else if ([objc_opt_class() isVCardDataUTIType:v6])
  {
    v15[0] = self;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v14 = 0;
    v10 = [CNContactVCardSerialization dataWithContacts:v9 error:&v14];
    v11 = v14;

    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    (v7)[2](v7, v10, v12);
  }

  else
  {
    v7[2](v7, 0, 0);
  }

  return 0;
}

+ (id)contactIdentifierFromSuggestionID:(id)a3
{
  v3 = CNSuggestedContactFoundInBundle_block_invoke(a1, a3);
  v4 = [(CNContactStore *)CNSuggestedContactStore contactIdentifierFromInternalIdentifier:v3];

  return v4;
}

+ (id)suggestionIDFromContactIdentifier:(id)a3
{
  v3 = [(CNContactStore *)CNSuggestedContactStore internalIdentifierFromContactIdentifier:a3];
  v4 = CNSuggestedContactFoundInBundle_block_invoke_2(v3, v3);

  return v4;
}

- (BOOL)isSuggestedMe
{
  v4 = [(CNContact *)self storeIdentifier];
  if (!v4)
  {
    v2 = +[CNDonationMapper mapperIdentifier];
    if (!v2)
    {
      v7 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v5 = [(CNContact *)self storeIdentifier];
  v6 = +[CNDonationMapper mapperIdentifier];
  v7 = [v5 isEqual:v6];

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (SGRecordId)suggestionRecordId
{
  v2 = [(CNContact *)self storeInfo];
  v3 = [v2 objectForKey:CNSuggestedContactRecordIdKey];

  return v3;
}

- (NSString)suggestionFoundInBundleId
{
  v2 = [(CNContact *)self storeInfo];
  v3 = [v2 objectForKey:CNSuggestedContactFoundInBundle];

  return v3;
}

- (BOOL)hasSuggestedProperties
{
  v27[5] = *MEMORY[0x1E69E9840];
  v27[0] = @"phoneNumbers";
  v27[1] = @"emailAddresses";
  v27[2] = @"postalAddresses";
  v27[3] = @"socialProfiles";
  v27[4] = @"dates";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:5];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if ([(CNContact *)self isKeyAvailable:v8])
        {
          v9 = [(CNContact *)self valueForKey:v8];
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = v9;
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                if ([*(*(&v17 + 1) + 8 * j) isSuggested])
                {

                  v15 = 1;
                  goto LABEL_21;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
    }

    while (v5);
  }

  else
  {
    v15 = 0;
  }

LABEL_21:

  return v15;
}

+ (id)predicateForSuggestionIdentifier:(unint64_t)a3
{
  v3 = [[CNSuggestedContactIdentifierPredicate alloc] initWithSuggestionIdentifier:a3];

  return v3;
}

+ (void)contactWithDisplayName:(uint64_t)a1 handleStrings:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1954A0000, a2, OS_LOG_TYPE_DEBUG, "    displayName: %{public}@", &v2, 0xCu);
}

+ (void)contactWithDisplayName:(void *)a1 handleStrings:(NSObject *)a2 .cold.3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_debug_impl(&dword_1954A0000, a2, OS_LOG_TYPE_DEBUG, "    handleStrings: %lu", &v3, 0xCu);
}

- (void)initWithIdentifier:(void *)a1 availableKeyDescriptor:.cold.2(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = 138543362;
  v3 = objc_opt_class();
  _os_log_fault_impl(&dword_1954A0000, v1, OS_LOG_TYPE_FAULT, "parameter ‘internalIdentifier’ must be nonnull and of type %{public}@", &v2, 0xCu);
}

@end