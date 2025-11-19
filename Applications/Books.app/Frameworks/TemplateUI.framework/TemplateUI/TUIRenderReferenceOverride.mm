@interface TUIRenderReferenceOverride
+ (id)overrideWithQuery:(id)a3 alpha:(double)a4;
+ (id)overrideWithQuery:(id)a3 forceVisibleOnHover:(BOOL)a4;
@end

@implementation TUIRenderReferenceOverride

+ (id)overrideWithQuery:(id)a3 alpha:(double)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_TUIRenderReferenceOverrideAlpha);
  [(_TUIRenderReferenceOverrideAlpha *)v6 setQuery:v5];

  [(_TUIRenderReferenceOverrideAlpha *)v6 setAlpha:a4];

  return v6;
}

+ (id)overrideWithQuery:(id)a3 forceVisibleOnHover:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(_TUIRenderReferenceOverrideHoverVisibility);
  [(_TUIRenderReferenceOverrideHoverVisibility *)v6 setQuery:v5];

  [(_TUIRenderReferenceOverrideHoverVisibility *)v6 setForceVisibleOnHover:v4];

  return v6;
}

@end