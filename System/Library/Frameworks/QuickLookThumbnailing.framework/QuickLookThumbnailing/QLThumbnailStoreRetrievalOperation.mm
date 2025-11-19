@interface QLThumbnailStoreRetrievalOperation
+ (BOOL)canMostRecentClientsGenerateThumbnailsForUTI:(id)a3;
- (BOOL)_finishIfNeeded;
- (BOOL)thumbnailWasAutomaticallyGenerated;
- (NSData)serializedQuickLookMetadataDictionary;
- (NSDictionary)thumbnailImagesDictionary;
- (QLThumbnailStoreRetrievalOperation)init;
- (QLThumbnailStoreRetrievalOperation)initWithDocumentAtURL:(id)a3;
- (id)description;
- (void)_afterDeterminingWhetherWeCanGenerate:(BOOL)a3;
- (void)_afterThumbnailIsGenerated;
- (void)_finishBecauseGenerationFailedWithUnderlyingError:(id)a3;
- (void)_finishWithError:(id)a3;
- (void)_generateThumbnail;
- (void)afterThumbnailIsPutInGenstore;
- (void)cancel;
- (void)main;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation QLThumbnailStoreRetrievalOperation

+ (BOOL)canMostRecentClientsGenerateThumbnailsForUTI:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
  v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.illustrator.ai-image"];
  v5 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.photoshop-image"];
  v6 = [MEMORY[0x1E6982C40] typeWithIdentifier:@"com.adobe.photoshop-large-image"];
  if ([v3 conformsToType:*MEMORY[0x1E6982E30]] && (objc_msgSend(v3, "conformsToType:", v4) & 1) == 0 && (objc_msgSend(v3, "conformsToType:", v5) & 1) == 0 && !objc_msgSend(v3, "conformsToType:", v6) || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982F10]) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982EE8]) & 1) != 0 || objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982F40]) && !objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982D70]) || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982F90]) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982F98]) & 1) != 0 || (objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E69830B0]) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v3 conformsToType:*MEMORY[0x1E6982E68]];
  }

  return v7;
}

- (void)setFinished:(BOOL)a3
{
  if (self->_finished != a3)
  {
    [(QLThumbnailStoreRetrievalOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = a3;

    [(QLThumbnailStoreRetrievalOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)setExecuting:(BOOL)a3
{
  if (self->_executing != a3)
  {
    [(QLThumbnailStoreRetrievalOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = a3;

    [(QLThumbnailStoreRetrievalOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (QLThumbnailStoreRetrievalOperation)init
{
  [(QLThumbnailStoreRetrievalOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (QLThumbnailStoreRetrievalOperation)initWithDocumentAtURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = QLThumbnailStoreRetrievalOperation;
  v6 = [(QLThumbnailStoreRetrievalOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentURL, a3);
    v7->_allowsThumbnailGeneration = 1;
  }

  return v7;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p;", objc_opt_class(), self];
  v4 = self;
  objc_sync_enter(v4);
  if ([(QLThumbnailStoreRetrievalOperation *)v4 isCancelled])
  {
    [v3 appendString:@" cancelled"];
  }

  if ([(QLThumbnailStoreRetrievalOperation *)v4 isExecuting])
  {
    [v3 appendString:@" executing"];
  }

  if ([(QLThumbnailStoreRetrievalOperation *)v4 isFinished])
  {
    [v3 appendString:@" finished"];
  }

  objc_sync_exit(v4);

  [v3 appendString:@">"];

  return v3;
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = QLThumbnailStoreRetrievalOperation;
  [(QLThumbnailStoreRetrievalOperation *)&v2 cancel];
}

- (BOOL)_finishIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(QLThumbnailStoreRetrievalOperation *)v2 isCancelled];
  if (v3)
  {
    v4 = _log_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_1CA1E7000, v4, OS_LOG_TYPE_INFO, "Finishing %@ because it is cancelled", &v8, 0xCu);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
    [(QLThumbnailStoreRetrievalOperation *)v2 _finishWithError:v5];
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_finishBecauseGenerationFailedWithUnderlyingError:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = _log_0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    documentURL = self->_documentURL;
    v11 = 138412546;
    v12 = documentURL;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1CA1E7000, v7, OS_LOG_TYPE_INFO, "Finishing thumbnail store retrieval for %@ because generation failed with %@", &v11, 0x16u);
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:0 userInfo:v6];
  [(QLThumbnailStoreRetrievalOperation *)self _finishWithError:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v3 = _os_activity_create(&dword_1CA1E7000, "!quicklook/thumbnail-retrieval", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  retrievalActivity = self->_retrievalActivity;
  self->_retrievalActivity = v3;

  [(QLThumbnailStoreRetrievalOperation *)self setExecuting:1];
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(self->_retrievalActivity, &v5);
  [(QLThumbnailStoreRetrievalOperation *)self main];
  os_activity_scope_leave(&v5);
}

- (void)_generateThumbnail
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1CA1E7000, "!quicklook/thumbnail-generation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  generationActivity = self->_generationActivity;
  self->_generationActivity = v3;

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_generationActivity, &state);
  v5 = NSTemporaryDirectory();
  v6 = [v5 stringByAppendingString:@"QuickLookThumbnail.XXXXXX.jpg"];
  [v6 getFileSystemRepresentation:v17 maxLength:1024];

  v7 = mkstemps(v17, 4);
  if ((v7 & 0x80000000) != 0)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
    [(QLThumbnailStoreRetrievalOperation *)self _finishBecauseGenerationFailedWithUnderlyingError:v10];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v17 isDirectory:0 relativeToURL:0];
    destinationURL = self->_destinationURL;
    self->_destinationURL = v8;

    v10 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v7 closeOnDealloc:1];
    v11 = [[QLThumbnailGenerationRequest alloc] initWithFileAtURL:self->_documentURL size:4 scale:1024.0 representationTypes:1024.0, 1.0];
    v12 = +[QLThumbnailGenerator sharedGenerator];
    v13 = *MEMORY[0x1E6982E58];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __56__QLThumbnailStoreRetrievalOperation__generateThumbnail__block_invoke;
    v15[3] = &unk_1E836A050;
    v15[4] = self;
    [v12 saveBestRepresentationForRequest:v11 toFileHandle:v10 asContentType:v13 allowingThumbnailDownloads:0 completionHandler:v15];
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

void __56__QLThumbnailStoreRetrievalOperation__generateThumbnail__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [*(a1 + 32) destinationURL];
    [v3 removeItemAtURL:v4 error:0];

    [*(a1 + 32) _finishWithError:v5];
  }

  else
  {
    [*(a1 + 32) _afterThumbnailIsGenerated];
  }
}

- (void)_afterDeterminingWhetherWeCanGenerate:(BOOL)a3
{
  v3 = a3;
  v29 = *MEMORY[0x1E69E9840];
  addition = self->_addition;
  if (addition)
  {
    v6 = !a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [[QLThumbnailVersion alloc] initWithFileURL:self->_documentURL automaticallyGenerated:1];
    v8 = _log_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      documentURL = self->_documentURL;
      v22 = [(QLThumbnailAddition *)self->_addition thumbnailVersion];
      v23 = 138412802;
      v24 = documentURL;
      v25 = 2112;
      v26 = v22;
      v27 = 2112;
      v28 = v7;
      _os_log_debug_impl(&dword_1CA1E7000, v8, OS_LOG_TYPE_DEBUG, "%@: Stored thumbnail version: %@, proposed version: %@", &v23, 0x20u);
    }

    v9 = [(QLThumbnailAddition *)self->_addition thumbnailVersion];
    if (!v9 || (v10 = v9, -[QLThumbnailAddition thumbnailVersion](self->_addition, "thumbnailVersion"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 shouldBeInvalidatedByThumbnailWithVersion:v7], v11, v10, v12))
    {
      v13 = _log_0();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1CA1E7000, v13, OS_LOG_TYPE_INFO, "Invalidating existing version. Regenerating a thumbnail.", &v23, 2u);
      }

      v14 = self->_addition;
      self->_addition = 0;
    }

    addition = self->_addition;
  }

  if (addition)
  {
    [(QLThumbnailStoreRetrievalOperation *)self _finishWithError:0];
  }

  else
  {
    v15 = _log_0();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v16)
      {
        v17 = self->_documentURL;
        v23 = 138412290;
        v24 = v17;
        _os_log_impl(&dword_1CA1E7000, v15, OS_LOG_TYPE_INFO, "No addition for %@, trying generation", &v23, 0xCu);
      }

      [(QLThumbnailStoreRetrievalOperation *)self _generateThumbnail];
    }

    else
    {
      if (v16)
      {
        v18 = self->_documentURL;
        v23 = 138412290;
        v24 = v18;
        _os_log_impl(&dword_1CA1E7000, v15, OS_LOG_TYPE_INFO, "No addition for %@ and generation not possible", &v23, 0xCu);
      }

      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:106 userInfo:0];
      [(QLThumbnailStoreRetrievalOperation *)self _finishWithError:v19];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)main
{
  OUTLINED_FUNCTION_1_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2(&dword_1CA1E7000, v1, v2, "QLThumbnailStoreRetrievalOperation called on fault %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __42__QLThumbnailStoreRetrievalOperation_main__block_invoke(uint64_t a1)
{
  v2 = _log_0();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __42__QLThumbnailStoreRetrievalOperation_main__block_invoke_cold_1(a1);
  }

  return [*(a1 + 32) _afterDeterminingWhetherWeCanGenerate:0];
}

- (void)_afterThumbnailIsGenerated
{
  OUTLINED_FUNCTION_1_3(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1(&dword_1CA1E7000, v1, v2, "Could NOT associate an iCloud Drive thumbnail for %@: %@");
  v3 = *MEMORY[0x1E69E9840];
}

- (void)afterThumbnailIsPutInGenstore
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(QLThumbnailStoreRetrievalOperation *)v2 _finishIfNeeded])
  {
    v3 = [QLThumbnailAddition alloc];
    documentURL = v2->_documentURL;
    v8 = 0;
    v5 = [(QLThumbnailAddition *)v3 initWithAdditionsPresentOnURL:documentURL error:&v8];
    v6 = v8;
    addition = v2->_addition;
    v2->_addition = v5;

    [(QLThumbnailStoreRetrievalOperation *)v2 _finishWithError:v6];
  }

  objc_sync_exit(v2);
}

- (void)_finishWithError:(id)a3
{
  if (!self->_addition)
  {
    [(QLThumbnailStoreRetrievalOperation *)self setError:a3];
  }

  [(QLThumbnailStoreRetrievalOperation *)self setExecuting:0];

  [(QLThumbnailStoreRetrievalOperation *)self setFinished:1];
}

- (NSDictionary)thumbnailImagesDictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  addition = self->_addition;
  if (addition)
  {
    v4 = [(QLThumbnailAddition *)addition additionURL];

    if (v4)
    {
      v5 = *MEMORY[0x1E695DA70];
      v6 = [(QLThumbnailAddition *)self->_addition thumbnailURLForKey:*MEMORY[0x1E695DA70]];
      v7 = v6;
      if (v6)
      {
        v10 = v5;
        v11[0] = v6;
        v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSData)serializedQuickLookMetadataDictionary
{
  addition = self->_addition;
  if (addition && ([(QLThumbnailAddition *)addition metadata], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = MEMORY[0x1E696AE40];
    v6 = [(QLThumbnailAddition *)self->_addition metadata];
    v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)thumbnailWasAutomaticallyGenerated
{
  v2 = [(QLThumbnailAddition *)self->_addition thumbnailVersion];
  v3 = [v2 isAutomaticallyGenerated];

  return v3;
}

void __42__QLThumbnailStoreRetrievalOperation_main__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 248);
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_1CA1E7000, v2, OS_LOG_TYPE_ERROR, "Could not reach the thumbnails generation service to generate thumbnail for %@", v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end