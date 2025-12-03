@interface PKDataDetectorQuery
- (PKDataDetectorQuery)initWithRecognitionSessionManager:(id)manager;
- (void)queryDidUpdateResult:(id)result;
@end

@implementation PKDataDetectorQuery

- (PKDataDetectorQuery)initWithRecognitionSessionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = PKDataDetectorQuery;
  v5 = [(PKQuery *)&v11 initWithRecognitionSessionManager:managerCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E6997B48]);
    session = [(PKRecognitionSessionManager *)managerCopy session];
    v8 = [v6 initWithRecognitionSession:session];
    [(PKDetectionQuery *)v5 setQuery:v8];

    query = [(PKDetectionQuery *)v5 query];
    [query setDelegate:v5];
  }

  return v5;
}

- (void)queryDidUpdateResult:(id)result
{
  v47 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    foundItems = [resultCopy foundItems];
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__12;
    v44 = __Block_byref_object_dispose__12;
    v45 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(foundItems, "count")}];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __FilteredFoundItems_block_invoke;
    v39[3] = &unk_1E82D8D90;
    v39[4] = &v40;
    [foundItems enumerateObjectsUsingBlock:v39];
    DDDetectionControllerClass = getDDDetectionControllerClass();
    v7 = v41[5];
    allPublicTypes = [getDDDetectionControllerClass() allPublicTypes];
    date = [MEMORY[0x1E695DF00] date];
    defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
    v11 = [DDDetectionControllerClass filterResults:v7 forTypes:allPublicTypes referenceDate:date referenceTimeZone:defaultTimeZone];

    v12 = [v11 count];
    if (v12 >= [v41[5] count])
    {
      v13 = foundItems;
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x3032000000;
      v36 = __Block_byref_object_copy__12;
      v37 = __Block_byref_object_dispose__12;
      v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __FilteredFoundItems_block_invoke_2;
      v30[3] = &unk_1E82D8DB8;
      v31 = v11;
      v32 = &v33;
      [foundItems enumerateObjectsUsingBlock:v30];
      v13 = v34[5];

      _Block_object_dispose(&v33, 8);
    }

    _Block_object_dispose(&v40, 8);
    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v46 count:16];
    if (v16)
    {
      v17 = *v27;
      do
      {
        v18 = 0;
        do
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v26 + 1) + 8 * v18);
          v20 = [PKDataDetectorQueryItem alloc];
          v21 = [(PKDataDetectorQueryItem *)v20 initWithCoreHandwritingDataDetectorQueryItem:v19, v26];
          [v14 addObject:v21];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v46 count:16];
      }

      while (v16);
    }

    delegate = [(PKQuery *)self delegate];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      delegate2 = [(PKQuery *)self delegate];
      v25 = [v14 copy];
      [delegate2 dataDetectorQuery:self foundItems:v25];
    }
  }
}

@end