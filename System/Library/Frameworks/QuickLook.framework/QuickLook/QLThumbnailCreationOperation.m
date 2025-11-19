@interface QLThumbnailCreationOperation
- (BOOL)_finishIfCancelled;
- (CGRect)contentRect;
- (void)_finishWithError:(id)a3;
- (void)main;
- (void)retrieveThumbnailForTaggedLogicalURL:(id)a3;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)start;
- (void)updateLastHitDateOfAddition:(id)a3 onPhysicalURL:(id)a4;
@end

@implementation QLThumbnailCreationOperation

- (void)setFinished:(BOOL)a3
{
  if (self->_finished != a3)
  {
    [(QLThumbnailCreationOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = a3;

    [(QLThumbnailCreationOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)setExecuting:(BOOL)a3
{
  if (self->_executing != a3)
  {
    [(QLThumbnailCreationOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = a3;

    [(QLThumbnailCreationOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)start
{
  [(QLThumbnailCreationOperation *)self setExecuting:1];

  [(QLThumbnailCreationOperation *)self main];
}

- (void)_finishWithError:(id)a3
{
  [(QLThumbnailCreationOperation *)self setError:a3];
  [(QLThumbnailCreationOperation *)self setExecuting:0];

  [(QLThumbnailCreationOperation *)self setFinished:1];
}

- (BOOL)_finishIfCancelled
{
  v3 = [(QLThumbnailCreationOperation *)self isCancelled];
  if (v3)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    [(QLThumbnailCreationOperation *)self _finishWithError:v4];
  }

  return v3;
}

- (void)main
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (![(QLThumbnailCreationOperation *)v2 _finishIfCancelled])
  {
    v3 = [(QLThumbnailCreationOperation *)v2 documentURL];
    v4 = _CFURLPromiseCopyPhysicalURL();

    v5 = MEMORY[0x277D43EF8];
    v6 = *MEMORY[0x277D43EF8];
    if (v4)
    {
      if (!v6)
      {
        QLSInitLogging();
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_DEFAULT, "_CFURLPromiseCopyPhysicalURL returned %@ #Thumbnail", buf, 0xCu);
      }

      v7 = [(QLThumbnailCreationOperation *)v2 documentURL];
      [(QLThumbnailCreationOperation *)v2 retrieveThumbnailForTaggedLogicalURL:v7];
    }

    else
    {
      if (!v6)
      {
        QLSInitLogging();
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_DEFAULT, "Untagged logical URL, coordinating to get the physical URL #Thumbnail", buf, 2u);
      }

      v7 = objc_alloc_init(MEMORY[0x277CCA9E8]);
      v8 = MEMORY[0x277CCA9E0];
      v9 = [(QLThumbnailCreationOperation *)v2 documentURL];
      v10 = [v8 readingIntentWithURL:v9 options:4];

      v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
      operationQueue = v2->_operationQueue;
      v2->_operationQueue = v11;

      [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
      v19 = v10;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      v14 = v2->_operationQueue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __36__QLThumbnailCreationOperation_main__block_invoke;
      v17[3] = &unk_278B58120;
      v17[4] = v2;
      v15 = v10;
      v18 = v15;
      [v7 coordinateAccessWithIntents:v13 queue:v14 byAccessor:v17];
    }
  }

  objc_sync_exit(v2);

  v16 = *MEMORY[0x277D85DE8];
}

void __36__QLThumbnailCreationOperation_main__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) URL];
  [v1 retrieveThumbnailForTaggedLogicalURL:v2];
}

- (void)updateLastHitDateOfAddition:(id)a3 onPhysicalURL:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (updateLastHitDateOfAddition_onPhysicalURL__once != -1)
  {
    [QLThumbnailCreationOperation updateLastHitDateOfAddition:onPhysicalURL:];
  }

  v7 = updateLastHitDateOfAddition_onPhysicalURL__hitAdditionsQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__QLThumbnailCreationOperation_updateLastHitDateOfAddition_onPhysicalURL___block_invoke_2;
  v10[3] = &unk_278B56E50;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __74__QLThumbnailCreationOperation_updateLastHitDateOfAddition_onPhysicalURL___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.quicklook.thumbnails-maintenance", v2);
  v1 = updateLastHitDateOfAddition_onPhysicalURL__hitAdditionsQueue;
  updateLastHitDateOfAddition_onPhysicalURL__hitAdditionsQueue = v0;
}

void __74__QLThumbnailCreationOperation_updateLastHitDateOfAddition_onPhysicalURL___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CDAB00] sharedInstance];
  [v2 updateLastHitDateOfAddition:*(a1 + 32) onPhysicalURL:*(a1 + 40)];
}

- (void)retrieveThumbnailForTaggedLogicalURL:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (![(QLThumbnailCreationOperation *)v5 _finishIfCancelled])
  {
    v6 = _CFURLPromiseCopyPhysicalURL();
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;

    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v4;
      *&buf[12] = 2112;
      *&buf[14] = v9;
      _os_log_impl(&dword_23A714000, v11, OS_LOG_TYPE_DEFAULT, "Got logical URL %@, physicalURL %@ #Thumbnail", buf, 0x16u);
    }

    v31 = 0;
    v12 = [objc_alloc(MEMORY[0x277CDAAC0]) initWithAdditionsPresentOnURL:v9 error:&v31];
    v13 = v31;
    v14 = v13;
    if (v12)
    {
      [(QLThumbnailCreationOperation *)v5 updateLastHitDateOfAddition:v12 onPhysicalURL:v9];
    }

    else
    {
      if (v13)
      {
        v15 = *v10;
        if (!*v10)
        {
          QLSInitLogging();
          v15 = *v10;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v14;
          _os_log_impl(&dword_23A714000, v15, OS_LOG_TYPE_ERROR, "Caught error while retrieving thumbnail: %@ #Thumbnail", buf, 0xCu);
        }
      }

      v16 = *v10;
      if (!*v10)
      {
        QLSInitLogging();
        v16 = *v10;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_23A714000, v16, OS_LOG_TYPE_DEFAULT, "No thumbnail found for %@, trying to download/generate one #Thumbnail", buf, 0xCu);
      }

      if (v5->_generateIfNeeded)
      {
        v17 = _CFURLIsItemPromiseAtURL();
        v18 = MEMORY[0x277CDAAC0];
        if (!v17)
        {
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __69__QLThumbnailCreationOperation_retrieveThumbnailForTaggedLogicalURL___block_invoke;
          v29[3] = &unk_278B58120;
          v29[4] = v5;
          v30 = v4;
          [v18 generateThumbnailIfPossibleAtLogicalURL:v30 completionHandler:v29];

LABEL_25:
          objc_sync_exit(v5);

          goto LABEL_35;
        }

        [MEMORY[0x277CDAAC0] downloadOrGenerateThumbnailAtURL:v4];
      }
    }

    if (![(QLThumbnailCreationOperation *)v5 _finishIfCancelled])
    {
      v19 = *(MEMORY[0x277CBF3A0] + 16);
      *buf = *MEMORY[0x277CBF3A0];
      *&buf[16] = v19;
      [(QLThumbnailCreationOperation *)v5 maximumDimension];
      v21 = v20;
      [(QLThumbnailCreationOperation *)v5 scaleFactor];
      v23 = [v12 thumbnailWithMaximumDimension:buf contentRect:0 properties:v21 * v22];
      if (![(QLThumbnailCreationOperation *)v5 _finishIfCancelled])
      {
        if (v23)
        {
          v24 = MEMORY[0x277D755B8];
          [(QLThumbnailCreationOperation *)v5 scaleFactor];
          v25 = [v24 imageWithCGImage:v23 scale:0 orientation:?];
          [(QLThumbnailCreationOperation *)v5 setImage:v25];

          [(QLThumbnailCreationOperation *)v5 setContentRect:*buf, *&buf[8], *&buf[16]];
          objc_sync_exit(v5);

          [(QLThumbnailCreationOperation *)v5 _finish];
          goto LABEL_35;
        }

        if (v14)
        {
          [(QLThumbnailCreationOperation *)v5 setError:v14];
        }

        else
        {
          v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CDAB58] code:102 userInfo:0];
          [(QLThumbnailCreationOperation *)v5 setError:v26];
        }

        v27 = [(QLThumbnailCreationOperation *)v5 error];
        [(QLThumbnailCreationOperation *)v5 _finishWithError:v27];
      }

      objc_sync_exit(v5);
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  objc_sync_exit(v5);

LABEL_35:
  v28 = *MEMORY[0x277D85DE8];
}

void __69__QLThumbnailCreationOperation_retrieveThumbnailForTaggedLogicalURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = [v3 domain];
    v5 = *MEMORY[0x277CDAB58];
    if ([v4 isEqualToString:*MEMORY[0x277CDAB58]])
    {
      v6 = [v9 code];

      if (v6 == 106)
      {
        [MEMORY[0x277CDAAC0] downloadOrGenerateThumbnailAtURL:*(a1 + 40)];
        v7 = *(a1 + 32);
        v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:102 userInfo:0];
        [v7 _finishWithError:v8];

        goto LABEL_8;
      }
    }

    else
    {
    }

    [*(a1 + 32) _finishWithError:v9];
  }

  else
  {
    [*(a1 + 32) retrieveThumbnailForTaggedLogicalURL:*(a1 + 40)];
  }

LABEL_8:
}

- (CGRect)contentRect
{
  objc_copyStruct(v6, &self->_contentRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end