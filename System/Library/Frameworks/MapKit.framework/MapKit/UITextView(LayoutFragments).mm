@interface UITextView(LayoutFragments)
- (id)_mk_layoutFragments;
@end

@implementation UITextView(LayoutFragments)

- (id)_mk_layoutFragments
{
  textLayoutManager = [self textLayoutManager];
  _mk_layoutFragments = [textLayoutManager _mk_layoutFragments];

  return _mk_layoutFragments;
}

@end