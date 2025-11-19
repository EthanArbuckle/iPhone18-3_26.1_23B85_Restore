@interface LPFileMetadata
+ (id)descriptionForUTI:(id)a3;
- (BOOL)_isImage;
- (BOOL)_isPlainText;
- (BOOL)_isWatchFace;
- (BOOL)_shouldUseBackground;
- (BOOL)_shouldUseCircularIcon;
- (BOOL)_shouldUseSquareIcon;
- (BOOL)isEqual:(id)a3;
- (BOOL)sharedObjectPrefersIconAsImageForTransformer:(id)a3;
- (LPFileMetadata)initWithCoder:(id)a3;
- (id)_bottomCaptionStringForTransformer:(id)a3;
- (id)_fileDetailStringForTransformer:(id)a3;
- (id)_fileTypeStringForTransformer:(id)a3;
- (id)_nameForTransformer:(id)a3;
- (id)_singleLineDescriptionForRemoteFileWithTransformer:(id)a3;
- (id)_valueForKeyPathIfLoaded:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fallbackIconForTransformer:(id)a3;
- (id)presentationPropertiesForTransformer:(id)a3;
- (id)previewImageForTransformer:(id)a3;
- (id)previewSummaryForTransformer:(id)a3;
- (id)sharedObjectIconForTransformer:(id)a3;
- (id)sharedObjectInformationForTransformer:(id)a3;
- (id)sharedObjectPreviewSummaryForTransformer:(id)a3;
- (id)sharedObjectSubtitleForTransformer:(id)a3;
- (id)sharedObjectTitleForTransformer:(id)a3;
- (int64_t)summaryTypeForTransformer:(id)a3;
- (void)_enumerateAsynchronousFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)populateMetadataForBackwardCompatibility:(id)a3;
@end

@implementation LPFileMetadata

- (LPFileMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = LPFileMetadata;
  v5 = [(LPFileMetadata *)&v21 init];
  if (v5)
  {
    v6 = decodeStringForKey(v4, @"name");
    name = v5->_name;
    v5->_name = v6;

    v8 = decodeStringForKey(v4, @"type");
    type = v5->_type;
    v5->_type = v8;

    v10 = decodeNumberForKey(v4, @"size");
    v5->_size = [v10 unsignedLongLongValue];

    v11 = [v4 _lp_strictlyDecodeLPImageForKey:@"thumbnail"];
    thumbnail = v5->_thumbnail;
    v5->_thumbnail = v11;

    v13 = [v4 _lp_strictlyDecodeLPImageForKey:@"smallThumbnail"];
    smallThumbnail = v5->_smallThumbnail;
    v5->_smallThumbnail = v13;

    v15 = [v4 _lp_strictlyDecodeLPImageForKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v15;

    v17 = [v4 _lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 _lp_encodeStringIfNotNil:self->_name forKey:@"name"];
  [v5 _lp_encodeStringIfNotNil:self->_type forKey:@"type"];
  if (self->_size)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v5 _lp_encodeObjectIfNotNil:v4 forKey:@"size"];
  }

  [v5 _lp_encodeObjectIfNotNil:self->_thumbnail forKey:@"thumbnail"];
  [v5 _lp_encodeObjectIfNotNil:self->_smallThumbnail forKey:@"smallThumbnail"];
  [v5 _lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [v5 _lp_encodeObjectIfNotNil:self->_creationDate forKey:@"creationDate"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [LPFileMetadata allocWithZone:a3];
  if (v4)
  {
    v5 = [(LPFileMetadata *)self name];
    [(LPFileMetadata *)v4 setName:v5];

    v6 = [(LPFileMetadata *)self type];
    [(LPFileMetadata *)v4 setType:v6];

    [(LPFileMetadata *)v4 setSize:[(LPFileMetadata *)self size]];
    v7 = [(LPFileMetadata *)self thumbnail];
    [(LPFileMetadata *)v4 setThumbnail:v7];

    v8 = [(LPFileMetadata *)self smallThumbnail];
    [(LPFileMetadata *)v4 setSmallThumbnail:v8];

    v9 = [(LPFileMetadata *)self icon];
    [(LPFileMetadata *)v4 setIcon:v9];

    v10 = [(LPFileMetadata *)self creationDate];
    [(LPFileMetadata *)v4 setCreationDate:v10];

    v11 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = LPFileMetadata;
  if ([(LPFileMetadata *)&v8 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
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

- (void)_enumerateAsynchronousFields:(id)a3
{
  v3 = a3;
  v3[2](v3, @"thumbnail");
  v3[2](v3, @"smallThumbnail");
  v3[2](v3, @"icon");
}

+ (id)descriptionForUTI:(id)a3
{
  v116[22] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (([(__CFString *)v3 _lp_hasCaseInsensitivePrefix:@"com.apple.iwork"]& 1) != 0 || ([(__CFString *)v3 _lp_hasCaseInsensitivePrefix:@"com.apple.itunes"]& 1) != 0 || ([(__CFString *)v3 _lp_hasCaseInsensitivePrefix:@"org.oasis-open"]& 1) != 0)
  {

LABEL_5:
    v4 = UTTypeCopyDescription(v3);
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
        if ([(__CFString *)v3 _lp_isEqualIgnoringCase:v19])
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
        if ([(__CFString *)v3 _lp_hasCaseInsensitivePrefix:v31])
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
        v44 = UTTypeConformsTo(v3, v43);

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

- (id)_fileTypeStringForTransformer:(id)a3
{
  v4 = [(LPFileMetadata *)self type];

  if (v4)
  {
    v5 = [(LPFileMetadata *)self type];
    v4 = [LPFileMetadata descriptionForUTI:v5];
  }

  return v4;
}

- (id)_fileDetailStringForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPFileMetadata *)self creationDate];
  if (v5 && ([v4 sourceBundleIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_lp_isEqualIgnoringCase:", @"com.apple.mobilephone"), v6, v5, v7))
  {
    v8 = MEMORY[0x1E696AB78];
    v9 = [(LPFileMetadata *)self creationDate];
    v10 = [v8 localizedStringFromDate:v9 dateStyle:1 timeStyle:1];
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

- (id)_bottomCaptionStringForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPFileMetadata *)self _fileTypeStringForTransformer:v4];
  v6 = [(LPFileMetadata *)self _fileDetailStringForTransformer:v4];
  v7 = joinedByDot(v5, v6);

  return v7;
}

- (BOOL)_isImage
{
  v2 = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(v2, *MEMORY[0x1E69637F8]) != 0;

  return v3;
}

- (BOOL)_isPlainText
{
  v2 = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(v2, *MEMORY[0x1E6963870]) != 0;

  return v3;
}

- (BOOL)_isWatchFace
{
  v2 = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(v2, @"com.apple.watchface") != 0;

  return v3;
}

- (BOOL)_shouldUseSquareIcon
{
  v3 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  if (v3)
  {
    v4 = [(LPFileMetadata *)self _isImage];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldUseCircularIcon
{
  v2 = [(LPFileMetadata *)self type];
  v3 = UTTypeConformsTo(v2, *MEMORY[0x1E69638D8]) != 0;

  return v3;
}

- (BOOL)_shouldUseBackground
{
  v3 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  v6 = [v5 properties];
  v7 = [v6 type];

  if (v7 == 5 || [(LPFileMetadata *)self _isWatchFace])
  {
    return 0;
  }

  v10 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  v8 = [v10 _hasTransparency];

  return v8;
}

- (id)_singleLineDescriptionForRemoteFileWithTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPFileMetadata *)self _fileTypeStringForTransformer:v4];
  v6 = [v4 URL];
  v7 = [v6 _lp_simplifiedStringForDisplayOnly:0];

  v8 = joinedByEmDash(v5, v7);

  return v8;
}

- (id)_nameForTransformer:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 effectiveSizeClass] != 2)
  {
    goto LABEL_14;
  }

  v5 = [v4 metadata];
  v6 = [v5 originalURL];
  if (([v6 _lp_isHTTPFamilyURL] & 1) == 0)
  {

    goto LABEL_14;
  }

  v7 = [(LPFileMetadata *)self type];

  if (!v7)
  {
LABEL_14:
    v21 = [(LPFileMetadata *)self name];
    goto LABEL_15;
  }

  v8 = [(LPFileMetadata *)self type];
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
        v20 = UTTypeConformsTo(v8, v19);

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
    v23 = v15;
  }

  else
  {
    v23 = [(LPFileMetadata *)self name];
  }

  v21 = v23;

LABEL_15:

  return v21;
}

- (id)_valueForKeyPathIfLoaded:(id)a3
{
  v3 = [(LPFileMetadata *)self valueForKeyPath:a3];
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

- (id)presentationPropertiesForTransformer:(id)a3
{
  v4 = a3;
  if (sizeClassIsCardHeading([v4 effectiveSizeClass]))
  {
    v5 = [(LPFileMetadata *)self _thumbnailIfLoaded];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v25 = [(LPFileMetadata *)self type];
      [v4 scaleFactor];
      v27 = customIconForUTI(v25, v26);
      v28 = v27;
      if (v27)
      {
        v7 = v27;
      }

      else
      {
        v38 = [(LPFileMetadata *)self _iconIfLoaded];
        v39 = v38;
        if (v38)
        {
          v40 = v38;
        }

        else
        {
          v40 = +[LPResources fileIcon];
        }

        v7 = v40;
      }
    }

    v42 = [LPCardHeadingPresentationProperties alloc];
    v43 = [(LPFileMetadata *)self _nameForTransformer:v4];
    v44 = [(LPFileMetadata *)self _bottomCaptionStringForTransformer:v4];
    v8 = [(LPCardHeadingPresentationProperties *)v42 initWithStyle:33 topCaption:v43 bottomCaption:v44 icon:v7];

    v45 = objc_alloc_init(LPImagePresentationProperties);
    v46 = [(LPWebLinkPresentationProperties *)v8 captionBar];
    [v46 setLeadingIconProperties:v45];

    if ([(LPFileMetadata *)self _shouldUseSquareIcon])
    {
      v47 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      v48 = [v47 leadingIconProperties];
      [v48 setRequireFixedSize:1];

      v49 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      v50 = [v49 leadingIconProperties];
      [v50 setScalingMode:2];
    }

    else
    {
      if (![(LPFileMetadata *)self _shouldUseCircularIcon])
      {
        goto LABEL_31;
      }

      v49 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      v50 = [v49 leadingIconProperties];
      [v50 setFilter:13];
    }

LABEL_31:
    if ([(LPFileMetadata *)self _shouldUseBackground])
    {
      v51 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      v52 = [v51 leadingIconProperties];
      [v52 setShouldApplyBackground:1];
    }

    goto LABEL_41;
  }

  v8 = [v4 commonPresentationPropertiesForStyle:33];
  v9 = objc_alloc_init(LPCaptionBarPresentationProperties);
  [(LPWebLinkPresentationProperties *)v8 setCaptionBar:v9];

  if (![v4 _rowConfigurationForStyle:{-[LPWebLinkPresentationProperties style](v8, "style")}])
  {
    v10 = [v4 URL];
    v11 = [v10 isFileURL];

    if ((v11 & 1) == 0)
    {
      v21 = [(LPFileMetadata *)self _singleLineDescriptionForRemoteFileWithTransformer:v4];
      v22 = [(LPWebLinkPresentationProperties *)v8 captionBar];
      v18 = [v22 top];
      v23 = [v18 leading];
      [v23 setText:v21];
      goto LABEL_11;
    }
  }

  v12 = [(LPFileMetadata *)self _nameForTransformer:v4];
  v13 = [(LPWebLinkPresentationProperties *)v8 captionBar];
  v14 = [v13 top];
  v15 = [v14 leading];
  [v15 setText:v12];

  v16 = [(LPFileMetadata *)self _bottomCaptionStringForTransformer:v4];
  v17 = [(LPWebLinkPresentationProperties *)v8 captionBar];
  v18 = [v17 bottom];
  v19 = [v18 leading];
  [v19 setText:v16];

  v20 = [v4 URL];
  LOBYTE(v17) = [v20 isFileURL];

  if ((v17 & 1) == 0)
  {
    v21 = [v4 URL];
    v22 = [v21 _lp_simplifiedStringForDisplayOnly:0];
    v18 = [(LPWebLinkPresentationProperties *)v8 captionBar];
    v23 = [v18 belowBottom];
    v24 = [v23 leading];
    [v24 setText:v22];

LABEL_11:
  }

  v29 = [(LPFileMetadata *)self _smallThumbnailIfLoaded];
  if (v29 && (v30 = [v4 effectiveSizeClass], v29, v30 == 8))
  {
    v31 = [(LPFileMetadata *)self _smallThumbnailIfLoaded];
    [v4 _populateProperties:v8 withPrimaryImage:v31];
  }

  else
  {
    v32 = [(LPFileMetadata *)self _thumbnailIfLoaded];

    if (v32)
    {
      v31 = [(LPFileMetadata *)self _thumbnailIfLoaded];
      [v4 _populateProperties:v8 withPrimaryImage:v31];
    }

    else
    {
      v31 = [(LPFileMetadata *)self type];
      [v4 scaleFactor];
      v34 = customIconForUTI(v31, v33);
      v35 = v34;
      if (v34)
      {
        v36 = 0;
        v37 = v34;
      }

      else
      {
        v41 = [(LPFileMetadata *)self _iconIfLoaded];
        v18 = v41;
        if (v41)
        {
          v36 = 0;
          v37 = v41;
        }

        else
        {
          v37 = +[LPResources fileIcon];
          v18 = 0;
          v36 = 1;
        }
      }

      [v4 _populateProperties:v8 withPrimaryIcon:v37 iconProperties:0 canBecomeImage:0];
      if (v36)
      {
      }

      if (!v35)
      {
      }
    }
  }

  v53 = [v4 metadata];
  v54 = [v53 video];
  [(LPWebLinkPresentationProperties *)v8 setVideo:v54];

  v55 = [v4 metadata];
  v56 = [v55 audio];
  [(LPWebLinkPresentationProperties *)v8 setAudio:v56];

  v57 = [(LPWebLinkPresentationProperties *)v8 audio];

  if (v57)
  {
    v58 = [(LPWebLinkPresentationProperties *)v8 audio];
    v7 = [LPInlineMediaPlaybackInformation audioFilePlaybackInformationWithAudio:v58];

    [(LPWebLinkPresentationProperties *)v8 setInlinePlaybackInformation:v7];
LABEL_41:
  }

  return v8;
}

- (id)previewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"File: %@");
  v6 = [(LPFileMetadata *)self name];
  v7 = [v6 _lp_directionallyIsolatedString];
  v8 = [v4 localizedStringWithFormat:v5, v7];

  return v8;
}

- (id)previewImageForTransformer:(id)a3
{
  v4 = [(LPFileMetadata *)self thumbnail];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(LPFileMetadata *)self icon];
  }

  v7 = v6;

  return v7;
}

- (id)fallbackIconForTransformer:(id)a3
{
  v3 = +[LPResources fileIcon];

  return v3;
}

- (void)populateMetadataForBackwardCompatibility:(id)a3
{
  v7 = a3;
  v4 = [(LPFileMetadata *)self name];
  [v7 setTitle:v4];

  v5 = [(LPFileMetadata *)self thumbnail];
  [v7 setImage:v5];

  v6 = [(LPFileMetadata *)self icon];
  [v7 setIcon:v6];
}

- (int64_t)summaryTypeForTransformer:(id)a3
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

- (id)sharedObjectTitleForTransformer:(id)a3
{
  v3 = [(LPFileMetadata *)self name];

  return v3;
}

- (id)sharedObjectSubtitleForTransformer:(id)a3
{
  v4 = [(LPFileMetadata *)self type];

  if (v4)
  {
    v5 = [(LPFileMetadata *)self type];
    v4 = [LPFileMetadata descriptionForUTI:v5];
  }

  return v4;
}

- (id)sharedObjectInformationForTransformer:(id)a3
{
  v4 = [(LPFileMetadata *)self size];
  if (v4)
  {
    v4 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[LPFileMetadata size](self countStyle:{"size"), 0}];
  }

  return v4;
}

- (id)sharedObjectIconForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(LPFileMetadata *)self type];
    [v4 scaleFactor];
    v10 = customIconForUTI(v8, v9);
    v11 = v10;
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v12 = [(LPFileMetadata *)self _iconIfLoaded];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
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

- (BOOL)sharedObjectPrefersIconAsImageForTransformer:(id)a3
{
  v4 = a3;
  v5 = [(LPFileMetadata *)self _thumbnailIfLoaded];
  if (v5)
  {
    v6 = sizeClassRequiresLargeMedia([v4 effectiveSizeClass]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sharedObjectPreviewSummaryForTransformer:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = LPLocalizedString(@"“%@”");
  v6 = [(LPFileMetadata *)self name];
  v7 = [v6 _lp_directionallyIsolatedString];
  v8 = [v4 localizedStringWithFormat:v5, v7];

  return v8;
}

@end