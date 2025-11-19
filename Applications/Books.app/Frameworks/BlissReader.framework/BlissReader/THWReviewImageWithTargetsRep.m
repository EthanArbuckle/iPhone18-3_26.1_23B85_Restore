@interface THWReviewImageWithTargetsRep
- (BOOL)p_areAllTargetsSelected;
- (BOOL)p_drawerContainsPoint:(CGPoint)a3;
- (CGPoint)anchorPoint;
- (CGPoint)layerDragging:(id)a3 convertNaturalPointToBounds:(CGPoint)a4;
- (CGPoint)layerDragging:(id)a3 naturalPositionWithGesture:(id)a4;
- (CGPoint)layerDraggingBoundsLocationForICCWithGesture:(id)a3;
- (THWReviewImageWithTargetsRep)initWithLayout:(id)a3 canvas:(id)a4;
- (id)p_choiceAtIndex:(unint64_t)a3;
- (id)p_filterAnimation:(id)a3 forLayer:(id)a4 key:(id)a5 forPlacardRep:(id)a6;
- (id)p_questionHost;
- (id)p_repForTargetIndex:(unint64_t)a3;
- (id)p_targetRepForPlacardRep:(id)a3;
- (unint64_t)p_draggingPlacardIndexForRep:(id)a3;
- (unint64_t)p_targetIndexNearPoint:(CGPoint)a3;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)dealloc;
- (void)layerDraggingDidBegin:(id)a3 withPosition:(CGPoint)a4;
- (void)layerDraggingDidEnd:(id)a3 withPosition:(CGPoint)a4;
- (void)layerDraggingDidMove:(id)a3 withPosition:(CGPoint)a4;
- (void)p_addDropAnimationWithCompletion:(id)a3;
- (void)p_addPickupAnimation;
- (void)p_animatePlacardChanges:(id)a3 duration:(double)a4;
- (void)p_didDragInsideDrawer:(BOOL)a3;
- (void)p_setPanGRs:(BOOL)a3;
- (void)p_updateDrawerStateForPoint:(CGPoint)a3;
- (void)p_updateTargetStateForPoint:(CGPoint)a3;
- (void)p_updateTargetsAndPlacardLayout:(BOOL)a3 animated:(BOOL)a4;
- (void)reviewDragWillBeginForRep:(id)a3 withGesture:(id)a4;
- (void)reviewQuestionAnswerUpdated;
- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)a3 withState:(int)a4;
- (void)setQuestionState:(int)a3;
- (void)updateChildrenFromLayout;
@end

@implementation THWReviewImageWithTargetsRep

- (THWReviewImageWithTargetsRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v5.receiver = self;
  v5.super_class = THWReviewImageWithTargetsRep;
  result = [(THWReviewImageWithTargetsRep *)&v5 initWithLayout:a3 canvas:a4];
  if (result)
  {
    result->_pressedTargetIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewImageWithTargetsRep;
  [(THWReviewImageWithTargetsRep *)&v3 dealloc];
}

- (void)updateChildrenFromLayout
{
  v3.receiver = self;
  v3.super_class = THWReviewImageWithTargetsRep;
  [(THWReviewImageWithTargetsRep *)&v3 updateChildrenFromLayout];
  if (!self->_questionState)
  {
    -[THWReviewImageWithTargetsRep setQuestionState:](self, "setQuestionState:", [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")]);
    [(THWReviewImageWithTargetsRep *)self p_updateTargetsAndPlacardLayout:1 animated:0];
    [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];
  }
}

- (void)p_updateTargetsAndPlacardLayout:(BOOL)a3 animated:(BOOL)a4
{
  v24 = a4;
  v21 = a3;
  v5 = [(THWReviewImageWithTargetsRep *)self canvas];
  v6 = [(THWReviewImageWithTargetsRep *)self layout];
  v7 = [(THWReviewImageWithTargetsRep *)self p_questionHost];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v6 placardLayouts];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v7 reviewQuestion:self targetForPlacard:{objc_msgSend(v12, "index")}];
        objc_opt_class();
        [v5 repForLayout:v12];
        [TSUDynamicCast() setArrowDirection:{objc_msgSend(v6, "placardArrowPlacementforTarget:", v13)}];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  if (v21)
  {
    [v6 updatePlacardLayouts];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obja = [v6 targetLayouts];
  v14 = [obja countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        v19 = [v7 reviewQuestion:self placardForTarget:{objc_msgSend(v18, "index")}] != 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        [v5 repForLayout:v18];
        [TSUDynamicCast() setRadioState:(2 * v19) animated:v24];
      }

      v15 = [obja countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  if (v24)
  {
    +[CATransaction begin];
    v20 = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
    [v20 beginAnimations:@"position" context:0];
    [v20 setAnimationDuration:0.3];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1B0F6C;
    v25[3] = &unk_45E900;
    v25[4] = self;
    [v20 setAnimationFilterBlock:v25];
    [v20 layoutIfNeeded];
    [v20 commitAnimations];
    +[CATransaction commit];
  }
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v3.receiver = self;
  v3.super_class = THWReviewImageWithTargetsRep;
  [(THWReviewImageWithTargetsRep *)&v3 addAdditionalChildLayersToArray:a3];
}

- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)a3 withState:(int)a4
{
  v4 = *&a4;
  v5 = [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:a3];

  [v5 setChoiceState:v4];
}

- (void)reviewQuestionAnswerUpdated
{
  v3 = [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];

  [(THWReviewImageWithTargetsRep *)self p_updateTargetsAndPlacardLayout:1 animated:v3];
}

- (void)setQuestionState:(int)a3
{
  if (self->_questionState != a3)
  {
    if (a3 == 1)
    {
      v5 = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [-[THWReviewImageWithTargetsRep layout](self "layout")];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v13 + 1) + 8 * i);
            objc_opt_class();
            [v5 repForLayout:v11];
            v12 = TSUDynamicCast();
            [v12 setRadioState:0];
            [v12 setChoiceState:0];
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    self->_questionState = a3;
    [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];
  }
}

- (void)reviewDragWillBeginForRep:(id)a3 withGesture:(id)a4
{
  if (a3)
  {
    v4 = self;
    if (!self->_layerDraggingController)
    {
      [(THWReviewImageWithTargetsRep *)self p_setPanGRs:0];
      v7 = [objc_msgSend(a3 "interactiveCanvasController")];
      v8 = a3;
      v4->_draggingRep = v8;
      [(TSDRep *)v8 pauseLayerUpdates];
      [a4 naturalLocationForRep:v4->_draggingRep];
      v10 = v9;
      v12 = v11;
      [(TSDRep *)v4->_draggingRep naturalBounds];
      v4->_anchorPoint.x = v10 / v13;
      v4->_anchorPoint.y = v12 / v14;
      v4->_layerDraggingController = -[THWLayerDraggingController initWithLayer:hostView:gesture:anchorPoint:delegate:]([THWLayerDraggingController alloc], "initWithLayer:hostView:gesture:anchorPoint:delegate:", v7, [-[THWReviewImageWithTargetsRep p_questionHost](v4 "p_questionHost")], a4, v4, v4->_anchorPoint.x, v4->_anchorPoint.y);
      objc_opt_class();
      [(THWReviewImageWithTargetsRep *)v4 draggingRep];
      v15 = TSUDynamicCast();
      v16 = v15;
      if (v15)
      {
        [v15 setArrowDirection:0];
        [objc_msgSend(v16 "layout")];
      }

      [(THWReviewImageWithTargetsRep *)v4 p_animatePlacardChanges:v16 duration:0.3];
      v17 = [(THWReviewImageWithTargetsRep *)v4 p_targetRepForPlacardRep:v16];
      if ([v17 choiceState] == 2)
      {
        v28 = a4;
        v18 = [(THWReviewImageWithTargetsRep *)v4 interactiveCanvasController];
        v19 = objc_alloc_init(NSMutableIndexSet);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v27 = v4;
        v20 = [-[THWReviewImageWithTargetsRep layout](v4 "layout")];
        v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v30;
          do
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v30 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v29 + 1) + 8 * i);
              objc_opt_class();
              [v18 repForLayout:v25];
              v26 = TSUDynamicCast();
              if ([v26 choiceState] == 2)
              {
                [v26 setChoiceState:0];
                if (v26 != v17)
                {
                  [v19 addIndex:{objc_msgSend(v25, "index")}];
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v22);
        }

        v4 = v27;
        [-[THWReviewImageWithTargetsRep p_questionHost](v27 "p_questionHost")];

        a4 = v28;
      }

      [(THWLayerDraggingController *)v4->_layerDraggingController handleGesture:a4];
    }
  }
}

- (void)layerDraggingDidBegin:(id)a3 withPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [(THWReviewImageWithTargetsRep *)self draggingPlacardIndex];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = -[THWReviewImageWithTargetsRep p_repForTargetIndex:](self, "p_repForTargetIndex:", [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")]);
    if (v8)
    {
      v9 = v8;
      [objc_msgSend(v8 "layout")];
      if (v10 > 14400.0)
      {
        [v9 setRadioState:0];
      }
    }
  }

  [(THWReviewImageWithTargetsRep *)self setWasInDrawer:[(THWReviewImageWithTargetsRep *)self p_drawerContainsPoint:x, y]];
  [(THWReviewImageWithTargetsRep *)self p_updateTargetStateForPoint:x, y];

  [(THWReviewImageWithTargetsRep *)self p_addPickupAnimation];
}

- (void)layerDraggingDidMove:(id)a3 withPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(THWReviewImageWithTargetsRep *)self p_updateTargetStateForPoint:a3];

  [(THWReviewImageWithTargetsRep *)self p_updateDrawerStateForPoint:x, y];
}

- (void)layerDraggingDidEnd:(id)a3 withPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(THWReviewImageWithTargetsRep *)self p_setPanGRs:1];
  +[CATransaction begin];
  [(THWReviewImageWithTargetsRep *)self p_updateTargetStateForPoint:x, y];
  objc_opt_class();
  [(THWReviewImageWithTargetsRep *)self draggingRep];
  v7 = TSUDynamicCast();
  v8 = [(THWReviewImageWithTargetsRep *)self p_targetIndexNearPoint:x, y];
  v9 = [(THWReviewImageWithTargetsRep *)self draggingPlacardIndex];
  v10 = v9;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    if (v9 != 0x7FFFFFFFFFFFFFFFLL && v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THWReviewImageWithTargetsRep *)self p_didDragInsideDrawer:0];
      v12 = 1;
    }
  }

  else if (v7 && (v11 = -[THWReviewImageWithTargetsRep p_repForTargetIndex:](self, "p_repForTargetIndex:", v8), [v11 choiceState] != 1))
  {
    [v7 setArrowDirection:{objc_msgSend(-[THWReviewImageWithTargetsRep layout](self, "layout"), "placardArrowPlacementforTarget:", v8)}];
    v12 = 1;
    [objc_msgSend(v7 "layout")];
    [v11 setRadioState:2];
  }

  else
  {
    v12 = 0;
  }

  if ([objc_msgSend(v7 "layout")] == 2)
  {
    [objc_msgSend(v7 "layout")];
  }

  [(THWReviewImageWithTargetsRep *)self setPressedTargetIndex:0x7FFFFFFFFFFFFFFFLL];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1B1930;
  v25[3] = &unk_45AE00;
  v25[4] = self;
  v13 = [(TSDRep *)self->_draggingRep interactiveCanvasController];
  [(THWReviewImageWithTargetsRep *)self p_animatePlacardChanges:v7 duration:0.3];
  if (v12)
  {
    [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];
  }

  [(TSDRep *)self->_draggingRep layerFrameInScaledCanvasRelativeToParent];
  [-[THWReviewImageWithTargetsRep canvas](self "canvas")];
  layerDraggingController = self->_layerDraggingController;
  TSDCenterOfRect();
  [(THWReviewImageWithTargetsRep *)self layerDragging:layerDraggingController convertNaturalPointToBounds:?];
  v20 = v19;
  v22 = v21;
  [v13 beginAnimations:@"position" context:0];
  [v13 setAnimationDuration:0.3];
  [v13 setAnimationCompletionBlock:v25];
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController layer] bounds];
  TSDCenterOfRect();
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController layer] setPosition:v23, v24];
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController wrapperLayer] setPosition:v20, v22];
  [v13 commitAnimations];
  +[CATransaction commit];
}

- (CGPoint)layerDragging:(id)a3 naturalPositionWithGesture:(id)a4
{
  [a4 naturalLocationForRep:self];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)layerDragging:(id)a3 convertNaturalPointToBounds:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = [(THWReviewImageWithTargetsRep *)self canvas];
  [(THWReviewImageWithTargetsRep *)self convertNaturalPointToUnscaledCanvas:x, y];
  [v8 convertUnscaledToBoundsPoint:?];
  v10 = v9;
  v12 = v11;
  v13 = [a3 hostView];
  v14 = [-[THWReviewImageWithTargetsRep interactiveCanvasController](self "interactiveCanvasController")];

  [v13 convertPoint:v14 fromView:{v10, v12}];
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)layerDraggingBoundsLocationForICCWithGesture:(id)a3
{
  v4 = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];

  [a3 boundsLocationForICC:v4];
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)p_choiceAtIndex:(unint64_t)a3
{
  v4 = [objc_msgSend(-[THWReviewImageWithTargetsRep layout](self "layout")];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndex:a3];
}

- (id)p_questionHost
{
  v3 = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];

  return [v3 ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

- (unint64_t)p_targetIndexNearPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(THWReviewImageWithTargetsRep *)self p_drawerContainsPoint:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [-[THWReviewImageWithTargetsRep layout](self layout];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  v9 = *v18;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 1.79769313e308;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      [v13 distanceSquaredToPoint:{x, y}];
      if (v14 < v11)
      {
        v15 = v14;
        if (v14 <= 14400.0)
        {
          v10 = [v13 index];
          v11 = v15;
        }
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);
  return v10;
}

- (id)p_repForTargetIndex:(unint64_t)a3
{
  objc_opt_class();
  [-[THWReviewImageWithTargetsRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUDynamicCast();
}

- (void)p_updateTargetStateForPoint:(CGPoint)a3
{
  v4 = [(THWReviewImageWithTargetsRep *)self p_targetIndexNearPoint:a3.x, a3.y];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:v4];
  }

  v6 = [(THWReviewImageWithTargetsRep *)self pressedTargetIndex];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_10:
    v4 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  v7 = [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:v6];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ([v5 choiceState] == 1 || v5 == v7)
  {
    return;
  }

  [v5 setRadioState:1];
LABEL_11:
  [(THWReviewImageWithTargetsRep *)self setPressedTargetIndex:v4];
  if (v7)
  {
    v8 = [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = 2 * (v8 != [(THWReviewImageWithTargetsRep *)self draggingPlacardIndex]);
    }

    [v7 setRadioState:v9];
  }
}

- (BOOL)p_drawerContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(THWReviewImageWithTargetsRep *)self layout];
  if (v5)
  {
    v6 = [v5 drawerFrame];
    v13.n128_u64[0] = v9.n128_u64[0];
    v14.n128_u64[0] = v10.n128_u64[0];
    v7 = v11.n128_u64[0];
    v8 = v12.n128_u64[0];
    v9.n128_f64[0] = x;
    v10.n128_f64[0] = y;
    v11.n128_u64[0] = v13.n128_u64[0];
    v12.n128_u64[0] = v14.n128_u64[0];
    v13.n128_u64[0] = v7;
    v14.n128_u64[0] = v8;

    LOBYTE(v5) = _TSDPointInRectInclusive(v6, v9, v10, v11, v12, v13, v14);
  }

  return v5;
}

- (void)p_updateDrawerStateForPoint:(CGPoint)a3
{
  v4 = [(THWReviewImageWithTargetsRep *)self p_drawerContainsPoint:a3.x, a3.y];
  v5 = [(THWReviewImageWithTargetsRep *)self wasInDrawer];
  if (v4)
  {
    if (v5)
    {
      v4 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    [(THWReviewImageWithTargetsRep *)self p_didDragInsideDrawer:v4];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  [(THWReviewImageWithTargetsRep *)self setWasInDrawer:v4];
}

- (void)p_addPickupAnimation
{
  v3 = [(THWLayerDraggingController *)self->_layerDraggingController layer];
  v4 = [(TSDRep *)self->_draggingRep interactiveCanvasController];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    [(CALayer *)v3 bounds];
    v8 = v7;
    [v6 beginAnimations:@"scale" context:0];
    [v6 setAnimationDuration:0.15];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1B214C;
    v12[3] = &unk_45AE58;
    v12[4] = v6;
    v12[5] = v3;
    [v6 setAnimationCompletionBlock:v12];
    CGAffineTransformMakeScale(&v11, 1.2, 1.2);
    v10 = v11;
    [(CALayer *)v3 setAffineTransform:&v10];
    [v6 commitAnimations];
    [v6 beginAnimations:@"position+opacity" context:0];
    [v6 setAnimationDuration:0.3];
    [(CALayer *)v3 setPosition:v8 * 0.5, -14.0];
    LODWORD(v9) = 1061997773;
    [(CALayer *)v3 setOpacity:v9];
    [v6 commitAnimations];
  }
}

- (void)p_addDropAnimationWithCompletion:(id)a3
{
  v5 = [(THWLayerDraggingController *)self->_layerDraggingController layer];
  v6 = [(TSDRep *)self->_draggingRep interactiveCanvasController];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v6;
    +[CATransaction begin];
    [v8 beginAnimations:@"scale+opacity" context:0];
    [v8 setAnimationDuration:0.15];
    [v8 setAnimationCompletionBlock:a3];
    v9 = *&CGAffineTransformIdentity.c;
    v11[0] = *&CGAffineTransformIdentity.a;
    v11[1] = v9;
    v11[2] = *&CGAffineTransformIdentity.tx;
    [(CALayer *)v5 setAffineTransform:v11];
    LODWORD(v10) = 1.0;
    [(CALayer *)v5 setOpacity:v10];
    [v8 commitAnimations];
    +[CATransaction commit];
  }
}

- (unint64_t)p_draggingPlacardIndexForRep:(id)a3
{
  objc_opt_class();
  [a3 layout];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v4 index];
}

- (id)p_targetRepForPlacardRep:(id)a3
{
  v4 = [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];

  return [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:v4];
}

- (BOOL)p_areAllTargetsSelected
{
  v3 = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [-[THWReviewImageWithTargetsRep layout](self layout];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        [v3 repForLayout:v9];
        if ([TSUDynamicCast() radioState] != 2)
        {
          return 0;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (id)p_filterAnimation:(id)a3 forLayer:(id)a4 key:(id)a5 forPlacardRep:(id)a6
{
  v11 = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
  v12 = +[NSNull null];
  v13 = [v11 repForLayer:a4];
  if (!v13)
  {
    v13 = [v11 repForLayer:{objc_msgSend(a4, "superlayer")}];
  }

  objc_opt_class();
  v14 = TSUDynamicCast();
  objc_opt_class();
  [v13 parentRep];
  v15 = TSUDynamicCast();
  if (![a5 isEqualToString:@"path"] || objc_msgSend(v14, "calloutLayer") != a4)
  {
    if (a6)
    {
      result = 0;
      if (v14 == a6 || v15 == a6)
      {
        return result;
      }
    }

    else if (v14 | v15)
    {
      return 0;
    }

    layerDraggingController = self->_layerDraggingController;
    if (!layerDraggingController)
    {
      return v12;
    }

    if ([(THWLayerDraggingController *)layerDraggingController wrapperLayer]== a4)
    {
      return 0;
    }

    return v12;
  }

  [a3 duration];

  return [v14 calloutPathAnimationWithduration:?];
}

- (void)p_animatePlacardChanges:(id)a3 duration:(double)a4
{
  v7 = [a3 interactiveCanvasController];
  v8 = [v7 layerForRep:a3];
  +[CATransaction begin];
  [v7 beginAnimations:@"placard-bounds" context:0];
  v9 = [a3 contentTextRep];
  if (v9)
  {
    v10 = v9;
    v11 = +[CATransition animation];
    [v11 setType:kCATransitionFade];
    [v11 setDuration:a4];
    [objc_msgSend(v10 "textLayer")];
  }

  [v7 setAnimationDuration:a4];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1B27EC;
  v20[3] = &unk_45E928;
  v20[4] = self;
  v20[5] = a3;
  [v7 setAnimationFilterBlock:v20];
  [v7 layoutIfNeeded];
  [a3 updateLayerBoundsAndWPPosition];
  [v8 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  TSDCenterOfRect();
  [v8 setPosition:?];
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController wrapperLayer] setBounds:v13, v15, v17, v19];
  [v7 commitAnimations];
  +[CATransaction commit];
}

- (void)p_setPanGRs:(BOOL)a3
{
  v3 = a3;
  v4 = [-[THWReviewImageWithTargetsRep interactiveCanvasController](self "interactiveCanvasController")];
  if (v4)
  {
    v5 = v4;
    do
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      if (v6)
      {
        [objc_msgSend(v6 "panGestureRecognizer")];
      }

      v5 = [v5 superview];
    }

    while (v5);
  }
}

- (void)p_didDragInsideDrawer:(BOOL)a3
{
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [-[THWReviewImageWithTargetsRep layout](self layout];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    if (v3)
    {
      v9 = 0.5;
    }

    else
    {
      v9 = 1.0;
    }

    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        objc_opt_class();
        [-[THWReviewImageWithTargetsRep canvas](self "canvas")];
        v12 = TSUDynamicCast();
        if (![objc_msgSend(v12 "layout")])
        {
          v13 = [objc_msgSend(v12 "interactiveCanvasController")];
          *&v14 = v9;
          [v13 setOpacity:v14];
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (CGPoint)anchorPoint
{
  x = self->_anchorPoint.x;
  y = self->_anchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end