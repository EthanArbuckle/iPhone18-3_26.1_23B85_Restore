@interface MPConcreteMediaItemArtwork
- (CGRect)bounds;
- (MPConcreteMediaItemArtwork)initWithArtworkCatalog:(id)catalog allowsNetworking:(BOOL)networking;
@end

@implementation MPConcreteMediaItemArtwork

- (CGRect)bounds
{
  p_bounds = &self->_bounds;
  if (CGRectEqualToRect(self->_bounds, *MEMORY[0x1E695F058]))
  {
    [(MPArtworkCatalog *)self->_catalog setFittingSize:MPArtworkCatalogOriginalSize];
    catalog = self->_catalog;
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [(MPArtworkCatalog *)catalog setDestinationScale:?];

    bestImageFromDisk = [(MPArtworkCatalog *)self->_catalog bestImageFromDisk];
    v7 = bestImageFromDisk;
    if (bestImageFromDisk)
    {
      [bestImageFromDisk size];
      p_bounds->origin = *MEMORY[0x1E695EFF8];
      p_bounds->size.width = v8;
      p_bounds->size.height = v9;
    }
  }

  x = p_bounds->origin.x;
  y = p_bounds->origin.y;
  width = p_bounds->size.width;
  height = p_bounds->size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (MPConcreteMediaItemArtwork)initWithArtworkCatalog:(id)catalog allowsNetworking:(BOOL)networking
{
  catalogCopy = catalog;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__MPConcreteMediaItemArtwork_initWithArtworkCatalog_allowsNetworking___block_invoke;
  v13[3] = &unk_1E76797E8;
  v8 = catalogCopy;
  v14 = v8;
  networkingCopy = networking;
  v12.receiver = self;
  v12.super_class = MPConcreteMediaItemArtwork;
  v9 = [(MPMediaItemArtwork *)&v12 initWithBoundsSize:v13 requestHandler:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_catalog, catalog);
  }

  return v10;
}

id __70__MPConcreteMediaItemArtwork_initWithArtworkCatalog_allowsNetworking___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFittingSize:?];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  [v2 setDestinationScale:?];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__18853;
  v18 = __Block_byref_object_dispose__18854;
  v19 = 0;
  v4 = *(a1 + 32);
  if (*(a1 + 40) == 1 && v4)
  {
    v5 = dispatch_semaphore_create(0);
    v6 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__MPConcreteMediaItemArtwork_initWithArtworkCatalog_allowsNetworking___block_invoke_2;
    v11[3] = &unk_1E76797C0;
    v13 = &v14;
    v7 = v5;
    v12 = v7;
    [v6 requestImageWithCompletion:v11];
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v8 = [v4 bestImageFromDisk];
    v7 = v15[5];
    v15[5] = v8;
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __70__MPConcreteMediaItemArtwork_initWithArtworkCatalog_allowsNetworking___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end