@interface THPageLayout
- (BOOL)isCompactFlowPresentation;
- (BOOL)isExpanded;
- (BOOL)isReflowablePresentation;
- (CGPoint)originOfCharacterIndex:(unint64_t)index;
- (CGRect)bodyRectForChildLayout:(id)layout;
- (Class)repClassOverride;
- (NSArray)floatingDrawableLayouts;
- (THPageController)pageController;
- (THPageLayout)initWithInfo:(id)info;
- (id)additionalDependenciesForChildLayout:(id)layout;
- (id)computeLayoutGeometry;
- (id)firstChildTarget;
- (id)firstTarget;
- (id)floatingDrawableInfos;
- (id)insertValidatedChildLayoutForInfo:(id)info;
- (id)lastChildTarget;
- (id)lastTarget;
- (id)p_insertChildLayoutForInfo:(id)info;
- (id)p_orderedChildInfos;
- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)rect;
- (unint64_t)pageIndex;
- (unint64_t)relativePageIndex;
- (void)addAttachmentLayout:(id)layout;
- (void)dealloc;
- (void)p_addLayoutsForInfos:(id)infos toArray:(id)array;
- (void)p_insertBodyAndValidatedFloatingLayouts;
- (void)validate;
- (void)wasAddedToLayoutController:(id)controller;
- (void)willBeRemovedFromLayoutController:(id)controller;
@end

@implementation THPageLayout

- (THPageLayout)initWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = THPageLayout;
  v3 = [(THPageLayout *)&v5 initWithInfo:info];
  if (v3)
  {
    v3->mBodyLayouts = objc_alloc_init(NSMutableArray);
  }

  return v3;
}

- (void)dealloc
{
  self->mBodyLayouts = 0;
  v3.receiver = self;
  v3.super_class = THPageLayout;
  [(THPageLayout *)&v3 dealloc];
}

- (BOOL)isExpanded
{
  delegate = self->_delegate;
  if (delegate)
  {
    LOBYTE(delegate) = [(THWWidgetLayoutDelegate *)delegate widgetLayoutMode:self]== 1;
  }

  return delegate;
}

- (BOOL)isCompactFlowPresentation
{
  delegate = [(THPageLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsCompactFlow:self];
}

- (BOOL)isReflowablePresentation
{
  delegate = [(THPageLayout *)self delegate];

  return [(THWWidgetLayoutDelegate *)delegate widgetLayoutIsReflowablePresentation:self];
}

- (Class)repClassOverride
{
  if ([objc_msgSend(objc_msgSend(-[THPageLayout layoutController](self "layoutController")])
  {

    return objc_opt_class();
  }

  else
  {
    info = [(THPageLayout *)self info];

    return [info repClass];
  }
}

- (unint64_t)relativePageIndex
{
  info = [(THPageLayout *)self info];

  return [info relativePageIndexInParent];
}

- (THPageController)pageController
{
  objc_opt_class();
  [(THPageLayout *)self parent];
  v3 = TSUDynamicCast();
  objc_opt_class();
  [v3 info];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return [v4 pageController];
}

- (CGRect)bodyRectForChildLayout:(id)layout
{
  v3 = [objc_msgSend(layout "info")];

  [v3 boundsBeforeRotation];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)floatingDrawableInfos
{
  info = [(THPageLayout *)self info];

  return [info floatingDrawables];
}

- (NSArray)floatingDrawableLayouts
{
  v3 = +[NSMutableArray array];
  [(THPageLayout *)self p_addLayoutsForInfos:[(THPageLayout *)self floatingDrawableInfos] toArray:v3];
  return v3;
}

- (void)addAttachmentLayout:(id)layout
{
  if ([objc_msgSend(layout "info")])
  {
    v5 = 0;
LABEL_3:
    [(THPageLayout *)self insertChild:layout atIndex:v5];

    [layout updateChildrenFromInfo];
    return;
  }

  v6 = [-[THPageLayout info](self "info")];
  v7 = [v6 zOrderOfDrawable:{objc_msgSend(layout, "info")}];
  children = [(THPageLayout *)self children];
  v9 = [children count];
  if (v9)
  {
    v10 = v9;
    v5 = 0;
    while (1)
    {
      v11 = [v6 zOrderOfDrawable:{objc_msgSend(objc_msgSend(children, "objectAtIndex:", v5), "info")}];
      if (v7 < v11)
      {
        break;
      }

      if (v7 == v11)
      {
        return;
      }

      if (v10 == ++v5)
      {
        v5 = v10;
        break;
      }
    }

    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_3;
    }
  }
}

- (unint64_t)pageIndex
{
  info = [(THPageLayout *)self info];

  return [info relativePageIndexInParent];
}

- (void)wasAddedToLayoutController:(id)controller
{
  v4.receiver = self;
  v4.super_class = THPageLayout;
  [(THPageLayout *)&v4 wasAddedToLayoutController:controller];
  [(THPageController *)[(THPageLayout *)self pageController] i_registerPageLayout:self];
}

- (void)willBeRemovedFromLayoutController:(id)controller
{
  v4.receiver = self;
  v4.super_class = THPageLayout;
  [(THPageLayout *)&v4 willBeRemovedFromLayoutController:controller];
  [(THPageController *)[(THPageLayout *)self pageController] i_unregisterPageLayout:self];
}

- (id)additionalDependenciesForChildLayout:(id)layout
{
  if (![-[THPageLayout floatingDrawableInfos](self "floatingDrawableInfos")])
  {
    return 0;
  }

  return [(THPageLayout *)self bodyLayouts];
}

- (unint64_t)firstBodyCharacterIndexOverlappingPageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  bodyLayouts = [(THPageLayout *)self bodyLayouts];
  v8 = [(NSArray *)bodyLayouts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v8;
  v10 = *v17;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(bodyLayouts);
      }

      v13 = [*(*(&v16 + 1) + 8 * i) firstCharacterIndexOverlappingPageRect:{x, y, width, height}];
      if (v13 >= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v13;
      }

      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = v13;
      }

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v14;
      }
    }

    v9 = [(NSArray *)bodyLayouts countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);
  return v11;
}

- (CGPoint)originOfCharacterIndex:(unint64_t)index
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  bodyLayouts = [(THPageLayout *)self bodyLayouts];
  v6 = [(NSArray *)bodyLayouts countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(bodyLayouts);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        columnRange = [v12 columnRange];
        if (columnRange <= index && columnRange + v14 >= index + 1)
        {
          v19 = v12;
          goto LABEL_22;
        }

        if (v14)
        {
          v8 = v12;
        }

        v9 |= v14 != 0;
      }

      v7 = [(NSArray *)bodyLayouts countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }

    if (v9)
    {
      if (index)
      {
        --index;
        columnRange2 = [v8 columnRange];
        if (index >= columnRange2 && index - columnRange2 < v17)
        {
          v19 = v8;
LABEL_22:
          [v19 pageOriginOfCharacterIndex:index];
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      if ([(NSArray *)[(THPageLayout *)self bodyLayouts] count])
      {
LABEL_24:
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }
  }

  x = CGPointZero.x;
  y = CGPointZero.y;
LABEL_26:
  result.y = y;
  result.x = x;
  return result;
}

- (id)p_orderedChildInfos
{
  info = [(THPageLayout *)self info];
  v4 = [[NSMutableSet alloc] initWithArray:{-[THPageLayout floatingDrawableInfos](self, "floatingDrawableInfos")}];
  [v4 addObjectsFromArray:{objc_msgSend(info, "modelBodyInfos")}];
  v5 = [objc_msgSend(objc_msgSend(info "drawablesZOrder")];

  return v5;
}

- (void)p_insertBodyAndValidatedFloatingLayouts
{
  v3 = [-[THPageLayout info](self "info")];
  p_orderedChildInfos = [(THPageLayout *)self p_orderedChildInfos];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [p_orderedChildInfos countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(p_orderedChildInfos);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v3 containsObject:v9])
        {
          if ([(THPageLayout *)self wantsNormalBodyLayouts])
          {
            [(THPageLayout *)self p_insertChildLayoutForInfo:v9];
          }
        }

        else
        {
          [(THPageLayout *)self insertValidatedChildLayoutForInfo:v9];
        }
      }

      v6 = [p_orderedChildInfos countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)validate
{
  v12.receiver = self;
  v12.super_class = THPageLayout;
  [(THPageLayout *)&v12 validate];
  if (!self->mChildLayoutsValid)
  {
    [(THPageLayout *)self setChildren:0];
    [(THPageLayout *)self p_insertBodyAndValidatedFloatingLayouts];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    bodyLayouts = [(THPageLayout *)self bodyLayouts];
    v4 = [(NSArray *)bodyLayouts countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(bodyLayouts);
          }

          [-[THPageLayout layoutController](self "layoutController")];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSArray *)bodyLayouts countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v5);
    }

    self->mChildLayoutsValid = 1;
  }
}

- (id)computeLayoutGeometry
{
  i_layoutGeometryProvider = [(THPageLayout *)self i_layoutGeometryProvider];
  if (i_layoutGeometryProvider)
  {

    return [i_layoutGeometryProvider layoutGeometryForLayout:self];
  }

  else
  {
    v4 = [-[THPageLayout info](self "info")];
    v5 = [-[THPageLayout info](self "info")];
    y = CGRectZero.origin.y;
    [v5 size];
    v8 = v7;
    v10 = v9;
    [(THPageController *)[(THPageLayout *)self pageController] pageOriginForRelativePageIndex:v4 pageFrame:CGRectZero.origin.x, y, v7, v9];
    v13 = [[TSDLayoutGeometry alloc] initWithFrame:{v11, v12, v8, v10}];

    return v13;
  }
}

- (id)p_insertChildLayoutForInfo:(id)info
{
  v5 = [-[THPageLayout layoutController](self "layoutController")];
  if (!v5)
  {
    v5 = [objc_alloc(objc_msgSend(info "layoutClass"))];
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSMutableArray *)self->mBodyLayouts addObject:v5];
      }

      [(THPageLayout *)self addChild:v5];
      v6 = v5;
    }
  }

  return v5;
}

- (id)insertValidatedChildLayoutForInfo:(id)info
{
  v4 = [(THPageLayout *)self p_insertChildLayoutForInfo:info];
  v5 = v4;
  if (v4)
  {
    [v4 updateChildrenFromInfo];
    [-[THPageLayout layoutController](self "layoutController")];
  }

  return v5;
}

- (void)p_addLayoutsForInfos:(id)infos toArray:(id)array
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [infos countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(infos);
        }

        [array addObject:{-[THPageLayout p_insertChildLayoutForInfo:](self, "p_insertChildLayoutForInfo:", *(*(&v11 + 1) + 8 * v10))}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [infos countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)firstTarget
{
  v4.receiver = self;
  v4.super_class = THPageLayout;
  result = [(THPageLayout *)&v4 firstTarget];
  if (!result)
  {
    return [[THGuidedPanPageTarget alloc] initWithLayout:self targeted:1];
  }

  return result;
}

- (id)firstChildTarget
{
  v3.receiver = self;
  v3.super_class = THPageLayout;
  return [(THPageLayout *)&v3 firstTarget];
}

- (id)lastTarget
{
  v4.receiver = self;
  v4.super_class = THPageLayout;
  result = [(THPageLayout *)&v4 lastTarget];
  if (!result)
  {
    return [[THGuidedPanPageTarget alloc] initWithLayout:self targeted:1];
  }

  return result;
}

- (id)lastChildTarget
{
  v3.receiver = self;
  v3.super_class = THPageLayout;
  return [(THPageLayout *)&v3 lastTarget];
}

@end