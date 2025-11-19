@interface TSWReviewOrderedResponseEvaluator
- (id)evaluateBlockIfCorrect:(id)a3 blockIfIncorrect:(id)a4 blockIfMissing:(id)a5;
@end

@implementation TSWReviewOrderedResponseEvaluator

- (id)evaluateBlockIfCorrect:(id)a3 blockIfIncorrect:(id)a4 blockIfMissing:(id)a5
{
  v8 = [(TSWReviewResponseEvaluator *)self dataSource];
  v9 = [(TSWReviewResponseEvaluatorDataSource *)v8 response];
  objc_opt_class();
  [(TSWReviewResponse *)v9 answerState];
  v10 = TSUDynamicCast();
  v11 = [(TSWReviewResponseEvaluatorDataSource *)v8 choiceCount];
  if (v11)
  {
    v12 = v11;
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
          if (a5)
          {
            (*(a5 + 2))(a5, 0x7FFFFFFFFFFFFFFFLL);
          }

          ++v15;
        }

        else
        {
          if (a4)
          {
            (*(a4 + 2))(a4, v17);
          }

          ++v16;
        }
      }

      else
      {
        if (a3)
        {
          (*(a3 + 2))(a3, v13);
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