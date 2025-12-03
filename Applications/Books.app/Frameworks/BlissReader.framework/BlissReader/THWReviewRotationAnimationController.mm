@interface THWReviewRotationAnimationController
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize;
- (THWReviewRotationAnimationController)initWithRep:(id)rep;
- (void)dealloc;
- (void)expandedDidRotateTransitionToSize:(CGSize)size;
- (void)expandedWillAnimateRotationFromSize:(CGSize)size toSize:(CGSize)toSize duration:(double)duration;
- (void)expandedWillRotateTransitionFromSize:(CGSize)size toSize:(CGSize)toSize;
- (void)expandedWillTransitionFromSize:(CGSize)size toSize:(CGSize)toSize;
@end

@implementation THWReviewRotationAnimationController

- (THWReviewRotationAnimationController)initWithRep:(id)rep
{
  v6.receiver = self;
  v6.super_class = THWReviewRotationAnimationController;
  v4 = [(THWReviewRotationAnimationController *)&v6 init];
  if (v4)
  {
    v4->_rep = rep;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewRotationAnimationController;
  [(THWReviewRotationAnimationController *)&v3 dealloc];
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)size toSize:(CGSize)toSize
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillRotateTransitionFromSize:(CGSize)size toSize:(CGSize)toSize
{
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController:size.width] setPadInfos:0];

  +[CATransaction flush];
}

- (void)expandedDidRotateTransitionToSize:(CGSize)size
{
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController:size.width] setPadInfos:1];
  [(THScrollView *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] scrollView] setClipsToBounds:1];
  [-[THWReviewRep layout](self->_rep "layout")];
  stageCanvasController = [(THWReviewRep *)self->_rep stageCanvasController];

  [(THWPagedCanvasController *)stageCanvasController invalidateLayoutsAndFrames];
}

- (void)expandedWillAnimateRotationFromSize:(CGSize)size toSize:(CGSize)toSize duration:(double)duration
{
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController:size.width] interactiveCanvasController] beginAnimations:@"reviewRotate" context:0];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] interactiveCanvasController] setAnimationDuration:duration];
  p_currentScrollableCanvasController = [(THWReviewRep *)self->_rep p_currentScrollableCanvasController];
  [objc_msgSend(p_currentScrollableCanvasController "interactiveCanvasController")];
  [objc_msgSend(p_currentScrollableCanvasController "interactiveCanvasController")];
  [(THScrollView *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] scrollView] setClipsToBounds:0];
  [-[THWReviewRep layout](self->_rep "layout")];
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] invalidateLayoutsAndFrames];
  [p_currentScrollableCanvasController invalidateLayoutsAndFrames];
  v8 = objc_alloc_init(TSUMutableRetainedPointerSet);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [objc_msgSend(objc_msgSend(p_currentScrollableCanvasController "interactiveCanvasController")];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v27 + 1) + 8 * i) recursivelyPerformSelector:"addToSet:" withObject:v8];
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  [-[THWReviewRep interactiveCanvasController](self->_rep "interactiveCanvasController")];
  selfCopy = self;
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] interactiveCanvasController] layoutIfNeeded];
  v21 = p_currentScrollableCanvasController;
  [objc_msgSend(p_currentScrollableCanvasController "interactiveCanvasController")];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v18 = TSUDynamicCast();
        if (v18)
        {
          v19 = v18;
          v20 = +[CATransition animation];
          [v20 setType:kCATransitionFade];
          [v20 setDuration:duration];
          [objc_msgSend(v19 "textLayer")];
        }
      }

      v15 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  [objc_msgSend(v21 "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)selfCopy->_rep stageCanvasController] interactiveCanvasController] commitAnimations];
}

- (void)expandedWillTransitionFromSize:(CGSize)size toSize:(CGSize)toSize
{
  [-[THWReviewRep layout](self->_rep layout];
  [-[THWReviewRep layout](self->_rep "layout")];
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] invalidateLayoutsAndFrames];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)[(THWReviewRep *)self->_rep scrollableCanvasControllers] allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9) invalidateLayoutsAndFrames];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end