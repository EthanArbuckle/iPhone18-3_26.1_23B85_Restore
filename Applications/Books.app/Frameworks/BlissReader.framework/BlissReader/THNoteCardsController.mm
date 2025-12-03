@interface THNoteCardsController
- (BOOL)canFlipTopCard;
- (BOOL)isBottomCardAtPoint:(CGPoint)point;
- (BOOL)isDraggingTopCard;
- (BOOL)isPointInsideTopCardFlipGlyph:(CGPoint)glyph;
- (BOOL)isShowingEmptyStudyCard;
- (BOOL)isTopCardAtPoint:(CGPoint)point;
- (BOOL)isTopCardFlipAffordancePressed;
- (BOOL)isTopCardPageNumberPressed;
- (BOOL)p_hitTest:(CGPoint)test noteCard:(id)card outset:(UIEdgeInsets)outset;
- (BOOL)topNoteCardIsFlipped;
- (CATransform3D)p_perspectiveTransformWithScale:(SEL)scale;
- (CGPoint)dragOffset;
- (CGPoint)shuffleOffset:(BOOL)offset;
- (CGRect)frameForBottomCardInHostView;
- (CGRect)frameForTopCardFlipGlyphInHostView;
- (CGRect)frameForTopCardInHostView;
- (CGRect)frameForTopCardPageNumberInHostView;
- (CGSize)maxCardSize;
- (CGSize)minCardSize;
- (THNoteCardsController)initWithDocumentRoot:(id)root;
- (id)p_createNewNoteCardLayer;
- (id)p_noteCardAtIndex:(int)index;
- (id)p_noteCardForPoint:(CGPoint)point;
- (id)p_noteCardsForInfos:(id)infos;
- (unint64_t)bookPageIndexForTopCard;
- (unint64_t)noteCardLayerCount;
- (void)animateBottomCardToTopInDirection:(CGPoint)direction;
- (void)animateTopCardToBottomInDirection:(CGPoint)direction;
- (void)attachToView:(id)view;
- (void)beginDragAtPoint:(CGPoint)point;
- (void)beginDraggingBottomCardAtPoint:(CGPoint)point;
- (void)beginDraggingTopCardAtPoint:(CGPoint)point;
- (void)dealloc;
- (void)endDragInDirection:(CGPoint)direction;
- (void)flipTopCard;
- (void)forceSwipeInDirection:(CGPoint)direction;
- (void)handleTopCardFlipAffordanceHovered:(BOOL)hovered;
- (void)handleTopCardFlipAffordancePressed:(BOOL)pressed;
- (void)handleTopCardPageNumberHovered:(BOOL)hovered;
- (void)handleTopCardPageNumberPressed:(BOOL)pressed;
- (void)noteCardDidSettle:(id)settle;
- (void)noteCardWillUnsettle:(id)unsettle;
- (void)p_animateCardToTopOrBottom:(id)bottom direction:(CGPoint)direction duration:(double)duration;
- (void)p_cancelDragAnimated:(BOOL)animated duration:(double)duration;
- (void)p_filterOptionsChanged;
- (void)p_handleDelayedCardUpdate;
- (void)p_makeTopCardInteractive;
- (void)p_makeTopCardNonInteractive;
- (void)p_populateNoteCard:(id)card withInfo:(id)info;
- (void)p_rebuildNoteCardInfos;
- (void)p_recreateNoteCardLayers;
- (void)p_reflectShuffleOptionsChangeWithCompletionBlock:(id)block;
- (void)p_reloadNoteCardAtIndex:(int)index noteCards:(id)cards noteCardInfos:(id)infos;
- (void)p_reloadNoteCardInfosFromNavigationUnit:(id)unit;
- (void)p_reloadNoteCards;
- (void)p_resetFlipOnBelowTopCard;
- (void)p_rotateNoteCardInfosToContentNode:(id)node;
- (void)p_setDynamicScale:(double)scale animated:(BOOL)animated duration:(double)duration;
- (void)p_setLayoutScale:(double)scale;
- (void)p_setScale:(double)scale animated:(BOOL)animated duration:(double)duration;
- (void)p_unfilteredNoteCardInfosChangedMoveToRight:(BOOL)right;
- (void)p_updateNoteCardOrder;
- (void)setDarkMode:(BOOL)mode;
- (void)setDragOffset:(CGPoint)offset;
- (void)setScalingMode:(int)mode;
- (void)studyOptionsDidChangeShuffle:(id)shuffle;
- (void)studyOptionsWillChangeShuffle:(id)shuffle;
- (void)updateFrame:(CGRect)frame insets:(UIEdgeInsets)insets animated:(BOOL)animated duration:(double)duration;
- (void)updateWithNavigationUnit:(id)unit contentNode:(id)node;
- (void)zoomOutAndFadeCards:(BOOL)cards duration:(double)duration;
@end

@implementation THNoteCardsController

- (THNoteCardsController)initWithDocumentRoot:(id)root
{
  if (!root)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v19.receiver = self;
  v19.super_class = THNoteCardsController;
  v5 = [(THNoteCardsController *)&v19 init];
  v6 = v5;
  if (v5)
  {
    v5->_documentRoot = root;
    v7 = -[THStudyOptions initWithUserDefaults:]([THStudyOptions alloc], "initWithUserDefaults:", [root bookUserDefaults]);
    v6->_options = v7;
    [(THStudyOptions *)v7 addObserver:v6];
    v6->_noteCards = objc_alloc_init(NSMutableArray);
    v6->_noteCardInfos = objc_alloc_init(NSMutableArray);
    v6->_delayedUpdateNoteCardIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6->_noteCardsView = objc_alloc_init(UIView);
    v6->_noteCardsLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(THNoteCardsController *)v6 p_perspectiveTransformWithScale:1.0];
    noteCardsLayer = v6->_noteCardsLayer;
    v18[4] = v18[12];
    v18[5] = v18[13];
    v18[6] = v18[14];
    v18[7] = v18[15];
    v18[0] = v18[8];
    v18[1] = v18[9];
    v18[2] = v18[10];
    v18[3] = v18[11];
    [(CALayer *)noteCardsLayer setSublayerTransform:v18];
    [(CALayer *)[(UIView *)v6->_noteCardsView layer] addSublayer:v6->_noteCardsLayer];
    v6->_interactiveViewsToLayers = +[NSMapTable weakToWeakObjectsMapTable];
    __asm { FMOV            V0.2D, #10.0 }

    v6->_minCardSize = _Q0;
    TSDMultiplySizeScalar();
    v6->_maxCardSize.width = v14;
    v6->_maxCardSize.height = v15;
    v6->_scalingMode = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *&v6->_layoutScale = _Q0;
  }

  return v6;
}

- (void)dealloc
{
  [(THStudyOptions *)self->_options removeObserver:self];

  [(NSArray *)[(CALayer *)self->_noteCardsLayer sublayers] makeObjectsPerformSelector:"removeFromSuperlayer"];
  [(CALayer *)self->_noteCardsLayer removeFromSuperlayer];

  v3.receiver = self;
  v3.super_class = THNoteCardsController;
  [(THNoteCardsController *)&v3 dealloc];
}

- (void)updateWithNavigationUnit:(id)unit contentNode:(id)node
{
  currentNavigationUnit = self->_currentNavigationUnit;
  [(NSArray *)[(THDocumentNavigationModel *)[(THDocumentRoot *)self->_documentRoot navigationModel] navigationUnits] indexOfObject:currentNavigationUnit];
  [(NSArray *)[(THDocumentNavigationModel *)[(THDocumentRoot *)self->_documentRoot navigationModel] navigationUnits] indexOfObject:unit];
  if (currentNavigationUnit != unit)
  {
    [(THNoteCardsController *)self p_reloadNoteCardInfosFromNavigationUnit:unit];

    self->_currentNavigationUnit = unit;
  }

  if (node)
  {
    [(THNoteCardsController *)self p_rotateNoteCardInfosToContentNode:node];
  }

  if (currentNavigationUnit == unit)
  {

    [(THNoteCardsController *)self p_reloadNoteCards];
  }

  else
  {

    [(THNoteCardsController *)self p_unfilteredNoteCardInfosChangedMoveToRight:?];
  }
}

- (void)attachToView:(id)view
{
  if (![view layer])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [view insertSubview:self->_noteCardsView atIndex:0];
  self->_hostView = view;
}

- (void)updateFrame:(CGRect)frame insets:(UIEdgeInsets)insets animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self->_noteCardsView setFrame:?];
  v15 = width - (left + right);
  [(CALayer *)self->_noteCardsLayer setFrame:x + left, y + top, v15, height - (top + bottom)];
  THScaleNeededToFitSizeInSize(895.0, 614.0, self->_minCardSize.width, self->_minCardSize.height);
  THScaleNeededToFitSizeInSize(895.0, 614.0, self->_maxCardSize.width, self->_maxCardSize.height);
  THScaleNeededToFitSizeInSize(895.0, 614.0, v15, height - (top + bottom));
  TSUClamp();
  [THNoteCardsController p_setScale:"p_setScale:animated:duration:" animated:animatedCopy duration:?];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  noteCards = self->_noteCards;
  v17 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(noteCards);
        }

        [*(*(&v22 + 1) + 8 * i) updateTransformAnimated:animatedCopy duration:duration];
      }

      v18 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  [(THNoteCardsController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THNoteCardsControllerDelegate *)[(THNoteCardsController *)self delegate] noteCardsControllerUpdatedTopCardFrame:self];
  }
}

- (void)setDarkMode:(BOOL)mode
{
  if (self->_darkMode != mode)
  {
    modeCopy = mode;
    self->_darkMode = mode;
    if ([(THNoteCardsController *)self p_topNoteCard])
    {
      [(THNoteCardsController *)self p_makeTopCardNonInteractive];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      noteCardInfos = self->_noteCardInfos;
      v6 = [(NSMutableArray *)noteCardInfos countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(noteCardInfos);
            }

            [*(*(&v20 + 1) + 8 * i) setDarkMode:modeCopy];
          }

          v7 = [(NSMutableArray *)noteCardInfos countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v7);
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      noteCards = self->_noteCards;
      v11 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(noteCards);
            }

            v15 = *(*(&v16 + 1) + 8 * j);
            [v15 setDarkMode:modeCopy];
            if ([objc_msgSend(v15 "frontLayer")])
            {
              [objc_msgSend(v15 "noteCardInfo")];
            }

            if ([objc_msgSend(v15 "backLayer")])
            {
              [objc_msgSend(v15 "noteCardInfo")];
            }
          }

          v12 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v12);
      }

      [(THNoteCardsController *)self p_makeTopCardInteractive];
    }
  }
}

- (void)setScalingMode:(int)mode
{
  if (self->_scalingMode != mode)
  {
    self->_scalingMode = mode;
    if (mode == 1)
    {

      [(THNoteCardsController *)self p_makeTopCardNonInteractive];
    }

    else if (!mode)
    {
      [(THNoteCardsController *)self p_setLayoutScale:self->_layoutScale * self->_dynamicScale];
      [(THNoteCardsController *)self p_setDynamicScale:1.0];

      [(THNoteCardsController *)self p_makeTopCardInteractive];
    }
  }
}

- (BOOL)isShowingEmptyStudyCard
{
  firstObject = [(NSMutableArray *)self->_noteCardInfos firstObject];

  return [firstObject isEmptyCard];
}

- (BOOL)canFlipTopCard
{
  p_topNoteCardInfo = [(THNoteCardsController *)self p_topNoteCardInfo];

  return [p_topNoteCardInfo hasBackContent];
}

- (BOOL)isPointInsideTopCardFlipGlyph:(CGPoint)glyph
{
  y = glyph.y;
  x = glyph.x;
  p_topNoteCard = [(THNoteCardsController *)self p_topNoteCard];
  [p_topNoteCard convertPoint:-[UIView layer](self->_hostView fromLayer:{"layer"), x, y}];

  return [p_topNoteCard isPointInsideFlipGlyph:?];
}

- (void)flipTopCard
{
  [(THNoteCardsController *)self p_handleDelayedCardUpdate];
  p_topNoteCard = [(THNoteCardsController *)self p_topNoteCard];
  p_topNoteCardInfo = [(THNoteCardsController *)self p_topNoteCardInfo];
  if (([p_topNoteCardInfo hasBackContent] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (([p_topNoteCard isFlipped] & 1) == 0 && (objc_msgSend(objc_msgSend(p_topNoteCard, "backLayer"), "hasBody") & 1) == 0)
  {
    [p_topNoteCardInfo populateNoteCardBack:{objc_msgSend(p_topNoteCard, "backLayer")}];
  }

  [p_topNoteCard flipAnimated:1 duration:0.5];
}

- (BOOL)isTopCardAtPoint:(CGPoint)point
{
  [(CALayer *)self->_noteCardsLayer convertPoint:[(UIView *)self->_hostView layer] fromLayer:point.x, point.y];
  v4 = [(THNoteCardsController *)self p_noteCardForPoint:?];
  if (v4)
  {
    LOBYTE(v4) = v4 == [(THNoteCardsController *)self p_topNoteCard];
  }

  return v4;
}

- (BOOL)isBottomCardAtPoint:(CGPoint)point
{
  [(CALayer *)self->_noteCardsLayer convertPoint:[(UIView *)self->_hostView layer] fromLayer:point.x, point.y];
  v5 = v4;
  v7 = v6;
  v8 = [(THNoteCardsController *)self p_noteCardForPoint:?];
  p_bottomNoteCard = [(THNoteCardsController *)self p_bottomNoteCard];
  v10 = p_bottomNoteCard;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = p_bottomNoteCard == 0;
  }

  if (!v11)
  {
    if ([(THNoteCardsController *)self p_hitTest:p_bottomNoteCard noteCard:v5 outset:v7, 0.0, 0.0, 30.0, 50.0])
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 && v8 == v10;
}

- (unint64_t)bookPageIndexForTopCard
{
  objc_opt_class();
  [(THNoteCardsController *)self p_topNoteCardInfo];
  v3 = TSUDynamicCast();
  if (!v3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return [v3 pageIndex];
}

- (void)animateTopCardToBottomInDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  if (self->_dragOffset.x != CGPointZero.x || self->_dragOffset.y != CGPointZero.y)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THNoteCardsController *)self p_handleDelayedCardUpdate];
  p_topNoteCard = [(THNoteCardsController *)self p_topNoteCard];
  if (p_topNoteCard)
  {

    [(THNoteCardsController *)self p_animateCardToTopOrBottom:p_topNoteCard direction:x duration:y, 0.600000024];
  }
}

- (void)animateBottomCardToTopInDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  if (self->_dragOffset.x != CGPointZero.x || self->_dragOffset.y != CGPointZero.y)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THNoteCardsController *)self p_handleDelayedCardUpdate];
  p_bottomNoteCard = [(THNoteCardsController *)self p_bottomNoteCard];
  if (p_bottomNoteCard)
  {

    [(THNoteCardsController *)self p_animateCardToTopOrBottom:p_bottomNoteCard direction:x duration:y, 0.600000024];
  }
}

- (void)beginDragAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(THNoteCardsController *)self p_handleDelayedCardUpdate];
  [(CALayer *)self->_noteCardsLayer convertPoint:[(UIView *)self->_hostView layer] fromLayer:x, y];
  v7 = v6;
  v9 = v8;
  v10 = [(THNoteCardsController *)self p_noteCardForPoint:?];
  self->_draggingNoteCard = v10;
  [(THNoteCardLayer *)v10 convertPoint:self->_noteCardsLayer fromLayer:v7, v9];
  [(THNoteCardLayer *)self->_draggingNoteCard bounds];
  TSDCenterOfRect();
  TSDSubtractPoints();
  draggingNoteCard = self->_draggingNoteCard;

  [(THNoteCardLayer *)draggingNoteCard setDragAnchor:?];
}

- (void)beginDraggingTopCardAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(THNoteCardsController *)self p_handleDelayedCardUpdate];
  [(CALayer *)self->_noteCardsLayer convertPoint:[(UIView *)self->_hostView layer] fromLayer:x, y];
  v7 = v6;
  v9 = v8;
  p_topNoteCard = [(THNoteCardsController *)self p_topNoteCard];
  self->_draggingNoteCard = p_topNoteCard;
  [(THNoteCardLayer *)p_topNoteCard convertPoint:self->_noteCardsLayer fromLayer:v7, v9];
  [(THNoteCardLayer *)self->_draggingNoteCard bounds];
  TSDCenterOfRect();
  TSDSubtractPoints();
  draggingNoteCard = self->_draggingNoteCard;

  [(THNoteCardLayer *)draggingNoteCard setDragAnchor:?];
}

- (void)beginDraggingBottomCardAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(THNoteCardsController *)self p_handleDelayedCardUpdate];
  [(CALayer *)self->_noteCardsLayer convertPoint:[(UIView *)self->_hostView layer] fromLayer:x, y];
  v7 = v6;
  v9 = v8;
  p_bottomNoteCard = [(THNoteCardsController *)self p_bottomNoteCard];
  self->_draggingNoteCard = p_bottomNoteCard;
  [(THNoteCardLayer *)p_bottomNoteCard convertPoint:self->_noteCardsLayer fromLayer:v7, v9];
  [(THNoteCardLayer *)self->_draggingNoteCard bounds];
  TSDCenterOfRect();
  TSDSubtractPoints();
  draggingNoteCard = self->_draggingNoteCard;

  [(THNoteCardLayer *)draggingNoteCard setDragAnchor:?];
}

- (void)handleTopCardPageNumberHovered:(BOOL)hovered
{
  hoveredCopy = hovered;
  v4 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];

  [v4 setPageNumberHovered:hoveredCopy];
}

- (void)handleTopCardPageNumberPressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v4 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];

  [v4 setPageNumberPressed:pressedCopy];
}

- (BOOL)isTopCardPageNumberPressed
{
  v2 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];

  return [v2 pageNumberPressed];
}

- (void)handleTopCardFlipAffordanceHovered:(BOOL)hovered
{
  hoveredCopy = hovered;
  v4 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];

  [v4 setFlipAffordanceHovered:hoveredCopy];
}

- (void)handleTopCardFlipAffordancePressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v4 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];

  [v4 setFlipAffordancePressed:pressedCopy];
}

- (BOOL)isTopCardFlipAffordancePressed
{
  v2 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];

  return [v2 flipAffordancePressed];
}

- (void)setDragOffset:(CGPoint)offset
{
  self->_dragOffset = offset;
  [(THNoteCardLayer *)self->_draggingNoteCard setDragOffset:offset.x / self->_dynamicScale, offset.y / self->_dynamicScale];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  noteCards = self->_noteCards;
  v5 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(noteCards);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (v9 != self->_draggingNoteCard)
        {
          [(THNoteCardLayer *)v9 updateTransformAnimated:0 duration:0.0];
        }
      }

      v6 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  if ([(THNoteCardLayer *)self->_draggingNoteCard isTopCard])
  {
    if (![(THNoteCardLayer *)self->_draggingNoteCard poppedState])
    {
      [(THNoteCardLayer *)self->_draggingNoteCard popAnimated:1 duration:0.150000006];
    }
  }
}

- (void)endDragInDirection:(CGPoint)direction
{
  y = direction.y;
  x = direction.x;
  self->_dragOffset = CGPointZero;
  if ([(THNoteCardLayer *)self->_draggingNoteCard draggedPastThreshold]&& [(THNoteCardsController *)self showingMultipleCards])
  {
    [(THNoteCardsController *)self p_completeDragInDirection:x animationDuration:y, 0.600000024];
  }

  else
  {
    [(THNoteCardsController *)self p_cancelDragAnimated:1 duration:0.300000012];
  }

  if ([(THNoteCardLayer *)self->_draggingNoteCard poppedState]== 3 || [(THNoteCardLayer *)self->_draggingNoteCard poppedState]== 1)
  {
    [(THNoteCardLayer *)self->_draggingNoteCard unpopAnimated:1 duration:0.150000006];
  }

  self->_draggingNoteCard = 0;
}

- (void)forceSwipeInDirection:(CGPoint)direction
{
  self->_dragOffset = CGPointZero;
  [(THNoteCardsController *)self p_completeDragInDirection:direction.x animationDuration:direction.y, 0.600000024];
  if ([(THNoteCardLayer *)self->_draggingNoteCard poppedState]== 3 || [(THNoteCardLayer *)self->_draggingNoteCard poppedState]== 1)
  {
    [(THNoteCardLayer *)self->_draggingNoteCard unpopAnimated:1 duration:0.150000006];
  }

  self->_draggingNoteCard = 0;
}

- (CGRect)frameForTopCardPageNumberInHostView
{
  v3 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];
  layer = [(UIView *)self->_hostView layer];
  [v3 pageNumberLabelFrame];

  [(CALayer *)layer convertRect:v3 fromLayer:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForTopCardFlipGlyphInHostView
{
  v3 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];
  layer = [(UIView *)self->_hostView layer];
  [v3 flipGlyphFrame];

  [(CALayer *)layer convertRect:v3 fromLayer:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)frameForTopCardInHostView
{
  v3 = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];
  layer = [(UIView *)self->_hostView layer];
  [v3 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  superlayer = [v3 superlayer];

  [(CALayer *)layer convertRect:superlayer fromLayer:v6, v8, v10, v12];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameForBottomCardInHostView
{
  v3 = [-[THNoteCardsController p_bottomNoteCard](self "p_bottomNoteCard")];
  layer = [(UIView *)self->_hostView layer];
  [v3 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  superlayer = [v3 superlayer];

  [(CALayer *)layer convertRect:superlayer fromLayer:v6, v8, v10, v12];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)p_cancelDragAnimated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  [THNoteCardLayer cancelDragAnimated:"cancelDragAnimated:duration:" duration:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  noteCards = self->_noteCards;
  v8 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(noteCards);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (v12 != self->_draggingNoteCard)
        {
          [(THNoteCardLayer *)v12 updateTransformAnimated:animatedCopy duration:duration];
        }
      }

      v9 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)p_handleDelayedCardUpdate
{
  delayedUpdateNoteCardIndex = self->_delayedUpdateNoteCardIndex;
  if (delayedUpdateNoteCardIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THNoteCardsController *)self p_reloadNoteCardAtIndex:delayedUpdateNoteCardIndex noteCards:self->_noteCards noteCardInfos:self->_noteCardInfos];
    self->_delayedUpdateNoteCardIndex = 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)p_resetFlipOnBelowTopCard
{
  v3 = [(NSMutableArray *)self->_noteCards count];
  if (v3 >= 2 && v3 - 2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSMutableArray *)self->_noteCards objectAtIndex:?];
    if ([v5 isFlipped])
    {

      [v5 setFlipped:0];
    }
  }
}

- (void)zoomOutAndFadeCards:(BOOL)cards duration:(double)duration
{
  cardsCopy = cards;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  noteCards = [(THNoteCardsController *)self noteCards];
  v7 = [(NSArray *)noteCards countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(noteCards);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (cardsCopy)
        {
          [*(*(&v15 + 1) + 8 * v10) setScaleFactor:1 darkerBackground:0 animated:0.85 duration:duration];
          v12 = 1.0;
          v13 = v11;
          v14 = 0;
        }

        else
        {
          v13 = *(*(&v15 + 1) + 8 * v10);
          v12 = 0.85;
          v14 = 1;
        }

        [v13 setScaleFactor:v14 darkerBackground:1 animated:v12 duration:duration];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)noteCards countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (unint64_t)noteCardLayerCount
{
  result = [(NSMutableArray *)self->_noteCards count];
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

- (BOOL)topNoteCardIsFlipped
{
  p_topNoteCard = [(THNoteCardsController *)self p_topNoteCard];

  return [p_topNoteCard isFlipped];
}

- (BOOL)isDraggingTopCard
{
  draggingNoteCard = self->_draggingNoteCard;
  if (draggingNoteCard)
  {
    LOBYTE(draggingNoteCard) = [(THNoteCardLayer *)draggingNoteCard isTopCard];
  }

  return draggingNoteCard;
}

- (CGPoint)dragOffset
{
  x = self->_dragOffset.x;
  y = self->_dragOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)shuffleOffset:(BOOL)offset
{
  offsetCopy = offset;
  [(UIView *)self->_hostView bounds];
  Width = CGRectGetWidth(v7);
  if (offsetCopy)
  {
    Width = -Width;
  }

  v5 = 0.0;
  result.y = v5;
  result.x = Width;
  return result;
}

- (void)noteCardWillUnsettle:(id)unsettle
{
  if ([unsettle isTopCard])
  {

    [(THNoteCardsController *)self p_makeTopCardNonInteractive];
  }
}

- (void)noteCardDidSettle:(id)settle
{
  if ([settle isTopCard])
  {

    [(THNoteCardsController *)self p_makeTopCardInteractive];
  }
}

- (void)studyOptionsWillChangeShuffle:(id)shuffle
{
  if (!self->_isShufflingCards)
  {
    [(THNoteCardsController *)self p_recreateNoteCardLayers];
  }
}

- (void)studyOptionsDidChangeShuffle:(id)shuffle
{
  if ([(NSMutableArray *)self->_noteCardInfos count]>= 2 && !self->_isShufflingCards)
  {
    self->_isShufflingCards = 1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1CBF8C;
    v5[3] = &unk_45CEE0;
    shuffle = [(THStudyOptions *)[(THNoteCardsController *)self studyOptions] shuffle];
    v5[4] = self;
    v5[5] = shuffle;
    [(THNoteCardsController *)self p_reflectShuffleOptionsChangeWithCompletionBlock:v5];
  }
}

- (void)p_reloadNoteCardInfosFromNavigationUnit:(id)unit
{
  self->_unfilteredNoteCardInfos = 0;
  v5 = objc_alloc_init(NSMutableArray);
  annotationController = [(THDocumentRoot *)self->_documentRoot annotationController];
  selfCopy = self;
  glossaryController = [(THDocumentRoot *)self->_documentRoot glossaryController];
  contentNodes = [unit contentNodes];
  model = [(THGlossaryController *)glossaryController model];
  v26 = +[NSMutableSet set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = contentNodes;
  v9 = [contentNodes countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = THBundle();
        if (v10)
        {
          v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v14 localizedStringForKey:@"SECTION: %lu \\U2014 %@" value:&stru_471858 table:0], v10, objc_msgSend(v13, "title"));
        }

        else
        {
          v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v14 localizedStringForKey:@"%@" value:&stru_471858 table:0], objc_msgSend(v13, "title"));
        }

        v16 = v15;
        v17 = [(THAnnotationStorageController *)annotationController cachedAnnotationsForContentNode:v13];
        v32[0] = 0;
        v32[1] = v32;
        v32[2] = 0x3052000000;
        v32[3] = sub_1CC3F0;
        v32[4] = sub_1CC400;
        v32[5] = 0;
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_1CC40C;
        v31[3] = &unk_45F048;
        v31[7] = v5;
        v31[8] = v32;
        v31[4] = v13;
        v31[5] = selfCopy;
        v31[6] = v16;
        [v17 enumerateAnnotationsWithBlock:v31];
        [v26 addObjectsFromArray:{-[THModelGlossary pathsForEntriesInContentNode:](model, "pathsForEntriesInContentNode:", v13)}];
        ++v10;
        _Block_object_dispose(v32, 8);
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [v26 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v18)
  {
    v19 = *v28;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v26);
        }

        v21 = [(THModelGlossary *)model entryForPath:*(*(&v27 + 1) + 8 * j)];
        v22 = objc_alloc_init(THGlossaryNoteCardInfo);
        [(THGlossaryNoteCardInfo *)v22 setGlossaryEntry:v21];
        -[THGlossaryNoteCardInfo setTitle:](v22, "setTitle:", [THBundle() localizedStringForKey:@"GLOSSARY TERM" value:&stru_471858 table:0]);
        -[THGlossaryNoteCardInfo setBackTitle:](v22, "setBackTitle:", [THBundle() localizedStringForKey:@"DEFINITION" value:&stru_471858 table:0]);
        [(NSMutableArray *)v5 addObject:v22];
      }

      v18 = [v26 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v18);
  }

  selfCopy->_unfilteredNoteCardInfos = v5;
  [(THNoteCardsController *)selfCopy p_updateNoteCardOrder];
}

- (void)p_rotateNoteCardInfosToContentNode:(id)node
{
  v4 = +[NSSet setWithArray:](NSSet, "setWithArray:", [-[THAnnotationStorageController cachedAnnotationsForContentNode:](-[THDocumentRoot annotationController](self->_documentRoot "annotationController")]);
  if ([(NSSet *)v4 count]&& [(NSMutableArray *)self->_unfilteredNoteCardInfos count])
  {
    v5 = 0;
    do
    {
      lastObject = [(NSMutableArray *)self->_unfilteredNoteCardInfos lastObject];
      objc_opt_class();
      v7 = TSUDynamicCast();
      if (v7 && -[NSSet containsObject:](v4, "containsObject:", [v7 annotation]))
      {
        break;
      }

      [(NSMutableArray *)self->_unfilteredNoteCardInfos insertObject:lastObject atIndex:0];
      [(NSMutableArray *)self->_unfilteredNoteCardInfos removeLastObject];
      ++v5;
    }

    while (v5 < [(NSMutableArray *)self->_unfilteredNoteCardInfos count]);
  }
}

- (void)p_updateNoteCardOrder
{
  shuffle = [(THStudyOptions *)self->_options shuffle];
  unfilteredNoteCardInfos = self->_unfilteredNoteCardInfos;
  if (shuffle)
  {

    [(NSMutableArray *)unfilteredNoteCardInfos shuffle];
  }

  else
  {

    [(NSMutableArray *)unfilteredNoteCardInfos sortUsingComparator:&stru_45F088];
  }
}

- (void)p_rebuildNoteCardInfos
{
  [(NSMutableArray *)self->_noteCardInfos removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  unfilteredNoteCardInfos = self->_unfilteredNoteCardInfos;
  v4 = [(NSMutableArray *)unfilteredNoteCardInfos countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(unfilteredNoteCardInfos);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        if ([v8 shouldShowWithStudyOptions:self->_options])
        {
          [(NSMutableArray *)self->_noteCardInfos addObject:v8];
        }
      }

      v5 = [(NSMutableArray *)unfilteredNoteCardInfos countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  if (![(NSMutableArray *)self->_noteCardInfos count])
  {
    v9 = objc_alloc_init(THEmptyNoteCardInfo);
    [(THEmptyNoteCardInfo *)v9 setStudyOptions:self->_options];
    [(THEmptyNoteCardInfo *)v9 setIsUnfilteredContentAvailable:[(NSMutableArray *)self->_unfilteredNoteCardInfos count]!= 0];
    [(NSMutableArray *)self->_noteCardInfos addObject:v9];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  noteCardInfos = self->_noteCardInfos;
  v11 = [(NSMutableArray *)noteCardInfos countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(noteCardInfos);
        }

        [*(*(&v15 + 1) + 8 * j) setDarkMode:self->_darkMode];
      }

      v12 = [(NSMutableArray *)noteCardInfos countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  self->_noteCardInfosUnrotated = [(NSMutableArray *)self->_noteCardInfos copy];
}

- (id)p_noteCardsForInfos:(id)infos
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [infos count];
  if (v6 >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if (v6)
  {
    do
    {
      p_createNewNoteCardLayer = [(THNoteCardsController *)self p_createNewNoteCardLayer];
      [p_createNewNoteCardLayer setCardIndex:{objc_msgSend(v5, "count")}];
      [v5 addObject:p_createNewNoteCardLayer];

      --v7;
    }

    while (v7);
  }

  [(THNoteCardsController *)self p_reloadNoteCardAtIndex:3 noteCards:v5 noteCardInfos:infos];
  [(THNoteCardsController *)self p_reloadNoteCardAtIndex:2 noteCards:v5 noteCardInfos:infos];
  [(THNoteCardsController *)self p_reloadNoteCardAtIndex:1 noteCards:v5 noteCardInfos:infos];
  [(THNoteCardsController *)self p_reloadNoteCardAtIndex:0 noteCards:v5 noteCardInfos:infos];

  return v5;
}

- (void)p_recreateNoteCardLayers
{
  [(NSMutableArray *)self->_noteCards removeAllObjects];
  [(NSArray *)[(CALayer *)self->_noteCardsLayer sublayers] makeObjectsPerformSelector:"removeFromSuperlayer"];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  keyEnumerator = [(NSMapTable *)self->_interactiveViewsToLayers keyEnumerator];
  v4 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        [*(*(&v29 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [(NSEnumerator *)keyEnumerator countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_interactiveViewsToLayers removeAllObjects];
  v8 = [(THNoteCardsController *)self p_noteCardsForInfos:self->_noteCardInfos];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * j);
        [(NSMutableArray *)self->_noteCards addObject:v13];
        [(CALayer *)self->_noteCardsLayer addSublayer:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v10);
  }

  if ([(NSMutableArray *)self->_noteCards count])
  {
    v14 = 0;
    do
    {
      [-[NSMutableArray objectAtIndex:](self->_noteCards objectAtIndex:{v14), "setCardIndex:", v14}];
      ++v14;
    }

    while (v14 < [(NSMutableArray *)self->_noteCards count]);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  noteCards = self->_noteCards;
  v16 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    y = CGPointZero.y;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(noteCards);
        }

        [*(*(&v21 + 1) + 8 * k) setDragAnchor:{CGPointZero.x, y}];
      }

      v17 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  [(THNoteCardsController *)self noteCardDidSettle:[(THNoteCardsController *)self p_topNoteCard]];
}

- (void)p_reloadNoteCards
{
  [(THNoteCardsController *)self p_rebuildNoteCardInfos];

  [(THNoteCardsController *)self p_recreateNoteCardLayers];
}

- (void)p_populateNoteCard:(id)card withInfo:(id)info
{
  if ([card isFlipped])
  {
    [card setFlipped:0];
  }

  [objc_msgSend(card "frontLayer")];
  [objc_msgSend(card "backLayer")];
  [info populateNoteCardFront:{objc_msgSend(card, "frontLayer")}];
  [card setNoteCardInfo:info];
  if (([info isEmptyCard] & 1) == 0)
  {
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"%lu of %lu" value:&stru_471858 table:0], -[NSArray count](self->_noteCardInfosUnrotated, "count") - -[NSArray indexOfObject:](self->_noteCardInfosUnrotated, "indexOfObject:", info), -[THNoteCardsController noteCardCount](self, "noteCardCount"));
    [objc_msgSend(card "frontLayer")];
    backLayer = [card backLayer];

    [backLayer setCardNumberString:v7];
  }
}

- (void)p_reloadNoteCardAtIndex:(int)index noteCards:(id)cards noteCardInfos:(id)infos
{
  v9 = [infos count];
  if (v9 < [cards count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v10 = [cards count];
  v11 = [infos count];
  if (index > 1)
  {
    if (index == 2)
    {
      if (v10 <= 1)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10 - 2;
      }

      if (v11 <= 1)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11 - 2;
      }
    }

    else
    {
      if (index != 3)
      {
        return;
      }

      if (v10)
      {
        v12 = v10 - 1;
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        v13 = v11 - 1;
      }

      else
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  else if (index)
  {
    if (index != 1)
    {
      return;
    }

    if (v10 > 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v11 > 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v12 != v13)
    {
      v16 = +[TSUAssertionHandler currentHandler];
      v17 = [NSString stringWithUTF8String:"[THNoteCardsController p_reloadNoteCardAtIndex:noteCards:noteCardInfos:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THNoteCardsController.m"];

      [v16 handleFailureInFunction:v17 file:v18 lineNumber:1114 description:@"indexes should both be valid or invalid at the same time"];
    }
  }

  else
  {
    v14 = [cards objectAtIndex:?];
    v15 = [infos objectAtIndex:v13];

    [(THNoteCardsController *)self p_populateNoteCard:v14 withInfo:v15];
  }
}

- (CATransform3D)p_perspectiveTransformWithScale:(SEL)scale
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  result = CATransform3DMakeScale(retstr, a4, a4, 1.0);
  retstr->m34 = -0.000285714286;
  return result;
}

- (void)p_setScale:(double)scale animated:(BOOL)animated duration:(double)duration
{
  scalingMode = self->_scalingMode;
  if (scalingMode == 1)
  {
    v9 = scale / self->_layoutScale;

    [(THNoteCardsController *)self p_setDynamicScale:animated animated:v9 duration:duration];
  }

  else if (!scalingMode)
  {
    if (animated)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    }

    v8 = scale / self->_dynamicScale;

    [(THNoteCardsController *)self p_setLayoutScale:v8, duration];
  }
}

- (void)p_setLayoutScale:(double)scale
{
  layoutScale = self->_layoutScale;
  if (layoutScale != scale && vabdd_f64(layoutScale, scale) >= fabs(scale * 0.000000999999997))
  {
    self->_layoutScale = scale;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    noteCards = self->_noteCards;
    v6 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(noteCards);
          }

          [*(*(&v10 + 1) + 8 * i) setLayoutContext:{+[THNoteCardLayoutContext contextWithScale:hostView:](THNoteCardLayoutContext, "contextWithScale:hostView:", self->_noteCardsView, self->_layoutScale)}];
        }

        v7 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)p_setDynamicScale:(double)scale animated:(BOOL)animated duration:(double)duration
{
  animatedCopy = animated;
  self->_dynamicScale = scale;
  v9 = 0uLL;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  noteCardsLayer = self->_noteCardsLayer;
  if (noteCardsLayer)
  {
    [(CALayer *)noteCardsLayer sublayerTransform];
    v9 = 0uLL;
  }

  v26 = v9;
  v27 = v9;
  v24 = v9;
  v25 = v9;
  v22 = v9;
  v23 = v9;
  v20 = v9;
  v21 = v9;
  [(THNoteCardsController *)self p_perspectiveTransformWithScale:scale];
  v16 = v24;
  v17 = v25;
  v18 = v26;
  v19 = v27;
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  [(CALayer *)self->_noteCardsLayer setSublayerTransform:&v12];
  if (animatedCopy)
  {
    v11 = [CABasicAnimation animationWithKeyPath:@"sublayerTransform"];
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v12 = v28;
    v13 = v29;
    v14 = v30;
    v15 = v31;
    [(CABasicAnimation *)v11 setFromValue:[NSValue valueWithCATransform3D:&v12]];
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v12 = v20;
    v13 = v21;
    v14 = v22;
    v15 = v23;
    [(CABasicAnimation *)v11 setToValue:[NSValue valueWithCATransform3D:&v12]];
    [(CABasicAnimation *)v11 setDuration:duration];
    [(CABasicAnimation *)v11 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [(CALayer *)self->_noteCardsLayer addAnimation:v11 forKey:@"noteCardsLayerSublayerTransform"];
  }
}

- (id)p_createNewNoteCardLayer
{
  v3 = [[THNoteCardLayer alloc] initWithDelegate:self darkMode:self->_darkMode];
  [(THNoteCardLayer *)v3 setLayoutContext:[THNoteCardLayoutContext contextWithScale:self->_noteCardsView hostView:self->_layoutScale]];
  return v3;
}

- (BOOL)p_hitTest:(CGPoint)test noteCard:(id)card outset:(UIEdgeInsets)outset
{
  right = outset.right;
  bottom = outset.bottom;
  left = outset.left;
  top = outset.top;
  [card convertPoint:self->_noteCardsLayer fromLayer:{test.x, test.y}];
  v11 = v10;
  v13 = v12;
  [card bounds];
  v15 = v14 - left;
  v17 = v16 - top;
  v19 = left + right + v18;
  v21 = top + bottom + v20;
  v22 = v11;
  v23 = v13;

  return CGRectContainsPoint(*&v15, *&v22);
}

- (id)p_noteCardForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  reverseObjectEnumerator = [(NSArray *)[(CALayer *)self->_noteCardsLayer sublayers] reverseObjectEnumerator];
  result = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      [v11 convertPoint:self->_noteCardsLayer fromLayer:{x, y}];
      if ([v11 containsPoint:?])
      {
        objc_opt_class();
        result = TSUDynamicCast();
        if (result)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        result = [(NSEnumerator *)reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
        v8 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

- (id)p_noteCardAtIndex:(int)index
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  noteCards = self->_noteCards;
  v5 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
  indexCopy = index;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(noteCards);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 cardIndex] == indexCopy)
    {
      return v10;
    }

    if (v6 == ++v9)
    {
      v6 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)p_animateCardToTopOrBottom:(id)bottom direction:(CGPoint)direction duration:(double)duration
{
  y = direction.y;
  x = direction.x;
  if ([(THNoteCardsController *)self p_topNoteCard]!= bottom && [(THNoteCardsController *)self p_bottomNoteCard]!= bottom)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_topNoteCard = [(THNoteCardsController *)self p_topNoteCard];
  [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];
  noteCards = self->_noteCards;
  if (p_topNoteCard == bottom)
  {
    [(NSMutableArray *)noteCards moveLastObjectToFirst];
    [(NSMutableArray *)self->_noteCardInfos moveLastObjectToFirst];
    v12 = 2;
  }

  else
  {
    [(NSMutableArray *)noteCards moveFirstObjectToLast];
    [(NSMutableArray *)self->_noteCardInfos moveFirstObjectToLast];
    v12 = 1;
  }

  self->_delayedUpdateNoteCardIndex = v12;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = self->_noteCards;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v25;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        if (v19 == bottom)
        {
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1CDB74;
          v23[3] = &unk_45AE00;
          v23[4] = self;
          [bottom completeDragInDirection:v16 newCardIndex:1 animated:v23 duration:x completion:{y, duration}];
          if (p_topNoteCard == bottom)
          {
            v20 = 0;
          }

          else
          {
            v20 = [(NSMutableArray *)self->_noteCards count];
          }

          [(CALayer *)self->_noteCardsLayer insertSublayer:v19 atIndex:v20];
        }

        else
        {
          [*(*(&v24 + 1) + 8 * i) setCardIndex:v16 animated:1 duration:duration * 0.5];
        }

        ++v16;
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }

  p_topNoteCard2 = [(THNoteCardsController *)self p_topNoteCard];
  if (p_topNoteCard2 != [(NSArray *)[(CALayer *)self->_noteCardsLayer sublayers] lastObject])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  p_bottomNoteCard = [(THNoteCardsController *)self p_bottomNoteCard];
  if (p_bottomNoteCard != [(NSArray *)[(CALayer *)self->_noteCardsLayer sublayers] firstObject])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }
}

- (void)p_filterOptionsChanged
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_recreateNoteCardLayers" object:0];
  v3 = [(NSMutableArray *)self->_noteCardInfos copy];
  [(THNoteCardsController *)self p_rebuildNoteCardInfos];
  v4 = objc_alloc_init(NSMutableArray);
  v5 = objc_alloc_init(NSMutableArray);
  v99 = objc_alloc_init(NSMutableArray);
  if ([v3 count] == &dword_0 + 1 && -[NSMutableArray count](self->_noteCardInfos, "count") == &dword_0 + 1)
  {
    objc_opt_class();
    [v3 firstObject];
    v6 = TSUDynamicCast() != 0;
    objc_opt_class();
    [(NSMutableArray *)self->_noteCardInfos firstObject];
    v7 = TSUDynamicCast();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v103 = v8;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6;
    }

    v100 = v9;
  }

  else
  {
    v103 = 0;
    v100 = 0;
  }

  v10 = objc_alloc_init(NSMutableArray);
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v11 = [v3 countByEnumeratingWithState:&v118 objects:v125 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v119;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v119 != v13)
        {
          objc_enumerationMutation(v3);
        }

        v15 = *(*(&v118 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_noteCardInfos containsObject:v15]& 1) == 0)
        {
          [v10 addObject:v15];
        }
      }

      v12 = [v3 countByEnumeratingWithState:&v118 objects:v125 count:16];
    }

    while (v12);
  }

  v104 = v10;
  v16 = objc_alloc_init(NSMutableArray);
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  noteCardInfos = self->_noteCardInfos;
  v18 = [(NSMutableArray *)noteCardInfos countByEnumeratingWithState:&v114 objects:v124 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v115;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v115 != v20)
        {
          objc_enumerationMutation(noteCardInfos);
        }

        v22 = *(*(&v114 + 1) + 8 * j);
        if (([v3 containsObject:v22] & 1) == 0)
        {
          [v16 addObject:v22];
        }
      }

      v19 = [(NSMutableArray *)noteCardInfos countByEnumeratingWithState:&v114 objects:v124 count:16];
    }

    while (v19);
  }

  v23 = v99;
  v24 = v103;
  if (!v103)
  {
    v25 = [v3 count];
    if (v25 < [(NSMutableArray *)self->_noteCardInfos count]|| v100)
    {
      if ([(NSMutableArray *)self->_noteCards count])
      {
        v26 = 0;
        do
        {
          if ([v104 containsObject:{objc_msgSend(v3, "objectAtIndex:", v26)}])
          {
            [v99 addObject:{-[NSMutableArray objectAtIndex:](self->_noteCards, "objectAtIndex:", v26)}];
          }

          ++v26;
        }

        while (v26 < [(NSMutableArray *)self->_noteCards count]);
      }

      v27 = [(NSMutableArray *)self->_noteCardInfos mutableCopy];
      v101 = [v16 mutableCopy];
      if ([v27 count])
      {
        lastObject = [v3 lastObject];
        if (lastObject != [v27 lastObject])
        {
          lastObject2 = [v27 lastObject];
          p_createNewNoteCardLayer = [(THNoteCardsController *)self p_createNewNoteCardLayer];
          [(THNoteCardsController *)self p_populateNoteCard:p_createNewNoteCardLayer withInfo:lastObject2];
          [(CALayer *)self->_noteCardsLayer addSublayer:p_createNewNoteCardLayer];
          [p_createNewNoteCardLayer setFilteredOut:1];
          v31 = [(NSMutableArray *)self->_noteCardInfos count];
          if (v31 >= 4)
          {
            v32 = 4;
          }

          else
          {
            v32 = v31;
          }

          [p_createNewNoteCardLayer setCardIndex:v32];
          y = CGPointZero.y;
          [p_createNewNoteCardLayer setDragAnchor:{CGPointZero.x, y}];
          [p_createNewNoteCardLayer setDragOffset:{CGPointZero.x, y}];
          [(NSMutableArray *)self->_noteCards addObject:p_createNewNoteCardLayer];

          [v4 addObject:p_createNewNoteCardLayer];
          [v27 removeObject:lastObject2];
          [v101 removeObject:lastObject2];
        }
      }

      if ([v27 count])
      {
        firstObject = [v3 firstObject];
        if (firstObject != [v27 firstObject])
        {
          firstObject2 = [v27 firstObject];
          p_createNewNoteCardLayer2 = [(THNoteCardsController *)self p_createNewNoteCardLayer];
          [(THNoteCardsController *)self p_populateNoteCard:p_createNewNoteCardLayer2 withInfo:firstObject2];
          [(CALayer *)self->_noteCardsLayer addSublayer:p_createNewNoteCardLayer2];
          [p_createNewNoteCardLayer2 setFilteredOut:1];
          [p_createNewNoteCardLayer2 setCardIndex:0];
          v37 = CGPointZero.y;
          [p_createNewNoteCardLayer2 setDragAnchor:{CGPointZero.x, v37}];
          [p_createNewNoteCardLayer2 setDragOffset:{CGPointZero.x, v37}];
          [(NSMutableArray *)self->_noteCards insertObject:p_createNewNoteCardLayer2 atIndex:0];

          [v4 addObject:p_createNewNoteCardLayer2];
          [v27 removeObject:firstObject2];
          [v101 removeObject:firstObject2];
        }
      }

      v38 = v101;
      if ([v101 count])
      {
        lastObject3 = [v101 lastObject];
        p_createNewNoteCardLayer3 = [(THNoteCardsController *)self p_createNewNoteCardLayer];
        [(THNoteCardsController *)self p_populateNoteCard:p_createNewNoteCardLayer3 withInfo:lastObject3];
        [(CALayer *)self->_noteCardsLayer addSublayer:p_createNewNoteCardLayer3];
        [p_createNewNoteCardLayer3 setFilteredOut:1];
        v41 = [(NSMutableArray *)self->_noteCardInfos count];
        if ((v41 - 1) >= 3)
        {
          v42 = 3;
        }

        else
        {
          v42 = (v41 - 1);
        }

        [p_createNewNoteCardLayer3 setCardIndex:v42];
        v43 = CGPointZero.y;
        [p_createNewNoteCardLayer3 setDragAnchor:{CGPointZero.x, v43}];
        [p_createNewNoteCardLayer3 setDragOffset:{CGPointZero.x, v43}];
        noteCards = self->_noteCards;
        v45 = [(NSMutableArray *)noteCards count]- 1;
        v46 = noteCards;
        v24 = v103;
        [(NSMutableArray *)v46 insertObject:p_createNewNoteCardLayer3 atIndex:v45];

        [v4 addObject:p_createNewNoteCardLayer3];
        [v27 removeObject:lastObject3];
        v47 = lastObject3;
        v38 = v101;
        [v101 removeObject:v47];
      }

      if ([v38 count])
      {
        firstObject3 = [v38 firstObject];
        p_createNewNoteCardLayer4 = [(THNoteCardsController *)self p_createNewNoteCardLayer];
        [(THNoteCardsController *)self p_populateNoteCard:p_createNewNoteCardLayer4 withInfo:firstObject3];
        [(CALayer *)self->_noteCardsLayer addSublayer:p_createNewNoteCardLayer4];
        [p_createNewNoteCardLayer4 setFilteredOut:1];
        [p_createNewNoteCardLayer4 setCardIndex:1];
        v50 = CGPointZero.y;
        [p_createNewNoteCardLayer4 setDragAnchor:{CGPointZero.x, v50}];
        [p_createNewNoteCardLayer4 setDragOffset:{CGPointZero.x, v50}];
        [(NSMutableArray *)self->_noteCards insertObject:p_createNewNoteCardLayer4 atIndex:1];

        [v4 addObject:p_createNewNoteCardLayer4];
        [v27 removeObject:firstObject3];
        v51 = firstObject3;
        v38 = v101;
        [v101 removeObject:v51];
      }

LABEL_80:

      goto LABEL_81;
    }

    v52 = [v3 mutableCopy];
    v53 = [(NSMutableArray *)self->_noteCardInfos mutableCopy];
    v98 = [v104 mutableCopy];
    v102 = v53;
    if ([v52 count] && objc_msgSend(v53, "count") && (v54 = objc_msgSend(v52, "lastObject"), v54 == objc_msgSend(v53, "lastObject")))
    {
      [v52 removeObject:{objc_msgSend(v52, "lastObject")}];
      [v53 removeObject:{objc_msgSend(v53, "lastObject")}];
      v57 = 1;
    }

    else
    {
      lastObject4 = [v52 lastObject];
      lastObject5 = [(NSMutableArray *)self->_noteCards lastObject];
      [v5 addObject:lastObject5];

      v53 = v102;
      [v52 removeObject:lastObject4];
      [v98 removeObject:lastObject4];
      v57 = 0;
    }

    if ([v53 count] && objc_msgSend(v52, "count") && (v58 = objc_msgSend(v52, "firstObject"), v59 = v58 == objc_msgSend(v102, "firstObject"), v53 = v102, v59))
    {
      [v52 removeObject:{objc_msgSend(v52, "firstObject")}];
      [v102 removeObject:{objc_msgSend(v102, "firstObject")}];
      ++v57;
    }

    else if ([v52 count])
    {
      firstObject4 = [v52 firstObject];
      firstObject5 = [(NSMutableArray *)self->_noteCards firstObject];
      [v5 addObject:firstObject5];

      [v52 removeObject:firstObject4];
      v62 = firstObject4;
      v53 = v102;
      [v98 removeObject:v62];
    }

    if ([(NSMutableArray *)self->_noteCards count]>= 3)
    {
      v96 = v57;
      v63 = [(NSMutableArray *)self->_noteCards objectAtIndex:1];
      if ([v98 count])
      {
        firstObject6 = [v98 firstObject];
        [(THNoteCardsController *)self p_populateNoteCard:v63 withInfo:firstObject6];
        [v5 addObject:v63];
        [v98 removeObject:firstObject6];
        [v52 removeObject:firstObject6];
      }

      else
      {
        v65 = v53;
        firstObject7 = [v53 firstObject];
        [(THNoteCardsController *)self p_populateNoteCard:v63 withInfo:firstObject7];
        [v65 removeObject:firstObject7];
        v57 = v96 + 1;
      }
    }

    v97 = v52;
    if ([(NSMutableArray *)self->_noteCards count]>= 4)
    {
      v67 = [(NSMutableArray *)self->_noteCards objectAtIndex:2];
      if (![v98 count])
      {
        lastObject6 = [v102 lastObject];
        [(THNoteCardsController *)self p_populateNoteCard:v67 withInfo:lastObject6];
        v95 = lastObject6;
        v38 = v102;
        [v102 removeObject:v95];
        ++v57;
LABEL_71:
        if ([v38 count] && v57 != 4)
        {
          v69 = CGPointZero.y;
          v70 = v57 - 3;
          v71 = 1;
          do
          {
            v72 = v70;
            if (v71)
            {
              lastObject7 = [v38 lastObject];
            }

            else
            {
              lastObject7 = [v38 firstObject];
            }

            v74 = lastObject7;
            v75 = v38;
            p_createNewNoteCardLayer5 = [(THNoteCardsController *)self p_createNewNoteCardLayer];
            [(THNoteCardsController *)self p_populateNoteCard:p_createNewNoteCardLayer5 withInfo:v74];
            [(CALayer *)self->_noteCardsLayer insertSublayer:p_createNewNoteCardLayer5 atIndex:0];
            [p_createNewNoteCardLayer5 setCardIndex:1];
            [p_createNewNoteCardLayer5 setDragOffset:{CGPointZero.x, v69}];
            [(NSMutableArray *)self->_noteCards addObject:p_createNewNoteCardLayer5];

            [v75 removeObject:v74];
            v38 = v75;
            if (![v75 count])
            {
              break;
            }

            v71 ^= 1u;
            v70 = v72 + 1;
          }

          while (v72);
        }

        v77 = self->_noteCards;
        v113[0] = _NSConcreteStackBlock;
        v113[1] = 3221225472;
        v113[2] = sub_1CEA90;
        v113[3] = &unk_45BBC0;
        v113[4] = self;
        [(NSMutableArray *)v77 sortUsingComparator:v113];

        v23 = v99;
        v24 = v103;
        v27 = v97;
        goto LABEL_80;
      }

      lastObject8 = [v98 lastObject];
      [(THNoteCardsController *)self p_populateNoteCard:v67 withInfo:lastObject8];
      [v5 addObject:v67];
      [v98 removeObject:lastObject8];
      [v52 removeObject:lastObject8];
    }

    v38 = v102;
    goto LABEL_71;
  }

LABEL_81:
  [(NSMutableArray *)self->_noteCards removeObjectsInArray:v5];
  if ([(NSMutableArray *)self->_noteCards count])
  {
    lastObject9 = [(NSMutableArray *)self->_noteCards lastObject];
    v79 = [(NSMutableArray *)self->_noteCards count];
    if ((v79 - 1) >= 3)
    {
      v80 = 3;
    }

    else
    {
      v80 = (v79 - 1);
    }

    if ([v4 containsObject:lastObject9] & 1) != 0 || (objc_msgSend(v5, "containsObject:", lastObject9))
    {
      [lastObject9 setCardIndex:v80];
    }

    else
    {
      [lastObject9 setCardIndex:v80 forceHidden:objc_msgSend(v23 animated:"containsObject:" duration:{lastObject9), 1, 0.75}];
    }
  }

  if ([(NSMutableArray *)self->_noteCards count]>= 2)
  {
    firstObject8 = [(NSMutableArray *)self->_noteCards firstObject];
    if ([v4 containsObject:firstObject8] & 1) != 0 || (objc_msgSend(v5, "containsObject:", firstObject8))
    {
      [firstObject8 setCardIndex:0];
    }

    else
    {
      [firstObject8 setCardIndex:0 forceHidden:objc_msgSend(v23 animated:"containsObject:" duration:{firstObject8), 1, 0.75}];
    }
  }

  if ([(NSMutableArray *)self->_noteCards count]>= 3 && ceilf(vcvts_n_f32_u64([(NSMutableArray *)self->_noteCards count], 1uLL)) > 1.0)
  {
    v82 = (&dword_0 + 1);
    do
    {
      if (v82 >= [(NSMutableArray *)self->_noteCards count]- 1)
      {
        break;
      }

      v83 = [(NSMutableArray *)self->_noteCards objectAtIndex:v82];
      if ([v4 containsObject:v83] & 1) != 0 || (objc_msgSend(v5, "containsObject:", v83))
      {
        [v83 setCardIndex:1];
      }

      else
      {
        [v83 setCardIndex:1 forceHidden:objc_msgSend(v23 animated:"containsObject:" duration:{v83), 1, 0.75}];
      }

      ++v82;
    }

    while (ceilf(vcvts_n_f32_u64([(NSMutableArray *)self->_noteCards count], 1uLL)) > v82);
  }

  if ([(NSMutableArray *)self->_noteCards count]>= 4)
  {
    for (k = vcvtps_u32_f32(vcvts_n_f32_u64([(NSMutableArray *)self->_noteCards count], 1uLL)); k < [(NSMutableArray *)self->_noteCards count]- 1; ++k)
    {
      v85 = [(NSMutableArray *)self->_noteCards objectAtIndex:k];
      if ([v4 containsObject:v85] & 1) != 0 || (objc_msgSend(v5, "containsObject:", v85))
      {
        [v85 setCardIndex:2];
      }

      else
      {
        [v85 setCardIndex:2 forceHidden:objc_msgSend(v23 animated:"containsObject:" duration:{v85), 1, 0.75}];
      }
    }
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v86 = [v4 countByEnumeratingWithState:&v109 objects:v123 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v110;
    do
    {
      for (m = 0; m != v87; m = m + 1)
      {
        if (*v110 != v88)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v109 + 1) + 8 * m) setFilteredOut:0 direction:1 animated:0 duration:1.0 completion:{0.0, 0.5}];
      }

      v87 = [v4 countByEnumeratingWithState:&v109 objects:v123 count:16];
    }

    while (v87);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v90 = [v5 countByEnumeratingWithState:&v105 objects:v122 count:16];
  if (v90)
  {
    v91 = v90;
    v92 = *v106;
    do
    {
      for (n = 0; n != v91; n = n + 1)
      {
        if (*v106 != v92)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v105 + 1) + 8 * n) setFilteredOut:1 direction:1 animated:0 duration:1.0 completion:{0.0, 0.5}];
      }

      v91 = [v5 countByEnumeratingWithState:&v105 objects:v122 count:16];
    }

    while (v91);
  }

  if (v24)
  {
    [(THNoteCardsController *)self p_recreateNoteCardLayers];
  }

  else
  {
    [(THNoteCardsController *)self performSelector:"p_recreateNoteCardLayers" withObject:0 afterDelay:0.75];
  }
}

- (void)p_reflectShuffleOptionsChangeWithCompletionBlock:(id)block
{
  if ([(NSMutableArray *)self->_noteCardInfos count]>= 2)
  {
    [(THNoteCardsController *)self p_updateNoteCardOrder];
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v35[3] = [(NSMutableArray *)self->_noteCards count];
    if ([(NSMutableArray *)self->_noteCardInfos count:_NSConcreteStackBlock]== &dword_0 + 2)
    {
      v5 = [(THNoteCardsController *)self p_noteCardAtIndex:1];
      v6 = [(THNoteCardsController *)self p_noteCardAtIndex:0];
      lastObject = [(NSMutableArray *)self->_noteCardInfos lastObject];
      [(THNoteCardsController *)self p_rebuildNoteCardInfos];
      lastObject2 = [(NSMutableArray *)self->_noteCardInfos lastObject];
      if (lastObject == lastObject2)
      {
        v9 = 0.5;
      }

      else
      {
        v9 = 0.625;
      }

      [v5 shuffleToIndex:lastObject == lastObject2 animated:1 delay:&v34 duration:0.0 completion:v9];
      if (lastObject == lastObject2)
      {
        v10 = 0.5;
      }

      else
      {
        v10 = 0.375;
      }

      [v6 shuffleToIndex:lastObject != lastObject2 animated:1 delay:&v34 duration:0.125 completion:v10];
    }

    else if ([(NSMutableArray *)self->_noteCardInfos count]== &dword_0 + 3)
    {
      v11 = [(THNoteCardsController *)self p_noteCardAtIndex:2];
      v12 = [(THNoteCardsController *)self p_noteCardAtIndex:1];
      v13 = [(THNoteCardsController *)self p_noteCardAtIndex:0];
      v14 = [(NSMutableArray *)self->_noteCardInfos objectAtIndex:2];
      v15 = [(NSMutableArray *)self->_noteCardInfos objectAtIndex:1];
      v16 = [(NSMutableArray *)self->_noteCardInfos objectAtIndex:0];
      [(THNoteCardsController *)self p_rebuildNoteCardInfos];
      v17 = [(NSMutableArray *)self->_noteCardInfos indexOfObject:v14];
      [v11 shuffleToIndex:v17 animated:1 delay:&v34 duration:0.0 completion:{vcvtd_n_f64_s64(2 - v17, 3uLL) + 0.5}];
      v18 = [(NSMutableArray *)self->_noteCardInfos indexOfObject:v15];
      [v12 shuffleToIndex:v18 animated:1 delay:&v34 duration:0.125 completion:{vcvtd_n_f64_s64(1 - v18, 3uLL) + 0.5}];
      v19 = [(NSMutableArray *)self->_noteCardInfos indexOfObject:v16];
      [v13 shuffleToIndex:v19 animated:1 delay:&v34 duration:0.25 completion:{vcvtd_n_f64_s64(-v19, 3uLL) + 0.5}];
    }

    else if ([(NSMutableArray *)self->_noteCardInfos count]>= 4)
    {
      v20 = [(THNoteCardsController *)self p_noteCardAtIndex:3];
      v21 = [(THNoteCardsController *)self p_noteCardAtIndex:2];
      v22 = [(THNoteCardsController *)self p_noteCardAtIndex:1];
      v23 = [(THNoteCardsController *)self p_noteCardAtIndex:0];
      lastObject3 = [(NSMutableArray *)self->_noteCardInfos lastObject];
      firstObject = [(NSMutableArray *)self->_noteCardInfos firstObject];
      [(THNoteCardsController *)self p_rebuildNoteCardInfos];
      lastObject4 = [(NSMutableArray *)self->_noteCardInfos lastObject];
      firstObject2 = [(NSMutableArray *)self->_noteCardInfos firstObject];
      if (lastObject3 != lastObject4)
      {
        [(THNoteCardsController *)self p_populateNoteCard:v21 withInfo:lastObject4];
      }

      if (firstObject != firstObject2)
      {
        [(THNoteCardsController *)self p_populateNoteCard:v22 withInfo:firstObject2];
      }

      if (lastObject3 == lastObject4)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      if (lastObject3 == lastObject4)
      {
        v29 = 0.5;
      }

      else
      {
        v29 = 0.625;
      }

      [v20 shuffleToIndex:v28 animated:1 delay:&v34 duration:0.0 completion:v29];
      if (lastObject3 == lastObject4)
      {
        v30 = 2;
      }

      else
      {
        v30 = 3;
      }

      if (lastObject3 == lastObject4)
      {
        v31 = 0.5;
      }

      else
      {
        v31 = 0.375;
      }

      [v21 shuffleToIndex:v30 animated:1 delay:&v34 duration:0.125 completion:v31];
      if (firstObject == firstObject2)
      {
        v32 = 0.5;
      }

      else
      {
        v32 = 0.625;
      }

      [v22 shuffleToIndex:firstObject == firstObject2 animated:1 delay:&v34 duration:0.25 completion:v32];
      if (firstObject == firstObject2)
      {
        v33 = 0.5;
      }

      else
      {
        v33 = 0.375;
      }

      [v23 shuffleToIndex:firstObject != firstObject2 animated:1 delay:&v34 duration:0.375 completion:v33];
    }

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v36, 8);
  }
}

- (void)p_unfilteredNoteCardInfosChangedMoveToRight:(BOOL)right
{
  rightCopy = right;
  if ([(NSMutableArray *)self->_noteCardInfos count])
  {
    if (rightCopy)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = -1.0;
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_recreateNoteCardLayers" object:0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    noteCards = self->_noteCards;
    v7 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v35;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(noteCards);
          }

          [*(*(&v34 + 1) + 8 * i) setFilteredOut:1 direction:1 animated:0 duration:-v5 completion:{0.0, 0.5}];
        }

        v8 = [(NSMutableArray *)noteCards countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v8);
    }

    [(NSMutableArray *)self->_noteCards removeAllObjects];
    [(THNoteCardsController *)self p_rebuildNoteCardInfos];
    v11 = [(THNoteCardsController *)self p_noteCardsForInfos:self->_noteCardInfos];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * j);
          [(NSMutableArray *)self->_noteCards addObject:v16];
          [(CALayer *)self->_noteCardsLayer addSublayer:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v13);
    }

    if ([(NSMutableArray *)self->_noteCards count])
    {
      v17 = 0;
      do
      {
        [-[NSMutableArray objectAtIndex:](self->_noteCards objectAtIndex:{v17), "setCardIndex:", v17}];
        [-[NSMutableArray objectAtIndex:](self->_noteCards objectAtIndex:{v17++), "setFilteredOut:direction:", 1, v5, 0.0}];
      }

      while (v17 < [(NSMutableArray *)self->_noteCards count]);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = self->_noteCards;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (k = 0; k != v20; k = k + 1)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v26 + 1) + 8 * k);
          if (v23 == [(NSMutableArray *)self->_noteCards lastObject])
          {
            v24 = v25;
            v25[0] = _NSConcreteStackBlock;
            v25[1] = 3221225472;
            v25[2] = sub_1CF410;
            v25[3] = &unk_45AE00;
            v25[4] = self;
          }

          else
          {
            v24 = 0;
          }

          [v23 setFilteredOut:0 direction:1 animated:v24 duration:-v5 completion:{0.0, 0.5}];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v20);
    }
  }

  else
  {

    [(THNoteCardsController *)self p_reloadNoteCards];
  }
}

- (void)p_makeTopCardInteractive
{
  if (![(NSMapTable *)self->_interactiveViewsToLayers count]&& !self->_scalingMode)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [-[THNoteCardsController p_topNoteCard](self "p_topNoteCard")];
    v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      do
      {
        v6 = 0;
        do
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v17 + 1) + 8 * v6);
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1CF64C;
          v16[3] = &unk_45F0D8;
          v16[4] = self;
          v21 = @"scrollViewBlock";
          v22 = [v16 copy];
          v8 = [v7 swapIntoView:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v22, &v21, 1)}];
          if (v8)
          {
            v9 = v8;
            layer = [(UIView *)self->_hostView layer];
            [v9 frame];
            -[CALayer convertRect:fromLayer:](layer, "convertRect:fromLayer:", [v7 superlayer], v11, v12, v13, v14);
            [v9 setFrame:?];
            [(UIView *)self->_hostView addSubview:v9];
            [v7 setHidden:1];
            [(NSMapTable *)self->_interactiveViewsToLayers setObject:v7 forKey:v9];
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v4);
    }
  }
}

- (void)p_makeTopCardNonInteractive
{
  if ([(NSMapTable *)self->_interactiveViewsToLayers count])
  {
    v3 = [(NSMapTable *)self->_interactiveViewsToLayers copy];
    [(NSMapTable *)self->_interactiveViewsToLayers removeAllObjects];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    keyEnumerator = [v3 keyEnumerator];
    v5 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          v10 = [v3 objectForKey:v9];
          [v10 swapOutOfView:v9];
          +[CATransaction begin];
          [CATransaction setDisableActions:1];
          [v9 removeFromSuperview];
          +[CATransaction commit];
          [v10 setHidden:0];
        }

        v6 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    self->_topScrollView = 0;
  }
}

- (CGSize)minCardSize
{
  width = self->_minCardSize.width;
  height = self->_minCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxCardSize
{
  width = self->_maxCardSize.width;
  height = self->_maxCardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end