@interface VNSuggestionsLogger
- (VNSuggestionsLogger)initWithOptions:(id)a3 logEnabled:(BOOL)a4;
- (void)logConnectedGroups:(id)a3;
- (void)logFinalSuggestionsList:(id)a3;
- (void)logInputFaceIdsWithFlags:(id)a3;
- (void)logString:(id)a3;
- (void)logSuggestons:(id)a3 description:(id)a4;
@end

@implementation VNSuggestionsLogger

- (void)logString:(id)a3
{
  v13 = a3;
  v4 = [v13 UTF8String];
  VNValidatedLog(1, @"%s", v5, v6, v7, v8, v9, v10, v4);
  if ([(VNClusteringLogger *)self logEnabled])
  {
    v11 = [(VNClusteringLogger *)self logFileURL];
    v12 = [v11 path];
    [VNClusteringLogger appendString:v13 toLogFile:v12];
  }
}

- (void)logFinalSuggestionsList:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"Final list of suggestions face IDs (results):\n"];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [v6 appendFormat:@"%@, ", *(*(&v11 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 2, 2}];
    [v6 appendString:@"\n"];
    [(VNSuggestionsLogger *)self logString:v6];
  }
}

- (void)logConnectedGroups:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v16 = a3;
  if (v16 && [v16 count])
  {
    v15 = self;
    v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Connected groups of suggestions face IDs (connectedSuggestedInputs):\n"];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v16;
    v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v5)
    {
      LODWORD(v6) = 0;
      v17 = *v24;
      do
      {
        v7 = v6;
        v6 = v5 + v6;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v8 = [obj objectAtIndexedSubscript:v7];
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Group %d suggestions: ", ++v7];
          v10 = [VNClusteringLogger padStringWithSpaces:v9 toSize:25];
          [v4 appendString:v10];
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = v8;
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = *v20;
            do
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                [v4 appendFormat:@"%@, ", *(*(&v19 + 1) + 8 * v14++)];
              }

              while (v12 != v14);
              v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v12);
          }

          if ([v11 count])
          {
            [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 2, 2}];
          }

          [v4 appendString:@"\n"];
        }

        while (v7 != v6);
        v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v5);
    }

    [(VNSuggestionsLogger *)v15 logString:v4];
  }
}

- (void)logSuggestons:(id)a3 description:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = a4;
  v22 = v6;
  if (v6 && [v6 count])
  {
    v18 = self;
    v7 = [MEMORY[0x1E696AD60] stringWithFormat:@"Suggested face IDs: %@:\n", v19];
    [v6 allKeys];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v21 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ClusterId: %@   ", v10];
          v12 = [VNClusteringLogger padStringWithSpaces:v11 toSize:20];
          [v7 appendFormat:@"%@Suggestions: ", v12];
          v13 = [v22 objectForKeyedSubscript:v10];
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v15)
          {
            v16 = *v24;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                [v7 appendFormat:@"%@, ", *(*(&v23 + 1) + 8 * j)];
              }

              v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v15);
          }

          if ([v14 count])
          {
            [v7 deleteCharactersInRange:{objc_msgSend(v7, "length") - 2, 2}];
          }

          [v7 appendString:@"\n"];
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
    }

    [(VNSuggestionsLogger *)v18 logString:v7];
  }
}

- (void)logInputFaceIdsWithFlags:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = a3;
  if (v13 && [v13 count])
  {
    v12 = [MEMORY[0x1E696AD60] stringWithFormat:@"Input query - face IDs with flags (clusterIdsWithFlags):\n"];
    [v13 allKeys];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    obj = v15 = 0u;
    v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = *v15;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v15 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v14 + 1) + 8 * i);
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"faceId: %@", v6];
          v8 = [VNClusteringLogger padStringWithSpaces:v7 toSize:20];
          v9 = [v13 objectForKeyedSubscript:v6];
          [v12 appendFormat:@"%@can be returned: %@\n", v8, v9];
        }

        v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v3);
    }

    [(VNSuggestionsLogger *)self logString:v12];
  }
}

- (VNSuggestionsLogger)initWithOptions:(id)a3 logEnabled:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = VNSuggestionsLogger;
  return [(VNClusteringLogger *)&v5 initWithOptions:a3 logEnabled:a4 logFileNameBase:@"VNSuggestionLog"];
}

@end