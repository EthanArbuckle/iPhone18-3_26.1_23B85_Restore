@interface PHImageIODecoder
+ (id)sharedDecoder;
+ (void)setMaxConcurrentDecodeCount:(int64_t)a3;
- (PHImageIODecoder)init;
- (id)decodeImageFromData:(id)a3 orFileURL:(id)a4 options:(id)a5 existingRequestHandle:(id)a6 completion:(id)a7;
@end

@implementation PHImageIODecoder

- (id)decodeImageFromData:(id)a3 orFileURL:(id)a4 options:(id)a5 existingRequestHandle:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([v14 waitUntilComplete])
  {
    v31 = 0;
    v30 = 1;
    v29 = 0;
    v17 = _createDecodedImageUsingImageIOWithFileUrlOrData(v14, v13, v12, [v14 maximumLongSideLength], objc_msgSend(v14, "optimizeForDrawing"), objc_msgSend(v14, "shouldLoadGainMap"), &v31, &v30, &v29);
    v18 = v29;
    v16[2](v16, v17, v31, v30, v18);
    CGImageRelease(v17);
    if (v31)
    {
      CFRelease(v31);
    }

    v19 = 0;
  }

  else
  {
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = [[PHImageDecoderAsyncDecodeRequestHandle alloc] initWithImageIODecoder:self];
    }

    pendingRequestQueue = self->_pendingRequestQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__PHImageIODecoder_decodeImageFromData_orFileURL_options_existingRequestHandle_completion___block_invoke;
    block[3] = &unk_1E75A4E48;
    block[4] = self;
    v19 = v20;
    v24 = v19;
    v28 = v16;
    v25 = v14;
    v26 = v13;
    v27 = v12;
    dispatch_async(pendingRequestQueue, block);
  }

  return v19;
}

void __91__PHImageIODecoder_decodeImageFromData_orFileURL_options_existingRequestHandle_completion___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(*(a1 + 32) + 16);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __91__PHImageIODecoder_decodeImageFromData_orFileURL_options_existingRequestHandle_completion___block_invoke_2;
  v9[3] = &unk_1E75A4E48;
  v3 = *(a1 + 40);
  v13 = *(a1 + 72);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  v12 = *(a1 + 32);
  dispatch_async(v2, v9);
}

intptr_t __91__PHImageIODecoder_decodeImageFromData_orFileURL_options_existingRequestHandle_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) cancelRequested])
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v2 = [*(a1 + 40) shouldLoadGainMap];
    cf = 0;
    v12 = 1;
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = [v3 maximumLongSideLength];
    v7 = [*(a1 + 40) optimizeForDrawing];
    v11 = 0;
    v8 = _createDecodedImageUsingImageIOWithFileUrlOrData(v3, v4, v5, v6, v7, v2, &cf, &v12, &v11);
    v9 = v11;
    (*(*(a1 + 72) + 16))();
    CGImageRelease(v8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return dispatch_semaphore_signal(*(*(a1 + 64) + 24));
}

- (PHImageIODecoder)init
{
  v12.receiver = self;
  v12.super_class = PHImageIODecoder;
  v2 = [(PHImageIODecoder *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.photos.imgmgr.iodecode.pendingrequests", v3);
    pendingRequestQueue = v2->_pendingRequestQueue;
    v2->_pendingRequestQueue = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.photos.imgmgr.iodecode.activerequests", v6);
    activeRequestQueue = v2->_activeRequestQueue;
    v2->_activeRequestQueue = v7;

    v9 = dispatch_semaphore_create(+[PHImageIODecoder maxConcurrentDecodeCount]);
    concurrentRequestSemaphore = v2->_concurrentRequestSemaphore;
    v2->_concurrentRequestSemaphore = v9;
  }

  return v2;
}

+ (void)setMaxConcurrentDecodeCount:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  sMaxConcurrentDecodeCount = v3;
}

+ (id)sharedDecoder
{
  if (sharedDecoder_s_onceToken != -1)
  {
    dispatch_once(&sharedDecoder_s_onceToken, &__block_literal_global_7728);
  }

  v3 = sharedDecoder_s_shared;

  return v3;
}

uint64_t __33__PHImageIODecoder_sharedDecoder__block_invoke()
{
  sharedDecoder_s_shared = objc_alloc_init(PHImageIODecoder);

  return MEMORY[0x1EEE66BB8]();
}

@end