@interface ATXNotificationScorer
- (double)getDigestScoreForNotification:(id)a3 modeId:(id)a4;
@end

@implementation ATXNotificationScorer

- (double)getDigestScoreForNotification:(id)a3 modeId:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [a3 derivedData];
  v5 = [v4 getPublicScores];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 modelId];
        v13 = [v12 isEqualToString:@"ATXModeEntityScorer"];

        if (v13)
        {
          [v11 score];
          v7 = v14;
          goto LABEL_11;
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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