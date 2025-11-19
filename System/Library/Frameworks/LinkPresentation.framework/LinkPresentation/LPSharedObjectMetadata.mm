@interface LPSharedObjectMetadata
- (BOOL)isEqual:(id)a3;
- (LPSharedObjectMetadata)initWithCoder:(id)a3;
- (id)_applicationFromURL:(id)a3;
- (id)applicationIconWithURL:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)downloadProgressForTransformer:(id)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)sourceApplicationMetadataForTransformer:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPSharedObjectMetadata

- (LPSharedObjectMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = LPSharedObjectMetadata;
  v5 = [(LPSharedObjectMetadata *)&v22 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"title");
    v7 = *&v5->_isCollaboration;
    *&v5->_isCollaboration = v6;

    v8 = decodeStringForKey(v4, @"subtitle");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(v4, @"information");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    information = v5->_information;
    v5->_information = v12;

    *(&v5->super.__disallowsURLOverrideByDelegate + 1) = [v4 decodeBoolForKey:@"isCollaboration"];
    if ([v4 containsValueForKey:@"specialization"])
    {
      v14 = decodableSpecializationClasses([v4 _lp_coderType]);
      v21 = 0;
      v15 = [v4 _lp_strictlyDecodeTopLevelObjectOfClasses:v14 forKey:@"specialization" error:&v21];
      v16 = v21;
      icon = v5->_icon;
      v5->_icon = v15;

      if (v16)
      {
        v18 = LPLogChannelSerialization();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [LPSharedObjectMetadata initWithCoder:];
        }
      }
    }

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 _lp_encodeStringIfNotNil:*&self->_isCollaboration forKey:@"title"];
  [v4 _lp_encodeStringIfNotNil:self->_title forKey:@"subtitle"];
  [v4 _lp_encodeStringIfNotNil:self->_subtitle forKey:@"information"];
  [v4 encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"isCollaboration"];
  [v4 _lp_encodeObjectIfNotNil:self->_information forKey:@"icon"];
  [v4 _lp_encodeObjectIfNotNil:self->_icon forKey:@"specialization"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPSharedObjectMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPSharedObjectMetadata *)self title];
    [(LPSharedObjectMetadata *)v4 setTitle:v5];

    v6 = [(LPSharedObjectMetadata *)self subtitle];
    [(LPSharedObjectMetadata *)v4 setSubtitle:v6];

    v7 = [(LPSharedObjectMetadata *)self information];
    [(LPSharedObjectMetadata *)v4 setInformation:v7];

    [(LPSharedObjectMetadata *)v4 setIsCollaboration:[(LPSharedObjectMetadata *)self isCollaboration]];
    v8 = [(LPSharedObjectMetadata *)self icon];
    [(LPSharedObjectMetadata *)v4 setIcon:v8];

    v9 = [(LPSharedObjectMetadata *)self specialization];
    [(LPSharedObjectMetadata *)v4 setSpecialization:v9];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = LPSharedObjectMetadata;
  if ([(LPSharedObjectMetadata *)&v18 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = *&self->_isCollaboration;
      v8 = [v6 title];
      LOBYTE(v7) = objectsAreEqual_0(v7, v8);

      if (v7 & 1) != 0 && (title = self->_title, [v6 subtitle], v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(title) = objectsAreEqual_0(title, v10), v10, (title) && (subtitle = self->_subtitle, objc_msgSend(v6, "information"), v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(subtitle) = objectsAreEqual_0(subtitle, v12), v12, (subtitle) && v6[11] == *(&self->super.__disallowsURLOverrideByDelegate + 1) && (information = self->_information, objc_msgSend(v6, "icon"), v14 = objc_claimAutoreleasedReturnValue(), LOBYTE(information) = objectsAreEqual_0(information, v14), v14, (information))
      {
        icon = self->_icon;
        v16 = [v6 specialization];
        v5 = objectsAreEqual_0(icon, v16);
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
  v4 = a3;
  v4[2](v4, @"icon");
  icon = self->_icon;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__LPSharedObjectMetadata__enumerateAsynchronousFields___block_invoke;
  v7[3] = &unk_1E7A358C0;
  v6 = v4;
  v8 = v6;
  [(LPImage *)icon _enumerateAsynchronousFields:v7];
}

void __55__LPSharedObjectMetadata__enumerateAsynchronousFields___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [@"specialization." stringByAppendingString:a2];
  (*(v2 + 16))(v2);
}

- (id)_applicationFromURL:(id)a3
{
  v3 = a3;
  if (v3 && ([MEMORY[0x1E69635C0] currentProcessHasReadAccess] & 1) != 0)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E69635C0] appLinksWithURL:v3 limit:1 includeLinksForCurrentApplication:1 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = [v4 firstObject];
      if ([v6 isEnabled])
      {
        v7 = [v6 targetApplicationRecord];
        v8 = [v7 localizedName];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v9 = LPLogChannelUI();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(LPSharedObjectMetadata(Transformers) *)v3 _applicationFromURL:v5, v9];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)presentationPropertiesForTransformer:(id)a3
{
  v56[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 commonPresentationPropertiesForStyle:47];
  v6 = [(LPSharedObjectMetadata *)self specialization];
  v7 = [v6 conformsToProtocol:&unk_1F2496330];

  if (v7)
  {
    v54 = [(LPSharedObjectMetadata *)self specialization];
  }

  else
  {
    v54 = 0;
  }

  v52 = [v4 originalURL];
  v8 = [(LPSharedObjectMetadata *)self title];
  v9 = v8;
  if (v8)
  {
    v51 = v8;
  }

  else
  {
    v51 = [v54 sharedObjectTitleForTransformer:v4];
  }

  v10 = [(LPSharedObjectMetadata *)self icon];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v54 sharedObjectIconForTransformer:v4];
  }

  v13 = v12;

  if ([v4 isInComposeContext])
  {
    v53 = 0;
    v14 = 0;
  }

  else
  {
    v15 = [(LPSharedObjectMetadata *)self information];
    v16 = v15;
    if (v15)
    {
      v53 = v15;
    }

    else
    {
      v53 = [v54 sharedObjectInformationForTransformer:v4];
    }

    if (!v52 || ([v52 isFileURL] & 1) != 0 || +[LPPresentationSpecializations isiCloudURL:](LPPresentationSpecializations, "isiCloudURL:", v52))
    {
      v17 = [(LPSharedObjectMetadata *)self subtitle];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = [v54 sharedObjectSubtitleForTransformer:v4];
      }

      v14 = v19;
    }

    else if (v54 || ([(LPSharedObjectMetadata *)self _applicationFromURL:v52], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v14 = [v4 domainName];
    }
  }

  v20 = [v4 _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if (v20 && ![(LPSharedObjectMetadata *)self isCollaboration])
  {
    v21 = joinedByDot(v14, v53);

    v14 = v21;
  }

  if ([v4 sharedObjectDownloadState])
  {
    v22 = [LPLinkMetadataDownloadProgressTransformer alloc];
    v23 = [v4 bytesLoaded];
    v24 = [v4 sharedObjectDownloadState];
    v25 = [v4 metadata];
    v26 = [(LPLinkMetadataDownloadProgressTransformer *)v22 initWithBytesLoaded:v23 downloadState:v24 metadata:v25];

    v27 = [(LPSharedObjectMetadata *)self downloadProgressForTransformer:v26];
    v28 = [v27 subtitle];

    v14 = v28;
  }

  v29 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v29];

  if ((v20 - 1) >= 3)
  {
    if (v20)
    {
      goto LABEL_32;
    }

    v33 = joinedByDot(v51, v14);
    v34 = [v5 captionBar];
    v35 = [v34 top];
    v36 = [v35 leading];
    [v36 setText:v33];
  }

  else
  {
    v30 = [v5 captionBar];
    v31 = [v30 top];
    v32 = [v31 leading];
    [v32 setText:v51];

    v33 = [v5 captionBar];
    v34 = [v33 bottom];
    v35 = [v34 leading];
    [v35 setText:v14];
  }

LABEL_32:
  if (!v13)
  {
    v13 = +[LPResources safariIcon];
  }

  if ([v4 effectiveSizeClass])
  {
    v37 = 0;
    goto LABEL_49;
  }

  v38 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  [(LPCaptionButtonPresentationProperties *)v38 setType:1];
  [(LPCaptionButtonPresentationProperties *)v38 setRequiresInlineButton:MEMORY[0x1E695E118]];
  -[LPCaptionButtonPresentationProperties setDisabled:](v38, "setDisabled:", [v4 allowsTapping] ^ 1);
  if ([(LPSharedObjectMetadata *)self isCollaboration])
  {
    v39 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"person.2.fill"];
    goto LABEL_38;
  }

  v44 = [(LPSharedObjectMetadata *)self specialization];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v45 = [(LPSharedObjectMetadata *)self specialization];
    v46 = [v45 size];
    v47 = [v4 bytesLoaded];

    if (v46 > v47)
    {
      v55 = v4;
      if ([v55 transferIndicatorDirection])
      {
        v48 = @"square.and.arrow.up";
      }

      else
      {
        v48 = @"square.and.arrow.down";
      }

      v39 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:v48];

LABEL_38:
      if (v39)
      {
        v40 = [[LPImage alloc] initWithPlatformImage:v39];
        v41 = [LPButtonAction actionWithTitle:0 image:v40 handler:0];
        v56[0] = v41;
        v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
        [(LPCaptionButtonPresentationProperties *)v38 setActions:v42];

        v43 = [v5 captionBar];
        [v43 setButton:v38];
      }

      goto LABEL_48;
    }
  }

  else
  {
  }

  v39 = 0;
LABEL_48:
  v37 = objc_alloc_init(LPImagePresentationProperties);
  [(LPImagePresentationProperties *)v37 setCanAdjustHorizontalPaddingForFixedSize:1];

LABEL_49:
  if ([v54 sharedObjectPrefersIconAsImageForTransformer:v4])
  {
    [v4 _populateProperties:v5 withPrimaryImage:v13];
    v49 = [(LPSharedObjectMetadata *)self applicationIconWithURL:v52];
    [v4 _populateProperties:v5 withPrimaryIcon:v49 iconProperties:0 canBecomeImage:0];
  }

  else
  {
    [v4 _populateProperties:v5 withPrimaryIcon:v13 iconProperties:v37 canBecomeImage:0];
  }

  return v5;
}

__CFString *__77__LPSharedObjectMetadata_Transformers__presentationPropertiesForTransformer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) transferIndicatorDirection])
  {
    return @"square.and.arrow.up";
  }

  else
  {
    return @"square.and.arrow.down";
  }
}

- (id)applicationIconWithURL:(id)a3
{
  v4 = a3;
  if ([LPPresentationSpecializations isiCloudURL:v4])
  {
    v5 = [LPiCloudSharingMetadata extractApplicationFromURL:v4];
  }

  else
  {
    v6 = [(LPSharedObjectMetadata *)self specialization];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(LPSharedObjectMetadata *)self specialization];
      v9 = [v8 type];

      if ([v9 _lp_hasCaseInsensitivePrefix:@"com.apple.iwork.pages"])
      {
        v5 = @"Pages";
      }

      else if ([v9 _lp_hasCaseInsensitivePrefix:@"com.apple.iwork.numbers"])
      {
        v5 = @"Numbers";
      }

      else if ([v9 _lp_hasCaseInsensitivePrefix:@"com.apple.iwork.keynote"])
      {
        v5 = @"Keynote";
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

  if ([(__CFString *)v5 _lp_isEqualIgnoringCase:@"pages"])
  {
    v10 = +[LPResources pagesIcon];
LABEL_22:
    v11 = v10;
    goto LABEL_23;
  }

  if ([(__CFString *)v5 _lp_isEqualIgnoringCase:@"numbers"])
  {
    v10 = +[LPResources numbersIcon];
    goto LABEL_22;
  }

  if ([(__CFString *)v5 _lp_isEqualIgnoringCase:@"keynote"])
  {
    v10 = +[LPResources keynoteIcon];
    goto LABEL_22;
  }

  if (([(__CFString *)v5 _lp_isEqualIgnoringCase:@"freeform"]& 1) != 0 || [(__CFString *)v5 _lp_isEqualIgnoringCase:@"freeform-copy"])
  {
    v10 = +[LPResources freeformIcon];
    goto LABEL_22;
  }

  if ([(__CFString *)v5 _lp_isEqualIgnoringCase:@"iclouddrive"])
  {
    v10 = +[LPResources iCloudDriveIcon];
    goto LABEL_22;
  }

  if ([(__CFString *)v5 _lp_isEqualIgnoringCase:@"safari-tab-groups"])
  {
    v10 = +[LPResources safariAppIconBadge];
    goto LABEL_22;
  }

  v11 = 0;
LABEL_23:

  return v11;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v9 = a3;
  v4 = [(LPSharedObjectMetadata *)self specialization];
  if ([v4 conformsToProtocol:&unk_1F2495850])
  {
    v5 = [(LPSharedObjectMetadata *)self specialization];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(LPSharedObjectMetadata *)self specialization];
      [v7 populateMetadataForBackwardCompatibility:v9];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v8 = [(LPSharedObjectMetadata *)self title];
  [v9 setTitle:v8];

  v7 = [(LPSharedObjectMetadata *)self icon];
  [v9 setIcon:v7];
LABEL_6:
}

- (id)previewSummaryForTransformer:(id)a3
{
  v6 = a3;
  v7 = [v6 metadata];
  v8 = [v7 originalURL];
  v9 = [LPPresentationSpecializations isiCloudURL:v8];

  if (v9)
  {
    v10 = [(LPSharedObjectMetadata *)self specialization];
    if ([v10 conformsToProtocol:&unk_1F2496330])
    {
      v11 = [(LPSharedObjectMetadata *)self specialization];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = [(LPSharedObjectMetadata *)self specialization];
        v14 = [v13 sharedObjectPreviewSummaryForTransformer:v6];
LABEL_9:
        v18 = v14;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v15 = [(LPSharedObjectMetadata *)self specialization];
    if ([v15 conformsToProtocol:&unk_1F24957B8])
    {
      v16 = [(LPSharedObjectMetadata *)self specialization];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        v13 = [(LPSharedObjectMetadata *)self specialization];
        v14 = [v13 previewSummaryForTransformer:v6];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v19 = [v6 metadata];
  v20 = [v19 originalURL];
  v13 = [(LPSharedObjectMetadata *)self _applicationFromURL:v20];

  v21 = MEMORY[0x1E696AEC0];
  v22 = LPLocalizedString(@"Link: “%@” shared from %@");
  v23 = [(LPSharedObjectMetadata *)self title];
  v24 = v13;
  if (!v13)
  {
    v3 = [v6 metadata];
    v4 = [v3 originalURL];
    v24 = [v4 _lp_simplifiedStringForDisplayOnly:0];
  }

  v18 = [v21 localizedStringWithFormat:v22, v23, v24];
  if (!v13)
  {
  }

LABEL_16:

  return v18;
}

- (id)previewImageForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPSharedObjectMetadata *)self specialization];
  if ([v5 conformsToProtocol:&unk_1F24957B8])
  {
    v6 = [(LPSharedObjectMetadata *)self specialization];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(LPSharedObjectMetadata *)self specialization];
      v9 = [v8 previewImageForTransformer:v4];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = [(LPSharedObjectMetadata *)self icon];
LABEL_6:

  return v9;
}

- (id)sourceApplicationMetadataForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPSharedObjectMetadata *)self specialization];
  if (([v5 conformsToProtocol:&unk_1F2496330] & 1) == 0)
  {

    goto LABEL_5;
  }

  v6 = [(LPSharedObjectMetadata *)self specialization];
  v7 = [v6 sharedObjectPrefersIconAsImageForTransformer:v4];

  if ((v7 & 1) == 0)
  {
LABEL_5:
    v9 = [v4 originalURL];
    v10 = [(LPSharedObjectMetadata *)self applicationIconWithURL:v9];

    if (v10)
    {
      v8 = objc_alloc_init(LPSourceApplicationMetadata);
      [(LPSourceApplicationMetadata *)v8 setIcon:v10];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)downloadProgressForTransformer:(id)a3
{
  v4 = a3;
  if ([(LPSharedObjectMetadata *)self isCollaboration])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(LPSharedObjectMetadata *)self specialization];
    v7 = [v6 type];

    if (v7)
    {
      v8 = [v6 type];
      v7 = [LPFileMetadata descriptionForUTI:v8];
    }

    v9 = [v4 bytesLoaded];
    v10 = [v6 size];
    if ([v6 size])
    {
      v11 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v6 countStyle:{"size"), 0}];
      if (v9 < v10)
      {
        v13 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v4 countStyle:{"bytesLoaded"), 0}];
        v14 = MEMORY[0x1E696AEC0];
        v15 = LPLocalizedString(@"%@ of %@");
        v12 = [v14 localizedStringWithFormat:v15, v13, v11];
      }

      else
      {
        v12 = joinedByDot(v7, v11);
      }
    }

    else
    {
      v12 = 0;
    }

    v16 = 1.0;
    if (v9 < v10)
    {
      v17 = [v4 bytesLoaded];
      v16 = v17 / [v6 size];
    }

    v5 = [[LPDownloadProgress alloc] initWithProgress:v12 subtitle:v9 >= v10 isFinished:v16];
  }

  return v5;
}

- (id)fallbackIconForTransformer:(id)a3
{
  v3 = a3;
  v4 = [v3 originalURL];
  v5 = [LPPresentationSpecializations isiCloudURL:v4];

  if (v5)
  {
    v6 = +[LPResources iCloudIcon];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end