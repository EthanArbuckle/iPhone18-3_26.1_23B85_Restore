@interface CuratedCollectionResolverInfo
- (CuratedCollectionResolverInfo)initWithCollectionItems:(id)a3 mediaIntegration:(id)a4 mediaIntegrationCollectionItemIndex:(int64_t)a5 mediaIntegrationPosition:(unint64_t)a6 thirdPartyLinks:(id)a7;
@end

@implementation CuratedCollectionResolverInfo

- (CuratedCollectionResolverInfo)initWithCollectionItems:(id)a3 mediaIntegration:(id)a4 mediaIntegrationCollectionItemIndex:(int64_t)a5 mediaIntegrationPosition:(unint64_t)a6 thirdPartyLinks:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v21.receiver = self;
  v21.super_class = CuratedCollectionResolverInfo;
  v15 = [(CuratedCollectionResolverInfo *)&v21 init];
  if (v15)
  {
    v16 = [v12 copy];
    collectionItems = v15->_collectionItems;
    v15->_collectionItems = v16;

    objc_storeStrong(&v15->_mediaIntegration, a4);
    v15->_mediaIntegrationPosition = a6;
    v15->_mediaIntegrationCollectionItemIndex = a5;
    v18 = [v14 copy];
    thirdPartyLinks = v15->_thirdPartyLinks;
    v15->_thirdPartyLinks = v18;
  }

  return v15;
}

@end