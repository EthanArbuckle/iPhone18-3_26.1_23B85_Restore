@interface AEAssetActivityItemProviderSource
+ (id)activityItemProviderWithPropertySource:(id)a3;
+ (id)citationWithPropertyProvider:(id)a3 storeURL:(id)a4 pageRange:(_NSRange)a5;
- (AEAssetActivityItemProviderSource)initWithPropertySource:(id)a3;
- (BOOL)supportsActivityType:(id)a3;
- (id)HTMLGenerator:(id)a3 citationForStoreURL:(id)a4;
- (id)assetCoverForHTMLGenerator:(id)a3;
- (id)citation;
- (id)storeURLForHTMLGenerator:(id)a3;
- (id)tellAFriendBaseURLForHTMLGenerator:(id)a3;
- (void)populateHTMLGenerator:(id)a3;
@end

@implementation AEAssetActivityItemProviderSource

+ (id)activityItemProviderWithPropertySource:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPropertySource:v4];

  return v5;
}

- (AEAssetActivityItemProviderSource)initWithPropertySource:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetActivityItemProviderSource *)self init];
  if (v5)
  {
    v6 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:v4];
    propertyProvider = v5->_propertyProvider;
    v5->_propertyProvider = v6;
  }

  return v5;
}

- (BOOL)supportsActivityType:(id)a3
{
  v4 = a3;
  v5 = [(AEAssetActivityItemProviderSource *)self supportedActivityTypes];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)populateHTMLGenerator:(id)a3
{
  v24 = a3;
  [v24 setDataSource:self];
  v4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  if ([v4 isStoreAsset])
  {
    v5 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    v6 = [v5 storeID];
    [v24 setStoreId:v6];
  }

  else
  {
    [v24 setStoreId:0];
  }

  v7 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v8 = [v7 epubID];
  [v24 setEpubId:v8];

  v9 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v10 = [v9 title];
  [v24 setTitle:v10];

  v11 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v12 = [v11 author];
  [v24 setAuthor:v12];

  v13 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v14 = [v13 publisherLocation];
  [v24 setPublisherLocation:v14];

  v15 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v16 = [v15 publisherName];
  [v24 setPublisherName:v16];

  v17 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v18 = [v17 publisherYear];
  [v24 setPublisherYear:v18];

  v19 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  [v24 setContentProtected:{objc_msgSend(v19, "contentProtected")}];

  v20 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v21 = [v20 genre];
  [v24 setGenre:v21];

  v22 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v23 = [v22 readingDirection];
  [v24 setReadingDirection:v23];
}

+ (id)citationWithPropertyProvider:(id)a3 storeURL:(id)a4 pageRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v6 = a3;
  v7 = a4;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_7E69C;
  v60[3] = &unk_2CB1A0;
  v8 = objc_alloc_init(NSMutableArray);
  v61 = v8;
  v9 = objc_retainBlock(v60);
  v10 = [v6 author];
  v57 = v8;
  if ([v10 length])
  {
    v11 = +[NSCharacterSet punctuationCharacterSet];
    v12 = [v11 characterIsMember:{objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1)}];

    if ((v12 & 1) == 0)
    {
      v13 = objc_alloc_init(NSMutableArray);
      v14 = [v10 length];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_7E778;
      v58[3] = &unk_2CB1C8;
      v15 = v13;
      v59 = v15;
      [v10 enumerateSubstringsInRange:0 options:v14 usingBlock:{3, v58}];
      if ([v15 count] == &dword_0 + 2)
      {
        v16 = IMCommonCoreBundle();
        v17 = [v16 localizedStringForKey:@"%@ value:%@" table:{&stru_2D2930, @"BCCommonCoreLocalizable"}];
        v18 = [v15 objectAtIndex:1];
        [v15 objectAtIndex:0];
        v20 = v19 = v7;
        v21 = [NSString stringWithFormat:v17, v18, v20];

        v7 = v19;
        v8 = v57;

        v10 = v21;
      }
    }

    (v9[2])(v9, v10);
  }

  v22 = [v6 title];
  if ([v22 length])
  {
    v23 = +[NSCharacterSet whitespaceCharacterSet];
    v24 = [v22 stringByTrimmingCharactersInSet:v23];

    if (([v24 hasSuffix:@"."] & 1) == 0)
    {
      v25 = [v24 stringByAppendingString:@"."];

      v24 = v25;
    }

    if (v7)
    {
      v26 = [NSString stringWithFormat:@"<a href=%@>%@</a>", v7, v24];

      v24 = v26;
    }

    v27 = [v24 stringByEnclosingInQuotes];

    v28 = [v27 stringByAppendingString:@" "];

    [v8 addObject:v28];
  }

  v52 = v22;
  v53 = v10;
  v54 = v7;
  v29 = [v6 version];
  if ([v29 length])
  {
    v30 = IMCommonCoreBundle();
    v31 = [v30 localizedStringForKey:@"v%@. " value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v32 = [NSString stringWithFormat:v31, v29];

    [v8 addObject:v32];
    v29 = v32;
  }

  v33 = location;
  v34 = [v6 publisherLocation];
  v35 = [v6 publisherName];
  if ([v34 length])
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  if ([v35 length])
  {
    if ([v36 length])
    {
      v37 = [v36 stringByAppendingFormat:@", %@", v35];
    }

    else
    {
      v37 = v35;
    }

    v38 = v37;

    v36 = v38;
  }

  if ([v36 length])
  {
    v39 = [v6 publisherYear];
    if ([v39 length])
    {
      v40 = [v36 stringByAppendingFormat:@", %@", v39];

      v36 = v40;
    }

    (v9[2])(v9, v36);
  }

  v56 = v6;
  if (v33 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v41 = 0;
  }

  else
  {
    v42 = [NSString stringWithFormat:@"%lull", v33];
    v43 = v42;
    if (length)
    {
      v44 = [NSString stringWithFormat:@"%lull", v33 + length];
      v45 = [v43 commonPrefixWithString:v44 options:1];
      v46 = [v44 substringFromIndex:{objc_msgSend(v45, "length")}];
      v41 = [NSString stringWithFormat:@"%@-%@", v43, v46];
    }

    else
    {
      v41 = v42;
    }
  }

  if ([v41 length])
  {
    (v9[2])(v9, v41);
  }

  v47 = IMCommonCoreBundle();
  v48 = [v47 localizedStringForKey:@"Apple Books" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  (v9[2])(v9, v48);
  v49 = [v57 componentsJoinedByString:&stru_2D2930];

  return v49;
}

- (id)citation
{
  v3 = objc_opt_class();
  v4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v5 = [v3 citationWithPropertyProvider:v4 storeURL:0 pageRange:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v5;
}

- (id)assetCoverForHTMLGenerator:(id)a3
{
  v3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v4 = [v3 assetCover];

  return v4;
}

- (id)storeURLForHTMLGenerator:(id)a3
{
  v3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v4 = [v3 storeURL];

  return v4;
}

- (id)tellAFriendBaseURLForHTMLGenerator:(id)a3
{
  v3 = +[AEAssetEngine storeMgr];
  v4 = [v3 clientApplicationController];
  objc_opt_class();
  v5 = [v4 tellAFriendEmailBodyURLBase];
  v6 = BUDynamicCast();

  return v6;
}

- (id)HTMLGenerator:(id)a3 citationForStoreURL:(id)a4
{
  v5 = a4;
  v6 = objc_opt_class();
  v7 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v8 = [v6 citationWithPropertyProvider:v7 storeURL:v5 pageRange:{0x7FFFFFFFFFFFFFFFLL, 0}];

  v9 = IMCommonCoreBundle();
  v10 = [v9 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v11 = [v8 stringByAppendingFormat:@"\n%@", v10];

  return v11;
}

@end