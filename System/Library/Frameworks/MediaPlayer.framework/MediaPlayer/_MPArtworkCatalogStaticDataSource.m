@interface _MPArtworkCatalogStaticDataSource
+ (id)sharedDataSource;
- (BOOL)areRepresentationsOfKind:(int64_t)a3 availableForCatalog:(id)a4;
- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4;
- (id)existingRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4;
- (id)visualIdenticalityIdentifierForCatalog:(id)a3;
- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4;
- (void)loadRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4 completionHandler:(id)a5;
@end

@implementation _MPArtworkCatalogStaticDataSource

- (void)loadRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = [(_MPArtworkCatalogStaticDataSource *)self existingRepresentationOfKind:a3 forArtworkCatalog:a4];
  (*(a5 + 2))(v9, v10, 0);
}

- (id)existingRepresentationOfKind:(int64_t)a3 forArtworkCatalog:(id)a4
{
  v5 = [a4 token];
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 videoRepresentation];
    goto LABEL_5;
  }

  if (!a3)
  {
    v7 = [v5 imageRepresentation];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)areRepresentationsOfKind:(int64_t)a3 availableForCatalog:(id)a4
{
  v5 = [a4 token];
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 videoRepresentation];
  }

  else
  {
    if (a3)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [v5 imageRepresentation];
  }

  v8 = v7 != 0;

LABEL_7:
  return v8;
}

- (id)visualIdenticalityIdentifierForCatalog:(id)a3
{
  v3 = [a3 token];
  v4 = objc_alloc_init(_MPStaticArtworkVisualIdenticalityIdentifier);
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v3 imageRepresentation];
  v7 = [v6 image];
  v8 = [v5 stringWithFormat:@"%lx", v7];
  [(_MPStaticArtworkVisualIdenticalityIdentifier *)v4 setImageArtworkIdentifier:v8];

  v9 = [v3 videoRepresentation];
  v10 = [v9 video];

  v11 = MEMORY[0x1E696AEC0];
  if (v10)
  {
    v12 = [v10 URL];
    [v12 absoluteString];
  }

  else
  {
    v12 = [v3 videoRepresentation];
    [v12 video];
  }
  v13 = ;
  v14 = [v11 stringWithFormat:@"%@", v13];
  [(_MPStaticArtworkVisualIdenticalityIdentifier *)v4 setVideoArtworkIdentifier:v14];

  return v4;
}

- (void)loadRepresentationForArtworkCatalog:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = [(_MPArtworkCatalogStaticDataSource *)self existingRepresentationForArtworkCatalog:a3];
  (*(a4 + 2))(v7, v8, 0);
}

- (BOOL)isRepresentation:(id)a3 bestRepresentationForArtworkCatalog:(id)a4
{
  v5 = a3;
  v6 = [a4 token];
  v7 = [v5 kind];
  if (v7 == 1)
  {
    v8 = [v5 video];
    v9 = [v6 videoRepresentation];
    v10 = [v9 video];
  }

  else
  {
    if (v7)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v8 = [v5 image];
    v9 = [v6 imageRepresentation];
    v10 = [v9 image];
  }

  v11 = v8 == v10;

LABEL_7:
  return v11;
}

+ (id)sharedDataSource
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___MPArtworkCatalogStaticDataSource_sharedDataSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDataSource_onceToken_495 != -1)
  {
    dispatch_once(&sharedDataSource_onceToken_495, block);
  }

  v2 = sharedDataSource___dataSource_494;

  return v2;
}

@end