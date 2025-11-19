@interface BSUISheetTransitioningArtworkSource
+ (BOOL)isValidSourceWithFeedViewController:(id)a3 query:(id)a4;
- (BSUISheetTransitioningArtworkSource)initWithFeedViewController:(id)a3 query:(id)a4 isCover:(BOOL)a5;
- (CGRect)frame;
- (id)hide;
- (void)dealloc;
- (void)imageResourceDidChangeImage:(id)a3;
- (void)replaceReferenceView:(id)a3;
@end

@implementation BSUISheetTransitioningArtworkSource

+ (BOOL)isValidSourceWithFeedViewController:(id)a3 query:(id)a4
{
  v4 = [a3 renderReferencesMatchingQuery:a4];
  v5 = [v4 count] != 0;

  return v5;
}

- (BSUISheetTransitioningArtworkSource)initWithFeedViewController:(id)a3 query:(id)a4 isCover:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v38.receiver = self;
  v38.super_class = BSUISheetTransitioningArtworkSource;
  v11 = [(BSUISheetTransitioningArtworkSource *)&v38 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_feedViewController, a3);
    objc_storeStrong(&v12->_query, a4);
    v12->_isCover = a5;
    v13 = [v9 renderReferencesMatchingQuery:v10];
    v14 = [v13 allKeys];
    v15 = [v14 firstObject];

    if (v15 && ([v13 objectForKeyedSubscript:v15], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), v16, v17))
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

    v23 = [v9 view];
    referenceView = v12->_referenceView;
    v12->_referenceView = v23;

    objc_storeStrong(&v12->_identifier, v15);
    v25 = [v9 imageResourcesMatchingQuery:v10];
    v26 = v25;
    if (v15)
    {
      v27 = [v25 objectForKeyedSubscript:v15];
      v28 = [v27 anyObject];
      imageResource = v12->_imageResource;
      v12->_imageResource = v28;
    }

    else
    {
      v27 = v12->_imageResource;
      v12->_imageResource = 0;
    }

    [(TUIImageResource *)v12->_imageResource addObserver:v12];
    v30 = [(TUIImageResource *)v12->_imageResource imageContentWithOptions:1];
    v31 = [v30 image];
    v32 = [v31 newImage];
    [v30 insets];
    v33 = [v32 imageWithAlignmentRectInsets:?];
    image = v12->_image;
    v12->_image = v33;

    if ([v13 count])
    {
      v35 = [TUIRenderReferenceOverride overrideWithQuery:v10 alpha:0.0];
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
  v3 = [(BSUISheetTransitioningArtworkSource *)self overrideForHiding];
  v4 = [(BSUISheetTransitioningArtworkSource *)self feedViewController];
  [v4 addRenderOverride:v3];

  v5 = [(BSUISheetTransitioningArtworkSource *)self feedViewController];
  objc_initWeak(&location, v5);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_FDA4;
  v9[3] = &unk_386F40;
  objc_copyWeak(&v11, &location);
  v10 = v3;
  v6 = v3;
  v7 = objc_retainBlock(v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

- (void)replaceReferenceView:(id)a3
{
  v13 = a3;
  [(BSUISheetTransitioningArtworkSource *)self frame];
  if (!CGRectIsEmpty(v15))
  {
    [(BSUISheetTransitioningArtworkSource *)self frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(BSUISheetTransitioningArtworkSource *)self referenceView];
    [v13 convertRect:v12 fromView:{v5, v7, v9, v11}];
    [(BSUISheetTransitioningArtworkSource *)self setFrame:?];

    [(BSUISheetTransitioningArtworkSource *)self setReferenceView:v13];
  }
}

- (void)imageResourceDidChangeImage:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FF50;
  v4[3] = &unk_386D98;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
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