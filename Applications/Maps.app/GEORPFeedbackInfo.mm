@interface GEORPFeedbackInfo
- (void)enumerateValidComponentOfType:(int)type usingBlock:(id)block;
- (void)enumerateValidComponentValuesOfType:(int)type usingBlock:(id)block;
@end

@implementation GEORPFeedbackInfo

- (void)enumerateValidComponentValuesOfType:(int)type usingBlock:(id)block
{
  v4 = *&type;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DE844;
  v7[3] = &unk_10162AA18;
  blockCopy = block;
  v6 = blockCopy;
  [(GEORPFeedbackInfo *)self enumerateValidComponentOfType:v4 usingBlock:v7];
}

- (void)enumerateValidComponentOfType:(int)type usingBlock:(id)block
{
  blockCopy = block;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  feedbackComponents = [(GEORPFeedbackInfo *)self feedbackComponents];
  v8 = [feedbackComponents countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(feedbackComponents);
      }

      v12 = *(*(&v13 + 1) + 8 * v11);
      if ([v12 type] == type && !objc_msgSend(v12, "status"))
      {
        if ([v12 valuesCount])
        {
          blockCopy[2](blockCopy, v12, &v17);
          if (v17)
          {
            break;
          }
        }
      }

      if (v9 == ++v11)
      {
        v9 = [feedbackComponents countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end