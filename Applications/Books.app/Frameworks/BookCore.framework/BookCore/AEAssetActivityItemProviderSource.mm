@interface AEAssetActivityItemProviderSource
+ (id)activityItemProviderWithPropertySource:(id)source;
+ (id)citationWithPropertyProvider:(id)provider storeURL:(id)l pageRange:(_NSRange)range;
- (AEAssetActivityItemProviderSource)initWithPropertySource:(id)source;
- (BOOL)supportsActivityType:(id)type;
- (id)HTMLGenerator:(id)generator citationForStoreURL:(id)l;
- (id)assetCoverForHTMLGenerator:(id)generator;
- (id)citation;
- (id)storeURLForHTMLGenerator:(id)generator;
- (id)tellAFriendBaseURLForHTMLGenerator:(id)generator;
- (void)populateHTMLGenerator:(id)generator;
@end

@implementation AEAssetActivityItemProviderSource

+ (id)activityItemProviderWithPropertySource:(id)source
{
  sourceCopy = source;
  v5 = [[self alloc] initWithPropertySource:sourceCopy];

  return v5;
}

- (AEAssetActivityItemProviderSource)initWithPropertySource:(id)source
{
  sourceCopy = source;
  v5 = [(AEAssetActivityItemProviderSource *)self init];
  if (v5)
  {
    v6 = [[AEAssetActivityPropertyProvider alloc] initWithPropertySource:sourceCopy];
    propertyProvider = v5->_propertyProvider;
    v5->_propertyProvider = v6;
  }

  return v5;
}

- (BOOL)supportsActivityType:(id)type
{
  typeCopy = type;
  supportedActivityTypes = [(AEAssetActivityItemProviderSource *)self supportedActivityTypes];
  v6 = [supportedActivityTypes containsObject:typeCopy];

  return v6;
}

- (void)populateHTMLGenerator:(id)generator
{
  generatorCopy = generator;
  [generatorCopy setDataSource:self];
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  if ([propertyProvider isStoreAsset])
  {
    propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    storeID = [propertyProvider2 storeID];
    [generatorCopy setStoreId:storeID];
  }

  else
  {
    [generatorCopy setStoreId:0];
  }

  propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  epubID = [propertyProvider3 epubID];
  [generatorCopy setEpubId:epubID];

  propertyProvider4 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  title = [propertyProvider4 title];
  [generatorCopy setTitle:title];

  propertyProvider5 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  author = [propertyProvider5 author];
  [generatorCopy setAuthor:author];

  propertyProvider6 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  publisherLocation = [propertyProvider6 publisherLocation];
  [generatorCopy setPublisherLocation:publisherLocation];

  propertyProvider7 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  publisherName = [propertyProvider7 publisherName];
  [generatorCopy setPublisherName:publisherName];

  propertyProvider8 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  publisherYear = [propertyProvider8 publisherYear];
  [generatorCopy setPublisherYear:publisherYear];

  propertyProvider9 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  [generatorCopy setContentProtected:{objc_msgSend(propertyProvider9, "contentProtected")}];

  propertyProvider10 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  genre = [propertyProvider10 genre];
  [generatorCopy setGenre:genre];

  propertyProvider11 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  readingDirection = [propertyProvider11 readingDirection];
  [generatorCopy setReadingDirection:readingDirection];
}

+ (id)citationWithPropertyProvider:(id)provider storeURL:(id)l pageRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  providerCopy = provider;
  lCopy = l;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_7E69C;
  v60[3] = &unk_2CB1A0;
  v8 = objc_alloc_init(NSMutableArray);
  v61 = v8;
  v9 = objc_retainBlock(v60);
  author = [providerCopy author];
  v57 = v8;
  if ([author length])
  {
    v11 = +[NSCharacterSet punctuationCharacterSet];
    v12 = [v11 characterIsMember:{objc_msgSend(author, "characterAtIndex:", objc_msgSend(author, "length") - 1)}];

    if ((v12 & 1) == 0)
    {
      v13 = objc_alloc_init(NSMutableArray);
      v14 = [author length];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_7E778;
      v58[3] = &unk_2CB1C8;
      v15 = v13;
      v59 = v15;
      [author enumerateSubstringsInRange:0 options:v14 usingBlock:{3, v58}];
      if ([v15 count] == &dword_0 + 2)
      {
        v16 = IMCommonCoreBundle();
        v17 = [v16 localizedStringForKey:@"%@ value:%@" table:{&stru_2D2930, @"BCCommonCoreLocalizable"}];
        v18 = [v15 objectAtIndex:1];
        [v15 objectAtIndex:0];
        v20 = v19 = lCopy;
        v21 = [NSString stringWithFormat:v17, v18, v20];

        lCopy = v19;
        v8 = v57;

        author = v21;
      }
    }

    (v9[2])(v9, author);
  }

  title = [providerCopy title];
  if ([title length])
  {
    v23 = +[NSCharacterSet whitespaceCharacterSet];
    v24 = [title stringByTrimmingCharactersInSet:v23];

    if (([v24 hasSuffix:@"."] & 1) == 0)
    {
      v25 = [v24 stringByAppendingString:@"."];

      v24 = v25;
    }

    if (lCopy)
    {
      v26 = [NSString stringWithFormat:@"<a href=%@>%@</a>", lCopy, v24];

      v24 = v26;
    }

    stringByEnclosingInQuotes = [v24 stringByEnclosingInQuotes];

    v28 = [stringByEnclosingInQuotes stringByAppendingString:@" "];

    [v8 addObject:v28];
  }

  v52 = title;
  v53 = author;
  v54 = lCopy;
  version = [providerCopy version];
  if ([version length])
  {
    v30 = IMCommonCoreBundle();
    v31 = [v30 localizedStringForKey:@"v%@. " value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v32 = [NSString stringWithFormat:v31, version];

    [v8 addObject:v32];
    version = v32;
  }

  v33 = location;
  publisherLocation = [providerCopy publisherLocation];
  publisherName = [providerCopy publisherName];
  if ([publisherLocation length])
  {
    v36 = publisherLocation;
  }

  else
  {
    v36 = 0;
  }

  if ([publisherName length])
  {
    if ([v36 length])
    {
      v37 = [v36 stringByAppendingFormat:@", %@", publisherName];
    }

    else
    {
      v37 = publisherName;
    }

    v38 = v37;

    v36 = v38;
  }

  if ([v36 length])
  {
    publisherYear = [providerCopy publisherYear];
    if ([publisherYear length])
    {
      v40 = [v36 stringByAppendingFormat:@", %@", publisherYear];

      v36 = v40;
    }

    (v9[2])(v9, v36);
  }

  v56 = providerCopy;
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
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v5 = [v3 citationWithPropertyProvider:propertyProvider storeURL:0 pageRange:{0x7FFFFFFFFFFFFFFFLL, 0}];

  return v5;
}

- (id)assetCoverForHTMLGenerator:(id)generator
{
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  assetCover = [propertyProvider assetCover];

  return assetCover;
}

- (id)storeURLForHTMLGenerator:(id)generator
{
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  storeURL = [propertyProvider storeURL];

  return storeURL;
}

- (id)tellAFriendBaseURLForHTMLGenerator:(id)generator
{
  v3 = +[AEAssetEngine storeMgr];
  clientApplicationController = [v3 clientApplicationController];
  objc_opt_class();
  tellAFriendEmailBodyURLBase = [clientApplicationController tellAFriendEmailBodyURLBase];
  v6 = BUDynamicCast();

  return v6;
}

- (id)HTMLGenerator:(id)generator citationForStoreURL:(id)l
{
  lCopy = l;
  v6 = objc_opt_class();
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  v8 = [v6 citationWithPropertyProvider:propertyProvider storeURL:lCopy pageRange:{0x7FFFFFFFFFFFFFFFLL, 0}];

  v9 = IMCommonCoreBundle();
  v10 = [v9 localizedStringForKey:@"This material may be protected by copyright." value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v11 = [v8 stringByAppendingFormat:@"\n%@", v10];

  return v11;
}

@end