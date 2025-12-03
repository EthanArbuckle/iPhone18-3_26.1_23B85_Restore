@interface BSUICoverAnimatingSource
+ (id)renderReferenceMatchingQuery:(id)query inFeedViewController:(id)controller;
- (BSUICoverAnimatingSource)initWithFeedViewController:(id)controller query:(id)query audioBookControlQuery:(id)controlQuery;
- (CGRect)coverAnimationSourceFrame;
- (id)coverAnimationSourceReferenceView;
- (id)coverAnimationSourceView;
- (id)renderReferenceTransform;
- (void)coverAnimationSourceFinalize;
- (void)coverAnimationSourcePrepare;
@end

@implementation BSUICoverAnimatingSource

+ (id)renderReferenceMatchingQuery:(id)query inFeedViewController:(id)controller
{
  v4 = [controller renderReferencesMatchingQuery:query];
  allKeys = [v4 allKeys];
  firstObject = [allKeys firstObject];

  return firstObject;
}

- (BSUICoverAnimatingSource)initWithFeedViewController:(id)controller query:(id)query audioBookControlQuery:(id)controlQuery
{
  controllerCopy = controller;
  queryCopy = query;
  controlQueryCopy = controlQuery;
  v19.receiver = self;
  v19.super_class = BSUICoverAnimatingSource;
  v12 = [(BSUICoverAnimatingSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feedViewController, controller);
    objc_storeStrong(&v13->_query, query);
    v14 = [TUIRenderReferenceOverride overrideWithQuery:queryCopy alpha:0.0];
    overrideForHiding = v13->_overrideForHiding;
    v13->_overrideForHiding = v14;

    v16 = [TUIRenderReferenceOverride overrideWithQuery:controlQueryCopy alpha:0.0];
    overrideForHidingAudioControl = v13->_overrideForHidingAudioControl;
    v13->_overrideForHidingAudioControl = v16;
  }

  return v13;
}

- (id)renderReferenceTransform
{
  feedViewController = [(BSUICoverAnimatingSource *)self feedViewController];
  query = [(BSUICoverAnimatingSource *)self query];
  v5 = [feedViewController renderReferencesMatchingQuery:query];

  allKeys = [v5 allKeys];
  firstObject = [allKeys firstObject];

  if (firstObject)
  {
    v8 = [v5 objectForKeyedSubscript:firstObject];
    firstObject2 = [v8 firstObject];
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

- (CGRect)coverAnimationSourceFrame
{
  transformForSourceFrame = [(BSUICoverAnimatingSource *)self transformForSourceFrame];

  if (!transformForSourceFrame)
  {
    renderReferenceTransform = [(BSUICoverAnimatingSource *)self renderReferenceTransform];
    [(BSUICoverAnimatingSource *)self setTransformForSourceFrame:renderReferenceTransform];
  }

  transformForSourceFrame2 = [(BSUICoverAnimatingSource *)self transformForSourceFrame];
  v6 = transformForSourceFrame2;
  if (transformForSourceFrame2)
  {
    [transformForSourceFrame2 center];
    [v6 size];
    CGRectMakeWithCenterAndSize();
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)coverAnimationSourceReferenceView
{
  feedViewController = [(BSUICoverAnimatingSource *)self feedViewController];
  view = [feedViewController view];

  return view;
}

- (id)coverAnimationSourceView
{
  renderReferenceTransform = [(BSUICoverAnimatingSource *)self renderReferenceTransform];
  feedViewController = [(BSUICoverAnimatingSource *)self feedViewController];
  renderModel = [renderReferenceTransform renderModel];
  identifier = [renderModel identifier];
  v7 = [feedViewController descendentViewWithIdentifier:identifier];

  return v7;
}

- (void)coverAnimationSourcePrepare
{
  feedViewController = [(BSUICoverAnimatingSource *)self feedViewController];
  overrideForHiding = [(BSUICoverAnimatingSource *)self overrideForHiding];
  [feedViewController addRenderOverride:overrideForHiding];

  feedViewController2 = [(BSUICoverAnimatingSource *)self feedViewController];
  overrideForHidingAudioControl = [(BSUICoverAnimatingSource *)self overrideForHidingAudioControl];
  [feedViewController2 addRenderOverride:overrideForHidingAudioControl];
}

- (void)coverAnimationSourceFinalize
{
  feedViewController = [(BSUICoverAnimatingSource *)self feedViewController];
  overrideForHiding = [(BSUICoverAnimatingSource *)self overrideForHiding];
  [feedViewController removeRenderOverride:overrideForHiding];

  feedViewController2 = [(BSUICoverAnimatingSource *)self feedViewController];
  overrideForHidingAudioControl = [(BSUICoverAnimatingSource *)self overrideForHidingAudioControl];
  [feedViewController2 removeRenderOverride:overrideForHidingAudioControl];

  feedViewController3 = [(BSUICoverAnimatingSource *)self feedViewController];
  view = [feedViewController3 view];
  [view layoutIfNeeded];
}

@end