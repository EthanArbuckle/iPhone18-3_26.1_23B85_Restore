@interface TUIRenderReferenceOverride
+ (id)overrideWithQuery:(id)query alpha:(double)alpha;
+ (id)overrideWithQuery:(id)query forceVisibleOnHover:(BOOL)hover;
@end

@implementation TUIRenderReferenceOverride

+ (id)overrideWithQuery:(id)query alpha:(double)alpha
{
  queryCopy = query;
  v6 = objc_alloc_init(_TUIRenderReferenceOverrideAlpha);
  [(_TUIRenderReferenceOverrideAlpha *)v6 setQuery:queryCopy];

  [(_TUIRenderReferenceOverrideAlpha *)v6 setAlpha:alpha];

  return v6;
}

+ (id)overrideWithQuery:(id)query forceVisibleOnHover:(BOOL)hover
{
  hoverCopy = hover;
  queryCopy = query;
  v6 = objc_alloc_init(_TUIRenderReferenceOverrideHoverVisibility);
  [(_TUIRenderReferenceOverrideHoverVisibility *)v6 setQuery:queryCopy];

  [(_TUIRenderReferenceOverrideHoverVisibility *)v6 setForceVisibleOnHover:hoverCopy];

  return v6;
}

@end