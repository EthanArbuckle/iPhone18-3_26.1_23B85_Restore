@interface MKLabelSelectionFilter
- (BOOL)canSelectLabelMarker:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFeatureAnnotationSelectable:(id)a3;
- (BOOL)isLabelSelectable:(id)a3;
- (MKLabelSelectionFilter)initWithMapFeatureOptions:(int64_t)a3;
- (MKLabelSelectionFilter)initWithSelectionHandler:(id)a3;
- (MKMapView)mapView;
- (id)copyWithZone:(_NSZone *)a3;
- (void)performQueries:(id)a3 completionHandler:(id)a4 completionQueue:(id)a5;
@end

@implementation MKLabelSelectionFilter

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MKLabelSelectionFilter);
  v5 = MEMORY[0x1A58E9F30](self->_selectionHandler);
  selectionHandler = v4->_selectionHandler;
  v4->_selectionHandler = v5;

  v4->_featureOptions = self->_featureOptions;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);
  objc_storeWeak(&v4->_mapView, WeakRetained);

  return v4;
}

- (void)performQueries:(id)a3 completionHandler:(id)a4 completionQueue:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 labelMarker];
        [v15 setResult:{-[MKLabelSelectionFilter isLabelSelectable:](self, "isLabelSelectable:", v16)}];
      }

      v12 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __75__MKLabelSelectionFilter_performQueries_completionHandler_completionQueue___block_invoke;
  v19[3] = &unk_1E76CDA20;
  v20 = v8;
  v21 = v9;
  v17 = v8;
  v18 = v9;
  dispatch_async(v10, v19);
}

- (BOOL)isLabelSelectable:(id)a3
{
  v4 = a3;
  v5 = [v4 featureAnnotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 featureAnnotation];
    v8 = [v7 annotationView];
    v9 = [v8 isEnabled];
  }

  else if (self->_selectionHandler)
  {
    v9 = [(MKLabelSelectionFilter *)self canSelectLabelMarker:v4];
  }

  else
  {
    v10 = [v4 externalFeatureCategory];
    if (v10 == 1)
    {
      if ((self->_featureOptions & 1) == 0)
      {
        v9 = 0;
        goto LABEL_14;
      }

      v13 = [v4 pickedLabelBalloonBehavior] == 1;
    }

    else
    {
      v11 = v10;
      v12 = 4;
      if (v10 != 3)
      {
        v12 = 0;
      }

      if (v10 != 2)
      {
        v11 = v12;
      }

      v13 = (self->_featureOptions & v11) == 0;
    }

    v9 = !v13;
  }

LABEL_14:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MKLabelSelectionFilter *)self isEqualToLabelSelectionFilter:v4];

  return v5;
}

- (BOOL)isFeatureAnnotationSelectable:(id)a3
{
  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    v5 = *(selectionHandler + 2);

    return v5();
  }

  else
  {
    v7 = [a3 featureType];
    switch(v7)
    {
      case 2:
        v8 = (LOBYTE(self->_featureOptions) >> 2) & 1;
        break;
      case 1:
        v8 = (LOBYTE(self->_featureOptions) >> 1) & 1;
        break;
      case 0:
        LOBYTE(v8) = self->_featureOptions & 1;
        break;
    }

    return v8 & 1;
  }
}

- (BOOL)canSelectLabelMarker:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF00] mainThread];

  if (v5)
  {
    v6 = [(MKLabelSelectionFilter *)self mapView];
    v7 = [v6 preferredConfiguration];

    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && [v7 elevationStyle] == 0;
    v10 = [[MKMapFeatureAnnotation alloc] initWithVKLabelMarker:v4 isHybridMap:v8];
    v9 = (*(self->_selectionHandler + 2))();
  }

  else
  {
    objc_initWeak(&location, self);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__MKLabelSelectionFilter_canSelectLabelMarker___block_invoke;
    v12[3] = &unk_1E76CA848;
    v14 = &v16;
    objc_copyWeak(&v15, &location);
    v13 = v4;
    dispatch_sync(MEMORY[0x1E69E96A0], v12);
    v9 = *(v17 + 24);

    objc_destroyWeak(&v15);
    _Block_object_dispose(&v16, 8);
    objc_destroyWeak(&location);
  }

  return v9 & 1;
}

void __47__MKLabelSelectionFilter_canSelectLabelMarker___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained canSelectLabelMarker:*(a1 + 32)];
}

- (MKLabelSelectionFilter)initWithSelectionHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MKLabelSelectionFilter;
  v5 = [(MKLabelSelectionFilter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_featureOptions = 7;
    v7 = MEMORY[0x1A58E9F30](v4);
    selectionHandler = v6->_selectionHandler;
    v6->_selectionHandler = v7;
  }

  return v6;
}

- (MKLabelSelectionFilter)initWithMapFeatureOptions:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MKLabelSelectionFilter;
  result = [(MKLabelSelectionFilter *)&v5 init];
  if (result)
  {
    result->_featureOptions = a3;
  }

  return result;
}

@end