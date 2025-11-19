@interface GEORPFeedbackInfo
- (void)enumerateValidComponentOfType:(int)a3 usingBlock:(id)a4;
- (void)enumerateValidComponentValuesOfType:(int)a3 usingBlock:(id)a4;
@end

@implementation GEORPFeedbackInfo

- (void)enumerateValidComponentOfType:(int)a3 usingBlock:(id)a4
{
  v6 = a4;
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(GEORPFeedbackInfo *)self feedbackComponents];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v13 + 1) + 8 * v11);
      if ([v12 type] == a3 && !objc_msgSend(v12, "status"))
      {
        if ([v12 valuesCount])
        {
          v6[2](v6, v12, &v17);
          if (v17)
          {
            break;
          }
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateValidComponentValuesOfType:(int)a3 usingBlock:(id)a4
{
  v4 = *&a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1FF3C;
  v7[3] = &unk_7FFC0;
  v8 = a4;
  v6 = v8;
  [(GEORPFeedbackInfo *)self enumerateValidComponentOfType:v4 usingBlock:v7];
}

@end