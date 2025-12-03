@interface PKSqueezePaletteViewExpandedToolsLayoutContext
- (id)initWithPreviousLayout:(id *)layout;
@end

@implementation PKSqueezePaletteViewExpandedToolsLayoutContext

- (id)initWithPreviousLayout:(id *)layout
{
  v4 = a2;
  if (layout)
  {
    v7.receiver = layout;
    v7.super_class = PKSqueezePaletteViewExpandedToolsLayoutContext;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    layout = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return layout;
}

@end