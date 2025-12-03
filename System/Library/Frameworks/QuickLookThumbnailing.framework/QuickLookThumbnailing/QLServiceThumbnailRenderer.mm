@interface QLServiceThumbnailRenderer
- (BOOL)_canCreateContextOfSize:(CGSize)size forRequest:(id)request;
- (CGSize)_IOSurfaceSizeFromThumbnailReply:(id)reply;
- (QLServiceThumbnailRenderer)initWithRequest:(id)request reply:(id)reply connection:(id)connection completionHandler:(id)handler;
- (id)_drawInContextOfSize:(CGSize)size colorSpace:(CGColorSpace *)space error:(id *)error drawingBlock:(id)block;
- (id)_thumbnailDataDestructionConcurrenQueue;
- (id)protocolHostWithErrorHandler:(id)handler;
- (void)_drawInCurrentContextOfSize:(CGSize)size colorSpace:(CGColorSpace *)space drawingBlock:(id)block;
- (void)_drawInIOSurface;
- (void)_drawMultipleImages;
- (void)_drawWithRendererBlock;
- (void)_finishWithSuccess:(BOOL)success error:(id)error;
- (void)generateThumbnailAndPerformCompletionHandler;
@end

@implementation QLServiceThumbnailRenderer

- (QLServiceThumbnailRenderer)initWithRequest:(id)request reply:(id)reply connection:(id)connection completionHandler:(id)handler
{
  requestCopy = request;
  replyCopy = reply;
  connectionCopy = connection;
  handlerCopy = handler;
  v21.receiver = self;
  v21.super_class = QLServiceThumbnailRenderer;
  v15 = [(QLServiceThumbnailRenderer *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_request, request);
    objc_storeStrong(&v16->_reply, reply);
    v17 = _Block_copy(handlerCopy);
    completionHandler = v16->_completionHandler;
    v16->_completionHandler = v17;

    objc_storeStrong(&v16->_connection, connection);
    v19 = v16;
  }

  return v16;
}

- (void)generateThumbnailAndPerformCompletionHandler
{
  v34[1] = *MEMORY[0x1E69E9840];
  reply = self->_reply;
  if (!reply)
  {
    goto LABEL_13;
  }

  type = [(QLThumbnailReply *)reply type];
  if (type <= 3)
  {
    if (!type)
    {
      [(QLThumbnailReply *)self->_reply contextSize];
      v10 = v9;
      v12 = v11;
      colorSpace = [(QLThumbnailReply *)self->_reply colorSpace];
      v33 = 0;
      drawInContextBlock = [(QLThumbnailReply *)self->_reply drawInContextBlock];
      v15 = [(QLServiceThumbnailRenderer *)self _drawInContextOfSize:colorSpace colorSpace:&v33 error:drawInContextBlock drawingBlock:v10, v12];
      v16 = v33;

      if (v15)
      {
        v34[0] = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
        [(QLThumbnailReply *)self->_reply setBitmapImages:v17];

        selfCopy2 = self;
        v19 = 1;
        v20 = 0;
      }

      else
      {
        selfCopy2 = self;
        v19 = 0;
        v20 = v16;
      }

      [(QLServiceThumbnailRenderer *)selfCopy2 _finishWithSuccess:v19 error:v20];

      goto LABEL_28;
    }

    if (type != 1)
    {
      if (type == 3)
      {
        v5 = *MEMORY[0x1E69E9840];

        [(QLServiceThumbnailRenderer *)self _finishWithSuccess:1 error:0];
        return;
      }

      goto LABEL_13;
    }

    selfCopy3 = self;
    reply = [(QLServiceThumbnailRenderer *)selfCopy3 reply];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __74__QLServiceThumbnailRenderer_generateThumbnailAndPerformCompletionHandler__block_invoke;
    v30[3] = &unk_1E8369BD0;
    v31 = selfCopy3;
    v32 = reply;
    v24 = reply;
    v7 = selfCopy3;
    QLTRunInMainThreadAsync(v30);

LABEL_22:
LABEL_28:
    v26 = *MEMORY[0x1E69E9840];
    return;
  }

  switch(type)
  {
    case 4:
      v21 = *MEMORY[0x1E69E9840];

      [(QLServiceThumbnailRenderer *)self _drawInIOSurface];
      break;
    case 5:
      v25 = *MEMORY[0x1E69E9840];

      [(QLServiceThumbnailRenderer *)self _drawMultipleImages];
      break;
    case 6:
      selfCopy4 = self;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __74__QLServiceThumbnailRenderer_generateThumbnailAndPerformCompletionHandler__block_invoke_2;
      v28[3] = &unk_1E8369F88;
      v29 = selfCopy4;
      v7 = selfCopy4;
      QLTRunInMainThreadAsync(v28);

      goto LABEL_22;
    default:
LABEL_13:
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.quicklook.QLThumbnailServiceContextGenerator" code:0 userInfo:0];
      [(QLServiceThumbnailRenderer *)self _finishWithSuccess:0 error:?];
      v8 = *MEMORY[0x1E69E9840];

      return;
  }
}

void __74__QLServiceThumbnailRenderer_generateThumbnailAndPerformCompletionHandler__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) contextSize];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 40) colorSpace];
  v8 = [*(a1 + 40) drawingBlock];
  [v2 _drawInCurrentContextOfSize:v7 colorSpace:v8 drawingBlock:{v4, v6}];
}

- (id)_drawInContextOfSize:(CGSize)size colorSpace:(CGColorSpace *)space error:(id *)error drawingBlock:(id)block
{
  height = size.height;
  width = size.width;
  v59 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    if (![(QLServiceThumbnailRenderer *)self _canCreateContextOfSize:self->_request forRequest:width, height])
    {
      v20 = _log_2();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(QLFileThumbnailRequest *)self->_request maximumSize];
        v42 = v41;
        [(QLFileThumbnailRequest *)self->_request maximumSize];
        v44 = v43;
        [(QLFileThumbnailRequest *)self->_request minimumSize];
        v46 = v45;
        [(QLFileThumbnailRequest *)self->_request minimumSize];
        *v48 = 134219264;
        *&v48[4] = width;
        v49 = 2048;
        v50 = height;
        v51 = 2048;
        v52 = v42;
        v53 = 2048;
        v54 = v44;
        v55 = 2048;
        v56 = v46;
        v57 = 2048;
        v58 = v47;
        _os_log_error_impl(&dword_1CA1E7000, v20, OS_LOG_TYPE_ERROR, "Could not draw thumbnail from QLThumbnailReply because the requested context size is invalid (received: (%f, %f), maximum size is: (%f, %f), minimum size is: (%f, %f)). The maximum supported thumbnail size is 1284 * 2778", v48, 0x3Eu);
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = 2;
      goto LABEL_21;
    }

    *v48 = 0;
    if (space && CGColorSpaceSupportsOutput(space))
    {
      CFRetain(space);
    }

    else
    {
      space = QLCreateColorSpaceForThumbnailExtension();
    }

    [(QLFileThumbnailRequest *)self->_request scale];
    v24 = QLTCreateCGContextWithSize(space, 1, v48, width, height, v23);
    CFRelease(space);
    if (!v24)
    {
      v31 = _log_2();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(QLServiceThumbnailRenderer *)v31 _drawInContextOfSize:v32 colorSpace:v33 error:v34 drawingBlock:v35, v36, v37, v38];
      }

      v21 = MEMORY[0x1E696ABC0];
      v22 = 1;
      goto LABEL_21;
    }

    if (blockCopy[2](blockCopy, v24))
    {
      v25 = objc_alloc(MEMORY[0x1E695DEF0]);
      Data = CGBitmapContextGetData(v24);
      BytesPerRow = CGBitmapContextGetBytesPerRow(v24);
      v28 = [v25 initWithBytesNoCopy:Data length:CGBitmapContextGetHeight(v24) * BytesPerRow deallocator:*MEMORY[0x1E696A268]];
      v29 = [[QLTBitmapFormat alloc] initWithBitmapContext:v24];
      CGContextRelease(v24);
      v30 = objc_opt_new();
      [v30 setFormat:v29];
      [v30 setData:v28];

      goto LABEL_22;
    }

    CGContextRelease(v24);
  }

  else
  {
    v12 = _log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(QLServiceThumbnailRenderer *)v12 _drawInContextOfSize:v13 colorSpace:v14 error:v15 drawingBlock:v16, v17, v18, v19];
    }
  }

  v21 = MEMORY[0x1E696ABC0];
  v22 = 0;
LABEL_21:
  [v21 errorWithDomain:@"com.apple.quicklook.QLThumbnailServiceContextGenerator" code:v22 userInfo:0];
  *error = v30 = 0;
LABEL_22:

  v39 = *MEMORY[0x1E69E9840];

  return v30;
}

- (void)_drawInCurrentContextOfSize:(CGSize)size colorSpace:(CGColorSpace *)space drawingBlock:(id)block
{
  height = size.height;
  width = size.width;
  v29[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = blockCopy;
  if (blockCopy)
  {
    v28 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __82__QLServiceThumbnailRenderer__drawInCurrentContextOfSize_colorSpace_drawingBlock___block_invoke;
    v26[3] = &unk_1E836A688;
    v26[4] = self;
    v27 = blockCopy;
    height = [(QLServiceThumbnailRenderer *)self _drawInContextOfSize:space colorSpace:&v28 error:v26 drawingBlock:width, height];
    v12 = v28;
    if (height)
    {
      v29[0] = height;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [(QLThumbnailReply *)self->_reply setBitmapImages:v13];

      selfCopy2 = self;
      v15 = 1;
      v16 = 0;
    }

    else
    {
      selfCopy2 = self;
      v15 = 0;
      v16 = v12;
    }

    [(QLServiceThumbnailRenderer *)selfCopy2 _finishWithSuccess:v15 error:v16];
  }

  else
  {
    v17 = _log_2();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(QLServiceThumbnailRenderer *)v17 _drawInContextOfSize:v18 colorSpace:v19 error:v20 drawingBlock:v21, v22, v23, v24];
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.quicklook.QLThumbnailServiceContextGenerator" code:0 userInfo:0];
    [(QLServiceThumbnailRenderer *)self _finishWithSuccess:0 error:v12];
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __82__QLServiceThumbnailRenderer__drawInCurrentContextOfSize_colorSpace_drawingBlock___block_invoke(uint64_t a1, CGContextRef context)
{
  Height = CGBitmapContextGetHeight(context);
  CGContextTranslateCTM(context, 0.0, Height);
  v5 = [*(a1 + 32) request];
  [v5 scale];
  v7 = v6;
  v8 = [*(a1 + 32) request];
  [v8 scale];
  CGContextScaleCTM(context, v7, -v9);

  CGContextGetCTM(&v12, context);
  CGContextSetBaseCTM();
  _UIGraphicsPushContext(context);
  v10 = (*(*(a1 + 40) + 16))();
  _UIGraphicsPopContext();
  return v10;
}

- (id)protocolHostWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(QLServiceThumbnailRenderer *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__QLServiceThumbnailRenderer_protocolHostWithErrorHandler___block_invoke;
  v9[3] = &unk_1E836A2D8;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

void __59__QLServiceThumbnailRenderer_protocolHostWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__QLServiceThumbnailRenderer_protocolHostWithErrorHandler___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)_drawInIOSurface
{
  [(QLServiceThumbnailRenderer *)self _IOSurfaceSizeFromThumbnailReply:self->_reply];
  v4 = v3;
  v6 = v5;
  connection = self->_connection;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke;
  v10[3] = &unk_1E836A050;
  v10[4] = self;
  v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke_8;
  v9[3] = &unk_1E836A6D8;
  v9[4] = self;
  [v8 ioSurfaceWithSize:v9 completionHandler:{v4, v6}];
}

void __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _log_2();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke_cold_1(v3, v4);
  }

  [*(a1 + 32) _finishWithSuccess:0 error:v3];
}

void __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) reply];
    v8 = [v7 ioSurfaceAsyncBlock];

    v9 = [*(a1 + 32) reply];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 ioSurfaceAsyncBlock];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke_9;
      v15[3] = &unk_1E836A6B0;
      v15[4] = *(a1 + 32);
      v16 = v5;
      (v11)[2](v11, v16, v15);
    }

    else
    {
      v13 = [v9 ioSurfaceBlock];
      v14 = (v13)[2](v13, v5);

      [*(a1 + 32) _afterGeneratingIOSurfaceThumbnail:v14 surface:v5];
    }
  }

  else
  {
    v12 = _log_2();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke_8_cold_1(a1, v6, v12);
    }

    [*(a1 + 32) _finishWithSuccess:0 error:v6];
  }
}

- (CGSize)_IOSurfaceSizeFromThumbnailReply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  request = self->_request;
  replyCopy = reply;
  [(QLFileThumbnailRequest *)request scale];
  v6 = v5;
  [replyCopy contextSize];
  v8 = v7;
  v10 = v9;

  v11 = v6 * v8;
  v12 = round(v6 * v8 * 1000.0) / 1000.0;
  v13 = v6 * v10;
  v14 = round(v6 * v10 * 1000.0) / 1000.0;
  v15 = ceil(v14);
  if (ceil(v12) != v12 || v15 != v14)
  {
    v17 = _log_2();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v19 = 134218752;
      v20 = v12;
      v21 = 2048;
      v22 = v14;
      v23 = 2048;
      v24 = v8;
      v25 = 2048;
      v26 = v10;
      _os_log_fault_impl(&dword_1CA1E7000, v17, OS_LOG_TYPE_FAULT, "Requested scaled IOSurface context size of non-integer pixel width or height (%f, %f). Will ceil requested size values (%f, %f)", &v19, 0x2Au);
    }

    v11 = v6 * round(v8);
    v13 = v6 * round(v10);
  }

  v18 = *MEMORY[0x1E69E9840];
  result.height = v13;
  result.width = v11;
  return result;
}

- (void)_drawMultipleImages
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  reply = [(QLServiceThumbnailRenderer *)self reply];
  images = [reply images];
  v6 = [v3 arrayWithCapacity:{objc_msgSend(images, "count")}];

  [(QLFileThumbnailRequest *)self->_request scale];
  v8 = v7;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  reply2 = [(QLServiceThumbnailRenderer *)self reply];
  images2 = [reply2 images];

  obj = images2;
  v11 = [images2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v28;
    while (2)
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * v15);
        Width = CGImageGetWidth(v17);
        Height = CGImageGetHeight(v17);
        ColorSpace = CGImageGetColorSpace(v17);
        v25[7] = v17;
        v26 = v16;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __49__QLServiceThumbnailRenderer__drawMultipleImages__block_invoke;
        v25[3] = &__block_descriptor_64_e20_B16__0__CGContext__8l;
        v25[4] = v8;
        *&v25[5] = Width;
        *&v25[6] = Height;
        height = [(QLServiceThumbnailRenderer *)self _drawInContextOfSize:ColorSpace colorSpace:&v26 error:v25 drawingBlock:Width, Height];
        v13 = v26;

        if (!height)
        {
          [(QLServiceThumbnailRenderer *)self _finishWithSuccess:0 error:v13];
          goto LABEL_11;
        }

        [v6 addObject:height];

        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_11:
  }

  reply3 = [(QLServiceThumbnailRenderer *)self reply];
  [reply3 setBitmapImages:v6];

  [(QLServiceThumbnailRenderer *)self _finishWithSuccess:1 error:0];
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __49__QLServiceThumbnailRenderer__drawMultipleImages__block_invoke(uint64_t a1, CGContextRef c)
{
  CGContextScaleCTM(c, *(a1 + 32), *(a1 + 32));
  v5.origin.x = *MEMORY[0x1E695EFF8];
  v5.origin.y = *(MEMORY[0x1E695EFF8] + 8);
  v5.size.width = *(a1 + 40);
  v5.size.height = *(a1 + 48);
  CGContextDrawImage(c, v5, *(a1 + 56));
  return 1;
}

- (void)_drawWithRendererBlock
{
  v21[1] = *MEMORY[0x1E69E9840];
  [(QLFileThumbnailRequest *)self->_request scale];
  v4 = v3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  rendererBlock = [(QLThumbnailReply *)self->_reply rendererBlock];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __52__QLServiceThumbnailRenderer__drawWithRendererBlock__block_invoke;
  v16[3] = &unk_1E836A720;
  v16[4] = &v17;
  v16[5] = v4;
  (rendererBlock)[2](rendererBlock, v16);

  v6 = objc_alloc(MEMORY[0x1E695DEF0]);
  Data = CGBitmapContextGetData(v18[3]);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v18[3]);
  v9 = [v6 initWithBytesNoCopy:Data length:CGBitmapContextGetHeight(v18[3]) * BytesPerRow deallocator:*MEMORY[0x1E696A268]];
  v10 = [QLTBitmapFormat alloc];
  v11 = [(QLTBitmapFormat *)v10 initWithBitmapContext:v18[3]];
  CGContextRelease(v18[3]);
  v12 = objc_opt_new();
  [v12 setFormat:v11];
  [v12 setData:v9];
  v21[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  reply = [(QLServiceThumbnailRenderer *)self reply];
  [reply setBitmapImages:v13];

  [(QLServiceThumbnailRenderer *)self _finishWithSuccess:1 error:0];
  _Block_object_dispose(&v17, 8);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __52__QLServiceThumbnailRenderer__drawWithRendererBlock__block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = QLCreateColorSpaceForThumbnailExtension();
  v8 = 0;
  *(*(*(a1 + 32) + 8) + 24) = QLTCreateCGContextWithSize(v6, 1, &v8, a2, a3, *(a1 + 40));
  CFRelease(v6);
  CGContextScaleCTM(*(*(*(a1 + 32) + 8) + 24), *(a1 + 40), *(a1 + 40));
  return *(*(*(a1 + 32) + 8) + 24);
}

- (void)_finishWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  item = [(QLFileThumbnailRequest *)selfCopy->_request item];
  [item cleanup];

  completionHandler = selfCopy->_completionHandler;
  if (completionHandler)
  {
    if (successCopy)
    {
      completionHandler[2](selfCopy->_completionHandler, selfCopy->_reply, 0);
    }

    else
    {
      v9 = errorCopy;
      if (!errorCopy)
      {
        v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"QLThumbnailErrorDomain" code:0 userInfo:0];
      }

      (completionHandler)[2](completionHandler, 0, v9);
      if (!errorCopy)
      {
      }
    }

    v10 = selfCopy->_completionHandler;
    selfCopy->_completionHandler = 0;
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_canCreateContextOfSize:(CGSize)size forRequest:(id)request
{
  height = size.height;
  width = size.width;
  requestCopy = request;
  v7 = requestCopy;
  v8 = 0;
  if (width > 0.0 && height > 0.0)
  {
    [requestCopy maximumSize];
    if (width <= v9 + 1.0 && ([v7 maximumSize], height <= v10 + 1.0) && (objc_msgSend(v7, "minimumSize"), width >= v11 + -1.0) && (objc_msgSend(v7, "minimumSize"), height >= v12 + -1.0))
    {
      [v7 scale];
      v15 = width * height * v14;
      [v7 scale];
      v8 = v15 * v16 < 3566952.0;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_thumbnailDataDestructionConcurrenQueue
{
  if (_thumbnailDataDestructionConcurrenQueue_onceToken != -1)
  {
    [QLServiceThumbnailRenderer _thumbnailDataDestructionConcurrenQueue];
  }

  v3 = _thumbnailDataDestructionConcurrenQueue__thumbnailDataDestructionConcurrenQueue;

  return v3;
}

uint64_t __69__QLServiceThumbnailRenderer__thumbnailDataDestructionConcurrenQueue__block_invoke()
{
  _thumbnailDataDestructionConcurrenQueue__thumbnailDataDestructionConcurrenQueue = dispatch_queue_create("com.apple.quicklook.thumbnailrenderer.datadestruction", MEMORY[0x1E69E96A8]);

  return MEMORY[0x1EEE66BB8]();
}

void __59__QLServiceThumbnailRenderer_protocolHostWithErrorHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Error while calling host: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1CA1E7000, a2, OS_LOG_TYPE_ERROR, "Host connection error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __46__QLServiceThumbnailRenderer__drawInIOSurface__block_invoke_8_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) request];
  v6 = [v5 fileURL];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_1CA1E7000, a3, OS_LOG_TYPE_ERROR, "Could not draw thumbnail because received nil IOSurface for request %@. Error: %@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end