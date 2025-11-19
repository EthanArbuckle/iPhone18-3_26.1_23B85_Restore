@interface UITextView(LayoutFragments)
- (id)_mk_layoutFragments;
@end

@implementation UITextView(LayoutFragments)

- (id)_mk_layoutFragments
{
  v1 = [a1 textLayoutManager];
  v2 = [v1 _mk_layoutFragments];

  return v2;
}

@end