@interface CuratedCollectionResolverInfo
- (CuratedCollectionResolverInfo)initWithCollectionItems:(id)items mediaIntegration:(id)integration mediaIntegrationCollectionItemIndex:(int64_t)index mediaIntegrationPosition:(unint64_t)position thirdPartyLinks:(id)links;
@end

@implementation CuratedCollectionResolverInfo

- (CuratedCollectionResolverInfo)initWithCollectionItems:(id)items mediaIntegration:(id)integration mediaIntegrationCollectionItemIndex:(int64_t)index mediaIntegrationPosition:(unint64_t)position thirdPartyLinks:(id)links
{
  itemsCopy = items;
  integrationCopy = integration;
  linksCopy = links;
  v21.receiver = self;
  v21.super_class = CuratedCollectionResolverInfo;
  v15 = [(CuratedCollectionResolverInfo *)&v21 init];
  if (v15)
  {
    v16 = [itemsCopy copy];
    collectionItems = v15->_collectionItems;
    v15->_collectionItems = v16;

    objc_storeStrong(&v15->_mediaIntegration, integration);
    v15->_mediaIntegrationPosition = position;
    v15->_mediaIntegrationCollectionItemIndex = index;
    v18 = [linksCopy copy];
    thirdPartyLinks = v15->_thirdPartyLinks;
    v15->_thirdPartyLinks = v18;
  }

  return v15;
}

@end