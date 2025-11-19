@interface BCDragRepresentationFactory
+ (BOOL)registerFileRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4;
+ (id)dataForTypeIdentifier:(id)a3 dragInfo:(id)a4;
+ (id)providerDataTypesForDragInfo:(id)a3;
+ (id)providerFileTypesForDragInfo:(id)a3;
+ (void)registerPlainTextRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4;
+ (void)registerRepresentationsFromAssetDragInfo:(id)a3 withProvider:(id)a4 canDragToNewCanvas:(BOOL)a5;
+ (void)registerSceneRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4;
+ (void)registerURLRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4;
@end

@implementation BCDragRepresentationFactory

+ (void)registerSceneRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 assetID];
  v8 = [v5 contentType];
  if ([v7 length] && v8 && (v8 - 7) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.iBooks.assetReading"];
    v10 = [v5 title];
    v11 = v10;
    v12 = &stru_2D2930;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    [v9 setTitle:v13];
    v15[0] = @"assetID";
    v15[1] = BCBookDisplayTitle;
    v16[0] = v7;
    v16[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    [v9 setUserInfo:v14];
    [v6 registerObject:v9 visibility:0];
  }
}

+ (BOOL)registerFileRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 localFileURL];

  if (v7)
  {
    v7 = v5;
    v8 = sub_DA6A0(v7);
    v9 = [v8 stringByDeletingPathExtension];

    v10 = [v7 contentType];
    v11 = [v7 localFileURL];

    if (v10 == &dword_4 + 2)
    {
      v12 = sub_D9D30(v11);

      v11 = v12;
    }

    v13 = [v11 bu_utType];
    v14 = [v13 preferredFilenameExtension];

    if (v14)
    {
      v15 = [v9 stringByAppendingPathExtension:v14];

      v9 = v15;
    }

    [v6 setSuggestedName:v9];
    [v6 setPreferredPresentationStyle:2];
    [v7 assetID];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_D9ADC;
    v16 = v28[3] = &unk_2CB178;
    v29 = v16;
    [v6 registerItemForTypeIdentifier:@"com.apple.iBooksX.BKLibraryAssetPasteboardType" loadHandler:v28];
    v17 = [v7 localFileURL];
    v18 = [v17 bu_utType];
    v19 = [v18 identifier];

    if (!v19)
    {
      v30[0] = @"epub";
      v30[1] = @"ibooks";
      v31[0] = @"org.idpf.epub-folder";
      v31[1] = @"com.apple.ibooks-folder";
      v20 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
      v21 = [v17 pathExtension];
      v22 = [v21 lowercaseString];

      v23 = [v20 objectForKeyedSubscript:v22];
      if (v23)
      {
        v19 = v23;
      }

      else
      {
        v19 = [BKAssetUtilities utiTypeForContentType:[BKAssetUtilities contentTypeForExtension:v22]];

        if (!v19)
        {
          LOBYTE(v7) = 0;
          goto LABEL_11;
        }
      }
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_D9BC8;
    v25[3] = &unk_2CCE20;
    v26 = v17;
    v27 = v7;
    [v6 registerFileRepresentationForTypeIdentifier:v19 fileOptions:0 visibility:0 loadHandler:v25];

    LOBYTE(v7) = 1;
LABEL_11:
  }

  return v7;
}

+ (void)registerURLRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 storeID];

  if (v7)
  {
    v8 = objc_opt_class();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_DA028;
    v9[3] = &unk_2CCE48;
    v10 = v5;
    [v6 registerObjectOfClass:v8 visibility:0 loadHandler:v9];
  }
}

+ (void)registerPlainTextRepresentationFromAssetDragInfo:(id)a3 withProvider:(id)a4
{
  v5 = a4;
  v6 = sub_DA244(a3);
  if (v6)
  {
    v7 = [UTTypeUTF8PlainText identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_DA564;
    v8[3] = &unk_2CCE70;
    v9 = v6;
    [v5 registerDataRepresentationForTypeIdentifier:v7 visibility:0 loadHandler:v8];
  }
}

+ (void)registerRepresentationsFromAssetDragInfo:(id)a3 withProvider:(id)a4 canDragToNewCanvas:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v7 = a4;
  v8 = sub_DA6A0(v9);
  [v7 setSuggestedName:v8];

  [v7 setPreferredPresentationStyle:1];
  if (v5)
  {
    [BCDragRepresentationFactory registerSceneRepresentationFromAssetDragInfo:v9 withProvider:v7];
  }

  if (![BCDragRepresentationFactory registerFileRepresentationFromAssetDragInfo:v9 withProvider:v7])
  {
    [BCDragRepresentationFactory registerURLRepresentationFromAssetDragInfo:v9 withProvider:v7];
    [BCDragRepresentationFactory registerPlainTextRepresentationFromAssetDragInfo:v9 withProvider:v7];
  }
}

+ (id)providerDataTypesForDragInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v3 localFileURL];

  if (!v5)
  {
    v6 = [UTTypeUTF8PlainText identifier];
    [v4 addObject:v6];

    v7 = [v3 storeURL];

    if (v7)
    {
      v8 = [UTTypeURL identifier];
      [v4 addObject:v8];
    }
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)providerFileTypesForDragInfo:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [v3 localFileURL];

  if (v5)
  {
    v6 = [v3 localFileURL];
    v7 = [v6 bu_utType];
    v8 = [v7 identifier];

    if (v8)
    {
      [v4 addObject:v8];
    }
  }

  v9 = [v4 copy];

  return v9;
}

+ (id)dataForTypeIdentifier:(id)a3 dragInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [UTTypeURL identifier];
  v8 = [v5 isEqualToString:v7];

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
    v10 = [v6 storeURL];

    if (v10)
    {
      v11 = [v6 storeURL];
      v12 = [UTTypeURL identifier];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_DABA8;
      v19[3] = &unk_2CCE98;
      v21 = &v22;
      v20 = v9;
      v13 = [v11 loadDataWithTypeIdentifier:v12 forItemProviderCompletionHandler:v19];

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
    v15 = [UTTypeUTF8PlainText identifier];
    v16 = [v5 isEqualToString:v15];

    if (!v16)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v9 = sub_DA244(v6);
    v17 = [v9 dataUsingEncoding:4];
  }

LABEL_11:

  return v17;
}

@end