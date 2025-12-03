@interface StackViewItem
- (StackViewItem)initWithView:(id)view horizontalSpacing:(id)spacing;
@end

@implementation StackViewItem

- (StackViewItem)initWithView:(id)view horizontalSpacing:(id)spacing
{
  viewCopy = view;
  spacingCopy = spacing;
  v12.receiver = self;
  v12.super_class = StackViewItem;
  v9 = [(StackViewItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_view, view);
    objc_storeStrong(&v10->_horizontalSpacing, spacing);
  }

  return v10;
}

@end