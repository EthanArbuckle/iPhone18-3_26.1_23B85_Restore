@interface QLThumbnail
+ (id)defaultDescriptors;
+ (id)sharedQueue;
- (BOOL)provideImages:(id)a3 error:(id *)a4;
- (QLThumbnail)initWithURL:(id)a3;
@end

@implementation QLThumbnail

- (QLThumbnail)initWithURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = QLThumbnail;
  v5 = [(QLThumbnail *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(QLThumbnail *)v5 setUrl:v4];
  }

  return v6;
}

+ (id)sharedQueue
{
  if (sharedQueue_once != -1)
  {
    +[QLThumbnail sharedQueue];
  }

  v3 = sharedQueue_queue;

  return v3;
}

uint64_t __26__QLThumbnail_sharedQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = sharedQueue_queue;
  sharedQueue_queue = v0;

  [sharedQueue_queue setName:@"QLThumbnail"];
  v2 = sharedQueue_queue;

  return [v2 setMaxConcurrentOperationCount:4];
}

+ (id)defaultDescriptors
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [QLThumbnailDescriptor descriptorWithSize:225.0 scaleFactor:225.0, 1.0];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)provideImages:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_opt_class() defaultDescriptors];
  v8 = v6[2](v6, v7);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v35;
    v14 = 0.0;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        [v16 size];
        v18 = v17;
        [v16 size];
        if (v18 < v19)
        {
          v18 = v19;
        }

        if (v18 > v14)
        {
          v20 = v16;

          v14 = v18;
          v12 = v20;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v21 = MEMORY[0x277CDAAC0];
  v22 = [v12 CGImage];
  v23 = [(QLThumbnail *)self url];
  v24 = [v21 associateImage:v22 metadata:0 automaticallyGenerated:0 withURL:v23 error:a4];

  v25 = MEMORY[0x277D43EF8];
  v26 = *MEMORY[0x277D43EF8];
  if (v24)
  {
    if (!v26)
    {
      QLSInitLogging();
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      url = self->_url;
      *buf = 138412290;
      v39 = url;
      v28 = "Saved thumbnail in additions for %@ #Thumbnail";
      v29 = v26;
      v30 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_23A714000, v29, v30, v28, buf, 0xCu);
    }
  }

  else
  {
    if (!v26)
    {
      QLSInitLogging();
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (a4)
      {
        v31 = *a4;
      }

      else
      {
        v31 = 0;
      }

      *buf = 138412290;
      v39 = v31;
      v28 = "Could not save thumbnail in additions: %@ #Thumbnail";
      v29 = v26;
      v30 = OS_LOG_TYPE_ERROR;
      goto LABEL_26;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

@end