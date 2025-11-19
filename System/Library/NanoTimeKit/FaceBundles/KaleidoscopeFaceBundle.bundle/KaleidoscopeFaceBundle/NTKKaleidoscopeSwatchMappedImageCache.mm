@interface NTKKaleidoscopeSwatchMappedImageCache
+ (id)keyForAsset:(id)a3 style:(id)a4 resourceDirectory:(id)a5;
+ (id)sharedCache;
- (id)_init;
- (void)_cleanCache;
- (void)_pruneUnusedKeys;
- (void)_removeImagesForKeysMatching:(id)a3;
- (void)faceCollectionDidLoad:(id)a3;
@end

@implementation NTKKaleidoscopeSwatchMappedImageCache

+ (id)sharedCache
{
  if (qword_2CE30 != -1)
  {
    sub_150A0();
  }

  v3 = qword_2CE28;

  return v3;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = NTKKaleidoscopeSwatchMappedImageCache;
  v2 = [(NTKKaleidoscopeSwatchMappedImageCache *)&v5 initWithUniqueIdentifier:@"com.apple.nanotimekit.face.kaleidoscope.swatches"];
  v3 = v2;
  if (v2)
  {
    [(NTKKaleidoscopeSwatchMappedImageCache *)v2 _cleanCache];
  }

  return v3;
}

- (void)_removeImagesForKeysMatching:(id)a3
{
  v4 = a3;
  v5 = [(NTKKaleidoscopeSwatchMappedImageCache *)self allKeys];
  v6 = [v5 copy];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_9F90;
  v13[3] = &unk_24B60;
  v14 = v4;
  v7 = v4;
  v8 = [v6 indexesOfObjectsPassingTest:v13];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_9FA0;
  v10[3] = &unk_24B88;
  v11 = v6;
  v12 = self;
  v9 = v6;
  [v8 enumerateIndexesUsingBlock:v10];
}

+ (id)keyForAsset:(id)a3 style:(id)a4 resourceDirectory:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [NTKPhotosReader readerForResourceDirectory:v9];
    v11 = [v10 firstObject];
    v12 = [v11 imageURL];
    v13 = [v12 URLByDeletingPathExtension];
    v14 = [v13 lastPathComponent];
  }

  else
  {
    v14 = 0;
  }

  v15 = NTKBuildVersion();
  v16 = [NSString stringWithFormat:@"%@-%@-%@", v15, v8, v7];

  if ([v7 asset] == stru_3D8.segname && v14)
  {
    v17 = [v16 stringByAppendingFormat:@"-%@", v14];

    v16 = v17;
  }

  return v16;
}

- (void)_cleanCache
{
  v3 = +[NTKCompanionFaceCollectionsManager sharedInstance];
  v4 = [v3 sharedLibraryFaceCollectionsForAllDevices];
  libraryCollections = self->_libraryCollections;
  self->_libraryCollections = v4;

  v6 = objc_opt_new();
  loadedCollections = self->_loadedCollections;
  self->_loadedCollections = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_libraryCollections;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v13 addObserver:{self, v16}];
        v14 = self->_loadedCollections;
        v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 hasLoaded]);
        [(NSMutableArray *)v14 addObject:v15];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(NTKKaleidoscopeSwatchMappedImageCache *)self _pruneUnusedKeys];
  [(NTKKaleidoscopeSwatchMappedImageCache *)self _removeImagesForKeysMatching:&stru_24BC8];
}

- (void)_pruneUnusedKeys
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_loadedCollections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (!v4)
  {

LABEL_14:
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    libraryCollections = self->_libraryCollections;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_A66C;
    v20[3] = &unk_24C18;
    v12 = v9;
    v21 = v12;
    v13 = v10;
    v22 = v13;
    v23 = self;
    [(NSArray *)libraryCollections enumerateObjectsUsingBlock:v20];
    v14 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v13;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "NTKKaleidoscopeSwatchMappedImageCache: extant keys: %@", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_A994;
    v17[3] = &unk_24C40;
    v18 = v12;
    v19 = v13;
    v15 = v13;
    v16 = v12;
    [(NTKKaleidoscopeSwatchMappedImageCache *)self _removeImagesForKeysMatching:v17];

    return;
  }

  v5 = v4;
  v6 = *v25;
  v7 = 1;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v25 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (v7)
      {
        v7 = [*(*(&v24 + 1) + 8 * i) BOOLValue];
      }

      else
      {
        v7 = 0;
      }
    }

    v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v5);

  if (v7)
  {
    goto LABEL_14;
  }
}

- (void)faceCollectionDidLoad:(id)a3
{
  v4 = [(NSArray *)self->_libraryCollections indexOfObject:a3];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_loadedCollections setObject:&__kCFBooleanTrue atIndexedSubscript:v4];
  }

  [(NTKKaleidoscopeSwatchMappedImageCache *)self _pruneUnusedKeys];
}

@end