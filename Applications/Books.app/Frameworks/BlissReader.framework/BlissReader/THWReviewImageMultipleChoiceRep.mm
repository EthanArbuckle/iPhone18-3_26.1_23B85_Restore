@interface THWReviewImageMultipleChoiceRep
- (id)additionalLayersOverLayer;
- (id)p_choiceAtIndex:(unint64_t)a3;
- (id)p_questionHost;
- (id)p_repForChoiceIndex:(unint64_t)a3;
- (int)reviewQuestionStateForChoiceIndex:(unint64_t)a3;
- (void)control:(id)a3 repWasAdded:(id)a4;
- (void)control:(id)a3 repWillBeRemoved:(id)a4;
- (void)dealloc;
- (void)p_updateChoiceStates;
- (void)p_updateMoreAnswersLayer;
- (void)reviewQuestionAnswerUpdated;
- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)a3 withState:(int)a4;
- (void)screenScaleDidChange;
- (void)setQuestionState:(int)a3;
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
    v5 = [(THWReviewImageMultipleChoiceRep *)self p_questionHost];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [objc_msgSend(-[THWReviewImageMultipleChoiceRep layout](self layout];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [[THWReviewImageAnswerChoiceState alloc] initWithChoice:*(*(&v12 + 1) + 8 * v10) questionRep:self questionHost:v5];
          [v4 addObject:v11];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v3 = [(THWReviewImageMultipleChoiceRep *)self canvas];
  [v3 viewScale];
  v5 = v4;
  [v3 contentsScale];
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

- (void)control:(id)a3 repWasAdded:(id)a4
{
  if (![a3 tag])
  {
    [(THWReviewImageMultipleChoiceRep *)self p_updateChoiceStates];
    objc_opt_class();
    v6 = TSUDynamicCast();
    v7 = [a3 index];
    if (v7 >= [(NSArray *)self->_choiceStates count])
    {
      v8 = 0;
    }

    else
    {
      v8 = -[NSArray objectAtIndex:](self->_choiceStates, "objectAtIndex:", [a3 index]);
    }

    [v6 setDelegate:v8];
  }
}

- (void)control:(id)a3 repWillBeRemoved:(id)a4
{
  if (![a3 tag])
  {
    objc_opt_class();
    v4 = TSUDynamicCast();

    [v4 setDelegate:0];
  }
}

- (int)reviewQuestionStateForChoiceIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_choiceStates count]<= a3)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_choiceStates objectAtIndex:a3];
  if (!v5)
  {
    return 0;
  }

  return [v5 choiceState];
}

- (void)reviewQuestionUpdateChoiceIndex:(unint64_t)a3 withState:(int)a4
{
  v4 = *&a4;
  if ([(NSArray *)self->_choiceStates count]<= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_choiceStates objectAtIndex:a3];
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

- (void)setQuestionState:(int)a3
{
  if (self->_questionState != a3)
  {
    self->_questionState = a3;
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
            if (a3 < 2 || [*(*(&v11 + 1) + 8 * i) choiceState] != 1)
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

- (id)p_choiceAtIndex:(unint64_t)a3
{
  v4 = [objc_msgSend(-[THWReviewImageMultipleChoiceRep layout](self "layout")];
  if ([v4 count] <= a3)
  {
    return 0;
  }

  return [v4 objectAtIndex:a3];
}

- (id)p_repForChoiceIndex:(unint64_t)a3
{
  objc_opt_class();
  [-[THWReviewImageMultipleChoiceRep interactiveCanvasController](self "interactiveCanvasController")];

  return TSUDynamicCast();
}

- (id)p_questionHost
{
  v3 = [(THWReviewImageMultipleChoiceRep *)self interactiveCanvasController];

  return [v3 ancestorRepOfRep:self orDelegateConformingToProtocol:&OBJC_PROTOCOL___THWReviewQuestionHosting];
}

@end