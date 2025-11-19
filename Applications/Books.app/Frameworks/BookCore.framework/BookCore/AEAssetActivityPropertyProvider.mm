@interface AEAssetActivityPropertyProvider
- (AEAssetActivityPropertyProvider)initWithPropertySource:(id)a3;
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
- (id)checkOutBookStringWithCharacterLimit:(unint64_t)a3;
- (id)previewAssetCoverFuture;
- (id)previewAssetCoverItemProvider;
- (id)userPublishing:(id)a3 storeShortURLForStoreId:(id)a4;
- (id)userPublishing:(id)a3 storeURLForStoreId:(id)a4;
- (int64_t)assetType;
@end

@implementation AEAssetActivityPropertyProvider

- (AEAssetActivityPropertyProvider)initWithPropertySource:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AEAssetActivityPropertyProvider;
  v5 = [(AEAssetActivityPropertyProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
    v4 = [(AEAssetActivityPropertyProvider *)self propertySource];
    v5 = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (v4)[2](v4, v5, AEAssetActivityItemProviderPropertyAssetId);
    v7 = self->_assetID;
    self->_assetID = v6;

    assetID = self->_assetID;
    if (!assetID)
    {
      v8 = [(AEAssetActivityPropertyProvider *)self storeID];
      v9 = self->_assetID;
      self->_assetID = v8;

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
    v4 = [(AEAssetActivityPropertyProvider *)self propertySource];
    v5 = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (v4)[2](v4, v5, AEAssetActivityItemProviderPropertyStoreId);
    v7 = self->_storeID;
    self->_storeID = v6;

    storeID = self->_storeID;
  }

  return storeID;
}

- (NSString)readingDirection
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyLanguage);

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
    v4 = [(AEAssetActivityPropertyProvider *)self propertySource];
    v5 = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (v4)[2](v4, v5, AEAssetActivityItemProviderPropertyStoreUrl);
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
    v4 = [(AEAssetActivityPropertyProvider *)self propertySource];
    v5 = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (v4)[2](v4, v5, AEAssetActivityItemProviderPropertyStoreShortUrl);
    v7 = self->_storeShortURL;
    self->_storeShortURL = v6;

    storeShortURL = self->_storeShortURL;
  }

  return storeShortURL;
}

- (NSURL)storeURLPreferShort
{
  v3 = [(AEAssetActivityPropertyProvider *)self storeShortURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(AEAssetActivityPropertyProvider *)self storeURL];
  }

  v6 = v5;

  return v6;
}

- (NSURL)bookURL
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyBookPath);

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
    v4 = [(AEAssetActivityPropertyProvider *)self propertySource];
    v5 = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (v4)[2](v4, v5, AEAssetActivityItemProviderPropertyEpubId);
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
    v4 = [(AEAssetActivityPropertyProvider *)self propertySource];
    v5 = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (v4)[2](v4, v5, AEAssetActivityItemProviderPropertyAssetCover);
    v7 = self->_assetCover;
    self->_assetCover = v6;

    assetCover = self->_assetCover;
  }

  return assetCover;
}

- (NSString)title
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyTitle);

  return v5;
}

- (NSString)author
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyAuthor);

  return v5;
}

- (NSString)publisherLocation
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyPublisherLocation);

  return v5;
}

- (NSString)publisherName
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyPublisherName);

  return v5;
}

- (NSString)publisherYear
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyPublisherYear);

  return v5;
}

- (NSString)genre
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyGenre);

  return v5;
}

- (BOOL)contentProtected
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyIsContentProtected);
  v6 = [v5 BOOLValue];

  return v6;
}

- (NSString)assetTypeString
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyAssetType);

  v6 = [v5 lastPathComponent];

  return v6;
}

- (int64_t)assetType
{
  v2 = [(AEAssetActivityPropertyProvider *)self assetTypeString];
  v3 = BCAssetContentTypeFromAssetTypeString(v2);

  return v3;
}

- (BOOL)isOwned
{
  objc_opt_class();
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyIsOwned);
  v6 = BUDynamicCast();

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (BOOL)isStoreAsset
{
  v2 = [(AEAssetActivityPropertyProvider *)self storeID];
  v3 = [v2 longLongValue] != 0;

  return v3;
}

- (NSString)bookDescription
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyBookDescription);

  return v5;
}

- (NSString)seriesTitle
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertySeriesTitle);

  return v5;
}

- (NSString)version
{
  v3 = [(AEAssetActivityPropertyProvider *)self propertySource];
  v4 = [(AEAssetActivityPropertyProvider *)self activityType];
  v5 = (v3)[2](v3, v4, AEAssetActivityItemProviderPropertyVersion);

  return v5;
}

- (id)checkOutBookStringWithCharacterLimit:(unint64_t)a3
{
  v5 = [(AEAssetActivityPropertyProvider *)self assetType];
  v6 = [(AEAssetActivityPropertyProvider *)self isStoreAsset];
  v7 = IMCommonCoreBundle();
  v8 = v7;
  v9 = @"Check out this book on Apple Books:";
  if (v5 == 6)
  {
    v9 = @"Check out this audiobook on Apple Books:";
  }

  v10 = @"Check out this audiobook:";
  if (v5 != 6)
  {
    v10 = @"Check out this book:";
  }

  if (v6)
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
  v15 = [(AEAssetActivityPropertyProvider *)self title];
  v16 = [(AEAssetActivityPropertyProvider *)self author];
  v17 = [NSString stringWithFormat:v14, v15, v16];

  v18 = [NSString stringWithFormat:@"%@ %@", v12, v17];
  if ([v18 length] > a3)
  {
    v19 = [(AEAssetActivityPropertyProvider *)self title];
    v20 = [NSString stringWithFormat:@"%@ %@", v12, v19];

    v18 = v20;
  }

  if ([v18 length] > a3)
  {
    v21 = [(AEAssetActivityPropertyProvider *)self title];

    v18 = v21;
  }

  if ([v18 length] > a3)
  {
    v22 = [(AEAssetActivityPropertyProvider *)self title];
    v23 = IMCommonCoreBundle();
    v24 = [v23 localizedStringForKey:@"\\U2026" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v25 = [v22 stringByTruncatingToLength:a3 options:3 truncationString:v24];

    v18 = v25;
  }

  return v18;
}

- (id)previewAssetCoverItemProvider
{
  v3 = [(AEAssetActivityPropertyProvider *)self previewAssetCoverFuture];

  if (v3)
  {
    v3 = objc_alloc_init(NSItemProvider);
    v4 = [UTTypePNG identifier];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_7D7E8;
    v6[3] = &unk_2CB178;
    v6[4] = self;
    [v3 registerItemForTypeIdentifier:v4 loadHandler:v6];
  }

  return v3;
}

- (id)previewAssetCoverFuture
{
  previewAssetCoverFuture = self->_previewAssetCoverFuture;
  if (!previewAssetCoverFuture)
  {
    v4 = [(AEAssetActivityPropertyProvider *)self propertySource];
    v5 = [(AEAssetActivityPropertyProvider *)self activityType];
    v6 = (v4)[2](v4, v5, AEAssetActivityItemProviderPropertyPreviewAssetCoverFuture);
    v7 = self->_previewAssetCoverFuture;
    self->_previewAssetCoverFuture = v6;

    previewAssetCoverFuture = self->_previewAssetCoverFuture;
  }

  return previewAssetCoverFuture;
}

- (id)userPublishing:(id)a3 storeURLForStoreId:(id)a4
{
  v5 = [(AEAssetActivityPropertyProvider *)self propertySource:a3];
  v6 = [(AEAssetActivityPropertyProvider *)self activityType];
  v7 = (v5)[2](v5, v6, AEAssetActivityItemProviderPropertyStoreUrl);

  return v7;
}

- (id)userPublishing:(id)a3 storeShortURLForStoreId:(id)a4
{
  v5 = [(AEAssetActivityPropertyProvider *)self propertySource:a3];
  v6 = [(AEAssetActivityPropertyProvider *)self activityType];
  v7 = (v5)[2](v5, v6, AEAssetActivityItemProviderPropertyStoreShortUrl);

  return v7;
}

@end