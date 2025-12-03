@interface AEAnnotationFacebookActivityItemProvider
- (id)expandedItemProviders;
- (id)supportedActivityTypes;
@end

@implementation AEAnnotationFacebookActivityItemProvider

- (id)supportedActivityTypes
{
  v4 = UIActivityTypePostToFacebook;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)expandedItemProviders
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_29A68;
  v18[3] = &unk_2C8C28;
  v18[4] = self;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_29AC0;
  v17[3] = &unk_2C8C50;
  v17[4] = self;
  v4 = [[IMBlockActivityItemPlusThumbnailProvider alloc] initWithUTI:@"public.plain-text" resolutionBlock:v18 thumbnailResolutionBlock:v17];
  supportedActivityTypes = [(AEAnnotationFacebookActivityItemProvider *)self supportedActivityTypes];
  [(IMBlockActivityItemProvider *)v4 setSupportedActivityTypes:supportedActivityTypes];

  [v3 addObject:v4];
  v15[4] = self;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_29B10;
  v16[3] = &unk_2C8C28;
  v16[4] = self;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_29C20;
  v15[3] = &unk_2C8C50;
  v6 = [[IMBlockActivityItemPlusThumbnailProvider alloc] initWithUTI:@"public.html" resolutionBlock:v16 thumbnailResolutionBlock:v15];
  supportedActivityTypes2 = [(AEAnnotationFacebookActivityItemProvider *)self supportedActivityTypes];
  [(IMBlockActivityItemProvider *)v6 setSupportedActivityTypes:supportedActivityTypes2];

  [v3 addObject:v6];
  propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
  isStoreAsset = [propertyProvider isStoreAsset];

  if (isStoreAsset)
  {
    v13[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_29C70;
    v14[3] = &unk_2C8C28;
    v14[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_29CC0;
    v13[3] = &unk_2C8C50;
    v10 = [[IMBlockActivityItemPlusThumbnailProvider alloc] initWithUTI:@"public.url" resolutionBlock:v14 thumbnailResolutionBlock:v13];
    supportedActivityTypes3 = [(AEAnnotationFacebookActivityItemProvider *)self supportedActivityTypes];
    [(IMBlockActivityItemProvider *)v10 setSupportedActivityTypes:supportedActivityTypes3];

    [v3 addObject:v10];
  }

  return v3;
}

@end