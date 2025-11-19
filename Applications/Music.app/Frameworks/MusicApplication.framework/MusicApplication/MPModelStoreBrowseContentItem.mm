@interface MPModelStoreBrowseContentItem
- (MPModelObject)innermostModelObject;
- (id)storeContentItemObject;
- (id)storeContentItemObjectPropertiesFor:(id)a3;
@end

@implementation MPModelStoreBrowseContentItem

- (id)storeContentItemObject
{
  v2 = self;
  v3 = sub_271B9C();

  return v3;
}

- (id)storeContentItemObjectPropertiesFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_271C3C(v4);

  return v6;
}

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