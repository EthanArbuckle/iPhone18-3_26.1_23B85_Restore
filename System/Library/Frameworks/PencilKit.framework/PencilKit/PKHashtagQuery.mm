@interface PKHashtagQuery
- (PKHashtagQuery)initWithRecognitionSessionManager:(id)manager;
- (void)queryDidUpdateResult:(id)result;
@end

@implementation PKHashtagQuery

- (PKHashtagQuery)initWithRecognitionSessionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PKHashtagQuery;
  v5 = [(PKQuery *)&v11 initWithRecognitionSessionManager:managerCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E6997B70];
    session = [(PKRecognitionSessionManager *)managerCopy session];
    v8 = [v6 hashtagQueryForRecognitionSession:session];
    [(PKDetectionQuery *)v5 setQuery:v8];

    query = [(PKDetectionQuery *)v5 query];
    [query setDelegate:v5];
  }

  return v5;
}

- (void)queryDidUpdateResult:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = resultCopy;
    v6 = MEMORY[0x1E695DF70];
    foundItems = [v5 foundItems];
    v8 = [v6 arrayWithCapacity:{objc_msgSend(foundItems, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    foundItems2 = [v5 foundItems];
    v10 = [foundItems2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(foundItems2);
          }

          v14 = [[PKHashtagQueryItem alloc] initWithCoreHandwritingPrefixQueryItem:*(*(&v19 + 1) + 8 * v13)];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [foundItems2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    delegate = [(PKQuery *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      delegate2 = [(PKQuery *)self delegate];
      v18 = [v8 copy];
      [delegate2 hashtagQuery:self foundItems:v18];
    }
  }
}

@end