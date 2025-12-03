@interface TSWReviewOrderedResponseEvaluator
- (id)evaluateBlockIfCorrect:(id)correct blockIfIncorrect:(id)incorrect blockIfMissing:(id)missing;
@end

@implementation TSWReviewOrderedResponseEvaluator

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
    v16 = 0;
    do
    {
      v17 = [v10 targetForPlacard:v13];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL || v13 != v17)
      {
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (missing)
          {
            (*(missing + 2))(missing, 0x7FFFFFFFFFFFFFFFLL);
          }

          ++v15;
        }

        else
        {
          if (incorrect)
          {
            (*(incorrect + 2))(incorrect, v17);
          }

          ++v16;
        }
      }

      else
      {
        if (correct)
        {
          (*(correct + 2))(correct, v13);
        }

        ++v14;
      }

      ++v13;
    }

    while (v12 != v13);
    if (v14 >= 1 && !v16 && !v15)
    {
      v18 = +[NSDecimalNumber one];
      v16 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v18 = +[NSDecimalNumber zero];
LABEL_22:
  v19 = [[TSWReviewResponseEvaluationSummary alloc] initWithScore:v18 correctCount:v14 incorrectCount:v16 missingCount:v15];

  return v19;
}

@end