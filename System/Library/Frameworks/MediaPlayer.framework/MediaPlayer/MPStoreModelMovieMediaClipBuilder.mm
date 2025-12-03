@interface MPStoreModelMovieMediaClipBuilder
+ (id)allSupportedProperties;
- (id)mediaClipWithStoreItemMetadata:(id)metadata storeItemMovieClip:(id)clip;
@end

@implementation MPStoreModelMovieMediaClipBuilder

+ (id)allSupportedProperties
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MPPropertySet alloc];
  v12[0] = @"MPModelPropertyMediaClipPreviewArtwork";
  v12[1] = @"MPModelPropertyMediaClipTitle";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9[0] = @"MPModelPropertyStaticAssetDuration";
  v9[1] = @"MPModelPropertyStaticAssetFlavorType";
  v9[2] = @"MPModelPropertyStaticAssetMediaType";
  v9[3] = @"MPModelPropertyStaticAssetURL";
  v10 = @"MPModelRelationshipMediaClipStaticAssets";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v5 = [MPPropertySet propertySetWithProperties:v4];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [(MPPropertySet *)v2 initWithProperties:v3 relationships:v6];

  return v7;
}

- (id)mediaClipWithStoreItemMetadata:(id)metadata storeItemMovieClip:(id)clip
{
  v48 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  clipCopy = clip;
  p_requestedClipProperties = &self->_requestedClipProperties;
  if ((*&self->_requestedClipProperties & 1) == 0)
  {
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyMediaClipTitle"])
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *p_requestedClipProperties = *p_requestedClipProperties & 0xFD | v10;
    if ([properties containsObject:@"MPModelPropertyMediaClipPreviewArtwork"])
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    *p_requestedClipProperties = *p_requestedClipProperties & 0xFB | v11;
    relationships = [requestedPropertySet relationships];
    v13 = [relationships objectForKey:@"MPModelRelationshipMediaClipStaticAssets"];

    if (v13)
    {
      *&self->_requestedClipProperties.staticAssets |= 1u;
      properties2 = [v13 properties];
      if ([properties2 containsObject:@"MPModelPropertyStaticAssetDuration"])
      {
        v15 = 2;
      }

      else
      {
        v15 = 0;
      }

      *&self->_requestedClipProperties.staticAssets = *&self->_requestedClipProperties.staticAssets & 0xFD | v15;
      if ([properties2 containsObject:@"MPModelPropertyStaticAssetURL"])
      {
        v16 = 16;
      }

      else
      {
        v16 = 0;
      }

      *&self->_requestedClipProperties.staticAssets = *&self->_requestedClipProperties.staticAssets & 0xEF | v16;
      if ([properties2 containsObject:@"MPModelPropertyStaticAssetMediaType"])
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      *&self->_requestedClipProperties.staticAssets = *&self->_requestedClipProperties.staticAssets & 0xF7 | v17;
      if ([properties2 containsObject:@"MPModelPropertyStaticAssetFlavorType"])
      {
        v18 = 4;
      }

      else
      {
        v18 = 0;
      }

      *&self->_requestedClipProperties.staticAssets = *&self->_requestedClipProperties.staticAssets & 0xFB | v18;
    }

    *p_requestedClipProperties |= 1u;
  }

  assets = [clipCopy assets];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = [assets countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v44;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(assets);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        v26 = [v25 url];

        if (v26)
        {
          if (!v22)
          {
            v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(assets, "count")}];
          }

          [v22 addObject:v25];
        }
      }

      v21 = [assets countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v27 = [v22 sortedArrayUsingComparator:&__block_literal_global_44917];
  firstObject = [v27 firstObject];
  v29 = [firstObject url];
  absoluteString = [v29 absoluteString];

  if (absoluteString)
  {
    v31 = [MPModelMediaClip alloc];
    v32 = [MPIdentifierSet alloc];
    v33 = +[MPModelMediaClipKind identityKind];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_2;
    v41[3] = &unk_1E7680B28;
    v42 = absoluteString;
    v34 = [(MPIdentifierSet *)v32 initWithSource:@"StorePlatform" modelKind:v33 block:v41];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_4;
    v38[3] = &unk_1E767E920;
    v38[4] = self;
    v39 = clipCopy;
    v40 = v27;
    v35 = [(MPModelObject *)v31 initWithIdentifiers:v34 block:v38];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

void __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_3;
  v3[3] = &unk_1E767FAA0;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_4(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  if ((v5 & 2) != 0)
  {
    v6 = [*(a1 + 40) title];
    [v3 setTitle:v6];

    v4 = *(a1 + 32);
    v5 = *(v4 + 24);
  }

  if ((v5 & 4) != 0)
  {
    v7 = [*(a1 + 40) previewArtworkRequestToken];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_5;
    v32[3] = &unk_1E767E8D0;
    v33 = v7;
    v8 = v7;
    [v3 setPreviewArtworkCatalogBlock:v32];

    v4 = *(a1 + 32);
  }

  if (*(v4 + 28))
  {
    v23 = v3;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(a1 + 48);
    v9 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = a1;
      v12 = 0;
      v13 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [v15 url];
          v17 = [v16 absoluteString];

          if (v17)
          {
            v18 = [MPModelStaticAsset alloc];
            v19 = [MPIdentifierSet alloc];
            v20 = +[MPModelStaticAssetKind identityKind];
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_6;
            v26[3] = &unk_1E7680B28;
            v27 = v17;
            v21 = [(MPIdentifierSet *)v19 initWithSource:@"StorePlatform" modelKind:v20 block:v26];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_8;
            v25[3] = &unk_1E767E8F8;
            v25[4] = *(v11 + 32);
            v25[5] = v15;
            v22 = [(MPModelObject *)v18 initWithIdentifiers:v21 block:v25];

            if (!v12)
            {
              v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(v11 + 48), "count")}];
            }

            [v12 addObject:v22];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0;
    }

    v3 = v23;
    [v23 setStaticAssets:v12];
  }
}

MPArtworkCatalog *__87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MPArtworkCatalog alloc];
    v3 = [*(a1 + 32) copy];
    v4 = +[MPStoreArtworkDataSource sharedStoreArtworkDataSource];
    v5 = [(MPArtworkCatalog *)v2 initWithToken:v3 dataSource:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_6(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_7;
  v3[3] = &unk_1E767FAA0;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke_8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(*(a1 + 32) + 28);
  if ((v3 & 2) != 0)
  {
    [*(a1 + 40) duration];
    [v7 setDuration:?];
    v3 = *(*(a1 + 32) + 28);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(*(a1 + 32) + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  [v7 setMediaType:2];
  v3 = *(*(a1 + 32) + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_8:
  v4 = [*(a1 + 40) url];
  [v7 setUrl:v4];

  if ((*(*(a1 + 32) + 28) & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v5 = [*(a1 + 40) flavor];
  if ([v5 isEqualToString:MPStoreItemMovieClipAssetFlavorSD480PVideo] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", MPStoreItemMovieClipAssetFlavorSDVideo))
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:MPStoreItemMovieClipAssetFlavorHD720PVideo])
  {
    v6 = 2;
  }

  else if ([v5 isEqualToString:MPStoreItemMovieClipAssetFlavorHD1080PVideo])
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

  [v7 setFlavorType:v6];

LABEL_13:
}

uint64_t __87__MPStoreModelMovieMediaClipBuilder_mediaClipWithStoreItemMetadata_storeItemMovieClip___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 url];
  v6 = [v4 url];

  v7 = [v5 absoluteString];
  v8 = [v6 absoluteString];
  v9 = [v7 compare:v8];

  return v9;
}

@end