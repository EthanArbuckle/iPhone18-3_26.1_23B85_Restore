@interface LPLinkMetadataPresentationTransformer
- (BOOL)_allowsDominantBackgroundColorAsCaptionBackgroundForProperties:(id)a3;
- (BOOL)_hasNonMicroblogQuotedTextForStyle:(int64_t)a3;
- (BOOL)_prefersIconAsImage;
- (BOOL)_prefersImageAsIconWithStyle:(int64_t)a3;
- (BOOL)_prefersLeadingIconWithStyle:(int64_t)a3;
- (BOOL)hasMedia;
- (BOOL)hasMediaWithProperties:(id)a3;
- (BOOL)shouldUseAppClipPresentation;
- (LPLinkMetadataPresentationTransformer)init;
- (NSString)domainName;
- (NSURL)canonicalURL;
- (NSURL)originalURL;
- (id)_lastResortIcon;
- (id)_preferredBackgroundColorImageSourceForProperties:(id)a3;
- (id)arAsset;
- (id)backgroundColorForStyle:(int64_t)a3;
- (id)commonPresentationPropertiesForStyle:(int64_t)a3;
- (id)domainNameForIndicator;
- (id)imageForStyle:(int64_t)a3 imageMetadata:(id)a4 icon:(id *)a5 alternateImages:(id *)a6;
- (id)mainCaptionBarForStyle:(int64_t)a3;
- (id)presentationProperties;
- (id)quotedTextForStyle:(int64_t)a3;
- (id)quotedTextForStyleIgnoringAllowsQuotedText:(int64_t)a3;
- (id)subtitleForStyle:(int64_t)a3;
- (id)summaryForStyle:(int64_t)a3;
- (id)titleForStyle:(int64_t)a3;
- (id)unspecializedPresentationProperties;
- (id)unspecializedPresentationPropertiesForStyle:(int64_t)a3;
- (id)videoForStyle:(int64_t)a3;
- (int64_t)rendererStyle;
- (unint64_t)_rowConfigurationForStyle:(int64_t)a3;
- (unint64_t)effectiveSizeClass;
- (void)_populateDominantBackgroundColorForPropertiesIfNeeded:(id)a3;
- (void)_populateProperties:(id)a3 withPrimaryIcon:(id)a4 iconProperties:(id)a5 canBecomeImage:(BOOL)a6;
- (void)_populateProperties:(id)a3 withPrimaryImage:(id)a4;
- (void)_populatePropertiesForMediaOverlayIcon:(id)a3;
- (void)_propagateDominantBackgroundColorToDependentPropertiesIfNeeded:(id)a3;
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
    v3 = URL;
  }

  else
  {
    v3 = [(LPLinkMetadata *)self->_metadata originalURL];
  }

  return v3;
}

- (NSURL)canonicalURL
{
  v3 = [(LPLinkMetadata *)self->_metadata URL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  }

  v6 = v5;

  return v6;
}

- (int64_t)rendererStyle
{
  v3 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v4 = [LPPresentationSpecializations searchQueryForURL:v3];

  if (v4)
  {
    return 4;
  }

  v6 = [(LPLinkMetadata *)self->_metadata specialization];
  if (v6)
  {
  }

  else
  {
    v7 = [(LPLinkMetadata *)self->_metadata title];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
      if ([LPPresentationSpecializations isAppleFitnessURL:v9])
      {
        v5 = 43;
      }

      else if ([LPPresentationSpecializations isAppleHealthURL:v9])
      {
        v5 = 52;
      }

      else if ([LPPresentationSpecializations isAppleMusicClassicalURL:v9])
      {
        v5 = 55;
      }

      else if ([LPPresentationSpecializations isAppleBookSeriesURL:v9])
      {
        v5 = 57;
      }

      else
      {
        if (![LPPresentationSpecializations isAppleGamesActivityURL:v9])
        {
          v15 = [LPPresentationSpecializations isAppleSportsURL:v9];

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

  v10 = [(LPLinkMetadataPresentationTransformer *)self shouldUseAppClipPresentation];
  if ([LPPresentationSpecializations isMicroblogPost:self->_metadata]&& !v10)
  {
    return 3;
  }

  if ([(LPLinkMetadataPresentationTransformer *)self preferredSizeClass]== 3 || [(LPLinkMetadataPresentationTransformer *)self preferredSizeClass]== 5)
  {
    return 0;
  }

  v11 = [(LPLinkMetadata *)self->_metadata title];
  if (v11 || ([(LPLinkMetadata *)self->_metadata siteName], (v11 = objc_claimAutoreleasedReturnValue()) != 0) || ([(LPLinkMetadata *)self->_metadata image], (v11 = objc_claimAutoreleasedReturnValue()) != 0) || ([(LPLinkMetadata *)self->_metadata video], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v16 = [(LPLinkMetadata *)self->_metadata icon];

    if (!v16)
    {
      return 2;
    }
  }

  v12 = [(LPLinkMetadata *)self->_metadata _hasMedia];
  v13 = 41;
  if (!v10)
  {
    v13 = 0;
  }

  if (v12)
  {
    return v13;
  }

  else
  {
    return 1;
  }
}

- (id)mainCaptionBarForStyle:(int64_t)a3
{
  v5 = objc_alloc_init(LPCaptionBarPresentationProperties);
  v6 = [(LPLinkMetadataPresentationTransformer *)self _rowConfigurationForStyle:a3];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      if ([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]== 8)
      {
        v23 = [(LPLinkMetadataPresentationTransformer *)self titleForStyle:a3];
        v24 = [(LPCaptionBarPresentationProperties *)v5 top];
        v25 = [v24 leading];
        [v25 setText:v23];

        v26 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyleIgnoringAllowsQuotedText:a3];
        v27 = v26;
        if (!v26)
        {
          v27 = [(LPLinkMetadataPresentationTransformer *)self summaryForStyle:a3];
        }

        v28 = [(LPCaptionBarPresentationProperties *)v5 bottom];
        v29 = [v28 leading];
        [v29 setText:v27];

        if (!v26)
        {
        }

        v10 = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:a3];
        v11 = [(LPCaptionBarPresentationProperties *)v5 belowBottom];
        v12 = [v11 leading];
        [v12 setText:v10];
        goto LABEL_8;
      }
    }

    else if (v6 != 3)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = [(LPLinkMetadataPresentationTransformer *)self titleForStyle:a3];
    v8 = [(LPCaptionBarPresentationProperties *)v5 top];
    v9 = [v8 leading];
    [v9 setText:v7];

    v10 = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:a3];
    v11 = [(LPCaptionBarPresentationProperties *)v5 bottom];
    v12 = [v11 leading];
    [v12 setText:v10];
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

  v18 = stylePrefersSubtitleForOneUpPresentation(a3);
  v19 = v18;
  if (v18 && ([(LPLinkMetadataPresentationTransformer *)self originalURL], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:a3];
    v21 = 0;
    v22 = 1;
  }

  else
  {
    v20 = [(LPLinkMetadata *)self->_metadata title];
    v10 = 0;
    v22 = 0;
    v21 = 1;
  }

  v30 = [(LPCaptionBarPresentationProperties *)v5 top];
  v31 = [v30 leading];
  [v31 setText:v20];

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
  if (a3 == 57)
  {
    v13 = LPLocalizedString(@" Books");
    v14 = [(LPCaptionBarPresentationProperties *)v5 belowBottom];
    v15 = [v14 leading];
    [v15 setText:v13];
  }

  if (self->_allowsTapping && self->_allowsPlayback)
  {
    if (a3 == 15 || ([(LPLinkMetadataPresentationTransformer *)self videoForStyle:a3], v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      [(LPCaptionBarPresentationProperties *)v5 setTrailingAccessoryType:1];
      [(LPCaptionBarPresentationProperties *)v5 setShouldHighlightIndependently:1];
    }
  }

  return v5;
}

- (id)titleForStyle:(int64_t)a3
{
  v5 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v6 = [LPPresentationSpecializations searchQueryForURL:v5];

  if (v6)
  {
    v7 = v6;
LABEL_3:
    v8 = v7;
    goto LABEL_4;
  }

  if (a3 != 3)
  {
    goto LABEL_14;
  }

  v10 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v11 = [LPPresentationSpecializations isSinaWeiboURL:v10];

  if (v11)
  {
    v8 = 0;
    goto LABEL_4;
  }

  v12 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v13 = [LPPresentationSpecializations isTweetURL:v12];

  if (!v13 || (-[LPLinkMetadata title](self->_metadata, "title"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 rangeOfString:@" on Twitter" options:12], v17 = v16, v14, !v17) && (-[LPLinkMetadata title](self->_metadata, "title"), v18 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v18, "rangeOfString:options:", @" on X", 12), v20 = v19, v18, !v20))
  {
LABEL_14:
    v22 = [(LPLinkMetadata *)self->_metadata title];

    metadata = self->_metadata;
    if (v22)
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

  v21 = [(LPLinkMetadata *)self->_metadata title];
  v8 = [v21 substringToIndex:v15];

LABEL_4:

  return v8;
}

- (NSString)domainName
{
  v2 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v3 = [v2 _lp_simplifiedStringForDisplayOnly:0];

  [v3 _lp_setStringType:1];

  return v3;
}

- (BOOL)shouldUseAppClipPresentation
{
  v3 = [(LPLinkMetadata *)self->_metadata associatedApplication];
  v4 = [v3 bundleIdentifier];

  return v4 && [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]== 0;
}

- (id)subtitleForStyle:(int64_t)a3
{
  v5 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v6 = v5;
  if (!v5)
  {
    v7 = [(LPLinkMetadata *)self->_metadata summary];
    goto LABEL_27;
  }

  if (![v5 isFileURL])
  {
    if ([v6 _lp_isTelephoneURL])
    {
      v7 = [v6 _lp_formattedTelephoneNumber];
      goto LABEL_27;
    }

    if (a3 <= 54)
    {
      if (a3 == 41)
      {
        v11 = [(LPLinkMetadataPresentationTransformer *)self metadata];
        v12 = [v11 associatedApplication];
        v13 = [v12 caption];

        if (v13)
        {
          v14 = [(LPLinkMetadataPresentationTransformer *)self metadata];
          v15 = [v14 associatedApplication];
          v16 = [v15 caption];

LABEL_25:
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      if (a3 != 43)
      {
        if (a3 == 52)
        {
          v8 = [(LPLinkMetadataPresentationTransformer *)self metadata];
          v9 = [v8 summary];

          if (v9)
          {
            goto LABEL_24;
          }
        }

LABEL_26:
        v7 = [(LPLinkMetadataPresentationTransformer *)self domainName];
        goto LABEL_27;
      }

      v17 = [(LPLinkMetadataPresentationTransformer *)self metadata];
      v18 = [v17 summary];

      if (!v18)
      {
        goto LABEL_26;
      }

LABEL_24:
      v14 = [(LPLinkMetadataPresentationTransformer *)self metadata];
      v16 = [v14 summary];
      goto LABEL_25;
    }

    switch(a3)
    {
      case '7':
        v10 = @" Music Classical";
        break;
      case '9':
        v19 = [(LPLinkMetadataPresentationTransformer *)self metadata];
        v20 = [v19 summary];

        if (!v20)
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

    v7 = LPLocalizedString(v10);
    goto LABEL_27;
  }

  v7 = [v6 lastPathComponent];
LABEL_27:
  v16 = v7;
LABEL_28:

  return v16;
}

- (id)summaryForStyle:(int64_t)a3
{
  v4 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  if (v4 && (-[LPLinkMetadata summary](self->_metadata, "summary"), v5 = objc_claimAutoreleasedReturnValue(), -[LPLinkMetadata title](self->_metadata, "title"), v6 = objc_claimAutoreleasedReturnValue(), [v5 _lp_similarityToString:v6], v8 = v7, v6, v5, v8 <= 0.6))
  {
    v9 = [(LPLinkMetadata *)self->_metadata summary];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)domainNameForIndicator
{
  v3 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v4 = v3;
  if (v3 && ([v3 isFileURL] & 1) == 0 && (objc_msgSend(v4, "_lp_isTelephoneURL") & 1) == 0)
  {
    v5 = [(LPLinkMetadataPresentationTransformer *)self metadata];
    v6 = [v5 associatedApplication];
    v7 = [v6 bundleIdentifier];
    if (v7)
    {
      v8 = [(LPLinkMetadataPresentationTransformer *)self metadata];
      v9 = [v8 associatedApplication];
      v10 = [v9 caption];

      if (v10)
      {
        v11 = [(LPLinkMetadataPresentationTransformer *)self domainName];
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)_hasNonMicroblogQuotedTextForStyle:(int64_t)a3
{
  if (!styleSupportsQuotedText(a3) || !sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 0;
  }

  v4 = [(LPLinkMetadata *)self->_metadata selectedText];
  v5 = [v4 length] != 0;

  return v5;
}

- (id)quotedTextForStyleIgnoringAllowsQuotedText:(int64_t)a3
{
  v5 = [(LPLinkMetadata *)self->_metadata summary];
  if ([(LPLinkMetadataPresentationTransformer *)self _shouldUseMicroblogQuotedTextForStyle:a3])
  {
    v6 = [(LPLinkMetadataPresentationTransformer *)self URL];
    v7 = [LPPresentationSpecializations isTweetURL:v6];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^[\\p{Quotation_Mark}](.*)[\\p{Quotation_Mark}]$" options:8 error:0];
      v9 = [v8 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      if ([v9 numberOfRanges] == 2)
      {
        v10 = [v9 rangeAtIndex:1];
        v12 = [v5 substringWithRange:{v10, v11}];

        v5 = v12;
      }
    }

    v5 = v5;
    v13 = v5;
  }

  else
  {
    v14 = [(LPLinkMetadata *)self->_metadata selectedText];
    v15 = [v14 _lp_stringByTrimmingWhitespace];

    if ([v15 length])
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)quotedTextForStyle:(int64_t)a3
{
  if (styleSupportsQuotedText(a3) && sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    v5 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyleIgnoringAllowsQuotedText:a3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_lastResortIcon
{
  v3 = [(LPLinkMetadata *)self->_metadata specialization];
  if (v3)
  {
    v4 = v3;
    v5 = [(LPLinkMetadata *)self->_metadata specialization];
    v6 = [v5 conformsToProtocol:&unk_1F24961A8];

    if (v6)
    {
      v7 = [(LPLinkMetadata *)self->_metadata specialization];
      v8 = [v7 fallbackIconForTransformer:self];

      v9 = v8;
      if (v8)
      {
        goto LABEL_27;
      }
    }
  }

  v10 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v11 = [v10 _lp_isHTTPFamilyURL];

  if (v11)
  {
LABEL_5:
    v12 = [(LPLinkMetadataPresentationTransformer *)self sourceContextIcon];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = +[LPResources safariIcon];
    }

    v9 = v14;

    goto LABEL_27;
  }

  v15 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  v16 = [v15 isFileURL];

  if (v16)
  {
    v17 = +[LPResources fileIcon];
  }

  else
  {
    v18 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
    v19 = [v18 _lp_isTelephoneURL];

    if (!v19)
    {
      goto LABEL_12;
    }

    v17 = +[LPResources telephoneIcon];
  }

  v9 = v17;
  if (v17)
  {
    goto LABEL_16;
  }

LABEL_12:
  v20 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
  if (v20 || ([(LPLinkMetadata *)self->_metadata specialization], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_15:
    v9 = [(LPLinkMetadataPresentationTransformer *)self sourceContextIcon];
    goto LABEL_16;
  }

  if (![LPApplicationIdentification isKnownApplication:5])
  {
    goto LABEL_15;
  }

  v9 = +[LPResources textIcon];
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_16:
  v21 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  if (v9)
  {
    goto LABEL_27;
  }

  if (!sizeClassIsCardHeading(v21))
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
    v28 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v23];
  }

  else
  {
    v28 = [MEMORY[0x1E69A8A00] applicationIcon];
  }

  v30 = v28;
  if (v28)
  {
    v31 = objc_alloc(MEMORY[0x1E69A8A30]);
    +[LPTheme largestIconSizeInPoints];
    v33 = v32;
    +[LPTheme largestIconSizeInPoints];
    v35 = [v31 initWithSize:v33 scale:{v34, scaleFactor}];
    [v35 setShouldApplyMask:0];
    v36 = [v30 prepareImageForDescriptor:v35];
    v37 = [v36 CGImage];
    if (v37)
    {
      v38 = objc_alloc_init(LPImageProperties);
      [(LPImageProperties *)v38 setType:1];
      v39 = [[LPImage alloc] _initWithCGImage:v37 properties:v38];
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

  v9 = v30;
  if (!v30)
  {
    goto LABEL_5;
  }

LABEL_27:

  return v9;
}

- (id)imageForStyle:(int64_t)a3 imageMetadata:(id)a4 icon:(id *)a5 alternateImages:(id *)a6
{
  v51[1] = *MEMORY[0x1E69E9840];
  v48 = a4;
  v44 = [(LPLinkMetadataPresentationTransformer *)self isComplete];
  v10 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  v47 = sizeClassAllowsIconWithPlaceholderImage(v10);
  v43 = sizeClassRequiresLargeMedia(v10);
  if (styleSupportsIcon(a3))
  {
    v11 = 1;
  }

  else
  {
    v11 = sizeClassPrefersIcon(v10);
  }

  v46 = a5;
  if (styleSupportsImage(a3))
  {
    v12 = sizeClassPrefersIcon(v10) ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __90__LPLinkMetadataPresentationTransformer_imageForStyle_imageMetadata_icon_alternateImages___block_invoke;
  v49[3] = &unk_1E7A372D0;
  v49[5] = a3;
  v49[6] = v10;
  v49[4] = self;
  v45 = __90__LPLinkMetadataPresentationTransformer_imageForStyle_imageMetadata_icon_alternateImages___block_invoke(v49);
  v13 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyle:a3];
  if (v13)
  {
    v14 = v10 == 5;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = [(LPLinkMetadataPresentationTransformer *)self _hasNonMicroblogQuotedTextForStyle:a3];
  v17 = (v15 ^ 1) & v12;
  v18 = v16 | v11 | v15;
  if (((v18 | v17) & 1) == 0)
  {
    v36 = 0;
    goto LABEL_24;
  }

  v19 = [(LPLinkMetadata *)self->_metadata icon];
  v20 = imageOnlyIfViable(v19);

  v21 = [(LPLinkMetadata *)self->_metadata iconMetadata];
  v22 = [v21 URL];

  if (v22)
  {
    v23 = [LPImageRemoteURLRepresentation alloc];
    v24 = [(LPLinkMetadata *)self->_metadata iconMetadata];
    v25 = [v24 URL];
    v26 = [(LPImageRemoteURLRepresentation *)v23 initWithScale:1 URL:v25];
    v51[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [v20 set_remoteURLsForEmailCompatibleOutput:v27];
  }

  v28 = [(LPLinkMetadata *)self->_metadata image];
  v29 = imageOnlyIfViable(v28);

  if (a6)
  {
    *a6 = [(LPLinkMetadata *)self->_metadata alternateImages];
  }

  v30 = [v48 URL];

  if (v30)
  {
    v31 = [LPImageRemoteURLRepresentation alloc];
    v32 = [v48 URL];
    v33 = [(LPImageRemoteURLRepresentation *)v31 initWithScale:1 URL:v32];
    v50 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    [v29 set_remoteURLsForEmailCompatibleOutput:v34];
  }

  if (v29 != 0 && (v45 || v16))
  {

    if (!a6)
    {
      v35 = 0;
LABEL_35:
      v20 = v29;
      goto LABEL_37;
    }

LABEL_34:
    v35 = 0;
    *a6 = 0;
    goto LABEL_35;
  }

  if (v29)
  {
    v37 = [v29 _isLowResolutionAsImage];
    if (v20)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    v39 = v38 & v44;
    if (v39)
    {
      v20 = v29;
      v35 = 0;
    }

    else
    {
      v35 = v29;
    }

    if (a6 && (v39 & 1) != 0)
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
    v36 = v20;
  }

  else
  {
    if (v20 == 0 && v44 || v35 && [v20 _isLowResolutionAsIconWithScaleFactor:self->_scaleFactor])
    {
      v36 = v35;

      if (a6)
      {
        *a6 = 0;
      }
    }

    else
    {
      v36 = v20;
    }

    v35 = 0;
  }

  if (!(v18 & 1 | ((v17 & 1) == 0)))
  {
    if ((v47 & (v43 && v35 == 0)) == 0)
    {

      v36 = 0;
      goto LABEL_49;
    }

LABEL_24:
    v35 = 0;
  }

LABEL_49:
  if (!(v35 | v36))
  {
    v36 = [(LPLinkMetadataPresentationTransformer *)self _lastResortIcon];
  }

  if ((v18 | v47))
  {
    v40 = v36;
    *v46 = v36;
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

- (id)videoForStyle:(int64_t)a3
{
  if (styleSupportsVideo(a3) && sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    v4 = [(LPLinkMetadata *)self->_metadata video];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)arAsset
{
  if (canDisplayARAssets() && sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    v3 = [(LPLinkMetadata *)self->_metadata arAsset];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)backgroundColorForStyle:(int64_t)a3
{
  if (a3 != 3)
  {
    goto LABEL_6;
  }

  v4 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v5 = [LPPresentationSpecializations isTweetURL:v4];

  if (v5)
  {
    v6 = +[LPResources tweetBackgroundColor];
    goto LABEL_7;
  }

  v7 = [(LPLinkMetadataPresentationTransformer *)self canonicalURL];
  v8 = [LPPresentationSpecializations isSinaWeiboURL:v7];

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

- (id)commonPresentationPropertiesForStyle:(int64_t)a3
{
  v5 = objc_alloc_init(LPWebLinkPresentationProperties);
  [(LPWebLinkPresentationProperties *)v5 setPreliminary:!self->_complete];
  [(LPWebLinkPresentationProperties *)v5 setStyle:a3];
  v6 = [(LPLinkMetadataPresentationTransformer *)self quotedTextForStyle:[(LPWebLinkPresentationProperties *)v5 style]];
  [(LPWebLinkPresentationProperties *)v5 setQuotedText:v6];

  return v5;
}

- (id)unspecializedPresentationProperties
{
  v3 = [(LPLinkMetadataPresentationTransformer *)self rendererStyle];

  return [(LPLinkMetadataPresentationTransformer *)self unspecializedPresentationPropertiesForStyle:v3];
}

- (id)unspecializedPresentationPropertiesForStyle:(int64_t)a3
{
  v5 = [(LPLinkMetadataPresentationTransformer *)self commonPresentationPropertiesForStyle:?];
  v6 = [(LPLinkMetadataPresentationTransformer *)self mainCaptionBarForStyle:a3];
  [v5 setCaptionBar:v6];

  v7 = [(LPLinkMetadataPresentationTransformer *)self backgroundColorForStyle:a3];
  [v5 setBackgroundColor:v7];

  v8 = [(LPLinkMetadata *)self->_metadata imageMetadata];
  v37 = 0;
  v38 = 0;
  v9 = [(LPLinkMetadataPresentationTransformer *)self imageForStyle:a3 imageMetadata:v8 icon:&v38 alternateImages:&v37];
  v10 = v38;
  v11 = v37;
  [v5 setImage:v9];

  v12 = [v5 image];

  if (v12)
  {
    [v5 setAlternateImages:v11];

    v11 = 0;
  }

  v13 = [(LPLinkMetadataPresentationTransformer *)self videoForStyle:a3];
  [v5 setVideo:v13];

  v14 = [(LPLinkMetadataPresentationTransformer *)self audioForStyle:a3];
  [v5 setAudio:v14];

  v15 = [(LPLinkMetadataPresentationTransformer *)self arAsset];
  [v5 setArAsset:v15];

  v16 = [v5 audio];

  if (v16)
  {
    v17 = [v5 audio];
    v18 = [LPInlineMediaPlaybackInformation audioFilePlaybackInformationWithAudio:v17];

    [v5 setInlinePlaybackInformation:v18];
  }

  if ((styleSupportsStackedIcons(a3) & 1) == 0)
  {

    v11 = 0;
  }

  v19 = [v5 image];
  if (v19 || ([v5 video], (v19 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "quotedText"), (v19 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v5, "arAsset"), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
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

    v19 = +[LPResources safariIcon];
    [v5 setImage:v19];
    v20 = 1;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v20 & [v10 _isFallbackIcon] & 1) == 0)
  {
    if ([(LPLinkMetadataPresentationTransformer *)self _prefersLeadingIconWithStyle:a3])
    {
      v21 = [v5 captionBar];
      [v21 setLeadingIcon:v10];

      v22 = [v5 captionBar];
      [v22 setAdditionalLeadingIcons:v11];
    }

    else
    {
      v23 = [v5 captionBar];
      [v23 setTrailingIcon:v10];

      v22 = [v5 captionBar];
      [v22 setAdditionalTrailingIcons:v11];
    }
  }

LABEL_18:
  if (a3 == 41)
  {
    v24 = [(LPLinkMetadata *)self->_metadata associatedApplication];
    v25 = [v24 icon];
    v26 = [v5 captionBar];
    [v26 setLeadingIcon:v25];

    v27 = [v5 captionBar];
    [v27 setShouldHighlightIndependently:1];

    if (self->_allowsTapping)
    {
      v28 = [(LPLinkMetadata *)self->_metadata associatedApplication];
      v29 = [v28 action];

      if (v29)
      {
        v30 = [(LPLinkMetadata *)self->_metadata associatedApplication];
        v31 = [v30 action];
        v32 = [v5 captionBar];
        [v32 setButtonCaption:v31];
      }
    }

    v33 = [(LPLinkMetadataPresentationTransformer *)self domainNameForIndicator];
    [v5 setDomainNameForIndicator:v33];
  }

  v34 = objc_alloc_init(LPIndeterminateProgressSpinnerPresentationProperties);
  v35 = [(LPLinkMetadataPresentationTransformer *)self subtitleForStyle:a3];
  [(LPIndeterminateProgressSpinnerPresentationProperties *)v34 setText:v35];

  [v5 setProgressSpinner:v34];

  return v5;
}

- (id)presentationProperties
{
  v4 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  v5 = [(LPLinkMetadata *)self->_metadata specialization];
  if (v5)
  {
    v6 = [(LPLinkMetadata *)self->_metadata specialization];
    v2 = [v6 conformsToProtocol:&unk_1F2495708];

    if (v2)
    {
      v7 = [(LPLinkMetadata *)self->_metadata specialization];
      v8 = [(LPLinkMetadataPresentationTransformer *)self originalURL];
      if (v8 && ((-[LPLinkMetadataPresentationTransformer originalURL](self, "originalURL"), v2 = objc_claimAutoreleasedReturnValue(), v9 = [v7 canGeneratePresentationPropertiesForURL:v2], v4 == 2) ? (v10 = 1) : (v10 = v9), v2, v8, v10 != 1))
      {
      }

      else
      {
        v11 = [v7 presentationPropertiesForTransformer:self];

        if (v11)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v11 = [(LPLinkMetadataPresentationTransformer *)self unspecializedPresentationProperties];
LABEL_12:
  if ((sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) & 1) == 0)
  {
    [v11 setImage:0];
    [v11 setVideo:0];
  }

  if (!self->_allowsPlayback)
  {
    [v11 setInlinePlaybackInformation:0];
    [v11 setVideo:0];
    [v11 setAudio:0];
  }

  if ((sizeClassAllowsMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) & 1) == 0)
  {
    [v11 setQuotedText:0];
  }

  if (!sizeClassAllowsInlinePlayback(-[LPLinkMetadataPresentationTransformer effectiveSizeClass](self, "effectiveSizeClass")) || ([v11 inlinePlaybackInformation], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "type"), v13 = canPlayInlineMediaType(), v12, (v13 & 1) == 0))
  {
    [v11 setInlinePlaybackInformation:0];
  }

  v14 = -[LPLinkMetadataPresentationTransformer _rowConfigurationForStyle:](self, "_rowConfigurationForStyle:", [v11 style]);
  if (v14 == 1)
  {
    v32 = [v11 captionBar];
    v33 = [v32 aboveTop];
    v34 = [v33 leading];
    [v34 setText:0];

    v35 = [v11 captionBar];
    v36 = [v35 aboveTop];
    v37 = [v36 trailing];
    [v37 setText:0];

    v38 = [v11 captionBar];
    v39 = [v38 belowBottom];
    v40 = [v39 leading];
    [v40 setText:0];

    v30 = [v11 captionBar];
    v31 = [v30 belowBottom];
    v2 = [v31 trailing];
    [v2 setText:0];
  }

  else
  {
    if (v14)
    {
      goto LABEL_26;
    }

    v15 = [v11 captionBar];
    v16 = [v15 aboveTop];
    v17 = [v16 leading];
    [v17 setText:0];

    v18 = [v11 captionBar];
    v19 = [v18 aboveTop];
    v20 = [v19 trailing];
    [v20 setText:0];

    v21 = [v11 captionBar];
    v22 = [v21 bottom];
    v23 = [v22 leading];
    [v23 setText:0];

    v24 = [v11 captionBar];
    v25 = [v24 bottom];
    v26 = [v25 trailing];
    [v26 setText:0];

    v27 = [v11 captionBar];
    v28 = [v27 belowBottom];
    v29 = [v28 leading];
    [v29 setText:0];

    v30 = [v11 captionBar];
    v31 = [v30 belowBottom];
    v2 = [v31 trailing];
    [v2 setText:0];
  }

LABEL_26:
  if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters neverShowText])
  {
    v41 = [v11 captionBar];
    v42 = [v41 top];
    v43 = [v42 leading];
    [v43 setText:0];

    v44 = [v11 captionBar];
    v45 = [v44 top];
    v46 = [v45 trailing];
    [v46 setText:0];

    v47 = [v11 captionBar];
    v48 = [v47 aboveTop];
    v49 = [v48 leading];
    [v49 setText:0];

    v50 = [v11 captionBar];
    v51 = [v50 aboveTop];
    v52 = [v51 trailing];
    [v52 setText:0];

    v53 = [v11 captionBar];
    v54 = [v53 bottom];
    v55 = [v54 leading];
    [v55 setText:0];

    v56 = [v11 captionBar];
    v57 = [v56 bottom];
    v58 = [v57 trailing];
    [v58 setText:0];

    v59 = [v11 captionBar];
    v60 = [v59 belowBottom];
    v61 = [v60 leading];
    [v61 setText:0];

    v62 = [v11 captionBar];
    v63 = [v62 belowBottom];
    v2 = [v63 trailing];
    [v2 setText:0];

    [v11 setQuotedText:0];
  }

  if ([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]== 2)
  {
    v145 = [v11 captionBar];
    v144 = [v145 aboveTop];
    v64 = [v144 hasAnyContent];
    v143 = [v11 captionBar];
    v65 = [v143 top];
    v66 = [v65 hasAnyContent];
    v67 = [v11 captionBar];
    v68 = [v67 bottom];
    v69 = [v68 hasAnyContent];
    v70 = [v11 captionBar];
    v2 = [v70 belowBottom];
    v71 = v66 + v64 + v69 + [v2 hasAnyContent];

    if (v71 == 1)
    {
      v72 = [v11 captionBar];
      [v72 applyToAllCaptions:&__block_literal_global_22];
    }
  }

  v73 = [v11 inlinePlaybackInformation];
  if (v73)
  {
    allowsPlayback = self->_allowsPlayback;

    if (allowsPlayback)
    {
      v75 = [v11 captionBar];
      [v75 setTrailingIcon:0];

      v76 = [v11 captionBar];
      [v76 setAdditionalTrailingIcons:0];
    }
  }

  v77 = [v11 captionBar];
  v78 = [v77 button];
  if (v78)
  {
    v2 = [v11 captionBar];
    v79 = [v2 button];
    v80 = [v79 type];

    if (v80 == 1)
    {
      v81 = [v11 captionBar];
      [v81 setTrailingIcon:0];

      v82 = [v11 captionBar];
      [v82 setAdditionalTrailingIcons:0];

      [v11 setInlinePlaybackInformation:0];
    }
  }

  else
  {
  }

  if (sizeClassSupportsIconHoisting([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    if (![(LPLinkMetadataPresentationTransformer *)self hasMediaWithProperties:v11])
    {
      v83 = [v11 captionBar];
      v84 = [v83 leadingIcon];
      v85 = v84;
      if (!v84)
      {
        v2 = [v11 captionBar];
        v85 = [v2 trailingIcon];
      }

      [v11 setImage:v85];
      if (!v84)
      {
      }

      v86 = objc_alloc_init(LPImagePresentationProperties);
      +[LPTheme placeholderIconSizeInPoints];
      v88 = v87;
      +[LPTheme placeholderIconSizeInPoints];
      [(LPImagePresentationProperties *)v86 setFixedSize:v88, v89];
      [(LPImagePresentationProperties *)v86 setScalingMode:3];
      [(LPImagePresentationProperties *)v86 setFilter:3];
      [v11 setImageProperties:v86];
    }

    v90 = [v11 captionBar];
    [v90 removeAllIcons];
  }

  if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters neverShowIcon])
  {
    v91 = [v11 captionBar];
    [v91 removeAllIcons];

    v92 = [v11 mediaTopCaptionBar];
    [v92 removeAllIcons];

    v93 = [v11 mediaBottomCaptionBar];
    [v93 removeAllIcons];
  }

  if (sizeClassRequiresLargeMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) && ![(LPLinkMetadataPresentationTransformer *)self hasMediaWithProperties:v11])
  {
    v94 = [(LPLinkMetadataPresentationTransformer *)self _lastResortIcon];
    [v11 setImage:v94];
  }

  v95 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  [v11 style];
  if (sizeClassRequiresLeadingIcon(v95))
  {
    v96 = [v11 captionBar];
    v97 = [v96 leadingIcon];

    if (!v97)
    {
      v98 = [(LPLinkMetadataPresentationTransformer *)self _lastResortIcon];
      v99 = [v11 captionBar];
      [v99 setLeadingIcon:v98];
    }
  }

  if (sizeClassAllowsApplicationBadge(-[LPLinkMetadataPresentationTransformer effectiveSizeClass](self, "effectiveSizeClass")) || styleRequiresApplicationBadge([v11 style]))
  {
    v100 = [(LPLinkMetadata *)self->_metadata sourceApplication];
    if (!v100)
    {
      v101 = [(LPLinkMetadata *)self->_metadata specialization];
      if (v101 && (-[LPLinkMetadata specialization](self->_metadata, "specialization"), v102 = objc_claimAutoreleasedReturnValue(), v103 = [v102 conformsToProtocol:&unk_1F2495A60], v102, v101, v103))
      {
        v104 = [(LPLinkMetadata *)self->_metadata specialization];
        v100 = [v104 sourceApplicationMetadataForTransformer:self];
      }

      else
      {
        v100 = 0;
      }
    }

    v105 = [v11 captionBar];
    v106 = [v105 leadingIcon];
    if (v106)
    {
      v107 = [v100 icon];

      if (!v107)
      {
LABEL_65:

        goto LABEL_66;
      }

      v105 = [v100 icon];
      v108 = [v11 captionBar];
      [v108 setLeadingIconBadge:v105];
    }

    goto LABEL_65;
  }

LABEL_66:
  if ([(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters onlyShowIcon])
  {
    v109 = objc_alloc_init(LPWebLinkPresentationProperties);
    -[LPWebLinkPresentationProperties setPreliminary:](v109, "setPreliminary:", [v11 isPreliminary]);
    -[LPWebLinkPresentationProperties setStyle:](v109, "setStyle:", [v11 style]);
    v110 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [(LPWebLinkPresentationProperties *)v109 setCaptionBar:v110];

    v111 = [v11 captionBar];
    v112 = [v111 leadingIcon];

    if (v112)
    {
      v113 = [v11 captionBar];
      v114 = [v113 leadingIcon];
      v115 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [v115 setLeadingIcon:v114];

      v116 = [v11 captionBar];
      v117 = [v116 leadingIconProperties];
      v118 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [v118 setLeadingIconProperties:v117];

      v119 = [v11 captionBar];
      v120 = [v119 additionalLeadingIcons];
      v121 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [v121 setAdditionalLeadingIcons:v120];
    }

    else
    {
      v122 = [v11 captionBar];
      v123 = [v122 trailingIcon];

      if (!v123)
      {
LABEL_72:
        v130 = v109;

        v11 = v130;
        goto LABEL_73;
      }

      v124 = [v11 captionBar];
      v125 = [v124 trailingIcon];
      v126 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [v126 setTrailingIcon:v125];

      v127 = [v11 captionBar];
      v128 = [v127 trailingIconProperties];
      v129 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [v129 setTrailingIconProperties:v128];

      v119 = [v11 captionBar];
      v120 = [v119 additionalTrailingIcons];
      v121 = [(LPWebLinkPresentationProperties *)v109 captionBar];
      [v121 setAdditionalTrailingIcons:v120];
    }

    goto LABEL_72;
  }

LABEL_73:
  if (styleUsesBlurBackgroundForCaptionBar([v11 style]))
  {
    v131 = [v11 image];
    if (v131)
    {
      v132 = [v11 image];
      v133 = [v132 _isNonFallbackSymbolImage];

      if ((v133 & 1) == 0)
      {
        [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:v11];
        v134 = [v11 captionBar];
        [v134 setUsesBlurredBackground:1];

        v135 = [v11 image];
        [v11 setBackgroundImage:v135];

        v136 = [v11 image];
        v137 = [v136 _darkInterfaceAlternativeImage];

        if (v137)
        {
          v138 = [v11 image];
          v139 = [v138 _darkInterfaceAlternativeImage];
          v140 = [v11 backgroundImage];
          [v140 _setDarkInterfaceAlternativeImage:v139];
        }
      }
    }
  }

  [v11 setAllowsDominantImageBackgroundColorAsCaptionBackground:{-[LPLinkMetadataPresentationTransformer _allowsDominantBackgroundColorAsCaptionBackgroundForProperties:](self, "_allowsDominantBackgroundColorAsCaptionBackgroundForProperties:", v11)}];
  if (self->_needsDominantBackgroundColor)
  {
    [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:v11];
  }

  [(LPLinkMetadataPresentationTransformer *)self _propagateDominantBackgroundColorToDependentPropertiesIfNeeded:v11];
  if (self->_mediaOverlayIcon)
  {
    [(LPLinkMetadataPresentationTransformer *)self _populatePropertiesForMediaOverlayIcon:v11];
  }

  if ((sizeClassAllowsBackgroundColor([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]) & 1) == 0)
  {
    [v11 setBackgroundColor:0];
  }

  v141 = v11;

  return v11;
}

void __63__LPLinkMetadataPresentationTransformer_presentationProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = +[LPTheme primaryLabelColor];
  [v3 setColor:v2];
}

- (BOOL)hasMediaWithProperties:(id)a3
{
  v4 = a3;
  v5 = [v4 video];
  if (!v5)
  {
    v7 = [v4 image];
    if (!v7 || ([v4 image], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "_isFallbackIcon")))
    {
      v8 = [v4 alternateImages];
      if (![v8 count])
      {
        v9 = [v4 arAsset];
        if (!v9)
        {
          v11 = [v4 quotedText];
          v6 = v11 != 0;

          if (!v7)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }
      }

      v6 = 1;
      if (!v7)
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
  v2 = self;
  v3 = [(LPLinkMetadataPresentationTransformer *)self presentationProperties];
  LOBYTE(v2) = [(LPLinkMetadataPresentationTransformer *)v2 hasMediaWithProperties:v3];

  return v2;
}

- (id)_preferredBackgroundColorImageSourceForProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 image];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v3 captionBar];
    v8 = [v7 leadingIcon];
    v9 = v8;
    if (v8)
    {
      v6 = v8;
    }

    else
    {
      v10 = [v3 captionBar];
      v6 = [v10 trailingIcon];
    }
  }

  return v6;
}

- (BOOL)_allowsDominantBackgroundColorAsCaptionBackgroundForProperties:(id)a3
{
  v4 = a3;
  if (sizeClassUsesVisualRefresh([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    if (styleAllowsVisualRefresh([v4 style]))
    {
      if ((styleUsesBlurBackgroundForCaptionBar([v4 style]) & 1) == 0)
      {
        v5 = [v4 backgroundColor];

        if (!v5)
        {
          v8 = [(LPLinkMetadataPresentationTransformer *)self _preferredBackgroundColorImageSourceForProperties:v4];
          v9 = v8;
          if (v8)
          {
            v10 = [v8 platformImage];
            if ([v10 _lp_isSymbolImage])
            {
            }

            else
            {
              v11 = [v9 properties];
              v12 = [v11 type];

              if (!v12)
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

- (void)_populateDominantBackgroundColorForPropertiesIfNeeded:(id)a3
{
  v4 = a3;
  if (([v4 _hasComputedDominantImageBackgroundColor] & 1) == 0)
  {
    [v4 _setHasComputedDominantImageBackgroundColor:1];
    v5 = [(LPLinkMetadataPresentationTransformer *)self _preferredBackgroundColorImageSourceForProperties:v4];
    if (v5)
    {
      v6 = [v4 image];
      v7 = [v6 _darkInterfaceAlternativeImage];

      v8 = [v5 platformImage];
      if ([v8 _lp_isSymbolImage])
      {
      }

      else
      {
        v9 = [v7 platformImage];
        v10 = [v9 _lp_isSymbolImage];

        if ((v10 & 1) == 0)
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
          v21 = v7;
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
            [v4 setDominantImageBackgroundColor:v15];
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

- (void)_propagateDominantBackgroundColorToDependentPropertiesIfNeeded:(id)a3
{
  v11 = a3;
  if ([(LPLinkMetadataPresentationTransformer *)self _shouldUseDominantBackgroundColorAsCaptionBackgroundForProperties:v11])
  {
    [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:v11];
    v4 = [v11 captionBar];
    v5 = [v4 playButton];

    if (!v5)
    {
      v6 = objc_alloc_init(LPPlayButtonPresentationProperties);
      v7 = [v11 captionBar];
      [v7 setPlayButton:v6];
    }

    v8 = [v11 dominantImageBackgroundColor];
    v9 = [v11 captionBar];
    v10 = [v9 playButton];
    [v10 setAccentColor:v8];
  }
}

- (void)_populatePropertiesForMediaOverlayIcon:(id)a3
{
  v10 = a3;
  [(LPLinkMetadataPresentationTransformer *)self _populateDominantBackgroundColorForPropertiesIfNeeded:?];
  v4 = [v10 mediaBottomCaptionBar];

  if (!v4)
  {
    v5 = objc_alloc_init(LPCaptionBarPresentationProperties);
    [v10 setMediaBottomCaptionBar:v5];
  }

  v6 = objc_alloc_init(LPImagePresentationProperties);
  [(LPImagePresentationProperties *)v6 setFilter:1];
  [(LPImagePresentationProperties *)v6 setScalingMode:3];
  mediaOverlayIcon = self->_mediaOverlayIcon;
  v8 = [v10 mediaBottomCaptionBar];
  [v8 setTrailingIcon:mediaOverlayIcon];

  v9 = [v10 mediaBottomCaptionBar];
  [v9 setTrailingIconProperties:v6];
}

- (unint64_t)_rowConfigurationForStyle:(int64_t)a3
{
  v5 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];
  v6 = rowConfigurationForSizeClass(v5);
  if (v5 == 12 && ![(LPLinkRendererSizeClassParameters *)self->_sizeClassParameters alignButtonWithCaptionTextLeadingEdge]&& self->_hasButton)
  {
    v6 = 2;
  }

  result = maximumRowConfigurationForStyle(a3);
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

- (BOOL)_prefersIconAsImage
{
  v2 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];

  return sizeClassRequiresLargeMedia(v2);
}

- (BOOL)_prefersImageAsIconWithStyle:(int64_t)a3
{
  if (sizeClassRequiresLargeMedia([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 0;
  }

  if (sizeClassPrefersIcon([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 1;
  }

  return stylePrefersImageAsIcon(a3);
}

- (BOOL)_prefersLeadingIconWithStyle:(int64_t)a3
{
  if (sizeClassRequiresTrailingIcon([(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass]))
  {
    return 0;
  }

  if (stylePrefersLeadingIcon(a3))
  {
    return 1;
  }

  v6 = [(LPLinkMetadataPresentationTransformer *)self effectiveSizeClass];

  return sizeClassPrefersLeadingIcon(v6);
}

- (void)_populateProperties:(id)a3 withPrimaryImage:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (-[LPLinkMetadataPresentationTransformer _prefersImageAsIconWithStyle:](self, "_prefersImageAsIconWithStyle:", [v8 style]))
  {
    if (-[LPLinkMetadataPresentationTransformer _prefersLeadingIconWithStyle:](self, "_prefersLeadingIconWithStyle:", [v8 style]))
    {
      v7 = [v8 captionBar];
      [v7 setLeadingIcon:v6];
    }

    else
    {
      v7 = [v8 captionBar];
      [v7 setTrailingIcon:v6];
    }
  }

  else
  {
    [v8 setImage:v6];
  }
}

- (void)_populateProperties:(id)a3 withPrimaryIcon:(id)a4 iconProperties:(id)a5 canBecomeImage:(BOOL)a6
{
  v6 = a6;
  v15 = a3;
  v10 = a4;
  v11 = a5;
  if ([(LPLinkMetadataPresentationTransformer *)self _prefersIconAsImage]&& v6)
  {
    [v15 setImage:v10];
    [v15 setImageProperties:v11];
  }

  else
  {
    if (-[LPLinkMetadataPresentationTransformer _prefersLeadingIconWithStyle:](self, "_prefersLeadingIconWithStyle:", [v15 style]))
    {
      v12 = [v15 captionBar];
      [v12 setLeadingIcon:v10];

      [v15 setImageProperties:v11];
      v13 = [v15 captionBar];
      [v13 setLeadingIconProperties:v11];
    }

    else
    {
      v14 = [v15 captionBar];
      [v14 setTrailingIcon:v10];

      [v15 setImageProperties:v11];
      v13 = [v15 captionBar];
      [v13 setTrailingIconProperties:v11];
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
      v4 = [(LPLinkMetadataPresentationTransformer *)self hasMedia];
      preferredSizeClass = 8;
      if (v4)
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