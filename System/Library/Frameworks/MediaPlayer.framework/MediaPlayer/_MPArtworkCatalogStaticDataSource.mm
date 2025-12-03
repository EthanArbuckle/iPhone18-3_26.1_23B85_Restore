@interface _MPArtworkCatalogStaticDataSource
+ (id)sharedDataSource;
- (BOOL)areRepresentationsOfKind:(int64_t)kind availableForCatalog:(id)catalog;
- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog;
- (id)existingRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog;
- (id)visualIdenticalityIdentifierForCatalog:(id)catalog;
- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler;
- (void)loadRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog completionHandler:(id)handler;
@end

@implementation _MPArtworkCatalogStaticDataSource

- (void)loadRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = [(_MPArtworkCatalogStaticDataSource *)self existingRepresentationOfKind:kind forArtworkCatalog:catalog];
  (*(handler + 2))(handlerCopy, v10, 0);
}

- (id)existingRepresentationOfKind:(int64_t)kind forArtworkCatalog:(id)catalog
{
  token = [catalog token];
  v6 = token;
  if (kind == 1)
  {
    videoRepresentation = [token videoRepresentation];
    goto LABEL_5;
  }

  if (!kind)
  {
    videoRepresentation = [token imageRepresentation];
LABEL_5:
    v8 = videoRepresentation;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)areRepresentationsOfKind:(int64_t)kind availableForCatalog:(id)catalog
{
  token = [catalog token];
  v6 = token;
  if (kind == 1)
  {
    videoRepresentation = [token videoRepresentation];
  }

  else
  {
    if (kind)
    {
      v8 = 0;
      goto LABEL_7;
    }

    videoRepresentation = [token imageRepresentation];
  }

  v8 = videoRepresentation != 0;

LABEL_7:
  return v8;
}

- (id)visualIdenticalityIdentifierForCatalog:(id)catalog
{
  token = [catalog token];
  v4 = objc_alloc_init(_MPStaticArtworkVisualIdenticalityIdentifier);
  v5 = MEMORY[0x1E696AEC0];
  imageRepresentation = [token imageRepresentation];
  image = [imageRepresentation image];
  v8 = [v5 stringWithFormat:@"%lx", image];
  [(_MPStaticArtworkVisualIdenticalityIdentifier *)v4 setImageArtworkIdentifier:v8];

  videoRepresentation = [token videoRepresentation];
  video = [videoRepresentation video];

  v11 = MEMORY[0x1E696AEC0];
  if (video)
  {
    videoRepresentation2 = [video URL];
    [videoRepresentation2 absoluteString];
  }

  else
  {
    videoRepresentation2 = [token videoRepresentation];
    [videoRepresentation2 video];
  }
  v13 = ;
  v14 = [v11 stringWithFormat:@"%@", v13];
  [(_MPStaticArtworkVisualIdenticalityIdentifier *)v4 setVideoArtworkIdentifier:v14];

  return v4;
}

- (void)loadRepresentationForArtworkCatalog:(id)catalog completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = [(_MPArtworkCatalogStaticDataSource *)self existingRepresentationForArtworkCatalog:catalog];
  (*(handler + 2))(handlerCopy, v8, 0);
}

- (BOOL)isRepresentation:(id)representation bestRepresentationForArtworkCatalog:(id)catalog
{
  representationCopy = representation;
  token = [catalog token];
  kind = [representationCopy kind];
  if (kind == 1)
  {
    video = [representationCopy video];
    videoRepresentation = [token videoRepresentation];
    video2 = [videoRepresentation video];
  }

  else
  {
    if (kind)
    {
      v11 = 0;
      goto LABEL_7;
    }

    video = [representationCopy image];
    videoRepresentation = [token imageRepresentation];
    video2 = [videoRepresentation image];
  }

  v11 = video == video2;

LABEL_7:
  return v11;
}

+ (id)sharedDataSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___MPArtworkCatalogStaticDataSource_sharedDataSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDataSource_onceToken_495 != -1)
  {
    dispatch_once(&sharedDataSource_onceToken_495, block);
  }

  v2 = sharedDataSource___dataSource_494;

  return v2;
}

@end