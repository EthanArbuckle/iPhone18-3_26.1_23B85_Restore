@interface LPFileMetadata
+ (id)descriptionForUTI:(id)i;
- (BOOL)_isImage;
- (BOOL)_isPlainText;
- (BOOL)_isWatchFace;
- (BOOL)_shouldUseBackground;
- (BOOL)_shouldUseCircularIcon;
- (BOOL)_shouldUseSquareIcon;
- (BOOL)isEqual:(id)equal;
- (BOOL)sharedObjectPrefersIconAsImageForTransformer:(id)transformer;
- (LPFileMetadata)initWithCoder:(id)coder;
- (id)_bottomCaptionStringForTransformer:(id)transformer;
- (id)_fileDetailStringForTransformer:(id)transformer;
- (id)_fileTypeStringForTransformer:(id)transformer;
- (id)_nameForTransformer:(id)transformer;
- (id)_singleLineDescriptionForRemoteFileWithTransformer:(id)transformer;
- (id)_valueForKeyPathIfLoaded:(id)loaded;
- (id)copyWithZone:(_NSZone *)zone;
- (id)fallbackIconForTransformer:(id)transformer;
- (id)presentationPropertiesForTransformer:(id)transformer;
- (id)previewImageForTransformer:(id)transformer;
- (id)previewSummaryForTransformer:(id)transformer;
- (id)sharedObjectIconForTransformer:(id)transformer;
- (id)sharedObjectInformationForTransformer:(id)transformer;
- (id)sharedObjectPreviewSummaryForTransformer:(id)transformer;
- (id)sharedObjectSubtitleForTransformer:(id)transformer;
- (id)sharedObjectTitleForTransformer:(id)transformer;
- (int64_t)summaryTypeForTransformer:(id)transformer;
- (void)_enumerateAsynchronousFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)populateMetadataForBackwardCompatibility:(id)compatibility;
@end

@implementation LPFileMetadata

- (LPFileMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = LPFileMetadata;
  v5 = [(LPFileMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(coderCopy, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = decodeStringForKey(coderCopy, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeNumberForKey(coderCopy, @"size");
    v5->_size = [v10 unsignedLongLongValue];

    v11 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v11;

    v13 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"smallThumbnail"];
    smallThumbnail = v5->_smallThumbnail;
    v5->_smallThumbnail = v13;

    v15 = [coderCopy _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v15;

    v17 = [coderCopy _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [coderCopy _lp_encodeStringIfNotNil:self->_type forKey:@"type"];
  if (self->_size)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [coderCopy _lp_encodeObjectIfNotNil:v4 forKey:@"size"];
  }

  [coderCopy _lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_smallThumbnail forKey:@"smallThumbnail"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _lp_encodeObjectIfNotNil:self->_creationDate forKey:@"creationDate"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [LPFileMetadata allocWithZone:zone];
  if (v4)
  {
    name = [(LPFileMetadata *)self name];
    [(LPFileMetadata *)v4 setName:name];

    type = [(LPFileMetadata *)self type];
    [(LPFileMetadata *)v4 setType:type];

    [(LPFileMetadata *)v4 setSize:[(LPFileMetadata *)self size]];
    thumbnail = [(LPFileMetadata *)self thumbnail];
    [(LPFileMetadata *)v4 setThumbnail:thumbnail];

    smallThumbnail = [(LPFileMetadata *)self smallThumbnail];
    [(LPFileMetadata *)v4 setSmallThumbnail:smallThumbnail];

    icon = [(LPFileMetadata *)self icon];
    [(LPFileMetadata *)v4 setIcon:icon];

    creationDate = [(LPFileMetadata *)self creationDate];
    [(LPFileMetadata *)v4 setCreationDate:creationDate];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = LPFileMetadata;
  if ([(LPFileMetadata *)&v8 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      if ((objectsAreEqual_0(v6[2], self->_name) & 1) != 0 && objectsAreEqual_0(v6[3], self->_type) && v6[4] == self->_size && objectsAreEqual_0(v6[5], self->_thumbnail) && objectsAreEqual_0(v6[6], self->_smallThumbnail) && objectsAreEqual_0(v6[7], self->_icon))
      {
        v5 = objectsAreEqual_0(v6[8], self->_creationDate);
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
  fieldsCopy[2](fieldsCopy, @"thumbnail");
  fieldsCopy[2](fieldsCopy, @"smallThumbnail");
  fieldsCopy[2](fieldsCopy, @"icon");
}

+ (id)descriptionForUTI:(id)i
{
  v116[22] = *MEMORY[0x1E69E9840];
  iCopy = i;
  if (([(__CFString *)iCopy _lp_hasCaseInsensitivePrefix:@"com.apple.iwork"]& 1) != 0 || ([(__CFString *)iCopy _lp_hasCaseInsensitivePrefix:@"com.apple.itunes"]& 1) != 0 || ([(__CFString *)iCopy _lp_hasCaseInsensitivePrefix:@"org.oasis-open"]& 1) != 0)
  {

LABEL_5:
    v4 = UTTypeCopyDescription(iCopy);
    goto LABEL_6;
  }

  v116[0] = @"Apple Watch";
  v115[0] = @"com.apple.watchface";
  v115[1] = @"com.apple.webarchive";
  v71 = LPLocalizedString(@"Web Archive (file type)");
  v116[1] = v71;
  v115[2] = @"com.apple.rtfd";
  v69 = LPLocalizedString(@"RTF Document (file type)");
  v116[2] = v69;
  v115[3] = @"com.apple.flat-rtfd";
  v67 = LPLocalizedString(@"RTF Document (file type)");
  v116[3] = v67;
  v115[4] = @"public.rtf";
  v65 = LPLocalizedString(@"RTF Document (file type)");
  v116[4] = v65;
  v115[5] = @"com.adobe.pdf";
  v63 = LPLocalizedString(@"PDF Document (file type)");
  v116[5] = v63;
  v115[6] = @"com.apple.mpeg-4-ringtone";
  v61 = LPLocalizedString(@"Ringtone (file type)");
  v116[6] = v61;
  v115[7] = @"public.vcard";
  v59 = LPLocalizedString(@"Contact Card (file type)");
  v116[7] = v59;
  v115[8] = @"org.idpf.epub-container";
  v57 = LPLocalizedString(@"Book (file type)");
  v116[8] = v57;
  v115[9] = @"com.apple.ibooks";
  v55 = LPLocalizedString(@"Book (file type)");
  v116[9] = v55;
  v115[10] = @"com.apple.ibooks-container";
  v53 = LPLocalizedString(@"Book (file type)");
  v116[10] = v53;
  v115[11] = @"com.apple.ibooksauthor.book";
  v51 = LPLocalizedString(@"Book (file type)");
  v116[11] = v51;
  v115[12] = @"public.jpeg";
  v49 = LPLocalizedString(@"JPEG Image (file type)");
  v116[12] = v49;
  v115[13] = @"public.png";
  v6 = LPLocalizedString(@"PNG Image (file type)");
  v116[13] = v6;
  v115[14] = @"com.compuserve.gif";
  v7 = LPLocalizedString(@"GIF Image (file type)");
  v116[14] = v7;
  v115[15] = @"public.tiff";
  v8 = LPLocalizedString(@"TIFF Image (file type)");
  v116[15] = v8;
  v115[16] = @"public.zip-archive";
  v9 = LPLocalizedString(@"ZIP Archive (file type)");
  v116[16] = v9;
  v115[17] = @"public.heif";
  v10 = LPLocalizedString(@"HEIF Image (file type)");
  v116[17] = v10;
  v115[18] = @"public.heif-standard";
  v11 = LPLocalizedString(@"HEIF Image (file type)");
  v116[18] = v11;
  v115[19] = @"public.data";
  v12 = LPLocalizedString(@"File (file type)");
  v116[19] = v12;
  v115[20] = @"public.folder";
  v13 = LPLocalizedString(@"Folder (file type)");
  v115[21] = @"com.apple.workout";
  v116[20] = v13;
  v116[21] = @"Apple Watch";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:22];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v81 objects:v114 count:16];
  if (v16)
  {
    v17 = *v82;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v82 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v81 + 1) + 8 * i);
        if ([(__CFString *)iCopy _lp_isEqualIgnoringCase:v19])
        {
          v4 = [v15 objectForKeyedSubscript:v19];
          v27 = v15;
          goto LABEL_39;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v81 objects:v114 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v112[0] = @"com.microsoft.excel";
  v20 = LPLocalizedString(@"Office Spreadsheet (file type)");
  v113[0] = v20;
  v112[1] = @"org.openxmlformats.spreadsheetml";
  v21 = LPLocalizedString(@"Office Spreadsheet (file type)");
  v113[1] = v21;
  v112[2] = @"com.microsoft.powerpoint";
  v22 = LPLocalizedString(@"Office Presentation (file type)");
  v113[2] = v22;
  v112[3] = @"org.openxmlformats.presentationml";
  v23 = LPLocalizedString(@"Office Presentation (file type)");
  v113[3] = v23;
  v112[4] = @"com.microsoft.word";
  v24 = LPLocalizedString(@"Word Document (file type)");
  v113[4] = v24;
  v112[5] = @"org.openxmlformats.wordprocessingml";
  v25 = LPLocalizedString(@"Word Document (file type)");
  v113[5] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:6];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v77 objects:v111 count:16];
  if (v28)
  {
    v29 = *v78;
    while (2)
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v78 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v77 + 1) + 8 * j);
        if ([(__CFString *)iCopy _lp_hasCaseInsensitivePrefix:v31])
        {
          v4 = [v27 objectForKeyedSubscript:v31];
          v39 = v27;
          goto LABEL_38;
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v77 objects:v111 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

  v98 = @"com.apple.disk-image";
  v99 = LPLocalizedString(@"Disk Image (file type)");
  v58 = v99;
  v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:2];
  v96 = @"public.source-code";
  v56 = v100;
  v97 = LPLocalizedString(@"Source Code (file type)");
  v54 = v97;
  v101 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:2];
  v94 = @"com.apple.application";
  v52 = v101;
  v95 = LPLocalizedString(@"Application (file type)");
  v72 = v95;
  v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:2];
  v93[0] = @"public.3d-content";
  v70 = v102;
  v68 = LPLocalizedString(@"3D Asset (file type)");
  v93[1] = v68;
  v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v103 = v66;
  v92[0] = @"public.executable";
  v64 = LPLocalizedString(@"Executable (file type)");
  v92[1] = v64;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v104 = v50;
  v91[0] = @"public.archive";
  v48 = LPLocalizedString(@"Archive (file type)");
  v91[1] = v48;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
  v105 = v47;
  v90[0] = @"public.image";
  v46 = LPLocalizedString(@"Image (file type)");
  v90[1] = v46;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
  v106 = v45;
  v89[0] = @"public.audio";
  v62 = LPLocalizedString(@"Audio Recording (file type)");
  v89[1] = v62;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
  v107 = v60;
  v88[0] = @"public.font";
  v32 = LPLocalizedString(@"Font (file type)");
  v88[1] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
  v108 = v33;
  v87[0] = @"public.movie";
  v34 = LPLocalizedString(@"Video (file type)");
  v87[1] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
  v109 = v35;
  v86[0] = @"public.plain-text";
  v36 = LPLocalizedString(@"Text Document (file type)");
  v86[1] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
  v110 = v37;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:11];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v39 = v38;
  v4 = [v39 countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v4)
  {
    v40 = *v74;
    while (2)
    {
      for (k = 0; k != v4; k = k + 1)
      {
        if (*v74 != v40)
        {
          objc_enumerationMutation(v39);
        }

        v42 = *(*(&v73 + 1) + 8 * k);
        v43 = [v42 objectAtIndexedSubscript:0];
        v44 = UTTypeConformsTo(iCopy, v43);

        if (v44)
        {
          v4 = [v42 objectAtIndexedSubscript:1];
          goto LABEL_37;
        }
      }

      v4 = [v39 countByEnumeratingWithState:&v73 objects:v85 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_37:

LABEL_38:
LABEL_39:

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v4;
}

- (id)_fileTypeStringForTransformer:(id)transformer
{
  type = [(LPFileMetadata *)self type];

  if (type)
  {
    type2 = [(LPFileMetadata *)self type];
    type = [LPFileMetadata descriptionForUTI:type2];
  }

  return type;
}

- (id)_fileDetailStringForTransformer:(id)transformer
{
  transformerCopy = transformer;
  creationDate = [(LPFileMetadata *)self creationDate];
  if (creationDate && ([transformerCopy sourceBundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_lp_isEqualIgnoringCase:", @"com.apple.mobilephone"), v6, creationDate, v7))
  {
    v8 = MEMORY[0x1E696AB78];
    creationDate2 = [(LPFileMetadata *)self creationDate];
    v10 = [v8 localizedStringFromDate:creationDate2 dateStyle:1 timeStyle:1];
  }

  else if ([(LPFileMetadata *)self size])
  {
    v10 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[LPFileMetadata size](self countStyle:{"size"), 0}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_bottomCaptionStringForTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [(LPFileMetadata *)self _fileTypeStringForTransformer:transformerCopy];
  v6 = [(LPFileMetadata *)self _fileDetailStringForTransformer:transformerCopy];
  v7 = joinedByDot(v5, v6);

  return v7;
}

- (BOOL)_isImage
{
  type = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(type, *MEMORY[0x1E69637F8]) != 0;

  return v3;
}

- (BOOL)_isPlainText
{
  type = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(type, *MEMORY[0x1E6963870]) != 0;

  return v3;
}

- (BOOL)_isWatchFace
{
  type = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(type, @"com.apple.watchface") != 0;

  return v3;
}

- (BOOL)_shouldUseSquareIcon
{
  _thumbnailIfLoaded = [(LPFileMetadata *)self _thumbnailIfLoaded];
  if (_thumbnailIfLoaded)
  {
    _isImage = [(LPFileMetadata *)self _isImage];
  }

  else
  {
    _isImage = 0;
  }

  return _isImage;
}

- (BOOL)_shouldUseCircularIcon
{
  type = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(type, *MEMORY[0x1E69638D8]) != 0;

  return v3;
}

- (BOOL)_shouldUseBackground
{
  _thumbnailIfLoaded = [(LPFileMetadata *)self _thumbnailIfLoaded];
  if (!_thumbnailIfLoaded)
  {
    return 0;
  }

  v4 = _thumbnailIfLoaded;
  _thumbnailIfLoaded2 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  properties = [_thumbnailIfLoaded2 properties];
  type = [properties type];

  if (type == 5 || [(LPFileMetadata *)self _isWatchFace])
  {
    return 0;
  }

  _thumbnailIfLoaded3 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  _hasTransparency = [_thumbnailIfLoaded3 _hasTransparency];

  return _hasTransparency;
}

- (id)_singleLineDescriptionForRemoteFileWithTransformer:(id)transformer
{
  transformerCopy = transformer;
  v5 = [(LPFileMetadata *)self _fileTypeStringForTransformer:transformerCopy];
  v6 = [transformerCopy URL];
  v7 = [v6 _lp_simplifiedStringForDisplayOnly:0];

  v8 = joinedByEmDash(v5, v7);

  return v8;
}

- (id)_nameForTransformer:(id)transformer
{
  v31[2] = *MEMORY[0x1E69E9840];
  transformerCopy = transformer;
  if ([transformerCopy effectiveSizeClass] != 2)
  {
    goto LABEL_14;
  }

  metadata = [transformerCopy metadata];
  originalURL = [metadata originalURL];
  if (([originalURL _lp_isHTTPFamilyURL] & 1) == 0)
  {

    goto LABEL_14;
  }

  type = [(LPFileMetadata *)self type];

  if (!type)
  {
LABEL_14:
    name = [(LPFileMetadata *)self name];
    goto LABEL_15;
  }

  type2 = [(LPFileMetadata *)self type];
  v30[0] = @"public.image";
  v9 = LPLocalizedString(@"Image (file type)");
  v30[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v31[0] = v10;
  v29[0] = @"public.movie";
  v11 = LPLocalizedString(@"Video (file type)");
  v29[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v31[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [v18 objectAtIndexedSubscript:{0, v24}];
        v20 = UTTypeConformsTo(type2, v19);

        if (v20)
        {
          v15 = [v18 objectAtIndexedSubscript:1];
          goto LABEL_19;
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (v15)
  {
    name2 = v15;
  }

  else
  {
    name2 = [(LPFileMetadata *)self name];
  }

  name = name2;

LABEL_15:

  return name;
}

- (id)_valueForKeyPathIfLoaded:(id)loaded
{
  v3 = [(LPFileMetadata *)self valueForKeyPath:loaded];
  v4 = [v3 conformsToProtocol:&unk_1F2493030];
  v5 = v3;
  v6 = v5;
  v7 = v5;
  if (v4)
  {
    if ([v5 needsAsynchronousLoad] && !objc_msgSend(v6, "hasPlaceholderValueForAsynchronousLoad"))
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  return v7;
}

- (id)presentationPropertiesForTransformer:(id)transformer
{
  transformerCopy = transformer;
  if (sizeClassIsCardHeading([transformerCopy effectiveSizeClass]))
  {
    _thumbnailIfLoaded = [(LPFileMetadata *)self _thumbnailIfLoaded];
    v6 = _thumbnailIfLoaded;
    if (_thumbnailIfLoaded)
    {
      v7 = _thumbnailIfLoaded;
    }

    else
    {
      type = [(LPFileMetadata *)self type];
      [transformerCopy scaleFactor];
      v27 = customIconForUTI(type, v26);
      v28 = v27;
      if (v27)
      {
        v7 = v27;
      }

      else
      {
        _iconIfLoaded = [(LPFileMetadata *)self _iconIfLoaded];
        v39 = _iconIfLoaded;
        if (_iconIfLoaded)
        {
          v40 = _iconIfLoaded;
        }

        else
        {
          v40 = +[LPResources fileIcon];
        }

        v7 = v40;
      }
    }

    v42 = [LPCardHeadingPresentationProperties alloc];
    v43 = [(LPFileMetadata *)self _nameForTransformer:transformerCopy];
    v44 = [(LPFileMetadata *)self _bottomCaptionStringForTransformer:transformerCopy];
    v8 = [(LPCardHeadingPresentationProperties *)v42 initWithStyle:33 topCaption:v43 bottomCaption:v44 icon:v7];

    v45 = objc_alloc_init(LPImagePresentationProperties);
    captionBar = [(LPWebLinkPresentationProperties *)v8 captionBar];
    [captionBar setLeadingIconProperties:v45];

    if ([(LPFileMetadata *)self _shouldUseSquareIcon])
    {
      captionBar2 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      leadingIconProperties = [captionBar2 leadingIconProperties];
      [leadingIconProperties setRequireFixedSize:1];

      captionBar3 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      leadingIconProperties2 = [captionBar3 leadingIconProperties];
      [leadingIconProperties2 setScalingMode:2];
    }

    else
    {
      if (![(LPFileMetadata *)self _shouldUseCircularIcon])
      {
        goto LABEL_31;
      }

      captionBar3 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      leadingIconProperties2 = [captionBar3 leadingIconProperties];
      [leadingIconProperties2 setFilter:13];
    }

LABEL_31:
    if ([(LPFileMetadata *)self _shouldUseBackground])
    {
      captionBar4 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      leadingIconProperties3 = [captionBar4 leadingIconProperties];
      [leadingIconProperties3 setShouldApplyBackground:1];
    }

    goto LABEL_41;
  }

  v8 = [transformerCopy commonPresentationPropertiesForStyle:33];
  v9 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [(LPWebLinkPresentationProperties *)v8 setCaptionBar:v9];

  if (![transformerCopy _rowConfigurationForStyle:{-[LPWebLinkPresentationProperties style](v8, "style")}])
  {
    v10 = [transformerCopy URL];
    isFileURL = [v10 isFileURL];

    if ((isFileURL & 1) == 0)
    {
      v21 = [(LPFileMetadata *)self _singleLineDescriptionForRemoteFileWithTransformer:transformerCopy];
      captionBar5 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      bottom = [captionBar5 top];
      leading = [bottom leading];
      [leading setText:v21];
      goto LABEL_11;
    }
  }

  v12 = [(LPFileMetadata *)self _nameForTransformer:transformerCopy];
  captionBar6 = [(LPWebLinkPresentationProperties *)v8 captionBar];
  v14 = [captionBar6 top];
  leading2 = [v14 leading];
  [leading2 setText:v12];

  v16 = [(LPFileMetadata *)self _bottomCaptionStringForTransformer:transformerCopy];
  captionBar7 = [(LPWebLinkPresentationProperties *)v8 captionBar];
  bottom = [captionBar7 bottom];
  leading3 = [bottom leading];
  [leading3 setText:v16];

  v20 = [transformerCopy URL];
  LOBYTE(captionBar7) = [v20 isFileURL];

  if ((captionBar7 & 1) == 0)
  {
    v21 = [transformerCopy URL];
    captionBar5 = [v21 _lp_simplifiedStringForDisplayOnly:0];
    bottom = [(LPWebLinkPresentationProperties *)v8 captionBar];
    leading = [bottom belowBottom];
    v23Leading = [leading leading];
    [v23Leading setText:captionBar5];

LABEL_11:
  }

  _smallThumbnailIfLoaded = [(LPFileMetadata *)self _smallThumbnailIfLoaded];
  if (_smallThumbnailIfLoaded && (v30 = [transformerCopy effectiveSizeClass], _smallThumbnailIfLoaded, v30 == 8))
  {
    _smallThumbnailIfLoaded2 = [(LPFileMetadata *)self _smallThumbnailIfLoaded];
    [transformerCopy _populateProperties:v8 withPrimaryImage:_smallThumbnailIfLoaded2];
  }

  else
  {
    _thumbnailIfLoaded2 = [(LPFileMetadata *)self _thumbnailIfLoaded];

    if (_thumbnailIfLoaded2)
    {
      _smallThumbnailIfLoaded2 = [(LPFileMetadata *)self _thumbnailIfLoaded];
      [transformerCopy _populateProperties:v8 withPrimaryImage:_smallThumbnailIfLoaded2];
    }

    else
    {
      _smallThumbnailIfLoaded2 = [(LPFileMetadata *)self type];
      [transformerCopy scaleFactor];
      v34 = customIconForUTI(_smallThumbnailIfLoaded2, v33);
      v35 = v34;
      if (v34)
      {
        v36 = 0;
        v37 = v34;
      }

      else
      {
        _iconIfLoaded2 = [(LPFileMetadata *)self _iconIfLoaded];
        bottom = _iconIfLoaded2;
        if (_iconIfLoaded2)
        {
          v36 = 0;
          v37 = _iconIfLoaded2;
        }

        else
        {
          v37 = +[LPResources fileIcon];
          bottom = 0;
          v36 = 1;
        }
      }

      [transformerCopy _populateProperties:v8 withPrimaryIcon:v37 iconProperties:0 canBecomeImage:0];
      if (v36)
      {
      }

      if (!v35)
      {
      }
    }
  }

  metadata = [transformerCopy metadata];
  video = [metadata video];
  [(LPWebLinkPresentationProperties *)v8 setVideo:video];

  metadata2 = [transformerCopy metadata];
  audio = [metadata2 audio];
  [(LPWebLinkPresentationProperties *)v8 setAudio:audio];

  audio2 = [(LPWebLinkPresentationProperties *)v8 audio];

  if (audio2)
  {
    audio3 = [(LPWebLinkPresentationProperties *)v8 audio];
    v7 = [LPInlineMediaPlaybackInformation audioFilePlaybackInformationWithAudio:audio3];

    [(LPWebLinkPresentationProperties *)v8 setInlinePlaybackInformation:v7];
LABEL_41:
  }

  return v8;
}

- (id)previewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"File: %@");
  name = [(LPFileMetadata *)self name];
  _lp_directionallyIsolatedString = [name _lp_directionallyIsolatedString];
  v8 = [v4 localizedStringWithFormat:v5, _lp_directionallyIsolatedString];

  return v8;
}

- (id)previewImageForTransformer:(id)transformer
{
  thumbnail = [(LPFileMetadata *)self thumbnail];
  v5 = thumbnail;
  if (thumbnail)
  {
    icon = thumbnail;
  }

  else
  {
    icon = [(LPFileMetadata *)self icon];
  }

  v7 = icon;

  return v7;
}

- (id)fallbackIconForTransformer:(id)transformer
{
  v3 = +[LPResources fileIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  name = [(LPFileMetadata *)self name];
  [compatibilityCopy setTitle:name];

  thumbnail = [(LPFileMetadata *)self thumbnail];
  [compatibilityCopy setImage:thumbnail];

  icon = [(LPFileMetadata *)self icon];
  [compatibilityCopy setIcon:icon];
}

- (int64_t)summaryTypeForTransformer:(id)transformer
{
  if ([(LPFileMetadata *)self _isImage])
  {
    return 1;
  }

  if ([(LPFileMetadata *)self _isPlainText])
  {
    return 3;
  }

  return 2;
}

- (id)sharedObjectTitleForTransformer:(id)transformer
{
  name = [(LPFileMetadata *)self name];

  return name;
}

- (id)sharedObjectSubtitleForTransformer:(id)transformer
{
  type = [(LPFileMetadata *)self type];

  if (type)
  {
    type2 = [(LPFileMetadata *)self type];
    type = [LPFileMetadata descriptionForUTI:type2];
  }

  return type;
}

- (id)sharedObjectInformationForTransformer:(id)transformer
{
  v4 = [(LPFileMetadata *)self size];
  if (v4)
  {
    v4 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[LPFileMetadata size](self countStyle:{"size"), 0}];
  }

  return v4;
}

- (id)sharedObjectIconForTransformer:(id)transformer
{
  transformerCopy = transformer;
  _thumbnailIfLoaded = [(LPFileMetadata *)self _thumbnailIfLoaded];
  v6 = _thumbnailIfLoaded;
  if (_thumbnailIfLoaded)
  {
    v7 = _thumbnailIfLoaded;
  }

  else
  {
    type = [(LPFileMetadata *)self type];
    [transformerCopy scaleFactor];
    v10 = customIconForUTI(type, v9);
    v11 = v10;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      _iconIfLoaded = [(LPFileMetadata *)self _iconIfLoaded];
      v13 = _iconIfLoaded;
      if (_iconIfLoaded)
      {
        v14 = _iconIfLoaded;
      }

      else
      {
        v14 = +[LPResources fileIcon];
      }

      v7 = v14;
    }
  }

  return v7;
}

- (BOOL)sharedObjectPrefersIconAsImageForTransformer:(id)transformer
{
  transformerCopy = transformer;
  _thumbnailIfLoaded = [(LPFileMetadata *)self _thumbnailIfLoaded];
  if (_thumbnailIfLoaded)
  {
    v6 = sizeClassRequiresLargeMedia([transformerCopy effectiveSizeClass]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sharedObjectPreviewSummaryForTransformer:(id)transformer
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"“%@”");
  name = [(LPFileMetadata *)self name];
  _lp_directionallyIsolatedString = [name _lp_directionallyIsolatedString];
  v8 = [v4 localizedStringWithFormat:v5, _lp_directionallyIsolatedString];

  return v8;
}

@end