@interface _MKCustomFeatureStore
- (MKCustomFeatureStoreDelegate)delegate;
- (_MKCustomFeatureStore)initWithClustering:(BOOL)a3;
- (id)allAnnotations;
- (id)annotationsInMapRect:(id)a3;
- (void)_clearGlobalAnnotations;
- (void)_clearTileAnnotations;
- (void)_invalidateGlobalAnnotations;
- (void)_invalidateRect:(id)a3;
- (void)_setSceneState:(unsigned __int8)a3;
- (void)addAnnotations:(id)a3;
- (void)addObserver:(id)a3;
- (void)getClusterAnnotationTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5;
- (void)getClusterImageTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5;
- (void)removeAnnotations:(id)a3;
- (void)setAnnotations:(id)a3;
- (void)setClusterAnnotationText:(id)a3 locale:(id)a4;
- (void)setSceneID:(unsigned __int8)a3;
@end

@implementation _MKCustomFeatureStore

- (id)allAnnotations
{
  v3 = [(MKQuadTrie *)self->_annotationsTrie allItems];
  v4 = [(NSMutableSet *)self->_globalAnnotations allObjects];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (MKCustomFeatureStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getClusterAnnotationTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5
{
  v9 = self->_annotationText;
  v10 = self->_annotationLocale;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = v10;
  v17 = v9;
  [WeakRetained customFeatureStore:self annotationTextForClusterFeatureCount:a3 text:&v17 locale:&v16];
  v12 = v17;

  v13 = v16;
  if (a4)
  {
    v14 = v12;
    *a4 = v12;
  }

  if (a5)
  {
    v15 = v13;
    *a5 = v13;
  }
}

- (void)getClusterImageTextForClusterFeatureCount:(unint64_t)a3 text:(id *)a4 locale:(id *)a5
{
  v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v7 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v9 setLocale:v7];

  [v9 setNumberStyle:1];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  *a4 = [v9 stringFromNumber:v8];
}

- (id)annotationsInMapRect:(id)a3
{
  v3 = [(MKQuadTrie *)self->_annotationsTrie itemsInMapRect:a3.var0.var0, a3.var0.var1, a3.var1.var0, a3.var1.var1];
  v4 = [v3 allObjects];

  return v4;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    observers = self->_observers;
    v4 = v8;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)setSceneID:(unsigned __int8)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_sceneID != a3)
  {
    self->_sceneID = a3;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) dataSource:self didChangeSceneID:{self->_sceneID, v8}];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_setSceneState:(unsigned __int8)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_sceneState != a3)
  {
    self->_sceneState = a3;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_observers;
    v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v8 + 1) + 8 * v7++) dataSource:self didChangeSceneState:{self->_sceneState, v8}];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (void)_invalidateGlobalAnnotations
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v7 + 1) + 8 * v6++) globalFeaturesDidChangeForDataSource:{self, v7}];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_invalidateRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_observers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v12 + 1) + 8 * v11++) dataSource:self featuresDidChangeForRect:{v6, v5, var0, var1, v12}];
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_clearGlobalAnnotations
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_globalAnnotations count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_globalAnnotations;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = [*(*(&v8 + 1) + 8 * v6) feature];
          [v7 setDataSource:0];

          ++v6;
        }

        while (v4 != v6);
        v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [(NSMutableSet *)self->_globalAnnotations removeAllObjects];
    [(_MKCustomFeatureStore *)self _invalidateGlobalAnnotations];
  }
}

- (void)_clearTileAnnotations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = __Block_byref_object_copy__39884;
  v9 = __Block_byref_object_dispose__39885;
  v10 = &unk_1A31250BE;
  v12 = 0;
  v13 = 0;
  __p = 0;
  annotationsTrie = self->_annotationsTrie;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46___MKCustomFeatureStore__clearTileAnnotations__block_invoke;
  v4[3] = &unk_1E76CCF08;
  v4[4] = &v5;
  [(MKQuadTrie *)annotationsTrie clearAllItemsPerforming:v4];
  if (v6[6] != v6[7])
  {
    GEOMapRectBoundingMapPoints();
    [(_MKCustomFeatureStore *)self _invalidateRect:?];
  }

  _Block_object_dispose(&v5, 8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

- (void)removeAnnotations:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36 = 0;
  v37 = 0;
  PartitionAnnotations(v4, &v37, &v36);
  v5 = v37;
  v6 = v36;
  if ([v5 count])
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<GEOPosition2d>::reserve(&v33, [v5 count]);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v8)
    {
      v9 = *v30;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          [v11 coordinate];
          if (fabs(v13) <= 180.0 && fabs(v12) <= 90.0 && [(MKQuadTrie *)self->_annotationsTrie contains:v11])
          {
            v14 = [v11 feature];
            [v14 setDataSource:0];

            [v11 coordinate];
            GEOMapPointForCoordinate();
            *&v28 = v15;
            *(&v28 + 1) = v16;
            std::vector<GEOPosition2d>::push_back[abi:ne200100](&v33, &v28);
            [(MKQuadTrie *)self->_annotationsTrie remove:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v8);
    }

    v17 = v33;
    if (v33 != v34)
    {
      GEOMapRectBoundingMapPoints();
      [(_MKCustomFeatureStore *)self _invalidateRect:?];
    }

    if (v17)
    {
      operator delete(v17);
    }
  }

  if ([v6 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v24 + 1) + 8 * v21);
          v23 = [v22 feature];
          [v23 setDataSource:0];

          [(NSMutableSet *)self->_globalAnnotations removeObject:v22];
          ++v21;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v38 count:16];
      }

      while (v19);
    }

    [(_MKCustomFeatureStore *)self _invalidateGlobalAnnotations];
  }
}

- (void)addAnnotations:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36 = 0;
  v37 = 0;
  PartitionAnnotations(v4, &v37, &v36);
  v5 = v37;
  v6 = v36;
  if ([v5 count])
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    std::vector<GEOPosition2d>::reserve(&v33, [v4 count]);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v8)
    {
      v9 = *v30;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          [v11 coordinate];
          if (fabs(v13) <= 180.0 && fabs(v12) <= 90.0 && ![(MKQuadTrie *)self->_annotationsTrie contains:v11])
          {
            v14 = [v11 feature];
            [v14 setDataSource:self];

            [v11 coordinate];
            GEOMapPointForCoordinate();
            *&v28 = v15;
            *(&v28 + 1) = v16;
            std::vector<GEOPosition2d>::push_back[abi:ne200100](&v33, &v28);
            [(MKQuadTrie *)self->_annotationsTrie insert:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v8);
    }

    v17 = v33;
    if (v33 != v34)
    {
      GEOMapRectBoundingMapPoints();
      [(_MKCustomFeatureStore *)self _invalidateRect:?];
    }

    if (v17)
    {
      operator delete(v17);
    }
  }

  if ([v6 count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        v21 = 0;
        do
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v24 + 1) + 8 * v21);
          v23 = [v22 feature];
          [v23 setDataSource:self];

          [(NSMutableSet *)self->_globalAnnotations addObject:v22];
          ++v21;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v38 count:16];
      }

      while (v19);
    }

    [(_MKCustomFeatureStore *)self _invalidateGlobalAnnotations];
  }
}

- (void)setAnnotations:(id)a3
{
  v23 = 0;
  v24 = 0;
  v22 = a3;
  PartitionAnnotations(v22, &v24, &v23);
  v4 = v24;
  v5 = v23;
  if ([v4 count])
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [(MKQuadTrie *)self->_annotationsTrie allItems];
    v8 = [v6 setWithArray:v7];

    v9 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    v10 = [MEMORY[0x1E695DFA8] setWithSet:v9];
    [v10 minusSet:v8];
    v11 = [MEMORY[0x1E695DFA8] setWithSet:v8];
    [v11 minusSet:v9];
    if ([v11 count])
    {
      v12 = [v11 count];
      if (v12 == [v8 count])
      {
        [(_MKCustomFeatureStore *)self _clearTileAnnotations];
      }

      else
      {
        v13 = [v11 allObjects];
        [(_MKCustomFeatureStore *)self removeAnnotations:v13];
      }
    }

    if ([v10 count])
    {
      v14 = [v10 allObjects];
      [(_MKCustomFeatureStore *)self addAnnotations:v14];
    }
  }

  else
  {
    [(_MKCustomFeatureStore *)self _clearTileAnnotations];
  }

  if ([v5 count])
  {
    v15 = self->_globalAnnotations;
    v16 = [MEMORY[0x1E695DFD8] setWithArray:v5];
    v17 = [MEMORY[0x1E695DFA8] setWithSet:v16];
    [v17 minusSet:v15];
    v18 = [MEMORY[0x1E695DFA8] setWithSet:v15];
    [v18 minusSet:v16];
    if ([v18 count])
    {
      v19 = [v18 count];
      if (v19 == [(NSMutableSet *)v15 count])
      {
        [(_MKCustomFeatureStore *)self _clearGlobalAnnotations];
      }

      else
      {
        v20 = [v18 allObjects];
        [(_MKCustomFeatureStore *)self removeAnnotations:v20];
      }
    }

    if ([v17 count])
    {
      v21 = [v17 allObjects];
      [(_MKCustomFeatureStore *)self addAnnotations:v21];
    }
  }

  else
  {
    [(_MKCustomFeatureStore *)self _clearGlobalAnnotations];
  }
}

- (void)setClusterAnnotationText:(id)a3 locale:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 copy];
  annotationText = self->_annotationText;
  self->_annotationText = v7;

  v9 = [v6 copy];
  annotationLocale = self->_annotationLocale;
  self->_annotationLocale = v9;
}

- (_MKCustomFeatureStore)initWithClustering:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = _MKCustomFeatureStore;
  v4 = [(_MKCustomFeatureStore *)&v11 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_sceneID = 256;
    v4->_isClusteringEnabled = a3;
    v6 = [[MKQuadTrie alloc] initWithInitialRegion:100 minimumSize:0.0 maximumItems:0.0, 268435456.0, 268435456.0, 1024.0, 1024.0];
    annotationsTrie = v5->_annotationsTrie;
    v5->_annotationsTrie = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    globalAnnotations = v5->_globalAnnotations;
    v5->_globalAnnotations = v8;
  }

  return v5;
}

@end