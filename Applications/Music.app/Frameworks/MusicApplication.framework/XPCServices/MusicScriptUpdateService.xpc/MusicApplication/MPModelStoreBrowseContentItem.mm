@interface MPModelStoreBrowseContentItem
- (MPModelObject)innermostModelObject;
@end

@implementation MPModelStoreBrowseContentItem

- (MPModelObject)innermostModelObject
{
  v2 = self;
  v3 = [(MPModelStoreBrowseContentItem *)v2 innerObject];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 innermostModelObject];

    v2 = v5;
  }

  return v2;
}

@end