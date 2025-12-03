@interface MKPlaceCuratedCollectionRefiner
- (MKPlaceCuratedCollectionRefiner)initWithCollectionIdentifier:(unint64_t)identifier providerIdentifier:(int)providerIdentifier;
- (void)fetchWithCallbackQueue:(id)queue completion:(id)completion;
@end

@implementation MKPlaceCuratedCollectionRefiner

- (void)fetchWithCallbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Assertion failed: completion != ((void *)0)";
LABEL_9:
    _os_log_fault_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_FAULT, v14, buf, 2u);
    goto LABEL_4;
  }

  if (!queueCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "Assertion failed: callbackQueue != ((void *)0)";
    goto LABEL_9;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke;
  v19[3] = &unk_1E76C6918;
  v19[4] = self;
  v8 = queueCopy;
  v20 = v8;
  v9 = completionCopy;
  v21 = v9;
  v10 = MEMORY[0x1A58E9F30](v19);
  identifierRefinementTicket = self->_identifierRefinementTicket;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_3;
  v15[3] = &unk_1E76C6940;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  [(MKMapServiceCuratedCollectionTicket *)identifierRefinementTicket submitWithCallbackQueue:v16 handler:v15 networkActivity:0];

LABEL_4:
}

void __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 itemIds];
  v4 = MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray(v3);

  v5 = +[MKMapService sharedService];
  v6 = [v5 ticketForCuratedCollectionItems:v4 collection:*(*(a1 + 32) + 8) traits:0];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_2;
  v8[3] = &unk_1E76C68F0;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v6 submitWithCallbackQueue:v7 handler:v8 networkActivity:0];
}

void __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([@"Failed to refine curated collection for identifier" length])
    {
      [v7 setObject:@"Failed to refine curated collection for identifier" forKey:*MEMORY[0x1E696A578]];
    }

    [v7 setObject:@"Failed to refine curated collection for identifier" forKey:*MEMORY[0x1E696AA08]];
    v8 = MEMORY[0x1E696ABC0];
    v9 = MKErrorDomain;
    v10 = [v7 copy];
    v11 = [v8 errorWithDomain:v9 code:2 userInfo:v10];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_4;
    block[3] = &unk_1E76CDA20;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v30 = v11;
    v31 = v13;
    v14 = v11;
    dispatch_async(v12, block);

    v15 = v31;
  }

  else
  {
    if ([v5 count])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_6;
      v23[3] = &unk_1E76CDA20;
      v25 = *(a1 + 48);
      v24 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v23);

      v14 = v25;
      goto LABEL_8;
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([@"No curated collections for identifier" length])
    {
      [v16 setObject:@"No curated collections for identifier" forKey:*MEMORY[0x1E696A578]];
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = MKErrorDomain;
    v19 = [v16 copy];
    v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_5;
    v26[3] = &unk_1E76CDA20;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v27 = v20;
    v28 = v22;
    v14 = v20;
    dispatch_async(v21, v26);

    v15 = v28;
  }

LABEL_8:
}

void __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) firstObject];
  (*(v1 + 16))(v1, v2);
}

void __69__MKPlaceCuratedCollectionRefiner_fetchWithCallbackQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([@"Failed to refine map items for curated collection" length])
    {
      [v10 setObject:@"Failed to refine map items for curated collection" forKey:*MEMORY[0x1E696A578]];
    }

    [v10 setObject:@"Failed to refine map items for curated collection" forKey:*MEMORY[0x1E696AA08]];
    v11 = MEMORY[0x1E696ABC0];
    v12 = MKErrorDomain;
    v13 = [v10 copy];
    v14 = [v11 errorWithDomain:v12 code:2 userInfo:v13];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v22 + 1) + 8 * i) mapItem];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v18);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (MKPlaceCuratedCollectionRefiner)initWithCollectionIdentifier:(unint64_t)identifier providerIdentifier:(int)providerIdentifier
{
  selfCopy = self;
  v19[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    v5 = *&providerIdentifier;
    v17.receiver = self;
    v17.super_class = MKPlaceCuratedCollectionRefiner;
    v7 = [(MKPlaceCuratedCollectionRefiner *)&v17 init];
    if (v7)
    {
      v8 = [MKMapItemIdentifier alloc];
      v9 = [(MKMapItemIdentifier *)v8 initWithMUID:identifier resultProviderID:v5 coordinate:*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8)];
      collectionIdentifier = v7->_collectionIdentifier;
      v7->_collectionIdentifier = v9;

      v11 = +[MKMapService sharedService];
      v19[0] = v7->_collectionIdentifier;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      v13 = [v11 ticketForCuratedCollections:v12 isBatchLookup:0 traits:0];
      identifierRefinementTicket = v7->_identifierRefinementTicket;
      v7->_identifierRefinementTicket = v13;
    }

    selfCopy = v7;
    v15 = selfCopy;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: collectionIdentifier != 0", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

@end