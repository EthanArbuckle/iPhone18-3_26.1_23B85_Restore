@interface UIView(MPArtworkCatalog)
- (void)clearArtworkCatalogs;
@end

@implementation UIView(MPArtworkCatalog)

- (void)clearArtworkCatalogs
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 artworkCatalog];
  v3 = v2;
  if (v2)
  {
    [v2 _clearDestination];
    objc_setAssociatedObject(a1, _MPArtworkCatalogLastAssociatedObjectKey, v3, 1);
    objc_setAssociatedObject(a1, MPArtworkCatalogAssociatedObjectKey, 0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__UIView_MPArtworkCatalog__clearArtworkCatalogs__block_invoke;
    block[3] = &unk_1E76823C0;
    v14 = v3;
    v15 = a1;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [a1 subviews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) clearArtworkCatalogs];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v16 count:16];
    }

    while (v6);
  }
}

@end