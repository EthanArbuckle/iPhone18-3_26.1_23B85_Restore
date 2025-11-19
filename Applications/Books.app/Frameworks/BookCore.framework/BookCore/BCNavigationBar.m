@interface BCNavigationBar
- (BCNavigationBar)initWithCoder:(id)a3;
- (BCNavigationBar)initWithFrame:(CGRect)a3;
- (NSArray)leftItems;
- (NSArray)rightItems;
- (int64_t)_accessibilitySortPriority;
- (void)bc_commonInit;
- (void)setBackgroundHidden:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setItems:(id)a3;
- (void)setItems:(id)a3 animated:(BOOL)a4;
- (void)setLeftItems:(id)a3;
- (void)setLeftItems:(id)a3 rightItems:(id)a4 title:(id)a5 animated:(BOOL)a6;
- (void)setLeftItems:(id)a3 rightItems:(id)a4 titleView:(id)a5 animated:(BOOL)a6;
- (void)setPinnedTrailingGroup:(id)a3;
- (void)setRightItemGroups:(id)a3;
- (void)setRightItems:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation BCNavigationBar

- (BCNavigationBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BCNavigationBar;
  v3 = [(BCNavigationBar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BCNavigationBar *)v3 bc_commonInit];
  }

  return v4;
}

- (BCNavigationBar)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BCNavigationBar;
  v3 = [(BCNavigationBar *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(BCNavigationBar *)v3 bc_commonInit];
  }

  return v4;
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCNavigationBar;
  [(BCNavigationBar *)&v4 setHidden:a3];
  [(BCNavigationBar *)self setNeedsLayout];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(BCNavigationBar *)self bc_item];
  [v5 setTitle:v4];

  v6 = [(BCNavigationBar *)self bc_item];
  [v6 setTitleView:0];
}

- (void)setLeftItems:(id)a3
{
  v4 = a3;
  v5 = [(BCNavigationBar *)self bc_item];
  [v5 setLeftBarButtonItems:v4];
}

- (NSArray)leftItems
{
  v2 = [(BCNavigationBar *)self bc_item];
  v3 = [v2 leftBarButtonItems];

  return v3;
}

- (void)setRightItems:(id)a3
{
  v4 = a3;
  v5 = [(BCNavigationBar *)self bc_item];
  [v5 setRightBarButtonItems:v4];
}

- (NSArray)rightItems
{
  v2 = [(BCNavigationBar *)self bc_item];
  v3 = [v2 rightBarButtonItems];

  return v3;
}

- (void)setRightItemGroups:(id)a3
{
  v4 = a3;
  v5 = [(BCNavigationBar *)self bc_item];
  [v5 setTrailingItemGroups:v4];
}

- (void)setPinnedTrailingGroup:(id)a3
{
  v4 = a3;
  v5 = [(BCNavigationBar *)self bc_item];
  [v5 setPinnedTrailingGroup:v4];
}

- (void)setLeftItems:(id)a3 rightItems:(id)a4 titleView:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v16 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(BCNavigationBar *)self bc_item];
  [v12 setLeftBarButtonItems:v11 animated:v6];

  v13 = [(BCNavigationBar *)self bc_item];
  [v13 setRightBarButtonItems:v10 animated:v6];

  v14 = [(BCNavigationBar *)self bc_item];
  [v14 setTitle:0];

  v15 = [(BCNavigationBar *)self bc_item];
  [v15 setTitleView:v16];

  [v16 _accessibilitySetIsSpeakThisElement:0];
}

- (void)setLeftItems:(id)a3 rightItems:(id)a4 title:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(BCNavigationBar *)self bc_item];
  [v13 setLeftBarButtonItems:v12 animated:v6];

  v14 = [(BCNavigationBar *)self bc_item];
  [v14 setRightBarButtonItems:v11 animated:v6];

  v15 = [(BCNavigationBar *)self bc_item];
  [v15 setTitle:v10];

  v16 = [(BCNavigationBar *)self bc_item];
  [v16 setTitleView:0];
}

- (void)setBackgroundHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(BCNavigationBar *)self bc_item];
  [v4 _setBackgroundHidden:v3];
}

- (void)setItems:(id)a3
{
  v3 = objc_opt_class();
  v7 = NSStringFromClass(v3);
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Utilities/BCNavigationBar.m", 130, "[BCNavigationBar setItems:]", "NO", @"%s is not supported by %@", v4, v5, v6, "[BCNavigationBar setItems:]");
}

- (void)setItems:(id)a3 animated:(BOOL)a4
{
  v4 = objc_opt_class();
  v8 = NSStringFromClass(v4);
  BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/Utilities/BCNavigationBar.m", 135, "[BCNavigationBar setItems:animated:]", "NO", @"%s is not supported by %@", v5, v6, v7, "[BCNavigationBar setItems:animated:]");
}

- (int64_t)_accessibilitySortPriority
{
  v3 = [(BCNavigationBar *)self nextResponder];
  NSClassFromString(@"BKPDFModernBookViewController");
  if (v3)
  {
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [v3 nextResponder];

      v3 = v4;
      if (!v4)
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