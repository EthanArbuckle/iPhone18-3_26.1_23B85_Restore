@interface ATXNotificationScorer
- (double)getDigestScoreForNotification:(id)notification modeId:(id)id;
@end

@implementation ATXNotificationScorer

- (double)getDigestScoreForNotification:(id)notification modeId:(id)id
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  derivedData = [notification derivedData];
  getPublicScores = [derivedData getPublicScores];

  v6 = [getPublicScores countByEnumeratingWithState:&v16 objects:v20 count:16];
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(getPublicScores);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        modelId = [v11 modelId];
        v13 = [modelId isEqualToString:@"ATXModeEntityScorer"];

        if (v13)
        {
          [v11 score];
          v7 = v14;
          goto LABEL_11;
        }
      }

      v8 = [getPublicScores countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

@end