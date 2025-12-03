@interface RAPDirectionInstructionsIncorrectQuestion
- ($873BFAB23BBB6E2F0B0288ED2F935688)routeStepMapRect;
- (BOOL)hasCorrectionForRouteStep:(id)step transitListItem:(id)item;
- (BOOL)isComplete;
- (NSString)localizedTitle;
- (RAPDirectionInstructionsIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question direction:(id)direction;
- (id)_correctionforComposedRouteStep:(id)step listItem:(id)item;
- (id)instructionCorrectionQuestionForStep:(id)step listItem:(id)item;
- (void)_fillSubmissionParameters:(id)parameters;
- (void)saveCorrection:(id)correction;
@end

@implementation RAPDirectionInstructionsIncorrectQuestion

- ($873BFAB23BBB6E2F0B0288ED2F935688)routeStepMapRect
{
  x = self->_routeStepMapRect.origin.x;
  y = self->_routeStepMapRect.origin.y;
  width = self->_routeStepMapRect.size.width;
  height = self->_routeStepMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (void)_fillSubmissionParameters:(id)parameters
{
  parametersCopy = parameters;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_incorrectInstructions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v18 + 1) + 8 * v9) _fillSubmissionParameters:{parametersCopy, v18}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [parametersCopy setType:8];
  commonContext = [parametersCopy commonContext];

  if (!commonContext)
  {
    v11 = objc_alloc_init(GEORPFeedbackCommonContext);
    [parametersCopy setCommonContext:v11];
  }

  details = [parametersCopy details];

  if (!details)
  {
    v13 = objc_alloc_init(GEORPFeedbackDetails);
    [parametersCopy setDetails:v13];
  }

  details2 = [parametersCopy details];
  directionsFeedback = [details2 directionsFeedback];

  if (!directionsFeedback)
  {
    directionsFeedback = objc_alloc_init(GEORPDirectionsFeedback);
    details3 = [parametersCopy details];
    [details3 setDirectionsFeedback:directionsFeedback];
  }

  [directionsFeedback setCorrectionType:1];
  commonContext2 = [parametersCopy commonContext];
  [commonContext2 addUserPath:43];
}

- (BOOL)hasCorrectionForRouteStep:(id)step transitListItem:(id)item
{
  v4 = [(RAPDirectionInstructionsIncorrectQuestion *)self _correctionforComposedRouteStep:step listItem:item];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isComplete
{
  incorrectInstructions = self->_incorrectInstructions;
  if (incorrectInstructions)
  {
    LOBYTE(incorrectInstructions) = [(NSMutableArray *)incorrectInstructions count]!= 0;
  }

  return incorrectInstructions;
}

- (void)saveCorrection:(id)correction
{
  correctionCopy = correction;
  incorrectInstructions = self->_incorrectInstructions;
  v12 = correctionCopy;
  if (!incorrectInstructions)
  {
    v6 = objc_opt_new();
    v7 = self->_incorrectInstructions;
    self->_incorrectInstructions = v6;

    correctionCopy = v12;
    incorrectInstructions = self->_incorrectInstructions;
  }

  if (([(NSMutableArray *)incorrectInstructions containsObject:correctionCopy]& 1) != 0)
  {
    comment = [v12 comment];
    v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v10 = [comment stringByTrimmingCharactersInSet:v9];
    v11 = [v10 length];

    if (!v11)
    {
      [(NSMutableArray *)self->_incorrectInstructions removeObject:v12];
    }
  }

  else
  {
    [(NSMutableArray *)self->_incorrectInstructions addObject:v12];
  }

  [(RAPQuestion *)self _didChange];
}

- (id)_correctionforComposedRouteStep:(id)step listItem:(id)item
{
  stepCopy = step;
  itemCopy = item;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_incorrectInstructions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        composedRouteStep = [v12 composedRouteStep];
        v14 = composedRouteStep;
        if (composedRouteStep == stepCopy)
        {
          listItem = [v12 listItem];

          if (listItem == itemCopy)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v9;
}

- (id)instructionCorrectionQuestionForStep:(id)step listItem:(id)item
{
  stepCopy = step;
  itemCopy = item;
  v8 = [(RAPDirectionInstructionsIncorrectQuestion *)self _correctionforComposedRouteStep:stepCopy listItem:itemCopy];
  if (!v8)
  {
    v9 = [RAPInstructionCorrectionQuestion alloc];
    report = [(RAPQuestion *)self report];
    v8 = [(RAPInstructionCorrectionQuestion *)v9 initWithReport:report parentQuestion:self composedRouteStep:stepCopy listItem:itemCopy];
  }

  return v8;
}

- (RAPDirectionInstructionsIncorrectQuestion)initWithReport:(id)report parentQuestion:(id)question direction:(id)direction
{
  directionCopy = direction;
  v13.receiver = self;
  v13.super_class = RAPDirectionInstructionsIncorrectQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:report parentQuestion:question];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedValue, direction);
  }

  return v11;
}

- (NSString)localizedTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Directions [Report an Issue category]" value:@"localized string not found" table:0];

  return v3;
}

@end