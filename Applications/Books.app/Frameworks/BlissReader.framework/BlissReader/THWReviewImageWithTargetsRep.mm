@interface THWReviewImageWithTargetsRep
- (BOOL)p_areAllTargetsSelected;
- (BOOL)p_drawerContainsPoint:(CGPoint)point;
- (CGPoint)anchorPoint;
- (CGPoint)layerDragging:(id)dragging convertNaturalPointToBounds:(CGPoint)bounds;
- (CGPoint)layerDragging:(id)dragging naturalPositionWithGesture:(id)gesture;
- (CGPoint)layerDraggingBoundsLocationForICCWithGesture:(id)gesture;
- (THWReviewImageWithTargetsRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)p_choiceAtIndex:(unint64_t)index;
- (id)p_filterAnimation:(id)animation forLayer:(id)layer key:(id)key forPlacardRep:(id)rep;
- (id)p_questionHost;
- (id)p_repForTargetIndex:(unint64_t)index;
- (id)p_targetRepForPlacardRep:(id)rep;
- (unint64_t)p_draggingPlacardIndexForRep:(id)rep;
- (unint64_t)p_targetIndexNearPoint:(CGPoint)point;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)layerDraggingDidBegin:(id)begin withPosition:(CGPoint)position;
- (void)layerDraggingDidEnd:(id)end withPosition:(CGPoint)position;
- (void)layerDraggingDidMove:(id)move withPosition:(CGPoint)position;
- (void)p_addDropAnimationWithCompletion:(id)completion;
- (void)p_addPickupAnimation;
- (void)p_animatePlacardChanges:(id)changes duration:(double)duration;
- (void)p_didDragInsideDrawer:(BOOL)drawer;
- (void)p_setPanGRs:(BOOL)rs;
- (void)p_updateDrawerStateForPoint:(CGPoint)point;
- (void)p_updateTargetStateForPoint:(CGPoint)point;
- (void)p_updateTargetsAndPlacardLayout:(BOOL)layout animated:(BOOL)animated;
- (void)reviewDragWillBeginForRep:(id)rep withGesture:(id)gesture;
- (void)reviewQuestionAnswerUpdated;
- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)index withState:(int)state;
- (void)setQuestionState:(int)state;
- (void)updateChildrenFromLayout;
@end

@implementation THWReviewImageWithTargetsRep

- (THWReviewImageWithTargetsRep)initWithLayout:(id)layout canvas:(id)canvas
{
  v5.receiver = self;
  v5.super_class = THWReviewImageWithTargetsRep;
  result = [(THWReviewImageWithTargetsRep *)&v5 initWithLayout:layout canvas:canvas];
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

- (void)p_updateTargetsAndPlacardLayout:(BOOL)layout animated:(BOOL)animated
{
  animatedCopy = animated;
  layoutCopy = layout;
  canvas = [(THWReviewImageWithTargetsRep *)self canvas];
  layout = [(THWReviewImageWithTargetsRep *)self layout];
  p_questionHost = [(THWReviewImageWithTargetsRep *)self p_questionHost];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [layout placardLayouts];
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
        v13 = [p_questionHost reviewQuestion:self targetForPlacard:{objc_msgSend(v12, "index")}];
        objc_opt_class();
        [canvas repForLayout:v12];
        [TSUDynamicCast() setArrowDirection:{objc_msgSend(layout, "placardArrowPlacementforTarget:", v13)}];
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  if (layoutCopy)
  {
    [layout updatePlacardLayouts];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obja = [layout targetLayouts];
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
        v19 = [p_questionHost reviewQuestion:self placardForTarget:{objc_msgSend(v18, "index")}] != 0x7FFFFFFFFFFFFFFFLL;
        objc_opt_class();
        [canvas repForLayout:v18];
        [TSUDynamicCast() setRadioState:(2 * v19) animated:animatedCopy];
      }

      v15 = [obja countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  if (animatedCopy)
  {
    +[CATransaction begin];
    interactiveCanvasController = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
    [interactiveCanvasController beginAnimations:@"position" context:0];
    [interactiveCanvasController setAnimationDuration:0.3];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1B0F6C;
    v25[3] = &unk_45E900;
    v25[4] = self;
    [interactiveCanvasController setAnimationFilterBlock:v25];
    [interactiveCanvasController layoutIfNeeded];
    [interactiveCanvasController commitAnimations];
    +[CATransaction commit];
  }
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  v3.receiver = self;
  v3.super_class = THWReviewImageWithTargetsRep;
  [(THWReviewImageWithTargetsRep *)&v3 addAdditionalChildLayersToArray:array];
}

- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)index withState:(int)state
{
  v4 = *&state;
  v5 = [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:index];

  [v5 setChoiceState:v4];
}

- (void)reviewQuestionAnswerUpdated
{
  v3 = [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];

  [(THWReviewImageWithTargetsRep *)self p_updateTargetsAndPlacardLayout:1 animated:v3];
}

- (void)setQuestionState:(int)state
{
  if (self->_questionState != state)
  {
    if (state == 1)
    {
      interactiveCanvasController = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
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
            [interactiveCanvasController repForLayout:v11];
            v12 = TSUDynamicCast();
            [v12 setRadioState:0];
            [v12 setChoiceState:0];
          }

          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    self->_questionState = state;
    [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];
  }
}

- (void)reviewDragWillBeginForRep:(id)rep withGesture:(id)gesture
{
  if (rep)
  {
    selfCopy = self;
    if (!self->_layerDraggingController)
    {
      [(THWReviewImageWithTargetsRep *)self p_setPanGRs:0];
      v7 = [objc_msgSend(rep "interactiveCanvasController")];
      repCopy = rep;
      selfCopy->_draggingRep = repCopy;
      [(TSDRep *)repCopy pauseLayerUpdates];
      [gesture naturalLocationForRep:selfCopy->_draggingRep];
      v10 = v9;
      v12 = v11;
      [(TSDRep *)selfCopy->_draggingRep naturalBounds];
      selfCopy->_anchorPoint.x = v10 / v13;
      selfCopy->_anchorPoint.y = v12 / v14;
      selfCopy->_layerDraggingController = -[THWLayerDraggingController initWithLayer:hostView:gesture:anchorPoint:delegate:]([THWLayerDraggingController alloc], "initWithLayer:hostView:gesture:anchorPoint:delegate:", v7, [-[THWReviewImageWithTargetsRep p_questionHost](selfCopy "p_questionHost")], gesture, selfCopy, selfCopy->_anchorPoint.x, selfCopy->_anchorPoint.y);
      objc_opt_class();
      [(THWReviewImageWithTargetsRep *)selfCopy draggingRep];
      v15 = TSUDynamicCast();
      v16 = v15;
      if (v15)
      {
        [v15 setArrowDirection:0];
        [objc_msgSend(v16 "layout")];
      }

      [(THWReviewImageWithTargetsRep *)selfCopy p_animatePlacardChanges:v16 duration:0.3];
      v17 = [(THWReviewImageWithTargetsRep *)selfCopy p_targetRepForPlacardRep:v16];
      if ([v17 choiceState] == 2)
      {
        gestureCopy = gesture;
        interactiveCanvasController = [(THWReviewImageWithTargetsRep *)selfCopy interactiveCanvasController];
        v19 = objc_alloc_init(NSMutableIndexSet);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v27 = selfCopy;
        v20 = [-[THWReviewImageWithTargetsRep layout](selfCopy "layout")];
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
              [interactiveCanvasController repForLayout:v25];
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

        selfCopy = v27;
        [-[THWReviewImageWithTargetsRep p_questionHost](v27 "p_questionHost")];

        gesture = gestureCopy;
      }

      [(THWLayerDraggingController *)selfCopy->_layerDraggingController handleGesture:gesture];
    }
  }
}

- (void)layerDraggingDidBegin:(id)begin withPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  draggingPlacardIndex = [(THWReviewImageWithTargetsRep *)self draggingPlacardIndex];
  if (draggingPlacardIndex != 0x7FFFFFFFFFFFFFFFLL)
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

- (void)layerDraggingDidMove:(id)move withPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(THWReviewImageWithTargetsRep *)self p_updateTargetStateForPoint:move];

  [(THWReviewImageWithTargetsRep *)self p_updateDrawerStateForPoint:x, y];
}

- (void)layerDraggingDidEnd:(id)end withPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(THWReviewImageWithTargetsRep *)self p_setPanGRs:1];
  +[CATransaction begin];
  [(THWReviewImageWithTargetsRep *)self p_updateTargetStateForPoint:x, y];
  objc_opt_class();
  [(THWReviewImageWithTargetsRep *)self draggingRep];
  v7 = TSUDynamicCast();
  v8 = [(THWReviewImageWithTargetsRep *)self p_targetIndexNearPoint:x, y];
  draggingPlacardIndex = [(THWReviewImageWithTargetsRep *)self draggingPlacardIndex];
  v10 = draggingPlacardIndex;
  if (draggingPlacardIndex == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
    if (draggingPlacardIndex != 0x7FFFFFFFFFFFFFFFLL && v8 == 0x7FFFFFFFFFFFFFFFLL)
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
  interactiveCanvasController = [(TSDRep *)self->_draggingRep interactiveCanvasController];
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
  [interactiveCanvasController beginAnimations:@"position" context:0];
  [interactiveCanvasController setAnimationDuration:0.3];
  [interactiveCanvasController setAnimationCompletionBlock:v25];
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController layer] bounds];
  TSDCenterOfRect();
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController layer] setPosition:v23, v24];
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController wrapperLayer] setPosition:v20, v22];
  [interactiveCanvasController commitAnimations];
  +[CATransaction commit];
}

- (CGPoint)layerDragging:(id)dragging naturalPositionWithGesture:(id)gesture
{
  [gesture naturalLocationForRep:self];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)layerDragging:(id)dragging convertNaturalPointToBounds:(CGPoint)bounds
{
  y = bounds.y;
  x = bounds.x;
  canvas = [(THWReviewImageWithTargetsRep *)self canvas];
  [(THWReviewImageWithTargetsRep *)self convertNaturalPointToUnscaledCanvas:x, y];
  [canvas convertUnscaledToBoundsPoint:?];
  v10 = v9;
  v12 = v11;
  hostView = [dragging hostView];
  v14 = [-[THWReviewImageWithTargetsRep interactiveCanvasController](self "interactiveCanvasController")];

  [hostView convertPoint:v14 fromView:{v10, v12}];
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)layerDraggingBoundsLocationForICCWithGesture:(id)gesture
{
  interactiveCanvasController = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];

  [gesture boundsLocationForICC:interactiveCanvasController];
  result.y = v6;
  result.x = v5;
  return result;
}

- (id)p_choiceAtIndex:(unint64_t)index
{
  v4 = [objc_msgSend(-[THWReviewImageWithTargetsRep layout](self "layout")];
  if ([v4 count] <= index)
  {
    return 0;
  }

  return [v4 objectAtIndex:index];
}

- (id)p_questionHost
{
  interactiveCanvasController = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

- (unint64_t)p_targetIndexNearPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(THWReviewImageWithTargetsRep *)self p_drawerContainsPoint:?])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  layout = [-[THWReviewImageWithTargetsRep layout](self layout];
  v7 = [layout countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  v9 = *v18;
  index = 0x7FFFFFFFFFFFFFFFLL;
  v11 = 1.79769313e308;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(layout);
      }

      v13 = *(*(&v17 + 1) + 8 * i);
      [v13 distanceSquaredToPoint:{x, y}];
      if (v14 < v11)
      {
        v15 = v14;
        if (v14 <= 14400.0)
        {
          index = [v13 index];
          v11 = v15;
        }
      }
    }

    v8 = [layout countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v8);
  return index;
}

- (id)p_repForTargetIndex:(unint64_t)index
{
  objc_opt_class();
  [-[THWReviewImageWithTargetsRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUDynamicCast();
}

- (void)p_updateTargetStateForPoint:(CGPoint)point
{
  v4 = [(THWReviewImageWithTargetsRep *)self p_targetIndexNearPoint:point.x, point.y];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:v4];
  }

  pressedTargetIndex = [(THWReviewImageWithTargetsRep *)self pressedTargetIndex];
  if (pressedTargetIndex == 0x7FFFFFFFFFFFFFFFLL)
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

  v7 = [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:pressedTargetIndex];
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

- (BOOL)p_drawerContainsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layout = [(THWReviewImageWithTargetsRep *)self layout];
  if (layout)
  {
    drawerFrame = [layout drawerFrame];
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

    LOBYTE(layout) = _TSDPointInRectInclusive(drawerFrame, v9, v10, v11, v12, v13, v14);
  }

  return layout;
}

- (void)p_updateDrawerStateForPoint:(CGPoint)point
{
  v4 = [(THWReviewImageWithTargetsRep *)self p_drawerContainsPoint:point.x, point.y];
  wasInDrawer = [(THWReviewImageWithTargetsRep *)self wasInDrawer];
  if (v4)
  {
    if (wasInDrawer)
    {
      v4 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (wasInDrawer)
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
  layer = [(THWLayerDraggingController *)self->_layerDraggingController layer];
  interactiveCanvasController = [(TSDRep *)self->_draggingRep interactiveCanvasController];
  if (layer)
  {
    v5 = interactiveCanvasController == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = interactiveCanvasController;
    [(CALayer *)layer bounds];
    v8 = v7;
    [v6 beginAnimations:@"scale" context:0];
    [v6 setAnimationDuration:0.15];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1B214C;
    v12[3] = &unk_45AE58;
    v12[4] = v6;
    v12[5] = layer;
    [v6 setAnimationCompletionBlock:v12];
    CGAffineTransformMakeScale(&v11, 1.2, 1.2);
    v10 = v11;
    [(CALayer *)layer setAffineTransform:&v10];
    [v6 commitAnimations];
    [v6 beginAnimations:@"position+opacity" context:0];
    [v6 setAnimationDuration:0.3];
    [(CALayer *)layer setPosition:v8 * 0.5, -14.0];
    LODWORD(v9) = 1061997773;
    [(CALayer *)layer setOpacity:v9];
    [v6 commitAnimations];
  }
}

- (void)p_addDropAnimationWithCompletion:(id)completion
{
  layer = [(THWLayerDraggingController *)self->_layerDraggingController layer];
  interactiveCanvasController = [(TSDRep *)self->_draggingRep interactiveCanvasController];
  if (layer)
  {
    v7 = interactiveCanvasController == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = interactiveCanvasController;
    +[CATransaction begin];
    [v8 beginAnimations:@"scale+opacity" context:0];
    [v8 setAnimationDuration:0.15];
    [v8 setAnimationCompletionBlock:completion];
    v9 = *&CGAffineTransformIdentity.c;
    v11[0] = *&CGAffineTransformIdentity.a;
    v11[1] = v9;
    v11[2] = *&CGAffineTransformIdentity.tx;
    [(CALayer *)layer setAffineTransform:v11];
    LODWORD(v10) = 1.0;
    [(CALayer *)layer setOpacity:v10];
    [v8 commitAnimations];
    +[CATransaction commit];
  }
}

- (unint64_t)p_draggingPlacardIndexForRep:(id)rep
{
  objc_opt_class();
  [rep layout];
  v4 = TSUDynamicCast();
  if (!v4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v4 index];
}

- (id)p_targetRepForPlacardRep:(id)rep
{
  v4 = [-[THWReviewImageWithTargetsRep p_questionHost](self "p_questionHost")];

  return [(THWReviewImageWithTargetsRep *)self p_repForTargetIndex:v4];
}

- (BOOL)p_areAllTargetsSelected
{
  interactiveCanvasController = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layout = [-[THWReviewImageWithTargetsRep layout](self layout];
  v5 = [layout countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(layout);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        objc_opt_class();
        [interactiveCanvasController repForLayout:v9];
        if ([TSUDynamicCast() radioState] != 2)
        {
          return 0;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [layout countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (id)p_filterAnimation:(id)animation forLayer:(id)layer key:(id)key forPlacardRep:(id)rep
{
  interactiveCanvasController = [(THWReviewImageWithTargetsRep *)self interactiveCanvasController];
  v12 = +[NSNull null];
  v13 = [interactiveCanvasController repForLayer:layer];
  if (!v13)
  {
    v13 = [interactiveCanvasController repForLayer:{objc_msgSend(layer, "superlayer")}];
  }

  objc_opt_class();
  v14 = TSUDynamicCast();
  objc_opt_class();
  [v13 parentRep];
  v15 = TSUDynamicCast();
  if (![key isEqualToString:@"path"] || objc_msgSend(v14, "calloutLayer") != layer)
  {
    if (rep)
    {
      result = 0;
      if (v14 == rep || v15 == rep)
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

    if ([(THWLayerDraggingController *)layerDraggingController wrapperLayer]== layer)
    {
      return 0;
    }

    return v12;
  }

  [animation duration];

  return [v14 calloutPathAnimationWithduration:?];
}

- (void)p_animatePlacardChanges:(id)changes duration:(double)duration
{
  interactiveCanvasController = [changes interactiveCanvasController];
  v8 = [interactiveCanvasController layerForRep:changes];
  +[CATransaction begin];
  [interactiveCanvasController beginAnimations:@"placard-bounds" context:0];
  contentTextRep = [changes contentTextRep];
  if (contentTextRep)
  {
    v10 = contentTextRep;
    v11 = +[CATransition animation];
    [v11 setType:kCATransitionFade];
    [v11 setDuration:duration];
    [objc_msgSend(v10 "textLayer")];
  }

  [interactiveCanvasController setAnimationDuration:duration];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1B27EC;
  v20[3] = &unk_45E928;
  v20[4] = self;
  v20[5] = changes;
  [interactiveCanvasController setAnimationFilterBlock:v20];
  [interactiveCanvasController layoutIfNeeded];
  [changes updateLayerBoundsAndWPPosition];
  [v8 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  TSDCenterOfRect();
  [v8 setPosition:?];
  [(CALayer *)[(THWLayerDraggingController *)self->_layerDraggingController wrapperLayer] setBounds:v13, v15, v17, v19];
  [interactiveCanvasController commitAnimations];
  +[CATransaction commit];
}

- (void)p_setPanGRs:(BOOL)rs
{
  rsCopy = rs;
  v4 = [-[THWReviewImageWithTargetsRep interactiveCanvasController](self "interactiveCanvasController")];
  if (v4)
  {
    superview = v4;
    do
    {
      objc_opt_class();
      v6 = TSUDynamicCast();
      if (v6)
      {
        [objc_msgSend(v6 "panGestureRecognizer")];
      }

      superview = [superview superview];
    }

    while (superview);
  }
}

- (void)p_didDragInsideDrawer:(BOOL)drawer
{
  drawerCopy = drawer;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  layout = [-[THWReviewImageWithTargetsRep layout](self layout];
  v6 = [layout countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    if (drawerCopy)
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
          objc_enumerationMutation(layout);
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
      v7 = [layout countByEnumeratingWithState:&v15 objects:v19 count:16];
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