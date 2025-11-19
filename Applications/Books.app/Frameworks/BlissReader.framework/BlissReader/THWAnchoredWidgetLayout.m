@interface THWAnchoredWidgetLayout
- (CGPoint)stackedControlContainerOrigin:(id)a3;
- (CGRect)widgetLayoutBounds;
- (CGSize)_containerSize;
- (CGSize)_containerSizeClampWidth:(BOOL)a3;
- (THWAnchoredWidgetLayout)initWithInfo:(id)a3;
- (UIEdgeInsets)stackedControlContainerInsets:(id)a3;
- (UIEdgeInsets)widgetInsets;
- (double)stackedControlContainer:(id)a3 heightForFlexibleLayout:(id)a4 withTotalFixedHeight:(double)a5;
- (double)stackedControlContainer:(id)a3 minHeightForChildLayout:(id)a4;
- (double)stackedControlContainer:(id)a3 verticalPaddingAfter:(id)a4;
- (id)_stackLayout;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)childrenForLayout;
- (id)computeLayoutGeometry;
- (id)controlContainerChildrenForLayout:(id)a3;
- (id)dependentLayouts;
- (id)layoutGeometryForLayout:(id)a3;
- (id)stackedControlContainer:(id)a3 layoutGeometryForLayout:(id)a4;
- (id)stackedControlContainer:(id)a3 styleProviderForLayout:(id)a4;
- (id)stackedControlContainer:(id)a3 styleProviderForStorage:(id)a4;
- (unsigned)stackedControlContainer:(id)a3 maxLineCountForLayout:(id)a4;
- (void)_computeInsets;
- (void)dealloc;
- (void)setWidgetStackLayout:(id)a3;
- (void)updateChildrenFromInfo;
- (void)wasAddedToLayoutController:(id)a3;
- (void)widgetStackInvalidateChildren;
@end

@implementation THWAnchoredWidgetLayout

- (THWAnchoredWidgetLayout)initWithInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = THWAnchoredWidgetLayout;
  v3 = [(THWAnchoredWidgetLayout *)&v5 initWithInfo:a3];
  if (v3)
  {
    v3->_stackInfo = [[THWStackedControlContainer alloc] initWithDelegate:v3];
  }

  return v3;
}

- (void)dealloc
{
  [(THWWidgetLayout *)self->_widgetLayout setDelegate:0];

  v3.receiver = self;
  v3.super_class = THWAnchoredWidgetLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (void)_computeInsets
{
  [(THWAnchoredWidgetLayout *)self _adjustedContentPadding];
  v4 = v3;
  v5 = [-[THWAnchoredWidgetLayout layoutController](self "layoutController")];
  [(THWAnchoredWidgetLayout *)self parent];
  v6 = [objc_msgSend(TSUProtocolCast() columnMetricsForCharIndex:0 outRange:{0), "columnCount"}];
  v7 = v6 == &dword_0 + 1;
  v8 = v6 != &dword_0 + 1;
  if (v7 && (v5 & 1) == 0)
  {
    v8 = [-[THWAnchoredWidgetLayout layoutController](self "layoutController")];
  }

  v9 = 75.0;
  if (!v5)
  {
    v9 = 30.0;
  }

  if (v8)
  {
    v9 = 10.0;
  }

  v10 = v4 + v9;
  self->_widgetInsets.top = v4;
  self->_widgetInsets.left = v10;
  self->_widgetInsets.bottom = v4;
  self->_widgetInsets.right = v10;
}

- (void)wasAddedToLayoutController:(id)a3
{
  -[THWAnchoredWidgetLayout setStackHost:](self, "setStackHost:", [a3 ancestorLayoutOfLayout:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWWidgetStackHosting]);

  [(THWAnchoredWidgetLayout *)self _computeInsets];
}

- (id)childrenForLayout
{
  v3 = [objc_msgSend(objc_msgSend(-[THWAnchoredWidgetLayout info](self "info")];
  if (v3)
  {
    stackInfo = self->_stackInfo;
    v9 = v3;
    v10 = stackInfo;
    v5 = &v9;
    v6 = 2;
  }

  else
  {
    v8 = self->_stackInfo;
    v5 = &v8;
    v6 = 1;
  }

  return [NSArray arrayWithObjects:v5 count:v6, v8, v9, v10];
}

- (void)updateChildrenFromInfo
{
  v4.receiver = self;
  v4.super_class = THWAnchoredWidgetLayout;
  [(THWContainerLayout *)&v4 updateChildrenFromInfo];
  [-[THWAnchoredWidgetLayout layoutController](self "layoutController")];
  v3 = TSUProtocolCast();
  [v3 setDelegate:self];
  [(THWAnchoredWidgetLayout *)self setWidgetLayout:v3];
  [(THWAnchoredWidgetLayout *)self setWidgetStackLayout:TSUProtocolCast()];
}

- (void)setWidgetStackLayout:(id)a3
{
  widgetStackLayout = self->_widgetStackLayout;
  if (widgetStackLayout != a3)
  {

    self->_widgetStackLayout = a3;
    v6 = [(THWAnchoredWidgetLayout *)self _stackLayout];

    [v6 invalidateChildren];
  }
}

- (id)computeLayoutGeometry
{
  [objc_msgSend(-[THWAnchoredWidgetLayout _stackLayout](self "_stackLayout")];
  [(THWAnchoredWidgetLayout *)self _containerSizeClampWidth:0];
  v3 = [TSDLayoutGeometry alloc];
  TSDRectWithSize();
  v4 = [v3 initWithFrame:?];

  return v4;
}

- (id)_stackLayout
{
  objc_opt_class();
  [-[THWAnchoredWidgetLayout layoutController](self "layoutController")];

  return TSUDynamicCast();
}

- (CGSize)_containerSize
{
  [(THWAnchoredWidgetLayout *)self _containerSizeClampWidth:1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_containerSizeClampWidth:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  [(THWAnchoredWidgetLayout *)self parent];
  v5 = TSUDynamicCast();
  if (v5)
  {
    [v5 maximumFrameSizeForChild:self];
    v7 = v6;
    v9 = v8;
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 400.0;
  v7 = 300.0;
  if (v3)
  {
LABEL_3:
    [objc_msgSend(objc_msgSend(-[THWAnchoredWidgetLayout info](self "info")];
    v7 = fmin(v7, fmax(v10, 100.0) + self->_widgetInsets.left + self->_widgetInsets.right);
  }

LABEL_4:
  stackHost = self->_stackHost;
  if (stackHost)
  {
    [(THWWidgetStackHosting *)stackHost widgetStackMaxContainerSizeForSize:v7, v9];
    v7 = v12;
    v9 = v13;
  }

  v14 = v7;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)additionalDependenciesForChildLayout:(id)a3
{
  if ([(THWAnchoredWidgetLayout *)self _stackLayout]!= a3)
  {
    return 0;
  }

  v5 = self;
  return [NSArray arrayWithObjects:&v5 count:1];
}

- (id)dependentLayouts
{
  v7.receiver = self;
  v7.super_class = THWAnchoredWidgetLayout;
  v3 = [-[THWAnchoredWidgetLayout dependentLayouts](&v7 "dependentLayouts")];
  if (!v3)
  {
    v3 = +[NSMutableArray array];
  }

  v4 = [objc_msgSend(objc_msgSend(-[THWAnchoredWidgetLayout info](self "info")];
  if (v4)
  {
    v5 = [-[THWAnchoredWidgetLayout layoutController](self "layoutController")];
    if (v5)
    {
      [v3 addObject:v5];
    }
  }

  return v3;
}

- (id)layoutGeometryForLayout:(id)a3
{
  v4 = [a3 info];
  if (v4 != [objc_msgSend(objc_msgSend(-[THWAnchoredWidgetLayout info](self "info")])
  {
    return 0;
  }

  [objc_msgSend(-[THWAnchoredWidgetLayout _stackLayout](self "_stackLayout")];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(THWAnchoredWidgetLayout *)self _adjustedContentPadding];
  v15 = self->_widgetInsets.left - v14;
  v16 = [[TSDLayoutGeometry alloc] initWithFrame:{v7 + v15, v9 + 0.0, v11 - (v15 + self->_widgetInsets.right - v14), v13}];

  return v16;
}

- (void)widgetStackInvalidateChildren
{
  v2 = [(THWAnchoredWidgetLayout *)self _stackLayout];

  [v2 invalidateChildren];
}

- (id)controlContainerChildrenForLayout:(id)a3
{
  v4 = +[NSMutableArray array];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(THWWidgetStackLayout *)self->_widgetStackLayout widgetStackTitleChildren:self];
  }

  else
  {
    v5 = [objc_msgSend(objc_msgSend(-[THWAnchoredWidgetLayout info](self "info")];
    if (![v5 count])
    {
      goto LABEL_5;
    }
  }

  [v4 addObjectsFromArray:v5];
LABEL_5:
  if ([-[THWAnchoredWidgetLayout info](self "info")])
  {
    [v4 addObject:{objc_msgSend(-[THWAnchoredWidgetLayout info](self, "info"), "widgetInfo")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(THWWidgetStackLayout *)self->_widgetStackLayout widgetStackCaptionChildren:self];
LABEL_10:
    [v4 addObjectsFromArray:v6];
    return v4;
  }

  v6 = [objc_msgSend(objc_msgSend(-[THWAnchoredWidgetLayout info](self "info")];
  if ([v6 count])
  {
    goto LABEL_10;
  }

  return v4;
}

- (CGPoint)stackedControlContainerOrigin:(id)a3
{
  [(THWAnchoredWidgetLayout *)self _containerSizeClampWidth:0];
  [(THWAnchoredWidgetLayout *)self _containerSizeClampWidth:1];
  TSURound();
  v5 = 0.0;
  result.y = v5;
  result.x = v4;
  return result;
}

- (UIEdgeInsets)stackedControlContainerInsets:(id)a3
{
  top = self->_widgetInsets.top;
  left = self->_widgetInsets.left;
  bottom = self->_widgetInsets.bottom;
  right = self->_widgetInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)stackedControlContainer:(id)a3 verticalPaddingAfter:(id)a4
{
  v4 = [-[THWAnchoredWidgetLayout layoutController](self layoutController];
  result = 10.0;
  if (v4)
  {
    return 5.0;
  }

  return result;
}

- (id)stackedControlContainer:(id)a3 layoutGeometryForLayout:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  widgetStackLayout = self->_widgetStackLayout;

  return [(THWWidgetStackLayout *)widgetStackLayout widgetStack:self layoutGeometryForLayout:a4];
}

- (id)stackedControlContainer:(id)a3 styleProviderForLayout:(id)a4
{
  v5 = -[THWAnchoredWidgetWPStyleProvider initWithStorage:]([THWAnchoredWidgetWPStyleProvider alloc], "initWithStorage:", [a4 info]);
  -[THWAnchoredWidgetWPStyleProvider setFilterDelegate:](v5, "setFilterDelegate:", [-[THWAnchoredWidgetLayout layoutController](self "layoutController")]);
  return v5;
}

- (id)stackedControlContainer:(id)a3 styleProviderForStorage:(id)a4
{
  v5 = [[THWAnchoredWidgetWPStyleProvider alloc] initWithStorage:a4];
  -[THWAnchoredWidgetWPStyleProvider setFilterDelegate:](v5, "setFilterDelegate:", [-[THWAnchoredWidgetLayout layoutController](self "layoutController")]);
  return v5;
}

- (double)stackedControlContainer:(id)a3 heightForFlexibleLayout:(id)a4 withTotalFixedHeight:(double)a5
{
  [(THWAnchoredWidgetLayout *)self _containerSize:a3];
  TSDRectWithSize();
  v8 = v7;
  left = self->_widgetInsets.left;
  right = self->_widgetInsets.right;
  v12 = v11 - (self->_widgetInsets.top + self->_widgetInsets.bottom) - a5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return fmax(v12, 100.0);
  }

  widgetStackLayout = self->_widgetStackLayout;

  [(THWWidgetStackLayout *)widgetStackLayout widgetStack:self idealHeightForMaxSize:v8 - (left + right), v12];
  return result;
}

- (unsigned)stackedControlContainer:(id)a3 maxLineCountForLayout:(id)a4
{
  v6 = 1;
  if (([-[THWAnchoredWidgetLayout layoutController](self layoutController] & 1) == 0)
  {
    if ([-[THWAnchoredWidgetLayout layoutController](self "layoutController")])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v6;
  }

  widgetStackLayout = self->_widgetStackLayout;

  return [(THWWidgetStackLayout *)widgetStackLayout widgetStack:self maxLinesForWPLayout:a4 withDefault:v6];
}

- (double)stackedControlContainer:(id)a3 minHeightForChildLayout:(id)a4
{
  [a4 frame];
  v8 = v7;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v8;
  }

  widgetStackLayout = self->_widgetStackLayout;

  [(THWWidgetStackLayout *)widgetStackLayout widgetStack:self stackedControlContainer:a3 minHeightForLayout:a4];
  return result;
}

- (CGRect)widgetLayoutBounds
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)widgetInsets
{
  top = self->_widgetInsets.top;
  left = self->_widgetInsets.left;
  bottom = self->_widgetInsets.bottom;
  right = self->_widgetInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end