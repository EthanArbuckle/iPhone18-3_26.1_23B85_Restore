@interface THWReviewImageAnswerChoiceState
- (NSString)choiceAccessibilityDescription;
- (THWReviewImageAnswerChoiceState)initWithChoice:(id)choice questionRep:(id)rep questionHost:(id)host;
- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted;
- (int)buttonControlState:(id)state;
- (unint64_t)p_choiceIndex;
- (void)buttonControl:(id)control addAdditionalChildLayersToArray:(id)array;
- (void)buttonControlHighlightedDidChange:(id)change;
- (void)buttonControlWasPressed:(id)pressed;
- (void)dealloc;
- (void)p_setImagePressed:(BOOL)pressed forButton:(id)button;
- (void)setChoiceState:(int)state;
- (void)setRadioState:(int)state;
- (void)updateRadioState;
@end

@implementation THWReviewImageAnswerChoiceState

- (THWReviewImageAnswerChoiceState)initWithChoice:(id)choice questionRep:(id)rep questionHost:(id)host
{
  v11.receiver = self;
  v11.super_class = THWReviewImageAnswerChoiceState;
  v8 = [(THWReviewImageAnswerChoiceState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_questionRep = rep;
    v8->_questionHost = host;
    v8->_choice = choice;
    [(THWReviewImageAnswerChoiceState *)v9 updateRadioState];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewImageAnswerChoiceState;
  [(THWReviewImageAnswerChoiceState *)&v3 dealloc];
}

- (void)setChoiceState:(int)state
{
  if (self->_choiceState != state)
  {
    self->_choiceState = state;
    [(THWReviewQuestionHosting *)self->_questionHost reviewQuestionInvalidateLayers:self->_questionRep];
  }
}

- (void)setRadioState:(int)state
{
  if (self->_radioState != state)
  {
    self->_radioState = state;
    [(THWReviewQuestionHosting *)self->_questionHost reviewQuestionInvalidateLayers:self->_questionRep];
  }
}

- (void)updateRadioState
{
  v3 = [(THWReviewQuestionHosting *)self->_questionHost reviewQuestion:self->_questionRep radioStateForChoice:[(THWReviewImageAnswerChoiceState *)self p_choiceIndex] pressed:self->_pressed];

  [(THWReviewImageAnswerChoiceState *)self setRadioState:v3];
}

- (void)buttonControlWasPressed:(id)pressed
{
  questionRep = self->_questionRep;
  questionHost = self->_questionHost;
  p_choiceIndex = [(THWReviewImageAnswerChoiceState *)self p_choiceIndex];

  [(THWReviewQuestionHosting *)questionHost reviewQuestion:questionRep selectChoice:p_choiceIndex];
}

- (int)buttonControlState:(id)state
{
  if ([(THWReviewQuestionRep *)self->_questionRep questionState]== 6)
  {
    return 2;
  }

  else
  {
    return 2 * ([(THWReviewImageAnswerChoiceState *)self choiceState]== 1);
  }
}

- (id)buttonControl:(id)control imageForState:(int)state highlighted:(BOOL)highlighted
{
  if ([objc_msgSend(control "layout")])
  {
    return 0;
  }

  choice = self->_choice;

  return [(THWReviewChoice *)choice contentImage];
}

- (void)buttonControlHighlightedDidChange:(id)change
{
  self->_pressed = [change highlighted];
  -[THWReviewImageAnswerChoiceState setRadioState:](self, "setRadioState:", -[THWReviewQuestionHosting reviewQuestion:radioStateForChoice:pressed:](self->_questionHost, "reviewQuestion:radioStateForChoice:pressed:", self->_questionRep, -[THWReviewImageAnswerChoiceState p_choiceIndex](self, "p_choiceIndex"), [change highlighted]));
  pressed = self->_pressed;

  [(THWReviewImageAnswerChoiceState *)self p_setImagePressed:pressed forButton:change];
}

- (void)p_setImagePressed:(BOOL)pressed forButton:(id)button
{
  pressedCopy = pressed;
  v6 = [objc_msgSend(button "interactiveCanvasController")];
  if (pressedCopy)
  {
    if (self->_radioState == 2)
    {
      [(CALayer *)self->_radioButtonLayer addButtonShadow];
    }

    [v6 frame];
    TSDCenterOfRect();

    [v6 addPressAnimationFromPoint:? scale:?];
  }

  else
  {
    [(CALayer *)self->_radioButtonLayer removeButtonShadow];

    [v6 removePressAnimation];
  }
}

- (void)buttonControl:(id)control addAdditionalChildLayersToArray:(id)array
{
  if (!self->_radioButtonLayer)
  {
    self->_radioButtonLayer = +[TSDNoDefaultImplicitActionLayer layer];
    -[CALayer setDelegate:](self->_radioButtonLayer, "setDelegate:", [control interactiveCanvasController]);
    [(CALayer *)self->_radioButtonLayer setBounds:0.0, 0.0, 46.0, 46.0];
  }

  [objc_msgSend(objc_msgSend(control "interactiveCanvasController")];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [objc_msgSend(control "canvas")];
  v16 = v15;
  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  v17 = CGRectGetMinX(v36) + 46.0 * 0.5 * v16;
  v37.origin.x = v8;
  v37.origin.y = v10;
  v37.size.width = v12;
  v37.size.height = v14;
  v18 = CGRectGetMaxY(v37) + 46.0 * -0.5 * v16;
  [(CALayer *)self->_radioButtonLayer position];
  if (v17 != v20 || v18 != v19)
  {
    [(CALayer *)self->_radioButtonLayer setPosition:v17, v18];
  }

  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeScale(&v35, v16, v16);
  v34 = v35;
  [(CALayer *)self->_radioButtonLayer setAffineTransform:&v34];
  v22 = [(THWReviewQuestionHosting *)self->_questionHost reviewQuestion:self->_questionRep cachedImageNamed:*(&off_45E7D8[4 * self->_choiceState] + self->_radioState)];
  [objc_msgSend(control "canvas")];
  v24 = v23;
  v25 = [v22 CGImageForContentsScale:?];
  if ([(CALayer *)self->_radioButtonLayer contents]!= v25)
  {
    [(CALayer *)self->_radioButtonLayer setContents:v25];
    [(CALayer *)self->_radioButtonLayer setContentsScale:v24];
  }

  radioButtonLayer = self->_radioButtonLayer;
  if (radioButtonLayer)
  {
    [(CALayer *)radioButtonLayer frame];
    v28 = v27;
    v30 = v29;
    TSDFloorForScale();
    v32 = v31;
    TSDFloorForScale();
    [(CALayer *)self->_radioButtonLayer setFrame:v32, v33, v28, v30];
    [array addObject:self->_radioButtonLayer];
  }
}

- (unint64_t)p_choiceIndex
{
  v3 = [-[THWReviewQuestionRep questionLayout](self->_questionRep "questionLayout")];
  choice = self->_choice;

  return [v3 indexForChoice:choice];
}

- (NSString)choiceAccessibilityDescription
{
  choice = [(THWReviewImageAnswerChoiceState *)self choice];

  return [(THWReviewChoice *)choice accessibilityDescription];
}

@end