@interface QLItem(UI)
+ (uint64_t)openInTypeForItem:()UI appIsContentManaged:;
+ (uint64_t)shouldUseRemoteCollection:()UI;
- (BOOL)isBookmarkable;
- (__CFString)previewItemViewControllerClassNameForType:()UI;
- (double)imageRawSizeOfContents:()UI withPreviewItemType:imageIsAnimated:;
- (double)preferredContentSizeForOrbPlatterWithURL:()UI;
- (double)previewSizeForItemViewControllerSize:()UI;
- (id)previewItemPrintingViewControllerClassName;
- (id)transformerClass;
- (uint64_t)defaultWhitePointAdaptivityStyle;
- (uint64_t)previewItemViewControllerClassName;
- (uint64_t)shouldUseRemoteViewController;
@end

@implementation QLItem(UI)

- (id)transformerClass
{
  v11 = *MEMORY[0x277D85DE8];
  if ([self generatedPreviewItemType])
  {
    generatedPreviewItemType = [self generatedPreviewItemType];
  }

  else
  {
    generatedPreviewItemType = [self previewItemType];
  }

  if (generatedPreviewItemType > 7)
  {
    if (generatedPreviewItemType <= 10 || (generatedPreviewItemType - 12) < 3 || generatedPreviewItemType == 11)
    {
      goto LABEL_20;
    }
  }

  else if (generatedPreviewItemType <= 3)
  {
    if (generatedPreviewItemType == 1 || generatedPreviewItemType == 2 || generatedPreviewItemType == 3)
    {
      goto LABEL_20;
    }
  }

  else if ((generatedPreviewItemType - 4) < 2 || generatedPreviewItemType == 6 || generatedPreviewItemType == 7)
  {
LABEL_20:
    v3 = objc_opt_class();
    goto LABEL_21;
  }

  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    v8 = MEMORY[0x277D43EF8];
    QLSInitLogging();
    v6 = *v8;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v9 = 134217984;
    previewItemType = [self previewItemType];
    _os_log_impl(&dword_23A714000, v7, OS_LOG_TYPE_ERROR, "Unhandled item type %lu #PreviewItem", &v9, 0xCu);
  }

  v3 = 0;
LABEL_21:
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)previewItemPrintingViewControllerClassName
{
  v11 = *MEMORY[0x277D85DE8];
  previewItemType = [self previewItemType];
  if (previewItemType != 6 && previewItemType != 4)
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_ERROR, "Unknown preview item type in -previewItemViewControllerClassName: for preview item %@ #PreviewItem", &v9, 0xCu);
    }
  }

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (uint64_t)previewItemViewControllerClassName
{
  if ([self generatedPreviewItemType])
  {
    generatedPreviewItemType = [self generatedPreviewItemType];
  }

  else
  {
    generatedPreviewItemType = [self previewItemType];
  }

  return [self previewItemViewControllerClassNameForType:generatedPreviewItemType];
}

- (__CFString)previewItemViewControllerClassNameForType:()UI
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = @"QLPDFItemViewController";
  switch(a3)
  {
    case 1:
      uTIAnalyzer = [self UTIAnalyzer];
      [uTIAnalyzer isAudioOnly];

      goto LABEL_20;
    case 2:
      if (([self canBeEdited] & 1) == 0 && !objc_msgSend(self, "editingMode"))
      {
        goto LABEL_20;
      }

      v4 = @"QLImageItemAggregatedViewController";
      goto LABEL_21;
    case 3:
    case 4:
    case 5:
    case 7:
    case 12:
    case 13:
    case 14:
      goto LABEL_20;
    case 6:
      v4 = @"QLWebItemAggregatedViewController";
      goto LABEL_21;
    case 8:
      v4 = @"QLVCFItemViewController";
      goto LABEL_21;
    case 9:
      v4 = @"QLICSItemViewController";
      goto LABEL_21;
    case 10:
      v4 = @"QLZipItemViewController";
      goto LABEL_21;
    case 11:
      goto LABEL_21;
    case 15:
      v5 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v11 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v5 = *v11;
      }

      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v13 = 138412290;
      selfCopy2 = self;
      v6 = "Unsupported preview item type in -previewItemViewControllerClassName: for preview item %@ #PreviewItem";
      goto LABEL_15;
    default:
      v5 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v12 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v5 = *v12;
      }

      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v13 = 138412290;
      selfCopy2 = self;
      v6 = "Unknown preview item type in -previewItemViewControllerClassName: for preview item %@ #PreviewItem";
LABEL_15:
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, v6, &v13, 0xCu);
LABEL_20:
      v8 = objc_opt_class();
      v4 = NSStringFromClass(v8);
LABEL_21:
      v9 = *MEMORY[0x277D85DE8];

      return v4;
  }
}

- (double)imageRawSizeOfContents:()UI withPreviewItemType:imageIsAnimated:
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([self previewItemType] == 3)
      {
        gotLoadHelper_x8__OBJC_CLASS___PFVideoComplement(v9);
        v11 = [objc_alloc(*(v10 + 1312)) initWithBundleAtURL:v7];
        imagePath = [v11 imagePath];

        if (imagePath)
        {
          v13 = MEMORY[0x277CBEBC0];
          imagePath2 = [v11 imagePath];
          v15 = [v13 fileURLWithPath:imagePath2];
        }

        else
        {
          v22 = MEMORY[0x277D43EF8];
          v23 = *MEMORY[0x277D43EF8];
          if (!*MEMORY[0x277D43EF8])
          {
            QLSInitLogging();
            v23 = *v22;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *valuePtr = 138412290;
            *&valuePtr[4] = v7;
            _os_log_impl(&dword_23A714000, v23, OS_LOG_TYPE_INFO, "Could not generate a PFVideoComplement from the given url: %@ #PreviewItem", valuePtr, 0xCu);
          }

          v15 = 0;
        }

        if (!v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v15 = v7;
        if (!v15)
        {
LABEL_28:
          v24 = MEMORY[0x277D43EF8];
          v25 = *MEMORY[0x277D43EF8];
          if (!*MEMORY[0x277D43EF8])
          {
            QLSInitLogging();
            v25 = *v24;
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *valuePtr = 0;
            _os_log_impl(&dword_23A714000, v25, OS_LOG_TYPE_INFO, "Returning a CGSizeZero size for imageRawSizeOfContents:withPreviewItemType: because no URL could be used to determine the size of the preview item. #PreviewItem", valuePtr, 2u);
          }

          goto LABEL_32;
        }
      }

      v8 = CGImageSourceCreateWithURL(v15, 0);

      if (v8)
      {
        goto LABEL_10;
      }
    }

LABEL_32:
    v21 = *MEMORY[0x277CBF3A8];
    v26 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_33;
  }

  v8 = CGImageSourceCreateWithData(v7, 0);
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_10:
  if (a5)
  {
    *a5 = CGImageSourceGetCount(v8) > 1;
  }

  v30 = 0;
  *valuePtr = 0;
  v16 = CGImageSourceCopyPropertiesAtIndex(v8, 0, 0);
  CFRelease(v8);
  if (v16)
  {
    Value = CFDictionaryGetValue(v16, *MEMORY[0x277CD3450]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberCGFloatType, valuePtr);
    }

    v18 = CFDictionaryGetValue(v16, *MEMORY[0x277CD3448]);
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberCGFloatType, &v30);
    }

    v19 = CFDictionaryGetValue(v16, *MEMORY[0x277CD3410]);
    if (v19)
    {
      v29 = 0;
      CFNumberGetValue(v19, kCFNumberIntType, &v29);
      if (v29 >= 5)
      {
        v20 = v30;
        v30 = *valuePtr;
        *valuePtr = v20;
      }
    }

    CFRelease(v16);
    v21 = *valuePtr;
  }

  else
  {
    v21 = 0.0;
  }

LABEL_33:

  v27 = *MEMORY[0x277D85DE8];
  return v21;
}

- (double)previewSizeForItemViewControllerSize:()UI
{
  v48 = *MEMORY[0x277D85DE8];
  fetcher = [self fetcher];
  fetchedContent = [fetcher fetchedContent];

  if (!fetchedContent)
  {
    goto LABEL_34;
  }

  if ([self previewItemType] != 2 && objc_msgSend(self, "previewItemType") != 3)
  {
    if ([self previewItemType] == 1)
    {
      uTIAnalyzer = [self UTIAnalyzer];
      if ([uTIAnalyzer isAudioOnly])
      {
      }

      else
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v31 = objc_alloc(MEMORY[0x277CE6650]);
          v42 = *MEMORY[0x277CE6260];
          v43 = &unk_284D72F58;
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v33 = [v31 initWithURL:fetchedContent options:v32];

          [v33 ql_imageSizeOfFirstVideoTrack];
          v34 = *MEMORY[0x277CBF348];
          v35 = *(MEMORY[0x277CBF348] + 8);
          QLAdaptSizeToRect();
          v10 = v36;

          goto LABEL_35;
        }
      }
    }

LABEL_34:
    v10 = *MEMORY[0x277CBF3A8];
    v37 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_35;
  }

  v41 = 0;
  [self imageRawSizeOfContents:fetchedContent withPreviewItemType:objc_msgSend(self imageIsAnimated:{"previewItemType"), &v41}];
  v10 = *MEMORY[0x277CBF3A8];
  if (v8 == *MEMORY[0x277CBF3A8] && v9 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v17 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      v40 = MEMORY[0x277D43EF8];
      QLSInitLogging();
      v17 = *v40;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy = self;
      v46 = 2112;
      v47 = fetchedContent;
      _os_log_impl(&dword_23A714000, v17, OS_LOG_TYPE_INFO, "Could not determine preview size of contents %@ %@ #PreviewItem", buf, 0x16u);
    }
  }

  else
  {
    v12 = v8;
    v13 = v9;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v16 = v15;

    if (QLImageWithSizeShouldNotBeScaled())
    {
      v10 = v12 / v16;
    }

    else
    {
      v19 = 1.0;
      if (v41 == 1)
      {
        QLGetScaleForAnimatedImageWithSize();
      }

      v10 = v12 / v19;
      v20 = v13 / v19;
      if (v12 / v19 > a2 || v20 > a3)
      {
        v22 = *MEMORY[0x277CBF348];
        v23 = *(MEMORY[0x277CBF348] + 8);
        QLAdaptSizeToRect();
        v10 = v24;
        v20 = v25;
      }

      if ((![self canBeEdited] || v41 == 1) && v10 < a2 * 0.75 && v20 < a3 * 0.75)
      {
        v27 = *MEMORY[0x277CBF348];
        v28 = *(MEMORY[0x277CBF348] + 8);
        QLAdaptSizeToRect();
        v10 = v29;
      }
    }
  }

LABEL_35:

  v38 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)shouldUseRemoteViewController
{
  v14 = *MEMORY[0x277D85DE8];
  previewItemContentType = [self previewItemContentType];
  previewItemType = [self previewItemType];
  if (previewItemType > 0xE)
  {
    goto LABEL_7;
  }

  if (((1 << previewItemType) & 0x2F50) == 0)
  {
    if (((1 << previewItemType) & 0x5088) != 0)
    {
LABEL_5:
      v4 = 0;
      goto LABEL_10;
    }

    if (previewItemType == 5)
    {
LABEL_9:
      v4 = [MEMORY[0x277D43F78] shouldBeRemoteForMediaContentType:previewItemContentType];
      goto LABEL_10;
    }

LABEL_7:
    if (previewItemType == 2)
    {
      if (([self canBeEdited] & 1) == 0)
      {
        v4 = [self editingMode] != 0;
        goto LABEL_10;
      }

      goto LABEL_3;
    }

    if (previewItemType != 1)
    {
      v7 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        v9 = MEMORY[0x277D43EF8];
        QLSInitLogging();
        v7 = *v9;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = v7;
        v10 = 134218242;
        previewItemType2 = [self previewItemType];
        v12 = 2112;
        v13 = previewItemContentType;
        _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_ERROR, "Unhandled item type %lu: contentType is: %@ #PreviewItem", &v10, 0x16u);
      }

      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_3:
  v4 = 1;
LABEL_10:

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (uint64_t)shouldUseRemoteCollection:()UI
{
  v3 = a3;
  if ([v3 numberOfItems])
  {
    v4 = 0;
    v5 = MEMORY[0x277D85DD0];
    do
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__4;
      v13 = __Block_byref_object_dispose__4;
      v14 = 0;
      v8[0] = v5;
      v8[1] = 3221225472;
      v8[2] = __40__QLItem_UI__shouldUseRemoteCollection___block_invoke;
      v8[3] = &unk_278B57280;
      v8[4] = &v9;
      [v3 previewItemAtIndex:v4 withCompletionHandler:v8];
      shouldUseRemoteViewController = [v10[5] shouldUseRemoteViewController];
      _Block_object_dispose(&v9, 8);

      if (shouldUseRemoteViewController)
      {
        break;
      }

      ++v4;
    }

    while ([v3 numberOfItems] > v4);
  }

  else
  {
    shouldUseRemoteViewController = 0;
  }

  return shouldUseRemoteViewController;
}

+ (uint64_t)openInTypeForItem:()UI appIsContentManaged:
{
  v3 = a3;
  v4 = _QLGetOpenInAppClaimBindingForItem(v3);
  if (!v4)
  {
    v13 = 0;
    goto LABEL_12;
  }

  editedCopy = [v3 editedCopy];

  if (editedCopy)
  {
    goto LABEL_11;
  }

  bundleRecord = [v4 bundleRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_11;
  }

  bundleRecord2 = [v4 bundleRecord];
  supportsOpenInPlace = [bundleRecord2 supportsOpenInPlace];
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v11 = [defaultWorkspace isApplicationEligibleForReadOnlyDocumentOpenBehavior:bundleRecord2];

  if (!supportsOpenInPlace)
  {
    goto LABEL_11;
  }

  fpItem = [v3 fpItem];

  if (fpItem)
  {
    v13 = 1;
    goto LABEL_12;
  }

  previewItemURL = [v3 previewItemURL];

  if (!previewItemURL)
  {
LABEL_11:
    v13 = 2;
    goto LABEL_12;
  }

  previewItemURL2 = [v3 previewItemURL];
  if ([previewItemURL2 _QLNeedsCoordination])
  {
    isBookmarkable = 1;
  }

  else
  {
    isBookmarkable = [v3 isBookmarkable];
  }

  previewItemURL3 = [v3 previewItemURL];
  if ([previewItemURL3 ui_isFileProviderURL])
  {
    previewItemURL4 = [v3 previewItemURL];
    v20 = FPURLMightBeInFileProvider() != 0;

    v21 = v20 | v11;
  }

  else
  {
    v21 = 1;
  }

  if ((isBookmarkable & v21) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

LABEL_12:

  return v13;
}

- (BOOL)isBookmarkable
{
  v6 = *MEMORY[0x277D85DE8];
  previewItemURL = [self previewItemURL];
  v2 = FPCreateBookmarkableStringFromDocumentURL();

  v3 = [v2 length] != 0;
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (uint64_t)defaultWhitePointAdaptivityStyle
{
  previewItemType = [self previewItemType];
  if ((previewItemType - 2) < 2)
  {
    return 2;
  }

  if (previewItemType == 4)
  {
    return 1;
  }

  if (previewItemType != 1)
  {
    return 0;
  }

  uTIAnalyzer = [self UTIAnalyzer];
  if ([uTIAnalyzer isAudioOnly])
  {
    v4 = 0;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (double)preferredContentSizeForOrbPlatterWithURL:()UI
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self previewItemType] == 2 || objc_msgSend(self, "previewItemType") == 3)
  {
    [self imageRawSizeOfContents:v4 withPreviewItemType:objc_msgSend(self imageIsAnimated:{"previewItemType"), 0}];
    v6 = v5;
  }

  else if ([self previewItemType] == 1 && (objc_msgSend(self, "UTIAnalyzer"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isAudioOnly"), v9, (v10 & 1) == 0))
  {
    v12 = objc_alloc(MEMORY[0x277CE6650]);
    v16 = *MEMORY[0x277CE6260];
    v17[0] = &unk_284D72F58;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v12 initWithURL:v4 options:v13];

    [v14 ql_imageSizeOfFirstVideoTrack];
    v6 = v15;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end