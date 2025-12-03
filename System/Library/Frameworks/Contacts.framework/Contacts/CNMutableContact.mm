@interface CNMutableContact
+ (id)imageDataDescriptions;
- (BOOL)preferredForImage;
- (BOOL)preferredForName;
- (CGRect)cropRect;
- (CNActivityAlert)callAlert;
- (CNActivityAlert)textAlert;
- (CNContactKeyVector)availableKeyDescriptor;
- (CNContactType)contactType;
- (CNMutableContact)initWithContact:(id)contact;
- (CNSensitiveContentConfiguration)sensitiveContentConfiguration;
- (CNWallpaper)wallpaper;
- (CNWallpaperMetadata)wallpaperMetadata;
- (NSArray)addressingGrammars;
- (NSArray)addressingGrammarsEncrypted;
- (NSArray)calendarURIs;
- (NSArray)contactRelations;
- (NSArray)dates;
- (NSArray)emailAddresses;
- (NSArray)instantMessageAddresses;
- (NSArray)phoneNumbers;
- (NSArray)postalAddresses;
- (NSArray)socialProfiles;
- (NSArray)urlAddresses;
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
- (NSString)cardDAVUID;
- (NSString)departmentName;
- (NSString)downtimeWhitelist;
- (NSString)explicitDisplayName;
- (NSString)externalIdentifier;
- (NSString)externalImageURI;
- (NSString)externalModificationTag;
- (NSString)externalUUID;
- (NSString)familyName;
- (NSString)givenName;
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
- (NSString)preferredChannel;
- (NSString)preferredLikenessSource;
- (NSString)previousFamilyName;
- (NSString)pronunciationFamilyName;
- (NSString)pronunciationGivenName;
- (NSString)searchIndex;
- (NSString)sectionForSortingByFamilyName;
- (NSString)sectionForSortingByGivenName;
- (NSString)wallpaperURI;
- (id)copyWithSelfAsSnapshot;
- (id)freeze;
- (id)freezeWithSelfAsSnapshot;
- (int64_t)sharedPhotoDisplayPreference;
- (void)_setAddressingGrammars:(id)grammars;
- (void)_setAddressingGrammarsEncrypted:(id)encrypted;
- (void)_setCalendarURIs:(id)is;
- (void)_setContactRelations:(id)relations;
- (void)_setDates:(id)dates;
- (void)_setEmailAddresses:(id)addresses;
- (void)_setFullscreenImageData:(id)data;
- (void)_setImageData:(id)data;
- (void)_setInstantMessageAddresses:(id)addresses;
- (void)_setPhoneNumbers:(id)numbers;
- (void)_setPostalAddresses:(id)addresses;
- (void)_setSocialProfiles:(id)profiles;
- (void)_setThumbnailImageData:(id)data;
- (void)_setUrlAddresses:(id)addresses;
- (void)overwriteStateFromContact:(id)contact;
- (void)removeKeys:(id)keys;
- (void)resetIsUsingSharedPhoto;
- (void)resetToNewContact;
- (void)setAddressingGrammars:(id)grammars;
- (void)setAddressingGrammarsEncrypted:(id)encrypted;
- (void)setAvailableKeyDescriptor:(id)descriptor;
- (void)setAvatarRecipeData:(id)data;
- (void)setBirthday:(NSDateComponents *)birthday;
- (void)setCalendarURIs:(id)is;
- (void)setCallAlert:(id)alert;
- (void)setCardDAVUID:(id)d;
- (void)setContactRelations:(NSArray *)contactRelations;
- (void)setContactType:(CNContactType)contactType;
- (void)setCreationDate:(id)date;
- (void)setCropRect:(CGRect)rect;
- (void)setDates:(NSArray *)dates;
- (void)setDepartmentName:(NSString *)departmentName;
- (void)setDowntimeWhitelist:(id)whitelist;
- (void)setEmailAddresses:(NSArray *)emailAddresses;
- (void)setExplicitDisplayName:(id)name;
- (void)setExternalIdentifier:(id)identifier;
- (void)setExternalImageURI:(id)i;
- (void)setExternalModificationTag:(id)tag;
- (void)setExternalRepresentation:(id)representation;
- (void)setExternalUUID:(id)d;
- (void)setFamilyName:(NSString *)familyName;
- (void)setFrozenSelfAsSnapshot;
- (void)setFullscreenImageData:(id)data;
- (void)setGivenName:(NSString *)givenName;
- (void)setImageBackgroundColorsData:(id)data;
- (void)setImageData:(NSData *)imageData;
- (void)setImageHash:(id)hash;
- (void)setImageSyncFailedTime:(id)time;
- (void)setImageType:(id)type;
- (void)setImplicitAugmentation:(BOOL)augmentation;
- (void)setInstantMessageAddresses:(NSArray *)instantMessageAddresses;
- (void)setJobTitle:(NSString *)jobTitle;
- (void)setLinkIdentifier:(id)identifier;
- (void)setLinkedContacts:(id)contacts;
- (void)setMapsData:(id)data;
- (void)setMemojiMetadata:(id)metadata;
- (void)setMiddleName:(NSString *)middleName;
- (void)setModificationDate:(id)date;
- (void)setNamePrefix:(NSString *)namePrefix;
- (void)setNameSuffix:(NSString *)nameSuffix;
- (void)setNickname:(NSString *)nickname;
- (void)setNilValueForKey:(id)key;
- (void)setNonGregorianBirthday:(NSDateComponents *)nonGregorianBirthday;
- (void)setNote:(NSString *)note;
- (void)setOrganizationName:(NSString *)organizationName;
- (void)setPhoneNumbers:(NSArray *)phoneNumbers;
- (void)setPhonemeData:(id)data;
- (void)setPhoneticFamilyName:(NSString *)phoneticFamilyName;
- (void)setPhoneticGivenName:(NSString *)phoneticGivenName;
- (void)setPhoneticMiddleName:(NSString *)phoneticMiddleName;
- (void)setPhoneticOrganizationName:(NSString *)phoneticOrganizationName;
- (void)setPostalAddresses:(NSArray *)postalAddresses;
- (void)setPreferredApplePersonaIdentifier:(id)identifier;
- (void)setPreferredChannel:(id)channel;
- (void)setPreferredForImage:(BOOL)image;
- (void)setPreferredForName:(BOOL)name;
- (void)setPreferredLikenessSource:(id)source;
- (void)setPreviousFamilyName:(NSString *)previousFamilyName;
- (void)setPronunciationFamilyName:(id)name;
- (void)setPronunciationGivenName:(id)name;
- (void)setRelatedNames:(id)names;
- (void)setSearchIndex:(id)index;
- (void)setSectionForSortingByFamilyName:(id)name;
- (void)setSectionForSortingByGivenName:(id)name;
- (void)setSensitiveContentConfiguration:(id)configuration;
- (void)setSharedPhotoDisplayPreference:(int64_t)preference;
- (void)setSnapshot:(id)snapshot;
- (void)setSocialProfiles:(NSArray *)socialProfiles;
- (void)setStoreIdentifier:(id)identifier;
- (void)setStoreInfo:(id)info;
- (void)setSyncImageData:(id)data;
- (void)setTextAlert:(id)alert;
- (void)setThumbnailImageData:(id)data;
- (void)setUrlAddresses:(NSArray *)urlAddresses;
- (void)setWallpaper:(id)wallpaper;
- (void)setWallpaperMetadata:(id)metadata;
- (void)setWallpaperSyncFailedTime:(id)time;
- (void)setWallpaperURI:(id)i;
- (void)setWatchWallpaperImageData:(id)data;
- (void)updateImageDataAvailableFromCurrentState;
- (void)updateStateFromContact:(id)contact;
- (void)updateWithSharedProfile:(id)profile;
@end

@implementation CNMutableContact

- (id)freezeWithSelfAsSnapshot
{
  null = [MEMORY[0x1E695DFB0] null];
  [(CNMutableContact *)self setSnapshot:null];

  return [(CNMutableContact *)self freeze];
}

- (id)freeze
{
  v3 = objc_opt_class();
  object_setClass(self, v3);
  return self;
}

- (void)updateImageDataAvailableFromCurrentState
{
  if ([(CNContact *)self isKeyAvailable:@"imageDataAvailable"])
  {
    imageDataDescriptions = [objc_opt_class() imageDataDescriptions];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__CNMutableContact_updateImageDataAvailableFromCurrentState__block_invoke;
    v4[3] = &unk_1E7412278;
    v4[4] = self;
    -[CNMutableContact setImageDataAvailable:](self, "setImageDataAvailable:", [imageDataDescriptions _cn_any:v4]);
  }
}

+ (id)imageDataDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v3 = +[CN imageDataDescription];
  [array addObject:v3];

  v4 = +[CN fullscreenImageDataDescription];
  [array addObject:v4];

  v5 = +[CN thumbnailImageDataDescription];
  [array addObject:v5];

  v6 = +[CN externalImageURIDescription];
  [array addObject:v6];

  return array;
}

BOOL __60__CNMutableContact_updateImageDataAvailableFromCurrentState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 key];
  if ([v4 isKeyAvailable:v5])
  {
    v6 = [v3 CNValueForContact:*(a1 + 32)];
    v7 = [v3 nilValue];
    v8 = v6 != v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)resetIsUsingSharedPhoto
{
  if ([(CNContact *)self isKeyAvailable:@"isUsingSharedPhoto"])
  {

    [(CNMutableContact *)self setIsUsingSharedPhoto:0];
  }
}

- (NSData)imageData
{
  v3 = self->super._imageData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (CNContactType)contactType
{
  contactType = self->super._contactType;
  availableKeyDescriptor = self->super._availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"contactType"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return contactType;
}

- (NSData)avatarRecipeData
{
  v3 = self->super._avatarRecipeData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (CGRect)cropRect
{
  [(CNContact *)self assertKeyIsAvailable:@"cropRect"];
  x = self->super._cropRect.origin.x;
  y = self->super._cropRect.origin.y;
  width = self->super._cropRect.size.width;
  height = self->super._cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)namePrefix
{
  v3 = self->super._namePrefix;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (NSString)givenName
{
  v3 = self->super._givenName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (NSString)middleName
{
  v3 = self->super._middleName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (NSString)familyName
{
  v3 = self->super._familyName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (NSString)nameSuffix
{
  v3 = self->super._nameSuffix;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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
  v3 = self->super._nickname;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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
  v3 = self->super._phoneticGivenName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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
  v3 = self->super._phoneticMiddleName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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
  v3 = self->super._phoneticFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (NSArray)emailAddresses
{
  v3 = self->super._emailAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (NSArray)phoneNumbers
{
  v3 = self->super._phoneNumbers;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (int64_t)sharedPhotoDisplayPreference
{
  sharedPhotoDisplayPreference = self->super._sharedPhotoDisplayPreference;
  availableKeyDescriptor = self->super._availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sharedPhotoDisplayPreference"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return sharedPhotoDisplayPreference;
}

- (NSData)thumbnailImageData
{
  v3 = self->super._thumbnailImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (NSData)fullscreenImageData
{
  v3 = self->super._fullscreenImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (CNMutableContact)initWithContact:(id)contact
{
  contactCopy = contact;
  v8.receiver = self;
  v8.super_class = CNMutableContact;
  v5 = [(CNContact *)&v8 init];
  if (v5 && contactCopy)
  {
    v6 = [contactCopy mutableCopy];

    v5 = v6;
  }

  return v5;
}

- (id)copyWithSelfAsSnapshot
{
  v2 = [(CNMutableContact *)self copy];
  null = [MEMORY[0x1E695DFB0] null];
  v4 = v2[67];
  v2[67] = null;

  return v2;
}

- (void)setFrozenSelfAsSnapshot
{
  v3 = [(CNMutableContact *)self copy];
  [(CNMutableContact *)self setSnapshot:v3];
}

- (void)setNamePrefix:(NSString *)namePrefix
{
  v8 = namePrefix;
  if (self->super._namePrefix || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"namePrefix"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"namePrefix"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setNamePrefix:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setGivenName:(NSString *)givenName
{
  v8 = givenName;
  if (self->super._givenName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"givenName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"givenName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setGivenName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setMiddleName:(NSString *)middleName
{
  v8 = middleName;
  if (self->super._middleName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"middleName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"middleName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setMiddleName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setFamilyName:(NSString *)familyName
{
  v8 = familyName;
  if (self->super._familyName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"familyName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"familyName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setFamilyName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setNameSuffix:(NSString *)nameSuffix
{
  v8 = nameSuffix;
  if (self->super._nameSuffix || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"nameSuffix"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"nameSuffix"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setNameSuffix:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)previousFamilyName
{
  v3 = self->super._previousFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPreviousFamilyName:(NSString *)previousFamilyName
{
  v8 = previousFamilyName;
  if (self->super._previousFamilyName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"previousFamilyName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"previousFamilyName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setPreviousFamilyName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setNickname:(NSString *)nickname
{
  v8 = nickname;
  if (self->super._nickname || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"nickname"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"nickname"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setNickname:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setPhoneticGivenName:(NSString *)phoneticGivenName
{
  v8 = phoneticGivenName;
  if (self->super._phoneticGivenName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticGivenName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"phoneticGivenName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setPhoneticGivenName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setPhoneticMiddleName:(NSString *)phoneticMiddleName
{
  v8 = phoneticMiddleName;
  if (self->super._phoneticMiddleName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticMiddleName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"phoneticMiddleName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setPhoneticMiddleName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setPhoneticFamilyName:(NSString *)phoneticFamilyName
{
  v8 = phoneticFamilyName;
  if (self->super._phoneticFamilyName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticFamilyName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"phoneticFamilyName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setPhoneticFamilyName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)phoneticOrganizationName
{
  v3 = self->super._phoneticOrganizationName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPhoneticOrganizationName:(NSString *)phoneticOrganizationName
{
  v8 = phoneticOrganizationName;
  if (self->super._phoneticOrganizationName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneticOrganizationName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"phoneticOrganizationName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setPhoneticOrganizationName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)searchIndex
{
  v3 = self->super._searchIndex;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setSearchIndex:(id)index
{
  indexCopy = index;
  if (self->super._searchIndex || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"searchIndex"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"searchIndex"];
    [v5 assertValueType:indexCopy];

    v6 = [indexCopy copy];
    [(CNMutableContact *)self _setSearchIndex:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)pronunciationGivenName
{
  v3 = self->super._pronunciationGivenName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPronunciationGivenName:(id)name
{
  nameCopy = name;
  if (self->super._pronunciationGivenName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"pronunciationGivenName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"pronunciationGivenName"];
    [v5 assertValueType:nameCopy];

    v6 = [nameCopy copy];
    [(CNMutableContact *)self _setPronunciationGivenName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)pronunciationFamilyName
{
  v3 = self->super._pronunciationFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPronunciationFamilyName:(id)name
{
  nameCopy = name;
  if (self->super._pronunciationFamilyName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"pronunciationFamilyName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"pronunciationFamilyName"];
    [v5 assertValueType:nameCopy];

    v6 = [nameCopy copy];
    [(CNMutableContact *)self _setPronunciationFamilyName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)explicitDisplayName
{
  v3 = self->super._explicitDisplayName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setExplicitDisplayName:(id)name
{
  nameCopy = name;
  if (self->super._explicitDisplayName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"explicitDisplayName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"explicitDisplayName"];
    [v5 assertValueType:nameCopy];

    v6 = [nameCopy copy];
    [(CNMutableContact *)self _setExplicitDisplayName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)sectionForSortingByFamilyName
{
  v3 = self->super._sectionForSortingByFamilyName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setSectionForSortingByFamilyName:(id)name
{
  nameCopy = name;
  if (self->super._sectionForSortingByFamilyName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sectionForSortingByFamilyName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"sectionForSortingByFamilyName"];
    [v5 assertValueType:nameCopy];

    v6 = [nameCopy copy];
    [(CNMutableContact *)self _setSectionForSortingByFamilyName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)sectionForSortingByGivenName
{
  v3 = self->super._sectionForSortingByGivenName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setSectionForSortingByGivenName:(id)name
{
  nameCopy = name;
  if (self->super._sectionForSortingByGivenName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sectionForSortingByGivenName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"sectionForSortingByGivenName"];
    [v5 assertValueType:nameCopy];

    v6 = [nameCopy copy];
    [(CNMutableContact *)self _setSectionForSortingByGivenName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)organizationName
{
  v3 = self->super._organizationName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setOrganizationName:(NSString *)organizationName
{
  v8 = organizationName;
  if (self->super._organizationName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"organizationName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"organizationName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setOrganizationName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)departmentName
{
  v3 = self->super._departmentName;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setDepartmentName:(NSString *)departmentName
{
  v8 = departmentName;
  if (self->super._departmentName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"departmentName"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"departmentName"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setDepartmentName:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)jobTitle
{
  v3 = self->super._jobTitle;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setJobTitle:(NSString *)jobTitle
{
  v8 = jobTitle;
  if (self->super._jobTitle || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"jobTitle"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"jobTitle"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setJobTitle:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSDateComponents)birthday
{
  v3 = [(NSDateComponents *)self->super._birthday copy];
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setBirthday:(NSDateComponents *)birthday
{
  v8 = birthday;
  if (self->super._birthday || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"birthday"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"birthday"];
    [v5 assertValueType:v8];

    v6 = [(NSDateComponents *)v8 copy];
    [(CNMutableContact *)self _setBirthday:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSDateComponents)nonGregorianBirthday
{
  v3 = [(NSDateComponents *)self->super._nonGregorianBirthday copy];
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setNonGregorianBirthday:(NSDateComponents *)nonGregorianBirthday
{
  v8 = nonGregorianBirthday;
  if (self->super._nonGregorianBirthday || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"nonGregorianBirthday"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"nonGregorianBirthday"];
    [v5 assertValueType:v8];

    v6 = [(NSDateComponents *)v8 copy];
    [(CNMutableContact *)self _setNonGregorianBirthday:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSDate)creationDate
{
  v3 = self->super._creationDate;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setCreationDate:(id)date
{
  dateCopy = date;
  if (self->super._creationDate || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"creationDate"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"creationDate"];
    [v5 assertValueType:dateCopy];

    v6 = [dateCopy copy];
    [(CNMutableContact *)self _setCreationDate:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSDate)modificationDate
{
  v3 = self->super._modificationDate;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setModificationDate:(id)date
{
  dateCopy = date;
  if (self->super._modificationDate || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"modificationDate"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"modificationDate"];
    [v5 assertValueType:dateCopy];

    v6 = [dateCopy copy];
    [(CNMutableContact *)self _setModificationDate:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)note
{
  v3 = self->super._note;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setNote:(NSString *)note
{
  v8 = note;
  if (self->super._note || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"note"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"note"];
    [v5 assertValueType:v8];

    v6 = [(NSString *)v8 copy];
    [(CNMutableContact *)self _setNote:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setImageData:(NSData *)imageData
{
  v8 = imageData;
  if (self->super._imageData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"imageData"];
    [v5 assertValueType:v8];

    v6 = [(NSData *)v8 copy];
    [(CNMutableContact *)self _setImageData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)_setImageData:(id)data
{
  objc_storeStrong(&self->super._imageData, data);
  [(CNMutableContact *)self updateImageDataAvailableFromCurrentState];

  [(CNMutableContact *)self resetIsUsingSharedPhoto];
}

- (void)setCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CNContact *)self assertKeyIsAvailable:@"cropRect"];
  self->super._cropRect.origin.x = x;
  self->super._cropRect.origin.y = y;
  self->super._cropRect.size.width = width;
  self->super._cropRect.size.height = height;
}

- (void)setThumbnailImageData:(id)data
{
  dataCopy = data;
  if (self->super._thumbnailImageData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"thumbnailImageData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"thumbnailImageData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setThumbnailImageData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)_setThumbnailImageData:(id)data
{
  objc_storeStrong(&self->super._thumbnailImageData, data);
  [(CNMutableContact *)self updateImageDataAvailableFromCurrentState];

  [(CNMutableContact *)self resetIsUsingSharedPhoto];
}

- (void)setFullscreenImageData:(id)data
{
  dataCopy = data;
  if (self->super._fullscreenImageData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"fullscreenImageData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"fullscreenImageData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setFullscreenImageData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)_setFullscreenImageData:(id)data
{
  objc_storeStrong(&self->super._fullscreenImageData, data);
  [(CNMutableContact *)self updateImageDataAvailableFromCurrentState];

  [(CNMutableContact *)self resetIsUsingSharedPhoto];
}

- (NSData)syncImageData
{
  v3 = self->super._syncImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setSyncImageData:(id)data
{
  dataCopy = data;
  if (self->super._syncImageData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"syncImageData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"syncImageData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setSyncImageData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)linkIdentifier
{
  v3 = self->super._linkIdentifier;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setLinkIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->super._linkIdentifier || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"linkIdentifier"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"linkIdentifier"];
    [v5 assertValueType:identifierCopy];

    v6 = [identifierCopy copy];
    [(CNMutableContact *)self _setLinkIdentifier:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (BOOL)preferredForName
{
  preferredForName = self->super._preferredForName;
  availableKeyDescriptor = self->super._availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredForName"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return preferredForName;
}

- (void)setPreferredForName:(BOOL)name
{
  if (self->super._preferredForName || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredForName"])
  {
    self->super._preferredForName = name;
  }

  else
  {

    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (BOOL)preferredForImage
{
  preferredForImage = self->super._preferredForImage;
  availableKeyDescriptor = self->super._availableKeyDescriptor;
  if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredForImage"])
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }

  return preferredForImage;
}

- (void)setPreferredForImage:(BOOL)image
{
  if (self->super._preferredForImage || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredForImage"])
  {
    self->super._preferredForImage = image;
  }

  else
  {

    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setContactType:(CNContactType)contactType
{
  if (self->super._contactType || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"contactType"])
  {
    self->super._contactType = contactType;
  }

  else
  {

    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setSharedPhotoDisplayPreference:(int64_t)preference
{
  if (self->super._sharedPhotoDisplayPreference || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sharedPhotoDisplayPreference"])
  {
    self->super._sharedPhotoDisplayPreference = preference;
  }

  else
  {

    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)cardDAVUID
{
  v2 = [(NSString *)self->super._cardDAVUID copy];

  return v2;
}

- (void)setCardDAVUID:(id)d
{
  if (self->super._cardDAVUID != d)
  {
    v4 = [d copy];
    cardDAVUID = self->super._cardDAVUID;
    self->super._cardDAVUID = v4;

    MEMORY[0x1EEE66BB8](v4, cardDAVUID);
  }
}

- (NSString)phonemeData
{
  v3 = self->super._phonemeData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPhonemeData:(id)data
{
  dataCopy = data;
  if (self->super._phonemeData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phonemeData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"phonemeData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setPhonemeData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (CNActivityAlert)callAlert
{
  v3 = self->super._callAlert;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setCallAlert:(id)alert
{
  alertCopy = alert;
  if (self->super._callAlert || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"callAlert"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"callAlert"];
    [v5 assertValueType:alertCopy];

    v6 = [alertCopy copy];
    [(CNMutableContact *)self _setCallAlert:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (CNActivityAlert)textAlert
{
  v3 = self->super._textAlert;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setTextAlert:(id)alert
{
  alertCopy = alert;
  if (self->super._textAlert || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"textAlert"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"textAlert"];
    [v5 assertValueType:alertCopy];

    v6 = [alertCopy copy];
    [(CNMutableContact *)self _setTextAlert:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)externalIdentifier
{
  v3 = self->super._externalIdentifier;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->super._externalIdentifier || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalIdentifier"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"externalIdentifier"];
    [v5 assertValueType:identifierCopy];

    v6 = [identifierCopy copy];
    [(CNMutableContact *)self _setExternalIdentifier:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSData)externalRepresentation
{
  v3 = self->super._externalRepresentation;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setExternalRepresentation:(id)representation
{
  representationCopy = representation;
  if (self->super._externalRepresentation || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalRepresentation"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"externalRepresentation"];
    [v5 assertValueType:representationCopy];

    v6 = [representationCopy copy];
    [(CNMutableContact *)self _setExternalRepresentation:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)externalModificationTag
{
  v3 = self->super._externalModificationTag;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setExternalModificationTag:(id)tag
{
  tagCopy = tag;
  if (self->super._externalModificationTag || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalModificationTag"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"externalModificationTag"];
    [v5 assertValueType:tagCopy];

    v6 = [tagCopy copy];
    [(CNMutableContact *)self _setExternalModificationTag:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)externalUUID
{
  v3 = self->super._externalUUID;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setExternalUUID:(id)d
{
  dCopy = d;
  if (self->super._externalUUID || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalUUID"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"externalUUID"];
    [v5 assertValueType:dCopy];

    v6 = [dCopy copy];
    [(CNMutableContact *)self _setExternalUUID:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)externalImageURI
{
  v3 = self->super._externalImageURI;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setExternalImageURI:(id)i
{
  iCopy = i;
  if (self->super._externalImageURI || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"externalImageURI"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"externalImageURI"];
    [v5 assertValueType:iCopy];

    v6 = [iCopy copy];
    [(CNMutableContact *)self _setExternalImageURI:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)mapsData
{
  v3 = self->super._mapsData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setMapsData:(id)data
{
  dataCopy = data;
  if (self->super._mapsData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"mapsData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"mapsData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setMapsData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setImplicitAugmentation:(BOOL)augmentation
{
  v4 = [(CNContact *)self flags]& 0xFFFFFFFFFFFFFFFELL | augmentation;

  [(CNMutableContact *)self setFlags:v4];
}

- (void)setPhoneNumbers:(NSArray *)phoneNumbers
{
  v12 = phoneNumbers;
  v4 = self->super._phoneNumbers;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"phoneNumbers"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"phoneNumbers"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setPhoneNumbers:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"phoneNumbers"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  if (self->super._phoneNumbers != numbersCopy)
  {
    if (!numbersCopy)
    {
      numbersCopy = +[CNLabeledValue emptyEntries];
    }

    obj = numbersCopy;
    objc_storeStrong(&self->super._phoneNumbers, numbersCopy);
    numbersCopy = obj;
  }
}

- (void)setEmailAddresses:(NSArray *)emailAddresses
{
  v12 = emailAddresses;
  v4 = self->super._emailAddresses;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"emailAddresses"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"emailAddresses"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setEmailAddresses:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"emailAddresses"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (self->super._emailAddresses != addressesCopy)
  {
    if (!addressesCopy)
    {
      addressesCopy = +[CNLabeledValue emptyEntries];
    }

    obj = addressesCopy;
    objc_storeStrong(&self->super._emailAddresses, addressesCopy);
    addressesCopy = obj;
  }
}

- (NSArray)urlAddresses
{
  v3 = self->super._urlAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setUrlAddresses:(NSArray *)urlAddresses
{
  v12 = urlAddresses;
  v4 = self->super._urlAddresses;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"urlAddresses"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"urlAddresses"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setUrlAddresses:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"urlAddresses"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setUrlAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (self->super._urlAddresses != addressesCopy)
  {
    if (!addressesCopy)
    {
      addressesCopy = +[CNLabeledValue emptyEntries];
    }

    obj = addressesCopy;
    objc_storeStrong(&self->super._urlAddresses, addressesCopy);
    addressesCopy = obj;
  }
}

- (NSArray)dates
{
  v3 = self->super._dates;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setDates:(NSArray *)dates
{
  v12 = dates;
  v4 = self->super._dates;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"dates"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"dates"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setDates:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"dates"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setDates:(id)dates
{
  datesCopy = dates;
  if (self->super._dates != datesCopy)
  {
    if (!datesCopy)
    {
      datesCopy = +[CNLabeledValue emptyEntries];
    }

    obj = datesCopy;
    objc_storeStrong(&self->super._dates, datesCopy);
    datesCopy = obj;
  }
}

- (NSArray)instantMessageAddresses
{
  v3 = self->super._instantMessageAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setInstantMessageAddresses:(NSArray *)instantMessageAddresses
{
  v12 = instantMessageAddresses;
  v4 = self->super._instantMessageAddresses;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"instantMessageAddresses"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"instantMessageAddresses"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setInstantMessageAddresses:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"instantMessageAddresses"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setInstantMessageAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (self->super._instantMessageAddresses != addressesCopy)
  {
    if (!addressesCopy)
    {
      addressesCopy = +[CNLabeledValue emptyEntries];
    }

    obj = addressesCopy;
    objc_storeStrong(&self->super._instantMessageAddresses, addressesCopy);
    addressesCopy = obj;
  }
}

- (NSArray)contactRelations
{
  v3 = self->super._contactRelations;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setContactRelations:(NSArray *)contactRelations
{
  v12 = contactRelations;
  v4 = self->super._contactRelations;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"contactRelations"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"contactRelations"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setContactRelations:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"contactRelations"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setContactRelations:(id)relations
{
  relationsCopy = relations;
  if (self->super._contactRelations != relationsCopy)
  {
    if (!relationsCopy)
    {
      relationsCopy = +[CNLabeledValue emptyEntries];
    }

    obj = relationsCopy;
    objc_storeStrong(&self->super._contactRelations, relationsCopy);
    relationsCopy = obj;
  }
}

- (NSArray)socialProfiles
{
  v3 = self->super._socialProfiles;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setSocialProfiles:(NSArray *)socialProfiles
{
  v12 = socialProfiles;
  v4 = self->super._socialProfiles;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"socialProfiles"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"socialProfiles"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setSocialProfiles:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"socialProfiles"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setSocialProfiles:(id)profiles
{
  profilesCopy = profiles;
  if (self->super._socialProfiles != profilesCopy)
  {
    if (!profilesCopy)
    {
      profilesCopy = +[CNLabeledValue emptyEntries];
    }

    obj = profilesCopy;
    objc_storeStrong(&self->super._socialProfiles, profilesCopy);
    profilesCopy = obj;
  }
}

- (NSArray)postalAddresses
{
  v3 = self->super._postalAddresses;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPostalAddresses:(NSArray *)postalAddresses
{
  v12 = postalAddresses;
  v4 = self->super._postalAddresses;
  if (!v4)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"postalAddresses"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"postalAddresses"];
    [v8 assertValueType:v12];

    v9 = [(NSArray *)v12 copy];
    [(CNMutableContact *)self _setPostalAddresses:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (v4 != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"postalAddresses"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setPostalAddresses:(id)addresses
{
  addressesCopy = addresses;
  if (self->super._postalAddresses != addressesCopy)
  {
    if (!addressesCopy)
    {
      addressesCopy = +[CNLabeledValue emptyEntries];
    }

    obj = addressesCopy;
    objc_storeStrong(&self->super._postalAddresses, addressesCopy);
    addressesCopy = obj;
  }
}

- (NSArray)calendarURIs
{
  v3 = self->super._calendarURIs;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setCalendarURIs:(id)is
{
  isCopy = is;
  calendarURIs = self->super._calendarURIs;
  if (!calendarURIs)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"calendarURIs"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"calendarURIs"];
    [v8 assertValueType:isCopy];

    v9 = [isCopy copy];
    [(CNMutableContact *)self _setCalendarURIs:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (calendarURIs != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"calendarURIs"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setCalendarURIs:(id)is
{
  isCopy = is;
  if (self->super._calendarURIs != isCopy)
  {
    if (!isCopy)
    {
      isCopy = +[CNLabeledValue emptyEntries];
    }

    obj = isCopy;
    objc_storeStrong(&self->super._calendarURIs, isCopy);
    isCopy = obj;
  }
}

- (NSArray)addressingGrammars
{
  v3 = self->super._addressingGrammars;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setAddressingGrammars:(id)grammars
{
  grammarsCopy = grammars;
  addressingGrammars = self->super._addressingGrammars;
  if (!addressingGrammars)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"addressingGrammars"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"addressingGrammars"];
    [v8 assertValueType:grammarsCopy];

    v9 = [grammarsCopy copy];
    [(CNMutableContact *)self _setAddressingGrammars:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (addressingGrammars != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"addressingGrammars"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setAddressingGrammars:(id)grammars
{
  grammarsCopy = grammars;
  if (self->super._addressingGrammars != grammarsCopy)
  {
    if (!grammarsCopy)
    {
      grammarsCopy = +[CNLabeledValue emptyEntries];
    }

    obj = grammarsCopy;
    objc_storeStrong(&self->super._addressingGrammars, grammarsCopy);
    grammarsCopy = obj;
  }
}

- (NSArray)addressingGrammarsEncrypted
{
  v3 = self->super._addressingGrammarsEncrypted;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setAddressingGrammarsEncrypted:(id)encrypted
{
  encryptedCopy = encrypted;
  addressingGrammarsEncrypted = self->super._addressingGrammarsEncrypted;
  if (!addressingGrammarsEncrypted)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (availableKeyDescriptor && ![(CNContactKeyVector *)availableKeyDescriptor containsKey:@"addressingGrammarsEncrypted"])
    {
      goto LABEL_12;
    }

LABEL_6:
    v7 = +[CN contactPropertiesByKey];
    v8 = [v7 objectForKey:@"addressingGrammarsEncrypted"];
    [v8 assertValueType:encryptedCopy];

    v9 = [encryptedCopy copy];
    [(CNMutableContact *)self _setAddressingGrammarsEncrypted:v9];

    goto LABEL_7;
  }

  v5 = +[CNLabeledValue emptyEntries];
  if (addressingGrammarsEncrypted != v5 || (v10 = self->super._availableKeyDescriptor) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(CNContactKeyVector *)v10 containsKey:@"addressingGrammarsEncrypted"];

  if (v11)
  {
    goto LABEL_6;
  }

LABEL_12:
  +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
LABEL_7:
}

- (void)_setAddressingGrammarsEncrypted:(id)encrypted
{
  encryptedCopy = encrypted;
  if (self->super._addressingGrammarsEncrypted != encryptedCopy)
  {
    if (!encryptedCopy)
    {
      encryptedCopy = +[CNLabeledValue emptyEntries];
    }

    obj = encryptedCopy;
    objc_storeStrong(&self->super._addressingGrammarsEncrypted, encryptedCopy);
    encryptedCopy = obj;
  }
}

- (NSString)preferredLikenessSource
{
  v3 = self->super._preferredLikenessSource;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPreferredLikenessSource:(id)source
{
  sourceCopy = source;
  if (self->super._preferredLikenessSource || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredLikenessSource"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"preferredLikenessSource"];
    [v5 assertValueType:sourceCopy];

    v6 = [sourceCopy copy];
    [(CNMutableContact *)self _setPreferredLikenessSource:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)preferredApplePersonaIdentifier
{
  v3 = self->super._preferredApplePersonaIdentifier;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setPreferredApplePersonaIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->super._preferredApplePersonaIdentifier || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredApplePersonaIdentifier"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"preferredApplePersonaIdentifier"];
    [v5 assertValueType:identifierCopy];

    v6 = [identifierCopy copy];
    [(CNMutableContact *)self _setPreferredApplePersonaIdentifier:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)preferredChannel
{
  v3 = self->super._preferredChannel;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
    if (!availableKeyDescriptor || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredChannel"])
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

  v5 = self->super._availableKeyDescriptor;
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [(CNContactKeyVector *)v5 containsKey:@"preferredChannel"];

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

- (void)setPreferredChannel:(id)channel
{
  channelCopy = channel;
  if (self->super._preferredChannel || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"preferredChannel"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"preferredChannel"];
    [v5 assertValueType:channelCopy];

    v6 = [channelCopy copy];
    [(CNMutableContact *)self _setPreferredChannel:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)downtimeWhitelist
{
  v3 = self->super._downtimeWhitelist;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setDowntimeWhitelist:(id)whitelist
{
  whitelistCopy = whitelist;
  if (self->super._downtimeWhitelist || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"downtimeWhitelist"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"downtimeWhitelist"];
    [v5 assertValueType:whitelistCopy];

    v6 = [whitelistCopy copy];
    [(CNMutableContact *)self _setDowntimeWhitelist:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)imageType
{
  v3 = self->super._imageType;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setImageType:(id)type
{
  typeCopy = type;
  if (self->super._imageType || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageType"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"imageType"];
    [v5 assertValueType:typeCopy];

    v6 = [typeCopy copy];
    [(CNMutableContact *)self _setImageType:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSData)imageHash
{
  v3 = self->super._imageHash;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setImageHash:(id)hash
{
  hashCopy = hash;
  if (self->super._imageHash || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageHash"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"imageHash"];
    [v5 assertValueType:hashCopy];

    v6 = [hashCopy copy];
    [(CNMutableContact *)self _setImageHash:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSData)memojiMetadata
{
  v3 = self->super._memojiMetadata;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setMemojiMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->super._memojiMetadata || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"memojiMetadata"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"memojiMetadata"];
    [v5 assertValueType:metadataCopy];

    v6 = [metadataCopy copy];
    [(CNMutableContact *)self _setMemojiMetadata:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (CNWallpaper)wallpaper
{
  v3 = self->super._wallpaper;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  if (self->super._wallpaper || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaper"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"wallpaper"];
    [v5 assertValueType:wallpaperCopy];

    v6 = [wallpaperCopy copy];
    [(CNMutableContact *)self _setWallpaper:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (CNWallpaperMetadata)wallpaperMetadata
{
  v3 = self->super._wallpaperMetadata;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setWallpaperMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->super._wallpaperMetadata || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaperMetadata"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"wallpaperMetadata"];
    [v5 assertValueType:metadataCopy];

    v6 = [metadataCopy copy];
    [(CNMutableContact *)self _setWallpaperMetadata:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSData)watchWallpaperImageData
{
  v3 = self->super._watchWallpaperImageData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setWatchWallpaperImageData:(id)data
{
  dataCopy = data;
  if (self->super._watchWallpaperImageData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"watchWallpaperImageData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"watchWallpaperImageData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setWatchWallpaperImageData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSString)wallpaperURI
{
  v3 = self->super._wallpaperURI;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setWallpaperURI:(id)i
{
  iCopy = i;
  if (self->super._wallpaperURI || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaperURI"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"wallpaperURI"];
    [v5 assertValueType:iCopy];

    v6 = [iCopy copy];
    [(CNMutableContact *)self _setWallpaperURI:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setAvatarRecipeData:(id)data
{
  dataCopy = data;
  if (self->super._avatarRecipeData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"avatarRecipeData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"avatarRecipeData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setAvatarRecipeData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSData)imageBackgroundColorsData
{
  v3 = self->super._imageBackgroundColorsData;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setImageBackgroundColorsData:(id)data
{
  dataCopy = data;
  if (self->super._imageBackgroundColorsData || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageBackgroundColorsData"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"imageBackgroundColorsData"];
    [v5 assertValueType:dataCopy];

    v6 = [dataCopy copy];
    [(CNMutableContact *)self _setImageBackgroundColorsData:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (CNSensitiveContentConfiguration)sensitiveContentConfiguration
{
  v3 = self->super._sensitiveContentConfiguration;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setSensitiveContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->super._sensitiveContentConfiguration || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"sensitiveContentConfiguration"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"sensitiveContentConfiguration"];
    [v5 assertValueType:configurationCopy];

    v6 = [configurationCopy copy];
    [(CNMutableContact *)self _setSensitiveContentConfiguration:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSDate)imageSyncFailedTime
{
  v3 = self->super._imageSyncFailedTime;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setImageSyncFailedTime:(id)time
{
  timeCopy = time;
  if (self->super._imageSyncFailedTime || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"imageSyncFailedTime"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"imageSyncFailedTime"];
    [v5 assertValueType:timeCopy];

    v6 = [timeCopy copy];
    [(CNMutableContact *)self _setImageSyncFailedTime:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (NSDate)wallpaperSyncFailedTime
{
  v3 = self->super._wallpaperSyncFailedTime;
  if (!v3)
  {
    availableKeyDescriptor = self->super._availableKeyDescriptor;
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

  v5 = self->super._availableKeyDescriptor;
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

- (void)setWallpaperSyncFailedTime:(id)time
{
  timeCopy = time;
  if (self->super._wallpaperSyncFailedTime || (availableKeyDescriptor = self->super._availableKeyDescriptor) == 0 || [(CNContactKeyVector *)availableKeyDescriptor containsKey:@"wallpaperSyncFailedTime"])
  {
    v4 = +[CN contactPropertiesByKey];
    v5 = [v4 objectForKey:@"wallpaperSyncFailedTime"];
    [v5 assertValueType:timeCopy];

    v6 = [timeCopy copy];
    [(CNMutableContact *)self _setWallpaperSyncFailedTime:v6];
  }

  else
  {
    +[CNContact you_used_a_property_that_you_didnt_request_when_you_fetched_the_contact];
  }
}

- (void)setStoreIdentifier:(id)identifier
{
  if (self->super._storeIdentifier != identifier)
  {
    v4 = [identifier copy];
    storeIdentifier = self->super._storeIdentifier;
    self->super._storeIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, storeIdentifier);
  }
}

- (void)setStoreInfo:(id)info
{
  if (self->super._storeInfo != info)
  {
    v4 = [info copy];
    storeInfo = self->super._storeInfo;
    self->super._storeInfo = v4;

    MEMORY[0x1EEE66BB8](v4, storeInfo);
  }
}

- (void)setNilValueForKey:(id)key
{
  keyCopy = key;
  v5 = +[CN contactPropertiesByKey];
  v6 = [v5 objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    nilValue = [v6 nilValue];
    [v6 setCNValue:nilValue onContact:self];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CNMutableContact;
    [(CNMutableContact *)&v8 setNilValueForKey:keyCopy];
  }
}

- (void)updateStateFromContact:(id)contact
{
  if (contact)
  {
    [(CNMutableContact *)self overwriteStateFromContact:?];
  }

  else
  {
    [(CNMutableContact *)self resetToNewContact];
  }
}

- (void)resetToNewContact
{
  [(CNMutableContact *)self setSnapshot:0];
  v3 = MEMORY[0x1E695E0F0];

  [(CNMutableContact *)self setLinkedContacts:v3];
}

- (void)overwriteStateFromContact:(id)contact
{
  contactCopy = contact;
  __46__CNMutableContact_overwriteStateFromContact___block_invoke(contactCopy, contactCopy, self);
  snapshot = [contactCopy snapshot];

  if (snapshot)
  {
    snapshot2 = [(CNContact *)self snapshot];
    if (snapshot2)
    {
      v7 = [(CNContact *)CNMutableContact contactWithContact:snapshot2];
    }

    else
    {
      v7 = objc_alloc_init(CNMutableContact);
    }

    v8 = v7;
    snapshot3 = [contactCopy snapshot];
    __46__CNMutableContact_overwriteStateFromContact___block_invoke(snapshot3, snapshot3, v8);

    freeze = [(CNMutableContact *)v8 freeze];
    [(CNMutableContact *)self setSnapshot:freeze];
  }

  if ([(CNContact *)self isUnified])
  {
    linkedContacts = [(CNContact *)self linkedContacts];
    v12 = [linkedContacts _cn_indexBy:&__block_literal_global_229];

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__15;
    v23 = __Block_byref_object_dispose__15;
    array = [MEMORY[0x1E695DF70] array];
    linkedContacts2 = [contactCopy linkedContacts];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__CNMutableContact_overwriteStateFromContact___block_invoke_230;
    v15[3] = &unk_1E7413F50;
    v14 = v12;
    v16 = v14;
    v17 = &__block_literal_global_61;
    v18 = &v19;
    [linkedContacts2 enumerateObjectsUsingBlock:v15];

    [(CNMutableContact *)self setLinkedContacts:v20[5]];
    _Block_object_dispose(&v19, 8);
  }
}

void __46__CNMutableContact_overwriteStateFromContact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 keyVector];
  v7 = [v4 keyVector];
  v8 = [v6 keyVectorByAddingKeysFromKeyVector:v7];
  [v5 setAvailableKeyDescriptor:v8];

  v9 = [v4 keyVector];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CNMutableContact_overwriteStateFromContact___block_invoke_2;
  v12[3] = &unk_1E7413F08;
  v13 = v4;
  v14 = v5;
  v10 = v5;
  v11 = v4;
  [v9 enumeratePropertiesUsingBlock:v12];
}

void __46__CNMutableContact_overwriteStateFromContact___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 CNValueForContact:v3];
  [v4 setCNValue:v5 onContact:*(a1 + 40)];
}

void __46__CNMutableContact_overwriteStateFromContact___block_invoke_230(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v4 identifier];
  v8 = [v3 objectForKey:v5];

  if (v8)
  {
    (*(a1[5] + 16))();

    [*(*(a1[6] + 8) + 40) addObject:v8];
  }

  else
  {
    v6 = *(*(a1[6] + 8) + 40);
    v7 = [v4 mutableCopy];

    [v6 addObject:v7];
  }
}

- (void)removeKeys:(id)keys
{
  keysCopy = keys;
  if ([keysCopy count])
  {
    v5 = [CNContactKeyVector keyVectorWithKeys:keysCopy];
    __31__CNMutableContact_removeKeys___block_invoke(v5, self, v5);
    if ([(CNContact *)self isUnified])
    {
      linkedContacts = [(CNContact *)self linkedContacts];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __31__CNMutableContact_removeKeys___block_invoke_3;
      v7[3] = &unk_1E7413FC0;
      v9 = &__block_literal_global_234;
      v8 = v5;
      [linkedContacts _cn_each:v7];
    }
  }
}

void __31__CNMutableContact_removeKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 keyVector];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __31__CNMutableContact_removeKeys___block_invoke_2;
  v9[3] = &unk_1E7413F98;
  v10 = v4;
  v7 = v4;
  [v5 enumeratePropertiesUsingBlock:v9];
  v8 = [v6 keyVectorByRemovingKeysFromKeyVector:v5];

  [v7 setAvailableKeyDescriptor:v8];
}

void __31__CNMutableContact_removeKeys___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 nilValue];
  [v3 setCNValue:v4 onContact:*(a1 + 32)];
}

- (void)setSnapshot:(id)snapshot
{
  snapshot = self->super._snapshot;
  if (snapshot != snapshot)
  {
    self->super._snapshot = 0;
    snapshotCopy = snapshot;

    v6 = [snapshotCopy copy];
    v7 = self->super._snapshot;
    self->super._snapshot = v6;
  }
}

- (void)setAvailableKeyDescriptor:(id)descriptor
{
  v4 = [descriptor copy];
  availableKeyDescriptor = self->super._availableKeyDescriptor;
  self->super._availableKeyDescriptor = v4;

  MEMORY[0x1EEE66BB8](v4, availableKeyDescriptor);
}

- (CNContactKeyVector)availableKeyDescriptor
{
  v2 = [(CNContactKeyVector *)self->super._availableKeyDescriptor copy];

  return v2;
}

- (void)setLinkedContacts:(id)contacts
{
  if (self->super._linkedContacts != contacts)
  {
    v4 = MEMORY[0x1E695DEC8];
    contactsCopy = contacts;
    v6 = [[v4 alloc] initWithArray:contactsCopy];

    linkedContacts = self->super._linkedContacts;
    self->super._linkedContacts = v6;
  }
}

- (void)updateWithSharedProfile:(id)profile
{
  profileCopy = profile;
  imageData = [profileCopy imageData];
  [(CNMutableContact *)self setImageData:imageData];

  thumbnailImageData = [profileCopy thumbnailImageData];
  [(CNMutableContact *)self setThumbnailImageData:thumbnailImageData];

  [profileCopy cropRect];
  [(CNMutableContact *)self setCropRect:?];
  [(CNMutableContact *)self setMemojiMetadata:0];
  imageType = [profileCopy imageType];
  v7 = imageType;
  if (imageType)
  {
    v8 = imageType;
  }

  else
  {
    v8 = @"PHOTO";
  }

  [(CNMutableContact *)self setImageType:v8];

  imageData2 = [profileCopy imageData];
  _cn_md5Hash = [imageData2 _cn_md5Hash];
  [(CNMutableContact *)self setImageHash:_cn_md5Hash];

  [(CNMutableContact *)self setFullscreenImageData:0];
  wallpaper = [profileCopy wallpaper];
  LODWORD(_cn_md5Hash) = [wallpaper contentIsSensitive];

  if (_cn_md5Hash)
  {
    [(CNMutableContact *)self setWallpaper:0];
    [(CNMutableContact *)self setWatchWallpaperImageData:0];
  }

  else
  {
    wallpaper2 = [profileCopy wallpaper];
    [(CNMutableContact *)self setWallpaper:wallpaper2];

    watchWallpaperImageData = [profileCopy watchWallpaperImageData];
    [(CNMutableContact *)self setWatchWallpaperImageData:watchWallpaperImageData];
  }

  v14 = [CNSensitiveContentConfiguration configurationWithOverride:0];
  [(CNMutableContact *)self setSensitiveContentConfiguration:v14];

  avatarRecipeData = [profileCopy avatarRecipeData];
  [(CNMutableContact *)self setAvatarRecipeData:avatarRecipeData];
}

- (void)setRelatedNames:(id)names
{
  v17 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(namesCopy, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = namesCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CNContactRelation contactRelationWithName:*(*(&v12 + 1) + 8 * v10), v12];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(CNMutableContact *)self setContactRelations:v5];
}

@end