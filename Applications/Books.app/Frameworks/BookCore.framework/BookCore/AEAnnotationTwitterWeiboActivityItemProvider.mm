@interface AEAnnotationTwitterWeiboActivityItemProvider
- (id)expandedItemProviders;
- (id)supportedActivityTypes;
- (id)text;
- (unint64_t)characterLimit;
@end

@implementation AEAnnotationTwitterWeiboActivityItemProvider

- (id)supportedActivityTypes
{
  v4[0] = UIActivityTypePostToTwitter;
  v4[1] = UIActivityTypePostToWeibo;
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (unint64_t)characterLimit
{
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  isStoreAsset = [propertyProvider isStoreAsset];

  if (!isStoreAsset)
  {
    return 138;
  }

  propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  storeShortURL = [propertyProvider2 storeShortURL];
  if (storeShortURL)
  {
    propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    storeShortURL2 = [propertyProvider3 storeShortURL];
    absoluteString = [storeShortURL2 absoluteString];
  }

  else
  {
    absoluteString = &stru_2D2930;
  }

  v11 = IMCommonCoreBundle();
  v12 = [v11 localizedStringForKey:@"%@ %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v13 = [[NSString alloc] initWithFormat:v12, &stru_2D2930, absoluteString];
  v14 = [v13 length];
  v15 = [(__CFString *)absoluteString length];
  v16 = 138;
  if (!v15)
  {
    v16 = 113;
  }

  v10 = v16 - v14;

  return v10;
}

- (id)text
{
  v15.receiver = self;
  v15.super_class = AEAnnotationTwitterWeiboActivityItemProvider;
  text = [(AEAnnotationSocialActivityItemProvider *)&v15 text];
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  isStoreAsset = [propertyProvider isStoreAsset];

  if (isStoreAsset)
  {
    propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    storeShortURL = [propertyProvider2 storeShortURL];
    if (storeShortURL)
    {
      propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      storeShortURL2 = [propertyProvider3 storeShortURL];
      absoluteString = [storeShortURL2 absoluteString];
    }

    else
    {
      absoluteString = &stru_2D2930;
    }

    v11 = IMCommonCoreBundle();
    v12 = [v11 localizedStringForKey:@"%@ %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

    v13 = [NSString stringWithFormat:v12, text, absoluteString];

    text = v13;
  }

  return text;
}

- (id)expandedItemProviders
{
  supportedActivityTypes = [(AEAnnotationTwitterWeiboActivityItemProvider *)self supportedActivityTypes];
  v4 = +[NSMutableArray array];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_2A24C;
  v13[3] = &unk_2C8C28;
  v13[4] = self;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_2A254;
  v12[3] = &unk_2C8C50;
  v12[4] = self;
  v5 = [[IMBlockActivityItemPlusThumbnailProvider alloc] initWithUTI:@"public.plain-text" resolutionBlock:v13 thumbnailResolutionBlock:v12];
  [(IMBlockActivityItemProvider *)v5 setSupportedActivityTypes:supportedActivityTypes];
  [v4 addObject:v5];
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  isStoreAsset = [propertyProvider isStoreAsset];

  if (isStoreAsset)
  {
    v10[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_2A2A4;
    v11[3] = &unk_2C8C28;
    v11[4] = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_2A330;
    v10[3] = &unk_2C8C50;
    v8 = [[IMBlockActivityItemPlusThumbnailProvider alloc] initWithUTI:@"public.url" resolutionBlock:v11 thumbnailResolutionBlock:v10];
    [(IMBlockActivityItemProvider *)v8 setSupportedActivityTypes:supportedActivityTypes];
    [v4 addObject:v8];
  }

  return v4;
}

@end