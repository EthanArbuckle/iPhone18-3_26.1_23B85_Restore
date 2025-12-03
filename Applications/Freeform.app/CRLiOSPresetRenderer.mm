@interface CRLiOSPresetRenderer
- (BOOL)cancelSwatchRenderingIfNeeded;
- (BOOL)contextIsLowContrast:(id)contrast forBackgroundColor:(id)color;
- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context;
- (BOOL)p_shouldWaitBeforeDeliveringSwatchesInContext:(id)context;
- (CRLiOSPresetRenderer)initWithPresetProvider:(id)provider;
- (UIEdgeInsets)swatchInsets;
- (id)defaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context;
- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)path context:(id)context;
- (id)localizedNameForPresetAtIndexPath:(id)path context:(id)context;
- (id)p_swatchOperationForCellWithSize:(CGSize)size atIndexPath:(id)path context:(id)context;
- (void)renderSwatchInView:(id)view withSize:(CGSize)size backgroundColor:(id)color atIndexPath:(id)path context:(id)context;
- (void)waitOnSwatchRenderingAndDeliverResultsIfNeededInContext:(id)context;
@end

@implementation CRLiOSPresetRenderer

- (CRLiOSPresetRenderer)initWithPresetProvider:(id)provider
{
  providerCopy = provider;
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
      maxConcurrentOperationCount = [providerCopy maxConcurrentOperationCount];
    }

    else
    {
      maxConcurrentOperationCount = -1;
    }

    [(NSOperationQueue *)v6->_swatchOperationQueue setMaxConcurrentOperationCount:maxConcurrentOperationCount];
    objc_storeStrong(&v6->_presetProvider, provider);
    v10 = +[NSArray array];
    inFlightOperations = v6->_inFlightOperations;
    v6->_inFlightOperations = v10;
  }

  return v6;
}

- (BOOL)cancelSwatchRenderingIfNeeded
{
  p_swatchOperationQueue = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
  operationCount = [p_swatchOperationQueue operationCount];
  if (operationCount)
  {
    p_swatchOperationQueue2 = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
    [p_swatchOperationQueue2 cancelAllOperations];

    v6 = +[NSArray array];
    [(CRLiOSPresetRenderer *)self setP_inFlightOperations:v6];
  }

  return operationCount != 0;
}

- (void)waitOnSwatchRenderingAndDeliverResultsIfNeededInContext:(id)context
{
  if ([(CRLiOSPresetRenderer *)self p_shouldWaitBeforeDeliveringSwatchesInContext:context])
  {
    p_swatchOperationQueue = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
    [p_swatchOperationQueue waitUntilAllOperationsAreFinished];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    p_inFlightOperations = [(CRLiOSPresetRenderer *)self p_inFlightOperations];
    v6 = [p_inFlightOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(p_inFlightOperations);
          }

          [*(*(&v11 + 1) + 8 * v9) deliverSwatch];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [p_inFlightOperations countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = +[NSArray array];
  [(CRLiOSPresetRenderer *)self setP_inFlightOperations:v10];
}

- (BOOL)contextIsLowContrast:(id)contrast forBackgroundColor:(id)color
{
  colorCopy = color;
  contrastCopy = contrast;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  v9 = [p_presetProvider contextIsLowContrast:contrastCopy forBackgroundColor:colorCopy];

  return v9;
}

- (void)renderSwatchInView:(id)view withSize:(CGSize)size backgroundColor:(id)color atIndexPath:(id)path context:(id)context
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  contextCopy = context;
  pathCopy = path;
  colorCopy = color;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  suppressesAnimation = [p_presetProvider suppressesAnimation];

  [viewCopy setExclusiveTouch:1];
  if ((suppressesAnimation & 1) == 0)
  {
    [viewCopy setHidden:1];
  }

  [viewCopy crl_prepareForPresetRendering];
  height = [(CRLiOSPresetRenderer *)self p_swatchOperationForCellWithSize:pathCopy atIndexPath:contextCopy context:width, height];
  [height setView:viewCopy];
  cGColor = [colorCopy CGColor];

  view = [height view];
  layer = [view layer];
  [layer setBackgroundColor:cGColor];

  [height setSuppressesAnimation:suppressesAnimation];
  [height setTargetIndexPath:pathCopy];
  view2 = [height view];
  objc_setAssociatedObject(view2, "CRLSwatchRenderingOperationTargetIndexPathKey", pathCopy, 3);

  v23 = [(CRLiOSPresetRenderer *)self p_shouldWaitBeforeDeliveringSwatchesInContext:contextCopy];
  if (v23)
  {
    [height setDeliversImageAutomatically:0];
  }

  p_swatchOperationQueue = [(CRLiOSPresetRenderer *)self p_swatchOperationQueue];
  [p_swatchOperationQueue addOperation:height];

  p_inFlightOperations = [(CRLiOSPresetRenderer *)self p_inFlightOperations];
  v26 = [p_inFlightOperations arrayByAddingObject:height];
  [(CRLiOSPresetRenderer *)self setP_inFlightOperations:v26];
}

- (id)localizedNameForPresetAtIndexPath:(id)path context:(id)context
{
  pathCopy = path;
  contextCopy = context;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [p_presetProvider localizedNameForPresetAtIndexPath:pathCopy context:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isDefaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context
{
  pathCopy = path;
  contextCopy = context;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [p_presetProvider isDefaultLocalizedNameForPresetAtIndexPath:pathCopy context:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)defaultLocalizedNameForPresetAtIndexPath:(id)path context:(id)context
{
  pathCopy = path;
  contextCopy = context;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [p_presetProvider defaultLocalizedNameForPresetAtIndexPath:pathCopy context:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedAccessibilityNameForPresetAtIndexPath:(id)path context:(id)context
{
  pathCopy = path;
  contextCopy = context;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    v9 = [p_presetProvider localizedAccessibilityNameForPresetAtIndexPath:pathCopy context:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (UIEdgeInsets)swatchInsets
{
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  [p_presetProvider swatchInsets];
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

- (id)p_swatchOperationForCellWithSize:(CGSize)size atIndexPath:(id)path context:(id)context
{
  width = size.width;
  contextCopy = context;
  pathCopy = path;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  v11 = [p_presetProvider swatchOperationWithSize:pathCopy atIndexPath:contextCopy context:sub_10012211C(width)];

  return v11;
}

- (BOOL)p_shouldWaitBeforeDeliveringSwatchesInContext:(id)context
{
  contextCopy = context;
  p_presetProvider = [(CRLiOSPresetRenderer *)self p_presetProvider];
  if (objc_opt_respondsToSelector())
  {
    p_presetProvider2 = [(CRLiOSPresetRenderer *)self p_presetProvider];
    v7 = [p_presetProvider2 shouldWaitBeforeDeliveringSwatchesInContext:contextCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end