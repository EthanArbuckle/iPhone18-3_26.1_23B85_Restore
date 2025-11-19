@interface RAPDirectionInstructionsIncorrectQuestion
- ($873BFAB23BBB6E2F0B0288ED2F935688)routeStepMapRect;
- (BOOL)hasCorrectionForRouteStep:(id)a3 transitListItem:(id)a4;
- (BOOL)isComplete;
- (NSString)localizedTitle;
- (RAPDirectionInstructionsIncorrectQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 direction:(id)a5;
- (id)_correctionforComposedRouteStep:(id)a3 listItem:(id)a4;
- (id)instructionCorrectionQuestionForStep:(id)a3 listItem:(id)a4;
- (void)_fillSubmissionParameters:(id)a3;
- (void)saveCorrection:(id)a3;
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

- (void)_fillSubmissionParameters:(id)a3
{
  v4 = a3;
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

        [*(*(&v18 + 1) + 8 * v9) _fillSubmissionParameters:{v4, v18}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [v4 setType:8];
  v10 = [v4 commonContext];

  if (!v10)
  {
    v11 = objc_alloc_init(GEORPFeedbackCommonContext);
    [v4 setCommonContext:v11];
  }

  v12 = [v4 details];

  if (!v12)
  {
    v13 = objc_alloc_init(GEORPFeedbackDetails);
    [v4 setDetails:v13];
  }

  v14 = [v4 details];
  v15 = [v14 directionsFeedback];

  if (!v15)
  {
    v15 = objc_alloc_init(GEORPDirectionsFeedback);
    v16 = [v4 details];
    [v16 setDirectionsFeedback:v15];
  }

  [v15 setCorrectionType:1];
  v17 = [v4 commonContext];
  [v17 addUserPath:43];
}

- (BOOL)hasCorrectionForRouteStep:(id)a3 transitListItem:(id)a4
{
  v4 = [(RAPDirectionInstructionsIncorrectQuestion *)self _correctionforComposedRouteStep:a3 listItem:a4];
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

- (void)saveCorrection:(id)a3
{
  v4 = a3;
  incorrectInstructions = self->_incorrectInstructions;
  v12 = v4;
  if (!incorrectInstructions)
  {
    v6 = objc_opt_new();
    v7 = self->_incorrectInstructions;
    self->_incorrectInstructions = v6;

    v4 = v12;
    incorrectInstructions = self->_incorrectInstructions;
  }

  if (([(NSMutableArray *)incorrectInstructions containsObject:v4]& 1) != 0)
  {
    v8 = [v12 comment];
    v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];
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

- (id)_correctionforComposedRouteStep:(id)a3 listItem:(id)a4
{
  v6 = a3;
  v7 = a4;
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
        v13 = [v12 composedRouteStep];
        v14 = v13;
        if (v13 == v6)
        {
          v15 = [v12 listItem];

          if (v15 == v7)
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

- (id)instructionCorrectionQuestionForStep:(id)a3 listItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RAPDirectionInstructionsIncorrectQuestion *)self _correctionforComposedRouteStep:v6 listItem:v7];
  if (!v8)
  {
    v9 = [RAPInstructionCorrectionQuestion alloc];
    v10 = [(RAPQuestion *)self report];
    v8 = [(RAPInstructionCorrectionQuestion *)v9 initWithReport:v10 parentQuestion:self composedRouteStep:v6 listItem:v7];
  }

  return v8;
}

- (RAPDirectionInstructionsIncorrectQuestion)initWithReport:(id)a3 parentQuestion:(id)a4 direction:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = RAPDirectionInstructionsIncorrectQuestion;
  v10 = [(RAPQuestion *)&v13 initWithReport:a3 parentQuestion:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_selectedValue, a5);
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