@interface THWReviewRotationAnimationController
- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (THWReviewRotationAnimationController)initWithRep:(id)a3;
- (void)dealloc;
- (void)expandedDidRotateTransitionToSize:(CGSize)a3;
- (void)expandedWillAnimateRotationFromSize:(CGSize)a3 toSize:(CGSize)a4 duration:(double)a5;
- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4;
@end

@implementation THWReviewRotationAnimationController

- (THWReviewRotationAnimationController)initWithRep:(id)a3
{
  v6.receiver = self;
  v6.super_class = THWReviewRotationAnimationController;
  v4 = [(THWReviewRotationAnimationController *)&v6 init];
  if (v4)
  {
    v4->_rep = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewRotationAnimationController;
  [(THWReviewRotationAnimationController *)&v3 dealloc];
}

- (CGPoint)translateForCenteredAutoRotateFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)expandedWillRotateTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController:a3.width] setPadInfos:0];

  +[CATransaction flush];
}

- (void)expandedDidRotateTransitionToSize:(CGSize)a3
{
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController:a3.width] setPadInfos:1];
  [(THScrollView *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] scrollView] setClipsToBounds:1];
  [-[THWReviewRep layout](self->_rep "layout")];
  v4 = [(THWReviewRep *)self->_rep stageCanvasController];

  [(THWPagedCanvasController *)v4 invalidateLayoutsAndFrames];
}

- (void)expandedWillAnimateRotationFromSize:(CGSize)a3 toSize:(CGSize)a4 duration:(double)a5
{
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController:a3.width] interactiveCanvasController] beginAnimations:@"reviewRotate" context:0];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] interactiveCanvasController] setAnimationDuration:a5];
  v7 = [(THWReviewRep *)self->_rep p_currentScrollableCanvasController];
  [objc_msgSend(v7 "interactiveCanvasController")];
  [objc_msgSend(v7 "interactiveCanvasController")];
  [(THScrollView *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] scrollView] setClipsToBounds:0];
  [-[THWReviewRep layout](self->_rep "layout")];
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] invalidateLayoutsAndFrames];
  [v7 invalidateLayoutsAndFrames];
  v8 = objc_alloc_init(TSUMutableRetainedPointerSet);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = [objc_msgSend(objc_msgSend(v7 "interactiveCanvasController")];
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
  v22 = self;
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] interactiveCanvasController] layoutIfNeeded];
  v21 = v7;
  [objc_msgSend(v7 "interactiveCanvasController")];
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
          [v20 setDuration:a5];
          [objc_msgSend(v19 "textLayer")];
        }
      }

      v15 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  [objc_msgSend(v21 "interactiveCanvasController")];
  [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)[(THWReviewRep *)v22->_rep stageCanvasController] interactiveCanvasController] commitAnimations];
}

- (void)expandedWillTransitionFromSize:(CGSize)a3 toSize:(CGSize)a4
{
  [-[THWReviewRep layout](self->_rep layout];
  [-[THWReviewRep layout](self->_rep "layout")];
  [(THWPagedCanvasController *)[(THWReviewRep *)self->_rep stageCanvasController] invalidateLayoutsAndFrames];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(NSMutableDictionary *)[(THWReviewRep *)self->_rep scrollableCanvasControllers] allValues];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) invalidateLayoutsAndFrames];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end