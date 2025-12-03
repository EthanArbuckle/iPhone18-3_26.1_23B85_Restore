@interface MPModelStoreBrowseResponse
- (BOOL)hasAdditionalContentItems;
@end

@implementation MPModelStoreBrowseResponse

- (BOOL)hasAdditionalContentItems
{
  allAdditionalContentIdentifiersNeedingLookup = [(MPModelStoreBrowseResponseParser *)self->_parser allAdditionalContentIdentifiersNeedingLookup];
  v3 = [allAdditionalContentIdentifiersNeedingLookup count] != 0;

  return v3;
}

@end