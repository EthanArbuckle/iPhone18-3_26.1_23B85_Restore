@interface BSUICoverAnimatingSource
+ (id)renderReferenceMatchingQuery:(id)a3 inFeedViewController:(id)a4;
- (BSUICoverAnimatingSource)initWithFeedViewController:(id)a3 query:(id)a4 audioBookControlQuery:(id)a5;
- (CGRect)coverAnimationSourceFrame;
- (id)coverAnimationSourceReferenceView;
- (id)coverAnimationSourceView;
- (id)renderReferenceTransform;
- (void)coverAnimationSourceFinalize;
- (void)coverAnimationSourcePrepare;
@end

@implementation BSUICoverAnimatingSource

+ (id)renderReferenceMatchingQuery:(id)a3 inFeedViewController:(id)a4
{
  v4 = [a4 renderReferencesMatchingQuery:a3];
  v5 = [v4 allKeys];
  v6 = [v5 firstObject];

  return v6;
}

- (BSUICoverAnimatingSource)initWithFeedViewController:(id)a3 query:(id)a4 audioBookControlQuery:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = BSUICoverAnimatingSource;
  v12 = [(BSUICoverAnimatingSource *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_feedViewController, a3);
    objc_storeStrong(&v13->_query, a4);
    v14 = [TUIRenderReferenceOverride overrideWithQuery:v10 alpha:0.0];
    overrideForHiding = v13->_overrideForHiding;
    v13->_overrideForHiding = v14;

    v16 = [TUIRenderReferenceOverride overrideWithQuery:v11 alpha:0.0];
    overrideForHidingAudioControl = v13->_overrideForHidingAudioControl;
    v13->_overrideForHidingAudioControl = v16;
  }

  return v13;
}

- (id)renderReferenceTransform
{
  v3 = [(BSUICoverAnimatingSource *)self feedViewController];
  v4 = [(BSUICoverAnimatingSource *)self query];
  v5 = [v3 renderReferencesMatchingQuery:v4];

  v6 = [v5 allKeys];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:v7];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGRect)coverAnimationSourceFrame
{
  v3 = [(BSUICoverAnimatingSource *)self transformForSourceFrame];

  if (!v3)
  {
    v4 = [(BSUICoverAnimatingSource *)self renderReferenceTransform];
    [(BSUICoverAnimatingSource *)self setTransformForSourceFrame:v4];
  }

  v5 = [(BSUICoverAnimatingSource *)self transformForSourceFrame];
  v6 = v5;
  if (v5)
  {
    [v5 center];
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
  v2 = [(BSUICoverAnimatingSource *)self feedViewController];
  v3 = [v2 view];

  return v3;
}

- (id)coverAnimationSourceView
{
  v3 = [(BSUICoverAnimatingSource *)self renderReferenceTransform];
  v4 = [(BSUICoverAnimatingSource *)self feedViewController];
  v5 = [v3 renderModel];
  v6 = [v5 identifier];
  v7 = [v4 descendentViewWithIdentifier:v6];

  return v7;
}

- (void)coverAnimationSourcePrepare
{
  v3 = [(BSUICoverAnimatingSource *)self feedViewController];
  v4 = [(BSUICoverAnimatingSource *)self overrideForHiding];
  [v3 addRenderOverride:v4];

  v6 = [(BSUICoverAnimatingSource *)self feedViewController];
  v5 = [(BSUICoverAnimatingSource *)self overrideForHidingAudioControl];
  [v6 addRenderOverride:v5];
}

- (void)coverAnimationSourceFinalize
{
  v3 = [(BSUICoverAnimatingSource *)self feedViewController];
  v4 = [(BSUICoverAnimatingSource *)self overrideForHiding];
  [v3 removeRenderOverride:v4];

  v5 = [(BSUICoverAnimatingSource *)self feedViewController];
  v6 = [(BSUICoverAnimatingSource *)self overrideForHidingAudioControl];
  [v5 removeRenderOverride:v6];

  v8 = [(BSUICoverAnimatingSource *)self feedViewController];
  v7 = [v8 view];
  [v7 layoutIfNeeded];
}

@end