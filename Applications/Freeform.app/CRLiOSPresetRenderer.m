@interface CRLiOSPresetRenderer
- (BOOL)cancelSwatchRenderingIfNeeded;
- (BOOL)contextIsLowContrast:(id)a3 forBackgroundColor:(id)a4;
- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4;
- (BOOL)p_shouldWaitBeforeDeliveringSwatchesInContext:(id)a3;
- (CRLiOSPresetRenderer)initWithPresetProvider:(id)a3;
- (UIEdgeInsets)swatchInsets;
- (id)defaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4;
- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)a3 context:(id)a4;
- (id)localizedNameForPresetAtIndexPath:(id)a3 context:(id)a4;
- (id)p_swatchOperationForCellWithSize:(CGSize)a3 atIndexPath:(id)a4 context:(id)a5;
- (void)renderSwatchInView:(id)a3 withSize:(CGSize)a4 backgroundColor:(id)a5 atIndexPath:(id)a6 context:(id)a7;
- (void)waitOnSwatchRenderingAndDeliverResultsIfNeededInContext:(id)a3;
@end

@implementation CRLiOSPresetRenderer

- (CRLiOSPresetRenderer)initWithPresetProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CRLiOSPresetRenderer;
  v6 = [(CRLiOSPresetRenderer *)&v13 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSOperationQueue);
    swatchOperationQueue = v6->_swatchOperationQueue;
    v6->_swatchOperationQueue = v7;

    if (objc_opt_respondsToSelector())
    {
      v9 = [v5 maxConcurrentOperationCount];
    }

    else
    {
      v9 = -1;
    }

    [(NSOperationQueue *)v6->_swatchOperationQueue setMaxConcurrentOperationCount:v9];
    objc_storeStrong(&v6->_presetProvider, a3);
    v10 = +[NSArray array];
    inFlightOperations = v6->_inFlightOperations;
    v6->_inFlightOperations = v10;
  }

  return v6;
}

- (BOOL)cancelSwatchRenderingIfNeeded
{
  v3 = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
  v4 = [v3 operationCount];
  if (v4)
  {
    v5 = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
    [v5 cancelAllOperations];

    v6 = +[NSArray array];
    [(CRLiOSPresetRenderer *)self setP_inFlightOperations:v6];
  }

  return v4 != 0;
}

- (void)waitOnSwatchRenderingAndDeliverResultsIfNeededInContext:(id)a3
{
  if ([(CRLiOSPresetRenderer *)self p_shouldWaitBeforeDeliveringSwatchesInContext:a3])
  {
    v4 = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
    [v4 waitUntilAllOperationsAreFinished];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(CRLiOSPresetRenderer *)self p_inFlightOperations];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9) deliverSwatch];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = +[NSArray array];
  [(CRLiOSPresetRenderer *)self setP_inFlightOperations:v10];
}

- (BOOL)contextIsLowContrast:(id)a3 forBackgroundColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  v9 = [v8 contextIsLowContrast:v7 forBackgroundColor:v6];

  return v9;
}

- (void)renderSwatchInView:(id)a3 withSize:(CGSize)a4 backgroundColor:(id)a5 atIndexPath:(id)a6 context:(id)a7
{
  height = a4.height;
  width = a4.width;
  v27 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  v17 = [v16 suppressesAnimation];

  [v27 setExclusiveTouch:1];
  if ((v17 & 1) == 0)
  {
    [v27 setHidden:1];
  }

  [v27 crl_prepareForPresetRendering];
  v18 = [(CRLiOSPresetRenderer *)self p_swatchOperationForCellWithSize:v14 atIndexPath:v13 context:width, height];
  [v18 setView:v27];
  v19 = [v15 CGColor];

  v20 = [v18 view];
  v21 = [v20 layer];
  [v21 setBackgroundColor:v19];

  [v18 setSuppressesAnimation:v17];
  [v18 setTargetIndexPath:v14];
  v22 = [v18 view];
  objc_setAssociatedObject(v22, "CRLSwatchRenderingOperationTargetIndexPathKey", v14, 3);

  v23 = [(CRLiOSPresetRenderer *)self p_shouldWaitBeforeDeliveringSwatchesInContext:v13];
  if (v23)
  {
    [v18 setDeliversImageAutomatically:0];
  }

  v24 = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
  [v24 addOperation:v18];

  v25 = [(CRLiOSPresetRenderer *)self p_inFlightOperations];
  v26 = [v25 arrayByAddingObject:v18];
  [(CRLiOSPresetRenderer *)self setP_inFlightOperations:v26];
}

- (id)localizedNameForPresetAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 localizedNameForPresetAtIndexPath:v6 context:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 isDefaultLocalizedNameForPresetAtIndexPath:v6 context:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)defaultLocalizedNameForPresetAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 defaultLocalizedNameForPresetAtIndexPath:v6 context:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 localizedAccessibilityNameForPresetAtIndexPath:v6 context:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIEdgeInsets)swatchInsets
{
  v2 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  [v2 swatchInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (id)p_swatchOperationForCellWithSize:(CGSize)a3 atIndexPath:(id)a4 context:(id)a5
{
  width = a3.width;
  v8 = a5;
  v9 = a4;
  v10 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  v11 = [v10 swatchOperationWithSize:v9 atIndexPath:v8 context:sub_10012211C(width)];

  return v11;
}

- (BOOL)p_shouldWaitBeforeDeliveringSwatchesInContext:(id)a3
{
  v4 = a3;
  v5 = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(CRLiOSPresetRenderer *)self p_presetProvider];
    v7 = [v6 shouldWaitBeforeDeliveringSwatchesInContext:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end