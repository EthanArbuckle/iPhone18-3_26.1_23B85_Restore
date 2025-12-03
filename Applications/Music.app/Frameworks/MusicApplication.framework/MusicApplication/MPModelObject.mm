@interface MPModelObject
- (NSString)musicTypeIdentifier;
- (NSString)shortDescription;
- (double)preferredArtworkAspectRatio;
- (id)libraryNavigationHandlerWithSourceViewController:(int)controller defaultSelectionHandler:(void *)aBlock;
- (id)pickableObjectFor:(int64_t)for;
- (void)loadLibraryRequestedProperties:(id)properties completionHandler:(id)handler;
@end

@implementation MPModelObject

- (id)pickableObjectFor:(int64_t)for
{
  selfCopy = self;
  innermostModelObject = [(MPModelObject *)selfCopy innermostModelObject];

  if (innermostModelObject == selfCopy)
  {
    v7 = 0;
  }

  else
  {
    innermostModelObject2 = [(MPModelObject *)selfCopy innermostModelObject];
    v7 = [(MPModelObject *)innermostModelObject2 pickableObjectFor:for];

    selfCopy = innermostModelObject2;
  }

  return v7;
}

- (NSString)musicTypeIdentifier
{
  selfCopy = self;
  v3 = [(MPModelObject *)selfCopy pickableObjectFor:0];
  if (v3)
  {
    v4 = v3;
    musicTypeIdentifier = [v3 musicTypeIdentifier];
    if (musicTypeIdentifier)
    {
      v6 = musicTypeIdentifier;
      sub_AB92A0();

      v7 = sub_AB9260();

      v8 = v7;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (id)libraryNavigationHandlerWithSourceViewController:(int)controller defaultSelectionHandler:(void *)aBlock
{
  v4 = _Block_copy(aBlock);
  _Block_release(v4);

  return 0;
}

- (void)loadLibraryRequestedProperties:(id)properties completionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  (*(v4 + 2))(v4, 0, 0);

  _Block_release(v4);
}

- (double)preferredArtworkAspectRatio
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      return 1.0;
    }
  }

  [v2 preferredArtworkAspectRatio];
  return result;
}

- (NSString)shortDescription
{
  v2 = sub_AB9260();

  return v2;
}

@end