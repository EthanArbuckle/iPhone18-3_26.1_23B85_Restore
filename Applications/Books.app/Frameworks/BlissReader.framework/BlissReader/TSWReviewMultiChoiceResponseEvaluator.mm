@interface TSWReviewMultiChoiceResponseEvaluator
- (id)evaluateBlockIfCorrect:(id)correct blockIfIncorrect:(id)incorrect blockIfMissing:(id)missing;
@end

@implementation TSWReviewMultiChoiceResponseEvaluator

- (id)evaluateBlockIfCorrect:(id)correct blockIfIncorrect:(id)incorrect blockIfMissing:(id)missing
{
  dataSource = [(TSWReviewResponseEvaluator *)self dataSource];
  response = [(TSWReviewResponseEvaluatorDataSource *)dataSource response];
  objc_opt_class();
  [(TSWReviewResponse *)response answerState];
  v10 = TSUDynamicCast();
  choiceCount = [(TSWReviewResponseEvaluatorDataSource *)dataSource choiceCount];
  if (choiceCount)
  {
    v12 = choiceCount;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v22 = missing + 16;
    missingCopy = missing;
    v24 = 0;
    do
    {
      selectedChoices = [objc_msgSend(v10 selectedChoices];
      [(TSWReviewResponseEvaluatorDataSource *)dataSource fractionForChoiceIndex:v14];
      if (selectedChoices && v17 > 0.0)
      {
        if (correct)
        {
          (*(correct + 2))(correct, v14);
        }

        ++v13;
      }

      else if (selectedChoices)
      {
        if (incorrect)
        {
          (*(incorrect + 2))(incorrect, v14);
        }

        ++v15;
      }

      else if (v17 > 0.0)
      {
        if (missingCopy)
        {
          missingCopy[2]();
        }

        ++v24;
      }

      ++v14;
    }

    while (v12 != v14);
    if (v13 < 1)
    {
      v18 = v24;
    }

    else
    {
      v18 = v24;
      if (!v15 && !v24)
      {
        v19 = +[NSDecimalNumber one];
        v15 = 0;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v18 = 0;
  }

  v19 = +[NSDecimalNumber zero];
LABEL_23:
  v20 = [[TSWReviewResponseEvaluationSummary alloc] initWithScore:v19 correctCount:v13 incorrectCount:v15 missingCount:v18];

  return v20;
}

@end