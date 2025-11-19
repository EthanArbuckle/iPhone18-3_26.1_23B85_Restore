@interface _SFDownloadIconCache
- (_SFDownloadIconCache)init;
- (id)_genericIconForUTI:(id)a3;
- (id)_lookupGenericIconForType:(id)a3;
- (id)iconForSource:(id)a3;
- (void)_didGenerateThumbnail:(id)a3 forSource:(id)a4;
- (void)_generateThumbnailForURL:(id)a3 completionHandler:(id)a4;
- (void)_startThumbnailRequestForSource:(id)a3 reportGenericIcons:(BOOL)a4;
- (void)removeCacheObserver:(id)a3;
@end

@implementation _SFDownloadIconCache

- (_SFDownloadIconCache)init
{
  v12.receiver = self;
  v12.super_class = _SFDownloadIconCache;
  v2 = [(_SFDownloadIconCache *)&v12 init];
  v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  observers = v2->_observers;
  v2->_observers = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  thumbnailCache = v2->_thumbnailCache;
  v2->_thumbnailCache = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  utiCache = v2->_utiCache;
  v2->_utiCache = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  activeRequestIdentifiers = v2->_activeRequestIdentifiers;
  v2->_activeRequestIdentifiers = v9;

  return v2;
}

- (void)removeCacheObserver:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observers;
  v6 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v12 + 1) + 8 * v10) == v4)
        {

          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSPointerArray *)self->_observers removePointerAtIndex:v11, v12];
          }

          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSPointerArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (id)iconForSource:(id)a3
{
  v4 = a3;
  thumbnailCache = self->_thumbnailCache;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)thumbnailCache objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];

    if (v7 != v8)
    {
      v9 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    [(_SFDownloadIconCache *)self _startThumbnailRequestForSource:v4 reportGenericIcons:0];
  }

  v10 = [v4 uti];
  v9 = [(_SFDownloadIconCache *)self _genericIconForUTI:v10];

LABEL_6:

  return v9;
}

- (id)_genericIconForUTI:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6963798];
  v6 = v5;
  if (!v4)
  {
    v4 = v5;
  }

  v7 = [(NSMutableDictionary *)self->_utiCache objectForKeyedSubscript:v4];
  if (!v7)
  {
    v8 = [(_SFDownloadIconCache *)self _lookupGenericIconForType:v4];
    v9 = v8;
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v10 = [(_SFDownloadIconCache *)self _lookupGenericIconForType:v6];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = objc_opt_new();
      }

      v7 = v12;
    }

    [(NSMutableDictionary *)self->_utiCache setObject:v7 forKeyedSubscript:v4];
  }

  v13 = v7;

  return v13;
}

- (void)_startThumbnailRequestForSource:(id)a3 reportGenericIcons:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 identifier];
  if (([(NSMutableSet *)self->_activeRequestIdentifiers containsObject:v7]& 1) == 0)
  {
    v8 = [v6 completedFileURL];
    if (v8)
    {
      objc_initWeak(&location, self);
      [(NSMutableSet *)self->_activeRequestIdentifiers addObject:v7];
      objc_initWeak(&from, v6);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75___SFDownloadIconCache__startThumbnailRequestForSource_reportGenericIcons___block_invoke;
      v9[3] = &unk_1E8495CE0;
      v9[4] = self;
      v10 = v8;
      objc_copyWeak(&v11, &location);
      objc_copyWeak(&v12, &from);
      [v10 safari_accessingSecurityScopedResource:v9];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v11);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else if (v4)
    {
      [(_SFDownloadIconCache *)self _didGenerateThumbnail:0 forSource:v6];
    }
  }
}

- (void)_didGenerateThumbnail:(id)a3 forSource:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  activeRequestIdentifiers = self->_activeRequestIdentifiers;
  v9 = [v7 identifier];
  [(NSMutableSet *)activeRequestIdentifiers removeObject:v9];

  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  thumbnailCache = self->_thumbnailCache;
  v12 = [v7 identifier];
  [(NSMutableDictionary *)thumbnailCache setObject:v10 forKeyedSubscript:v12];

  if (v6)
  {
    v13 = v6;
  }

  else
  {

    v14 = [v7 uti];
    v13 = [(_SFDownloadIconCache *)self _genericIconForUTI:v14];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = [(NSPointerArray *)self->_observers allObjects];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19++) downloadIconCache:self didGenerateNewIcon:v13 forSource:v7];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)_generateThumbnailForURL:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E697A0E0];
  v7 = a3;
  v8 = [v6 alloc];
  _SFScreenScale();
  v10 = [v8 initWithFileAtURL:v7 size:4 scale:48.0 representationTypes:{48.0, v9}];

  [v10 setIconMode:1];
  v11 = [MEMORY[0x1E697A0E8] sharedGenerator];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67___SFDownloadIconCache__generateThumbnailForURL_completionHandler___block_invoke;
  v13[3] = &unk_1E8495D08;
  v14 = v5;
  v12 = v5;
  [v11 generateRepresentationsForRequest:v10 updateHandler:v13];
}

- (id)_lookupGenericIconForType:(id)a3
{
  v3 = [MEMORY[0x1E6963658] documentProxyForName:0 type:a3 MIMEType:0];
  v4 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v3 format:13];

  return v4;
}

@end