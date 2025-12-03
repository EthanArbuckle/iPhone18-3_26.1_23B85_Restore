@interface CuratedCollectionResolvedThirdPartyLink
- (CuratedCollectionResolvedThirdPartyLink)initWithAdamID:(id)d appName:(id)name appIconURL:(id)l url:(id)url;
@end

@implementation CuratedCollectionResolvedThirdPartyLink

- (CuratedCollectionResolvedThirdPartyLink)initWithAdamID:(id)d appName:(id)name appIconURL:(id)l url:(id)url
{
  dCopy = d;
  nameCopy = name;
  lCopy = l;
  urlCopy = url;
  v20.receiver = self;
  v20.super_class = CuratedCollectionResolvedThirdPartyLink;
  v14 = [(CuratedCollectionResolvedThirdPartyLink *)&v20 init];
  if (v14)
  {
    v15 = [dCopy copy];
    adamID = v14->_adamID;
    v14->_adamID = v15;

    v17 = [nameCopy copy];
    appName = v14->_appName;
    v14->_appName = v17;

    objc_storeStrong(&v14->_appIconURL, l);
    objc_storeStrong(&v14->_url, url);
  }

  return v14;
}

@end