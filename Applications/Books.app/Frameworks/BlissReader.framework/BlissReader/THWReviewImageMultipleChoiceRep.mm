@interface THWReviewImageMultipleChoiceRep
- (id)additionalLayersOverLayer;
- (id)p_choiceAtIndex:(unint64_t)index;
- (id)p_questionHost;
- (id)p_repForChoiceIndex:(unint64_t)index;
- (int)reviewQuestionStateForChoiceIndex:(unint64_t)index;
- (void)control:(id)control repWasAdded:(id)added;
- (void)control:(id)control repWillBeRemoved:(id)removed;
- (void)dealloc;
- (void)p_updateChoiceStates;
- (void)p_updateMoreAnswersLayer;
- (void)reviewQuestionAnswerUpdated;
- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)index withState:(int)state;
- (void)screenScaleDidChange;
- (void)setQuestionState:(int)state;
- (void)updateChildrenFromLayout;
@end

@implementation THWReviewImageMultipleChoiceRep

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewImageMultipleChoiceRep;
  [(THWReviewImageMultipleChoiceRep *)&v3 dealloc];
}

- (void)updateChildrenFromLayout
{
  v3.receiver = self;
  v3.super_class = THWReviewImageMultipleChoiceRep;
  [(THWReviewImageMultipleChoiceRep *)&v3 updateChildrenFromLayout];
  if (!self->_questionState)
  {
    -[THWReviewImageMultipleChoiceRep setQuestionState:](self, "setQuestionState:", [-[THWReviewImageMultipleChoiceRep p_questionHost](self "p_questionHost")]);
  }

  [(THWReviewImageMultipleChoiceRep *)self p_updateChoiceStates];
}

- (void)p_updateChoiceStates
{
  v3 = [(NSArray *)self->_choiceStates count];
  if (v3 != [objc_msgSend(objc_msgSend(-[THWReviewImageMultipleChoiceRep layout](self "layout")])
  {

    self->_choiceStates = 0;
    v4 = objc_alloc_init(NSMutableArray);
    p_questionHost = [(THWReviewImageMultipleChoiceRep *)self p_questionHost];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    layout = [objc_msgSend(-[THWReviewImageMultipleChoiceRep layout](self layout];
    v7 = [layout countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(layout);
          }

          v11 = [[THWReviewImageAnswerChoiceState alloc] initWithChoice:*(*(&v12 + 1) + 8 * v10) questionRep:self questionHost:p_questionHost];
          [v4 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [layout countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    self->_choiceStates = [v4 copy];
  }
}

- (void)screenScaleDidChange
{
  v3.receiver = self;
  v3.super_class = THWReviewImageMultipleChoiceRep;
  [(THWReviewImageMultipleChoiceRep *)&v3 screenScaleDidChange];
  if (self->_moreAnswersLayer)
  {
    [-[THWReviewImageMultipleChoiceRep canvas](self "canvas")];
    [(THWReviewMoreAnswersLayer *)self->_moreAnswersLayer setContentsScale:?];
  }
}

- (id)additionalLayersOverLayer
{
  if ([(THWReviewImageMultipleChoiceRep *)self questionState]!= 5)
  {
    return 0;
  }

  [(THWReviewImageMultipleChoiceRep *)self p_updateMoreAnswersLayer];
  if (!self->_moreAnswersLayer)
  {
    return 0;
  }

  moreAnswersLayer = self->_moreAnswersLayer;
  return [NSArray arrayWithObjects:&moreAnswersLayer count:1];
}

- (void)p_updateMoreAnswersLayer
{
  canvas = [(THWReviewImageMultipleChoiceRep *)self canvas];
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

  [objc_msgSend(objc_msgSend(-[THWReviewImageMultipleChoiceRep parentRep](self "parentRep")];
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

- (void)control:(id)control repWasAdded:(id)added
{
  if (![control tag])
  {
    [(THWReviewImageMultipleChoiceRep *)self p_updateChoiceStates];
    objc_opt_class();
    v6 = TSUDynamicCast();
    index = [control index];
    if (index >= [(NSArray *)self->_choiceStates count])
    {
      v8 = 0;
    }

    else
    {
      v8 = -[NSArray objectAtIndex:](self->_choiceStates, "objectAtIndex:", [control index]);
    }

    [v6 setDelegate:v8];
  }
}

- (void)control:(id)control repWillBeRemoved:(id)removed
{
  if (![control tag])
  {
    objc_opt_class();
    v4 = TSUDynamicCast();

    [v4 setDelegate:0];
  }
}

- (int)reviewQuestionStateForChoiceIndex:(unint64_t)index
{
  if ([(NSArray *)self->_choiceStates count]<= index)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_choiceStates objectAtIndex:index];
  if (!v5)
  {
    return 0;
  }

  return [v5 choiceState];
}

- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)index withState:(int)state
{
  v4 = *&state;
  if ([(NSArray *)self->_choiceStates count]<= index)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_choiceStates objectAtIndex:index];
  }

  [v7 setChoiceState:v4];
}

- (void)reviewQuestionAnswerUpdated
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  choiceStates = self->_choiceStates;
  v3 = [(NSArray *)choiceStates countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(choiceStates);
        }

        [*(*(&v7 + 1) + 8 * i) updateRadioState];
      }

      v4 = [(NSArray *)choiceStates countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setQuestionState:(int)state
{
  if (self->_questionState != state)
  {
    self->_questionState = state;
    [-[THWReviewImageMultipleChoiceRep canvas](self "canvas")];
    if (self->_questionState <= 2u)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      choiceStates = self->_choiceStates;
      v6 = [(NSArray *)choiceStates countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(choiceStates);
            }

            v10 = *(*(&v11 + 1) + 8 * i);
            if (state < 2 || [*(*(&v11 + 1) + 8 * i) choiceState] != 1)
            {
              [v10 setChoiceState:0];
              [v10 updateRadioState];
            }
          }

          v7 = [(NSArray *)choiceStates countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }

    [-[THWReviewImageMultipleChoiceRep p_questionHost](self "p_questionHost")];
  }
}

- (id)p_choiceAtIndex:(unint64_t)index
{
  v4 = [objc_msgSend(-[THWReviewImageMultipleChoiceRep layout](self "layout")];
  if ([v4 count] <= index)
  {
    return 0;
  }

  return [v4 objectAtIndex:index];
}

- (id)p_repForChoiceIndex:(unint64_t)index
{
  objc_opt_class();
  [-[THWReviewImageMultipleChoiceRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUDynamicCast();
}

- (id)p_questionHost
{
  interactiveCanvasController = [(THWReviewImageMultipleChoiceRep *)self interactiveCanvasController];

  return [interactiveCanvasController ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

@end