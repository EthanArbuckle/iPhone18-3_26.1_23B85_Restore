@interface GEORPFeedbackResponse
- (void)enumerateFeedbackInfosUsingBlock:(id)block;
@end

@implementation GEORPFeedbackResponse

- (void)enumerateFeedbackInfosUsingBlock:(id)block
{
  blockCopy = block;
  v17 = 0;
  feedbackResult = [(GEORPFeedbackResponse *)self feedbackResult];
  queryResult = [feedbackResult queryResult];
  feedbackInfos = [queryResult feedbackInfos];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = feedbackInfos;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v14 != v11)
      {
        objc_enumerationMutation(v8);
      }

      blockCopy[2](blockCopy, *(*(&v13 + 1) + 8 * v12), &v17);
      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end