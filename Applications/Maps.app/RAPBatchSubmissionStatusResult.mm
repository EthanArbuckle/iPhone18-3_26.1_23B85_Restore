@interface RAPBatchSubmissionStatusResult
- (RAPBatchSubmissionStatusResult)initWithRAPInfos:(id)infos;
- (void)_setupResultWithRAPInfos:(id)infos;
@end

@implementation RAPBatchSubmissionStatusResult

- (void)_setupResultWithRAPInfos:(id)infos
{
  infosCopy = infos;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = infosCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        isReviewed = [v12 isReviewed];
        rapId = [v12 rapId];
        if (isReviewed)
        {
          v15 = v5;
        }

        else
        {
          v15 = v6;
        }

        [v15 addObject:rapId];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v16 = [v5 copy];
  reviewedSubmissionIdentifiers = self->_reviewedSubmissionIdentifiers;
  self->_reviewedSubmissionIdentifiers = v16;

  v18 = [v6 copy];
  inReviewSubmissionIdentifiers = self->_inReviewSubmissionIdentifiers;
  self->_inReviewSubmissionIdentifiers = v18;
}

- (RAPBatchSubmissionStatusResult)initWithRAPInfos:(id)infos
{
  infosCopy = infos;
  v9.receiver = self;
  v9.super_class = RAPBatchSubmissionStatusResult;
  v6 = [(RAPBatchSubmissionStatusResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rapInfos, infos);
    [(RAPBatchSubmissionStatusResult *)v7 _setupResultWithRAPInfos:infosCopy];
  }

  return v7;
}

@end