@interface ATXProactiveSuggestionShadowLogger
- (ATXProactiveSuggestionShadowLogger)initWithClientModelIds:(id)ids shadowEventPublisher:(id)publisher clientModelPublisher:(id)modelPublisher contextPublisher:(id)contextPublisher bookmarkURLPath:(id)path;
- (id)newBookmarkWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata;
- (id)shadowLoggingPublisher;
- (void)enumerateShadowLoggingResultsWithBlock:(id)block clientModelCacheUpdatedBlock:(id)updatedBlock completionBlock:(id)completionBlock;
- (void)enumerateShadowLoggingResultsWithBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation ATXProactiveSuggestionShadowLogger

- (ATXProactiveSuggestionShadowLogger)initWithClientModelIds:(id)ids shadowEventPublisher:(id)publisher clientModelPublisher:(id)modelPublisher contextPublisher:(id)contextPublisher bookmarkURLPath:(id)path
{
  idsCopy = ids;
  publisherCopy = publisher;
  modelPublisherCopy = modelPublisher;
  contextPublisherCopy = contextPublisher;
  pathCopy = path;
  v23.receiver = self;
  v23.super_class = ATXProactiveSuggestionShadowLogger;
  v17 = [(ATXProactiveSuggestionShadowLogger *)&v23 init];
  if (v17)
  {
    v18 = [idsCopy copy];
    clientModelIds = v17->_clientModelIds;
    v17->_clientModelIds = v18;

    objc_storeStrong(&v17->_shadowEventPublisher, publisher);
    objc_storeStrong(&v17->_clientModelPublisher, modelPublisher);
    objc_storeStrong(&v17->_contextPublisher, contextPublisher);
    v20 = [pathCopy copy];
    bookmarkURLPath = v17->_bookmarkURLPath;
    v17->_bookmarkURLPath = v20;
  }

  return v17;
}

- (void)enumerateShadowLoggingResultsWithBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_completionBlock___block_invoke;
  v12[3] = &unk_2785A0740;
  v13 = blockCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_completionBlock___block_invoke_3;
  v10[3] = &unk_2785A0788;
  v11 = completionBlockCopy;
  v8 = completionBlockCopy;
  v9 = blockCopy;
  [(ATXProactiveSuggestionShadowLogger *)self enumerateShadowLoggingResultsWithBlock:v12 clientModelCacheUpdatedBlock:&__block_literal_global_214 completionBlock:v10];
}

- (void)enumerateShadowLoggingResultsWithBlock:(id)block clientModelCacheUpdatedBlock:(id)updatedBlock completionBlock:(id)completionBlock
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  completionBlockCopy = completionBlock;
  bookmarkURLPath = self->_bookmarkURLPath;
  if (bookmarkURLPath)
  {
    v12 = [MEMORY[0x277CEBBF8] bookmarkFromURLPath:bookmarkURLPath maxFileSize:kATXProactiveSuggestionShadowLoggerMaxOnDiskFileSizeInBytes versionNumber:&unk_283A57488];
  }

  else
  {
    v12 = 0;
  }

  v13 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "%@ - starting enumeration with bookmark: %@", buf, 0x16u);
  }

  shadowLoggingPublisher = [(ATXProactiveSuggestionShadowLogger *)self shadowLoggingPublisher];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v40 = 0;
  bookmark = [v12 bookmark];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke;
  v30[3] = &unk_2785A07B0;
  v30[4] = self;
  v18 = completionBlockCopy;
  v31 = v18;
  v32 = buf;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke_24;
  v27[3] = &unk_2785A07D8;
  v19 = updatedBlockCopy;
  v28 = v19;
  v20 = blockCopy;
  v29 = v20;
  v21 = [shadowLoggingPublisher sinkWithBookmark:bookmark completion:v30 receiveInput:v27];

  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = __atxlog_handle_blending_ecosystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *v33 = 138412802;
      v34 = v25;
      v35 = 1024;
      v36 = 1;
      v37 = 2112;
      v38 = 0;
      _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, "%@ - invoking outside completion handler with success: %u, error: %@", v33, 0x1Cu);
    }

    (*(v18 + 2))(v18, 1, 0);
    objc_autoreleasePoolPop(v22);
  }

  _Block_object_dispose(buf, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 error];
  v8 = [v5 state];
  v9 = v8 == 0;
  v10 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412802;
    v29 = v13;
    v30 = 1024;
    v31 = v8 == 0;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "%@ - sinkWithBookmark complete with completion success: %u, error: %@", buf, 0x1Cu);
  }

  if (!v8 && !v7)
  {
    v14 = a1[4];
    v15 = v14[2];
    if (v15)
    {
      v16 = [v14 newBookmarkWithURLPath:v15 versionNumber:&unk_283A57488 bookmark:v6 metadata:0];
      v27 = 0;
      v9 = [v16 saveBookmarkWithError:&v27];
      v7 = v27;
      v17 = __atxlog_handle_blending_ecosystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = a1[4];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138412802;
        v29 = v20;
        v30 = 1024;
        v31 = v9;
        v32 = 2112;
        v33 = v7;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "%@ - saved new bookmark with success: %u, error: %@", buf, 0x1Cu);
      }
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  v21 = objc_autoreleasePoolPush();
  v22 = __atxlog_handle_blending_ecosystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a1[4];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138412802;
    v29 = v25;
    v30 = 1024;
    v31 = v9;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_DEFAULT, "%@ - invoking completion handler with success: %u, error: %@", buf, 0x1Cu);
  }

  (*(a1[5] + 16))();
  *(*(a1[6] + 8) + 24) = 1;
  objc_autoreleasePoolPop(v21);

  v26 = *MEMORY[0x277D85DE8];
}

void __122__ATXProactiveSuggestionShadowLogger_enumerateShadowLoggingResultsWithBlock_clientModelCacheUpdatedBlock_completionBlock___block_invoke_24(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 32;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = 40;
  }

  (*(*(a1 + v4) + 16))();
LABEL_6:
  objc_autoreleasePoolPop(v3);
}

- (id)shadowLoggingPublisher
{
  v16[2] = *MEMORY[0x277D85DE8];
  clientModelPublisher = [(ATXProactiveSuggestionShadowLogger *)self clientModelPublisher];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke;
  v15[3] = &unk_27859A798;
  v15[4] = self;
  v4 = [clientModelPublisher filterWithIsIncluded:v15];

  contextPublisher = [(ATXProactiveSuggestionShadowLogger *)self contextPublisher];
  v16[0] = contextPublisher;
  shadowEventPublisher = [(ATXProactiveSuggestionShadowLogger *)self shadowEventPublisher];
  v16[1] = shadowEventPublisher;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v8 = [v4 orderedMergeWithOthers:v7 comparator:&__block_literal_global_32_2];

  v9 = objc_opt_new();
  v10 = [v8 scanWithInitial:v9 nextPartialResult:&__block_literal_global_37];

  v11 = [v10 filterWithIsIncluded:&__block_literal_global_41_2];
  v12 = [v11 flatMapWithTransform:&__block_literal_global_44_2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = [v3 clientModelId];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

ATXProactiveSuggestionShadowLoggingContextEventTuple *__60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 eventBody];
  if (v6)
  {
    v7 = [v4 shadowLoggingContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 updateWithClientModelCacheUpdate:v6];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 updateWithContext:v6];
      }
    }

    v8 = [[ATXProactiveSuggestionShadowLoggingContextEventTuple alloc] initWithEvent:v5 shadowLoggingContext:v7];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

uint64_t __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 event];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 eventBody];
    if (v4)
    {
      objc_opt_class();
      v5 = objc_opt_isKindOfClass() ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

id __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 event];
  v5 = v4;
  if (!v4)
  {
    v7 = [v3 bpsPublisher];
    goto LABEL_12;
  }

  v6 = [v4 eventBody];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = [v2 shadowLoggingContext];
      v9 = [v8 context];

      if (v9)
      {
        v10 = objc_alloc(MEMORY[0x277CBEAA8]);
        [v5 timestamp];
        v11 = [v10 initWithTimeIntervalSinceReferenceDate:?];
        v12 = [v8 clientModelCacheUpdates];
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_6;
        v19 = &unk_2785A0860;
        v20 = v6;
        v21 = v11;
        v22 = v8;
        v13 = v3;
        v23 = v13;
        v14 = v11;
        [v12 enumerateKeysAndObjectsUsingBlock:&v16];

        v7 = [v13 bpsPublisher];
      }

      else
      {
        v7 = [v3 bpsPublisher];
      }

      goto LABEL_11;
    }

    [v3 addObject:v6];
  }

  v7 = [v3 bpsPublisher];
LABEL_11:

LABEL_12:

  return v7;
}

void __60__ATXProactiveSuggestionShadowLogger_shadowLoggingPublisher__block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [ATXProactiveSuggestionShadowLoggingResult alloc];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) context];
  v9 = [(ATXProactiveSuggestionShadowLoggingResult *)v5 initWithShadowEvent:v6 shadowEventDate:v7 clientModelCacheUpdate:v4 context:v8];

  [*(a1 + 56) addObject:v9];
}

- (id)newBookmarkWithURLPath:(id)path versionNumber:(id)number bookmark:(id)bookmark metadata:(id)metadata
{
  v9 = MEMORY[0x277CEBBF8];
  metadataCopy = metadata;
  bookmarkCopy = bookmark;
  numberCopy = number;
  pathCopy = path;
  v14 = [[v9 alloc] initWithURLPath:pathCopy versionNumber:numberCopy bookmark:bookmarkCopy metadata:metadataCopy];

  return v14;
}

@end