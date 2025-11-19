@interface AEAnnotationTextActivityItemProvider
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (id)supportedActivityTypes;
- (id)textForActivityType:(id)a3;
@end

@implementation AEAnnotationTextActivityItemProvider

- (id)supportedActivityTypes
{
  v4[0] = UIActivityTypeMessage;
  v4[1] = @"com.apple.share.Messages.window";
  v4[2] = UIActivityTypeCopyToPasteboard;
  v4[3] = UIActivityTypeSaveToNotes;
  v4[4] = @"com.apple.Notes.SharingExtension";
  v4[5] = UIActivityTypeCreateReminder;
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v5 = a4;
  if ([(AEAssetActivityItemProviderSource *)self supportsActivityType:v5])
  {
    if ([v5 isEqualToString:UIActivityTypeCopyToPasteboard] || (objc_msgSend(v5, "isEqualToString:", UIActivityTypeCreateReminder) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", UIActivityTypeSaveToNotes) & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.Notes.SharingExtension"))
    {
      v6 = [(AEAnnotationTextActivityItemProvider *)self textForActivityType:v5];
      goto LABEL_10;
    }

    v11 = [(AEAnnotationActivityItemProviderSource *)self annotations];
    v12 = [v11 objectAtIndexedSubscript:0];

    v13 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    if (![v13 isStoreAsset] || (objc_msgSend(v12, "annotationHasNote") & 1) != 0)
    {

LABEL_16:
      v6 = [(AEAnnotationTextActivityItemProvider *)self textForActivityType:v5];
LABEL_17:

      goto LABEL_10;
    }

    if ([v5 isEqualToString:UIActivityTypeMessage])
    {
    }

    else
    {
      v14 = [v5 isEqualToString:@"com.apple.share.Messages.window"];

      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v15 = [(AEAnnotationActivityItemProviderSource *)self _generateLinkMetadata];
    v6 = [v15 URL];

    goto LABEL_17;
  }

  v7 = AESharingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v16 = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", &v16, 0x16u);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)textForActivityType:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotationActivityItemProviderSource *)self text];
  if ([v5 tokenCountWithEnumerationOptions:3 maxTokenCount:-1 outLimitLength:0] >= 4)
  {
    v6 = [v5 stringByEnclosingInQuotes];
    v7 = [(AEAnnotationActivityItemProviderSource *)self annotations];
    v8 = [v7 firstObject];

    v41 = v8;
    v42 = [v8 annotationNote];
    if ([v42 length])
    {
      v9 = [v6 stringByAppendingFormat:@"\n\n%@", v42];

      v6 = v9;
    }

    v10 = IMCommonCoreBundle();
    v11 = [v10 localizedStringForKey:@"Excerpt From" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v12 = IMCommonCoreBundle();
    v13 = [v12 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    if ([v4 isEqualToString:UIActivityTypeCopyToPasteboard])
    {
      v39 = v11;
      v14 = +[NSString string];
      v15 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v16 = [v15 title];

      if ([v16 length])
      {
        v17 = [v14 stringByAppendingFormat:@"\n%@", v16];

        v14 = v17;
      }

      v18 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v19 = [v18 author];

      if ([v19 length])
      {
        v20 = [v14 stringByAppendingFormat:@"\n%@", v19];

        v14 = v20;
      }

      v21 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v22 = [v21 storeURLPreferShort];

      if (v22)
      {
        v23 = [v22 absoluteString];
        [v14 stringByAppendingFormat:@"\n%@", v23];
        v24 = v19;
        v25 = v13;
        v26 = v6;
        v28 = v27 = v4;

        v14 = v28;
        v4 = v27;
        v6 = v26;
        v13 = v25;
        v19 = v24;
      }

      v11 = v39;
      v29 = [NSString stringWithFormat:@"%@\n\n%@%@\n%@", v6, v39, v14, v13];
    }

    else
    {
      v14 = [(AEAssetActivityItemProviderSource *)self citation];
      v22 = [NSString stringWithFormat:@"%@\n\n%@: %@\n%@", v6, v11, v14, v13];

      v16 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      if (![v16 isStoreAsset])
      {
        goto LABEL_22;
      }

      v40 = v13;
      v30 = [v4 isEqualToString:@"com.apple.share.Messages.window"];

      if (v30)
      {
        v13 = v40;
LABEL_23:

        v5 = v22;
        goto LABEL_24;
      }

      v31 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v32 = [v31 storeURLPreferShort];
      v16 = [v32 absoluteString];

      if (!v16)
      {
        v13 = v40;
        goto LABEL_22;
      }

      v33 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      v34 = [v33 assetType];

      v35 = IMCommonCoreBundle();
      v36 = v35;
      if (v34 == &dword_4 + 2)
      {
        v37 = @"Check out this audiobook on Apple Books:";
      }

      else
      {
        v37 = @"Check out this book on Apple Books:";
      }

      v19 = [v35 localizedStringForKey:v37 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

      v29 = [v22 stringByAppendingFormat:@"\n\n%@ %@", v19, v16];
      v13 = v40;
    }

    v22 = v29;
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:

  return v5;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v5 = [(AEAnnotationActivityItemProviderSource *)self _generateLinkMetadata];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end