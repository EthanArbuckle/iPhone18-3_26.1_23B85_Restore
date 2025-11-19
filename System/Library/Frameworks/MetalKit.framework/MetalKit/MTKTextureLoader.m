@interface MTKTextureLoader
- (BOOL)validateGenerateMipmapsForPixelFormat:(unint64_t)a3 options:(id)a4 error:(id *)a5;
- (MTKTextureLoader)initWithDevice:(id)device;
- (NSArray)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options error:(NSError *)error;
- (id)_newSyncTexturesFromTXRTextures:(id)a3 labels:(id)a4 options:(id)a5 error:(id *)a6;
- (id)newTextureFromTXRTexture:(id)a3 options:(id)a4 error:(id *)a5;
- (id)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error;
- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error;
- (id)newTexturesFromTXRTextures:(id)a3 options:(id)a4 error:(id *)a5;
- (id)newUploaderForOptions:(id)a3;
- (unint64_t)_determineFileType:(id)a3;
- (void)_loadCGImage:(CGImage *)a3 options:(id)a4 completionHandler:(id)a5;
- (void)_loadData:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)_loadData:(id)a3 options:(id)a4 uploader:(id)a5 label:(id)a6 completionHandler:(id)a7;
- (void)_loadMDLTexture:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)_newAsyncTextureWithNames:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 bundle:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)dealloc;
- (void)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithData:(NSData *)data options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler;
- (void)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler;
- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler;
- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler;
@end

@implementation MTKTextureLoader

- (void)dealloc
{
  self->_device = 0;
  dispatch_release(self->_notifyQueue);
  self->_notifyQueue = 0;
  dispatch_release(self->_uploadQueue);
  self->_uploadQueue = 0;
  dispatch_release(self->_loadQueue);
  self->_loadQueue = 0;
  dispatch_release(self->_loadSemaphore);
  self->_loadSemaphore = 0;

  self->_blitQueue = 0;
  self->_bufferAllocator = 0;
  v3.receiver = self;
  v3.super_class = MTKTextureLoader;
  [(MTKTextureLoader *)&v3 dealloc];
}

- (MTKTextureLoader)initWithDevice:(id)device
{
  v11.receiver = self;
  v11.super_class = MTKTextureLoader;
  v4 = [(MTKTextureLoader *)&v11 init];
  if (v4)
  {
    *(v4 + 7) = device;
    v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_UNSPECIFIED, 0);
    initially_inactive = dispatch_queue_attr_make_initially_inactive(v5);
    v7 = dispatch_queue_create("com.apple.mtktextureloaderload", initially_inactive);
    *(v4 + 1) = v7;
    dispatch_set_qos_class_floor(v7, QOS_CLASS_DEFAULT, 0);
    dispatch_activate(*(v4 + 1));
    v8 = dispatch_queue_create("com.apple.mtktextureloaderupload", initially_inactive);
    *(v4 + 2) = v8;
    dispatch_set_qos_class_floor(v8, QOS_CLASS_DEFAULT, 0);
    dispatch_activate(*(v4 + 2));
    v9 = dispatch_queue_create("com.apple.mtktextureloadernotify", initially_inactive);
    *(v4 + 3) = v9;
    dispatch_set_qos_class_floor(v9, QOS_CLASS_DEFAULT, 0);
    dispatch_activate(*(v4 + 3));
    *(v4 + 4) = dispatch_semaphore_create(3);
    *(v4 + 5) = 0;
    *(v4 + 6) = [[MTKTextureIOBufferAllocator alloc] initWithDevice:*(v4 + 7)];
  }

  return v4;
}

- (void)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (URL)
  {
    v13[0] = URL;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__MTKTextureLoader_newTextureWithContentsOfURL_options_completionHandler___block_invoke;
    v12[3] = &unk_1E8580AE8;
    v12[4] = completionHandler;
    [(MTKTextureLoader *)self newTexturesWithContentsOfURLs:v8 options:options completionHandler:v12];
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = _newMTKTextureErrorWithCodeAndErrorString(0, @"URL is nil");
    (*(completionHandler + 2))(completionHandler, 0);
    v10 = *MEMORY[0x1E69E9840];
  }
}

uint64_t __74__MTKTextureLoader_newTextureWithContentsOfURL_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  [a2 objectAtIndexedSubscript:0];
  objc_opt_class();
  objc_opt_isKindOfClass();
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke;
  v6[3] = &unk_1E8580B88;
  v6[4] = self;
  v6[5] = options;
  v6[6] = URLs;
  v6[7] = completionHandler;
  dispatch_async(loadQueue, v6);
}

void __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v17 = [*(a1 + 32) newUploaderForOptions:*(a1 + 40)];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3052000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v2 = 0;
  v47 = [MEMORY[0x1E695DF70] array];
  while (v2 < [*(a1 + 48) count])
  {
    [v43[5] addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
    ++v2;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3052000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = dispatch_semaphore_create(0);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 48);
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v48 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if ([v8 checkResourceIsReachableAndReturnError:0])
        {
          v9 = *(a1 + 32);
          v10 = *(v9 + 8);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_66;
          block[3] = &unk_1E8580B38;
          block[4] = v9;
          block[5] = v8;
          block[8] = &v24;
          block[9] = &v30;
          block[6] = *(a1 + 40);
          block[7] = v17;
          block[10] = &v36;
          block[11] = &v42;
          block[12] = v5;
          dispatch_async(v10, block);
        }

        else
        {
          [v25[5] lock];
          if (!v31[5])
          {
            v11 = _newMTKTextureErrorWithCodeAndErrorString(0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find resource %@ at specified location.", objc_msgSend(v8, "lastPathComponent")]);
            v31[5] = v11;
          }

          [v25[5] unlock];
          dispatch_semaphore_signal(v37[5]);
        }

        ++v5;
      }

      v4 = [v3 countByEnumeratingWithState:&v20 objects:v48 count:16];
    }

    while (v4);
  }

  for (j = 0; ; ++j)
  {
    v13 = [*(a1 + 48) count];
    v14 = v37[5];
    if (j >= v13)
    {
      break;
    }

    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }

  dispatch_release(v14);

  v15 = v43[5];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_3;
  v18[3] = &unk_1E8580B60;
  v18[4] = *(a1 + 56);
  v18[5] = &v42;
  v18[6] = &v30;
  [v17 finishWithCompletionHandler:v18];

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  v16 = *MEMORY[0x1E69E9840];
}

intptr_t __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_66(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  v15 = 0;
  v2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:*(a1 + 40) options:1 error:&v15];
  v3 = v2;
  if (v15)
  {
    if (v2)
    {
    }

    [*(*(*(a1 + 64) + 8) + 40) lock];
    if (!*(*(*(a1 + 72) + 8) + 40))
    {
      *(*(*(a1 + 72) + 8) + 40) = _newMTKTextureErrorWithCodeAndErrorString(0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid NSData, %@", objc_msgSend(v15, "localizedDescription")]);
    }

    [*(*(*(a1 + 64) + 8) + 40) unlock];
    dispatch_semaphore_signal(*(*(*(a1 + 80) + 8) + 40));
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) lastPathComponent];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_2;
    v11[3] = &unk_1E8580B10;
    v9 = *(a1 + 88);
    v8 = *(a1 + 96);
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);
    v14 = v8;
    v11[4] = v3;
    v11[5] = v9;
    [v6 _loadData:v3 options:v4 uploader:v5 label:v7 completionHandler:v11];
  }

  return dispatch_semaphore_signal(*(*(a1 + 32) + 32));
}

void __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = *(*(a1[5] + 8) + 40);
    objc_sync_enter(v5);
    [*(*(a1[5] + 8) + 40) setObject:a2 atIndexedSubscript:a1[9]];
    objc_sync_exit(v5);
  }

  else
  {
    [*(*(a1[6] + 8) + 40) lock];
    if (!*(*(a1[7] + 8) + 40))
    {
      *(*(a1[7] + 8) + 40) = a3;
    }

    [*(*(a1[6] + 8) + 40) unlock];
  }

  dispatch_semaphore_signal(*(*(a1[8] + 8) + 40));
  v7 = a1[4];
}

void __76__MTKTextureLoader_newTexturesWithContentsOfURLs_options_completionHandler___block_invoke_3(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  v3 = *(*(a1[6] + 8) + 40);
  (*(a1[4] + 16))();

  v4 = *(*(a1[6] + 8) + 40);
}

- (void)newTextureWithData:(NSData *)data options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MTKTextureLoader_newTextureWithData_options_completionHandler___block_invoke;
  v6[3] = &unk_1E8580B88;
  v6[4] = self;
  v6[5] = data;
  v6[6] = options;
  v6[7] = completionHandler;
  dispatch_async(loadQueue, v6);
}

intptr_t __65__MTKTextureLoader_newTextureWithData_options_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _loadData:*(a1 + 40) options:*(a1 + 48) completionHandler:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  CGImageRetain(cgImage);
  loadQueue = self->_loadQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__MTKTextureLoader_newTextureWithCGImage_options_completionHandler___block_invoke;
  v10[3] = &unk_1E8580BB0;
  v10[4] = self;
  v10[5] = options;
  v10[6] = completionHandler;
  v10[7] = cgImage;
  dispatch_async(loadQueue, v10);
}

intptr_t __68__MTKTextureLoader_newTextureWithCGImage_options_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _loadCGImage:*(a1 + 56) options:*(a1 + 40) completionHandler:*(a1 + 48)];
  CGImageRelease(*(a1 + 56));
  v2 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MTKTextureLoader_newTextureWithMDLTexture_options_completionHandler___block_invoke;
  v6[3] = &unk_1E8580B88;
  v6[4] = self;
  v6[5] = texture;
  v6[6] = options;
  v6[7] = completionHandler;
  dispatch_async(loadQueue, v6);
}

intptr_t __71__MTKTextureLoader_newTextureWithMDLTexture_options_completionHandler___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 32), 0xFFFFFFFFFFFFFFFFLL);
  [*(a1 + 32) _loadMDLTexture:*(a1 + 40) options:*(a1 + 48) completionHandler:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 32);

  return dispatch_semaphore_signal(v2);
}

- (id)newTextureWithContentsOfURL:(NSURL *)URL options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__MTKTextureLoader_newTextureWithContentsOfURL_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithContentsOfURL:URL options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __62__MTKTextureLoader_newTextureWithContentsOfURL_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (NSArray)newTexturesWithContentsOfURLs:(NSArray *)URLs options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__MTKTextureLoader_newTexturesWithContentsOfURLs_options_error___block_invoke;
  v12[3] = &unk_1E8580C00;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTexturesWithContentsOfURLs:URLs options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __64__MTKTextureLoader_newTexturesWithContentsOfURLs_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithData:(NSData *)data options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__MTKTextureLoader_newTextureWithData_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithData:data options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __53__MTKTextureLoader_newTextureWithData_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithCGImage:(CGImageRef)cgImage options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MTKTextureLoader_newTextureWithCGImage_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithCGImage:cgImage options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __56__MTKTextureLoader_newTextureWithCGImage_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithMDLTexture:(MDLTexture *)texture options:(NSDictionary *)options error:(NSError *)error
{
  v9 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MTKTextureLoader_newTextureWithMDLTexture_options_error___block_invoke;
  v12[3] = &unk_1E8580BD8;
  v12[5] = &v19;
  v12[6] = &v13;
  v12[4] = v9;
  [(MTKTextureLoader *)self newTextureWithMDLTexture:texture options:options completionHandler:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v9);
  if (error)
  {
    *error = v14[5];
  }

  v10 = v20[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

intptr_t __59__MTKTextureLoader_newTextureWithMDLTexture_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (unint64_t)_determineFileType:(id)a3
{
  if ([MTKTextureLoaderKTX isKTXFile:?])
  {
    return 1;
  }

  if ([MTKTextureLoaderPVR isPVRFile:a3])
  {
    return 2;
  }

  if ([MTKTextureLoaderPVR3 isPVR3File:a3])
  {
    return 3;
  }

  return 4;
}

- (void)_loadData:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v9 = [(MTKTextureLoader *)self newUploaderForOptions:a4];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke;
  v10[3] = &unk_1E8580C50;
  v10[4] = v9;
  v10[5] = a5;
  [(MTKTextureLoader *)self _loadData:a3 options:a4 uploader:v9 label:0 completionHandler:v10];
}

void __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke_2;
  v10[3] = &unk_1E8580C28;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10[5] = a2;
  v10[6] = v9;
  v10[4] = a3;
  [v8 finishWithCompletionHandler:v10];
}

void __56__MTKTextureLoader__loadData_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v4 = *(a1 + 32);
}

- (void)_loadData:(id)a3 options:(id)a4 uploader:(id)a5 label:(id)a6 completionHandler:(id)a7
{
  v11 = 0;
  v23 = 0;
  v12 = [(MTKTextureLoader *)self _determineFileType:?]- 1;
  if (v12 <= 3)
  {
    v11 = [objc_alloc(*off_1E8580D58[v12]) initWithData:a3 options:a4 error:&v23];
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  device = self->_device;
  [v11 pixelFormat];
  MTLPixelFormatGetInfoForDevice();

  v14 = v23;
  if (!v23)
  {
    v15 = MEMORY[0x1E696AEC0];
    [0 pixelFormat];
    v16 = [v15 stringWithFormat:@"Pixel format(%s) is not valid on this device", MTLPixelFormatGetName()];
    v14 = _newMTKTextureErrorWithCodeAndErrorString(0, v16);
    v23 = v14;
  }

  notifyQueue = self->_notifyQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke;
  v18[3] = &unk_1E8580C78;
  v18[4] = v14;
  v18[5] = a7;
  dispatch_async(notifyQueue, v18);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) newTextureWithData:*(a1 + 40) options:*(a1 + 48) error:&v7];
  v3 = v2;
  if (*(a1 + 56))
  {
    [v2 setLabel:?];
  }

  if ([objc_msgSend(*(a1 + 48) objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    [*(a1 + 32) generateMipmapsForTexture:v3];
  }

  v4 = *(*(a1 + 64) + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_4;
  v6[3] = &unk_1E8580CA0;
  v5 = *(a1 + 72);
  v6[4] = v3;
  v6[5] = v7;
  v6[6] = v5;
  dispatch_async(v4, v6);
}

void __71__MTKTextureLoader__loadData_options_uploader_label_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v4 = *(a1 + 40);
}

- (void)_loadCGImage:(CGImage *)a3 options:(id)a4 completionHandler:(id)a5
{
  v9 = [(MTKTextureLoader *)self newUploaderForOptions:a4];
  v17 = 0;
  v10 = [[MTKTextureLoaderImageIO alloc] initWithCGImage:a3 options:a4 error:&v17];
  if (v10)
  {
    v11 = v10;
    if ([(MTKTextureLoader *)self validateGenerateMipmapsForPixelFormat:[(MTKTextureLoaderData *)v10 pixelFormat] options:a4 error:&v17])
    {
      uploadQueue = self->_uploadQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_3;
      v14[3] = &unk_1E8580B88;
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = a4;
      v14[7] = a5;
      v13 = v14;
    }

    else
    {

      uploadQueue = self->_notifyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_2;
      block[3] = &unk_1E8580C78;
      block[4] = v17;
      block[5] = a5;
      v13 = block;
    }
  }

  else
  {
    uploadQueue = self->_notifyQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke;
    v16[3] = &unk_1E8580C78;
    v16[4] = v17;
    v16[5] = a5;
    v13 = v16;
  }

  dispatch_async(uploadQueue, v13);
}

void __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
}

void __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
}

uint64_t __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) newTextureWithData:*(a1 + 40) options:*(a1 + 48) error:&v7];

  if ([objc_msgSend(*(a1 + 48) objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    [*(a1 + 32) generateMipmapsForTexture:v2];
  }

  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_4;
  v6[3] = &unk_1E8580CA0;
  v4 = *(a1 + 56);
  v6[4] = v2;
  v6[5] = v7;
  v6[6] = v4;
  return [v3 finishWithCompletionHandler:v6];
}

void __59__MTKTextureLoader__loadCGImage_options_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v4 = *(a1 + 40);
}

- (void)_loadMDLTexture:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v9 = [(MTKTextureLoader *)self newUploaderForOptions:a4];
  v17 = 0;
  v10 = [[MTKTextureLoaderMDL alloc] initWithMDLTexture:a3 options:a4 error:&v17];
  if (v10)
  {
    v11 = v10;
    if ([(MTKTextureLoader *)self validateGenerateMipmapsForPixelFormat:[(MTKTextureLoaderData *)v10 pixelFormat] options:a4 error:&v17])
    {
      uploadQueue = self->_uploadQueue;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_3;
      v14[3] = &unk_1E8580B88;
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = a4;
      v14[7] = a5;
      v13 = v14;
    }

    else
    {

      uploadQueue = self->_notifyQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_2;
      block[3] = &unk_1E8580C78;
      block[4] = v17;
      block[5] = a5;
      v13 = block;
    }
  }

  else
  {
    uploadQueue = self->_notifyQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke;
    v16[3] = &unk_1E8580C78;
    v16[4] = v17;
    v16[5] = a5;
    v13 = v16;
  }

  dispatch_async(uploadQueue, v13);
}

void __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
}

void __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
}

uint64_t __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) newTextureWithData:*(a1 + 40) options:*(a1 + 48) error:&v7];

  if ([objc_msgSend(*(a1 + 48) objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    [*(a1 + 32) generateMipmapsForTexture:v2];
  }

  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_4;
  v6[3] = &unk_1E8580CA0;
  v4 = *(a1 + 56);
  v6[4] = v2;
  v6[5] = v7;
  v6[6] = v4;
  return [v3 finishWithCompletionHandler:v6];
}

void __62__MTKTextureLoader__loadMDLTexture_options_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();

  v4 = *(a1 + 40);
}

- (BOOL)validateGenerateMipmapsForPixelFormat:(unint64_t)a3 options:(id)a4 error:(id *)a5
{
  if (![objc_msgSend(a4 objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}])
  {
    return 1;
  }

  device = self->_device;
  MTLPixelFormatGetInfoForDevice();
  v8 = 0;
  if (a5)
  {
    *a5 = _newMTKTextureErrorWithCodeAndErrorString(0, @"MTKTextureLoaderOptionGenerateMipmaps is only supported for color renderable and filterable pixel formats");
  }

  return v8;
}

- (id)newUploaderForOptions:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{@"MTKTextureLoaderOptionGenerateMipmaps", "BOOLValue"}];
  if (![a3 objectForKey:@"MTKTextureLoaderOptionTextureStorageMode"])
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    blitQueue = 0;
    goto LABEL_8;
  }

  if (!(([objc_msgSend(a3 objectForKey:{@"MTKTextureLoaderOptionTextureStorageMode", "unsignedIntegerValue"}] == 2) | v5 & 1))
  {
    goto LABEL_7;
  }

LABEL_3:
  objc_sync_enter(self);
  if (!self->_blitQueue)
  {
    self->_blitQueue = [(MTLDeviceSPI *)self->_device newCommandQueue];
  }

  objc_sync_exit(self);
  blitQueue = self->_blitQueue;
LABEL_8:
  v7 = [MTKTextureUploader alloc];
  device = self->_device;
  notifyQueue = self->_notifyQueue;

  return [(MTKTextureUploader *)v7 initWithDevice:device commandQueue:blitQueue notifyQueue:notifyQueue];
}

- (void)_newAsyncTextureWithNames:(id)a3 scaleFactor:(double)a4 displayGamut:(int64_t)a5 bundle:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v64 = *MEMORY[0x1E69E9840];
  v61 = 0;
  v14 = [MEMORY[0x1E6999368] defaultUICatalogForBundle:a6];
  if (!v14)
  {
    v40 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Could not get asset catalog from supplied bundle");
    notifyQueue = self->_notifyQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke;
    block[3] = &unk_1E8580C78;
    block[4] = v40;
    block[5] = a8;
    v39 = block;
    v38 = notifyQueue;
    goto LABEL_32;
  }

  v15 = v14;
  v43 = a8;
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = a3;
  v17 = [a3 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (!v17)
  {
    goto LABEL_21;
  }

  v18 = v17;
  v19 = *v57;
  v45 = a5 == 2;
  do
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v57 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v56 + 1) + 8 * i);
      v22 = [v15 namedTextureWithName:v21 scaleFactor:a4];
      if (v22)
      {
        v23 = v22;
        v24 = objc_autoreleasePoolPush();
        v25 = [v23 textureWithBufferAllocator:self->_bufferAllocator];
        v26 = v25;
        objc_autoreleasePoolPop(v24);
        v55 = 0;
        v53 = 0u;
        v54 = 0u;
        v52 = 0u;
        device = self->_device;
        [v25 pixelFormat];
        MTLPixelFormatGetInfoForDevice();
        if ([MEMORY[0x1E69DA0D8] isGammaEncoded:{objc_msgSend(v25, "pixelFormat")}])
        {
          v28 = 71;
        }

        else
        {
          v28 = 70;
        }

        [v25 reformat:v28 gammaDegamma:1 bufferAllocator:self->_bufferAllocator error:0];
        v29 = v16;
        goto LABEL_14;
      }

      if ([v15 imageExistsWithName:v21 scaleFactor:a4])
      {
        v25 = [v15 imageWithName:v21 scaleFactor:v45 displayGamut:5 layoutDirection:a4];
        if ([v25 image])
        {
          v30 = v25;
          v29 = v44;
LABEL_14:
          [v29 addObject:v25];
          continue;
        }
      }

      else
      {
        v61 = _newMTKTextureErrorWithCodeAndErrorString(0, [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not find texture or image named %@ in supplied bundle", v21]);
      }
    }

    v18 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  }

  while (v18);
LABEL_21:
  v31 = [(MTKTextureLoader *)self _newSyncTexturesFromTXRTextures:v16 labels:obj options:a7 error:&v61];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v32 = [v44 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v44);
        }

        v36 = *(*(&v48 + 1) + 8 * j);
        v37 = -[MTKTextureLoader newTextureWithCGImage:options:error:](self, "newTextureWithCGImage:options:error:", [v36 image], a7, &v61);

        if (v37)
        {
          [v31 addObject:v37];
        }
      }

      v33 = [v44 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v33);
  }

  v38 = self->_notifyQueue;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke_2;
  v47[3] = &unk_1E8580CA0;
  v47[4] = v31;
  v47[5] = v61;
  v47[6] = v43;
  v39 = v47;
LABEL_32:
  dispatch_async(v38, v39);
  v42 = *MEMORY[0x1E69E9840];
}

void __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __104__MTKTextureLoader__newAsyncTextureWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)newTexturesFromTXRTextures:(id)a3 options:(id)a4 error:(id *)a5
{
  [a3 enumerateObjectsUsingBlock:&__block_literal_global];

  return [(MTKTextureLoader *)self _newSyncTexturesFromTXRTextures:a3 labels:0 options:a4 error:a5];
}

- (id)newTextureFromTXRTexture:(id)a3 options:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v15[0] = a3;
  v10 = -[MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:](self, "_newSyncTexturesFromTXRTextures:labels:options:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1], 0, a4, a5);
  if (v10 && (v11 = v10, [v10 count]))
  {
    v12 = [v11 objectAtIndexedSubscript:0];
    if (v12)
    {
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_newSyncTexturesFromTXRTextures:(id)a3 labels:(id)a4 options:(id)a5 error:(id *)a6
{
  v8 = a3;
  v132 = *MEMORY[0x1E69E9840];
  v126 = 0uLL;
  v127 = 0;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v11 = [(MTLDeviceSPI *)self->_device newCommandQueue];
  [v11 setLabel:@"com.apple.MTKTextureLoader"];
  v81 = v11;
  v80 = [v11 commandBuffer];
  v97 = [v80 blitCommandEncoder];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v12 = [v8 countByEnumeratingWithState:&v122 objects:v131 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v90 = *v123;
    do
    {
      v15 = 0;
      v86 = v13;
      do
      {
        if (*v123 != v90)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v122 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
        }

        else
        {
          v93 = v15;
          v17 = objc_alloc_init(MEMORY[0x1E69741C0]);
          [v16 dimensions];
          [v17 setWidth:v18];
          [v16 dimensions];
          [v17 setHeight:v19];
          [v16 dimensions];
          [v17 setDepth:v20];
          [v17 setArrayLength:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v16, "mipmapLevels"), "objectAtIndexedSubscript:", 0), "elements"), "count")}];
          if ([v16 pixelFormat] >> 31)
          {
            [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
          }

          [v17 setPixelFormat:objc_msgSend(v16, "pixelFormat")];
          v91 = [v17 arrayLength];
          v105 = v16;
          if ([v16 cubemap])
          {
            v21 = v8;
            v22 = v10;
            v23 = v14;
            if ([v17 arrayLength] < 2)
            {
              v27 = a4;
              v25 = 5;
            }

            else
            {
              v24 = [(MTLDeviceSPI *)self->_device supportsTextureCubeArray];
              if (v24)
              {
                v25 = 6;
              }

              else
              {
                v25 = 5;
              }

              v26 = v91;
              if (!v24)
              {
                v26 = 1;
              }

              v91 = v26;
              v27 = a4;
              if ((v24 & 1) == 0 && a6)
              {
                *a6 = _newMTKTextureErrorWithCodeAndErrorString(0, @"Attempt to load a cubemap array on platform that does not support cubemap arrays");
                v25 = 5;
                v91 = 1;
              }
            }

            [v17 setTextureType:v25];
            [v16 dimensions];
            if (v30 != 1)
            {
              [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
            }

            [v16 dimensions];
            v32 = v31;
            [v105 dimensions];
            a4 = v27;
            v14 = v23;
            v10 = v22;
            v8 = v21;
            v13 = v86;
            if (v32 != v33)
            {
              [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
            }
          }

          else
          {
            [v16 dimensions];
            if (v28 <= 1)
            {
              [v16 dimensions];
              v35 = v34;
              v36 = [v17 arrayLength];
              if (v35 < 2)
              {
                v29 = v36 > 1;
              }

              else if (v36 <= 1)
              {
                v29 = 2;
              }

              else
              {
                v29 = 3;
              }
            }

            else
            {
              v29 = 7;
            }

            [v17 setTextureType:v29];
          }

          if ([a5 objectForKey:@"MTKTextureLoaderOptionTextureStorageMode"])
          {
            [v17 setStorageMode:{objc_msgSend(objc_msgSend(a5, "objectForKey:", @"MTKTextureLoaderOptionTextureStorageMode", "unsignedIntegerValue")}];
          }

          if ([a5 objectForKey:@"MTKTextureLoaderOptionTextureUsage"])
          {
            [v17 setUsage:{objc_msgSend(objc_msgSend(a5, "objectForKey:", @"MTKTextureLoaderOptionTextureUsage", "unsignedIntegerValue")}];
          }

          if ([a5 objectForKey:@"MTKTextureLoaderOptionTextureCPUCacheMode"])
          {
            [v17 setCpuCacheMode:{objc_msgSend(objc_msgSend(a5, "objectForKey:", @"MTKTextureLoaderOptionTextureCPUCacheMode", "unsignedIntegerValue")}];
          }

          if ([objc_msgSend(a5 objectForKey:{@"MTKTextureLoaderOptionAllocateMipmaps", "BOOLValue"}])
          {
            v37 = [v17 width];
            v38 = [v17 height];
            if (v37 <= v38)
            {
              v39 = v38;
            }

            else
            {
              v39 = v37;
            }

            v40 = (floor(log2(v39)) + 1.0);
          }

          else
          {
            v40 = [objc_msgSend(v105 "mipmapLevels")];
          }

          [v17 setMipmapLevelCount:v40];
          v41 = [a5 objectForKeyedSubscript:@"MTKTextureLoaderOptionLoadAsArray"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 BOOLValue])
          {
            [v17 setTextureType:{arrayTextureTypeFromTextureType(objc_msgSend(v17, "textureType"))}];
          }

          v42 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v17];

          if (v42)
          {
            v96 = v42;
            [v10 addObject:v42];
            [v105 dimensions];
            v103 = v43;
            [v105 dimensions];
            v100 = v44;
            [v105 dimensions];
            v102 = v45;
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            obj = [v105 mipmapLevels];
            v15 = v93;
            v83 = [obj countByEnumeratingWithState:&v118 objects:v130 count:16];
            if (v83)
            {
              v98 = 0;
              v101 = v102;
              v46.i64[0] = v103;
              v46.i64[1] = v100;
              v99 = v46;
              v47 = *v119;
              v77 = a4;
              v78 = a5;
              v75 = v8;
              v76 = v10;
              v73 = v14;
              v74 = self;
              v79 = *v119;
              do
              {
                v48 = 0;
                do
                {
                  if (*v119 != v47)
                  {
                    v49 = v48;
                    objc_enumerationMutation(obj);
                    v48 = v49;
                  }

                  v85 = v48;
                  v50 = *(*(&v118 + 1) + 8 * v48);
                  v114 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v117 = 0u;
                  v87 = [v50 elements];
                  v51 = v105;
                  v88 = [v87 countByEnumeratingWithState:&v114 objects:v129 count:16];
                  if (v88)
                  {
                    v104 = 0;
                    v89 = *v115;
                    v94 = COERCE_DOUBLE(vmovn_s64(v99));
LABEL_54:
                    v52 = 0;
                    while (1)
                    {
                      if (*v115 != v89)
                      {
                        objc_enumerationMutation(v87);
                      }

                      v92 = v52;
                      v53 = *(*(&v114 + 1) + 8 * v52);
                      v110 = 0u;
                      v111 = 0u;
                      v112 = 0u;
                      v113 = 0u;
                      v95 = [v53 faces];
                      v54 = [v95 countByEnumeratingWithState:&v110 objects:v128 count:16];
                      if (v54)
                      {
                        v55 = v54;
                        v56 = 0;
                        v57 = *v111;
                        do
                        {
                          for (i = 0; i != v55; ++i)
                          {
                            if (*v111 != v57)
                            {
                              objc_enumerationMutation(v95);
                            }

                            v59 = *(*(&v110 + 1) + 8 * i);
                            v60 = [v59 bytesPerRow];
                            v61 = [v59 bytesPerImage];
                            if (!v60)
                            {
                              v60 = [MEMORY[0x1E69DA0D8] packedMemoryLayoutForFormat:objc_msgSend(v51 dimensions:"pixelFormat"), v94];
                            }

                            v62 = [v51 cubemap];
                            [v59 buffer];
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              [MTKTextureLoader _newSyncTexturesFromTXRTextures:labels:options:error:];
                            }

                            if (!v61)
                            {
                              v61 = v60 * v99.i64[1];
                            }

                            v63 = 6;
                            if (!v62)
                            {
                              v63 = 1;
                            }

                            v64 = v56 + v104 * v63;
                            v65 = [objc_msgSend(v59 "buffer")];
                            v66 = [v59 offset];
                            v108 = v99;
                            v109 = v101;
                            v106 = v126;
                            v107 = v127;
                            [v97 copyFromBuffer:v65 sourceOffset:v66 sourceBytesPerRow:v60 sourceBytesPerImage:v61 sourceSize:&v108 toTexture:v96 destinationSlice:v64 destinationLevel:v98 destinationOrigin:&v106];
                            ++v56;
                            v51 = v105;
                          }

                          v55 = [v95 countByEnumeratingWithState:&v110 objects:v128 count:16];
                        }

                        while (v55);
                      }

                      v15 = v93;
                      if (v91 == 1)
                      {
                        break;
                      }

                      ++v104;
                      v52 = v92 + 1;
                      if (v92 + 1 == v88)
                      {
                        v88 = [v87 countByEnumeratingWithState:&v114 objects:v129 count:16];
                        if (v88)
                        {
                          goto LABEL_54;
                        }

                        break;
                      }
                    }
                  }

                  ++v98;
                  v67 = vcgtq_u64(v99, vdupq_n_s64(1uLL));
                  v99 = vsubq_s64(vandq_s8(vshrq_n_u64(v99, 1uLL), v67), vmvnq_s8(v67));
                  v68 = v101 >> 1;
                  if (v101 <= 1)
                  {
                    v68 = 1;
                  }

                  v101 = v68;
                  v13 = v86;
                  v48 = v85 + 1;
                  a4 = v77;
                  a5 = v78;
                  v8 = v75;
                  v10 = v76;
                  v14 = v73;
                  self = v74;
                  v47 = v79;
                }

                while (v85 + 1 != v83);
                v69 = [obj countByEnumeratingWithState:&v118 objects:v130 count:16];
                v47 = v79;
                v83 = v69;
              }

              while (v69);
            }

            if (a4)
            {
              v70 = [a4 objectAtIndexedSubscript:v14];
              if (v70 != [MEMORY[0x1E695DFB0] null])
              {
                [v96 setLabel:{objc_msgSend(a4, "objectAtIndexedSubscript:", v14)}];
              }
            }

            ++v14;
          }

          else
          {
            [v10 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
            v15 = v93;
          }
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [v8 countByEnumeratingWithState:&v122 objects:v131 count:16];
    }

    while (v13);
  }

  [v97 endEncoding];
  [v80 commit];
  [v80 waitUntilCompleted];

  v71 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__MTKTextureLoader_newTexturesWithNames_scaleFactor_bundle_options_completionHandler___block_invoke;
  v8[3] = &unk_1E8580D10;
  v8[4] = self;
  v8[5] = names;
  *&v8[9] = scaleFactor;
  v8[6] = bundle;
  v8[7] = options;
  v8[8] = completionHandler;
  dispatch_async(loadQueue, v8);
}

- (void)newTexturesWithNames:(NSArray *)names scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderArrayCallback)completionHandler
{
  loadQueue = self->_loadQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__MTKTextureLoader_newTexturesWithNames_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke;
  block[3] = &unk_1E8580D38;
  block[4] = self;
  block[5] = names;
  *&block[9] = scaleFactor;
  block[10] = displayGamut;
  block[6] = bundle;
  block[7] = options;
  block[8] = completionHandler;
  dispatch_async(loadQueue, block);
}

- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = name;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_completionHandler___block_invoke;
  v14[3] = &unk_1E8580AE8;
  v14[4] = completionHandler;
  [(MTKTextureLoader *)self newTexturesWithNames:v12 scaleFactor:bundle bundle:options options:v14 completionHandler:scaleFactor];
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __84__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 count] == 1)
  {
    [a2 objectAtIndexedSubscript:0];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options completionHandler:(MTKTextureLoaderCallback)completionHandler
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = name;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __97__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke;
  v16[3] = &unk_1E8580AE8;
  v16[4] = completionHandler;
  [(MTKTextureLoader *)self newTexturesWithNames:v14 scaleFactor:displayGamut displayGamut:bundle bundle:options options:v16 completionHandler:scaleFactor];
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __97__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 count] == 1)
  {
    [a2 objectAtIndexedSubscript:0];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error
{
  v13 = dispatch_semaphore_create(0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_error___block_invoke;
  v16[3] = &unk_1E8580BD8;
  v16[5] = &v23;
  v16[6] = &v17;
  v16[4] = v13;
  [(MTKTextureLoader *)self newTextureWithName:name scaleFactor:bundle bundle:options options:v16 completionHandler:scaleFactor];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v13);
  if (error)
  {
    *error = v18[5];
  }

  v14 = v24[5];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
  return v14;
}

intptr_t __72__MTKTextureLoader_newTextureWithName_scaleFactor_bundle_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

- (id)newTextureWithName:(NSString *)name scaleFactor:(CGFloat)scaleFactor displayGamut:(NSDisplayGamut)displayGamut bundle:(NSBundle *)bundle options:(NSDictionary *)options error:(NSError *)error
{
  v15 = dispatch_semaphore_create(0);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_error___block_invoke;
  v18[3] = &unk_1E8580BD8;
  v18[5] = &v25;
  v18[6] = &v19;
  v18[4] = v15;
  [(MTKTextureLoader *)self newTextureWithName:name scaleFactor:displayGamut displayGamut:bundle bundle:options options:v18 completionHandler:scaleFactor];
  dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v15);
  if (error)
  {
    *error = v20[5];
  }

  v16 = v26[5];
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v16;
}

intptr_t __85__MTKTextureLoader_newTextureWithName_scaleFactor_displayGamut_bundle_options_error___block_invoke(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 40) = a2;
  *(*(a1[6] + 8) + 40) = a3;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

@end