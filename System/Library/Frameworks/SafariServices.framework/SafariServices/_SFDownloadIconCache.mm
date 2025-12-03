@interface _SFDownloadIconCache
- (_SFDownloadIconCache)init;
- (id)_genericIconForUTI:(id)i;
- (id)_lookupGenericIconForType:(id)type;
- (id)iconForSource:(id)source;
- (void)_didGenerateThumbnail:(id)thumbnail forSource:(id)source;
- (void)_generateThumbnailForURL:(id)l completionHandler:(id)handler;
- (void)_startThumbnailRequestForSource:(id)source reportGenericIcons:(BOOL)icons;
- (void)removeCacheObserver:(id)observer;
@end

@implementation _SFDownloadIconCache

- (_SFDownloadIconCache)init
{
  v12.receiver = self;
  v12.super_class = _SFDownloadIconCache;
  v2 = [(_SFDownloadIconCache *)&v12 init];
  weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  observers = v2->_observers;
  v2->_observers = weakObjectsPointerArray;

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

- (void)removeCacheObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
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

        if (*(*(&v12 + 1) + 8 * v10) == observerCopy)
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

- (id)iconForSource:(id)source
{
  sourceCopy = source;
  thumbnailCache = self->_thumbnailCache;
  identifier = [sourceCopy identifier];
  v7 = [(NSMutableDictionary *)thumbnailCache objectForKeyedSubscript:identifier];

  if (v7)
  {
    null = [MEMORY[0x1E695DFB0] null];

    if (v7 != null)
    {
      v9 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    [(_SFDownloadIconCache *)self _startThumbnailRequestForSource:sourceCopy reportGenericIcons:0];
  }

  v10 = [sourceCopy uti];
  v9 = [(_SFDownloadIconCache *)self _genericIconForUTI:v10];

LABEL_6:

  return v9;
}

- (id)_genericIconForUTI:(id)i
{
  iCopy = i;
  v5 = *MEMORY[0x1E6963798];
  v6 = v5;
  if (!iCopy)
  {
    iCopy = v5;
  }

  v7 = [(NSMutableDictionary *)self->_utiCache objectForKeyedSubscript:iCopy];
  if (!v7)
  {
    v8 = [(_SFDownloadIconCache *)self _lookupGenericIconForType:iCopy];
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

    [(NSMutableDictionary *)self->_utiCache setObject:v7 forKeyedSubscript:iCopy];
  }

  v13 = v7;

  return v13;
}

- (void)_startThumbnailRequestForSource:(id)source reportGenericIcons:(BOOL)icons
{
  iconsCopy = icons;
  sourceCopy = source;
  identifier = [sourceCopy identifier];
  if (([(NSMutableSet *)self->_activeRequestIdentifiers containsObject:identifier]& 1) == 0)
  {
    completedFileURL = [sourceCopy completedFileURL];
    if (completedFileURL)
    {
      objc_initWeak(&location, self);
      [(NSMutableSet *)self->_activeRequestIdentifiers addObject:identifier];
      objc_initWeak(&from, sourceCopy);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __75___SFDownloadIconCache__startThumbnailRequestForSource_reportGenericIcons___block_invoke;
      v9[3] = &unk_1E8495CE0;
      v9[4] = self;
      v10 = completedFileURL;
      objc_copyWeak(&v11, &location);
      objc_copyWeak(&v12, &from);
      [v10 safari_accessingSecurityScopedResource:v9];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&v11);

      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    else if (iconsCopy)
    {
      [(_SFDownloadIconCache *)self _didGenerateThumbnail:0 forSource:sourceCopy];
    }
  }
}

- (void)_didGenerateThumbnail:(id)thumbnail forSource:(id)source
{
  v25 = *MEMORY[0x1E69E9840];
  thumbnailCopy = thumbnail;
  sourceCopy = source;
  activeRequestIdentifiers = self->_activeRequestIdentifiers;
  identifier = [sourceCopy identifier];
  [(NSMutableSet *)activeRequestIdentifiers removeObject:identifier];

  null = thumbnailCopy;
  if (!thumbnailCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  thumbnailCache = self->_thumbnailCache;
  identifier2 = [sourceCopy identifier];
  [(NSMutableDictionary *)thumbnailCache setObject:null forKeyedSubscript:identifier2];

  if (thumbnailCopy)
  {
    v13 = thumbnailCopy;
  }

  else
  {

    v14 = [sourceCopy uti];
    v13 = [(_SFDownloadIconCache *)self _genericIconForUTI:v14];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  allObjects = [(NSPointerArray *)self->_observers allObjects];
  v16 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v20 + 1) + 8 * v19++) downloadIconCache:self didGenerateNewIcon:v13 forSource:sourceCopy];
      }

      while (v17 != v19);
      v17 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)_generateThumbnailForURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = MEMORY[0x1E697A0E0];
  lCopy = l;
  v8 = [v6 alloc];
  _SFScreenScale();
  v10 = [v8 initWithFileAtURL:lCopy size:4 scale:48.0 representationTypes:{48.0, v9}];

  [v10 setIconMode:1];
  mEMORY[0x1E697A0E8] = [MEMORY[0x1E697A0E8] sharedGenerator];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67___SFDownloadIconCache__generateThumbnailForURL_completionHandler___block_invoke;
  v13[3] = &unk_1E8495D08;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [mEMORY[0x1E697A0E8] generateRepresentationsForRequest:v10 updateHandler:v13];
}

- (id)_lookupGenericIconForType:(id)type
{
  v3 = [MEMORY[0x1E6963658] documentProxyForName:0 type:type MIMEType:0];
  v4 = [MEMORY[0x1E69DCAB8] _iconForResourceProxy:v3 format:13];

  return v4;
}

@end