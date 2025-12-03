@interface LPLinkMetadataPresentationTransformer
- (BOOL)_allowsDominantBackgroundColorAsCaptionBackgroundForProperties:(id)properties;
- (BOOL)_hasNonMicroblogQuotedTextForStyle:(int64_t)style;
- (BOOL)_prefersIconAsImage;
- (BOOL)_prefersImageAsIconWithStyle:(int64_t)style;
- (BOOL)_prefersLeadingIconWithStyle:(int64_t)style;
- (BOOL)hasMedia;
- (BOOL)hasMediaWithProperties:(id)properties;
- (BOOL)shouldUseAppClipPresentation;
- (LPLinkMetadataPresentationTransformer)init;
- (NSString)domainName;
- (NSURL)canonicalURL;
- (NSURL)originalURL;
- (id)_lastResortIcon;
- (id)_preferredBackgroundColorImageSourceForProperties:(id)properties;
- (id)arAsset;
- (id)backgroundColorForStyle:(int64_t)style;
- (id)commonPresentationPropertiesForStyle:(int64_t)style;
- (id)domainNameForIndicator;
- (id)imageForStyle:(int64_t)style imageMetadata:(id)metadata icon:(id *)icon alternateImages:(id *)images;
- (id)mainCaptionBarForStyle:(int64_t)style;
- (id)presentationProperties;
- (id)quotedTextForStyle:(int64_t)style;
- (id)quotedTextForStyleIgnoringAllowsQuotedText:(int64_t)text;
- (id)subtitleForStyle:(int64_t)style;
- (id)summaryForStyle:(int64_t)style;
- (id)titleForStyle:(int64_t)style;
- (id)unspecializedPresentationProperties;
- (id)unspecializedPresentationPropertiesForStyle:(int64_t)style;
- (id)videoForStyle:(int64_t)style;
- (int64_t)rendererStyle;
- (unint64_t)_rowConfigurationForStyle:(int64_t)style;
- (unint64_t)effectiveSizeClass;
- (void)_populateDominantBackgroundColorForPropertiesIfNeeded:(id)needed;
- (void)_populateProperties:(id)properties withPrimaryIcon:(id)icon iconProperties:(id)iconProperties canBecomeImage:(BOOL)image;
- (void)_populateProperties:(id)properties withPrimaryImage:(id)image;
- (void)_populatePropertiesForMediaOverlayIcon:(id)icon;
- (void)_propagateDominantBackgroundColorToDependentPropertiesIfNeeded:(id)needed;
@end

@implementation LPLinkMetadataPresentationTransformer

- (LPLinkMetadataPresentationTransformer)init
{
  v6.receiver = self;
  v6.super_class = LPLinkMetadataPresentationTransformer;
  v2 = [(LPLinkMetadataPresentationTransformer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_scaleFactor = 2.0;
    *&v2->_allowsTapping = 257;
    v2->_allowsPlayback = 1;
    v4 = v2;
  }

  return v3;
}

- (NSURL)originalURL
{
  URL = self->_URL;
  if (URL)
  {
    originalURL = URL;
  }

  else
  {
    originalURL = [(LPLinkMetadata *)self->_metadata originalURL];
  }

  return originalURL;
}

- (NSURL)canonicalURL
{
  v3 = [(LPLinkMetadata *)self->_metadata URL];
  v4 = v3;
  if (v3)
  {
    originalURL = v3;
  }

  else
  {
    originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  }

  v6 = originalURL;

  return v6;
}

- (int64_t)rendererStyle
{
  canonicalURL = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v4 = [LPPresentationSpecializations searchQueryForURL:canonicalURL];

  if (v4)
  {
    return 4;
  }

  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (specialization)
  {
  }

  else
  {
    title = [(LPLinkMetadata *)self->_metadata title];
    v8 = [title length];

    if (v8)
    {
      originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
      if ([LPPresentationSpecializations isAppleFitnessURL:originalURL])
      {
        v5 = 43;
      }

      else if ([LPPresentationSpecializations isAppleHealthURL:originalURL])
      {
        v5 = 52;
      }

      else if ([LPPresentationSpecializations isAppleMusicClassicalURL:originalURL])
      {
        v5 = 55;
      }

      else if ([LPPresentationSpecializations isAppleBookSeriesURL:originalURL])
      {
        v5 = 57;
      }

      else
      {
        if (![LPPresentationSpecializations isAppleGamesActivityURL:originalURL])
        {
          v15 = [LPPresentationSpecializations isAppleSportsURL:originalURL];

          if (v15)
          {
            return 60;
          }

          goto LABEL_5;
        }

        v5 = 61;
      }

      return v5;
    }
  }

LABEL_5:
  if ([(LPLinkMetadataPresentationTransformer *)self preferredSizeClass]== 2 || [(LPLinkMetadataPresentationTransformer *)self preferredSizeClass]== 13)
  {
    return 1;
  }

  if (!self->_metadata && self->_complete && self->_allowsTapToLoad)
  {
    return 15;
  }

  shouldUseAppClipPresentation = [(LPLinkMetadataPresentationTransformer *)self shouldUseAppClipPresentation];
  if ([LPPresentationSpecializations isMicroblogPost:self->_metadata]&& !shouldUseAppClipPresentation)
  {
    return 3;
  }

  if ([(LPLinkMetadataPresentationTransformer *)self preferredSizeClass]== 3 || [(LPLinkMetadataPresentationTransformer *)self preferredSizeClass]== 5)
  {
    return 0;
  }

  title2 = [(LPLinkMetadata *)self->_metadata title];
  if (title2 || ([(LPLinkMetadata *)self->_metadata siteName], (title2 = objc_claimAutoreleasedReturnValue()) != 0) || ([(LPLinkMetadata *)self->_metadata image], (title2 = objc_claimAutoreleasedReturnValue()) != 0) || ([(LPLinkMetadata *)self->_metadata video], (title2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    icon = [(LPLinkMetadata *)self->_metadata icon];

    if (!icon)
    {
      return 2;
    }
  }

  _hasMedia = [(LPLinkMetadata *)self->_metadata _hasMedia];
  v13 = 41;
  if (!shouldUseAppClipPresentation)
  {
    v13 = 0;
  }

  if (_hasMedia)
  {
    return v13;
  }

  else
  {
    return 1;
  }
}

- (id)mainCaptionBarForStyle:(int64_t)style
{
  v5 = objc_alloc_init(LPCaptionBarPresentationProperties);
  v6 = [(LPLinkMetadataPresentationTransformer *)self _rowConfigurationForStyle:style];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if ([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]== 8)
      {
        v23 = [(LPLinkMetadataPresentationTransformer *)self titleForStyle:style];
        v24 = [(LPCaptionBarPresentationProperties *)v5 top];
        leading = [v24 leading];
        [leading setText:v23];

        v26 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyleIgnoringAllowsQuotedText:style];
        v27 = v26;
        if (!v26)
        {
          v27 = [(LPLinkMetadataPresentationTransformer *)self summaryForStyle:style];
        }

        bottom = [(LPCaptionBarPresentationProperties *)v5 bottom];
        leading2 = [bottom leading];
        [leading2 setText:v27];

        if (!v26)
        {
        }

        v10 = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:style];
        belowBottom = [(LPCaptionBarPresentationProperties *)v5 belowBottom];
        leading3 = [belowBottom leading];
        [leading3 setText:v10];
        goto LABEL_8;
      }
    }

    else if (v6 != 3)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = [(LPLinkMetadataPresentationTransformer *)self titleForStyle:style];
    v8 = [(LPCaptionBarPresentationProperties *)v5 top];
    leading4 = [v8 leading];
    [leading4 setText:v7];

    v10 = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:style];
    belowBottom = [(LPCaptionBarPresentationProperties *)v5 bottom];
    leading3 = [belowBottom leading];
    [leading3 setText:v10];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  if (v6)
  {
    if (v6 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v18 = stylePrefersSubtitleForOneUpPresentation(style);
  v19 = v18;
  if (v18 && ([(LPLinkMetadataPresentationTransformer *)self originalURL], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    title = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:style];
    v21 = 0;
    v22 = 1;
  }

  else
  {
    title = [(LPLinkMetadata *)self->_metadata title];
    v10 = 0;
    v22 = 0;
    v21 = 1;
  }

  v30 = [(LPCaptionBarPresentationProperties *)v5 top];
  leading5 = [v30 leading];
  [leading5 setText:title];

  if (v21)
  {

    if (!v22)
    {
      goto LABEL_32;
    }

LABEL_35:

    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v22)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (style == 57)
  {
    v13 = LPLocalizedString(@" Books");
    belowBottom2 = [(LPCaptionBarPresentationProperties *)v5 belowBottom];
    leading6 = [belowBottom2 leading];
    [leading6 setText:v13];
  }

  if (self->_allowsTapping && self->_allowsPlayback)
  {
    if (style == 15 || ([(LPLinkMetadataPresentationTransformer *)self videoForStyle:style], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      [(LPCaptionBarPresentationProperties *)v5 setTrailingAccessoryType:1];
      [(LPCaptionBarPresentationProperties *)v5 setShouldHighlightIndependently:1];
    }
  }

  return v5;
}

- (id)titleForStyle:(int64_t)style
{
  canonicalURL = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v6 = [LPPresentationSpecializations searchQueryForURL:canonicalURL];

  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = v7;
    goto LABEL_4;
  }

  if (style != 3)
  {
    goto LABEL_14;
  }

  canonicalURL2 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v11 = [LPPresentationSpecializations isSinaWeiboURL:canonicalURL2];

  if (v11)
  {
    v8 = 0;
    goto LABEL_4;
  }

  canonicalURL3 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v13 = [LPPresentationSpecializations isTweetURL:canonicalURL3];

  if (!v13 || (-[LPLinkMetadata title](self->_metadata, "title"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 rangeOfString:@" on Twitter" options:12], v17 = v16, v14, !v17) && (-[LPLinkMetadata title](self->_metadata, "title"), v18 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v18, "rangeOfString:options:", @" on X", 12), v20 = v19, v18, !v20))
  {
LABEL_14:
    title = [(LPLinkMetadata *)self->_metadata title];

    metadata = self->_metadata;
    if (title)
    {
      [(LPLinkMetadata *)metadata title];
    }

    else
    {
      [(LPLinkMetadata *)metadata siteName];
    }
    v7 = ;
    goto LABEL_3;
  }

  title2 = [(LPLinkMetadata *)self->_metadata title];
  v8 = [title2 substringToIndex:v15];

LABEL_4:

  return v8;
}

- (NSString)domainName
{
  originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v3 = [originalURL _lp_simplifiedStringForDisplayOnly:0];

  [v3 _lp_setStringType:1];

  return v3;
}

- (BOOL)shouldUseAppClipPresentation
{
  associatedApplication = [(LPLinkMetadata *)self->_metadata associatedApplication];
  bundleIdentifier = [associatedApplication bundleIdentifier];

  return bundleIdentifier && [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]== 0;
}

- (id)subtitleForStyle:(int64_t)style
{
  originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v6 = originalURL;
  if (!originalURL)
  {
    summary = [(LPLinkMetadata *)self->_metadata summary];
    goto LABEL_27;
  }

  if (![originalURL isFileURL])
  {
    if ([v6 _lp_isTelephoneURL])
    {
      summary = [v6 _lp_formattedTelephoneNumber];
      goto LABEL_27;
    }

    if (style <= 54)
    {
      if (style == 41)
      {
        metadata = [(LPLinkMetadataPresentationTransformer *)self metadata];
        associatedApplication = [metadata associatedApplication];
        caption = [associatedApplication caption];

        if (caption)
        {
          metadata2 = [(LPLinkMetadataPresentationTransformer *)self metadata];
          associatedApplication2 = [metadata2 associatedApplication];
          caption2 = [associatedApplication2 caption];

LABEL_25:
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (style != 43)
      {
        if (style == 52)
        {
          metadata3 = [(LPLinkMetadataPresentationTransformer *)self metadata];
          summary2 = [metadata3 summary];

          if (summary2)
          {
            goto LABEL_24;
          }
        }

LABEL_26:
        summary = [(LPLinkMetadataPresentationTransformer *)self domainName];
        goto LABEL_27;
      }

      metadata4 = [(LPLinkMetadataPresentationTransformer *)self metadata];
      summary3 = [metadata4 summary];

      if (!summary3)
      {
        goto LABEL_26;
      }

LABEL_24:
      metadata2 = [(LPLinkMetadataPresentationTransformer *)self metadata];
      caption2 = [metadata2 summary];
      goto LABEL_25;
    }

    switch(style)
    {
      case '7':
        v10 = @" Music Classical";
        break;
      case '9':
        metadata5 = [(LPLinkMetadataPresentationTransformer *)self metadata];
        summary4 = [metadata5 summary];

        if (!summary4)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      case '<':
        v10 = @" Sports";
        break;
      default:
        goto LABEL_26;
    }

    summary = LPLocalizedString(v10);
    goto LABEL_27;
  }

  summary = [v6 lastPathComponent];
LABEL_27:
  caption2 = summary;
LABEL_28:

  return caption2;
}

- (id)summaryForStyle:(int64_t)style
{
  originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  if (originalURL && (-[LPLinkMetadata summary](self->_metadata, "summary"), v5 = objc_claimAutoreleasedReturnValue(), -[LPLinkMetadata title](self->_metadata, "title"), v6 = objc_claimAutoreleasedReturnValue(), [v5 _lp_similarityToString:v6], v8 = v7, v6, v5, v8 <= 0.6))
  {
    summary = [(LPLinkMetadata *)self->_metadata summary];
  }

  else
  {
    summary = 0;
  }

  return summary;
}

- (id)domainNameForIndicator
{
  originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v4 = originalURL;
  if (originalURL && ([originalURL isFileURL] & 1) == 0 && (objc_msgSend(v4, "_lp_isTelephoneURL") & 1) == 0)
  {
    metadata = [(LPLinkMetadataPresentationTransformer *)self metadata];
    associatedApplication = [metadata associatedApplication];
    bundleIdentifier = [associatedApplication bundleIdentifier];
    if (bundleIdentifier)
    {
      metadata2 = [(LPLinkMetadataPresentationTransformer *)self metadata];
      associatedApplication2 = [metadata2 associatedApplication];
      caption = [associatedApplication2 caption];

      if (caption)
      {
        domainName = [(LPLinkMetadataPresentationTransformer *)self domainName];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  domainName = 0;
LABEL_9:

  return domainName;
}

- (BOOL)_hasNonMicroblogQuotedTextForStyle:(int64_t)style
{
  if (!styleSupportsQuotedText(style) || !sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 0;
  }

  selectedText = [(LPLinkMetadata *)self->_metadata selectedText];
  v5 = [selectedText length] != 0;

  return v5;
}

- (id)quotedTextForStyleIgnoringAllowsQuotedText:(int64_t)text
{
  summary = [(LPLinkMetadata *)self->_metadata summary];
  if ([(LPLinkMetadataPresentationTransformer *)self _shouldUseMicroblogQuotedTextForStyle:text])
  {
    v6 = [(LPLinkMetadataPresentationTransformer *)self URL];
    v7 = [LPPresentationSpecializations isTweetURL:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^[\\p{Quotation_Mark}](.*)[\\p{Quotation_Mark}]$" options:8 error:0];
      v9 = [v8 firstMatchInString:summary options:0 range:{0, objc_msgSend(summary, "length")}];
      if ([v9 numberOfRanges] == 2)
      {
        v10 = [v9 rangeAtIndex:1];
        v12 = [summary substringWithRange:{v10, v11}];

        summary = v12;
      }
    }

    summary = summary;
    v13 = summary;
  }

  else
  {
    selectedText = [(LPLinkMetadata *)self->_metadata selectedText];
    _lp_stringByTrimmingWhitespace = [selectedText _lp_stringByTrimmingWhitespace];

    if ([_lp_stringByTrimmingWhitespace length])
    {
      v13 = _lp_stringByTrimmingWhitespace;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)quotedTextForStyle:(int64_t)style
{
  if (styleSupportsQuotedText(style) && sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    v5 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyleIgnoringAllowsQuotedText:style];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_lastResortIcon
{
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (specialization)
  {
    v4 = specialization;
    specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
    v6 = [specialization2 conformsToProtocol:&unk_1F24961A8];

    if (v6)
    {
      specialization3 = [(LPLinkMetadata *)self->_metadata specialization];
      v8 = [specialization3 fallbackIconForTransformer:self];

      sourceContextIcon2 = v8;
      if (v8)
      {
        goto LABEL_27;
      }
    }
  }

  originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  _lp_isHTTPFamilyURL = [originalURL _lp_isHTTPFamilyURL];

  if (_lp_isHTTPFamilyURL)
  {
LABEL_5:
    sourceContextIcon = [(LPLinkMetadataPresentationTransformer *)self sourceContextIcon];
    v13 = sourceContextIcon;
    if (sourceContextIcon)
    {
      v14 = sourceContextIcon;
    }

    else
    {
      v14 = +[LPResources safariIcon];
    }

    sourceContextIcon2 = v14;

    goto LABEL_27;
  }

  originalURL2 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  isFileURL = [originalURL2 isFileURL];

  if (isFileURL)
  {
    v17 = +[LPResources fileIcon];
  }

  else
  {
    originalURL3 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
    _lp_isTelephoneURL = [originalURL3 _lp_isTelephoneURL];

    if (!_lp_isTelephoneURL)
    {
      goto LABEL_12;
    }

    v17 = +[LPResources telephoneIcon];
  }

  sourceContextIcon2 = v17;
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_12:
  originalURL4 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  if (originalURL4 || ([(LPLinkMetadata *)self->_metadata specialization], (originalURL4 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_15:
    sourceContextIcon2 = [(LPLinkMetadataPresentationTransformer *)self sourceContextIcon];
    goto LABEL_16;
  }

  if (![LPApplicationIdentification isKnownApplication:5])
  {
    goto LABEL_15;
  }

  sourceContextIcon2 = +[LPResources textIcon];
  if (!sourceContextIcon2)
  {
    goto LABEL_15;
  }

LABEL_16:
  effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  if (sourceContextIcon2)
  {
    goto LABEL_27;
  }

  if (!sizeClassIsCardHeading(effectiveSizeClass))
  {
    goto LABEL_5;
  }

  scaleFactor = self->_scaleFactor;
  v23 = self->_sourceBundleIdentifier;
  if (iconForApplication_applicationIcon)
  {
    v24 = *&iconForApplication_applicationIconScaleFactor;
    if (*&iconForApplication_applicationIconScaleFactor == scaleFactor && (iconForApplication_applicationBundleIdentifier == v23 || ([iconForApplication_applicationBundleIdentifier _lp_isEqualIgnoringCase:{v23, *&iconForApplication_applicationIconScaleFactor}] & 1) != 0))
    {
      goto LABEL_37;
    }
  }

  if (v23 && ([MEMORY[0x1E696AAE8] mainBundle], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "bundleIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "_lp_isEqualIgnoringCase:", v23), v26, v25, !v27))
  {
    applicationIcon = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v23];
  }

  else
  {
    applicationIcon = [MEMORY[0x1E69A8A00] applicationIcon];
  }

  v30 = applicationIcon;
  if (applicationIcon)
  {
    v31 = objc_alloc(MEMORY[0x1E69A8A30]);
    +[LPTheme largestIconSizeInPoints];
    v33 = v32;
    +[LPTheme largestIconSizeInPoints];
    v35 = [v31 initWithSize:v33 scale:{v34, scaleFactor}];
    [v35 setShouldApplyMask:0];
    v36 = [v30 prepareImageForDescriptor:v35];
    cGImage = [v36 CGImage];
    if (cGImage)
    {
      v38 = objc_alloc_init(LPImageProperties);
      [(LPImageProperties *)v38 setType:1];
      v39 = [[LPImage alloc] _initWithCGImage:cGImage properties:v38];
      v40 = iconForApplication_applicationIcon;
      iconForApplication_applicationIcon = v39;

      v41 = [(NSString *)v23 copy];
      v42 = iconForApplication_applicationBundleIdentifier;
      iconForApplication_applicationBundleIdentifier = v41;

      iconForApplication_applicationIconScaleFactor = *&scaleFactor;
LABEL_37:
      v30 = iconForApplication_applicationIcon;
      goto LABEL_39;
    }

    v30 = 0;
  }

LABEL_39:

  sourceContextIcon2 = v30;
  if (!v30)
  {
    goto LABEL_5;
  }

LABEL_27:

  return sourceContextIcon2;
}

- (id)imageForStyle:(int64_t)style imageMetadata:(id)metadata icon:(id *)icon alternateImages:(id *)images
{
  v51[1] = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  isComplete = [(LPLinkMetadataPresentationTransformer *)self isComplete];
  effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  v47 = sizeClassAllowsIconWithPlaceholderImage(effectiveSizeClass);
  v43 = sizeClassRequiresLargeMedia(effectiveSizeClass);
  if (styleSupportsIcon(style))
  {
    v11 = 1;
  }

  else
  {
    v11 = sizeClassPrefersIcon(effectiveSizeClass);
  }

  iconCopy = icon;
  if (styleSupportsImage(style))
  {
    v12 = sizeClassPrefersIcon(effectiveSizeClass) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __90__LPLinkMetadataPresentationTransformer_imageForStyle_imageMetadata_icon_alternateImages___block_invoke;
  v49[3] = &unk_1E7A372D0;
  v49[5] = style;
  v49[6] = effectiveSizeClass;
  v49[4] = self;
  v45 = __90__LPLinkMetadataPresentationTransformer_imageForStyle_imageMetadata_icon_alternateImages___block_invoke(v49);
  v13 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyle:style];
  if (v13)
  {
    v14 = effectiveSizeClass == 5;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [(LPLinkMetadataPresentationTransformer *)self _hasNonMicroblogQuotedTextForStyle:style];
  v17 = (v15 ^ 1) & v12;
  v18 = v16 | v11 | v15;
  if (((v18 | v17) & 1) == 0)
  {
    _lastResortIcon = 0;
    goto LABEL_24;
  }

  icon = [(LPLinkMetadata *)self->_metadata icon];
  v20 = imageOnlyIfViable(icon);

  iconMetadata = [(LPLinkMetadata *)self->_metadata iconMetadata];
  v22 = [iconMetadata URL];

  if (v22)
  {
    v23 = [LPImageRemoteURLRepresentation alloc];
    iconMetadata2 = [(LPLinkMetadata *)self->_metadata iconMetadata];
    v25 = [iconMetadata2 URL];
    v26 = [(LPImageRemoteURLRepresentation *)v23 initWithScale:1 URL:v25];
    v51[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [v20 set_remoteURLsForEmailCompatibleOutput:v27];
  }

  image = [(LPLinkMetadata *)self->_metadata image];
  v29 = imageOnlyIfViable(image);

  if (images)
  {
    *images = [(LPLinkMetadata *)self->_metadata alternateImages];
  }

  v30 = [metadataCopy URL];

  if (v30)
  {
    v31 = [LPImageRemoteURLRepresentation alloc];
    v32 = [metadataCopy URL];
    v33 = [(LPImageRemoteURLRepresentation *)v31 initWithScale:1 URL:v32];
    v50 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    [v29 set_remoteURLsForEmailCompatibleOutput:v34];
  }

  if (v29 != 0 && (v45 || v16))
  {

    if (!images)
    {
      v35 = 0;
LABEL_35:
      v20 = v29;
      goto LABEL_37;
    }

LABEL_34:
    v35 = 0;
    *images = 0;
    goto LABEL_35;
  }

  if (v29)
  {
    _isLowResolutionAsImage = [v29 _isLowResolutionAsImage];
    if (v20)
    {
      v38 = 0;
    }

    else
    {
      v38 = _isLowResolutionAsImage;
    }

    v39 = v38 & isComplete;
    if (v39)
    {
      v20 = v29;
      v35 = 0;
    }

    else
    {
      v35 = v29;
    }

    if (images && (v39 & 1) != 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v35 = 0;
  }

LABEL_37:
  if (v17 & 1 | ((v18 & 1) == 0))
  {
    _lastResortIcon = v20;
  }

  else
  {
    if (v20 == 0 && isComplete || v35 && [v20 _isLowResolutionAsIconWithScaleFactor:self->_scaleFactor])
    {
      _lastResortIcon = v35;

      if (images)
      {
        *images = 0;
      }
    }

    else
    {
      _lastResortIcon = v20;
    }

    v35 = 0;
  }

  if (!(v18 & 1 | ((v17 & 1) == 0)))
  {
    if ((v47 & (v43 && v35 == 0)) == 0)
    {

      _lastResortIcon = 0;
      goto LABEL_49;
    }

LABEL_24:
    v35 = 0;
  }

LABEL_49:
  if (!(v35 | _lastResortIcon))
  {
    _lastResortIcon = [(LPLinkMetadataPresentationTransformer *)self _lastResortIcon];
  }

  if ((v18 | v47))
  {
    v40 = _lastResortIcon;
    *iconCopy = _lastResortIcon;
  }

  if (v17)
  {
    v41 = v35;
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

BOOL __90__LPLinkMetadataPresentationTransformer_imageForStyle_imageMetadata_icon_alternateImages___block_invoke(uint64_t a1)
{
  result = 1;
  if ((stylePrefersImageAsIcon(*(a1 + 40)) & 1) == 0 && (sizeClassPrefersImageAsIcon(*(a1 + 48)) & 1) == 0)
  {
    if (!sizeClassSupportsIconHoisting(*(a1 + 48)))
    {
      return 0;
    }

    v3 = [*(a1 + 32) canonicalURL];
    v4 = [LPPresentationSpecializations isGoogleURL:v3];

    if (!v4)
    {
      return 0;
    }

    v5 = [*(*(a1 + 32) + 40) image];
    v6 = imageOnlyIfViable(v5);

    [v6 _pixelSize];
    aspectRatioFromSize(v7, v8);
    v10 = vabdd_f64(1.0, v9);

    if (v10 > 0.1)
    {
      return 0;
    }
  }

  return result;
}

- (id)videoForStyle:(int64_t)style
{
  if (styleSupportsVideo(style) && sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    video = [(LPLinkMetadata *)self->_metadata video];
  }

  else
  {
    video = 0;
  }

  return video;
}

- (id)arAsset
{
  if (canDisplayARAssets() && sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    arAsset = [(LPLinkMetadata *)self->_metadata arAsset];
  }

  else
  {
    arAsset = 0;
  }

  return arAsset;
}

- (id)backgroundColorForStyle:(int64_t)style
{
  if (style != 3)
  {
    goto LABEL_6;
  }

  canonicalURL = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v5 = [LPPresentationSpecializations isTweetURL:canonicalURL];

  if (v5)
  {
    v6 = +[LPResources tweetBackgroundColor];
    goto LABEL_7;
  }

  canonicalURL2 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v8 = [LPPresentationSpecializations isSinaWeiboURL:canonicalURL2];

  if (v8)
  {
    v6 = +[LPResources weiboBackgroundColor];
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (id)commonPresentationPropertiesForStyle:(int64_t)style
{
  v5 = objc_alloc_init(LPWebLinkPresentationProperties);
  [(LPWebLinkPresentationProperties *)v5 setPreliminary:!self->_complete];
  [(LPWebLinkPresentationProperties *)v5 setStyle:style];
  v6 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyle:[(LPWebLinkPresentationProperties *)v5 style]];
  [(LPWebLinkPresentationProperties *)v5 setQuotedText:v6];

  return v5;
}

- (id)unspecializedPresentationProperties
{
  rendererStyle = [(LPLinkMetadataPresentationTransformer *)self rendererStyle];

  return [(LPLinkMetadataPresentationTransformer *)self unspecializedPresentationPropertiesForStyle:rendererStyle];
}

- (id)unspecializedPresentationPropertiesForStyle:(int64_t)style
{
  v5 = [(LPLinkMetadataPresentationTransformer *)self commonPresentationPropertiesForStyle:?];
  v6 = [(LPLinkMetadataPresentationTransformer *)self mainCaptionBarForStyle:style];
  [v5 setCaptionBar:v6];

  v7 = [(LPLinkMetadataPresentationTransformer *)self backgroundColorForStyle:style];
  [v5 setBackgroundColor:v7];

  imageMetadata = [(LPLinkMetadata *)self->_metadata imageMetadata];
  v37 = 0;
  v38 = 0;
  v9 = [(LPLinkMetadataPresentationTransformer *)self imageForStyle:style imageMetadata:imageMetadata icon:&v38 alternateImages:&v37];
  v10 = v38;
  v11 = v37;
  [v5 setImage:v9];

  image = [v5 image];

  if (image)
  {
    [v5 setAlternateImages:v11];

    v11 = 0;
  }

  v13 = [(LPLinkMetadataPresentationTransformer *)self videoForStyle:style];
  [v5 setVideo:v13];

  v14 = [(LPLinkMetadataPresentationTransformer *)self audioForStyle:style];
  [v5 setAudio:v14];

  arAsset = [(LPLinkMetadataPresentationTransformer *)self arAsset];
  [v5 setArAsset:arAsset];

  audio = [v5 audio];

  if (audio)
  {
    audio2 = [v5 audio];
    v18 = [LPInlineMediaPlaybackInformation audioFilePlaybackInformationWithAudio:audio2];

    [v5 setInlinePlaybackInformation:v18];
  }

  if ((styleSupportsStackedIcons(style) & 1) == 0)
  {

    v11 = 0;
  }

  image2 = [v5 image];
  if (image2 || ([v5 video], (image2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "quotedText"), (image2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "arAsset"), (image2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = 0;
  }

  else
  {
    if (!sizeClassRequiresLargeMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
    {
      v20 = 0;
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    image2 = +[LPResources safariIcon];
    [v5 setImage:image2];
    v20 = 1;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v20 & [v10 _isFallbackIcon] & 1) == 0)
  {
    if ([(LPLinkMetadataPresentationTransformer *)self _prefersLeadingIconWithStyle:style])
    {
      captionBar = [v5 captionBar];
      [captionBar setLeadingIcon:v10];

      captionBar2 = [v5 captionBar];
      [captionBar2 setAdditionalLeadingIcons:v11];
    }

    else
    {
      captionBar3 = [v5 captionBar];
      [captionBar3 setTrailingIcon:v10];

      captionBar2 = [v5 captionBar];
      [captionBar2 setAdditionalTrailingIcons:v11];
    }
  }

LABEL_18:
  if (style == 41)
  {
    associatedApplication = [(LPLinkMetadata *)self->_metadata associatedApplication];
    icon = [associatedApplication icon];
    captionBar4 = [v5 captionBar];
    [captionBar4 setLeadingIcon:icon];

    captionBar5 = [v5 captionBar];
    [captionBar5 setShouldHighlightIndependently:1];

    if (self->_allowsTapping)
    {
      associatedApplication2 = [(LPLinkMetadata *)self->_metadata associatedApplication];
      action = [associatedApplication2 action];

      if (action)
      {
        associatedApplication3 = [(LPLinkMetadata *)self->_metadata associatedApplication];
        action2 = [associatedApplication3 action];
        captionBar6 = [v5 captionBar];
        [captionBar6 setButtonCaption:action2];
      }
    }

    domainNameForIndicator = [(LPLinkMetadataPresentationTransformer *)self domainNameForIndicator];
    [v5 setDomainNameForIndicator:domainNameForIndicator];
  }

  v34 = objc_alloc_init(LPIndeterminateProgressSpinnerPresentationProperties);
  v35 = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:style];
  [(LPIndeterminateProgressSpinnerPresentationProperties *)v34 setText:v35];

  [v5 setProgressSpinner:v34];

  return v5;
}

- (id)presentationProperties
{
  effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  specialization = [(LPLinkMetadata *)self->_metadata specialization];
  if (specialization)
  {
    specialization2 = [(LPLinkMetadata *)self->_metadata specialization];
    trailing2 = [specialization2 conformsToProtocol:&unk_1F2495708];

    if (trailing2)
    {
      specialization3 = [(LPLinkMetadata *)self->_metadata specialization];
      originalURL = [(LPLinkMetadataPresentationTransformer *)self originalURL];
      if (originalURL && ((-[LPLinkMetadataPresentationTransformer originalURL](self, "originalURL"), trailing2 = objc_claimAutoreleasedReturnValue(), v9 = [specialization3 canGeneratePresentationPropertiesForURL:trailing2], effectiveSizeClass == 2) ? (v10 = 1) : (v10 = v9), trailing2, originalURL, v10 != 1))
      {
      }

      else
      {
        unspecializedPresentationProperties = [specialization3 presentationPropertiesForTransformer:self];

        if (unspecializedPresentationProperties)
        {
          goto LABEL_12;
        }
      }
    }
  }

  unspecializedPresentationProperties = [(LPLinkMetadataPresentationTransformer *)self unspecializedPresentationProperties];
LABEL_12:
  if ((sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) & 1) == 0)
  {
    [unspecializedPresentationProperties setImage:0];
    [unspecializedPresentationProperties setVideo:0];
  }

  if (!self->_allowsPlayback)
  {
    [unspecializedPresentationProperties setInlinePlaybackInformation:0];
    [unspecializedPresentationProperties setVideo:0];
    [unspecializedPresentationProperties setAudio:0];
  }

  if ((sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) & 1) == 0)
  {
    [unspecializedPresentationProperties setQuotedText:0];
  }

  if (!sizeClassAllowsInlinePlayback(-[LPLinkMetadataPresentationTransformer effectiveSizeClass](self, "effectiveSizeClass")) || ([unspecializedPresentationProperties inlinePlaybackInformation], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "type"), v13 = canPlayInlineMediaType(), v12, (v13 & 1) == 0))
  {
    [unspecializedPresentationProperties setInlinePlaybackInformation:0];
  }

  v14 = -[LPLinkMetadataPresentationTransformer _rowConfigurationForStyle:](self, "_rowConfigurationForStyle:", [unspecializedPresentationProperties style]);
  if (v14 == 1)
  {
    captionBar = [unspecializedPresentationProperties captionBar];
    aboveTop = [captionBar aboveTop];
    leading = [aboveTop leading];
    [leading setText:0];

    captionBar2 = [unspecializedPresentationProperties captionBar];
    aboveTop2 = [captionBar2 aboveTop];
    trailing = [aboveTop2 trailing];
    [trailing setText:0];

    captionBar3 = [unspecializedPresentationProperties captionBar];
    belowBottom = [captionBar3 belowBottom];
    leading2 = [belowBottom leading];
    [leading2 setText:0];

    captionBar4 = [unspecializedPresentationProperties captionBar];
    belowBottom2 = [captionBar4 belowBottom];
    trailing2 = [belowBottom2 trailing];
    [trailing2 setText:0];
  }

  else
  {
    if (v14)
    {
      goto LABEL_26;
    }

    captionBar5 = [unspecializedPresentationProperties captionBar];
    aboveTop3 = [captionBar5 aboveTop];
    leading3 = [aboveTop3 leading];
    [leading3 setText:0];

    captionBar6 = [unspecializedPresentationProperties captionBar];
    aboveTop4 = [captionBar6 aboveTop];
    trailing3 = [aboveTop4 trailing];
    [trailing3 setText:0];

    captionBar7 = [unspecializedPresentationProperties captionBar];
    bottom = [captionBar7 bottom];
    leading4 = [bottom leading];
    [leading4 setText:0];

    captionBar8 = [unspecializedPresentationProperties captionBar];
    bottom2 = [captionBar8 bottom];
    trailing4 = [bottom2 trailing];
    [trailing4 setText:0];

    captionBar9 = [unspecializedPresentationProperties captionBar];
    belowBottom3 = [captionBar9 belowBottom];
    leading5 = [belowBottom3 leading];
    [leading5 setText:0];

    captionBar4 = [unspecializedPresentationProperties captionBar];
    belowBottom2 = [captionBar4 belowBottom];
    trailing2 = [belowBottom2 trailing];
    [trailing2 setText:0];
  }

LABEL_26:
  if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters neverShowText])
  {
    captionBar10 = [unspecializedPresentationProperties captionBar];
    v42 = [captionBar10 top];
    leading6 = [v42 leading];
    [leading6 setText:0];

    captionBar11 = [unspecializedPresentationProperties captionBar];
    v45 = [captionBar11 top];
    trailing5 = [v45 trailing];
    [trailing5 setText:0];

    captionBar12 = [unspecializedPresentationProperties captionBar];
    aboveTop5 = [captionBar12 aboveTop];
    leading7 = [aboveTop5 leading];
    [leading7 setText:0];

    captionBar13 = [unspecializedPresentationProperties captionBar];
    aboveTop6 = [captionBar13 aboveTop];
    trailing6 = [aboveTop6 trailing];
    [trailing6 setText:0];

    captionBar14 = [unspecializedPresentationProperties captionBar];
    bottom3 = [captionBar14 bottom];
    leading8 = [bottom3 leading];
    [leading8 setText:0];

    captionBar15 = [unspecializedPresentationProperties captionBar];
    bottom4 = [captionBar15 bottom];
    trailing7 = [bottom4 trailing];
    [trailing7 setText:0];

    captionBar16 = [unspecializedPresentationProperties captionBar];
    belowBottom4 = [captionBar16 belowBottom];
    leading9 = [belowBottom4 leading];
    [leading9 setText:0];

    captionBar17 = [unspecializedPresentationProperties captionBar];
    belowBottom5 = [captionBar17 belowBottom];
    trailing2 = [belowBottom5 trailing];
    [trailing2 setText:0];

    [unspecializedPresentationProperties setQuotedText:0];
  }

  if ([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]== 2)
  {
    captionBar18 = [unspecializedPresentationProperties captionBar];
    aboveTop7 = [captionBar18 aboveTop];
    hasAnyContent = [aboveTop7 hasAnyContent];
    captionBar19 = [unspecializedPresentationProperties captionBar];
    v65 = [captionBar19 top];
    hasAnyContent2 = [v65 hasAnyContent];
    captionBar20 = [unspecializedPresentationProperties captionBar];
    bottom5 = [captionBar20 bottom];
    hasAnyContent3 = [bottom5 hasAnyContent];
    captionBar21 = [unspecializedPresentationProperties captionBar];
    trailing2 = [captionBar21 belowBottom];
    v71 = hasAnyContent2 + hasAnyContent + hasAnyContent3 + [trailing2 hasAnyContent];

    if (v71 == 1)
    {
      captionBar22 = [unspecializedPresentationProperties captionBar];
      [captionBar22 applyToAllCaptions:&__block_literal_global_22];
    }
  }

  inlinePlaybackInformation = [unspecializedPresentationProperties inlinePlaybackInformation];
  if (inlinePlaybackInformation)
  {
    allowsPlayback = self->_allowsPlayback;

    if (allowsPlayback)
    {
      captionBar23 = [unspecializedPresentationProperties captionBar];
      [captionBar23 setTrailingIcon:0];

      captionBar24 = [unspecializedPresentationProperties captionBar];
      [captionBar24 setAdditionalTrailingIcons:0];
    }
  }

  captionBar25 = [unspecializedPresentationProperties captionBar];
  button = [captionBar25 button];
  if (button)
  {
    trailing2 = [unspecializedPresentationProperties captionBar];
    button2 = [trailing2 button];
    type = [button2 type];

    if (type == 1)
    {
      captionBar26 = [unspecializedPresentationProperties captionBar];
      [captionBar26 setTrailingIcon:0];

      captionBar27 = [unspecializedPresentationProperties captionBar];
      [captionBar27 setAdditionalTrailingIcons:0];

      [unspecializedPresentationProperties setInlinePlaybackInformation:0];
    }
  }

  else
  {
  }

  if (sizeClassSupportsIconHoisting([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    if (![(LPLinkMetadataPresentationTransformer *)self hasMediaWithProperties:unspecializedPresentationProperties])
    {
      captionBar28 = [unspecializedPresentationProperties captionBar];
      leadingIcon = [captionBar28 leadingIcon];
      trailingIcon = leadingIcon;
      if (!leadingIcon)
      {
        trailing2 = [unspecializedPresentationProperties captionBar];
        trailingIcon = [trailing2 trailingIcon];
      }

      [unspecializedPresentationProperties setImage:trailingIcon];
      if (!leadingIcon)
      {
      }

      v86 = objc_alloc_init(LPImagePresentationProperties);
      +[LPTheme placeholderIconSizeInPoints];
      v88 = v87;
      +[LPTheme placeholderIconSizeInPoints];
      [(LPImagePresentationProperties *)v86 setFixedSize:v88, v89];
      [(LPImagePresentationProperties *)v86 setScalingMode:3];
      [(LPImagePresentationProperties *)v86 setFilter:3];
      [unspecializedPresentationProperties setImageProperties:v86];
    }

    captionBar29 = [unspecializedPresentationProperties captionBar];
    [captionBar29 removeAllIcons];
  }

  if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters neverShowIcon])
  {
    captionBar30 = [unspecializedPresentationProperties captionBar];
    [captionBar30 removeAllIcons];

    mediaTopCaptionBar = [unspecializedPresentationProperties mediaTopCaptionBar];
    [mediaTopCaptionBar removeAllIcons];

    mediaBottomCaptionBar = [unspecializedPresentationProperties mediaBottomCaptionBar];
    [mediaBottomCaptionBar removeAllIcons];
  }

  if (sizeClassRequiresLargeMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) && ![(LPLinkMetadataPresentationTransformer *)self hasMediaWithProperties:unspecializedPresentationProperties])
  {
    _lastResortIcon = [(LPLinkMetadataPresentationTransformer *)self _lastResortIcon];
    [unspecializedPresentationProperties setImage:_lastResortIcon];
  }

  effectiveSizeClass2 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  [unspecializedPresentationProperties style];
  if (sizeClassRequiresLeadingIcon(effectiveSizeClass2))
  {
    captionBar31 = [unspecializedPresentationProperties captionBar];
    leadingIcon2 = [captionBar31 leadingIcon];

    if (!leadingIcon2)
    {
      _lastResortIcon2 = [(LPLinkMetadataPresentationTransformer *)self _lastResortIcon];
      captionBar32 = [unspecializedPresentationProperties captionBar];
      [captionBar32 setLeadingIcon:_lastResortIcon2];
    }
  }

  if (sizeClassAllowsApplicationBadge(-[LPLinkMetadataPresentationTransformer effectiveSizeClass](self, "effectiveSizeClass")) || styleRequiresApplicationBadge([unspecializedPresentationProperties style]))
  {
    sourceApplication = [(LPLinkMetadata *)self->_metadata sourceApplication];
    if (!sourceApplication)
    {
      specialization4 = [(LPLinkMetadata *)self->_metadata specialization];
      if (specialization4 && (-[LPLinkMetadata specialization](self->_metadata, "specialization"), v102 = objc_claimAutoreleasedReturnValue(), v103 = [v102 conformsToProtocol:&unk_1F2495A60], v102, specialization4, v103))
      {
        specialization5 = [(LPLinkMetadata *)self->_metadata specialization];
        sourceApplication = [specialization5 sourceApplicationMetadataForTransformer:self];
      }

      else
      {
        sourceApplication = 0;
      }
    }

    captionBar33 = [unspecializedPresentationProperties captionBar];
    leadingIcon3 = [captionBar33 leadingIcon];
    if (leadingIcon3)
    {
      icon = [sourceApplication icon];

      if (!icon)
      {
LABEL_65:

        goto LABEL_66;
      }

      captionBar33 = [sourceApplication icon];
      captionBar34 = [unspecializedPresentationProperties captionBar];
      [captionBar34 setLeadingIconBadge:captionBar33];
    }

    goto LABEL_65;
  }

LABEL_66:
  if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters onlyShowIcon])
  {
    v109 = objc_alloc_init(LPWebLinkPresentationProperties);
    -[LPWebLinkPresentationProperties setPreliminary:](v109, "setPreliminary:", [unspecializedPresentationProperties isPreliminary]);
    -[LPWebLinkPresentationProperties setStyle:](v109, "setStyle:", [unspecializedPresentationProperties style]);
    v110 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v109 setCaptionBar:v110];

    captionBar35 = [unspecializedPresentationProperties captionBar];
    leadingIcon4 = [captionBar35 leadingIcon];

    if (leadingIcon4)
    {
      captionBar36 = [unspecializedPresentationProperties captionBar];
      leadingIcon5 = [captionBar36 leadingIcon];
      captionBar37 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [captionBar37 setLeadingIcon:leadingIcon5];

      captionBar38 = [unspecializedPresentationProperties captionBar];
      leadingIconProperties = [captionBar38 leadingIconProperties];
      captionBar39 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [captionBar39 setLeadingIconProperties:leadingIconProperties];

      captionBar40 = [unspecializedPresentationProperties captionBar];
      additionalLeadingIcons = [captionBar40 additionalLeadingIcons];
      captionBar41 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [captionBar41 setAdditionalLeadingIcons:additionalLeadingIcons];
    }

    else
    {
      captionBar42 = [unspecializedPresentationProperties captionBar];
      trailingIcon2 = [captionBar42 trailingIcon];

      if (!trailingIcon2)
      {
LABEL_72:
        v130 = v109;

        unspecializedPresentationProperties = v130;
        goto LABEL_73;
      }

      captionBar43 = [unspecializedPresentationProperties captionBar];
      trailingIcon3 = [captionBar43 trailingIcon];
      captionBar44 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [captionBar44 setTrailingIcon:trailingIcon3];

      captionBar45 = [unspecializedPresentationProperties captionBar];
      trailingIconProperties = [captionBar45 trailingIconProperties];
      captionBar46 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [captionBar46 setTrailingIconProperties:trailingIconProperties];

      captionBar40 = [unspecializedPresentationProperties captionBar];
      additionalLeadingIcons = [captionBar40 additionalTrailingIcons];
      captionBar41 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [captionBar41 setAdditionalTrailingIcons:additionalLeadingIcons];
    }

    goto LABEL_72;
  }

LABEL_73:
  if (styleUsesBlurBackgroundForCaptionBar([unspecializedPresentationProperties style]))
  {
    image = [unspecializedPresentationProperties image];
    if (image)
    {
      image2 = [unspecializedPresentationProperties image];
      _isNonFallbackSymbolImage = [image2 _isNonFallbackSymbolImage];

      if ((_isNonFallbackSymbolImage & 1) == 0)
      {
        [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:unspecializedPresentationProperties];
        captionBar47 = [unspecializedPresentationProperties captionBar];
        [captionBar47 setUsesBlurredBackground:1];

        image3 = [unspecializedPresentationProperties image];
        [unspecializedPresentationProperties setBackgroundImage:image3];

        image4 = [unspecializedPresentationProperties image];
        _darkInterfaceAlternativeImage = [image4 _darkInterfaceAlternativeImage];

        if (_darkInterfaceAlternativeImage)
        {
          image5 = [unspecializedPresentationProperties image];
          _darkInterfaceAlternativeImage2 = [image5 _darkInterfaceAlternativeImage];
          backgroundImage = [unspecializedPresentationProperties backgroundImage];
          [backgroundImage _setDarkInterfaceAlternativeImage:_darkInterfaceAlternativeImage2];
        }
      }
    }
  }

  [unspecializedPresentationProperties setAllowsDominantImageBackgroundColorAsCaptionBackground:{-[LPLinkMetadataPresentationTransformer _allowsDominantBackgroundColorAsCaptionBackgroundForProperties:](self, "_allowsDominantBackgroundColorAsCaptionBackgroundForProperties:", unspecializedPresentationProperties)}];
  if (self->_needsDominantBackgroundColor)
  {
    [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:unspecializedPresentationProperties];
  }

  [(LPLinkMetadataPresentationTransformer *)self _propagateDominantBackgroundColorToDependentPropertiesIfNeeded:unspecializedPresentationProperties];
  if (self->_mediaOverlayIcon)
  {
    [(LPLinkMetadataPresentationTransformer *)self _populatePropertiesForMediaOverlayIcon:unspecializedPresentationProperties];
  }

  if ((sizeClassAllowsBackgroundColor([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) & 1) == 0)
  {
    [unspecializedPresentationProperties setBackgroundColor:0];
  }

  v141 = unspecializedPresentationProperties;

  return unspecializedPresentationProperties;
}

void __63__LPLinkMetadataPresentationTransformer_presentationProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[LPTheme primaryLabelColor];
  [v3 setColor:v2];
}

- (BOOL)hasMediaWithProperties:(id)properties
{
  propertiesCopy = properties;
  video = [propertiesCopy video];
  if (!video)
  {
    image = [propertiesCopy image];
    if (!image || ([propertiesCopy image], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_isFallbackIcon")))
    {
      alternateImages = [propertiesCopy alternateImages];
      if (![alternateImages count])
      {
        arAsset = [propertiesCopy arAsset];
        if (!arAsset)
        {
          quotedText = [propertiesCopy quotedText];
          v6 = quotedText != 0;

          if (!image)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

      v6 = 1;
      if (!image)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (BOOL)hasMedia
{
  selfCopy = self;
  presentationProperties = [(LPLinkMetadataPresentationTransformer *)self presentationProperties];
  LOBYTE(selfCopy) = [(LPLinkMetadataPresentationTransformer *)selfCopy hasMediaWithProperties:presentationProperties];

  return selfCopy;
}

- (id)_preferredBackgroundColorImageSourceForProperties:(id)properties
{
  propertiesCopy = properties;
  image = [propertiesCopy image];
  v5 = image;
  if (image)
  {
    trailingIcon = image;
  }

  else
  {
    captionBar = [propertiesCopy captionBar];
    leadingIcon = [captionBar leadingIcon];
    v9 = leadingIcon;
    if (leadingIcon)
    {
      trailingIcon = leadingIcon;
    }

    else
    {
      captionBar2 = [propertiesCopy captionBar];
      trailingIcon = [captionBar2 trailingIcon];
    }
  }

  return trailingIcon;
}

- (BOOL)_allowsDominantBackgroundColorAsCaptionBackgroundForProperties:(id)properties
{
  propertiesCopy = properties;
  if (sizeClassUsesVisualRefresh([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    if (styleAllowsVisualRefresh([propertiesCopy style]))
    {
      if ((styleUsesBlurBackgroundForCaptionBar([propertiesCopy style]) & 1) == 0)
      {
        backgroundColor = [propertiesCopy backgroundColor];

        if (!backgroundColor)
        {
          v8 = [(LPLinkMetadataPresentationTransformer *)self _preferredBackgroundColorImageSourceForProperties:propertiesCopy];
          v9 = v8;
          if (v8)
          {
            platformImage = [v8 platformImage];
            if ([platformImage _lp_isSymbolImage])
            {
            }

            else
            {
              properties = [v9 properties];
              type = [properties type];

              if (!type)
              {
                v6 = 1;
                goto LABEL_12;
              }
            }
          }

          v6 = 0;
LABEL_12:

          goto LABEL_6;
        }
      }
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (void)_populateDominantBackgroundColorForPropertiesIfNeeded:(id)needed
{
  neededCopy = needed;
  if (([neededCopy _hasComputedDominantImageBackgroundColor] & 1) == 0)
  {
    [neededCopy _setHasComputedDominantImageBackgroundColor:1];
    v5 = [(LPLinkMetadataPresentationTransformer *)self _preferredBackgroundColorImageSourceForProperties:neededCopy];
    if (v5)
    {
      image = [neededCopy image];
      _darkInterfaceAlternativeImage = [image _darkInterfaceAlternativeImage];

      platformImage = [v5 platformImage];
      if ([platformImage _lp_isSymbolImage])
      {
      }

      else
      {
        platformImage2 = [_darkInterfaceAlternativeImage platformImage];
        _lp_isSymbolImage = [platformImage2 _lp_isSymbolImage];

        if ((_lp_isSymbolImage & 1) == 0)
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke;
          v23[3] = &unk_1E7A36E10;
          v24 = v5;
          v11 = __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke(v23);
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke_2;
          v20[3] = &unk_1E7A37318;
          v21 = _darkInterfaceAlternativeImage;
          v12 = v11;
          v22 = v12;
          v13 = __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke_2(v20);
          v14 = v13;
          if (v12 && v13)
          {
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke_4;
            v16[3] = &unk_1E7A37360;
            v16[4] = self;
            v17 = v13;
            v18 = v12;
            v19 = &__block_literal_global_90;
            v15 = __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke_4(v16);
            [neededCopy setDominantImageBackgroundColor:v15];
          }
        }
      }
    }
  }
}

id __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  v3 = [v2 dominantColor];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 properties];
    v6 = [v5 dominantColor];
  }

  else
  {
    v5 = [v4 platformImage];
    v7 = [v5 _lp_dominantColors];
    v6 = [v7 firstObject];
  }

  return v6;
}

id __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) properties];
  v3 = [v2 dominantColor];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 properties];
    v6 = [v5 dominantColor];
  }

  else
  {
    v7 = [v4 platformImage];
    v8 = [v7 _lp_dominantColors];
    v5 = [v8 firstObject];

    v9 = v5;
    if (!*(a1 + 32))
    {
      v9 = *(a1 + 40);
    }

    v6 = v9;
  }

  v10 = v6;

  return v10;
}

id __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0.0;
  [a2 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4];
  v2 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:v6 brightness:v5 + dbl_1AE9C6B70[v5 < 0.5] alpha:v4];

  return v2;
}

id __95__LPLinkMetadataPresentationTransformer__populateDominantBackgroundColorForPropertiesIfNeeded___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) effectiveAppearance];
  v3 = [v2 _lp_prefersDarkInterface];
  v4 = 48;
  if (v3)
  {
    v4 = 40;
  }

  v5 = *(a1 + v4);

  v6 = (*(*(a1 + 56) + 16))();

  return v6;
}

- (void)_propagateDominantBackgroundColorToDependentPropertiesIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(LPLinkMetadataPresentationTransformer *)self _shouldUseDominantBackgroundColorAsCaptionBackgroundForProperties:neededCopy])
  {
    [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:neededCopy];
    captionBar = [neededCopy captionBar];
    playButton = [captionBar playButton];

    if (!playButton)
    {
      v6 = objc_alloc_init(LPPlayButtonPresentationProperties);
      captionBar2 = [neededCopy captionBar];
      [captionBar2 setPlayButton:v6];
    }

    dominantImageBackgroundColor = [neededCopy dominantImageBackgroundColor];
    captionBar3 = [neededCopy captionBar];
    playButton2 = [captionBar3 playButton];
    [playButton2 setAccentColor:dominantImageBackgroundColor];
  }
}

- (void)_populatePropertiesForMediaOverlayIcon:(id)icon
{
  iconCopy = icon;
  [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:?];
  mediaBottomCaptionBar = [iconCopy mediaBottomCaptionBar];

  if (!mediaBottomCaptionBar)
  {
    v5 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [iconCopy setMediaBottomCaptionBar:v5];
  }

  v6 = objc_alloc_init(LPImagePresentationProperties);
  [(LPImagePresentationProperties *)v6 setFilter:1];
  [(LPImagePresentationProperties *)v6 setScalingMode:3];
  mediaOverlayIcon = self->_mediaOverlayIcon;
  mediaBottomCaptionBar2 = [iconCopy mediaBottomCaptionBar];
  [mediaBottomCaptionBar2 setTrailingIcon:mediaOverlayIcon];

  mediaBottomCaptionBar3 = [iconCopy mediaBottomCaptionBar];
  [mediaBottomCaptionBar3 setTrailingIconProperties:v6];
}

- (unint64_t)_rowConfigurationForStyle:(int64_t)style
{
  effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  v6 = rowConfigurationForSizeClass(effectiveSizeClass);
  if (effectiveSizeClass == 12 && ![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge]&& self->_hasButton)
  {
    v6 = 2;
  }

  result = maximumRowConfigurationForStyle(style);
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

- (BOOL)_prefersIconAsImage
{
  effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];

  return sizeClassRequiresLargeMedia(effectiveSizeClass);
}

- (BOOL)_prefersImageAsIconWithStyle:(int64_t)style
{
  if (sizeClassRequiresLargeMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 0;
  }

  if (sizeClassPrefersIcon([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 1;
  }

  return stylePrefersImageAsIcon(style);
}

- (BOOL)_prefersLeadingIconWithStyle:(int64_t)style
{
  if (sizeClassRequiresTrailingIcon([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 0;
  }

  if (stylePrefersLeadingIcon(style))
  {
    return 1;
  }

  effectiveSizeClass = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];

  return sizeClassPrefersLeadingIcon(effectiveSizeClass);
}

- (void)_populateProperties:(id)properties withPrimaryImage:(id)image
{
  propertiesCopy = properties;
  imageCopy = image;
  if (-[LPLinkMetadataPresentationTransformer _prefersImageAsIconWithStyle:](self, "_prefersImageAsIconWithStyle:", [propertiesCopy style]))
  {
    if (-[LPLinkMetadataPresentationTransformer _prefersLeadingIconWithStyle:](self, "_prefersLeadingIconWithStyle:", [propertiesCopy style]))
    {
      captionBar = [propertiesCopy captionBar];
      [captionBar setLeadingIcon:imageCopy];
    }

    else
    {
      captionBar = [propertiesCopy captionBar];
      [captionBar setTrailingIcon:imageCopy];
    }
  }

  else
  {
    [propertiesCopy setImage:imageCopy];
  }
}

- (void)_populateProperties:(id)properties withPrimaryIcon:(id)icon iconProperties:(id)iconProperties canBecomeImage:(BOOL)image
{
  imageCopy = image;
  propertiesCopy = properties;
  iconCopy = icon;
  iconPropertiesCopy = iconProperties;
  if ([(LPLinkMetadataPresentationTransformer *)self _prefersIconAsImage]&& imageCopy)
  {
    [propertiesCopy setImage:iconCopy];
    [propertiesCopy setImageProperties:iconPropertiesCopy];
  }

  else
  {
    if (-[LPLinkMetadataPresentationTransformer _prefersLeadingIconWithStyle:](self, "_prefersLeadingIconWithStyle:", [propertiesCopy style]))
    {
      captionBar = [propertiesCopy captionBar];
      [captionBar setLeadingIcon:iconCopy];

      [propertiesCopy setImageProperties:iconPropertiesCopy];
      captionBar2 = [propertiesCopy captionBar];
      [captionBar2 setLeadingIconProperties:iconPropertiesCopy];
    }

    else
    {
      captionBar3 = [propertiesCopy captionBar];
      [captionBar3 setTrailingIcon:iconCopy];

      [propertiesCopy setImageProperties:iconPropertiesCopy];
      captionBar2 = [propertiesCopy captionBar];
      [captionBar2 setTrailingIconProperties:iconPropertiesCopy];
    }
  }
}

- (unint64_t)effectiveSizeClass
{
  if (!self->_hasComputedEffectiveSizeClass)
  {
    preferredSizeClass = self->_preferredSizeClass;
    if (preferredSizeClass == 9)
    {
      self->_effectiveSizeClass = 0;
      self->_hasComputedEffectiveSizeClass = 1;
      hasMedia = [(LPLinkMetadataPresentationTransformer *)self hasMedia];
      preferredSizeClass = 8;
      if (hasMedia)
      {
        preferredSizeClass = 0;
      }
    }

    self->_effectiveSizeClass = preferredSizeClass;
    self->_hasComputedEffectiveSizeClass = 1;
  }

  return self->_effectiveSizeClass;
}

uint64_t __59__LPLinkMetadataPresentationTransformer_effectiveSizeClass__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  if (v4 == 9)
  {
    *(v3 + 16) = 0;
    *(*(a1 + 32) + 8) = 1;
    v5 = [*(a1 + 32) hasMedia];
    v4 = 8;
    if (v5)
    {
      return 0;
    }
  }

  return v4;
}

@end