@interface CuratedCollectionResolvedThirdPartyLink
- (CuratedCollectionResolvedThirdPartyLink)initWithAdamID:(id)a3 appName:(id)a4 appIconURL:(id)a5 url:(id)a6;
@end

@implementation CuratedCollectionResolvedThirdPartyLink

- (CuratedCollectionResolvedThirdPartyLink)initWithAdamID:(id)a3 appName:(id)a4 appIconURL:(id)a5 url:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = CuratedCollectionResolvedThirdPartyLink;
  v14 = [(CuratedCollectionResolvedThirdPartyLink *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    adamID = v14->_adamID;
    v14->_adamID = v15;

    v17 = [v11 copy];
    appName = v14->_appName;
    v14->_appName = v17;

    objc_storeStrong(&v14->_appIconURL, a5);
    objc_storeStrong(&v14->_url, a6);
  }

  return v14;
}

@end