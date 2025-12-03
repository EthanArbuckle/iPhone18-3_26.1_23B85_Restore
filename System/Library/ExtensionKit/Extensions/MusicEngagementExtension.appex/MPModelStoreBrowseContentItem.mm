@interface MPModelStoreBrowseContentItem
- (MPModelObject)innermostModelObject;
@end

@implementation MPModelStoreBrowseContentItem

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