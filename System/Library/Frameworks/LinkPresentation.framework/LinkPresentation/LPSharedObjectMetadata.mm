@interface LPSharedObjectMetadata
- (BOOL)isEqual:(id)equal;
- (LPSharedObjectMetadata)initWithCoder:(id)coder;
- (id)_applicationFromURL:(id)l;
- (id)applicationIconWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (id)downloadProgressForTransformer:(id)transformer;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)sourceApplicationMetadataForTransformer:(id)transformer;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPSharedObjectMetadata

- (LPSharedObjectMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = LPSharedObjectMetadata;
  v5 = [(LPSharedObjectMetadata *)&v22 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"title");
    v7 = *&v5->_isCollaboration;
    *&v5->_isCollaboration = v6;

    v8 = decodeStringForKey(coderCopy, @"subtitle");
    title = v5->_title;
    v5->_title = v8;

    v10 = decodeStringForKey(coderCopy, @"information");
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    information = v5->_information;
    v5->_information = v12;

    *(&v5->super.__disallowsURLOverrideByDelegate + 1) = [coderCopy decodeBoolForKey:@"isCollaboration"];
    if ([coderCopy containsValueForKey:@"specialization"])
    {
      v14 = decodableSpecializationClasses([coderCopy _lp_coderType]);
      v21 = 0;
      v15 = [coderCopy _lp_strictlyDecodeTopLevelObjectOfClasses:v14 forKey:@"specialization" error:&v21];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:*&self->_isCollaboration forKey:@"title"];
  [coderCopy _lp_encodeStringIfNotNil:self->_title forKey:@"subtitle"];
  [coderCopy _lp_encodeStringIfNotNil:self->_subtitle forKey:@"information"];
  [coderCopy encodeBool:*(&self->super.__disallowsURLOverrideByDelegate + 1) forKey:@"isCollaboration"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_information forKey:@"icon"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"specialization"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPSharedObjectMetadata allocWithZone:zone];
  if (v4)
  {
    title = [(LPSharedObjectMetadata *)self title];
    [(LPSharedObjectMetadata *)v4 setTitle:title];

    subtitle = [(LPSharedObjectMetadata *)self subtitle];
    [(LPSharedObjectMetadata *)v4 setSubtitle:subtitle];

    information = [(LPSharedObjectMetadata *)self information];
    [(LPSharedObjectMetadata *)v4 setInformation:information];

    [(LPSharedObjectMetadata *)v4 setIsCollaboration:[(LPSharedObjectMetadata *)self isCollaboration]];
    icon = [(LPSharedObjectMetadata *)self icon];
    [(LPSharedObjectMetadata *)v4 setIcon:icon];

    specialization = [(LPSharedObjectMetadata *)self specialization];
    [(LPSharedObjectMetadata *)v4 setSpecialization:specialization];

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = LPSharedObjectMetadata;
  if ([(LPSharedObjectMetadata *)&v18 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = *&self->_isCollaboration;
      title = [v6 title];
      LOBYTE(v7) = objectsAreEqual_0(v7, title);

      if (v7 & 1) != 0 && (title = self->_title, [v6 subtitle], v10 = objc_claimAutoreleasedReturnValue(), LOBYTE(title) = objectsAreEqual_0(title, v10), v10, (title) && (subtitle = self->_subtitle, objc_msgSend(v6, "information"), v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(subtitle) = objectsAreEqual_0(subtitle, v12), v12, (subtitle) && v6[11] == *(&self->super.__disallowsURLOverrideByDelegate + 1) && (information = self->_information, objc_msgSend(v6, "icon"), v14 = objc_claimAutoreleasedReturnValue(), LOBYTE(information) = objectsAreEqual_0(information, v14), v14, (information))
      {
        icon = self->_icon;
        specialization = [v6 specialization];
        v5 = objectsAreEqual_0(icon, specialization);
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
  icon = self->_icon;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__LPSharedObjectMetadata__enumerateAsynchronousFields___block_invoke;
  v7[3] = &unk_1E7A358C0;
  v6 = fieldsCopy;
  v8 = v6;
  [(LPImage *)icon _enumerateAsynchronousFields:v7];
}

void __55__LPSharedObjectMetadata__enumerateAsynchronousFields___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [@"specialization." stringByAppendingString:a2];
  (*(v2 + 16))(v2);
}

- (id)_applicationFromURL:(id)l
{
  lCopy = l;
  if (lCopy && ([MEMORY[0x1E69635C0] currentProcessHasReadAccess] & 1) != 0)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E69635C0] appLinksWithURL:lCopy limit:1 includeLinksForCurrentApplication:1 error:&v11];
    v5 = v11;
    if (v4)
    {
      firstObject = [v4 firstObject];
      if ([firstObject isEnabled])
      {
        targetApplicationRecord = [firstObject targetApplicationRecord];
        localizedName = [targetApplicationRecord localizedName];
      }

      else
      {
        localizedName = 0;
      }
    }

    else
    {
      v9 = LPLogChannelUI();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(LPSharedObjectMetadata(Transformers) *)lCopy _applicationFromURL:v5, v9];
      }

      localizedName = 0;
    }
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  v56[1] = *MEMORY[0x1E69E9840];
  transformerCopy = transformer;
  v5 = [transformerCopy commonPresentationPropertiesForStyle:47];
  specialization = [(LPSharedObjectMetadata *)self specialization];
  v7 = [specialization conformsToProtocol:&unk_1F2496330];

  if (v7)
  {
    specialization2 = [(LPSharedObjectMetadata *)self specialization];
  }

  else
  {
    specialization2 = 0;
  }

  originalURL = [transformerCopy originalURL];
  title = [(LPSharedObjectMetadata *)self title];
  v9 = title;
  if (title)
  {
    v51 = title;
  }

  else
  {
    v51 = [specialization2 sharedObjectTitleForTransformer:transformerCopy];
  }

  icon = [(LPSharedObjectMetadata *)self icon];
  v11 = icon;
  if (icon)
  {
    v12 = icon;
  }

  else
  {
    v12 = [specialization2 sharedObjectIconForTransformer:transformerCopy];
  }

  v13 = v12;

  if ([transformerCopy isInComposeContext])
  {
    v53 = 0;
    domainName = 0;
  }

  else
  {
    information = [(LPSharedObjectMetadata *)self information];
    v16 = information;
    if (information)
    {
      v53 = information;
    }

    else
    {
      v53 = [specialization2 sharedObjectInformationForTransformer:transformerCopy];
    }

    if (!originalURL || ([originalURL isFileURL] & 1) != 0 || +[LPPresentationSpecializations isiCloudURL:](LPPresentationSpecializations, "isiCloudURL:", originalURL))
    {
      subtitle = [(LPSharedObjectMetadata *)self subtitle];
      v18 = subtitle;
      if (subtitle)
      {
        v19 = subtitle;
      }

      else
      {
        v19 = [specialization2 sharedObjectSubtitleForTransformer:transformerCopy];
      }

      domainName = v19;
    }

    else if (specialization2 || ([(LPSharedObjectMetadata *)self _applicationFromURL:originalURL], (domainName = objc_claimAutoreleasedReturnValue()) == 0))
    {
      domainName = [transformerCopy domainName];
    }
  }

  v20 = [transformerCopy _rowConfigurationForStyle:{objc_msgSend(v5, "style")}];
  if (v20 && ![(LPSharedObjectMetadata *)self isCollaboration])
  {
    v21 = joinedByDot(domainName, v53);

    domainName = v21;
  }

  if ([transformerCopy sharedObjectDownloadState])
  {
    v22 = [LPLinkMetadataDownloadProgressTransformer alloc];
    bytesLoaded = [transformerCopy bytesLoaded];
    sharedObjectDownloadState = [transformerCopy sharedObjectDownloadState];
    metadata = [transformerCopy metadata];
    v26 = [(LPLinkMetadataDownloadProgressTransformer *)v22 initWithBytesLoaded:bytesLoaded downloadState:sharedObjectDownloadState metadata:metadata];

    v27 = [(LPSharedObjectMetadata *)self downloadProgressForTransformer:v26];
    subtitle2 = [v27 subtitle];

    domainName = subtitle2;
  }

  v29 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [v5 setCaptionBar:v29];

  if ((v20 - 1) >= 3)
  {
    if (v20)
    {
      goto LABEL_32;
    }

    captionBar3 = joinedByDot(v51, domainName);
    captionBar = [v5 captionBar];
    leading3 = [captionBar top];
    leading = [leading3 leading];
    [leading setText:captionBar3];
  }

  else
  {
    captionBar2 = [v5 captionBar];
    v31 = [captionBar2 top];
    leading2 = [v31 leading];
    [leading2 setText:v51];

    captionBar3 = [v5 captionBar];
    captionBar = [captionBar3 bottom];
    leading3 = [captionBar leading];
    [leading3 setText:domainName];
  }

LABEL_32:
  if (!v13)
  {
    v13 = +[LPResources safariIcon];
  }

  if ([transformerCopy effectiveSizeClass])
  {
    v37 = 0;
    goto LABEL_49;
  }

  v38 = objc_alloc_init(LPCaptionButtonPresentationProperties);
  [(LPCaptionButtonPresentationProperties *)v38 setType:1];
  [(LPCaptionButtonPresentationProperties *)v38 setRequiresInlineButton:MEMORY[0x1E695E118]];
  -[LPCaptionButtonPresentationProperties setDisabled:](v38, "setDisabled:", [transformerCopy allowsTapping] ^ 1);
  if ([(LPSharedObjectMetadata *)self isCollaboration])
  {
    v39 = [MEMORY[0x1E69DCAB8] _lp_systemImageNamed:@"person.2.fill"];
    goto LABEL_38;
  }

  specialization3 = [(LPSharedObjectMetadata *)self specialization];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    specialization4 = [(LPSharedObjectMetadata *)self specialization];
    v46 = [specialization4 size];
    bytesLoaded2 = [transformerCopy bytesLoaded];

    if (v46 > bytesLoaded2)
    {
      v55 = transformerCopy;
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

        captionBar4 = [v5 captionBar];
        [captionBar4 setButton:v38];
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
  if ([specialization2 sharedObjectPrefersIconAsImageForTransformer:transformerCopy])
  {
    [transformerCopy _populateProperties:v5 withPrimaryImage:v13];
    v49 = [(LPSharedObjectMetadata *)self applicationIconWithURL:originalURL];
    [transformerCopy _populateProperties:v5 withPrimaryIcon:v49 iconProperties:0 canBecomeImage:0];
  }

  else
  {
    [transformerCopy _populateProperties:v5 withPrimaryIcon:v13 iconProperties:v37 canBecomeImage:0];
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

- (id)applicationIconWithURL:(id)l
{
  lCopy = l;
  if ([LPPresentationSpecializations isiCloudURL:lCopy])
  {
    v5 = [LPiCloudSharingMetadata extractApplicationFromURL:lCopy];
  }

  else
  {
    specialization = [(LPSharedObjectMetadata *)self specialization];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      specialization2 = [(LPSharedObjectMetadata *)self specialization];
      type = [specialization2 type];

      if ([type _lp_hasCaseInsensitivePrefix:@"com.apple.iwork.pages"])
      {
        v5 = @"Pages";
      }

      else if ([type _lp_hasCaseInsensitivePrefix:@"com.apple.iwork.numbers"])
      {
        v5 = @"Numbers";
      }

      else if ([type _lp_hasCaseInsensitivePrefix:@"com.apple.iwork.keynote"])
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

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  specialization = [(LPSharedObjectMetadata *)self specialization];
  if ([specialization conformsToProtocol:&unk_1F2495850])
  {
    specialization2 = [(LPSharedObjectMetadata *)self specialization];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      specialization3 = [(LPSharedObjectMetadata *)self specialization];
      [specialization3 populateMetadataForBackwardCompatibility:compatibilityCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  title = [(LPSharedObjectMetadata *)self title];
  [compatibilityCopy setTitle:title];

  specialization3 = [(LPSharedObjectMetadata *)self icon];
  [compatibilityCopy setIcon:specialization3];
LABEL_6:
}

- (id)previewSummaryForTransformer:(id)transformer
{
  transformerCopy = transformer;
  metadata = [transformerCopy metadata];
  originalURL = [metadata originalURL];
  v9 = [LPPresentationSpecializations isiCloudURL:originalURL];

  if (v9)
  {
    specialization = [(LPSharedObjectMetadata *)self specialization];
    if ([specialization conformsToProtocol:&unk_1F2496330])
    {
      specialization2 = [(LPSharedObjectMetadata *)self specialization];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        specialization3 = [(LPSharedObjectMetadata *)self specialization];
        v14 = [specialization3 sharedObjectPreviewSummaryForTransformer:transformerCopy];
LABEL_9:
        v18 = v14;
        goto LABEL_16;
      }
    }

    else
    {
    }

    specialization4 = [(LPSharedObjectMetadata *)self specialization];
    if ([specialization4 conformsToProtocol:&unk_1F24957B8])
    {
      specialization5 = [(LPSharedObjectMetadata *)self specialization];
      v17 = objc_opt_respondsToSelector();

      if (v17)
      {
        specialization3 = [(LPSharedObjectMetadata *)self specialization];
        v14 = [specialization3 previewSummaryForTransformer:transformerCopy];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  metadata2 = [transformerCopy metadata];
  originalURL2 = [metadata2 originalURL];
  specialization3 = [(LPSharedObjectMetadata *)self _applicationFromURL:originalURL2];

  v21 = MEMORY[0x1E696AEC0];
  v22 = LPLocalizedString(@"Link: “%@” shared from %@");
  title = [(LPSharedObjectMetadata *)self title];
  v24 = specialization3;
  if (!specialization3)
  {
    metadata3 = [transformerCopy metadata];
    originalURL3 = [metadata3 originalURL];
    v24 = [originalURL3 _lp_simplifiedStringForDisplayOnly:0];
  }

  v18 = [v21 localizedStringWithFormat:v22, title, v24];
  if (!specialization3)
  {
  }

LABEL_16:

  return v18;
}

- (id)previewImageForTransformer:(id)transformer
{
  transformerCopy = transformer;
  specialization = [(LPSharedObjectMetadata *)self specialization];
  if ([specialization conformsToProtocol:&unk_1F24957B8])
  {
    specialization2 = [(LPSharedObjectMetadata *)self specialization];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      specialization3 = [(LPSharedObjectMetadata *)self specialization];
      icon = [specialization3 previewImageForTransformer:transformerCopy];

      goto LABEL_6;
    }
  }

  else
  {
  }

  icon = [(LPSharedObjectMetadata *)self icon];
LABEL_6:

  return icon;
}

- (id)sourceApplicationMetadataForTransformer:(id)transformer
{
  transformerCopy = transformer;
  specialization = [(LPSharedObjectMetadata *)self specialization];
  if (([specialization conformsToProtocol:&unk_1F2496330] & 1) == 0)
  {

    goto LABEL_5;
  }

  specialization2 = [(LPSharedObjectMetadata *)self specialization];
  v7 = [specialization2 sharedObjectPrefersIconAsImageForTransformer:transformerCopy];

  if ((v7 & 1) == 0)
  {
LABEL_5:
    originalURL = [transformerCopy originalURL];
    v10 = [(LPSharedObjectMetadata *)self applicationIconWithURL:originalURL];

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

- (id)downloadProgressForTransformer:(id)transformer
{
  transformerCopy = transformer;
  if ([(LPSharedObjectMetadata *)self isCollaboration])
  {
    v5 = 0;
  }

  else
  {
    specialization = [(LPSharedObjectMetadata *)self specialization];
    type = [specialization type];

    if (type)
    {
      type2 = [specialization type];
      type = [LPFileMetadata descriptionForUTI:type2];
    }

    bytesLoaded = [transformerCopy bytesLoaded];
    v10 = [specialization size];
    if ([specialization size])
    {
      v11 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(specialization countStyle:{"size"), 0}];
      if (bytesLoaded < v10)
      {
        v13 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(transformerCopy countStyle:{"bytesLoaded"), 0}];
        v14 = MEMORY[0x1E696AEC0];
        v15 = LPLocalizedString(@"%@ of %@");
        v12 = [v14 localizedStringWithFormat:v15, v13, v11];
      }

      else
      {
        v12 = joinedByDot(type, v11);
      }
    }

    else
    {
      v12 = 0;
    }

    v16 = 1.0;
    if (bytesLoaded < v10)
    {
      bytesLoaded2 = [transformerCopy bytesLoaded];
      v16 = bytesLoaded2 / [specialization size];
    }

    v5 = [[LPDownloadProgress alloc] initWithProgress:v12 subtitle:bytesLoaded >= v10 isFinished:v16];
  }

  return v5;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  transformerCopy = transformer;
  originalURL = [transformerCopy originalURL];
  v5 = [LPPresentationSpecializations isiCloudURL:originalURL];

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