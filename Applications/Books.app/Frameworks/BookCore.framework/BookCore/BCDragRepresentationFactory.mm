@interface BCDragRepresentationFactory
+ (BOOL)registerFileRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider;
+ (id)dataForTypeIdentifier:(id)identifier dragInfo:(id)info;
+ (id)providerDataTypesForDragInfo:(id)info;
+ (id)providerFileTypesForDragInfo:(id)info;
+ (void)registerPlainTextRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider;
+ (void)registerRepresentationsFromAssetDragInfo:(id)info withProvider:(id)provider canDragToNewCanvas:(BOOL)canvas;
+ (void)registerSceneRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider;
+ (void)registerURLRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider;
@end

@implementation BCDragRepresentationFactory

+ (void)registerSceneRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider
{
  infoCopy = info;
  providerCopy = provider;
  assetID = [infoCopy assetID];
  contentType = [infoCopy contentType];
  if ([assetID length] && contentType && (contentType - 7) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.iBooks.assetReading"];
    title = [infoCopy title];
    v11 = title;
    v12 = &stru_2D2930;
    if (title)
    {
      v12 = title;
    }

    v13 = v12;

    [v9 setTitle:v13];
    v15[0] = @"assetID";
    v15[1] = BCBookDisplayTitle;
    v16[0] = assetID;
    v16[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    [v9 setUserInfo:v14];
    [providerCopy registerObject:v9 visibility:0];
  }
}

+ (BOOL)registerFileRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider
{
  infoCopy = info;
  providerCopy = provider;
  localFileURL = [infoCopy localFileURL];

  if (localFileURL)
  {
    localFileURL = infoCopy;
    v8 = sub_DA6A0(localFileURL);
    stringByDeletingPathExtension = [v8 stringByDeletingPathExtension];

    contentType = [localFileURL contentType];
    v7LocalFileURL = [localFileURL localFileURL];

    if (contentType == &dword_4 + 2)
    {
      v12 = sub_D9D30(v7LocalFileURL);

      v7LocalFileURL = v12;
    }

    bu_utType = [v7LocalFileURL bu_utType];
    preferredFilenameExtension = [bu_utType preferredFilenameExtension];

    if (preferredFilenameExtension)
    {
      v15 = [stringByDeletingPathExtension stringByAppendingPathExtension:preferredFilenameExtension];

      stringByDeletingPathExtension = v15;
    }

    [providerCopy setSuggestedName:stringByDeletingPathExtension];
    [providerCopy setPreferredPresentationStyle:2];
    [localFileURL assetID];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_D9ADC;
    v16 = v28[3] = &unk_2CB178;
    v29 = v16;
    [providerCopy registerItemForTypeIdentifier:@"com.apple.iBooksX.BKLibraryAssetPasteboardType" loadHandler:v28];
    v7LocalFileURL2 = [localFileURL localFileURL];
    bu_utType2 = [v7LocalFileURL2 bu_utType];
    identifier = [bu_utType2 identifier];

    if (!identifier)
    {
      v30[0] = @"epub";
      v30[1] = @"ibooks";
      v31[0] = @"org.idpf.epub-folder";
      v31[1] = @"com.apple.ibooks-folder";
      v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
      pathExtension = [v7LocalFileURL2 pathExtension];
      lowercaseString = [pathExtension lowercaseString];

      v23 = [v20 objectForKeyedSubscript:lowercaseString];
      if (v23)
      {
        identifier = v23;
      }

      else
      {
        identifier = [BKAssetUtilities utiTypeForContentType:[BKAssetUtilities contentTypeForExtension:lowercaseString]];

        if (!identifier)
        {
          LOBYTE(localFileURL) = 0;
          goto LABEL_11;
        }
      }
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_D9BC8;
    v25[3] = &unk_2CCE20;
    v26 = v7LocalFileURL2;
    v27 = localFileURL;
    [providerCopy registerFileRepresentationForTypeIdentifier:identifier fileOptions:0 visibility:0 loadHandler:v25];

    LOBYTE(localFileURL) = 1;
LABEL_11:
  }

  return localFileURL;
}

+ (void)registerURLRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider
{
  infoCopy = info;
  providerCopy = provider;
  storeID = [infoCopy storeID];

  if (storeID)
  {
    v8 = objc_opt_class();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_DA028;
    v9[3] = &unk_2CCE48;
    v10 = infoCopy;
    [providerCopy registerObjectOfClass:v8 visibility:0 loadHandler:v9];
  }
}

+ (void)registerPlainTextRepresentationFromAssetDragInfo:(id)info withProvider:(id)provider
{
  providerCopy = provider;
  v6 = sub_DA244(info);
  if (v6)
  {
    identifier = [UTTypeUTF8PlainText identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_DA564;
    v8[3] = &unk_2CCE70;
    v9 = v6;
    [providerCopy registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v8];
  }
}

+ (void)registerRepresentationsFromAssetDragInfo:(id)info withProvider:(id)provider canDragToNewCanvas:(BOOL)canvas
{
  canvasCopy = canvas;
  infoCopy = info;
  providerCopy = provider;
  v8 = sub_DA6A0(infoCopy);
  [providerCopy setSuggestedName:v8];

  [providerCopy setPreferredPresentationStyle:1];
  if (canvasCopy)
  {
    [BCDragRepresentationFactory registerSceneRepresentationFromAssetDragInfo:infoCopy withProvider:providerCopy];
  }

  if (![BCDragRepresentationFactory registerFileRepresentationFromAssetDragInfo:infoCopy withProvider:providerCopy])
  {
    [BCDragRepresentationFactory registerURLRepresentationFromAssetDragInfo:infoCopy withProvider:providerCopy];
    [BCDragRepresentationFactory registerPlainTextRepresentationFromAssetDragInfo:infoCopy withProvider:providerCopy];
  }
}

+ (id)providerDataTypesForDragInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableArray);
  localFileURL = [infoCopy localFileURL];

  if (!localFileURL)
  {
    identifier = [UTTypeUTF8PlainText identifier];
    [v4 addObject:identifier];

    storeURL = [infoCopy storeURL];

    if (storeURL)
    {
      identifier2 = [UTTypeURL identifier];
      [v4 addObject:identifier2];
    }
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)providerFileTypesForDragInfo:(id)info
{
  infoCopy = info;
  v4 = objc_alloc_init(NSMutableArray);
  localFileURL = [infoCopy localFileURL];

  if (localFileURL)
  {
    localFileURL2 = [infoCopy localFileURL];
    bu_utType = [localFileURL2 bu_utType];
    identifier = [bu_utType identifier];

    if (identifier)
    {
      [v4 addObject:identifier];
    }
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)dataForTypeIdentifier:(id)identifier dragInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  identifier = [UTTypeURL identifier];
  v8 = [identifierCopy isEqualToString:identifier];

  if (v8)
  {
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_DAB90;
    v26 = sub_DABA0;
    v27 = 0;
    storeURL = [infoCopy storeURL];

    if (storeURL)
    {
      storeURL2 = [infoCopy storeURL];
      identifier2 = [UTTypeURL identifier];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_DABA8;
      v19[3] = &unk_2CCE98;
      v21 = &v22;
      v20 = v9;
      v13 = [storeURL2 loadDataWithTypeIdentifier:identifier2 forItemProviderCompletionHandler:v19];

      v14 = v20;
    }

    else
    {
      v14 = BCDragAndDropLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1E9AE0(v14);
      }
    }

    dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    v17 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    identifier3 = [UTTypeUTF8PlainText identifier];
    v16 = [identifierCopy isEqualToString:identifier3];

    if (!v16)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v9 = sub_DA244(infoCopy);
    v17 = [v9 dataUsingEncoding:4];
  }

LABEL_11:

  return v17;
}

@end