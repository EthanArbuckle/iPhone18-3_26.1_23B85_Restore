@interface TUILiveOverscrollingLayoutController
- (CGPoint)currentContentOffset;
- (TUILiveOverscrollingLayoutController)init;
- (id)liveAttributesForRenderModel:(id)model;
- (void)setRenderModel:(id)model withInvalidationContext:(id)context;
- (void)updateOverscrollingTransformsWithContentOffset:(CGPoint)offset invalidationContext:(id)context;
@end

@implementation TUILiveOverscrollingLayoutController

- (TUILiveOverscrollingLayoutController)init
{
  v6.receiver = self;
  v6.super_class = TUILiveOverscrollingLayoutController;
  v2 = [(TUILiveOverscrollingLayoutController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentContentOffset = CGPointZero;
    entryMap = v2->_entryMap;
    v2->_entryMap = 0;
  }

  return v3;
}

- (void)setRenderModel:(id)model withInvalidationContext:(id)context
{
  modelCopy = model;
  contextCopy = context;
  if (self->_renderModel != modelCopy)
  {
    v38 = contextCopy;
    v39 = modelCopy;
    objc_storeStrong(&self->_renderModel, model);
    v9 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
    entryMap = self->_entryMap;
    self->_entryMap = v9;

    v11 = objc_alloc_init(NSMutableArray);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = [(TUIRenderModelCollection *)self->_renderModel sections];
    v42 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v42)
    {
      v41 = *v54;
      do
      {
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v54 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [*(*(&v53 + 1) + 8 * i) liveTransformsForKind:objc_opt_class()];
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v50;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v50 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v49 + 1) + 8 * j);
                v19 = objc_alloc_init(_TUIOverscrollingEntry);
                [(_TUIOverscrollingEntry *)v19 setOverscrollingLiveTransform:v18];
                [v18 size];
                v21 = v20;
                [v18 size];
                v23 = v22;
                if (v18)
                {
                  [v18 transform];
                  v25 = v43;
                  v24 = v44;
                  v27 = v45;
                  v26 = v46;
                  v29 = v47;
                  v28 = v48;
                }

                else
                {
                  v28 = 0.0;
                  v26 = 0.0;
                  v24 = 0.0;
                  v29 = 0.0;
                  v27 = 0.0;
                  v25 = 0.0;
                }

                v30 = v21 * -0.5;
                v31 = v29 + v23 * -0.5 * v27 + v25 * (v21 * -0.5);
                v32 = v28 + v23 * -0.5 * v26 + v24 * v30;
                [v18 center];
                v34 = v31 + v33;
                [v18 center];
                [(_TUIOverscrollingEntry *)v19 setDefaultOrigin:v34, v32 + v35];
                [v18 size];
                [(_TUIOverscrollingEntry *)v19 setDefaultSize:?];
                [(_TUIOverscrollingEntry *)v19 setDefaultScale:1.0];
                [(_TUIOverscrollingEntry *)v19 setCurrentScale:1.0];
                [(NSMapTable *)self->_entryMap setObject:v19 forKey:v18];
                [v11 addObject:v19];
              }

              v15 = [v13 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v15);
          }
        }

        v42 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v42);
    }

    v36 = [v11 copy];
    entries = self->_entries;
    self->_entries = v36;

    contextCopy = v38;
    [(TUILiveOverscrollingLayoutController *)self updateOverscrollingTransformsWithContentOffset:v38 invalidationContext:self->_currentContentOffset.x, self->_currentContentOffset.y];

    modelCopy = v39;
  }
}

- (void)updateOverscrollingTransformsWithContentOffset:(CGPoint)offset invalidationContext:(id)context
{
  y = offset.y;
  x = offset.x;
  contextCopy = context;
  self->_currentContentOffset.x = x;
  self->_currentContentOffset.y = y;
  entries = self->_entries;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_12102C;
  v10[3] = &unk_262040;
  v10[4] = self;
  v11 = contextCopy;
  v9 = contextCopy;
  [(NSArray *)entries enumerateObjectsUsingBlock:v10];
}

- (id)liveAttributesForRenderModel:(id)model
{
  modelCopy = model;
  liveTransform = [modelCopy liveTransform];
  v6 = [(NSMapTable *)self->_entryMap objectForKey:liveTransform];
  [modelCopy center];
  v8 = v7;
  [modelCopy center];
  v10 = v9;
  [v6 defaultOrigin];
  v12 = v8 + v11;
  [v6 defaultOrigin];
  v14 = v10 + v13;
  v15 = objc_alloc_init(TUILayoutAttributes);
  [(TUILayoutAttributes *)v15 setCenter:v12, v14];
  [modelCopy size];
  [(TUILayoutAttributes *)v15 setSize:?];
  memset(&v40, 0, sizeof(v40));
  [v6 currentScale];
  v17 = v16;
  [v6 currentScale];
  CGAffineTransformMakeScale(&v40, v17, v18);
  [modelCopy center];
  v20 = v19;
  [v6 defaultSize];
  v22 = v21;
  [modelCopy center];
  v24 = v23;
  [v6 defaultSize];
  v26 = v25;
  v27 = *&CGAffineTransformIdentity.a;
  v28 = *&CGAffineTransformIdentity.c;
  *&v39.a = *&CGAffineTransformIdentity.a;
  *&v39.c = v28;
  v29 = *&CGAffineTransformIdentity.tx;
  *&v39.tx = v29;
  if (liveTransform)
  {
    v34 = v28;
    v35 = v27;
    v33 = v29;
    [liveTransform transform];
    v29 = v33;
    v28 = v34;
    v27 = v35;
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  *&t1.a = v27;
  *&t1.c = v28;
  *&t1.tx = v29;
  CGAffineTransformConcat(&v39, &t1, &t2);
  if (modelCopy)
  {
    [modelCopy transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v36 = v39;
  CGAffineTransformConcat(&t2, &v36, &t1);
  v39 = t2;
  [v6 currentScale];
  if (v30 != 1.0)
  {
    v31 = v20 - v22 * 0.5;
    CGAffineTransformMakeTranslation(&t1, v31, v24 - v26 * 0.5);
    v36 = v39;
    CGAffineTransformConcat(&t2, &v36, &t1);
    v39 = t2;
    t1 = t2;
    v36 = v40;
    CGAffineTransformConcat(&t2, &t1, &v36);
    v39 = t2;
    CGAffineTransformMakeTranslation(&t1, -v31, -(v24 - v26 * 0.5));
    v36 = v39;
    CGAffineTransformConcat(&t2, &v36, &t1);
    v39 = t2;
    CGAffineTransformMakeTranslation(&t1, 0.0, self->_currentContentOffset.y * 0.5);
    v36 = v39;
    CGAffineTransformConcat(&t2, &v36, &t1);
    v39 = t2;
  }

  t2 = v39;
  [(TUILayoutAttributes *)v15 setTransform:&t2];

  return v15;
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