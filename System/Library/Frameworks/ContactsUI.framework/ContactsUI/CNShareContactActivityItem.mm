@interface CNShareContactActivityItem
- (CNShareContactActivityItem)initWithContact:(id)contact;
- (CNShareContactActivityItem)initWithContacts:(id)contacts inGroupNamed:(id)named;
- (LPLinkMetadata)linkMetadata;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size;
- (id)displayString;
- (id)thumbnailImage;
@end

@implementation CNShareContactActivityItem

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  v5 = [(CNShareContactActivityItem *)self contacts:controller];
  v6 = [v5 count];

  if (v6 == 1)
  {
    contacts = [(CNShareContactActivityItem *)self contacts];
    firstObject = [contacts firstObject];
    v9 = [CNUIVCardUtilities fileNameForContact:firstObject];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    contacts = [(CNShareContactActivityItem *)self displayString];
    v9 = [v10 stringWithFormat:@"%@.vcf", contacts];
  }

  return v9;
}

- (id)activityViewController:(id)controller thumbnailImageForActivityType:(id)type suggestedSize:(CGSize)size
{
  width = size.width;
  typeCopy = type;
  contacts = [(CNShareContactActivityItem *)self contacts];
  v9 = [contacts count];

  if (v9 == 1)
  {
    contacts2 = [(CNShareContactActivityItem *)self contacts];
    firstObject = [contacts2 firstObject];

    if ([typeCopy isEqualToString:*MEMORY[0x1E69CDA78]])
    {
      thumbnailImageData = [[CNMonogrammer alloc] initWithStyle:2 diameter:width];
      [(CNMonogrammer *)thumbnailImageData monogramForContact:firstObject];
    }

    else
    {
      v14 = MEMORY[0x1E69DCAB8];
      thumbnailImageData = [firstObject thumbnailImageData];
      [v14 imageWithData:thumbnailImageData];
    }
    v13 = ;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  v4 = [(CNShareContactActivityItem *)self linkMetadata:controller];
  title = [v4 title];

  return title;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  optionsFromPreferences = [MEMORY[0x1E69E4B40] optionsFromPreferences];
  [optionsFromPreferences setIncludePhotos:1];
  [optionsFromPreferences setIncludeNotes:1];
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  if ([featureFlags isFeatureEnabled:23])
  {
    canSharePronouns = [(CNShareContactActivityItem *)self canSharePronouns];

    if (canSharePronouns)
    {
      [optionsFromPreferences setIncludePronouns:1];
      [optionsFromPreferences setUseUnencryptedPronouns:1];
    }
  }

  else
  {
  }

  [optionsFromPreferences setIncludeMeCardOnlySharingProperties:{-[CNShareContactActivityItem canShareMeCardOnlySharingProperties](self, "canShareMeCardOnlySharingProperties")}];
  v9 = MEMORY[0x1E695CE30];
  contacts = [(CNShareContactActivityItem *)self contacts];
  v11 = [v9 dataWithContacts:contacts options:optionsFromPreferences error:0];

  return v11;
}

- (id)thumbnailImage
{
  contacts = [(CNShareContactActivityItem *)self contacts];
  v4 = [contacts count];

  if (v4 == 1)
  {
    contacts2 = [(CNShareContactActivityItem *)self contacts];
    firstObject = [contacts2 firstObject];

    thumbnailImageData = [firstObject thumbnailImageData];

    if (thumbnailImageData)
    {
      v8 = MEMORY[0x1E69DCAB8];
      thumbnailImageData2 = [firstObject thumbnailImageData];
      v10 = [v8 imageWithData:thumbnailImageData2];
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen scale];
      v13 = v12;

      thumbnailImageData2 = +[CNAvatarImageRenderingScope scopeWithPointSize:scale:rightToLeft:style:color:](CNAvatarImageRenderingScope, "scopeWithPointSize:scale:rightToLeft:style:color:", [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, 0, 0, 160.0, 160.0, v13);
      v14 = [CNAvatarImageRenderer alloc];
      v15 = +[CNAvatarImageRendererSettings defaultSettings];
      v16 = [(CNAvatarImageRenderer *)v14 initWithSettings:v15];

      v10 = [(CNAvatarImageRenderer *)v16 renderMonogramForContact:firstObject color:0 scope:thumbnailImageData2 prohibitedSources:0];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)displayString
{
  contacts = [(CNShareContactActivityItem *)self contacts];
  v4 = [contacts count];

  if (v4 == 1)
  {
    contacts2 = [(CNShareContactActivityItem *)self contacts];
    firstObject = [contacts2 firstObject];

    contactFormatter = [(CNShareContactActivityItem *)self contactFormatter];
    v8 = [contactFormatter stringFromContact:firstObject];

    v9 = *MEMORY[0x1E6996568];
    if (!(*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v8))
    {
      goto LABEL_7;
    }

    phoneNumbers = [firstObject phoneNumbers];
    firstObject2 = [phoneNumbers firstObject];
    value = [firstObject2 value];

    formattedStringValue = [value formattedStringValue];

    if ((*(v9 + 16))(v9, formattedStringValue))
    {
      emailAddresses = [firstObject emailAddresses];
      firstObject3 = [emailAddresses firstObject];
      value2 = [firstObject3 value];

      formattedStringValue = value2;
    }
  }

  else
  {
    v17 = [CNGroupIdentity alloc];
    groupName = [(CNShareContactActivityItem *)self groupName];
    contacts3 = [(CNShareContactActivityItem *)self contacts];
    firstObject = [(CNGroupIdentity *)v17 initGroupWithName:groupName photo:0 contacts:contacts3];

    value = [(CNShareContactActivityItem *)self contactFormatter];
    formattedStringValue = [value stringFromGroupIdentity:firstObject];
  }

  v8 = formattedStringValue;
LABEL_7:

  return v8;
}

- (LPLinkMetadata)linkMetadata
{
  linkMetadata = self->_linkMetadata;
  if (!linkMetadata)
  {
    v4 = objc_alloc_init(getLPLinkMetadataClass());
    v5 = self->_linkMetadata;
    self->_linkMetadata = v4;

    v6 = objc_alloc_init(getLPFileMetadataClass());
    fileMetadata = self->_fileMetadata;
    self->_fileMetadata = v6;

    displayString = [(CNShareContactActivityItem *)self displayString];
    [(LPFileMetadata *)self->_fileMetadata setName:displayString];

    v9 = getkUTTypeVCard();
    [(LPFileMetadata *)self->_fileMetadata setType:v9];

    thumbnailImage = [(CNShareContactActivityItem *)self thumbnailImage];
    if (thumbnailImage)
    {
      v11 = [objc_alloc(getLPImageClass()) initWithPlatformImage:thumbnailImage];
      [(LPFileMetadata *)self->_fileMetadata setThumbnail:v11];
    }

    [(LPLinkMetadata *)self->_linkMetadata setSpecialization:self->_fileMetadata];
    displayString2 = [(CNShareContactActivityItem *)self displayString];
    [(LPLinkMetadata *)self->_linkMetadata setTitle:displayString2];

    linkMetadata = self->_linkMetadata;
  }

  return linkMetadata;
}

- (CNShareContactActivityItem)initWithContacts:(id)contacts inGroupNamed:(id)named
{
  contactsCopy = contacts;
  namedCopy = named;
  v15.receiver = self;
  v15.super_class = CNShareContactActivityItem;
  v9 = [(CNShareContactActivityItem *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contacts, contacts);
    objc_storeStrong(&v10->_groupName, named);
    v11 = objc_alloc_init(MEMORY[0x1E695CD80]);
    contactFormatter = v10->_contactFormatter;
    v10->_contactFormatter = v11;

    [(CNContactFormatter *)v10->_contactFormatter setStyle:0];
    v13 = v10;
  }

  return v10;
}

- (CNShareContactActivityItem)initWithContact:(id)contact
{
  v10 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v4 = MEMORY[0x1E695DEC8];
  contactCopy2 = contact;
  v6 = [v4 arrayWithObjects:&contactCopy count:1];

  v7 = [(CNShareContactActivityItem *)self initWithContacts:v6 inGroupNamed:0, contactCopy, v10];
  return v7;
}

@end