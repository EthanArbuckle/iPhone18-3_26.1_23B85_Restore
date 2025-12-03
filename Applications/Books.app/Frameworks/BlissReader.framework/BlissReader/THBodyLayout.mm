@interface THBodyLayout
- (BOOL)allowsDescendersToClip;
- (BOOL)isLayoutOffscreen;
- (CGPoint)anchorPoint;
- (CGPoint)anchoredAttachmentPositionFromLayoutPosition:(CGPoint)position;
- (CGPoint)calculatePointFromSearchReference:(id)reference;
- (CGPoint)capturedInfoPositionForAttachment;
- (CGPoint)layoutPositionFromAnchoredAttachmentPosition:(CGPoint)position;
- (CGPoint)pageOriginOfCharacterIndex:(unint64_t)index;
- (CGPoint)position;
- (CGRect)rectForSelection:(id)selection;
- (CGRect)targetRectForCanvasRect:(CGRect)rect;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)maximumFrameSizeForChild:(id)child;
- (CGSize)minSize;
- (THBodyLayout)initWithInfo:(id)info;
- (THPageController)pageController;
- (TSDCanvas)canvas;
- (TSDHint)nextTargetFirstChildHint;
- (TSWPOffscreenColumn)nextTargetFirstColumn;
- (TSWPOffscreenColumn)previousTargetLastColumn;
- (_NSRange)columnRange;
- (const)nextTargetTopicNumbers;
- (const)previousTargetTopicNumbers;
- (double)maxAnchorY;
- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range;
- (id)computeLayoutGeometry;
- (id)currentAnchoredDrawableLayouts;
- (id)firstTarget;
- (id)lastTarget;
- (id)nextTargetFromLayout:(id)layout column:(id)column;
- (id)nonEmptyColumns;
- (id)p_attachedLayoutsInLayout:(id)layout anchored:(BOOL)anchored;
- (id)p_layoutForDrawable:(id)drawable inContainingLayout:(id)layout;
- (id)previousTargetFromLayout:(id)layout column:(id)column;
- (id)validatedLayoutForAnchoredDrawable:(id)drawable;
- (unint64_t)bodyIndexInPageLayout;
- (unint64_t)firstCharacterIndexOverlappingPageRect:(CGRect)rect;
- (unint64_t)pageCount;
- (unint64_t)pageNumber;
- (void)addAttachmentLayout:(id)layout;
- (void)createColumns;
- (void)dealloc;
- (void)invalidateSize;
- (void)killColumns;
- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block;
- (void)p_killDrawableLayouts:(id)layouts;
- (void)processWidowAndInflation;
- (void)replaceChild:(id)child with:(id)with;
- (void)validate;
- (void)willBeAddedToLayoutController:(id)controller;
@end

@implementation THBodyLayout

- (THBodyLayout)initWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = THBodyLayout;
  v3 = [(THBodyLayout *)&v5 initWithInfo:info];
  if (v3)
  {
    v3->mAttachedDrawableLayouts = objc_alloc_init(NSMutableSet);
  }

  return v3;
}

- (void)dealloc
{
  self->mAttachedDrawableLayouts = 0;

  self->mColumns = 0;
  self->_anchoredDrawablesForRelayout = 0;
  v3.receiver = self;
  v3.super_class = THBodyLayout;
  [(THBodyLayout *)&v3 dealloc];
}

- (void)willBeAddedToLayoutController:(id)controller
{
  info = [-[THBodyLayout info](self info];
  if ([(THPageController *)[(THBodyLayout *)self pageController] needsAnnotationSourceForLayout:self])
  {
    v5 = [objc_msgSend(-[THBodyLayout sectionLayout](self "sectionLayout")];

    [info updateAnnotationSourceWithContentNode:v5];
  }
}

- (BOOL)allowsDescendersToClip
{
  pageController = [(THBodyLayout *)self pageController];

  return [(THPageController *)pageController allowsDescendersToClip];
}

- (CGRect)rectForSelection:(id)selection
{
  columns = [(THBodyLayout *)self columns];

  [TSWPColumn rectForSelection:selection withColumns:columns];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)p_killDrawableLayouts:(id)layouts
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [layouts countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(layouts);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 isBeingManipulated] & 1) == 0)
        {
          [v8 removeFromParent];
        }
      }

      v5 = [layouts countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)createColumns
{
  if (!self->mColumns)
  {
    self->mColumns = objc_alloc_init(NSMutableArray);
  }
}

- (void)killColumns
{
  self->mColumns = 0;
  [(THBodyLayout *)self p_killDrawableLayouts:[(THBodyLayout *)self currentInlineDrawableLayouts]];
  currentAnchoredDrawableLayouts = [(THBodyLayout *)self currentAnchoredDrawableLayouts];

  [(THBodyLayout *)self p_killDrawableLayouts:currentAnchoredDrawableLayouts];
}

- (void)processWidowAndInflation
{
  lastObject = [(NSMutableArray *)[(THBodyLayout *)self columns] lastObject];
  if (lastObject)
  {
    v4 = lastObject;
    range = [lastObject range];
    v7 = &range[v6];
    v8 = [-[THPageController i_pageHintForPageIndex:](-[THBodyLayout pageController](self "pageController")];
    v9 = (v8[5] + v8[4]);
    if (v9 != v7)
    {
      v10 = [-[THBodyLayout info](self "info")];
      range2 = [v4 range];
      if (v9 <= &range2[v12])
      {
        v13 = &range2[v12];
      }

      else
      {
        v13 = v9;
      }

      if (v9 >= &range2[v12])
      {
        v14 = &range2[v12];
      }

      else
      {
        v14 = v9;
      }

      [v4 trimToCharIndex:v9 inTarget:self removeAutoNumberFootnoteCount:{objc_msgSend(v10, "autoNumberFootnoteCountForRange:", v14, v13 - v14)}];

      [(THBodyLayout *)self setNeedsDisplay];
    }
  }

  else
  {

    [(THBodyLayout *)self invalidate];
  }
}

- (unint64_t)bodyIndexInPageLayout
{
  v3 = [objc_msgSend(-[THBodyLayout parent](self "parent")];
  info = [(THBodyLayout *)self info];

  return [v3 indexOfObject:info];
}

- (unint64_t)firstCharacterIndexOverlappingPageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [-[THBodyLayout parent](self "parent")];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v13 = CGRectIntersection(v12, v14);
  if (CGRectIsNull(v13))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  TSDSubtractPoints();
  v11 = 0;
  return [TSWPColumn charIndexForPoint:[(THBodyLayout *)self columns] inColumnsArray:0 allowPastBreak:0 allowNotFound:&v11 + 1 isAtEndOfLine:&v11 leadingEdge:v9, v10];
}

- (_NSRange)columnRange
{
  v2 = NSInvalidRange[0];
  v3 = NSInvalidRange[1];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  columns = [(THBodyLayout *)self columns];
  v5 = [(NSMutableArray *)columns countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(columns);
        }

        location = [*(*(&v15 + 1) + 8 * v8) range];
        v11.location = location;
        v11.length = length;
        if (v2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20.location = v2;
          v20.length = v3;
          v12 = NSUnionRange(v20, v11);
          length = v12.length;
          location = v12.location;
        }

        v2 = location;
        v3 = length;
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)columns countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = v2;
  v14 = v3;
  result.length = v14;
  result.location = v13;
  return result;
}

- (CGPoint)pageOriginOfCharacterIndex:(unint64_t)index
{
  [(THBodyLayout *)self rectForSelection:[TSWPSelection selectionWithRange:index, 1]];
  [-[THBodyLayout parent](self "parent")];

  TSDAddPoints();
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGSize)maximumFrameSizeForChild:(id)child
{
  v5 = [objc_msgSend(child "info")];
  if (v5 && ([v5 isAnchored] & 1) == 0 && -[THBodyLayout columns](self, "columns"))
  {
    [-[NSMutableArray objectAtIndex:](-[THBodyLayout columns](self "columns")];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = THBodyLayout;
    [(THBodyLayout *)&v10 maximumFrameSizeForChild:child];
  }

  result.height = v9;
  result.width = v7;
  return result;
}

- (id)computeLayoutGeometry
{
  [-[THBodyLayout parent](self "parent")];
  v6 = [[TSDLayoutGeometry alloc] initWithFrame:{v2, v3, v4, v5}];

  return v6;
}

- (CGPoint)capturedInfoPositionForAttachment
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)validate
{
  v3.receiver = self;
  v3.super_class = THBodyLayout;
  [(THBodyLayout *)&v3 validate];
  if ([(THBodyLayout *)self usesInflation])
  {
    if ([(THBodyLayout *)self needsInflation])
    {
      [(THBodyLayout *)self createColumns];
      [(THPageController *)[(THBodyLayout *)self pageController] i_inflateColumnsInBodyLayout:self];
    }

    if ([(THBodyLayout *)self needsInflation])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }
  }
}

- (void)invalidateSize
{
  v13.receiver = self;
  v13.super_class = THBodyLayout;
  [(THBodyLayout *)&v13 invalidateSize];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v3 = [(THBodyLayout *)self currentAnchoredDrawableLayouts:0];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          [v8 invalidateExteriorWrap];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)columnMetricsForCharIndex:(unint64_t)index outRange:(_NSRange *)range
{
  v4 = [(THBodyLayout *)self info:index];

  return [v4 columnStyle];
}

- (TSWPOffscreenColumn)previousTargetLastColumn
{
  pageController = [(THBodyLayout *)self pageController];
  v4 = [-[THBodyLayout parent](self "parent")];

  return [(THPageController *)pageController i_columnPriorToPageIndex:v4];
}

- (TSWPOffscreenColumn)nextTargetFirstColumn
{
  pageController = [(THBodyLayout *)self pageController];
  v4 = [-[THBodyLayout parent](self "parent")];

  return [(THPageController *)pageController i_columnAfterPageIndex:v4];
}

- (TSDHint)nextTargetFirstChildHint
{
  pageController = [(THBodyLayout *)self pageController];
  v4 = [-[THBodyLayout parent](self "parent")];

  return [(THPageController *)pageController i_firstChildHintAfterPageIndex:v4];
}

- (const)previousTargetTopicNumbers
{
  pageController = [(THBodyLayout *)self pageController];
  v4 = [-[THBodyLayout parent](self "parent")];

  return [(THPageController *)pageController i_topicHintsPriorToPageIndex:v4];
}

- (const)nextTargetTopicNumbers
{
  pageController = [(THBodyLayout *)self pageController];
  v4 = [-[THBodyLayout parent](self "parent")];

  return [(THPageController *)pageController i_topicHintsAfterPageIndex:v4];
}

- (CGSize)minSize
{
  v2 = [-[THBodyLayout info](self "info")];

  [v2 size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)maxSize
{
  autosizeFlags = [(THBodyLayout *)self autosizeFlags];
  [-[THBodyLayout parent](self "parent")];
  v6 = 100000.0;
  if (autosizeFlags)
  {
    v7 = 100000.0;
  }

  else
  {
    v7 = v5;
  }

  if ((autosizeFlags & 4) == 0)
  {
    v6 = v4;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)currentSize
{
  if ([-[THBodyLayout info](self "info")])
  {

    [(THBodyLayout *)self maxSize];
  }

  else
  {
    geometry = [(THBodyLayout *)self geometry];

    [geometry size];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGPoint)position
{
  y = CGPointZero.y;
  v9 = CGPointZero;
  geometry = [(THBodyLayout *)self geometry];
  if (geometry)
  {
    [geometry transform];
    v3 = v10;
    v4 = v11;
    v5 = v12;
  }

  else
  {
    v5 = 0uLL;
    v3 = 0uLL;
    v4 = 0uLL;
  }

  v6 = vaddq_f64(v5, vmlaq_n_f64(vmulq_n_f64(v4, y), v3, v9.x));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

- (CGPoint)anchorPoint
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)targetRectForCanvasRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(THBodyLayout *)self frameInRoot];
  v8 = -v7;
  v10 = -v9;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  return CGRectOffset(*&v11, v8, v10);
}

- (TSDCanvas)canvas
{
  layoutController = [(THBodyLayout *)self layoutController];

  return [layoutController canvas];
}

- (void)replaceChild:(id)child with:(id)with
{
  v8.receiver = self;
  v8.super_class = THBodyLayout;
  [THBodyLayout replaceChild:"replaceChild:with:" with:?];
  v7 = [(NSMutableSet *)self->mAttachedDrawableLayouts containsObject:child];
  if (child != with)
  {
    if (v7)
    {
      [(NSMutableSet *)self->mAttachedDrawableLayouts removeObject:child];
    }
  }
}

- (void)addAttachmentLayout:(id)layout
{
  if (!layout)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([layout parent] != self)
  {
    [(THBodyLayout *)self addChild:layout];
  }

  [layout updateChildrenFromInfo];
}

- (id)p_layoutForDrawable:(id)drawable inContainingLayout:(id)layout
{
  v7 = [objc_msgSend(layout "layoutController")];
  if (!v7)
  {
    v7 = [objc_alloc(objc_msgSend(drawable "layoutClass"))];
    if (v7)
    {
      [(NSMutableSet *)self->mAttachedDrawableLayouts addObject:v7];
      [layout addAttachmentLayout:v7];
    }
  }

  return v7;
}

- (id)validatedLayoutForAnchoredDrawable:(id)drawable
{
  v4 = [(THBodyLayout *)self p_layoutForDrawable:drawable inContainingLayout:[(THBodyLayout *)self parent]];
  [-[THBodyLayout layoutController](self "layoutController")];
  return v4;
}

- (id)p_attachedLayoutsInLayout:(id)layout anchored:(BOOL)anchored
{
  anchoredCopy = anchored;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  children = [layout children];
  v7 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v18;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(children);
      }

      objc_opt_class();
      v12 = TSUDynamicCast();
      if (v12)
      {
        v13 = v12;
        v14 = [objc_msgSend(v12 "info")];
        if (v14)
        {
          v15 = v14;
          if ([v14 isDrawable])
          {
            if ([v15 isAnchored] == anchoredCopy && -[NSMutableSet containsObject:](self->mAttachedDrawableLayouts, "containsObject:", v13))
            {
              if (v9)
              {
                [(NSMutableArray *)v9 addObject:v13];
              }

              else
              {
                v9 = [NSMutableArray arrayWithObject:v13];
              }
            }
          }
        }
      }
    }

    v8 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);
  return v9;
}

- (id)currentAnchoredDrawableLayouts
{
  parent = [(THBodyLayout *)self parent];

  return [(THBodyLayout *)self p_attachedLayoutsInLayout:parent anchored:1];
}

- (double)maxAnchorY
{
  [(THBodyLayout *)self position];
  v4 = v3;
  [(THBodyLayout *)self maxSize];
  return v4 + v5;
}

- (BOOL)isLayoutOffscreen
{
  layoutController = [(THBodyLayout *)self layoutController];

  return [layoutController isLayoutOffscreen];
}

- (CGPoint)layoutPositionFromAnchoredAttachmentPosition:(CGPoint)position
{
  if (self)
  {
    y = position.y;
    x = position.x;
    [(THBodyLayout *)self transform];
    position.y = y;
    position.x = x;
    v4 = v10;
    v3 = v11;
    v5 = v12;
  }

  else
  {
    v5 = 0uLL;
    v4 = 0uLL;
    v3 = 0uLL;
  }

  v6 = vaddq_f64(v5, vmlaq_n_f64(vmulq_n_f64(v3, position.y), v4, position.x));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

- (CGPoint)anchoredAttachmentPositionFromLayoutPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if (self)
  {
    [(THBodyLayout *)self transform];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  CGAffineTransformInvert(&v8, &v7);
  v3 = vaddq_f64(*&v8.tx, vmlaq_n_f64(vmulq_n_f64(*&v8.c, y), *&v8.a, x));
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block
{
  if ([(NSMutableArray *)[(THBodyLayout *)self columns] count])
  {
    v9 = [(NSMutableArray *)[(THBodyLayout *)self columns] objectAtIndex:0];
    lastObject = [(NSMutableArray *)[(THBodyLayout *)self columns] lastObject];
    range = [v9 range];
    v13 = v12;
    v21.location = [lastObject range];
    v21.length = v14;
    v20.location = range;
    v20.length = v13;
    v15 = NSUnionRange(v20, v21);
    v16 = [objc_msgSend(-[THBodyLayout info](self "info")] - v15.location - v15.length;
    if ([string length] - 1 < v16)
    {
      v16 = [string length] - 1;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_43624;
    v19[3] = &unk_45B9F8;
    v19[4] = self;
    v19[5] = block;
    v17 = [objc_msgSend(-[THBodyLayout info](self "info")];
    if (v17)
    {
      v18 = v17;
      if (([v17 isComplete] & 1) == 0)
      {
        do
        {
          [objc_msgSend(-[THBodyLayout info](self "info")];
        }

        while (![v18 isComplete]);
      }
    }
  }
}

- (CGPoint)calculatePointFromSearchReference:(id)reference
{
  objc_opt_class();
  [reference selection];
  v5 = TSUDynamicCast();
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = 0.0;
    if ([(NSMutableArray *)[(THBodyLayout *)self columns] count])
    {
      v9 = [[TSWPSelection alloc] initWithRange:{objc_msgSend(v7, "start"), 0}];
      [TSWPColumn rectForSelection:v9 withColumns:[(THBodyLayout *)self columns]];
      [(THBodyLayout *)self rectInRoot:?];
      v8 = v10;
      v6 = v11;
    }
  }

  else
  {
    v8 = 0.0;
  }

  v12 = v8;
  v13 = v6;
  result.y = v13;
  result.x = v12;
  return result;
}

- (THPageController)pageController
{
  parent = [(THBodyLayout *)self parent];

  return [parent pageController];
}

- (unint64_t)pageNumber
{
  parent = [(THBodyLayout *)self parent];

  return [parent relativePageIndex];
}

- (unint64_t)pageCount
{
  pageController = [(THBodyLayout *)self pageController];

  return [(THPageController *)pageController pageCount];
}

- (id)nonEmptyColumns
{
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  columns = [(THBodyLayout *)self columns];
  v5 = [(NSMutableArray *)columns countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(columns);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [v9 range];
        if (v10)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)columns countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)nextTargetFromLayout:(id)layout column:(id)column
{
  nonEmptyColumns = [-[THBodyLayout nonEmptyColumns](self nonEmptyColumns];
  if (nonEmptyColumns)
  {
    v6 = [[THGuidedPanColumnTarget alloc] initWithLayout:self column:nonEmptyColumns];

    return v6;
  }

  else
  {
    parent = [(THBodyLayout *)self parent];

    return [parent nextTargetFromLayout:self column:0];
  }
}

- (id)firstTarget
{
  result = [-[THBodyLayout nonEmptyColumns](self "nonEmptyColumns")];
  if (result)
  {
    v4 = -[THGuidedPanColumnTarget initWithLayout:column:]([THGuidedPanColumnTarget alloc], "initWithLayout:column:", self, [-[THBodyLayout nonEmptyColumns](self "nonEmptyColumns")]);

    return v4;
  }

  return result;
}

- (id)previousTargetFromLayout:(id)layout column:(id)column
{
  nonEmptyColumns = [-[THBodyLayout nonEmptyColumns](self nonEmptyColumns];
  if (nonEmptyColumns)
  {
    v6 = [[THGuidedPanColumnTarget alloc] initWithLayout:self column:nonEmptyColumns];

    return v6;
  }

  else
  {
    parent = [(THBodyLayout *)self parent];

    return [parent previousTargetFromLayout:self column:0];
  }
}

- (id)lastTarget
{
  result = [-[THBodyLayout nonEmptyColumns](self "nonEmptyColumns")];
  if (result)
  {
    v4 = -[THGuidedPanColumnTarget initWithLayout:column:]([THGuidedPanColumnTarget alloc], "initWithLayout:column:", self, [-[THBodyLayout nonEmptyColumns](self "nonEmptyColumns")]);

    return v4;
  }

  return result;
}

@end