@interface THWReviewTextAnswerRep
- (BOOL)handleGesture:(id)gesture;
- (id)p_answerAccessibilityDescription;
- (id)p_answerText;
- (id)p_questionHost;
- (id)p_questionRep;
- (unint64_t)p_choiceIndex;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)p_selectAnswer;
- (void)setPressTarget:(int)target;
- (void)setPressed:(BOOL)pressed;
- (void)setRadioState:(int)state;
- (void)setState:(int)state;
- (void)updateRadioState;
@end

@implementation THWReviewTextAnswerRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewTextAnswerRep;
  [(THWReviewTextAnswerRep *)&v3 dealloc];
}

- (void)updateRadioState
{
  v3 = [-[THWReviewTextAnswerRep p_questionHost](self "p_questionHost")];

  [(THWReviewTextAnswerRep *)self setRadioState:v3];
}

- (void)setRadioState:(int)state
{
  if (self->_radioState != state)
  {
    self->_radioState = state;
    canvas = [(THWReviewTextAnswerRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (unint64_t)p_choiceIndex
{
  v3 = [objc_msgSend(-[THWReviewTextAnswerRep p_questionRep](self "p_questionRep")];
  v4 = [-[THWReviewTextAnswerRep layout](self "layout")];

  return [v3 indexForChoice:v4];
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  layout = [(THWReviewTextAnswerRep *)self layout];
  p_questionRep = [(THWReviewTextAnswerRep *)self p_questionRep];
  p_questionHost = [(THWReviewTextAnswerRep *)self p_questionHost];
  if (!self->_radioButtonLayer)
  {
    self->_radioButtonLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(CALayer *)self->_radioButtonLayer setDelegate:[(THWReviewTextAnswerRep *)self interactiveCanvasController]];
  }

  v8 = [p_questionHost reviewQuestion:p_questionRep cachedImageNamed:*(&off_45E660[4 * self->_state] + self->_radioState)];
  [(CALayer *)self->_radioButtonLayer setBounds:0.0, 0.0, 46.0, 46.0];
  [-[THWReviewTextAnswerRep canvas](self "canvas")];
  v10 = v9;
  [layout labelFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [layout horizontalOffset];
  v20 = v10 * (v19 + 46.0 * 0.5);
  v34.origin.x = v12;
  v34.origin.y = v14;
  v34.size.width = v16;
  v34.size.height = v18;
  [(CALayer *)self->_radioButtonLayer setPosition:v20, v10 * CGRectGetMidY(v34)];
  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeScale(&v33, v10, v10);
  v32 = v33;
  [(CALayer *)self->_radioButtonLayer setAffineTransform:&v32];
  [-[THWReviewTextAnswerRep canvas](self "canvas")];
  v22 = v21;
  v23 = [v8 CGImageForContentsScale:?];
  if ([(CALayer *)self->_radioButtonLayer contents]!= v23)
  {
    [(CALayer *)self->_radioButtonLayer setContents:v23];
    [(CALayer *)self->_radioButtonLayer setContentsScale:v22];
  }

  radioButtonLayer = self->_radioButtonLayer;
  if (radioButtonLayer)
  {
    [(CALayer *)radioButtonLayer frame];
    v26 = v25;
    v28 = v27;
    TSDFloorForScale();
    v30 = v29;
    TSDFloorForScale();
    [(CALayer *)self->_radioButtonLayer setFrame:v30, v31, v26, v28];
    [array addObject:self->_radioButtonLayer];
  }
}

- (BOOL)handleGesture:(id)gesture
{
  [gesture naturalLocationForRep:self];
  v6 = v5;
  v8 = v7;
  [(THWReviewTextAnswerRep *)self naturalBounds];
  v15.x = v6;
  v15.y = v8;
  v9 = CGRectContainsPoint(v16, v15);
  gestureState = [gesture gestureState];
  if (gestureState > 3)
  {
    if ((gestureState - 4) >= 2)
    {
      return 1;
    }

    goto LABEL_8;
  }

  switch(gestureState)
  {
    case 1:
      goto LABEL_12;
    case 2:
      if (([objc_msgSend(-[THWReviewTextAnswerRep interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0)
      {
        pressed = [(THWReviewTextAnswerRep *)self pressed];
        [(THWReviewTextAnswerRep *)self setPressed:v9];
        if (v9 == pressed)
        {
          return 1;
        }

        if (v9)
        {
LABEL_12:
          [-[THWReviewTextAnswerRep layout](self "layout")];
          if (v6 < v13 + 47.0)
          {
            v11 = 1;
          }

          else
          {
            v11 = 2;
          }

          goto LABEL_15;
        }
      }

LABEL_8:
      v11 = 0;
LABEL_15:
      [(THWReviewTextAnswerRep *)self setPressTarget:v11];
      return 1;
    case 3:
      if ([(THWReviewTextAnswerRep *)self pressed])
      {
        [(THWReviewTextAnswerRep *)self p_selectAnswer];
      }

      goto LABEL_8;
  }

  return 1;
}

- (void)setPressTarget:(int)target
{
  if (self->_pressTarget == target)
  {
    return;
  }

  self->_pressTarget = target;
  interactiveCanvasController = [(THWReviewTextAnswerRep *)self interactiveCanvasController];
  v5 = [interactiveCanvasController layerForRep:{objc_msgSend(interactiveCanvasController, "repForLayout:", objc_msgSend(-[THWReviewTextAnswerRep layout](self, "layout"), "textLayout"))}];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  pressTarget = self->_pressTarget;
  if (pressTarget == 2)
  {
    [(THWReviewTextAnswerRep *)self setPressed:1];
    v23.origin.x = v7;
    v23.origin.y = v9;
    v23.size.width = v11;
    v23.size.height = v13;
    v18 = CGRectGetMinX(v23) + 47.0;
    v24.origin.x = v7;
    v24.origin.y = v9;
    v24.size.width = v11;
    v24.size.height = v13;
    [v5 addPressAnimationFromPoint:v18 scale:{CGRectGetMidY(v24), 0.85}];
    radioButtonLayer = self->_radioButtonLayer;
    [(CALayer *)radioButtonLayer position];
  }

  else
  {
    if (pressTarget != 1)
    {
      if (!pressTarget)
      {
        [(THWReviewTextAnswerRep *)self setPressed:0];
        [v5 position];
        [v5 addRecoilAnimationFromPoint:0 hardRebound:?];
        v15 = self->_radioButtonLayer;
        [(CALayer *)v15 position];
        [(CALayer *)v15 addRecoilAnimationFromPoint:0 hardRebound:?];
      }

      goto LABEL_9;
    }

    [(THWReviewTextAnswerRep *)self setPressed:1];
    v21.origin.x = v7;
    v21.origin.y = v9;
    v21.size.width = v11;
    v21.size.height = v13;
    v16 = CGRectGetMinX(v21) + 47.0;
    v22.origin.x = v7;
    v22.origin.y = v9;
    v22.size.width = v11;
    v22.size.height = v13;
    [v5 addPressAnimationFromPoint:v16 scale:{CGRectGetMidY(v22), 1.17647059}];
    radioButtonLayer = self->_radioButtonLayer;
    [(CALayer *)radioButtonLayer position];
  }

  [CALayer addPressAnimationFromPoint:"addPressAnimationFromPoint:scale:" scale:?];
LABEL_9:
  canvas = [(THWReviewTextAnswerRep *)self canvas];

  [canvas invalidateLayers];
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(THWReviewTextAnswerRep *)self updateRadioState];
  }
}

- (void)setState:(int)state
{
  if (self->_state != state)
  {
    self->_state = state;
    canvas = [(THWReviewTextAnswerRep *)self canvas];

    [canvas invalidateLayers];
  }
}

- (void)p_selectAnswer
{
  p_questionRep = [(THWReviewTextAnswerRep *)self p_questionRep];
  p_questionHost = [(THWReviewTextAnswerRep *)self p_questionHost];
  v5 = [objc_msgSend(objc_msgSend(p_questionRep "questionLayout")];

  [p_questionHost reviewQuestion:p_questionRep selectChoice:v5];
}

- (id)p_answerText
{
  v2 = [objc_msgSend(-[THWReviewTextAnswerRep layout](self "layout")];

  return [v2 stringValue];
}

- (id)p_answerAccessibilityDescription
{
  v2 = [-[THWReviewTextAnswerRep layout](self "layout")];

  return [v2 accessibilityDescription];
}

- (id)p_questionRep
{
  interactiveCanvasController = [(THWReviewTextAnswerRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionRep];
}

- (id)p_questionHost
{
  interactiveCanvasController = [(THWReviewTextAnswerRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

@end