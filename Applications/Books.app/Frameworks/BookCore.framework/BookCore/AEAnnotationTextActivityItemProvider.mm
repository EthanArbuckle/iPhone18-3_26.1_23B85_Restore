@interface AEAnnotationTextActivityItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)supportedActivityTypes;
- (id)textForActivityType:(id)type;
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

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  if ([(AEAssetActivityItemProviderSource *)self supportsActivityType:typeCopy])
  {
    if ([typeCopy isEqualToString:UIActivityTypeCopyToPasteboard] || (objc_msgSend(typeCopy, "isEqualToString:", UIActivityTypeCreateReminder) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", UIActivityTypeSaveToNotes) & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.Notes.SharingExtension"))
    {
      v6 = [(AEAnnotationTextActivityItemProvider *)self textForActivityType:typeCopy];
      goto LABEL_10;
    }

    annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
    v12 = [annotations objectAtIndexedSubscript:0];

    propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    if (![propertyProvider isStoreAsset] || (objc_msgSend(v12, "annotationHasNote") & 1) != 0)
    {

LABEL_16:
      v6 = [(AEAnnotationTextActivityItemProvider *)self textForActivityType:typeCopy];
LABEL_17:

      goto LABEL_10;
    }

    if ([typeCopy isEqualToString:UIActivityTypeMessage])
    {
    }

    else
    {
      v14 = [typeCopy isEqualToString:@"com.apple.share.Messages.window"];

      if ((v14 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    _generateLinkMetadata = [(AEAnnotationActivityItemProviderSource *)self _generateLinkMetadata];
    v6 = [_generateLinkMetadata URL];

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
    v19 = typeCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", &v16, 0x16u);
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (id)textForActivityType:(id)type
{
  typeCopy = type;
  text = [(AEAnnotationActivityItemProviderSource *)self text];
  if ([text tokenCountWithEnumerationOptions:3 maxTokenCount:-1 outLimitLength:0] >= 4)
  {
    stringByEnclosingInQuotes = [text stringByEnclosingInQuotes];
    annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
    firstObject = [annotations firstObject];

    v41 = firstObject;
    annotationNote = [firstObject annotationNote];
    if ([annotationNote length])
    {
      v9 = [stringByEnclosingInQuotes stringByAppendingFormat:@"\n\n%@", annotationNote];

      stringByEnclosingInQuotes = v9;
    }

    v10 = IMCommonCoreBundle();
    v11 = [v10 localizedStringForKey:@"Excerpt From" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v12 = IMCommonCoreBundle();
    v13 = [v12 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    if ([typeCopy isEqualToString:UIActivityTypeCopyToPasteboard])
    {
      v39 = v11;
      citation = +[NSString string];
      propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      title = [propertyProvider title];

      if ([title length])
      {
        v17 = [citation stringByAppendingFormat:@"\n%@", title];

        citation = v17;
      }

      propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      author = [propertyProvider2 author];

      if ([author length])
      {
        v20 = [citation stringByAppendingFormat:@"\n%@", author];

        citation = v20;
      }

      propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      storeURLPreferShort = [propertyProvider3 storeURLPreferShort];

      if (storeURLPreferShort)
      {
        absoluteString = [storeURLPreferShort absoluteString];
        [citation stringByAppendingFormat:@"\n%@", absoluteString];
        v24 = author;
        v25 = v13;
        v26 = stringByEnclosingInQuotes;
        v28 = v27 = typeCopy;

        citation = v28;
        typeCopy = v27;
        stringByEnclosingInQuotes = v26;
        v13 = v25;
        author = v24;
      }

      v11 = v39;
      v29 = [NSString stringWithFormat:@"%@\n\n%@%@\n%@", stringByEnclosingInQuotes, v39, citation, v13];
    }

    else
    {
      citation = [(AEAssetActivityItemProviderSource *)self citation];
      storeURLPreferShort = [NSString stringWithFormat:@"%@\n\n%@: %@\n%@", stringByEnclosingInQuotes, v11, citation, v13];

      title = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      if (![title isStoreAsset])
      {
        goto LABEL_22;
      }

      v40 = v13;
      v30 = [typeCopy isEqualToString:@"com.apple.share.Messages.window"];

      if (v30)
      {
        v13 = v40;
LABEL_23:

        text = storeURLPreferShort;
        goto LABEL_24;
      }

      propertyProvider4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      storeURLPreferShort2 = [propertyProvider4 storeURLPreferShort];
      title = [storeURLPreferShort2 absoluteString];

      if (!title)
      {
        v13 = v40;
        goto LABEL_22;
      }

      propertyProvider5 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      assetType = [propertyProvider5 assetType];

      v35 = IMCommonCoreBundle();
      v36 = v35;
      if (assetType == &dword_4 + 2)
      {
        v37 = @"Check out this audiobook on Apple Books:";
      }

      else
      {
        v37 = @"Check out this book on Apple Books:";
      }

      author = [v35 localizedStringForKey:v37 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

      v29 = [storeURLPreferShort stringByAppendingFormat:@"\n\n%@ %@", author, title];
      v13 = v40;
    }

    storeURLPreferShort = v29;
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:

  return text;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    _generateLinkMetadata = [(AEAnnotationActivityItemProviderSource *)self _generateLinkMetadata];
  }

  else
  {
    _generateLinkMetadata = 0;
  }

  return _generateLinkMetadata;
}

@end