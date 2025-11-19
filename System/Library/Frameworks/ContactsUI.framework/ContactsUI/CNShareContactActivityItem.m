@interface CNShareContactActivityItem
- (CNShareContactActivityItem)initWithContact:(id)a3;
- (CNShareContactActivityItem)initWithContacts:(id)a3 inGroupNamed:(id)a4;
- (LPLinkMetadata)linkMetadata;
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4;
- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5;
- (id)displayString;
- (id)thumbnailImage;
@end

@implementation CNShareContactActivityItem

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v5 = [(CNShareContactActivityItem *)self contacts:a3];
  v6 = [v5 count];

  if (v6 == 1)
  {
    v7 = [(CNShareContactActivityItem *)self contacts];
    v8 = [v7 firstObject];
    v9 = [CNUIVCardUtilities fileNameForContact:v8];
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v7 = [(CNShareContactActivityItem *)self displayString];
    v9 = [v10 stringWithFormat:@"%@.vcf", v7];
  }

  return v9;
}

- (id)activityViewController:(id)a3 thumbnailImageForActivityType:(id)a4 suggestedSize:(CGSize)a5
{
  width = a5.width;
  v7 = a4;
  v8 = [(CNShareContactActivityItem *)self contacts];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = [(CNShareContactActivityItem *)self contacts];
    v11 = [v10 firstObject];

    if ([v7 isEqualToString:*MEMORY[0x1E69CDA78]])
    {
      v12 = [[CNMonogrammer alloc] initWithStyle:2 diameter:width];
      [(CNMonogrammer *)v12 monogramForContact:v11];
    }

    else
    {
      v14 = MEMORY[0x1E69DCAB8];
      v12 = [v11 thumbnailImageData];
      [v14 imageWithData:v12];
    }
    v13 = ;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)activityViewController:(id)a3 subjectForActivityType:(id)a4
{
  v4 = [(CNShareContactActivityItem *)self linkMetadata:a3];
  v5 = [v4 title];

  return v5;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = [MEMORY[0x1E69E4B40] optionsFromPreferences];
  [v5 setIncludePhotos:1];
  [v5 setIncludeNotes:1];
  v6 = [MEMORY[0x1E69966E8] currentEnvironment];
  v7 = [v6 featureFlags];
  if ([v7 isFeatureEnabled:23])
  {
    v8 = [(CNShareContactActivityItem *)self canSharePronouns];

    if (v8)
    {
      [v5 setIncludePronouns:1];
      [v5 setUseUnencryptedPronouns:1];
    }
  }

  else
  {
  }

  [v5 setIncludeMeCardOnlySharingProperties:{-[CNShareContactActivityItem canShareMeCardOnlySharingProperties](self, "canShareMeCardOnlySharingProperties")}];
  v9 = MEMORY[0x1E695CE30];
  v10 = [(CNShareContactActivityItem *)self contacts];
  v11 = [v9 dataWithContacts:v10 options:v5 error:0];

  return v11;
}

- (id)thumbnailImage
{
  v3 = [(CNShareContactActivityItem *)self contacts];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(CNShareContactActivityItem *)self contacts];
    v6 = [v5 firstObject];

    v7 = [v6 thumbnailImageData];

    if (v7)
    {
      v8 = MEMORY[0x1E69DCAB8];
      v9 = [v6 thumbnailImageData];
      v10 = [v8 imageWithData:v9];
    }

    else
    {
      v11 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v11 scale];
      v13 = v12;

      v9 = +[CNAvatarImageRenderingScope scopeWithPointSize:scale:rightToLeft:style:color:](CNAvatarImageRenderingScope, "scopeWithPointSize:scale:rightToLeft:style:color:", [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1, 0, 0, 160.0, 160.0, v13);
      v14 = [CNAvatarImageRenderer alloc];
      v15 = +[CNAvatarImageRendererSettings defaultSettings];
      v16 = [(CNAvatarImageRenderer *)v14 initWithSettings:v15];

      v10 = [(CNAvatarImageRenderer *)v16 renderMonogramForContact:v6 color:0 scope:v9 prohibitedSources:0];
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
  v3 = [(CNShareContactActivityItem *)self contacts];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [(CNShareContactActivityItem *)self contacts];
    v6 = [v5 firstObject];

    v7 = [(CNShareContactActivityItem *)self contactFormatter];
    v8 = [v7 stringFromContact:v6];

    v9 = *MEMORY[0x1E6996568];
    if (!(*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v8))
    {
      goto LABEL_7;
    }

    v10 = [v6 phoneNumbers];
    v11 = [v10 firstObject];
    v12 = [v11 value];

    v13 = [v12 formattedStringValue];

    if ((*(v9 + 16))(v9, v13))
    {
      v14 = [v6 emailAddresses];
      v15 = [v14 firstObject];
      v16 = [v15 value];

      v13 = v16;
    }
  }

  else
  {
    v17 = [CNGroupIdentity alloc];
    v18 = [(CNShareContactActivityItem *)self groupName];
    v19 = [(CNShareContactActivityItem *)self contacts];
    v6 = [(CNGroupIdentity *)v17 initGroupWithName:v18 photo:0 contacts:v19];

    v12 = [(CNShareContactActivityItem *)self contactFormatter];
    v13 = [v12 stringFromGroupIdentity:v6];
  }

  v8 = v13;
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

    v8 = [(CNShareContactActivityItem *)self displayString];
    [(LPFileMetadata *)self->_fileMetadata setName:v8];

    v9 = getkUTTypeVCard();
    [(LPFileMetadata *)self->_fileMetadata setType:v9];

    v10 = [(CNShareContactActivityItem *)self thumbnailImage];
    if (v10)
    {
      v11 = [objc_alloc(getLPImageClass()) initWithPlatformImage:v10];
      [(LPFileMetadata *)self->_fileMetadata setThumbnail:v11];
    }

    [(LPLinkMetadata *)self->_linkMetadata setSpecialization:self->_fileMetadata];
    v12 = [(CNShareContactActivityItem *)self displayString];
    [(LPLinkMetadata *)self->_linkMetadata setTitle:v12];

    linkMetadata = self->_linkMetadata;
  }

  return linkMetadata;
}

- (CNShareContactActivityItem)initWithContacts:(id)a3 inGroupNamed:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNShareContactActivityItem;
  v9 = [(CNShareContactActivityItem *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contacts, a3);
    objc_storeStrong(&v10->_groupName, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695CD80]);
    contactFormatter = v10->_contactFormatter;
    v10->_contactFormatter = v11;

    [(CNContactFormatter *)v10->_contactFormatter setStyle:0];
    v13 = v10;
  }

  return v10;
}

- (CNShareContactActivityItem)initWithContact:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(CNShareContactActivityItem *)self initWithContacts:v6 inGroupNamed:0, v9, v10];
  return v7;
}

@end