@interface LPiCloudSharingMetadata
+ (id)_applicationNameMap;
+ (id)extractApplicationFromURL:(id)l;
+ (id)extractApplicationNameFromURL:(id)l;
+ (id)extractKindFromURL:(id)l;
+ (id)extractTitleFromURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFreeformBoardLinkWithURL:(id)l;
- (BOOL)isSafariTabGroupLinkWithURL:(id)l;
- (LPiCloudSharingMetadata)initWithCoder:(id)coder;
- (id)_bottomLeadingCaptionStringWithApplicationName:(id)name originalURL:(id)l;
- (id)_topLeadingCaptionStringWithApplicationName:(id)name originalURL:(id)l;
- (id)computeIcon;
- (id)computeThumbnail;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)firstPartyAppIcon;
- (id)localizedApplicationNameWithURL:(id)l;
- (id)localizedKind;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)sharedObjectIconForTransformer:(id)transformer;
- (id)sharedObjectInformationForTransformer:(id)transformer;
- (id)sharedObjectSubtitleForTransformer:(id)transformer;
- (id)sharedObjectTitleForTransformer:(id)transformer;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPiCloudSharingMetadata

- (LPiCloudSharingMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = LPiCloudSharingMetadata;
  v5 = [(LPiCloudSharingMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"application");
    application = v5->_application;
    v5->_application = v6;

    v8 = decodeStringForKey(coderCopy, @"kind");
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = decodeStringForKey(coderCopy, @"title");
    title = v5->_title;
    v5->_title = v10;

    v12 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v14;

    v16 = objc_opt_class();
    v17 = [coderCopy _lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v16 andObjectsOfClass:objc_opt_class() forKey:@"encodedTokens"];
    encodedTokens = v5->_encodedTokens;
    v5->_encodedTokens = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_application forKey:@"application"];
  [coderCopy _lp_encodeStringIfNotNil:self->_kind forKey:@"kind"];
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_encodedTokens forKey:@"encodedTokens"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPiCloudSharingMetadata allocWithZone:zone];
  if (v4)
  {
    application = [(LPiCloudSharingMetadata *)self application];
    [(LPiCloudSharingMetadata *)v4 setApplication:application];

    kind = [(LPiCloudSharingMetadata *)self kind];
    [(LPiCloudSharingMetadata *)v4 setKind:kind];

    title = [(LPiCloudSharingMetadata *)self title];
    [(LPiCloudSharingMetadata *)v4 setTitle:title];

    icon = [(LPiCloudSharingMetadata *)self icon];
    [(LPiCloudSharingMetadata *)v4 setIcon:icon];

    thumbnail = [(LPiCloudSharingMetadata *)self thumbnail];
    [(LPiCloudSharingMetadata *)v4 setThumbnail:thumbnail];

    encodedTokens = [(LPiCloudSharingMetadata *)self encodedTokens];
    [(LPiCloudSharingMetadata *)v4 setEncodedTokens:encodedTokens];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPiCloudSharingMetadata;
  if ([(LPiCloudSharingMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[3], self->_application) & 1) != 0 && objectsAreEqual_0(v6[4], self->_kind) && objectsAreEqual_0(v6[5], self->_title) && objectsAreEqual_0(v6[6], self->_icon) && objectsAreEqual_0(v6[7], self->_thumbnail))
      {
        v5 = objectsAreEqual_0(v6[8], self->_encodedTokens);
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_enumerateAsynchronousFields:(id)fields
{
  fieldsCopy = fields;
  fieldsCopy[2](fieldsCopy, @"icon");
  fieldsCopy[2](fieldsCopy, @"thumbnail");
}

+ (id)_applicationNameMap
{
  v7[9] = *MEMORY[0x1E69E9840];
  v2 = _applicationNameMap_map;
  if (!_applicationNameMap_map)
  {
    v6[0] = @"notes";
    v6[1] = @"pages";
    v7[0] = @"Notes";
    v7[1] = @"Pages";
    v6[2] = @"numbers";
    v6[3] = @"keynote";
    v7[2] = @"Numbers";
    v7[3] = @"Keynote";
    v6[4] = @"freeform";
    v6[5] = @"freeform-copy";
    v7[4] = @"Freeform";
    v7[5] = @"Freeform";
    v6[6] = @"reminders";
    v6[7] = @"iclouddrive";
    v7[6] = @"Reminders";
    v7[7] = @"iCloud Drive";
    v6[8] = @"safari-tab-groups";
    v7[8] = @"Safari";
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:9];
    v4 = _applicationNameMap_map;
    _applicationNameMap_map = v3;

    v2 = _applicationNameMap_map;
  }

  return v2;
}

+ (id)extractApplicationFromURL:(id)l
{
  v3 = [l _lp_pathComponentAtIndex:1];

  return v3;
}

+ (id)extractApplicationNameFromURL:(id)l
{
  lCopy = l;
  v4 = [objc_opt_class() extractApplicationFromURL:lCopy];
  v5 = +[LPiCloudSharingMetadata _applicationNameMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)extractKindFromURL:(id)l
{
  lCopy = l;
  v5 = [self extractApplicationFromURL:lCopy];
  v6 = [v5 isEqual:@"freeform-copy"];

  if (v6)
  {
    v7 = @"copy";
  }

  else
  {
    v7 = [lCopy _lp_pathComponentAtIndex:2];
  }

  return v7;
}

+ (id)extractTitleFromURL:(id)l
{
  fragment = [l fragment];
  v4 = [fragment stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  stringByRemovingPercentEncoding = [v4 stringByRemovingPercentEncoding];

  return stringByRemovingPercentEncoding;
}

- (id)firstPartyAppIcon
{
  application = [(LPiCloudSharingMetadata *)self application];
  v4 = [application isEqualToString:@"Pages"];

  if (v4)
  {
    v5 = +[LPResources pagesIcon];
  }

  else
  {
    application2 = [(LPiCloudSharingMetadata *)self application];
    v7 = [application2 isEqualToString:@"Notes"];

    if (v7)
    {
      v5 = +[LPResources notesIcon];
    }

    else
    {
      application3 = [(LPiCloudSharingMetadata *)self application];
      v9 = [application3 isEqualToString:@"Numbers"];

      if (v9)
      {
        v5 = +[LPResources numbersIcon];
      }

      else
      {
        application4 = [(LPiCloudSharingMetadata *)self application];
        v11 = [application4 isEqualToString:@"Keynote"];

        if (v11)
        {
          v5 = +[LPResources keynoteIcon];
        }

        else
        {
          application5 = [(LPiCloudSharingMetadata *)self application];
          v13 = [application5 isEqualToString:@"iCloud Drive"];

          if (v13)
          {
            v5 = +[LPResources iCloudDriveIcon];
          }

          else
          {
            application6 = [(LPiCloudSharingMetadata *)self application];
            v15 = [application6 isEqualToString:@"Reminders"];

            if (v15)
            {
              v5 = +[LPResources remindersIcon];
            }

            else
            {
              application7 = [(LPiCloudSharingMetadata *)self application];
              v17 = [application7 isEqualToString:@"Safari"];

              if (v17)
              {
                v5 = +[LPResources safariAppIcon];
              }

              else
              {
                application8 = [(LPiCloudSharingMetadata *)self application];
                v19 = [application8 isEqualToString:@"Freeform"];

                if (v19)
                {
                  v5 = +[LPResources freeformIcon];
                }

                else
                {
                  v5 = 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (id)computeThumbnail
{
  icon = [(LPiCloudSharingMetadata *)self icon];
  if (icon && (v4 = icon, -[LPiCloudSharingMetadata icon](self, "icon"), v5 = objc_claimAutoreleasedReturnValue(), [v5 properties], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "type"), v6, v5, v4, v7))
  {
    icon2 = [(LPiCloudSharingMetadata *)self icon];
  }

  else
  {
    firstPartyAppIcon = [(LPiCloudSharingMetadata *)self firstPartyAppIcon];
    v10 = firstPartyAppIcon;
    if (firstPartyAppIcon)
    {
      v11 = firstPartyAppIcon;
    }

    else
    {
      v11 = +[LPResources iCloudDriveIcon];
    }

    icon2 = v11;
  }

  return icon2;
}

- (id)computeIcon
{
  firstPartyAppIcon = [(LPiCloudSharingMetadata *)self firstPartyAppIcon];
  v4 = firstPartyAppIcon;
  if (firstPartyAppIcon)
  {
    v5 = firstPartyAppIcon;
  }

  else
  {
    icon = [(LPiCloudSharingMetadata *)self icon];

    if (icon)
    {
      [(LPiCloudSharingMetadata *)self icon];
    }

    else
    {
      +[LPResources iCloudDriveIcon];
    }
    v5 = ;
  }

  v7 = v5;

  return v7;
}

- (BOOL)isSafariTabGroupLinkWithURL:(id)l
{
  lCopy = l;
  application = [(LPiCloudSharingMetadata *)self application];

  if (application)
  {
    application2 = [(LPiCloudSharingMetadata *)self application];
    v7 = [application2 isEqualToString:@"Safari"];
  }

  else
  {
    application2 = [objc_opt_class() extractApplicationFromURL:lCopy];
    v7 = [application2 isEqualToString:@"safari-tab-groups"];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isFreeformBoardLinkWithURL:(id)l
{
  lCopy = l;
  application = [(LPiCloudSharingMetadata *)self application];
  if (!application)
  {
    application = [objc_opt_class() extractApplicationNameFromURL:lCopy];
  }

  v6 = [application isEqualToString:@"Freeform"];

  return v6;
}

- (id)localizedApplicationNameWithURL:(id)l
{
  v30 = *MEMORY[0x1E69E9840];
  lCopy = l;
  application = [(LPiCloudSharingMetadata *)self application];

  if (!application)
  {
    v9 = [objc_opt_class() extractApplicationNameFromURL:lCopy];
    localizedName = LPLocalizedString(v9);

    goto LABEL_25;
  }

  application2 = [(LPiCloudSharingMetadata *)self application];
  v7 = [application2 isEqualToString:@"iCloud Drive"];

  if (v7)
  {
    application4 = LPLocalizedString(@"iCloud Drive");
LABEL_22:
    localizedName = application4;
    goto LABEL_25;
  }

  application3 = [(LPiCloudSharingMetadata *)self application];
  v12 = knownApplicationForName_map;
  if (!knownApplicationForName_map)
  {
    v12 = &unk_1F2483CD8;
    knownApplicationForName_map = &unk_1F2483CD8;
  }

  v13 = [v12 objectForKeyedSubscript:application3];
  v14 = v13;
  if (v13)
  {
    integerValue = [v13 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  if (!integerValue)
  {
    application4 = [(LPiCloudSharingMetadata *)self application];
    goto LABEL_22;
  }

  [LPApplicationIdentification bundleIdentifiersForKnownApplication:integerValue];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v16 = v26 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = *v26;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = objc_alloc(MEMORY[0x1E69635F8]);
        v22 = [v21 initWithBundleIdentifier:v20 allowPlaceholder:1 error:{0, v25}];
        v23 = v22;
        if (v22)
        {
          localizedName = [v22 localizedName];

          if (localizedName)
          {

            goto LABEL_24;
          }
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  localizedName = [(LPiCloudSharingMetadata *)self application];
LABEL_24:

LABEL_25:

  return localizedName;
}

- (id)localizedKind
{
  application = [(LPiCloudSharingMetadata *)self application];
  v4 = [application isEqualToString:@"Reminders"];

  if (v4)
  {
    kind = [(LPiCloudSharingMetadata *)self kind];
    v6 = [kind isEqualToString:@"Shared List"];

    if (v6)
    {
      v7 = @"Shared List";
LABEL_6:
      v10 = LPLocalizedString(v7);
      goto LABEL_8;
    }

    kind2 = [(LPiCloudSharingMetadata *)self kind];
    v9 = [kind2 isEqualToString:@"Template"];

    if (v9)
    {
      v7 = @"Template";
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_8:

  return v10;
}

- (id)_topLeadingCaptionStringWithApplicationName:(id)name originalURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  title = [(LPiCloudSharingMetadata *)self title];

  if (title)
  {
    title2 = [(LPiCloudSharingMetadata *)self title];
  }

  else
  {
    if ([(LPiCloudSharingMetadata *)self isFreeformBoardLinkWithURL:lCopy])
    {
      v10 = @"Freeform Board";
    }

    else
    {
      if (nameCopy)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = LPLocalizedString(@"Shared from %@");
        nameCopy = [v11 localizedStringWithFormat:v12, nameCopy];

        goto LABEL_10;
      }

      v10 = @"Shared using iCloud Sharing";
    }

    title2 = LPLocalizedString(v10);
  }

  nameCopy = title2;
LABEL_10:

  return nameCopy;
}

- (id)_bottomLeadingCaptionStringWithApplicationName:(id)name originalURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  title = [(LPiCloudSharingMetadata *)self title];

  if (title)
  {
    application = [(LPiCloudSharingMetadata *)self application];
    v10 = [application isEqualToString:@"Reminders"];

    if (v10)
    {
      kind = [(LPiCloudSharingMetadata *)self kind];
      v12 = [kind isEqualToString:@"Shared List"];

      if (v12)
      {
        v13 = @"Reminders Shared List";
LABEL_14:
        v17 = LPLocalizedString(v13);
        goto LABEL_15;
      }

      kind2 = [(LPiCloudSharingMetadata *)self kind];
      v16 = [kind2 isEqualToString:@"Template"];

      if (v16)
      {
        v13 = @"Reminders Template";
        goto LABEL_14;
      }
    }

    if ([(LPiCloudSharingMetadata *)self isSafariTabGroupLinkWithURL:lCopy])
    {
      v13 = @"Safari Tab Group";
      goto LABEL_14;
    }

    if (!nameCopy)
    {
      v13 = @"Shared using iCloud Sharing";
      goto LABEL_14;
    }
  }

  else if (![(LPiCloudSharingMetadata *)self isFreeformBoardLinkWithURL:lCopy])
  {
    v14 = 0;
    goto LABEL_16;
  }

  v17 = nameCopy;
LABEL_15:
  v14 = v17;
LABEL_16:

  return v14;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v6 = [transformerCopy commonPresentationPropertiesForStyle:16];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  thumbnail = [(LPiCloudSharingMetadata *)self thumbnail];
  image = thumbnail;
  if (!thumbnail)
  {
    metadata = [transformerCopy metadata];
    image = [metadata image];
  }

  [transformerCopy _populateProperties:v6 withPrimaryImage:image];
  if (!thumbnail)
  {
  }

  computeIcon = [(LPiCloudSharingMetadata *)self computeIcon];
  [transformerCopy _populateProperties:v6 withPrimaryIcon:computeIcon iconProperties:0 canBecomeImage:0];

  originalURL = [transformerCopy originalURL];
  v12 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:originalURL];

  originalURL2 = [transformerCopy originalURL];
  v14 = [(LPiCloudSharingMetadata *)self _topLeadingCaptionStringWithApplicationName:v12 originalURL:originalURL2];
  captionBar = [v6 captionBar];
  v16 = [captionBar top];
  leading = [v16 leading];
  [leading setText:v14];

  originalURL3 = [transformerCopy originalURL];
  v19 = [(LPiCloudSharingMetadata *)self _bottomLeadingCaptionStringWithApplicationName:v12 originalURL:originalURL3];
  captionBar2 = [v6 captionBar];
  bottom = [captionBar2 bottom];
  leading2 = [bottom leading];
  [leading2 setText:v19];

  return v6;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = [transformer URL];
  v5 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:v4];

  title = [(LPiCloudSharingMetadata *)self title];

  if (title && v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    localizedKind = LPLocalizedString(@"Link: “%@” shared from %@");
    title2 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v7 localizedStringWithFormat:localizedKind, title2, v5];
LABEL_11:
    v14 = v10;

    goto LABEL_12;
  }

  if (v5)
  {
    localizedKind = [(LPiCloudSharingMetadata *)self localizedKind];
    v11 = MEMORY[0x1E696AEC0];
    if (localizedKind)
    {
      title2 = LPLocalizedString(@"Link: %@ shared from %@");
      [v11 localizedStringWithFormat:title2, localizedKind, v5];
    }

    else
    {
      title2 = LPLocalizedString(@"Link: Document shared from %@");
      [v11 localizedStringWithFormat:title2, v5];
    }
    v10 = ;
    goto LABEL_11;
  }

  title3 = [(LPiCloudSharingMetadata *)self title];

  if (title3)
  {
    v13 = MEMORY[0x1E696AEC0];
    localizedKind = LPLocalizedString(@"Link: “%@” shared using iCloud Sharing");
    title2 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v13 localizedStringWithFormat:localizedKind, title2];
    goto LABEL_11;
  }

  v14 = LPLocalizedString(@"Link: Document shared using iCloud Sharing");
LABEL_12:

  return v14;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  v3 = +[LPResources iCloudIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  originalURL = [compatibilityCopy originalURL];
  v5 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:originalURL];

  title = [(LPiCloudSharingMetadata *)self title];

  if (title && v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"“%@” shared from %@");
    title2 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v7 localizedStringWithFormat:v8, title2, v5];
    [compatibilityCopy setTitle:v10];
LABEL_4:

LABEL_7:
    goto LABEL_8;
  }

  if (v5)
  {
    v11 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Document shared from %@");
    title2 = [v11 localizedStringWithFormat:v8, v5];
    [compatibilityCopy setTitle:title2];
    goto LABEL_7;
  }

  title3 = [(LPiCloudSharingMetadata *)self title];

  if (title3)
  {
    v15 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"“%@” shared using iCloud Sharing");
    title2 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v15 localizedStringWithFormat:v8, title2];
    [compatibilityCopy setTitle:v10];
    goto LABEL_4;
  }

  v8 = LPLocalizedString(@"Document shared using iCloud Sharing");
  [compatibilityCopy setTitle:v8];
LABEL_8:

  icon = [(LPiCloudSharingMetadata *)self icon];
  [compatibilityCopy setIcon:icon];

  thumbnail = [(LPiCloudSharingMetadata *)self thumbnail];
  [compatibilityCopy setImage:thumbnail];
}

- (id)sharedObjectTitleForTransformer:(id)transformer
{
  transformerCopy = transformer;
  originalURL = [transformerCopy originalURL];
  v6 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:originalURL];

  originalURL2 = [transformerCopy originalURL];
  v8 = [(LPiCloudSharingMetadata *)self _topLeadingCaptionStringWithApplicationName:v6 originalURL:originalURL2];

  return v8;
}

- (id)sharedObjectSubtitleForTransformer:(id)transformer
{
  transformerCopy = transformer;
  originalURL = [transformerCopy originalURL];
  v6 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:originalURL];

  originalURL2 = [transformerCopy originalURL];
  v8 = [(LPiCloudSharingMetadata *)self _bottomLeadingCaptionStringWithApplicationName:v6 originalURL:originalURL2];

  return v8;
}

- (id)sharedObjectInformationForTransformer:(id)transformer
{
  localizedKind = [(LPiCloudSharingMetadata *)self localizedKind];

  return localizedKind;
}

- (id)sharedObjectIconForTransformer:(id)transformer
{
  computeThumbnail = [(LPiCloudSharingMetadata *)self computeThumbnail];

  return computeThumbnail;
}

@end