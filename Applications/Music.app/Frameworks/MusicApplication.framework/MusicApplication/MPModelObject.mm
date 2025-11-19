@interface MPModelObject
- (NSString)musicTypeIdentifier;
- (NSString)shortDescription;
- (double)preferredArtworkAspectRatio;
- (id)libraryNavigationHandlerWithSourceViewController:(int)a3 defaultSelectionHandler:(void *)aBlock;
- (id)pickableObjectFor:(int64_t)a3;
- (void)loadLibraryRequestedProperties:(id)a3 completionHandler:(id)a4;
@end

@implementation MPModelObject

- (id)pickableObjectFor:(int64_t)a3
{
  v4 = self;
  v5 = [(MPModelObject *)v4 innermostModelObject];

  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(MPModelObject *)v4 innermostModelObject];
    v7 = [(MPModelObject *)v6 pickableObjectFor:a3];

    v4 = v6;
  }

  return v7;
}

- (NSString)musicTypeIdentifier
{
  v2 = self;
  v3 = [(MPModelObject *)v2 pickableObjectFor:0];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 musicTypeIdentifier];
    if (v5)
    {
      v6 = v5;
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

- (id)libraryNavigationHandlerWithSourceViewController:(int)a3 defaultSelectionHandler:(void *)aBlock
{
  v4 = _Block_copy(aBlock);
  _Block_release(v4);

  return 0;
}

- (void)loadLibraryRequestedProperties:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
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