@interface THWReviewTextMultipleChoiceRep
- (id)additionalLayersOverLayer;
- (id)p_questionHost;
- (id)p_repForChoiceIndex:(unint64_t)index;
- (int)reviewQuestionStateForChoiceIndex:(unint64_t)index;
- (void)dealloc;
- (void)p_updateMoreAnswersLayer;
- (void)reviewQuestionAnswerUpdated;
- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)index withState:(int)state;
- (void)screenScaleDidChange;
- (void)setQuestionState:(int)state;
- (void)updateChildrenFromLayout;
@end

@implementation THWReviewTextMultipleChoiceRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewTextMultipleChoiceRep;
  [(THWReviewTextMultipleChoiceRep *)&v3 dealloc];
}

- (void)updateChildrenFromLayout
{
  v3.receiver = self;
  v3.super_class = THWReviewTextMultipleChoiceRep;
  [(THWReviewTextMultipleChoiceRep *)&v3 updateChildrenFromLayout];
  if (!self->_questionState)
  {
    -[THWReviewTextMultipleChoiceRep setQuestionState:](self, "setQuestionState:", [-[THWReviewTextMultipleChoiceRep p_questionHost](self "p_questionHost")]);
    [(THWReviewTextMultipleChoiceRep *)self reviewQuestionAnswerUpdated];
  }
}

- (void)screenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = THWReviewTextMultipleChoiceRep;
  [(THWReviewTextMultipleChoiceRep *)&v3 screenScaleDidChange];
  if (self->_moreAnswersLayer)
  {
    [-[THWReviewTextMultipleChoiceRep canvas](self "canvas")];
    [(THWReviewMoreAnswersLayer *)self->_moreAnswersLayer setContentsScale:?];
  }
}

- (id)additionalLayersOverLayer
{
  if ([(THWReviewTextMultipleChoiceRep *)self questionState]!= 5)
  {
    return 0;
  }

  [(THWReviewTextMultipleChoiceRep *)self p_updateMoreAnswersLayer];
  if (!self->_moreAnswersLayer)
  {
    return 0;
  }

  moreAnswersLayer = self->_moreAnswersLayer;
  return [NSArray arrayWithObjects:&moreAnswersLayer count:1];
}

- (void)p_updateMoreAnswersLayer
{
  canvas = [(THWReviewTextMultipleChoiceRep *)self canvas];
  [canvas viewScale];
  v5 = v4;
  [canvas contentsScale];
  v7 = v6;
  if (!self->_moreAnswersLayer)
  {
    v8 = objc_alloc_init(THWReviewMoreAnswersLayer);
    self->_moreAnswersLayer = v8;
    [(THWReviewMoreAnswersLayer *)v8 setContentsScale:v7];
  }

  [objc_msgSend(objc_msgSend(-[THWReviewTextMultipleChoiceRep parentRep](self "parentRep")];
  TSDRectWithSize();
  CGRectInset(v15, 0.0, 14.0);
  [(THWReviewMoreAnswersLayer *)self->_moreAnswersLayer layerSize];
  TSDRectWithSizeAlignedToRect();
  TSDMultiplyPointScalar();
  TSDRoundedPointForScale();
  v10 = v9;
  v12 = v11;
  [(THWReviewMoreAnswersLayer *)self->_moreAnswersLayer setScale:v5];
  moreAnswersLayer = self->_moreAnswersLayer;

  [(THWReviewMoreAnswersLayer *)moreAnswersLayer setPosition:v10, v12];
}

- (int)reviewQuestionStateForChoiceIndex:(unint64_t)index
{
  v3 = [(THWReviewTextMultipleChoiceRep *)self p_repForChoiceIndex:index];

  return [v3 state];
}

- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)index withState:(int)state
{
  v4 = *&state;
  v5 = [(THWReviewTextMultipleChoiceRep *)self p_repForChoiceIndex:index];

  [v5 setState:v4];
}

- (void)reviewQuestionAnswerUpdated
{
  v3 = [objc_msgSend(-[THWReviewQuestionLayout question](-[THWReviewTextMultipleChoiceRep questionLayout](self "questionLayout")];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      [-[THWReviewTextMultipleChoiceRep p_repForChoiceIndex:](self p_repForChoiceIndex:{i), "updateRadioState"}];
    }
  }
}

- (void)setQuestionState:(int)state
{
  if (self->_questionState != state)
  {
    self->_questionState = state;
    [-[THWReviewTextMultipleChoiceRep canvas](self "canvas")];
    if (self->_questionState <= 2u)
    {
      v5 = [objc_msgSend(objc_msgSend(-[THWReviewTextMultipleChoiceRep layout](self "layout")];
      if (v5)
      {
        v6 = v5;
        for (i = 0; i != v6; ++i)
        {
          v8 = [(THWReviewTextMultipleChoiceRep *)self p_repForChoiceIndex:i];
          v9 = v8;
          if (state < 2 || [v8 state] != 1)
          {
            [v9 setState:0];
            [v9 updateRadioState];
          }
        }
      }
    }

    p_questionHost = [(THWReviewTextMultipleChoiceRep *)self p_questionHost];

    [p_questionHost reviewQuestionDidUpdateState:self];
  }
}

- (id)p_repForChoiceIndex:(unint64_t)index
{
  objc_opt_class();
  [-[THWReviewTextMultipleChoiceRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUDynamicCast();
}

- (id)p_questionHost
{
  interactiveCanvasController = [(THWReviewTextMultipleChoiceRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

@end