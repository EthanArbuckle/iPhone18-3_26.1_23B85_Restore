@interface PKMentionQuery
- (NSSet)validSuffixes;
- (PKMentionQuery)initWithRecognitionSessionManager:(id)a3;
- (void)queryDidUpdateResult:(id)a3;
- (void)setValidSuffixes:(id)a3;
@end

@implementation PKMentionQuery

- (PKMentionQuery)initWithRecognitionSessionManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKMentionQuery;
  v5 = [(PKQuery *)&v11 initWithRecognitionSessionManager:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E6997B70];
    v7 = [(PKRecognitionSessionManager *)v4 session];
    v8 = [v6 mentionQueryForRecognitionSession:v7];
    [(PKDetectionQuery *)v5 setQuery:v8];

    v9 = [(PKDetectionQuery *)v5 query];
    [v9 setDelegate:v5];
  }

  return v5;
}

- (void)setValidSuffixes:(id)a3
{
  v4 = a3;
  v5 = [(PKDetectionQuery *)self query];
  [v5 setValidSuffixes:v4];
}

- (NSSet)validSuffixes
{
  v2 = [(PKDetectionQuery *)self query];
  v3 = [v2 validSuffixes];

  return v3;
}

- (void)queryDidUpdateResult:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = MEMORY[0x1E695DF70];
    v7 = [v5 foundItems];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 foundItems];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[PKMentionQueryItem alloc] initWithCoreHandwritingPrefixQueryItem:*(*(&v19 + 1) + 8 * v13)];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v15 = [(PKQuery *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = [(PKQuery *)self delegate];
      v18 = [v8 copy];
      [v17 mentionQuery:self foundItems:v18];
    }
  }
}

@end