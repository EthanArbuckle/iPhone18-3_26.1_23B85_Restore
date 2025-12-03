@interface BCNavigationBar
- (BCNavigationBar)initWithCoder:(id)coder;
- (BCNavigationBar)initWithFrame:(CGRect)frame;
- (NSArray)leftItems;
- (NSArray)rightItems;
- (int64_t)_accessibilitySortPriority;
- (void)bc_commonInit;
- (void)setBackgroundHidden:(BOOL)hidden;
- (void)setHidden:(BOOL)hidden;
- (void)setItems:(id)items;
- (void)setItems:(id)items animated:(BOOL)animated;
- (void)setLeftItems:(id)items;
- (void)setLeftItems:(id)items rightItems:(id)rightItems title:(id)title animated:(BOOL)animated;
- (void)setLeftItems:(id)items rightItems:(id)rightItems titleView:(id)view animated:(BOOL)animated;
- (void)setPinnedTrailingGroup:(id)group;
- (void)setRightItemGroups:(id)groups;
- (void)setRightItems:(id)items;
- (void)setTitle:(id)title;
@end

@implementation BCNavigationBar

- (BCNavigationBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BCNavigationBar;
  v3 = [(BCNavigationBar *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BCNavigationBar *)v3 bc_commonInit];
  }

  return v4;
}

- (BCNavigationBar)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BCNavigationBar;
  v3 = [(BCNavigationBar *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(BCNavigationBar *)v3 bc_commonInit];
  }

  return v4;
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = BCNavigationBar;
  [(BCNavigationBar *)&v4 setHidden:hidden];
  [(BCNavigationBar *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item setTitle:titleCopy];

  bc_item2 = [(BCNavigationBar *)self bc_item];
  [bc_item2 setTitleView:0];
}

- (void)setLeftItems:(id)items
{
  itemsCopy = items;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item setLeftBarButtonItems:itemsCopy];
}

- (NSArray)leftItems
{
  bc_item = [(BCNavigationBar *)self bc_item];
  leftBarButtonItems = [bc_item leftBarButtonItems];

  return leftBarButtonItems;
}

- (void)setRightItems:(id)items
{
  itemsCopy = items;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item setRightBarButtonItems:itemsCopy];
}

- (NSArray)rightItems
{
  bc_item = [(BCNavigationBar *)self bc_item];
  rightBarButtonItems = [bc_item rightBarButtonItems];

  return rightBarButtonItems;
}

- (void)setRightItemGroups:(id)groups
{
  groupsCopy = groups;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item setTrailingItemGroups:groupsCopy];
}

- (void)setPinnedTrailingGroup:(id)group
{
  groupCopy = group;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item setPinnedTrailingGroup:groupCopy];
}

- (void)setLeftItems:(id)items rightItems:(id)rightItems titleView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  rightItemsCopy = rightItems;
  itemsCopy = items;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item setLeftBarButtonItems:itemsCopy animated:animatedCopy];

  bc_item2 = [(BCNavigationBar *)self bc_item];
  [bc_item2 setRightBarButtonItems:rightItemsCopy animated:animatedCopy];

  bc_item3 = [(BCNavigationBar *)self bc_item];
  [bc_item3 setTitle:0];

  bc_item4 = [(BCNavigationBar *)self bc_item];
  [bc_item4 setTitleView:viewCopy];

  [viewCopy _accessibilitySetIsSpeakThisElement:0];
}

- (void)setLeftItems:(id)items rightItems:(id)rightItems title:(id)title animated:(BOOL)animated
{
  animatedCopy = animated;
  titleCopy = title;
  rightItemsCopy = rightItems;
  itemsCopy = items;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item setLeftBarButtonItems:itemsCopy animated:animatedCopy];

  bc_item2 = [(BCNavigationBar *)self bc_item];
  [bc_item2 setRightBarButtonItems:rightItemsCopy animated:animatedCopy];

  bc_item3 = [(BCNavigationBar *)self bc_item];
  [bc_item3 setTitle:titleCopy];

  bc_item4 = [(BCNavigationBar *)self bc_item];
  [bc_item4 setTitleView:0];
}

- (void)setBackgroundHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  bc_item = [(BCNavigationBar *)self bc_item];
  [bc_item _setBackgroundHidden:hiddenCopy];
}

- (void)setItems:(id)items
{
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Utilities/BCNavigationBar.m", 130, "[BCNavigationBar setItems:]", "NO", @"%s is not supported by %@", v4, v5, v6, "[BCNavigationBar setItems:]");
}

- (void)setItems:(id)items animated:(BOOL)animated
{
  v4 = objc_opt_class();
  v8 = NSStringFromClass(v4);
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Utilities/BCNavigationBar.m", 135, "[BCNavigationBar setItems:animated:]", "NO", @"%s is not supported by %@", v5, v6, v7, "[BCNavigationBar setItems:animated:]");
}

- (int64_t)_accessibilitySortPriority
{
  nextResponder = [(BCNavigationBar *)self nextResponder];
  NSClassFromString(@"BKPDFModernBookViewController");
  if (nextResponder)
  {
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3NextResponder = [nextResponder nextResponder];

      nextResponder = v3NextResponder;
      if (!v3NextResponder)
      {
        goto LABEL_4;
      }
    }

    return 1000;
  }

  else
  {
LABEL_4:
    v6.receiver = self;
    v6.super_class = BCNavigationBar;
    return [(BCNavigationBar *)&v6 _accessibilitySortPriority];
  }
}

- (void)bc_commonInit
{
  v3 = objc_alloc_init(UINavigationItem);
  bc_item = self->_bc_item;
  self->_bc_item = v3;

  v7 = self->_bc_item;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6.receiver = self;
  v6.super_class = BCNavigationBar;
  [(BCNavigationBar *)&v6 setItems:v5 animated:0];
}

@end