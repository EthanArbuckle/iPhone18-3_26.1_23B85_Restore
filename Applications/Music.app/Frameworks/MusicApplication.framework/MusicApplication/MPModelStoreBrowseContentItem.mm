@interface MPModelStoreBrowseContentItem
- (MPModelObject)innermostModelObject;
- (id)storeContentItemObject;
- (id)storeContentItemObjectPropertiesFor:(id)for;
@end

@implementation MPModelStoreBrowseContentItem

- (id)storeContentItemObject
{
  selfCopy = self;
  v3 = sub_271B9C();

  return v3;
}

- (id)storeContentItemObjectPropertiesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_271C3C(forCopy);

  return v6;
}

- (MPModelObject)innermostModelObject
{
  selfCopy = self;
  innerObject = [(MPModelStoreBrowseContentItem *)selfCopy innerObject];
  if (innerObject)
  {
    v4 = innerObject;
    innermostModelObject = [innerObject innermostModelObject];

    selfCopy = innermostModelObject;
  }

  return selfCopy;
}

@end