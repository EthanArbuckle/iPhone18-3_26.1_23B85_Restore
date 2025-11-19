@interface TUILiveFloatingLayoutController
- (CGPoint)currentContentOffset;
- (id)liveAttributesForRenderModel:(id)a3;
- (void)didUpdateContentOffset:(CGPoint)a3 withInvalidationContext:(id)a4;
- (void)setRenderModel:(id)a3 withInvalidationContext:(id)a4;
@end

@implementation TUILiveFloatingLayoutController

- (void)setRenderModel:(id)a3 withInvalidationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_renderModel != v7)
  {
    v38 = v7;
    objc_storeStrong(&self->_renderModel, a3);
    v9 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
    entryMap = self->_entryMap;
    self->_entryMap = v9;

    v11 = objc_alloc_init(NSMutableArray);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [(TUIRenderModelCollection *)self->_renderModel sections];
    v41 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v41)
    {
      v40 = *v48;
      do
      {
        v12 = 0;
        do
        {
          if (*v48 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v12;
          v13 = *(*(&v47 + 1) + 8 * v12);
          v14 = [v13 liveTransformsForKind:objc_opt_class()];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v44;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v44 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v43 + 1) + 8 * i);
                v20 = objc_alloc_init(_TUIFloatingEntry);
                [(_TUIFloatingEntry *)v20 setFloatingLiveTransform:v19];
                [v13 offset];
                [(_TUIFloatingEntry *)v20 setSectionOffset:?];
                [v13 offset];
                v22 = v21;
                [v13 size];
                [(_TUIFloatingEntry *)v20 setSectionBottomY:v22 + v23];
                [v13 offset];
                v25 = v24;
                [v19 center];
                v27 = v25 + v26;
                [v19 size];
                v29 = v27 - v28 * 0.5;
                [v13 offset];
                v31 = v30;
                [v19 center];
                v33 = v31 + v32;
                [v19 size];
                v35 = v33 - v34 * 0.5;
                [(_TUIFloatingEntry *)v20 setCurrentOffset:v29, v35];
                [(_TUIFloatingEntry *)v20 setDefaultPosition:v29, v35];
                [(NSMapTable *)self->_entryMap setObject:v20 forKey:v19];

                [v11 addObject:v20];
              }

              v16 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
            }

            while (v16);
          }

          v12 = v42 + 1;
        }

        while ((v42 + 1) != v41);
        v41 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v41);
    }

    [v11 sortUsingComparator:&stru_262760];
    v36 = [v11 copy];
    entries = self->_entries;
    self->_entries = v36;

    [(TUILiveFloatingLayoutController *)self didUpdateContentOffset:v8 withInvalidationContext:self->_currentContentOffset.x, self->_currentContentOffset.y];
    v7 = v38;
  }
}

- (void)didUpdateContentOffset:(CGPoint)a3 withInvalidationContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  self->_currentContentOffset.x = x;
  self->_currentContentOffset.y = y;
  v8 = [(NSArray *)self->_entries count];
  entries = self->_entries;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_13CB40;
  v11[3] = &unk_262788;
  v12 = v7;
  v13 = v8;
  v11[4] = self;
  v10 = v7;
  [(NSArray *)entries enumerateObjectsUsingBlock:v11];
}

- (id)liveAttributesForRenderModel:(id)a3
{
  v4 = a3;
  v5 = [v4 liveTransform];
  v6 = [(NSMapTable *)self->_entryMap objectForKey:v5];
  [v4 center];
  v8 = v7;
  [v4 center];
  v10 = v9;
  [v6 currentOffset];
  v12 = v8 + v11;
  v14 = v10 + v13;
  [v6 sectionOffset];
  v16 = v12 - v15;
  [v6 sectionOffset];
  v18 = v14 - v17;
  v19 = objc_alloc_init(TUILayoutAttributes);
  [(TUILayoutAttributes *)v19 setCenter:v16, v18];
  [v4 size];
  [(TUILayoutAttributes *)v19 setSize:?];
  if (v4)
  {
    [v4 transform];
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
  }

  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  [(TUILayoutAttributes *)v19 setTransform:v21];

  return v19;
}

- (CGPoint)currentContentOffset
{
  x = self->_currentContentOffset.x;
  y = self->_currentContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end