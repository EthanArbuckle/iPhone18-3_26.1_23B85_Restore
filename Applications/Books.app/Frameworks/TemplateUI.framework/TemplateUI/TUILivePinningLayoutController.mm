@interface TUILivePinningLayoutController
- (CGRect)currentAdjustedViewBounds;
- (CGRect)currentViewBounds;
- (TUILivePinningLayoutController)init;
- (id)liveAttributesForRenderModel:(id)model;
- (void)setRenderModel:(id)model withInvalidationContext:(id)context;
- (void)updatePinningTransformsWithViewBounds:(CGRect)bounds adjustedViewBounds:(CGRect)viewBounds invalidationContext:(id)context hasTabBar:(BOOL)bar;
@end

@implementation TUILivePinningLayoutController

- (TUILivePinningLayoutController)init
{
  v8.receiver = self;
  v8.super_class = TUILivePinningLayoutController;
  v2 = [(TUILivePinningLayoutController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    origin = CGRectZero.origin;
    size = CGRectZero.size;
    v2->_currentViewBounds.origin = CGRectZero.origin;
    v2->_currentViewBounds.size = size;
    v2->_currentAdjustedViewBounds.origin = origin;
    v2->_currentAdjustedViewBounds.size = size;
    entryMap = v2->_entryMap;
    v2->_entryMap = 0;

    v3->_hasTabBar = 0;
  }

  return v3;
}

- (void)setRenderModel:(id)model withInvalidationContext:(id)context
{
  modelCopy = model;
  contextCopy = context;
  if (self->_renderModel != modelCopy)
  {
    v24 = contextCopy;
    v25 = modelCopy;
    objc_storeStrong(&self->_renderModel, model);
    v9 = [NSMapTable mapTableWithKeyOptions:512 valueOptions:512];
    entryMap = self->_entryMap;
    self->_entryMap = v9;

    v11 = objc_alloc_init(NSMutableArray);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [(TUIRenderModelCollection *)self->_renderModel sections];
    v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v28)
    {
      v27 = *v35;
      y = CGPointZero.y;
      do
      {
        v13 = 0;
        do
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v13;
          v14 = *(*(&v34 + 1) + 8 * v13);
          v15 = [v14 liveTransformsForKind:objc_opt_class()];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v31;
            do
            {
              for (i = 0; i != v17; i = i + 1)
              {
                if (*v31 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v30 + 1) + 8 * i);
                v21 = objc_alloc_init(_TUIPinningEntry);
                [(_TUIPinningEntry *)v21 setPinningLiveTransform:v20];
                [(_TUIPinningEntry *)v21 setCurrentOffset:CGPointZero.x, y];
                [(_TUIPinningEntry *)v21 setDefaultPosition:CGPointZero.x, y];
                [v14 offset];
                [(_TUIPinningEntry *)v21 setSectionOffset:?];
                [(NSMapTable *)self->_entryMap setObject:v21 forKey:v20];

                [v11 addObject:v21];
              }

              v17 = [v15 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v17);
          }

          v13 = v29 + 1;
        }

        while ((v29 + 1) != v28);
        v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v28);
    }

    v22 = [v11 copy];
    entries = self->_entries;
    self->_entries = v22;

    contextCopy = v24;
    [(TUILivePinningLayoutController *)self updatePinningTransformsWithViewBounds:v24 adjustedViewBounds:self->_hasTabBar invalidationContext:self->_currentViewBounds.origin.x hasTabBar:self->_currentViewBounds.origin.y, self->_currentViewBounds.size.width, self->_currentViewBounds.size.height, self->_currentAdjustedViewBounds.origin.x, self->_currentAdjustedViewBounds.origin.y, self->_currentAdjustedViewBounds.size.width, self->_currentAdjustedViewBounds.size.height];

    modelCopy = v25;
  }
}

- (void)updatePinningTransformsWithViewBounds:(CGRect)bounds adjustedViewBounds:(CGRect)viewBounds invalidationContext:(id)context hasTabBar:(BOOL)bar
{
  height = viewBounds.size.height;
  width = viewBounds.size.width;
  y = viewBounds.origin.y;
  x = viewBounds.origin.x;
  v11 = bounds.size.height;
  v12 = bounds.size.width;
  v13 = bounds.origin.y;
  v14 = bounds.origin.x;
  contextCopy = context;
  self->_currentViewBounds.origin.x = v14;
  self->_currentViewBounds.origin.y = v13;
  self->_currentViewBounds.size.width = v12;
  self->_currentViewBounds.size.height = v11;
  self->_currentAdjustedViewBounds.origin.x = x;
  self->_currentAdjustedViewBounds.origin.y = y;
  self->_currentAdjustedViewBounds.size.width = width;
  self->_currentAdjustedViewBounds.size.height = height;
  self->_hasTabBar = bar;
  entries = self->_entries;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_164348;
  v19[3] = &unk_263218;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v11;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  barCopy = bar;
  v19[4] = self;
  v20 = contextCopy;
  v18 = contextCopy;
  [(NSArray *)entries enumerateObjectsUsingBlock:v19];
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
  [v6 currentOffset];
  v12 = v8 + v11;
  v14 = v10 + v13;
  [v6 sectionOffset];
  v16 = v12 - v15;
  [v6 sectionOffset];
  v18 = v14 - v17;
  v19 = objc_alloc_init(TUILayoutAttributes);
  [(TUILayoutAttributes *)v19 setCenter:v16, v18];
  [modelCopy size];
  [(TUILayoutAttributes *)v19 setSize:?];
  if (modelCopy)
  {
    [modelCopy transform];
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

- (CGRect)currentViewBounds
{
  x = self->_currentViewBounds.origin.x;
  y = self->_currentViewBounds.origin.y;
  width = self->_currentViewBounds.size.width;
  height = self->_currentViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)currentAdjustedViewBounds
{
  x = self->_currentAdjustedViewBounds.origin.x;
  y = self->_currentAdjustedViewBounds.origin.y;
  width = self->_currentAdjustedViewBounds.size.width;
  height = self->_currentAdjustedViewBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end