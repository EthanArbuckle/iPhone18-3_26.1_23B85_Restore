@interface BSUISheetTransitioningArtworkSource
+ (BOOL)isValidSourceWithFeedViewController:(id)controller query:(id)query;
- (BSUISheetTransitioningArtworkSource)initWithFeedViewController:(id)controller query:(id)query isCover:(BOOL)cover;
- (CGRect)frame;
- (id)hide;
- (void)dealloc;
- (void)imageResourceDidChangeImage:(id)image;
- (void)replaceReferenceView:(id)view;
@end

@implementation BSUISheetTransitioningArtworkSource

+ (BOOL)isValidSourceWithFeedViewController:(id)controller query:(id)query
{
  v4 = [controller renderReferencesMatchingQuery:query];
  v5 = [v4 count] != 0;

  return v5;
}

- (BSUISheetTransitioningArtworkSource)initWithFeedViewController:(id)controller query:(id)query isCover:(BOOL)cover
{
  controllerCopy = controller;
  queryCopy = query;
  v38.receiver = self;
  v38.super_class = BSUISheetTransitioningArtworkSource;
  v11 = [(BSUISheetTransitioningArtworkSource *)&v38 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feedViewController, controller);
    objc_storeStrong(&v12->_query, query);
    v12->_isCover = cover;
    v13 = [controllerCopy renderReferencesMatchingQuery:queryCopy];
    allKeys = [v13 allKeys];
    firstObject = [allKeys firstObject];

    if (firstObject && ([v13 objectForKeyedSubscript:firstObject], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
    {
      [v17 center];
      [v17 size];
      CGRectMakeWithCenterAndSize();
      v12->_frame.origin.x = v18;
      v12->_frame.origin.y = v19;
      v12->_frame.size.width = v20;
      v12->_frame.size.height = v21;
    }

    else
    {
      size = CGRectZero.size;
      v12->_frame.origin = CGRectZero.origin;
      v12->_frame.size = size;
    }

    view = [controllerCopy view];
    referenceView = v12->_referenceView;
    v12->_referenceView = view;

    objc_storeStrong(&v12->_identifier, firstObject);
    v25 = [controllerCopy imageResourcesMatchingQuery:queryCopy];
    v26 = v25;
    if (firstObject)
    {
      v27 = [v25 objectForKeyedSubscript:firstObject];
      anyObject = [v27 anyObject];
      imageResource = v12->_imageResource;
      v12->_imageResource = anyObject;
    }

    else
    {
      v27 = v12->_imageResource;
      v12->_imageResource = 0;
    }

    [(TUIImageResource *)v12->_imageResource addObserver:v12];
    v30 = [(TUIImageResource *)v12->_imageResource imageContentWithOptions:1];
    image = [v30 image];
    newImage = [image newImage];
    [v30 insets];
    v33 = [newImage imageWithAlignmentRectInsets:?];
    image = v12->_image;
    v12->_image = v33;

    if ([v13 count])
    {
      v35 = [TUIRenderReferenceOverride overrideWithQuery:queryCopy alpha:0.0];
      overrideForHiding = v12->_overrideForHiding;
      v12->_overrideForHiding = v35;
    }
  }

  return v12;
}

- (void)dealloc
{
  [(TUIImageResource *)self->_imageResource removeObserver:self];
  v3.receiver = self;
  v3.super_class = BSUISheetTransitioningArtworkSource;
  [(BSUISheetTransitioningArtworkSource *)&v3 dealloc];
}

- (id)hide
{
  overrideForHiding = [(BSUISheetTransitioningArtworkSource *)self overrideForHiding];
  feedViewController = [(BSUISheetTransitioningArtworkSource *)self feedViewController];
  [feedViewController addRenderOverride:overrideForHiding];

  feedViewController2 = [(BSUISheetTransitioningArtworkSource *)self feedViewController];
  objc_initWeak(&location, feedViewController2);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_FDA4;
  v9[3] = &unk_386F40;
  objc_copyWeak(&v11, &location);
  v10 = overrideForHiding;
  v6 = overrideForHiding;
  v7 = objc_retainBlock(v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)replaceReferenceView:(id)view
{
  viewCopy = view;
  [(BSUISheetTransitioningArtworkSource *)self frame];
  if (!CGRectIsEmpty(v15))
  {
    [(BSUISheetTransitioningArtworkSource *)self frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    referenceView = [(BSUISheetTransitioningArtworkSource *)self referenceView];
    [viewCopy convertRect:referenceView fromView:{v5, v7, v9, v11}];
    [(BSUISheetTransitioningArtworkSource *)self setFrame:?];

    [(BSUISheetTransitioningArtworkSource *)self setReferenceView:viewCopy];
  }
}

- (void)imageResourceDidChangeImage:(id)image
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FF50;
  v4[3] = &unk_386D98;
  v4[4] = self;
  imageCopy = image;
  v3 = imageCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end