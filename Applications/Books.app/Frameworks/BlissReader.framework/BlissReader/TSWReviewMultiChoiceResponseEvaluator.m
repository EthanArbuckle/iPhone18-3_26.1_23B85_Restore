@interface TSWReviewMultiChoiceResponseEvaluator
- (id)evaluateBlockIfCorrect:(id)a3 blockIfIncorrect:(id)a4 blockIfMissing:(id)a5;
@end

@implementation TSWReviewMultiChoiceResponseEvaluator

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
    v22 = a5 + 16;
    v23 = a5;
    v24 = 0;
    do
    {
      v16 = [objc_msgSend(v10 selectedChoices];
      [(TSWReviewResponseEvaluatorDataSource *)v8 fractionForChoiceIndex:v14];
      if (v16 && v17 > 0.0)
      {
        if (a3)
        {
          (*(a3 + 2))(a3, v14);
        }

        ++v13;
      }

      else if (v16)
      {
        if (a4)
        {
          (*(a4 + 2))(a4, v14);
        }

        ++v15;
      }

      else if (v17 > 0.0)
      {
        if (v23)
        {
          v23[2]();
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