@interface THWReviewTextAnswerRep
- (BOOL)handleGesture:(id)a3;
- (id)p_answerAccessibilityDescription;
- (id)p_answerText;
- (id)p_questionHost;
- (id)p_questionRep;
- (unint64_t)p_choiceIndex;
- (void)addAdditionalChildLayersToArray:(id)a3;
- (void)dealloc;
- (void)p_selectAnswer;
- (void)setPressTarget:(int)a3;
- (void)setPressed:(BOOL)a3;
- (void)setRadioState:(int)a3;
- (void)setState:(int)a3;
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

- (void)setRadioState:(int)a3
{
  if (self->_radioState != a3)
  {
    self->_radioState = a3;
    v5 = [(THWReviewTextAnswerRep *)self canvas];

    [v5 invalidateLayers];
  }
}

- (unint64_t)p_choiceIndex
{
  v3 = [objc_msgSend(-[THWReviewTextAnswerRep p_questionRep](self "p_questionRep")];
  v4 = [-[THWReviewTextAnswerRep layout](self "layout")];

  return [v3 indexForChoice:v4];
}

- (void)addAdditionalChildLayersToArray:(id)a3
{
  v5 = [(THWReviewTextAnswerRep *)self layout];
  v6 = [(THWReviewTextAnswerRep *)self p_questionRep];
  v7 = [(THWReviewTextAnswerRep *)self p_questionHost];
  if (!self->_radioButtonLayer)
  {
    self->_radioButtonLayer = objc_alloc_init(TSDNoDefaultImplicitActionLayer);
    [(CALayer *)self->_radioButtonLayer setDelegate:[(THWReviewTextAnswerRep *)self interactiveCanvasController]];
  }

  v8 = [v7 reviewQuestion:v6 cachedImageNamed:*(&off_45E660[4 * self->_state] + self->_radioState)];
  [(CALayer *)self->_radioButtonLayer setBounds:0.0, 0.0, 46.0, 46.0];
  [-[THWReviewTextAnswerRep canvas](self "canvas")];
  v10 = v9;
  [v5 labelFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v5 horizontalOffset];
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
    [a3 addObject:self->_radioButtonLayer];
  }
}

- (BOOL)handleGesture:(id)a3
{
  [a3 naturalLocationForRep:self];
  v6 = v5;
  v8 = v7;
  [(THWReviewTextAnswerRep *)self naturalBounds];
  v15.x = v6;
  v15.y = v8;
  v9 = CGRectContainsPoint(v16, v15);
  v10 = [a3 gestureState];
  if (v10 > 3)
  {
    if ((v10 - 4) >= 2)
    {
      return 1;
    }

    goto LABEL_8;
  }

  switch(v10)
  {
    case 1:
      goto LABEL_12;
    case 2:
      if (([objc_msgSend(-[THWReviewTextAnswerRep interactiveCanvasController](self "interactiveCanvasController")] & 1) == 0)
      {
        v12 = [(THWReviewTextAnswerRep *)self pressed];
        [(THWReviewTextAnswerRep *)self setPressed:v9];
        if (v9 == v12)
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

- (void)setPressTarget:(int)a3
{
  if (self->_pressTarget == a3)
  {
    return;
  }

  self->_pressTarget = a3;
  v4 = [(THWReviewTextAnswerRep *)self interactiveCanvasController];
  v5 = [v4 layerForRep:{objc_msgSend(v4, "repForLayout:", objc_msgSend(-[THWReviewTextAnswerRep layout](self, "layout"), "textLayout"))}];
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
  v19 = [(THWReviewTextAnswerRep *)self canvas];

  [v19 invalidateLayers];
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(THWReviewTextAnswerRep *)self updateRadioState];
  }
}

- (void)setState:(int)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    v5 = [(THWReviewTextAnswerRep *)self canvas];

    [v5 invalidateLayers];
  }
}

- (void)p_selectAnswer
{
  v3 = [(THWReviewTextAnswerRep *)self p_questionRep];
  v4 = [(THWReviewTextAnswerRep *)self p_questionHost];
  v5 = [objc_msgSend(objc_msgSend(v3 "questionLayout")];

  [v4 reviewQuestion:v3 selectChoice:v5];
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
  v3 = [(THWReviewTextAnswerRep *)self interactiveCanvasController];

  return [v3 ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionRep];
}

- (id)p_questionHost
{
  v3 = [(THWReviewTextAnswerRep *)self interactiveCanvasController];

  return [v3 ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

@end