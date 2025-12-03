@interface SCNMovieExportOperation
- (CGImage)_copySnapshot:(CGSize)snapshot;
- (SCNMovieExportOperation)initWithRenderer:(id)renderer size:(CGSize)size attributes:(id)attributes outputURL:(id)l;
- (void)_finishedExport;
- (void)appendImage:(CGImage *)image withPresentationTime:(id *)time usingAdaptor:(id)adaptor;
- (void)dealloc;
- (void)main;
- (void)renderAndAppendWithPresentationTime:(id *)time usingAdaptor:(id)adaptor metalTextureCache:(__CVMetalTextureCache *)cache cvQueue:(id)queue completionBlock:(id)block;
@end

@implementation SCNMovieExportOperation

- (SCNMovieExportOperation)initWithRenderer:(id)renderer size:(CGSize)size attributes:(id)attributes outputURL:(id)l
{
  height = size.height;
  width = size.width;
  v33.receiver = self;
  v33.super_class = SCNMovieExportOperation;
  v11 = [(SCNMovieExportOperation *)&v33 init];
  if (v11)
  {
    v12 = [attributes mutableCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    [v12 removeObjectForKey:@"kExportPointOfViewAttribute"];
    [objc_msgSend(v12 valueForKey:{@"rate", "floatValue"}];
    v11->_rate = v13;
    [v12 removeObjectForKey:@"rate"];
    if (v11->_rate == 0.0)
    {
      v11->_rate = 0.033333;
    }

    v14 = [objc_msgSend(v12 valueForKey:{@"SCNExportMovieFrameRate", "intValue"}];
    [v12 removeObjectForKey:@"SCNExportMovieFrameRate"];
    if (v14)
    {
      v11->_rate = 1.0 / v14;
    }

    v11->_mirrored = [objc_msgSend(v12 valueForKey:{@"SCNExportMovieMirrored", "BOOLValue"}];
    [v12 removeObjectForKey:@"SCNExportMovieMirrored"];
    [objc_msgSend(v12 valueForKey:{@"SCNExportMovieSupersamplingFactor", "floatValue"}];
    v11->_supersampling = v15;
    [v12 removeObjectForKey:@"SCNExportMovieSupersamplingFactor"];
    if (v11->_supersampling == 0.0)
    {
      v11->_supersampling = 1.0;
    }

    [v12 removeObjectForKey:@"QTAddImageCodecType"];
    [v12 removeObjectForKey:@"QTMovieRateAttribute"];
    v16 = *MEMORY[0x277CE62C8];
    if (![v12 objectForKey:*MEMORY[0x277CE62C8]])
    {
      [v12 setValue:*MEMORY[0x277CE62C0] forKey:v16];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithInt:width];
    [v12 setValue:v17 forKey:*MEMORY[0x277CE63C0]];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:height];
    [v12 setValue:v18 forKey:*MEMORY[0x277CE6360]];
    v19 = objc_alloc(MEMORY[0x277CE6468]);
    v11->_assetWriterInput = [v19 initWithMediaType:*MEMORY[0x277CE5EA8] outputSettings:v12];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(AVAssetWriterInput *)v11->_assetWriterInput setExpectsMediaDataInRealTime:0];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:1111970369];
    [dictionary setObject:v21 forKey:*MEMORY[0x277CC4E30]];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:width];
    [dictionary setObject:v22 forKey:*MEMORY[0x277CC4EC8]];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:height];
    [dictionary setObject:v23 forKey:*MEMORY[0x277CC4DD8]];
    device = [renderer device];
    v25 = MEMORY[0x277CC4D70];
    if (device)
    {
      v25 = MEMORY[0x277CC4E08];
    }

    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*v25];
    v11->_avAdaptor = [objc_alloc(MEMORY[0x277CE6478]) initWithAssetWriterInput:v11->_assetWriterInput sourcePixelBufferAttributes:dictionary];
    v32 = 0;
    [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v26 = objc_alloc(MEMORY[0x277CE6460]);
    v27 = [v26 initWithURL:l fileType:*MEMORY[0x277CE5DA8] error:&v32];
    v11->_assetWriter = v27;
    if ([(AVAssetWriter *)v27 status]== AVAssetWriterStatusFailed)
    {
      v28 = scn_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [SCNMovieExportOperation initWithRenderer:l size:&v32 attributes:v28 outputURL:?];
      }

      return 0;
    }

    else
    {
      [(AVAssetWriter *)v11->_assetWriter addInput:v11->_assetWriterInput];
      [(AVAssetWriter *)v11->_assetWriter startWriting];
      assetWriter = v11->_assetWriter;
      v31[0] = 0;
      v31[1] = 0x100000001;
      v31[2] = 0;
      [(AVAssetWriter *)assetWriter startSessionAtSourceTime:v31];
      [(_SCNExportOperation *)v11 setRenderer:renderer];
      [(_SCNExportOperation *)v11 setSize:width, height];
      [(_SCNExportOperation *)v11 setAttributes:v12];
      [objc_msgSend(renderer "scene")];
      [(_SCNExportOperation *)v11 setStartTime:?];
      [objc_msgSend(renderer "scene")];
      [(_SCNExportOperation *)v11 setEndTime:?];
      [(_SCNExportOperation *)v11 setOutputURL:l];
      -[_SCNExportOperation setPointOfView:](v11, "setPointOfView:", [attributes objectForKey:@"kExportPointOfViewAttribute"]);
    }
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMovieExportOperation;
  [(_SCNExportOperation *)&v3 dealloc];
}

- (CGImage)_copySnapshot:(CGSize)snapshot
{
  height = snapshot.height;
  width = snapshot.width;
  renderer = [(_SCNExportOperation *)self renderer];
  systemTime = self->super._systemTime;
  if (systemTime == 0.0)
  {
    v8 = CACurrentMediaTime();
  }

  else
  {
    v8 = systemTime + self->_rate;
  }

  self->super._systemTime = v8;
  cGImage = [(UIImage *)[(SCNRenderer *)renderer snapshotAtTime:[(_SCNExportOperation *)self antialiasingMode] withSize:v8 antialiasingMode:width CGImage];

  return CGImageRetain(cGImage);
}

- (void)_finishedExport
{
  if (![(_SCNExportOperation *)self error])
  {
    [(_SCNExportOperation *)self setSucceded:1];
  }

  delegate = [(_SCNExportOperation *)self delegate];
  [(_SCNExportOperation *)self didEndSelector];
  if (objc_opt_respondsToSelector())
  {
    didEndSelector = [(_SCNExportOperation *)self didEndSelector];
    userInfo = [(_SCNExportOperation *)self userInfo];

    [delegate didEndSelector];
  }
}

- (void)appendImage:(CGImage *)image withPresentationTime:(id *)time usingAdaptor:(id)adaptor
{
  pixelBufferOut = 0;
  pixelBufferPool = [adaptor pixelBufferPool];
  if (pixelBufferPool)
  {
    v11 = pixelBufferPool;
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], v11, &pixelBufferOut))
    {
      [SCNMovieExportOperation appendImage:a2 withPresentationTime:self usingAdaptor:?];
    }

    ColorSpace = CGImageGetColorSpace(image);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v17 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, ColorSpace, 0x2006u);
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = Width;
    v23.size.height = Height;
    CGContextClearRect(v17, v23);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = Width;
    v24.size.height = Height;
    CGContextDrawImage(v17, v24, image);
    CGContextFlush(v17);
    CFRelease(v17);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v20 = *&time->var0;
    var3 = time->var3;
    if (([adaptor appendPixelBuffer:pixelBufferOut withPresentationTime:&v20] & 1) == 0)
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [SCNMovieExportOperation appendImage:withPresentationTime:usingAdaptor:];
      }
    }

    CFRelease(pixelBufferOut);
  }

  else
  {
    v19 = scn_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SCNMovieExportOperation appendImage:withPresentationTime:usingAdaptor:];
    }
  }
}

- (void)renderAndAppendWithPresentationTime:(id *)time usingAdaptor:(id)adaptor metalTextureCache:(__CVMetalTextureCache *)cache cvQueue:(id)queue completionBlock:(id)block
{
  pixelBufferOut = 0;
  pixelBufferPool = [adaptor pixelBufferPool];
  if (pixelBufferPool)
  {
    queueCopy = queue;
    v15 = *MEMORY[0x277CBECE8];
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], pixelBufferPool, &pixelBufferOut))
    {
      [SCNMovieExportOperation renderAndAppendWithPresentationTime:a2 usingAdaptor:self metalTextureCache:? cvQueue:? completionBlock:?];
    }

    textureOut = 0;
    if (C3DLinearRenderingIsEnabled())
    {
      v16 = MTLPixelFormatBGRA8Unorm_sRGB;
    }

    else
    {
      v16 = MTLPixelFormatBGRA8Unorm;
    }

    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 0);
    CVMetalTextureCacheCreateTextureFromImage(v15, cache, pixelBufferOut, 0, v16, WidthOfPlane, HeightOfPlane, 0, &textureOut);
    systemTime = self->super._systemTime;
    if (systemTime == 0.0)
    {
      v20 = CACurrentMediaTime();
    }

    else
    {
      v20 = systemTime + self->_rate;
    }

    self->super._systemTime = v20;
    renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
    [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
    contents = [(SCNMaterialProperty *)[(SCNScene *)[(SCNRenderer *)[(_SCNExportOperation *)self renderer] scene] background] contents];
    objc_opt_class();
    v24 = 1.0;
    v25 = 1.0;
    v26 = 1.0;
    v27 = 1.0;
    if (objc_opt_isKindOfClass())
    {
      v39 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
      v36 = 0.0;
      [contents getRed:&v39 green:&v38 blue:&v37 alpha:&v36];
      v24 = v39;
      v26 = v37;
      v25 = v38;
      v27 = v36;
    }

    [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
    v28 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v16 width:WidthOfPlane height:HeightOfPlane mipmapped:0];
    if (SCNMTLDeviceSupportsMemorylessStorage([(SCNRenderer *)[(_SCNExportOperation *)self renderer] device]))
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    [v28 setStorageMode:v29];
    [v28 setUsage:5];
    if ([(_SCNExportOperation *)self antialiasingMode])
    {
      [v28 setSampleCount:{1 << -[_SCNExportOperation antialiasingMode](self, "antialiasingMode")}];
      [v28 setTextureType:4];
      v30 = [(MTLDevice *)[(SCNRenderer *)[(_SCNExportOperation *)self renderer] device] newTextureWithDescriptor:v28];
      [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
      [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
      [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
    }

    else
    {
      [objc_msgSend(objc_msgSend(renderPassDescriptor "colorAttachments")];
    }

    commandBuffer = [(MTLCommandQueue *)[(SCNRenderer *)[(_SCNExportOperation *)self renderer] commandQueue] commandBuffer];
    [(SCNRenderer *)[(_SCNExportOperation *)self renderer] renderAtTime:commandBuffer viewport:renderPassDescriptor commandBuffer:self->super._systemTime passDescriptor:0.0, 0.0, WidthOfPlane, HeightOfPlane];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __118__SCNMovieExportOperation_renderAndAppendWithPresentationTime_usingAdaptor_metalTextureCache_cvQueue_completionBlock___block_invoke;
    v33[3] = &unk_2783009E8;
    v33[4] = queueCopy;
    v33[5] = self;
    v34 = *&time->var0;
    var3 = time->var3;
    v33[8] = pixelBufferOut;
    v33[9] = textureOut;
    v33[10] = cache;
    v33[6] = adaptor;
    v33[7] = block;
    [commandBuffer addCompletedHandler:v33];
    [commandBuffer commit];
  }

  else
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SCNMovieExportOperation appendImage:withPresentationTime:usingAdaptor:];
    }
  }
}

__n128 __118__SCNMovieExportOperation_renderAndAppendWithPresentationTime_usingAdaptor_metalTextureCache_cvQueue_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __118__SCNMovieExportOperation_renderAndAppendWithPresentationTime_usingAdaptor_metalTextureCache_cvQueue_completionBlock___block_invoke_2;
  block[3] = &unk_2783009C0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 88);
  v12 = *(a1 + 104);
  v4 = *(a1 + 72);
  v11 = v3;
  v10 = v4;
  v5 = *(a1 + 56);
  v8 = v2;
  v9 = v5;
  dispatch_async(v1, block);
  return result;
}

uint64_t __118__SCNMovieExportOperation_renderAndAppendWithPresentationTime_usingAdaptor_metalTextureCache_cvQueue_completionBlock___block_invoke_2(uint64_t a1)
{
  if (([*(*(a1 + 32) + 384) isReadyForMoreMediaData] & 1) == 0)
  {
    do
    {
      usleep(0x3E8u);
    }

    while (![*(*(a1 + 32) + 384) isReadyForMoreMediaData]);
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v6 = *(a1 + 80);
  v7 = *(a1 + 96);
  if (([v2 appendPixelBuffer:v3 withPresentationTime:&v6] & 1) == 0)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SCNMovieExportOperation appendImage:withPresentationTime:usingAdaptor:];
    }
  }

  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 64));
  CVMetalTextureCacheFlush(*(a1 + 72), 0);
  return (*(*(a1 + 48) + 16))();
}

- (void)main
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: error while exporting movie: %@", buf, 0xCu);
}

void __31__SCNMovieExportOperation_main__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    [*(a1 + 40) setCanceled:1];
  }

  if (([*(a1 + 40) canceled] & 1) != 0 || *(*(*(a1 + 64) + 8) + 24) + *(a1 + 88) * -0.5 > *(a1 + 96))
  {
    if (!*(*(*(a1 + 72) + 8) + 24))
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __31__SCNMovieExportOperation_main__block_invoke_3;
      v17[3] = &unk_2782FC790;
      v2 = *(a1 + 48);
      v3 = *(a1 + 56);
      v17[4] = *(a1 + 40);
      v17[5] = v3;
      dispatch_async(v2, v17);
    }
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    [objc_msgSend(*(a1 + 40) "renderer")];
    if (*(a1 + 120) == 1)
    {
      ++*(*(*(a1 + 72) + 8) + 24);
      v5 = 1000 * *(*(*(a1 + 80) + 8) + 24);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = (1000.0 / *(v6 + 408));
      v9 = *(v6 + 392);
      v10 = *(a1 + 104);
      v21 = 0;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __31__SCNMovieExportOperation_main__block_invoke_2;
      v22[3] = &unk_2782FB300;
      v22[4] = *(a1 + 72);
      v18 = v5;
      v19 = v8;
      v20 = 1;
      [v6 renderAndAppendWithPresentationTime:&v18 usingAdaptor:v9 metalTextureCache:v10 cvQueue:v7 completionBlock:v22];
    }

    else
    {
      v11 = *(a1 + 40);
      [v11 size];
      v12 = [v11 _copySnapshot:?];
      if (v12)
      {
        v13 = v12;
        if (([*(*(a1 + 40) + 384) isReadyForMoreMediaData] & 1) == 0)
        {
          do
          {
            usleep(0x3E8u);
          }

          while (![*(*(a1 + 40) + 384) isReadyForMoreMediaData]);
        }

        v14 = *(a1 + 40);
        v15 = 1000.0 / *(v14 + 408);
        v16 = *(v14 + 392);
        v18 = 1000 * *(*(*(a1 + 80) + 8) + 24);
        v19 = v15;
        v20 = 1;
        v21 = 0;
        [v14 appendImage:v13 withPresentationTime:&v18 usingAdaptor:v16];
        CGImageRelease(v13);
      }
    }

    *(*(*(a1 + 64) + 8) + 24) = *(a1 + 88) + *(*(*(a1 + 64) + 8) + 24);
    ++*(*(*(a1 + 80) + 8) + 24);
    [*(a1 + 40) setProgress:(*(*(*(a1 + 64) + 8) + 24) - *(a1 + 112)) / (*(a1 + 96) - *(a1 + 112))];
    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    objc_autoreleasePoolPop(v4);
  }
}

intptr_t __31__SCNMovieExportOperation_main__block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 384) markAsFinished];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

- (void)initWithRenderer:(os_log_t)log size:attributes:outputURL:.cold.1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: AVAssetWriter can't create a movie at %@ (error:%@)", &v4, 0x16u);
}

@end