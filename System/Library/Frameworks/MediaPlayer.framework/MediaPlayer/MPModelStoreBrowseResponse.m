@interface MPModelStoreBrowseResponse
- (BOOL)hasAdditionalContentItems;
@end

@implementation MPModelStoreBrowseResponse

- (BOOL)hasAdditionalContentItems
{
  v2 = [(MPModelStoreBrowseResponseParser *)self->_parser allAdditionalContentIdentifiersNeedingLookup];
  v3 = [v2 count] != 0;

  return v3;
}

@end