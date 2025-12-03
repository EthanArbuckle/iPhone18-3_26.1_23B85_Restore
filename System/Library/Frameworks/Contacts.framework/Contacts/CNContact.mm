@interface CNContact
+ (BOOL)_shouldRedactDescription;
+ (BOOL)isContactUTIType:(id)type;
+ (BOOL)isCoreRecentsAcceptedIdentifier:(id)identifier;
+ (CNContact)contactWithArchivedData:(id)data error:(id *)error;
+ (CNContact)contactWithContact:(id)contact;
+ (CNContact)contactWithDisplayName:(id)name emailOrPhoneNumber:(id)number;
+ (CNContact)contactWithDisplayName:(id)name handleStrings:(id)strings;
+ (CNContact)contactWithIdentifier:(id)identifier;
+ (CNContact)contactWithIdentifierOnly:(id)only;
+ (CNContact)contactWithVCardData:(id)data error:(id *)error;
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
+ (id)_contactWithContact:(id)contact createNewInstance:(BOOL)instance propertyDescriptions:(id)descriptions;
+ (id)_shortHashForName:(id)name;
+ (id)alwaysFetchedKeys;
+ (id)contact;
+ (id)contactFromPerson:(void *)person keysToFetch:(id)fetch mutable:(BOOL)mutable;
+ (id)contactFromPublicABPerson:(void *)person keysToFetch:(id)fetch mutable:(BOOL)mutable;
+ (id)contactIdentifierFromSuggestionID:(id)d;
+ (id)contactPropertyKeyFromABPropertyID:(int)d;
+ (id)contactPropertyKeyFromPublicABPropertyID:(int)d;
+ (id)debugDescriptionForName:(id)name;
+ (id)descriptorForRequiredKeysForSearchableItem;
+ (id)emptyContact;
+ (id)identifierProvider;
+ (id)makeContactAndMergeValuesFromAvailableKeysInContact:(id)contact;
+ (id)makeIdentifierString;
+ (id)newContactWithPropertyKeys:(id)keys withValuesFromContact:(id)contact;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
+ (id)persistedContactWithIdentifierOnly:(id)only;
+ (id)predicateForAllContacts;
+ (id)predicateForContactMatchingEKParticipantWithName:(id)name emailAddress:(id)address URL:(id)l predicateDescription:(id)description;
+ (id)predicateForContactMatchingEmailAddress:(id)address;
+ (id)predicateForContactMatchingLabeledValueIdentifier:(id)identifier;
+ (id)predicateForContactMatchingMapString:(id)string;
+ (id)predicateForContactMatchingPhoneNumber:(id)number;
+ (id)predicateForContactMatchingPhoneNumberWithDigits:(id)digits countryCode:(id)code;
+ (id)predicateForContactMatchingURLString:(id)string;
+ (id)predicateForContactsLinkedToContact:(id)contact;
+ (id)predicateForContactsLinkedToContactWithIdentifier:(id)identifier;
+ (id)predicateForContactsMatchingEmailAddress:(id)address groupIdentifiers:(id)identifiers limitToOneResult:(BOOL)result;
+ (id)predicateForContactsMatchingExternalUUIDs:(id)ds;
+ (id)predicateForContactsMatchingFullTextSearch:(id)search containerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers;
+ (id)predicateForContactsMatchingHandleStrings:(id)strings;
+ (id)predicateForContactsMatchingHandleStrings:(id)strings inContainersWithIdentifiers:(id)identifiers;
+ (id)predicateForContactsMatchingInstantMessageAddress:(id)address;
+ (id)predicateForContactsMatchingName:(id)name options:(unint64_t)options;
+ (id)predicateForContactsMatchingPhoneNumber:(id)number prefixHint:(id)hint;
+ (id)predicateForContactsMatchingPhoneNumber:(id)number prefixHint:(id)hint groupIdentifiers:(id)identifiers limitToOneResult:(BOOL)result;
+ (id)predicateForContactsMatchingPostalAddress:(id)address;
+ (id)predicateForContactsMatchingPreferredChannel:(id)channel limitOne:(BOOL)one;
+ (id)predicateForContactsMatchingSmartDialerString:(id)string;
+ (id)predicateForContactsMatchingSocialProfile:(id)profile;
+ (id)predicateForContactsMatchingString:(id)string accountIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier groupIdentifier:(id)groupIdentifier;
+ (id)predicateForContactsMissingBackgroundColors;
+ (id)predicateForContactsWithExternalIdentifiers:(id)identifiers;
+ (id)predicateForContactsWithNonUnifiedIdentifiers:(id)identifiers;
+ (id)predicateForContactsWithOrganizationName:(id)name;
+ (id)predicateForContactsWithWallpaperMetadata;
+ (id)predicateForFaultFulfillmentForLegacyIdentifier:(unsigned int)identifier identifier:(id)a4;
+ (id)predicateForLegacyIdentifier:(unsigned int)identifier;
+ (id)predicateForMeContact;
+ (id)predicateForPreferredNameInContainersWithIdentifiers:(id)identifiers groupsWithIdentifiers:(id)withIdentifiers;
+ (id)predicateForPreferredNameInRange:(_NSRange)range;
+ (id)predicateForSuggestionIdentifier:(unint64_t)identifier;
+ (id)preferredImageComparator;
+ (id)previewURLForContact:(id)contact;
+ (id)storeInfoFromCoder:(id)coder storeIdentifier:(id)identifier key:(id)key;
+ (id)suggestionIDFromContactIdentifier:(id)identifier;
+ (int)abPropertyIDfromContactPropertyKey:(id)key;
+ (int)publicABPropertyIDFromContactPropertyKey:(id)key;
- (BOOL)areAllAvailableKeysEqualToContact:(id)contact ignoringIdentifiers:(BOOL)identifiers;
- (BOOL)areAllPropertiesEqualToContactIgnoringIdentifiers:(id)identifiers;
- (BOOL)areKeysAvailable:(NSArray *)keyDescriptors;
- (BOOL)arePropertiesEqualToContact:(id)contact ignoredProperties:(id)properties;
- (BOOL)hasChanges;
- (BOOL)hasSuggestedProperties;
- (BOOL)isCoreRecentsAccepted;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualIgnoringIdentifiers:(id)identifiers;
- (BOOL)isEquivalent:(id)equivalent ignoringProperties:(id)properties;
- (BOOL)isSuggested;
- (BOOL)isSuggestedMe;
- (BOOL)isUnified;
- (BOOL)isUnifiedWithContactWithIdentifier:(NSString *)contactIdentifier;
- (BOOL)isUnifiedWithContactsWithIdentifiers:(id)identifiers;
- (BOOL)isUsingSharedPhoto;
- (BOOL)overwritePerson:(void *)person error:(id *)error;
- (BOOL)overwritePublicABPerson:(void *)person;
- (BOOL)preferredForImage;
- (BOOL)preferredForName;
- (BOOL)updateNewPublicABPerson:(void *)person inAddressBook:(void *)book;
- (CGRect)cropRect;
- (CNActivityAlert)callAlert;
- (CNActivityAlert)textAlert;
- (CNContact)init;
- (CNContact)initWithCoder:(id)coder;
- (CNContact)initWithIdentifier:(id)identifier;
- (CNContact)initWithIdentifier:(id)identifier availableKeyDescriptor:(id)descriptor;
- (CNContact)initWithIdentifier:(id)identifier persisted:(BOOL)persisted;
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
- (id)_filteredArrayForValidValues:(id)values;
- (id)_searchableItemIncludingInternalAttributes:(BOOL)attributes;
- (id)allLinkedIdentifiers;
- (id)areKeysAvailable:(id)available useIgnorableKeys:(BOOL)keys findMissingKeys:(BOOL)missingKeys;
- (id)copyWithDistinctIdentifier;
- (id)copyWithPropertyKeys:(id)keys;
- (id)copyWithSelfAsSnapshot;
- (id)diffToSnapshotAndReturnError:(id *)error;
- (id)explicitDisplayName;
- (id)linkedContactsFromStoreWithIdentifier:(id)identifier;
- (id)linkedIdentifierMap;
- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)searchableItemAttributeSetForUserActivity;
- (id)selfOrMutableCopy;
- (id)shortDebugDescription;
- (id)snapshot;
- (id)wallpaperMetadata;
- (int64_t)sharedPhotoDisplayPreference;
- (unint64_t)hash;
- (void)_appendNameInBuilder:(id)builder;
- (void)assertKeyIsAvailable:(id)available;
- (void)assertKeysAreAvailable:(id)available;
- (void)detachedPersonWithError:(id *)error;
- (void)encodeWithCoder:(id)coder;
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
  internalIdentifier = [(CNContact *)self internalIdentifier];
  storeIdentifier = [(CNContact *)self storeIdentifier];
  if (storeIdentifier)
  {
    v5 = [CNContactStore storeClassWithIdentifier:storeIdentifier];
    if (v5)
    {
      v6 = v5;
      if (objc_opt_respondsToSelector())
      {
        v7 = [(objc_class *)v6 contactIdentifierFromInternalIdentifier:internalIdentifier];

        internalIdentifier = v7;
      }
    }
  }

  return internalIdentifier;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  identifier = [(CNContact *)self identifier];
  v5 = [v3 appendName:@"identifier" object:identifier];

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
  build = [v3 build];

  return build;
}

+ (BOOL)_shouldRedactDescription
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  if ([currentEnvironment isInternalBuild])
  {
    userDefaults = [currentEnvironment userDefaults];
    v4 = [userDefaults BOOLForKey:@"CNDisableContactDescriptionObfuscation"];

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
  makeIdentifier = [objc_opt_class() makeIdentifier];
  v4 = [(CNContact *)self initWithIdentifier:makeIdentifier];

  return v4;
}

+ (id)makeIdentifierString
{
  identifierProvider = [self identifierProvider];
  makeIdentifier = [identifierProvider makeIdentifier];

  return makeIdentifier;
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
  selfCopy = self;
  identifier = [(CNContact *)selfCopy identifier];
  if (!identifier)
  {
    sub_19565D28C();
    identifier = sub_19565D27C();
  }

  uuidFromContactIdentifier_ = [objc_opt_self() uuidFromContactIdentifier_];

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

  linkedContacts = [(CNContact *)self linkedContacts];
  v4 = [linkedContacts count] > 1;

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
  identifier = [(CNContact *)self identifier];
  v5 = [v3 appendName:@"identifier" object:identifier];

  [(CNContact *)self _appendNameInBuilder:v3];
  build = [v3 build];

  return build;
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
  selfCopy = self;
  snapshot = self->_snapshot;
  null = [MEMORY[0x1E695DFB0] null];
  if (snapshot != null)
  {
    selfCopy = selfCopy->_snapshot;
  }

  v5 = selfCopy;

  return selfCopy;
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
  storeIdentifier = [(CNContact *)self storeIdentifier];
  if (!storeIdentifier)
  {
    v2 = +[CNSuggestedContactStore storeIdentifier];
    if (!v2)
    {
      v8 = 1;
      goto LABEL_14;
    }
  }

  storeIdentifier2 = [(CNContact *)self storeIdentifier];
  v7 = +[CNSuggestedContactStore storeIdentifier];
  if (([storeIdentifier2 isEqual:v7] & 1) == 0)
  {
    storeIdentifier3 = [(CNContact *)self storeIdentifier];
    if (storeIdentifier3 || (+[CNDonationMapper mapperIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      storeIdentifier4 = [(CNContact *)self storeIdentifier];
      v11 = +[CNDonationMapper mapperIdentifier];
      v8 = [storeIdentifier4 isEqual:v11];

      if (storeIdentifier3)
      {

        goto LABEL_13;
      }
    }

    else
    {
      v8 = 1;
    }

LABEL_13:
    if (storeIdentifier)
    {
      goto LABEL_15;
    }

LABEL_14:

    goto LABEL_15;
  }

  v8 = 1;
  if (!storeIdentifier)
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
  identifier = [(CNContact *)self identifier];
  [v3 setRelatedUniqueIdentifier:identifier];

  return v3;
}

- (id)_searchableItemIncludingInternalAttributes:(BOOL)attributes
{
  attributesCopy = attributes;
  v95[9] = *MEMORY[0x1E69E9840];
  v76 = [objc_alloc(getCSSearchableItemAttributeSetClass()) initWithItemContentType:@"public.contact"];
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  v4 = [CNContactFormatter stringFromContact:self style:0];
  [v76 setDisplayName:v4];

  namePrefix = [(CNContact *)selfCopy namePrefix];
  v95[0] = namePrefix;
  givenName = [(CNContact *)selfCopy givenName];
  v95[1] = givenName;
  middleName = [(CNContact *)selfCopy middleName];
  v95[2] = middleName;
  familyName = [(CNContact *)selfCopy familyName];
  v95[3] = familyName;
  nameSuffix = [(CNContact *)selfCopy nameSuffix];
  v95[4] = nameSuffix;
  nickname = [(CNContact *)selfCopy nickname];
  v95[5] = nickname;
  phoneticFamilyName = [(CNContact *)selfCopy phoneticFamilyName];
  v95[6] = phoneticFamilyName;
  phoneticGivenName = [(CNContact *)selfCopy phoneticGivenName];
  v95[7] = phoneticGivenName;
  phoneticMiddleName = [(CNContact *)selfCopy phoneticMiddleName];
  v95[8] = phoneticMiddleName;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:9];
  v14 = [(CNContact *)selfCopy _filteredArrayForValidValues:v13];
  [v76 setAlternateNames:v14];

  phoneNumbers = [(CNContact *)selfCopy phoneNumbers];
  v16 = [phoneNumbers valueForKey:@"value"];
  v17 = [v16 valueForKey:@"stringValue"];
  v74 = [(CNContact *)selfCopy _filteredArrayForValidValues:v17];

  emailAddresses = [(CNContact *)selfCopy emailAddresses];
  v19 = [emailAddresses valueForKey:@"value"];
  v73 = [(CNContact *)selfCopy _filteredArrayForValidValues:v19];

  instantMessageAddresses = [(CNContact *)selfCopy instantMessageAddresses];
  v21 = [instantMessageAddresses valueForKey:@"value"];
  v22 = [v21 valueForKey:@"username"];
  v72 = [(CNContact *)selfCopy _filteredArrayForValidValues:v22];

  socialProfiles = [(CNContact *)selfCopy socialProfiles];
  v24 = [socialProfiles valueForKey:@"value"];
  v25 = [v24 valueForKey:@"username"];
  v71 = [(CNContact *)selfCopy _filteredArrayForValidValues:v25];

  [v76 setPhoneNumbers:v74];
  [v76 setEmailAddresses:v73];
  [v76 setInstantMessageAddresses:v72];
  v94[0] = v74;
  v94[1] = v73;
  v94[2] = v72;
  v94[3] = v71;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:4];
  _cn_flatten = [v26 _cn_flatten];
  [v76 setAccountHandles:_cn_flatten];

  if (![(CNContact *)selfCopy isUnitTesting])
  {
    note = [(CNContact *)selfCopy note];
    [v76 setTextContent:note];
  }

  organizationName = [(CNContact *)selfCopy organizationName];
  v93[0] = organizationName;
  departmentName = [(CNContact *)selfCopy departmentName];
  v93[1] = departmentName;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v32 = [(CNContact *)selfCopy _filteredArrayForValidValues:v31];
  [v76 setOrganizations:v32];

  jobTitle = [(CNContact *)selfCopy jobTitle];
  [v76 setRole:jobTitle];

  dates = [(CNContact *)selfCopy dates];
  v35 = [dates valueForKey:@"value"];
  v36 = [v35 valueForKey:@"date"];
  v75 = [v36 mutableCopy];

  birthday = [(CNContact *)selfCopy birthday];
  date = [birthday date];
  if (date)
  {
    [v75 addObject:date];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v75 addObject:null];
  }

  nonGregorianBirthday = [(CNContact *)selfCopy nonGregorianBirthday];
  date2 = [nonGregorianBirthday date];
  if (date2)
  {
    [v75 addObject:date2];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [v75 addObject:null2];
  }

  v43 = [(CNContact *)selfCopy _filteredArrayForValidValues:v75];
  [v76 setImportantDates:v43];

  array = [MEMORY[0x1E695DF70] array];
  postalAddresses = [(CNContact *)selfCopy postalAddresses];
  v45 = [postalAddresses valueForKey:@"value"];

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
        street = [v48 street];
        v91[0] = street;
        subLocality = [v48 subLocality];
        v91[1] = subLocality;
        city = [v48 city];
        v91[2] = city;
        subAdministrativeArea = [v48 subAdministrativeArea];
        v91[3] = subAdministrativeArea;
        state = [v48 state];
        v91[4] = state;
        postalCode = [v48 postalCode];
        v91[5] = postalCode;
        country = [v48 country];
        v91[6] = country;
        v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:7];
        [array addObjectsFromArray:v56];
      }

      v46 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
    }

    while (v46);
  }

  urlAddresses = [(CNContact *)selfCopy urlAddresses];
  v58 = [urlAddresses valueForKey:@"value"];
  [array addObjectsFromArray:v58];

  v59 = [(CNContact *)selfCopy _filteredArrayForValidValues:array];
  [v76 setAuthorAddresses:v59];

  v60 = +[CNDraggingContact availableDataRepresentationTypes];
  [v76 setProviderDataTypeIdentifiers:v60];

  if (attributesCopy && ![(CNContact *)selfCopy isUnitTesting])
  {
    creationDate = [(CNContact *)selfCopy creationDate];
    [v76 setContentCreationDate:creationDate];
  }

  identifier = [(CNContact *)selfCopy identifier];
  [CNEntitySpotlightIndexing associateAttributeSet:v76 withContactEntityIdentifiedBy:identifier];

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
  identifier2 = [(CNContact *)selfCopy identifier];
  v67 = [v65 initWithUniqueIdentifier:identifier2 domainIdentifier:@"contact" attributeSet:v76];

  return v67;
}

- (id)_filteredArrayForValidValues:(id)values
{
  v19 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = valuesCopy;
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
              [array addObject:v10];
              continue;
            }

            v11 = [(CNContact *)self _filteredArrayForValidValues:v10];
            if (([v11 isEqualToArray:MEMORY[0x1E695E0F0]] & 1) == 0)
            {
              [array addObject:v11];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
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

+ (id)predicateForContactsMatchingName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  v6 = [(CNContactWithNamePredicate *)[CNiOSABContactWithNamePredicate alloc] initWithName:nameCopy options:options];

  return v6;
}

+ (id)predicateForContactsWithOrganizationName:(id)name
{
  nameCopy = name;
  v4 = [[CNiOSABOrganizationNameContactPredicate alloc] initWithOrganizationName:nameCopy];

  return v4;
}

+ (id)predicateForContactMatchingEmailAddress:(id)address
{
  addressCopy = address;
  v4 = [(CNEmailAddressContactPredicate *)[CNiOSABEmailAddressContactPredicate alloc] initWithEmailAddress:addressCopy returnMultipleResults:0];

  return v4;
}

+ (id)predicateForContactsMatchingEmailAddress:(id)address groupIdentifiers:(id)identifiers limitToOneResult:(BOOL)result
{
  resultCopy = result;
  identifiersCopy = identifiers;
  addressCopy = address;
  v9 = [(CNEmailAddressContactPredicate *)[CNiOSABEmailAddressContactPredicate alloc] initWithEmailAddress:addressCopy groupIdentifiers:identifiersCopy returnMultipleResults:!resultCopy];

  return v9;
}

+ (id)predicateForContactsMatchingPhoneNumber:(id)number prefixHint:(id)hint groupIdentifiers:(id)identifiers limitToOneResult:(BOOL)result
{
  identifiersCopy = identifiers;
  hintCopy = hint;
  numberCopy = number;
  v12 = [(CNPhoneNumberContactPredicate *)[CNiOSABPhoneNumberContactPredicate alloc] initWithPhoneNumber:numberCopy prefixHint:hintCopy groupIdentifiers:identifiersCopy returnMultipleResults:!result];

  return v12;
}

+ (id)predicateForContactsMatchingHandleStrings:(id)strings
{
  stringsCopy = strings;
  v4 = [(CNHandleStringsContactPredicate *)[CNiOSABHandleStringsContactPredicate alloc] initWithHandleStrings:stringsCopy containerIdentifiers:0];

  return v4;
}

+ (id)predicateForContactsMatchingHandleStrings:(id)strings inContainersWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  stringsCopy = strings;
  v7 = [(CNHandleStringsContactPredicate *)[CNiOSABHandleStringsContactPredicate alloc] initWithHandleStrings:stringsCopy containerIdentifiers:identifiersCopy];

  return v7;
}

+ (id)predicateForContactsMatchingPostalAddress:(id)address
{
  addressCopy = address;
  v4 = [[CNiOSABPostalAddressContactPredicate alloc] initWithPostalAddress:addressCopy];

  return v4;
}

+ (id)predicateForContactsLinkedToContactWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(CNLinkedContactsPredicate *)[CNiOSABLinkedContactsPredicate alloc] initWithContactIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForContactsLinkedToContact:(id)contact
{
  contactCopy = contact;
  v4 = [(CNLinkedContactsPredicate *)[CNiOSABLinkedContactsPredicate alloc] initWithContact:contactCopy];

  return v4;
}

+ (id)predicateForContactsMatchingSmartDialerString:(id)string
{
  stringCopy = string;
  v4 = [[CNiOSABSmartDialerStringContactPredicate alloc] initWithString:stringCopy];

  return v4;
}

+ (id)predicateForContactsMatchingFullTextSearch:(id)search containerIdentifiers:(id)identifiers groupIdentifiers:(id)groupIdentifiers
{
  groupIdentifiersCopy = groupIdentifiers;
  identifiersCopy = identifiers;
  searchCopy = search;
  v10 = [[CNiOSABFullTextSearchContactPredicate alloc] initWithSearchString:searchCopy containerIdentifiers:identifiersCopy groupIdentifiers:groupIdentifiersCopy];

  return v10;
}

+ (id)predicateForContactMatchingMapString:(id)string
{
  stringCopy = string;
  v4 = [[CNiOSABMapDataContactPredicate alloc] initWithString:stringCopy];

  return v4;
}

+ (id)predicateForContactMatchingPhoneNumber:(id)number
{
  numberCopy = number;
  v4 = [CNiOSABPhoneNumberContactPredicate alloc];
  v6 = [(CNPhoneNumberContactPredicate *)v4 initWithPhoneNumber:numberCopy returnMultipleResults:0, v5];

  return v6;
}

+ (id)predicateForContactsMatchingPhoneNumber:(id)number prefixHint:(id)hint
{
  hintCopy = hint;
  numberCopy = number;
  v7 = [(CNPhoneNumberContactPredicate *)[CNiOSABPhoneNumberContactPredicate alloc] initWithPhoneNumber:numberCopy prefixHint:hintCopy returnMultipleResults:1];

  return v7;
}

+ (id)predicateForContactMatchingPhoneNumberWithDigits:(id)digits countryCode:(id)code
{
  codeCopy = code;
  digitsCopy = digits;
  v7 = [(CNPhoneNumberContactPredicate *)[CNiOSABPhoneNumberContactPredicate alloc] initWithDigits:digitsCopy countryCode:codeCopy returnMultipleResults:0];

  return v7;
}

+ (id)predicateForPreferredNameInRange:(_NSRange)range
{
  v3 = [[CNiOSABPreferredNameContactsPredicate alloc] initWithRange:range.location, range.length];

  return v3;
}

+ (id)predicateForPreferredNameInContainersWithIdentifiers:(id)identifiers groupsWithIdentifiers:(id)withIdentifiers
{
  withIdentifiersCopy = withIdentifiers;
  identifiersCopy = identifiers;
  v7 = [[CNiOSABPreferredNameInContainersAndGroupsPredicate alloc] initWithContainerIdentifiers:identifiersCopy groupIdentifiers:withIdentifiersCopy];

  return v7;
}

+ (id)predicateForContactsMatchingString:(id)string accountIdentifier:(id)identifier containerIdentifier:(id)containerIdentifier groupIdentifier:(id)groupIdentifier
{
  groupIdentifierCopy = groupIdentifier;
  containerIdentifierCopy = containerIdentifier;
  identifierCopy = identifier;
  stringCopy = string;
  v13 = [[CNiOSABStringMatchContactPredicate alloc] initWithSearchString:stringCopy accountIdentifier:identifierCopy containerIdentifier:containerIdentifierCopy groupIdentifier:groupIdentifierCopy];

  return v13;
}

+ (id)predicateForContactMatchingURLString:(id)string
{
  stringCopy = string;
  v4 = [[CNiOSABURLContactPredicate alloc] initWithURLString:stringCopy];

  return v4;
}

+ (id)predicateForContactMatchingLabeledValueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CNiOSABLabeledValueContactPredicate alloc] initWithLabeledValueIdentifier:identifierCopy];

  return v4;
}

+ (id)predicateForContactMatchingEKParticipantWithName:(id)name emailAddress:(id)address URL:(id)l predicateDescription:(id)description
{
  descriptionCopy = description;
  lCopy = l;
  addressCopy = address;
  nameCopy = name;
  v13 = [[CNiOSABEKParticipantPredicate alloc] initWithName:nameCopy URL:lCopy emailAddress:addressCopy customDescription:descriptionCopy];

  return v13;
}

+ (id)predicateForLegacyIdentifier:(unsigned int)identifier
{
  v3 = [[CNiOSABContactLegacyIdentifierPredicate alloc] initWithLegacyIdentifier:*&identifier];

  return v3;
}

+ (id)predicateForContactsMatchingSocialProfile:(id)profile
{
  profileCopy = profile;
  v4 = [(CNSocialProfileContactPredicate *)[CNiOSABSocialProfileContactPredicate alloc] initWithSocialProfile:profileCopy];

  return v4;
}

+ (id)predicateForContactsMatchingInstantMessageAddress:(id)address
{
  addressCopy = address;
  v4 = [[CNiOSABInstantMessageAddressContactPredicate alloc] initWithInstantMessageAddress:addressCopy];

  return v4;
}

+ (id)predicateForContactsMatchingPreferredChannel:(id)channel limitOne:(BOOL)one
{
  oneCopy = one;
  channelCopy = channel;
  v6 = [[CNiOSABPreferredChannelContactPredicate alloc] initWithPreferredChannel:channelCopy limitOne:oneCopy];

  return v6;
}

+ (id)predicateForContactsMatchingExternalUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = [(CNExternalUUIDContactPredicate *)[CNiOSABExternalUUIDContactPredicate alloc] initWithExternalUUIDs:dsCopy];

  return v4;
}

+ (id)predicateForContactsWithExternalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [(CNExternalIdentifierContactPredicate *)[CNiOSABExternalIdentifierContactPredicate alloc] initWithExternalIdentifiers:identifiersCopy];

  return v4;
}

+ (id)predicateForContactsWithNonUnifiedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v4 = [[CNiOSABContactIdentifiersPredicate alloc] initWithIdentifiers:identifiersCopy ignoreUnifiedIdentifiers:1];

  return v4;
}

+ (id)predicateForFaultFulfillmentForLegacyIdentifier:(unsigned int)identifier identifier:(id)a4
{
  v4 = *&identifier;
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

- (void)detachedPersonWithError:(id *)error
{
  v5 = ABPersonCreate();
  if (![(CNContact *)self overwritePerson:v5 error:error])
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

- (BOOL)overwritePerson:(void *)person error:(id *)error
{
  v7 = objc_alloc_init(CNiOSABDependentPropertiesUpdateContext);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  keyVector = [(CNContact *)self keyVector];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__CNContact_iOSABLegacyCompatibility__overwritePerson_error___block_invoke;
  v16[3] = &unk_1E7413BC0;
  v16[4] = self;
  personCopy = person;
  v9 = v7;
  errorCopy = error;
  v17 = v9;
  v18 = &v21;
  [keyVector enumeratePropertiesUsingBlock:v16];

  if (*(v22 + 24) == 1)
  {
    v10 = +[CNContactsEnvironment currentEnvironment];
    loggerProvider = [v10 loggerProvider];
    contactsLogger = [loggerProvider contactsLogger];

    v13 = [(CNiOSABDependentPropertiesUpdateContext *)v9 flushPendingImageChangesToPerson:person logger:contactsLogger error:error];
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

+ (id)contactFromPerson:(void *)person keysToFetch:(id)fetch mutable:(BOOL)mutable
{
  mutableCopy = mutable;
  fetchCopy = fetch;
  v8 = +[CNContact alwaysFetchedKeys];
  allObjects = [v8 allObjects];
  v10 = [fetchCopy arrayByAddingObjectsFromArray:allObjects];

  v11 = [CNiOSABConversions contactFromABPerson:person keysToConvert:v10 mutable:mutableCopy];
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
        v29 = fetchCopy;
        v27 = mutableCopy;
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
          personCopy = person;
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

        fetchCopy = v29;
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

+ (id)contactPropertyKeyFromABPropertyID:(int)d
{
  v4 = +[CN allContactProperties];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CNContact_iOSABLegacyCompatibility__contactPropertyKeyFromABPropertyID___block_invoke;
  v8[3] = &__block_descriptor_36_e8_B16__0_8l;
  dCopy = d;
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

+ (int)abPropertyIDfromContactPropertyKey:(id)key
{
  keyCopy = key;
  v4 = +[CN contactPropertiesByKey];
  v5 = [v4 objectForKeyedSubscript:keyCopy];

  v7 = 0;
  [v5 abPropertyID:&v7];
  LODWORD(v4) = v7;

  return v4;
}

- (BOOL)overwritePublicABPerson:(void *)person
{
  ABSPublicABCNCompatibilityClass = getABSPublicABCNCompatibilityClass();

  return [ABSPublicABCNCompatibilityClass overwritePublicABPerson:person withContact:self];
}

- (BOOL)updateNewPublicABPerson:(void *)person inAddressBook:(void *)book
{
  ABSPublicABCNCompatibilityClass = getABSPublicABCNCompatibilityClass();

  return [ABSPublicABCNCompatibilityClass updateNewPublicABPerson:person withSavedContact:self inAddressBook:book];
}

+ (id)contactFromPublicABPerson:(void *)person keysToFetch:(id)fetch mutable:(BOOL)mutable
{
  mutableCopy = mutable;
  fetchCopy = fetch;
  v8 = [getABSPublicABCNCompatibilityClass() contactFromPublicABPerson:person keysToFetch:fetchCopy mutable:mutableCopy];

  return v8;
}

+ (id)contactPropertyKeyFromPublicABPropertyID:(int)d
{
  v3 = *&d;
  ABSPublicABCNCompatibilityClass = getABSPublicABCNCompatibilityClass();

  return [ABSPublicABCNCompatibilityClass contactPropertyKeyFromPublicABPropertyID:v3];
}

+ (int)publicABPropertyIDFromContactPropertyKey:(id)key
{
  keyCopy = key;
  v4 = [getABSPublicABCNCompatibilityClass() publicABPropertyIDFromContactPropertyKey:keyCopy];

  return v4;
}

+ (BOOL)isCoreRecentsAcceptedIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
    v9 = [identifierCopy hasPrefix:v8];
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
  storeInfo = [(CNContact *)self storeInfo];
  v3 = [storeInfo objectForKey:CNRecentContactDomainKey];

  return v3;
}

- (NSNumber)coreRecentsIdentifier
{
  objc_opt_class();
  storeInfo = [(CNContact *)self storeInfo];
  v4 = [storeInfo objectForKeyedSubscript:CNRecentContactRecentIDKey];
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
  coreRecentsDomain = [(CNContact *)self coreRecentsDomain];
  v7 = [coreRecentsDomain isEqualToString:v5];

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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  callAlert = [(CNContact *)self callAlert];
  [dictionary _cn_setNonNilObject:callAlert forKey:@"callAlert"];

  textAlert = [(CNContact *)self textAlert];
  [dictionary _cn_setNonNilObject:textAlert forKey:@"textAlert"];

  return dictionary;
}

+ (CNContact)contactWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

+ (CNContact)contactWithIdentifierOnly:(id)only
{
  onlyCopy = only;
  v5 = [self alloc];
  v6 = [CNContactKeyVector keyVectorWithKey:@"identifier"];
  v7 = [v5 initWithIdentifier:onlyCopy availableKeyDescriptor:v6];

  return v7;
}

+ (id)contact
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (CNContact)contactWithDisplayName:(id)name emailOrPhoneNumber:(id)number
{
  v15 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v7 = numberCopy;
  if (numberCopy)
  {
    v14 = numberCopy;
    v8 = MEMORY[0x1E695DEC8];
    nameCopy = name;
    v10 = [v8 arrayWithObjects:&v14 count:1];
    v11 = [self contactWithDisplayName:nameCopy handleStrings:{v10, v14, v15}];
  }

  else
  {
    nameCopy2 = name;
    v11 = [self contactWithDisplayName:nameCopy2 handleStrings:MEMORY[0x1E695E0F0]];
  }

  return v11;
}

+ (CNContact)contactWithDisplayName:(id)name handleStrings:(id)strings
{
  nameCopy = name;
  stringsCopy = strings;
  os_log = [self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    +[CNContact contactWithDisplayName:handleStrings:];
  }

  os_log2 = [self os_log];
  if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
  {
    [CNContact contactWithDisplayName:nameCopy handleStrings:os_log2];
  }

  os_log3 = [self os_log];
  if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEBUG))
  {
    [CNContact contactWithDisplayName:stringsCopy handleStrings:os_log3];
  }

  v11 = objc_alloc_init(CNMutableContact);
  if (((*(*MEMORY[0x1E6996568] + 16))() & 1) == 0)
  {
    v12 = [MEMORY[0x1E6996790] componentsFromString:nameCopy];
    [v12 overrideComponentsInContact:v11];
  }

  v13 = [MEMORY[0x1E6996728] classificationOfHandleStrings:stringsCopy];
  v14 = [[CNContactClassifiedHandleStringInterpreter alloc] initWithHandleStringClassification:v13];
  emailAddresses = [(CNContactClassifiedHandleStringInterpreter *)v14 emailAddresses];
  [(CNMutableContact *)v11 setEmailAddresses:emailAddresses];

  phoneNumbers = [(CNContactClassifiedHandleStringInterpreter *)v14 phoneNumbers];
  [(CNMutableContact *)v11 setPhoneNumbers:phoneNumbers];

  [self freezeIfInstancetypeIsImmutable:v11];
  os_log4 = [self os_log];
  if (os_log_type_enabled(os_log4, OS_LOG_TYPE_DEBUG))
  {
    +[CNContact contactWithDisplayName:handleStrings:];
  }

  return v11;
}

- (CNContact)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CNContactKeyVector keyVectorWithAllKeys];
  v6 = [(CNContact *)self initWithIdentifier:identifierCopy availableKeyDescriptor:v5];

  return v6;
}

- (CNContact)initWithIdentifier:(id)identifier availableKeyDescriptor:(id)descriptor
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  if (!identifierCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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
    v10 = [identifierCopy copy];
    internalIdentifier = v9->_internalIdentifier;
    v9->_internalIdentifier = v10;

    v12 = [descriptorCopy copy];
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

    if ([descriptorCopy containsKey:@"creationDate"])
    {
      date = [MEMORY[0x1E695DF00] date];
      creationDate = v9->_creationDate;
      v9->_creationDate = date;
    }

    v41 = v9;
  }

  return v9;
}

- (CNContact)initWithIdentifier:(id)identifier persisted:(BOOL)persisted
{
  persistedCopy = persisted;
  identifierCopy = identifier;
  v7 = [CNContactKeyVector keyVectorWithKey:@"identifier"];
  v8 = [(CNContact *)self initWithIdentifier:identifierCopy availableKeyDescriptor:v7];

  if (v8)
  {
    if (persistedCopy)
    {
      null = [MEMORY[0x1E695DFB0] null];
      snapshot = v8->_snapshot;
      v8->_snapshot = null;
    }

    v11 = v8;
  }

  return v8;
}

+ (id)persistedContactWithIdentifierOnly:(id)only
{
  v3 = [CNContact contactWithIdentifierOnly:only];
  null = [MEMORY[0x1E695DFB0] null];
  v5 = v3[67];
  v3[67] = null;

  return v3;
}

+ (id)_contactWithContact:(id)contact createNewInstance:(BOOL)instance propertyDescriptions:(id)descriptions
{
  instanceCopy = instance;
  v56 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  descriptionsCopy = descriptions;
  if (contactCopy)
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
    if (descriptionsCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (descriptionsCopy)
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
  selfCopy = self;
  if (instanceCopy)
  {
    [self makeIdentifier];
  }

  else
  {
    [contactCopy internalIdentifier];
  }
  v10 = ;
  v11 = objc_alloc_init(CNMutableContactKeyVector);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __72__CNContact__contactWithContact_createNewInstance_propertyDescriptions___block_invoke;
  v51[3] = &unk_1E74166D8;
  v54 = instanceCopy;
  v12 = contactCopy;
  v52 = v12;
  v13 = v11;
  v53 = v13;
  [descriptionsCopy enumerateObjectsUsingBlock:v51];
  v40 = v13;
  v41 = v10;
  v14 = [(CNContact *)[CNMutableContact alloc] initWithIdentifier:v10 availableKeyDescriptor:v13];
  v15 = +[CN alwaysFetchedProperties];
  v16 = [descriptionsCopy arrayByAddingObjectsFromArray:v15];

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
          nilValue = [v24 CNValueForContact:v12];
          if (instanceCopy)
          {
            v28 = [v24 valueWithResetIdentifiers:nilValue];

            nilValue = v28;
          }
        }

        else
        {
          if (!instanceCopy)
          {
            continue;
          }

          nilValue = [v24 nilValue];
        }

        [v24 setCNValue:nilValue onContact:v14];
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
    linkedContacts = [v12 linkedContacts];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __72__CNContact__contactWithContact_createNewInstance_propertyDescriptions___block_invoke_2;
    v43[3] = &unk_1E7416700;
    v45 = selfCopy;
    v46 = instanceCopy;
    v44 = v19;
    v32 = [linkedContacts _cn_map:v43];

    [(CNMutableContact *)v14 setLinkedContacts:v32];
  }

  v33 = [v12[69] copy];
  accountIdentifier = v14->super._accountIdentifier;
  v14->super._accountIdentifier = v33;

  if (!instanceCopy)
  {
    storeIdentifier = [v12 storeIdentifier];
    [(CNMutableContact *)v14 setStoreIdentifier:storeIdentifier];

    storeInfo = [v12 storeInfo];
    [(CNMutableContact *)v14 setStoreInfo:storeInfo];
  }

  if ([selfCopy isSubclassOfClass:objc_opt_class()])
  {
    freeze = v14;
  }

  else
  {
    freeze = [(CNMutableContact *)v14 freeze];
  }

  v38 = freeze;

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

+ (CNContact)contactWithContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CN allContactProperties];
  v6 = [self _contactWithContact:contactCopy createNewInstance:0 propertyDescriptions:v5];

  return v6;
}

+ (id)newContactWithPropertyKeys:(id)keys withValuesFromContact:(id)contact
{
  contactCopy = contact;
  v6 = MEMORY[0x1E695DFA8];
  keysCopy = keys;
  v8 = [v6 set];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __62__CNContact_newContactWithPropertyKeys_withValuesFromContact___block_invoke;
  v18 = &unk_1E7416750;
  v19 = v8;
  v20 = contactCopy;
  v9 = contactCopy;
  v10 = v8;
  [keysCopy enumerateObjectsUsingBlock:&v15];

  v11 = objc_opt_class();
  allObjects = [v10 allObjects];
  v13 = [v11 _contactWithContact:v9 createNewInstance:1 propertyDescriptions:allObjects];

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

- (id)copyWithPropertyKeys:(id)keys
{
  v4 = MEMORY[0x1E695DFA8];
  keysCopy = keys;
  v6 = [v4 set];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __34__CNContact_copyWithPropertyKeys___block_invoke;
  v15 = &unk_1E7416750;
  selfCopy = self;
  v17 = v6;
  v7 = v6;
  [keysCopy enumerateObjectsUsingBlock:&v12];

  v8 = objc_opt_class();
  allObjects = [v7 allObjects];
  v10 = [v8 _contactWithContact:self createNewInstance:0 propertyDescriptions:allObjects];

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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(CNContact *)CNMutableContact contactWithContact:self];
  snapshot = self->_snapshot;
  null = [MEMORY[0x1E695DFB0] null];

  if (snapshot == null)
  {
    [v4 setSnapshot:self];
  }

  return v4;
}

- (id)copyWithSelfAsSnapshot
{
  v2 = [(CNContact *)self mutableCopy];
  freezeWithSelfAsSnapshot = [v2 freezeWithSelfAsSnapshot];

  return freezeWithSelfAsSnapshot;
}

- (id)selfOrMutableCopy
{
  v2 = [(CNContact *)self mutableCopy];

  return v2;
}

+ (id)makeContactAndMergeValuesFromAvailableKeysInContact:(id)contact
{
  contactCopy = contact;
  v5 = +[CN allContactProperties];
  v6 = [self _contactWithContact:contactCopy createNewInstance:1 propertyDescriptions:v5];

  return v6;
}

- (CNContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CNContact *)self init];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = MEMORY[0x1E695DFD8];
    if (isKindOfClass)
    {
      allObjects = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
      v10 = [coderCopy decodeObjectOfClasses:allObjects forKey:@"availableKeyDescriptor"];
      v11 = [v10 copy];
      availableKeyDescriptor = v6->_availableKeyDescriptor;
      v6->_availableKeyDescriptor = v11;
    }

    else
    {
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v8 setWithObjects:{v14, v15, objc_opt_class(), 0}];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"availableKeys"];
      allObjects = [v17 allObjects];

      if (!allObjects)
      {
        if ([coderCopy requiresSecureCoding])
        {
          allObjects = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"availableKeys_v2"];
        }

        else
        {
          v18 = MEMORY[0x1E695DFD8];
          v19 = objc_opt_class();
          v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
          v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"availableKeys_v2"];
          allObjects = [v21 allObjects];
        }
      }

      v22 = [CNContactKeyVector keyVectorWithKeys:allObjects];
      v10 = v6->_availableKeyDescriptor;
      v6->_availableKeyDescriptor = v22;
    }

    v23 = v6->_availableKeyDescriptor;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __27__CNContact_initWithCoder___block_invoke;
    v52[3] = &unk_1E7413F08;
    v24 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
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
  v8 = coderCopy;
  v24 = v8;
  selfCopy = self;
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
  selfCopy2 = self;
  [v10 _cn_each:v20];

  if ((isKindOfClass & 1) == 0)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    environment = [processInfo environment];
    v14 = [environment objectForKeyedSubscript:@"CN_UNIT_TESTING"];
    if ([v14 _cn_caseInsensitiveIsEqual:@"YES"] & 1) != 0 || (objc_msgSend(v14, "_cn_caseInsensitiveIsEqual:", @"Y") & 1) != 0 || (objc_msgSend(v14, "_cn_caseInsensitiveIsEqual:", @"TRUE") & 1) != 0 || (objc_msgSend(v14, "_cn_caseInsensitiveIsEqual:", @"T"))
    {
    }

    else
    {
      integerValue = [v14 integerValue];

      if (!integerValue)
      {
        goto LABEL_17;
      }
    }

    _availableKeyEncodingStrategy = [(CNContact *)self _availableKeyEncodingStrategy];
    if (_availableKeyEncodingStrategy != 2)
    {
      if (_availableKeyEncodingStrategy == 1)
      {
        allObjects = [v9 allObjects];
      }

      else
      {
        allObjects = [v9 copy];
      }

      allObjects2 = allObjects;
      v18 = @"availableKeys";
      goto LABEL_18;
    }

LABEL_17:
    allObjects2 = [v9 allObjects];
    v18 = @"availableKeys_v2";
LABEL_18:
    [v11 encodeObject:allObjects2 forKey:v18];

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

+ (id)storeInfoFromCoder:(id)coder storeIdentifier:(id)identifier key:(id)key
{
  coderCopy = coder;
  keyCopy = key;
  v9 = [CNContactStore storeClassWithIdentifier:identifier];
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
      storeInfoClasses = [(objc_class *)v9 storeInfoClasses];
      if (storeInfoClasses)
      {
        v18 = storeInfoClasses;
        v19 = [v15 setByAddingObjectsFromSet:storeInfoClasses];

        v15 = v19;
      }
    }

    v9 = [coderCopy decodeObjectOfClasses:v15 forKey:keyCopy];
  }

  return v9;
}

- (void)assertKeyIsAvailable:(id)available
{
  if (![(CNContact *)self isKeyAvailable:available])
  {

    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)assertKeysAreAvailable:(id)available
{
  availableCopy = available;
  if (![(CNContact *)self areKeysAvailable:?])
  {
    v4 = [availableCopy description];
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
    identifier = [(CNContact *)self identifier];
    v6 = [identifier isEqualToString:v4];

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

- (BOOL)isUnifiedWithContactsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([(CNContact *)self isUnified])
  {
    if ([identifiersCopy count])
    {
      v5 = MEMORY[0x1E695DFD8];
      allLinkedIdentifiers = [(CNContact *)self allLinkedIdentifiers];
      v7 = [v5 setWithArray:allLinkedIdentifiers];

      v8 = [MEMORY[0x1E695DFD8] setWithArray:identifiersCopy];
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
  identifier = [(CNContact *)self identifier];
  v5 = [v3 arrayWithObject:identifier];

  if ([(CNContact *)self isUnified])
  {
    linkedContacts = [(CNContact *)self linkedContacts];
    v7 = [linkedContacts _cn_map:&__block_literal_global_299];
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
  first = [v3 first];
  bOOLValue = [first BOOLValue];

  return bOOLValue;
}

- (id)areKeysAvailable:(id)available useIgnorableKeys:(BOOL)keys findMissingKeys:(BOOL)missingKeys
{
  missingKeysCopy = missingKeys;
  v50 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  selfCopy = self;
  v28 = availableCopy;
  if (self->_availableKeyDescriptor)
  {
    v8 = availableCopy;
    v34 = missingKeysCopy;
    if (missingKeysCopy)
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
            if (keys)
            {
              [v14 _cn_ignorableKeys];
            }

            else
            {
              +[CNContactKeyVector keyVector];
            }
            v15 = ;
            _cn_requiredKeys = [v14 _cn_requiredKeys];
            v17 = [_cn_requiredKeys keyVectorByRemovingKeysFromKeyVector:v15];

            if (([v17 isSubsetOfKeyVector:selfCopy->_availableKeyDescriptor] & 1) == 0)
            {
              if (!v34)
              {

                v12 = 0;
                allObjects = 0;
                goto LABEL_31;
              }

              [(CNMutableContactKeyVector *)v32 unionKeyVector:v17];
              [(CNMutableContactKeyVector *)v32 minusKeyVector:selfCopy->_availableKeyDescriptor];
              v12 = 0;
            }

            _cn_optionalKeys = [v14 _cn_optionalKeys];
            v19 = +[CNContactKeyVector keyVector];
            v20 = [_cn_optionalKeys isEqualToKeyVector:v19];

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
              v37[4] = selfCopy;
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
              allObjects = 0;
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
      allObjects = [obj allObjects];
      v15 = v36;
LABEL_31:

LABEL_32:
    }

    else
    {
      allObjects = 0;
    }

    v25 = MEMORY[0x1E69967A8];
    v26 = [MEMORY[0x1E696AD98] numberWithBool:v12 & 1];
    v9 = [v25 pairWithFirst:v26 second:allObjects];
  }

  else
  {
    v9 = [MEMORY[0x1E69967A8] pairWithFirst:MEMORY[0x1E695E118] second:{0, availableCopy}];
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

- (id)linkedContactsFromStoreWithIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  linkedContacts = [(CNContact *)self linkedContacts];
  if ([linkedContacts count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(linkedContacts, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = linkedContacts;
    v7 = linkedContacts;
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
          storeIdentifier = [v12 storeIdentifier];
          if (identifierCopy | storeIdentifier)
          {
            v14 = storeIdentifier;
            storeIdentifier2 = [v12 storeIdentifier];
            v16 = [storeIdentifier2 isEqual:identifierCopy];

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

    linkedContacts = v18;
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
  addressingGrammars = [(CNContact *)self addressingGrammars];
  v3 = [addressingGrammars _cn_compactMap:&__block_literal_global_309];

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
  selfCopy = self;
  snapshot = [(CNContact *)self snapshot];
  LOBYTE(selfCopy) = [(CNContact *)selfCopy isEqual:snapshot];

  return selfCopy ^ 1;
}

- (id)diffToSnapshotAndReturnError:(id *)error
{
  snapshot = [(CNContact *)self snapshot];
  v6 = [CNContactDiff diffContact:snapshot to:self error:error];

  return v6;
}

+ (id)debugDescriptionForName:(id)name
{
  nameCopy = name;
  if ([self _shouldRedactDescription])
  {
    v5 = [self _shortHashForName:nameCopy];
  }

  else
  {
    v5 = nameCopy;
  }

  v6 = v5;
  v7 = (*(*MEMORY[0x1E69964C0] + 16))();

  return v7;
}

- (void)_appendNameInBuilder:(id)builder
{
  builderCopy = builder;
  _shouldRedactDescription = [objc_opt_class() _shouldRedactDescription];
  if (![(CNContact *)self isKeyAvailable:@"givenName"])
  {
    v5 = @"(not fetched)";
    if (![(CNContact *)self isKeyAvailable:@"familyName"])
    {
      v7 = @"(not fetched)";
      goto LABEL_13;
    }

    if (_shouldRedactDescription)
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

  if (_shouldRedactDescription)
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
  v8 = [builderCopy appendName:@"givenName" object:v5];
  v9 = [builderCopy appendName:@"familyName" object:v7];
}

+ (id)_shortHashForName:(id)name
{
  nameCopy = name;
  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v4 = [nameCopy dataUsingEncoding:4];
    _cn_md5Hash = [v4 _cn_md5Hash];
    _cn_hexString = [_cn_md5Hash _cn_hexString];
    v7 = [_cn_hexString length];
    if (v7 >= 8)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    v9 = [_cn_hexString substringToIndex:v8];
  }

  else
  {
    v9 = &stru_1F094DAB0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (isEqual__cn_once_token_13 != -1)
  {
    [CNContact isEqual:];
  }

  v5 = isEqual__cn_once_object_13;
  v6 = equalCopy;
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

- (BOOL)isEquivalent:(id)equivalent ignoringProperties:(id)properties
{
  equivalentCopy = equivalent;
  propertiesCopy = properties;
  v8 = equivalentCopy;
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
  v21 = propertiesCopy;
  v15 = propertiesCopy;
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

- (BOOL)areAllAvailableKeysEqualToContact:(id)contact ignoringIdentifiers:(BOOL)identifiers
{
  identifiersCopy = identifiers;
  contactCopy = contact;
  availableKeyDescriptor = [(CNContact *)self availableKeyDescriptor];
  availableKeyDescriptor2 = [contactCopy availableKeyDescriptor];

  if (availableKeyDescriptor == availableKeyDescriptor2)
  {
    v17 = 1;
  }

  else
  {
    if (identifiersCopy)
    {
      if (areAllAvailableKeysEqualToContact_ignoringIdentifiers__cn_once_token_14 != -1)
      {
        [CNContact areAllAvailableKeysEqualToContact:ignoringIdentifiers:];
      }

      v9 = areAllAvailableKeysEqualToContact_ignoringIdentifiers__cn_once_object_14;
      keyVector = [(CNContact *)self keyVector];
      keyVector3 = [keyVector mutableCopy];

      keyVector2 = [contactCopy keyVector];
      v13 = [keyVector2 mutableCopy];

      [keyVector3 minusKeyVector:v9];
      [v13 minusKeyVector:v9];

      v15 = keyVector3;
      v16 = v13;
    }

    else
    {
      keyVector3 = [(CNContact *)self keyVector];
      keyVector4 = [contactCopy keyVector];
      v13 = keyVector4;
      v15 = keyVector3;
      v16 = keyVector4;
    }

    v17 = __67__CNContact_areAllAvailableKeysEqualToContact_ignoringIdentifiers___block_invoke(keyVector4, v15, v16);
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

- (BOOL)arePropertiesEqualToContact:(id)contact ignoredProperties:(id)properties
{
  v23 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  propertiesCopy = properties;
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
        if (([propertiesCopy containsObject:v13] & 1) == 0)
        {
          v14 = [v13 key];
          v15 = [(CNContact *)self isKeyAvailable:v14];

          if (v15 && ![v13 isEqualForContact:self other:contactCopy])
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

- (BOOL)areAllPropertiesEqualToContactIgnoringIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
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

        if (v12 && ![(CNContact *)self isProperty:v10 equalToOtherIgnoreIdentifiers:identifiersCopy])
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

- (BOOL)isEqualIgnoringIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = MEMORY[0x1E69966F0];
  v6 = objc_opt_class();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__CNContact_isEqualIgnoringIdentifiers___block_invoke;
  v16[3] = &unk_1E7412228;
  v16[4] = self;
  v17 = identifiersCopy;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__CNContact_isEqualIgnoringIdentifiers___block_invoke_2;
  v13 = &unk_1E7412228;
  selfCopy = self;
  v15 = v17;
  v7 = v17;
  v8 = _Block_copy(&aBlock);
  LOBYTE(self) = [v5 isObject:v7 kindOfClass:v6 andEqualToObject:self withBlocks:{v16, v8, 0, aBlock, v11, v12, v13, selfCopy}];

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
  snapshot = [(CNContact *)self snapshot];
  linkedContacts = [(CNContact *)self linkedContacts];
  v5 = [CN identifierMapForUnifiedContact:snapshot backingContacts:linkedContacts];

  return v5;
}

+ (id)previewURLForContact:(id)contact
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AF20];
  contactCopy = contact;
  v5 = objc_alloc_init(v3);
  isUnified = [contactCopy isUnified];
  v7 = @"NO";
  if (isUnified)
  {
    v7 = @"YES";
  }

  v8 = v7;
  [v5 setScheme:@"addressbook"];
  identifier = [contactCopy identifier];

  [v5 setHost:identifier];
  v10 = [MEMORY[0x1E696AF60] queryItemWithName:@"unify" value:v8];

  v14[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 setQueryItems:v11];

  v12 = [v5 URL];

  return v12;
}

- (NSArray)relatedNames
{
  contactRelations = [(CNContact *)self contactRelations];
  v3 = [contactRelations valueForKey:@"name"];

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

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  if ([self isContactUTIType:identifierCopy])
  {
    v10 = [self contactWithArchivedData:dataCopy error:error];
LABEL_5:
    v11 = v10;
    goto LABEL_9;
  }

  if ([self isVCardDataUTIType:identifierCopy])
  {
    v10 = [self contactWithVCardData:dataCopy error:error];
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
  if (error)
  {
    v12 = v12;
    *error = v12;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

+ (BOOL)isContactUTIType:(id)type
{
  typeCopy = type;
  if (UTTypeConformsTo(typeCopy, @"com.apple.contacts.contact"))
  {
    v4 = 1;
  }

  else
  {
    v4 = UTTypeConformsTo(typeCopy, @"com.apple.contacts.contact.persisted") != 0;
  }

  return v4;
}

+ (CNContact)contactWithArchivedData:(id)data error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6996618];
  dataCopy = data;
  v14 = 0;
  v7 = [v5 decodeObjectOfClass:objc_opt_class() data:dataCopy error:&v14];

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
    if (error)
    {
      v12 = v12;
      *error = v12;
    }
  }

  return v7;
}

+ (CNContact)contactWithVCardData:(id)data error:(id *)error
{
  v5 = [CNContactVCardSerialization contactsWithData:data error:?];
  v6 = v5;
  if (v5)
  {
    if ([v5 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      goto LABEL_6;
    }

    CNSetError(error, 700, 0);
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

- (id)loadDataWithTypeIdentifier:(id)identifier forItemProviderCompletionHandler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if ([objc_opt_class() isContactUTIType:identifierCopy])
  {
    v8 = [MEMORY[0x1E6996618] encodeObject:self error:0];
    handlerCopy[2](handlerCopy, v8, 0);
  }

  else if ([objc_opt_class() isVCardDataUTIType:identifierCopy])
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

    (handlerCopy)[2](handlerCopy, v10, v12);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }

  return 0;
}

+ (id)contactIdentifierFromSuggestionID:(id)d
{
  v3 = CNSuggestedContactFoundInBundle_block_invoke(self, d);
  v4 = [(CNContactStore *)CNSuggestedContactStore contactIdentifierFromInternalIdentifier:v3];

  return v4;
}

+ (id)suggestionIDFromContactIdentifier:(id)identifier
{
  v3 = [(CNContactStore *)CNSuggestedContactStore internalIdentifierFromContactIdentifier:identifier];
  v4 = CNSuggestedContactFoundInBundle_block_invoke_2(v3, v3);

  return v4;
}

- (BOOL)isSuggestedMe
{
  storeIdentifier = [(CNContact *)self storeIdentifier];
  if (!storeIdentifier)
  {
    v2 = +[CNDonationMapper mapperIdentifier];
    if (!v2)
    {
      v7 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  storeIdentifier2 = [(CNContact *)self storeIdentifier];
  v6 = +[CNDonationMapper mapperIdentifier];
  v7 = [storeIdentifier2 isEqual:v6];

  if (!storeIdentifier)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (SGRecordId)suggestionRecordId
{
  storeInfo = [(CNContact *)self storeInfo];
  v3 = [storeInfo objectForKey:CNSuggestedContactRecordIdKey];

  return v3;
}

- (NSString)suggestionFoundInBundleId
{
  storeInfo = [(CNContact *)self storeInfo];
  v3 = [storeInfo objectForKey:CNSuggestedContactFoundInBundle];

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

+ (id)predicateForSuggestionIdentifier:(unint64_t)identifier
{
  v3 = [[CNSuggestedContactIdentifierPredicate alloc] initWithSuggestionIdentifier:identifier];

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