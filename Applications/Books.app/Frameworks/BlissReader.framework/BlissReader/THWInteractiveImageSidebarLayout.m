@interface THWInteractiveImageSidebarLayout
- (CGPoint)stackedControlContainerOrigin:(id)a3;
- (THWInteractiveImageSidebarLayout)initWithDelegate:(id)a3;
- (UIEdgeInsets)stackedControlContainerInsets:(id)a3;
- (id)childInfosForLayout;
- (id)computeLayoutGeometry;
- (id)controlContainerChildInfosForLayout:(id)a3;
- (id)layoutForCallout:(id)a3;
- (id)p_stackForCallout:(id)a3;
- (void)dealloc;
- (void)p_updateContainerMap:(id)a3 forCallout:(id)a4;
- (void)p_updateContainers;
- (void)setCurrentCallout:(id)a3;
- (void)setHidden:(BOOL)a3;
- (void)setPreviousCallout:(id)a3;
- (void)updateCallout:(id)a3;
@end

@implementation THWInteractiveImageSidebarLayout

- (THWInteractiveImageSidebarLayout)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = THWInteractiveImageSidebarLayout;
  v4 = [(THWInteractiveImageSidebarLayout *)&v7 initWithInfo:0];
  v5 = v4;
  if (v4)
  {
    v4->_delegate = a3;
    v4->_calloutToStackedControlContainerMap = objc_alloc_init(TSURetainedPointerKeyDictionary);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWInteractiveImageSidebarLayout;
  [(THWContainerLayout *)&v3 dealloc];
}

- (id)computeLayoutGeometry
{
  delegate = self->_delegate;
  if (!delegate)
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    goto LABEL_15;
  }

  v4 = [(THWInteractiveImageSidebarLayoutDelegate *)delegate interactiveImageSidebarIsExpanded:self];
  [(THWInteractiveImageSidebarLayoutDelegate *)self->_delegate interactiveImageSidebarSize:self];
  TSDRectWithSize();
  x = v6;
  y = v8;
  width = v5;
  height = v11;
  if (!self->_currentCallout)
  {
    if (v4)
    {
      if (!self->_previousCallout)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!self->_hidden)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if ((v4 & 1) == 0)
  {
LABEL_10:
    x = -v5;
    goto LABEL_15;
  }

LABEL_12:
  v13 = [(TSURetainedPointerKeyDictionary *)self->_calloutToStackedControlContainerMap objectForKeyedSubscript:?];
  if (v13)
  {
    v14 = [-[THWInteractiveImageSidebarLayout layoutController](self "layoutController")];
    if (v14)
    {
      [objc_msgSend(v14 "geometry")];
      height = v15;
      x = 17.0;
      y = 94.0;
    }
  }

LABEL_15:
  v16 = [[TSDLayoutGeometry alloc] initWithFrame:{x, y, width, height}];

  return v16;
}

- (void)setCurrentCallout:(id)a3
{
  currentCallout = self->_currentCallout;
  if (currentCallout != a3)
  {

    self->_currentCallout = a3;

    [(THWInteractiveImageSidebarLayout *)self invalidateChildren];
  }
}

- (void)setPreviousCallout:(id)a3
{
  previousCallout = self->_previousCallout;
  if (previousCallout != a3)
  {

    self->_previousCallout = a3;

    [(THWInteractiveImageSidebarLayout *)self invalidateChildren];
  }
}

- (void)setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    self->_hidden = a3;
    [(THWInteractiveImageSidebarLayout *)self invalidateFrame];
  }
}

- (void)p_updateContainerMap:(id)a3 forCallout:(id)a4
{
  if (a4)
  {
    v7 = [(TSURetainedPointerKeyDictionary *)self->_calloutToStackedControlContainerMap objectForKeyedSubscript:a4];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = [[THWStackedControlContainer alloc] initWithDelegate:self];
      [(THWControlContainer *)v8 setInstanceData:a4];
      if (!v8)
      {
        return;
      }
    }

    [a3 setObject:v8 forUncopiedKey:a4];
  }
}

- (void)p_updateContainers
{
  v3 = objc_alloc_init(TSURetainedPointerKeyDictionary);
  [(THWInteractiveImageSidebarLayout *)self p_updateContainerMap:v3 forCallout:self->_currentCallout];
  [(THWInteractiveImageSidebarLayout *)self p_updateContainerMap:v3 forCallout:self->_previousCallout];

  self->_calloutToStackedControlContainerMap = v3;
}

- (id)childInfosForLayout
{
  [(THWInteractiveImageSidebarLayout *)self p_updateContainers];
  if (self->_currentCallout)
  {
    v3 = [(TSURetainedPointerKeyDictionary *)self->_calloutToStackedControlContainerMap objectForKeyedSubscript:?];
    v4 = v3;
    if (!self->_previousCallout)
    {
      if (!v3)
      {
        return 0;
      }

LABEL_13:
      v10 = v4;
      v7 = &v10;
LABEL_14:
      v8 = 1;
      return [NSArray arrayWithObjects:v7 count:v8];
    }
  }

  else
  {
    if (!self->_previousCallout)
    {
      return 0;
    }

    v4 = 0;
  }

  result = [(TSURetainedPointerKeyDictionary *)self->_calloutToStackedControlContainerMap objectForKeyedSubscript:?];
  if (v4)
  {
    v6 = result == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v11[0] = v4;
    v11[1] = result;
    v7 = v11;
    v8 = 2;
    return [NSArray arrayWithObjects:v7 count:v8];
  }

  if (v4)
  {
    goto LABEL_13;
  }

  if (result)
  {
    v9 = result;
    v7 = &v9;
    goto LABEL_14;
  }

  return result;
}

- (void)updateCallout:(id)a3
{
  if (self->_currentCallout != a3)
  {
    [(THWInteractiveImageSidebarLayout *)self invalidateFrame];
    [(THWInteractiveImageSidebarLayout *)self setPreviousCallout:self->_currentCallout];

    [(THWInteractiveImageSidebarLayout *)self setCurrentCallout:a3];
  }
}

- (id)p_stackForCallout:(id)a3
{
  if (a3)
  {
    return [(TSURetainedPointerKeyDictionary *)self->_calloutToStackedControlContainerMap objectForKeyedSubscript:?];
  }

  else
  {
    return 0;
  }
}

- (id)layoutForCallout:(id)a3
{
  result = [(THWInteractiveImageSidebarLayout *)self p_stackForCallout:a3];
  if (result)
  {
    v5 = result;
    v6 = [(THWInteractiveImageSidebarLayout *)self layoutController];

    return [v6 layoutForInfo:v5 childOfLayout:self];
  }

  return result;
}

- (id)controlContainerChildInfosForLayout:(id)a3
{
  v3 = [objc_msgSend(a3 "info")];
  v4 = [v3 titleStorage];
  v5 = [v3 descriptionStorage];
  v6 = [v4 length];
  result = [v5 length];
  if (v6 && result)
  {
    v12[0] = v4;
    v12[1] = v5;
    v8 = v12;
    v9 = 2;
  }

  else
  {
    if (v6)
    {
      v11 = v4;
      v8 = &v11;
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v10 = v5;
      v8 = &v10;
    }

    v9 = 1;
  }

  return [NSArray arrayWithObjects:v8 count:v9];
}

- (CGPoint)stackedControlContainerOrigin:(id)a3
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)stackedControlContainerInsets:(id)a3
{
  [objc_msgSend(objc_msgSend(a3 "info")];
  v4 = v3 + -1.0;
  v6 = v5 + -1.0;
  v7 = 8.0;
  v8 = 8.0;
  result.right = v8;
  result.bottom = v6;
  result.left = v7;
  result.top = v4;
  return result;
}

@end