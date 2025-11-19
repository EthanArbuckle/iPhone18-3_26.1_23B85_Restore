@interface LPiCloudSharingMetadata
+ (id)_applicationNameMap;
+ (id)extractApplicationFromURL:(id)a3;
+ (id)extractApplicationNameFromURL:(id)a3;
+ (id)extractKindFromURL:(id)a3;
+ (id)extractTitleFromURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFreeformBoardLinkWithURL:(id)a3;
- (BOOL)isSafariTabGroupLinkWithURL:(id)a3;
- (LPiCloudSharingMetadata)initWithCoder:(id)a3;
- (id)_bottomLeadingCaptionStringWithApplicationName:(id)a3 originalURL:(id)a4;
- (id)_topLeadingCaptionStringWithApplicationName:(id)a3 originalURL:(id)a4;
- (id)computeIcon;
- (id)computeThumbnail;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)firstPartyAppIcon;
- (id)localizedApplicationNameWithURL:(id)a3;
- (id)localizedKind;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)sharedObjectIconForTransformer:(id)a3;
- (id)sharedObjectInformationForTransformer:(id)a3;
- (id)sharedObjectSubtitleForTransformer:(id)a3;
- (id)sharedObjectTitleForTransformer:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPiCloudSharingMetadata

- (LPiCloudSharingMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = LPiCloudSharingMetadata;
  v5 = [(LPiCloudSharingMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"application");
    application = v5->_application;
    v5->_application = v6;

    v8 = decodeStringForKey(v4, @"kind");
    kind = v5->_kind;
    v5->_kind = v8;

    v10 = decodeStringForKey(v4, @"title");
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v12;

    v14 = [v4 _lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v14;

    v16 = objc_opt_class();
    v17 = [v4 _lp_strictlyDecodeDictionaryOfObjectsWithKeysOfClass:v16 andObjectsOfClass:objc_opt_class() forKey:@"encodedTokens"];
    encodedTokens = v5->_encodedTokens;
    v5->_encodedTokens = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:self->_application forKey:@"application"];
  [v4 _lp_encodeStringIfNotNil:self->_kind forKey:@"kind"];
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"title"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [v4 _lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [v4 _lp_encodeObjectIfNotNil:self->_encodedTokens forKey:@"encodedTokens"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPiCloudSharingMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPiCloudSharingMetadata *)self application];
    [(LPiCloudSharingMetadata *)v4 setApplication:v5];

    v6 = [(LPiCloudSharingMetadata *)self kind];
    [(LPiCloudSharingMetadata *)v4 setKind:v6];

    v7 = [(LPiCloudSharingMetadata *)self title];
    [(LPiCloudSharingMetadata *)v4 setTitle:v7];

    v8 = [(LPiCloudSharingMetadata *)self icon];
    [(LPiCloudSharingMetadata *)v4 setIcon:v8];

    v9 = [(LPiCloudSharingMetadata *)self thumbnail];
    [(LPiCloudSharingMetadata *)v4 setThumbnail:v9];

    v10 = [(LPiCloudSharingMetadata *)self encodedTokens];
    [(LPiCloudSharingMetadata *)v4 setEncodedTokens:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPiCloudSharingMetadata;
  if ([(LPiCloudSharingMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"icon");
  v3[2](v3, @"thumbnail");
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

+ (id)extractApplicationFromURL:(id)a3
{
  v3 = [a3 _lp_pathComponentAtIndex:1];

  return v3;
}

+ (id)extractApplicationNameFromURL:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() extractApplicationFromURL:v3];
  v5 = +[LPiCloudSharingMetadata _applicationNameMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (id)extractKindFromURL:(id)a3
{
  v4 = a3;
  v5 = [a1 extractApplicationFromURL:v4];
  v6 = [v5 isEqual:@"freeform-copy"];

  if (v6)
  {
    v7 = @"copy";
  }

  else
  {
    v7 = [v4 _lp_pathComponentAtIndex:2];
  }

  return v7;
}

+ (id)extractTitleFromURL:(id)a3
{
  v3 = [a3 fragment];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  v5 = [v4 stringByRemovingPercentEncoding];

  return v5;
}

- (id)firstPartyAppIcon
{
  v3 = [(LPiCloudSharingMetadata *)self application];
  v4 = [v3 isEqualToString:@"Pages"];

  if (v4)
  {
    v5 = +[LPResources pagesIcon];
  }

  else
  {
    v6 = [(LPiCloudSharingMetadata *)self application];
    v7 = [v6 isEqualToString:@"Notes"];

    if (v7)
    {
      v5 = +[LPResources notesIcon];
    }

    else
    {
      v8 = [(LPiCloudSharingMetadata *)self application];
      v9 = [v8 isEqualToString:@"Numbers"];

      if (v9)
      {
        v5 = +[LPResources numbersIcon];
      }

      else
      {
        v10 = [(LPiCloudSharingMetadata *)self application];
        v11 = [v10 isEqualToString:@"Keynote"];

        if (v11)
        {
          v5 = +[LPResources keynoteIcon];
        }

        else
        {
          v12 = [(LPiCloudSharingMetadata *)self application];
          v13 = [v12 isEqualToString:@"iCloud Drive"];

          if (v13)
          {
            v5 = +[LPResources iCloudDriveIcon];
          }

          else
          {
            v14 = [(LPiCloudSharingMetadata *)self application];
            v15 = [v14 isEqualToString:@"Reminders"];

            if (v15)
            {
              v5 = +[LPResources remindersIcon];
            }

            else
            {
              v16 = [(LPiCloudSharingMetadata *)self application];
              v17 = [v16 isEqualToString:@"Safari"];

              if (v17)
              {
                v5 = +[LPResources safariAppIcon];
              }

              else
              {
                v18 = [(LPiCloudSharingMetadata *)self application];
                v19 = [v18 isEqualToString:@"Freeform"];

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
  v3 = [(LPiCloudSharingMetadata *)self icon];
  if (v3 && (v4 = v3, -[LPiCloudSharingMetadata icon](self, "icon"), v5 = objc_claimAutoreleasedReturnValue(), [v5 properties], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "type"), v6, v5, v4, v7))
  {
    v8 = [(LPiCloudSharingMetadata *)self icon];
  }

  else
  {
    v9 = [(LPiCloudSharingMetadata *)self firstPartyAppIcon];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = +[LPResources iCloudDriveIcon];
    }

    v8 = v11;
  }

  return v8;
}

- (id)computeIcon
{
  v3 = [(LPiCloudSharingMetadata *)self firstPartyAppIcon];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(LPiCloudSharingMetadata *)self icon];

    if (v6)
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

- (BOOL)isSafariTabGroupLinkWithURL:(id)a3
{
  v4 = a3;
  v5 = [(LPiCloudSharingMetadata *)self application];

  if (v5)
  {
    v6 = [(LPiCloudSharingMetadata *)self application];
    v7 = [v6 isEqualToString:@"Safari"];
  }

  else
  {
    v6 = [objc_opt_class() extractApplicationFromURL:v4];
    v7 = [v6 isEqualToString:@"safari-tab-groups"];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isFreeformBoardLinkWithURL:(id)a3
{
  v4 = a3;
  v5 = [(LPiCloudSharingMetadata *)self application];
  if (!v5)
  {
    v5 = [objc_opt_class() extractApplicationNameFromURL:v4];
  }

  v6 = [v5 isEqualToString:@"Freeform"];

  return v6;
}

- (id)localizedApplicationNameWithURL:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LPiCloudSharingMetadata *)self application];

  if (!v5)
  {
    v9 = [objc_opt_class() extractApplicationNameFromURL:v4];
    v10 = LPLocalizedString(v9);

    goto LABEL_25;
  }

  v6 = [(LPiCloudSharingMetadata *)self application];
  v7 = [v6 isEqualToString:@"iCloud Drive"];

  if (v7)
  {
    v8 = LPLocalizedString(@"iCloud Drive");
LABEL_22:
    v10 = v8;
    goto LABEL_25;
  }

  v11 = [(LPiCloudSharingMetadata *)self application];
  v12 = knownApplicationForName_map;
  if (!knownApplicationForName_map)
  {
    v12 = &unk_1F2483CD8;
    knownApplicationForName_map = &unk_1F2483CD8;
  }

  v13 = [v12 objectForKeyedSubscript:v11];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 integerValue];
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v8 = [(LPiCloudSharingMetadata *)self application];
    goto LABEL_22;
  }

  [LPApplicationIdentification bundleIdentifiersForKnownApplication:v15];
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
          v10 = [v22 localizedName];

          if (v10)
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

  v10 = [(LPiCloudSharingMetadata *)self application];
LABEL_24:

LABEL_25:

  return v10;
}

- (id)localizedKind
{
  v3 = [(LPiCloudSharingMetadata *)self application];
  v4 = [v3 isEqualToString:@"Reminders"];

  if (v4)
  {
    v5 = [(LPiCloudSharingMetadata *)self kind];
    v6 = [v5 isEqualToString:@"Shared List"];

    if (v6)
    {
      v7 = @"Shared List";
LABEL_6:
      v10 = LPLocalizedString(v7);
      goto LABEL_8;
    }

    v8 = [(LPiCloudSharingMetadata *)self kind];
    v9 = [v8 isEqualToString:@"Template"];

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

- (id)_topLeadingCaptionStringWithApplicationName:(id)a3 originalURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LPiCloudSharingMetadata *)self title];

  if (v8)
  {
    v9 = [(LPiCloudSharingMetadata *)self title];
  }

  else
  {
    if ([(LPiCloudSharingMetadata *)self isFreeformBoardLinkWithURL:v7])
    {
      v10 = @"Freeform Board";
    }

    else
    {
      if (v6)
      {
        v11 = MEMORY[0x1E696AEC0];
        v12 = LPLocalizedString(@"Shared from %@");
        v13 = [v11 localizedStringWithFormat:v12, v6];

        goto LABEL_10;
      }

      v10 = @"Shared using iCloud Sharing";
    }

    v9 = LPLocalizedString(v10);
  }

  v13 = v9;
LABEL_10:

  return v13;
}

- (id)_bottomLeadingCaptionStringWithApplicationName:(id)a3 originalURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LPiCloudSharingMetadata *)self title];

  if (v8)
  {
    v9 = [(LPiCloudSharingMetadata *)self application];
    v10 = [v9 isEqualToString:@"Reminders"];

    if (v10)
    {
      v11 = [(LPiCloudSharingMetadata *)self kind];
      v12 = [v11 isEqualToString:@"Shared List"];

      if (v12)
      {
        v13 = @"Reminders Shared List";
LABEL_14:
        v17 = LPLocalizedString(v13);
        goto LABEL_15;
      }

      v15 = [(LPiCloudSharingMetadata *)self kind];
      v16 = [v15 isEqualToString:@"Template"];

      if (v16)
      {
        v13 = @"Reminders Template";
        goto LABEL_14;
      }
    }

    if ([(LPiCloudSharingMetadata *)self isSafariTabGroupLinkWithURL:v7])
    {
      v13 = @"Safari Tab Group";
      goto LABEL_14;
    }

    if (!v6)
    {
      v13 = @"Shared using iCloud Sharing";
      goto LABEL_14;
    }
  }

  else if (![(LPiCloudSharingMetadata *)self isFreeformBoardLinkWithURL:v7])
  {
    v14 = 0;
    goto LABEL_16;
  }

  v17 = v6;
LABEL_15:
  v14 = v17;
LABEL_16:

  return v14;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v5 = a3;
  v6 = [v5 commonPresentationPropertiesForStyle:16];
  v7 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v6 setCaptionBar:v7];

  v8 = [(LPiCloudSharingMetadata *)self thumbnail];
  v9 = v8;
  if (!v8)
  {
    v3 = [v5 metadata];
    v9 = [v3 image];
  }

  [v5 _populateProperties:v6 withPrimaryImage:v9];
  if (!v8)
  {
  }

  v10 = [(LPiCloudSharingMetadata *)self computeIcon];
  [v5 _populateProperties:v6 withPrimaryIcon:v10 iconProperties:0 canBecomeImage:0];

  v11 = [v5 originalURL];
  v12 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:v11];

  v13 = [v5 originalURL];
  v14 = [(LPiCloudSharingMetadata *)self _topLeadingCaptionStringWithApplicationName:v12 originalURL:v13];
  v15 = [v6 captionBar];
  v16 = [v15 top];
  v17 = [v16 leading];
  [v17 setText:v14];

  v18 = [v5 originalURL];
  v19 = [(LPiCloudSharingMetadata *)self _bottomLeadingCaptionStringWithApplicationName:v12 originalURL:v18];
  v20 = [v6 captionBar];
  v21 = [v20 bottom];
  v22 = [v21 leading];
  [v22 setText:v19];

  return v6;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = [a3 URL];
  v5 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:v4];

  v6 = [(LPiCloudSharingMetadata *)self title];

  if (v6 && v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Link: “%@” shared from %@");
    v9 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v7 localizedStringWithFormat:v8, v9, v5];
LABEL_11:
    v14 = v10;

    goto LABEL_12;
  }

  if (v5)
  {
    v8 = [(LPiCloudSharingMetadata *)self localizedKind];
    v11 = MEMORY[0x1E696AEC0];
    if (v8)
    {
      v9 = LPLocalizedString(@"Link: %@ shared from %@");
      [v11 localizedStringWithFormat:v9, v8, v5];
    }

    else
    {
      v9 = LPLocalizedString(@"Link: Document shared from %@");
      [v11 localizedStringWithFormat:v9, v5];
    }
    v10 = ;
    goto LABEL_11;
  }

  v12 = [(LPiCloudSharingMetadata *)self title];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Link: “%@” shared using iCloud Sharing");
    v9 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v13 localizedStringWithFormat:v8, v9];
    goto LABEL_11;
  }

  v14 = LPLocalizedString(@"Link: Document shared using iCloud Sharing");
LABEL_12:

  return v14;
}

- (id)fallbackIconForTransformer:(id)a3
{
  v3 = +[LPResources iCloudIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v16 = a3;
  v4 = [v16 originalURL];
  v5 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:v4];

  v6 = [(LPiCloudSharingMetadata *)self title];

  if (v6 && v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"“%@” shared from %@");
    v9 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v7 localizedStringWithFormat:v8, v9, v5];
    [v16 setTitle:v10];
LABEL_4:

LABEL_7:
    goto LABEL_8;
  }

  if (v5)
  {
    v11 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"Document shared from %@");
    v9 = [v11 localizedStringWithFormat:v8, v5];
    [v16 setTitle:v9];
    goto LABEL_7;
  }

  v14 = [(LPiCloudSharingMetadata *)self title];

  if (v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v8 = LPLocalizedString(@"“%@” shared using iCloud Sharing");
    v9 = [(LPiCloudSharingMetadata *)self title];
    v10 = [v15 localizedStringWithFormat:v8, v9];
    [v16 setTitle:v10];
    goto LABEL_4;
  }

  v8 = LPLocalizedString(@"Document shared using iCloud Sharing");
  [v16 setTitle:v8];
LABEL_8:

  v12 = [(LPiCloudSharingMetadata *)self icon];
  [v16 setIcon:v12];

  v13 = [(LPiCloudSharingMetadata *)self thumbnail];
  [v16 setImage:v13];
}

- (id)sharedObjectTitleForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 originalURL];
  v6 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:v5];

  v7 = [v4 originalURL];
  v8 = [(LPiCloudSharingMetadata *)self _topLeadingCaptionStringWithApplicationName:v6 originalURL:v7];

  return v8;
}

- (id)sharedObjectSubtitleForTransformer:(id)a3
{
  v4 = a3;
  v5 = [v4 originalURL];
  v6 = [(LPiCloudSharingMetadata *)self localizedApplicationNameWithURL:v5];

  v7 = [v4 originalURL];
  v8 = [(LPiCloudSharingMetadata *)self _bottomLeadingCaptionStringWithApplicationName:v6 originalURL:v7];

  return v8;
}

- (id)sharedObjectInformationForTransformer:(id)a3
{
  v3 = [(LPiCloudSharingMetadata *)self localizedKind];

  return v3;
}

- (id)sharedObjectIconForTransformer:(id)a3
{
  v3 = [(LPiCloudSharingMetadata *)self computeThumbnail];

  return v3;
}

@end