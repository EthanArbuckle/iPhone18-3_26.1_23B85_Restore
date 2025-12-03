@interface AEAssetActivityPropertyProvider
- (AEAssetActivityPropertyProvider)initWithPropertySource:(id)source;
- (BOOL)contentProtected;
- (BOOL)isOwned;
- (BOOL)isStoreAsset;
- (NSString)assetID;
- (NSString)assetTypeString;
- (NSString)author;
- (NSString)bookDescription;
- (NSString)epubID;
- (NSString)genre;
- (NSString)publisherLocation;
- (NSString)publisherName;
- (NSString)publisherYear;
- (NSString)readingDirection;
- (NSString)seriesTitle;
- (NSString)storeID;
- (NSString)title;
- (NSString)version;
- (NSURL)bookURL;
- (NSURL)storeShortURL;
- (NSURL)storeURL;
- (NSURL)storeURLPreferShort;
- (UIImage)assetCover;
- (id)checkOutBookStringWithCharacterLimit:(unint64_t)limit;
- (id)previewAssetCoverFuture;
- (id)previewAssetCoverItemProvider;
- (id)userPublishing:(id)publishing storeShortURLForStoreId:(id)id;
- (id)userPublishing:(id)publishing storeURLForStoreId:(id)id;
- (int64_t)assetType;
@end

@implementation AEAssetActivityPropertyProvider

- (AEAssetActivityPropertyProvider)initWithPropertySource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = AEAssetActivityPropertyProvider;
  v5 = [(AEAssetActivityPropertyProvider *)&v9 init];
  if (v5)
  {
    v6 = [sourceCopy copy];
    propertySource = v5->_propertySource;
    v5->_propertySource = v6;
  }

  return v5;
}

- (NSString)assetID
{
  assetID = self->_assetID;
  if (!assetID)
  {
    propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
    activityType = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyAssetId);
    v7 = self->_assetID;
    self->_assetID = v6;

    assetID = self->_assetID;
    if (!assetID)
    {
      storeID = [(AEAssetActivityPropertyProvider *)self storeID];
      v9 = self->_assetID;
      self->_assetID = storeID;

      assetID = self->_assetID;
    }
  }

  return assetID;
}

- (NSString)storeID
{
  storeID = self->_storeID;
  if (!storeID)
  {
    propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
    activityType = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyStoreId);
    v7 = self->_storeID;
    self->_storeID = v6;

    storeID = self->_storeID;
  }

  return storeID;
}

- (NSString)readingDirection
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyLanguage);

  if ([NSLocale characterDirectionForLanguage:v5]== &dword_0 + 2)
  {
    v6 = @"rtl";
  }

  else
  {
    v6 = @"auto";
  }

  v7 = v6;

  return &v6->isa;
}

- (NSURL)storeURL
{
  storeURL = self->_storeURL;
  if (!storeURL)
  {
    propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
    activityType = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyStoreUrl);
    v7 = self->_storeURL;
    self->_storeURL = v6;

    storeURL = self->_storeURL;
  }

  return storeURL;
}

- (NSURL)storeShortURL
{
  storeShortURL = self->_storeShortURL;
  if (!storeShortURL)
  {
    propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
    activityType = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyStoreShortUrl);
    v7 = self->_storeShortURL;
    self->_storeShortURL = v6;

    storeShortURL = self->_storeShortURL;
  }

  return storeShortURL;
}

- (NSURL)storeURLPreferShort
{
  storeShortURL = [(AEAssetActivityPropertyProvider *)self storeShortURL];
  v4 = storeShortURL;
  if (storeShortURL)
  {
    storeURL = storeShortURL;
  }

  else
  {
    storeURL = [(AEAssetActivityPropertyProvider *)self storeURL];
  }

  v6 = storeURL;

  return v6;
}

- (NSURL)bookURL
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyBookPath);

  if (v5)
  {
    v6 = [NSURL fileURLWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)epubID
{
  epubID = self->_epubID;
  if (!epubID)
  {
    propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
    activityType = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyEpubId);
    v7 = self->_epubID;
    self->_epubID = v6;

    epubID = self->_epubID;
  }

  return epubID;
}

- (UIImage)assetCover
{
  assetCover = self->_assetCover;
  if (!assetCover)
  {
    propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
    activityType = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyAssetCover);
    v7 = self->_assetCover;
    self->_assetCover = v6;

    assetCover = self->_assetCover;
  }

  return assetCover;
}

- (NSString)title
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyTitle);

  return v5;
}

- (NSString)author
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyAuthor);

  return v5;
}

- (NSString)publisherLocation
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyPublisherLocation);

  return v5;
}

- (NSString)publisherName
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyPublisherName);

  return v5;
}

- (NSString)publisherYear
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyPublisherYear);

  return v5;
}

- (NSString)genre
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyGenre);

  return v5;
}

- (BOOL)contentProtected
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyIsContentProtected);
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (NSString)assetTypeString
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyAssetType);

  lastPathComponent = [v5 lastPathComponent];

  return lastPathComponent;
}

- (int64_t)assetType
{
  assetTypeString = [(AEAssetActivityPropertyProvider *)self assetTypeString];
  v3 = BCAssetContentTypeFromAssetTypeString(assetTypeString);

  return v3;
}

- (BOOL)isOwned
{
  objc_opt_class();
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyIsOwned);
  v6 = BUDynamicCast();

  LOBYTE(activityType) = [v6 BOOLValue];
  return activityType;
}

- (BOOL)isStoreAsset
{
  storeID = [(AEAssetActivityPropertyProvider *)self storeID];
  v3 = [storeID longLongValue] != 0;

  return v3;
}

- (NSString)bookDescription
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyBookDescription);

  return v5;
}

- (NSString)seriesTitle
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertySeriesTitle);

  return v5;
}

- (NSString)version
{
  propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyVersion);

  return v5;
}

- (id)checkOutBookStringWithCharacterLimit:(unint64_t)limit
{
  assetType = [(AEAssetActivityPropertyProvider *)self assetType];
  isStoreAsset = [(AEAssetActivityPropertyProvider *)self isStoreAsset];
  v7 = IMCommonCoreBundle();
  v8 = v7;
  v9 = @"Check out this book on Apple Books:";
  if (assetType == 6)
  {
    v9 = @"Check out this audiobook on Apple Books:";
  }

  v10 = @"Check out this audiobook:";
  if (assetType != 6)
  {
    v10 = @"Check out this book:";
  }

  if (isStoreAsset)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v7 localizedStringForKey:v11 value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v13 = IMCommonCoreBundle();
  v14 = [v13 localizedStringForKey:@"\\U201C%@\\U201D by %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  title = [(AEAssetActivityPropertyProvider *)self title];
  author = [(AEAssetActivityPropertyProvider *)self author];
  v17 = [NSString stringWithFormat:v14, title, author];

  v18 = [NSString stringWithFormat:@"%@ %@", v12, v17];
  if ([v18 length] > limit)
  {
    title2 = [(AEAssetActivityPropertyProvider *)self title];
    v20 = [NSString stringWithFormat:@"%@ %@", v12, title2];

    v18 = v20;
  }

  if ([v18 length] > limit)
  {
    title3 = [(AEAssetActivityPropertyProvider *)self title];

    v18 = title3;
  }

  if ([v18 length] > limit)
  {
    title4 = [(AEAssetActivityPropertyProvider *)self title];
    v23 = IMCommonCoreBundle();
    v24 = [v23 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v25 = [title4 stringByTruncatingToLength:limit options:3 truncationString:v24];

    v18 = v25;
  }

  return v18;
}

- (id)previewAssetCoverItemProvider
{
  previewAssetCoverFuture = [(AEAssetActivityPropertyProvider *)self previewAssetCoverFuture];

  if (previewAssetCoverFuture)
  {
    previewAssetCoverFuture = objc_alloc_init(NSItemProvider);
    identifier = [UTTypePNG identifier];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_7D7E8;
    v6[3] = &unk_2CB178;
    v6[4] = self;
    [previewAssetCoverFuture registerItemForTypeIdentifier:identifier loadHandler:v6];
  }

  return previewAssetCoverFuture;
}

- (id)previewAssetCoverFuture
{
  previewAssetCoverFuture = self->_previewAssetCoverFuture;
  if (!previewAssetCoverFuture)
  {
    propertySource = [(AEAssetActivityPropertyProvider *)self propertySource];
    activityType = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (propertySource)[2](propertySource, activityType, AEAssetActivityItemProviderPropertyPreviewAssetCoverFuture);
    v7 = self->_previewAssetCoverFuture;
    self->_previewAssetCoverFuture = v6;

    previewAssetCoverFuture = self->_previewAssetCoverFuture;
  }

  return previewAssetCoverFuture;
}

- (id)userPublishing:(id)publishing storeURLForStoreId:(id)id
{
  v5 = [(AEAssetActivityPropertyProvider *)self propertySource:publishing];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v7 = (v5)[2](v5, activityType, AEAssetActivityItemProviderPropertyStoreUrl);

  return v7;
}

- (id)userPublishing:(id)publishing storeShortURLForStoreId:(id)id
{
  v5 = [(AEAssetActivityPropertyProvider *)self propertySource:publishing];
  activityType = [(AEAssetActivityPropertyProvider *)self activityType];
  v7 = (v5)[2](v5, activityType, AEAssetActivityItemProviderPropertyStoreShortUrl);

  return v7;
}

@end