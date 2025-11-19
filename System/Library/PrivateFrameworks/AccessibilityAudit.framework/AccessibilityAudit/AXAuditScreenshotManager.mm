@interface AXAuditScreenshotManager
+ (id)imageFromRemoteImageData:(id)a3 rotation:(double)a4;
+ (id)imageProcessingQueue;
+ (id)sharedManager;
- (AXAuditScreenshotManager)init;
- (BOOL)screenshotShouldFlipOutlineForTimestamp:(id)a3;
- (CGRect)_boundsForRect:(CGRect)a3 containerImageSize:(CGSize)a4 timestamp:(id)a5;
- (CGRect)_elementBoundsForIssue:(id)a3 containerImageSize:(CGSize)a4;
- (CGRect)elementBoundsInScreenShotForIssue:(id)a3;
- (CGRect)screenshotBorderFrameForTimestamp:(id)a3;
- (CGRect)screenshotDisplayBoundsForTimestamp:(id)a3;
- (double)screenshotRotationForTimestamp:(id)a3;
- (double)screenshotScaleFactorForTimestamp:(id)a3;
- (id)screenshotForIssue:(id)a3 elementRect:(CGRect *)a4;
- (id)screenshotHighlightingIssue:(id)a3;
- (id)screenshotImageForTimestamp:(id)a3;
- (id)screenshotImageForTimestamp:(id)a3 inRect:(CGRect)a4;
- (id)thumbnailImageOfIssue:(id)a3;
- (void)addScreenshot:(id)a3 forTimestamp:(id)a4;
- (void)addScreenshotWithInfo:(id)a3 timestamp:(id)a4 completion:(id)a5;
- (void)clear;
- (void)setScreenshotBorderFrame:(CGRect)a3 forTimestamp:(id)a4;
- (void)setScreenshotDisplayBounds:(CGRect)a3 forTimestamp:(id)a4;
- (void)setScreenshotRotation:(double)a3 forTimestamp:(id)a4;
- (void)setScreenshotScaleFactor:(double)a3 forTimestamp:(id)a4;
@end

@implementation AXAuditScreenshotManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AXAuditScreenshotManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken_1 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1, block);
  }

  v2 = sharedManager_instance_1;

  return v2;
}

uint64_t __41__AXAuditScreenshotManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedManager_instance_1 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXAuditScreenshotManager)init
{
  v10.receiver = self;
  v10.super_class = AXAuditScreenshotManager;
  v2 = [(AXAuditScreenshotManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(AXAuditScreenshotManager *)v2 set_image:v3];

    v4 = objc_opt_new();
    [(AXAuditScreenshotManager *)v2 set_rotation:v4];

    v5 = objc_opt_new();
    [(AXAuditScreenshotManager *)v2 set_displayBounds:v5];

    v6 = objc_opt_new();
    [(AXAuditScreenshotManager *)v2 set_borderFrame:v6];

    v7 = objc_opt_new();
    [(AXAuditScreenshotManager *)v2 set_scaleFactor:v7];

    v8 = objc_opt_new();
    [(AXAuditScreenshotManager *)v2 set_shouldFlipOutline:v8];
  }

  return v2;
}

- (void)clear
{
  v3 = objc_opt_new();
  [(AXAuditScreenshotManager *)self set_image:v3];

  v4 = objc_opt_new();
  [(AXAuditScreenshotManager *)self set_rotation:v4];

  v5 = objc_opt_new();
  [(AXAuditScreenshotManager *)self set_displayBounds:v5];

  v6 = objc_opt_new();
  [(AXAuditScreenshotManager *)self set_borderFrame:v6];

  v7 = objc_opt_new();
  [(AXAuditScreenshotManager *)self set_scaleFactor:v7];

  v8 = objc_opt_new();
  [(AXAuditScreenshotManager *)self set_shouldFlipOutline:v8];
}

- (void)addScreenshot:(id)a3 forTimestamp:(id)a4
{
  if (a3 && a4)
  {
    v8 = a4;
    v6 = a3;
    v7 = [(AXAuditScreenshotManager *)self _image];
    [v7 setObject:v6 forKeyedSubscript:v8];

    [(AXAuditScreenshotManager *)self setLastTimestamp:v8];
  }
}

- (void)setScreenshotRotation:(double)a3 forTimestamp:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = a3;
    v7 = a4;
    *&v8 = v6;
    v10 = [v5 numberWithFloat:v8];
    v9 = [(AXAuditScreenshotManager *)self _rotation];
    [v9 setObject:v10 forKeyedSubscript:v7];
  }
}

- (void)setScreenshotDisplayBounds:(CGRect)a3 forTimestamp:(id)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = MEMORY[0x277CCAE60];
    v10 = a4;
    v12 = [v9 valueWithRect:{x, y, width, height}];
    v11 = [(AXAuditScreenshotManager *)self _displayBounds];
    [v11 setObject:v12 forKeyedSubscript:v10];
  }
}

- (void)setScreenshotBorderFrame:(CGRect)a3 forTimestamp:(id)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v9 = MEMORY[0x277CCAE60];
    v10 = a4;
    v12 = [v9 valueWithRect:{x, y, width, height}];
    v11 = [(AXAuditScreenshotManager *)self _borderFrame];
    [v11 setObject:v12 forKeyedSubscript:v10];
  }
}

- (void)setScreenshotScaleFactor:(double)a3 forTimestamp:(id)a4
{
  if (a4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = a3;
    v7 = a4;
    *&v8 = v6;
    v10 = [v5 numberWithFloat:v8];
    v9 = [(AXAuditScreenshotManager *)self _scaleFactor];
    [v9 setObject:v10 forKeyedSubscript:v7];
  }
}

- (id)screenshotImageForTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditScreenshotManager *)self _image];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (double)screenshotRotationForTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditScreenshotManager *)self _rotation];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (CGRect)screenshotDisplayBoundsForTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditScreenshotManager *)self _displayBounds];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [v6 rectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x277CCA868];
    v10 = *(MEMORY[0x277CCA868] + 8);
    v12 = *(MEMORY[0x277CCA868] + 16);
    v14 = *(MEMORY[0x277CCA868] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)screenshotBorderFrameForTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditScreenshotManager *)self _borderFrame];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [v6 rectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x277CCA868];
    v10 = *(MEMORY[0x277CCA868] + 8);
    v12 = *(MEMORY[0x277CCA868] + 16);
    v14 = *(MEMORY[0x277CCA868] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (double)screenshotScaleFactorForTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditScreenshotManager *)self _scaleFactor];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    [v6 floatValue];
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (BOOL)screenshotShouldFlipOutlineForTimestamp:(id)a3
{
  v4 = a3;
  v5 = [(AXAuditScreenshotManager *)self _shouldFlipOutline];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)_elementBoundsForIssue:(id)a3 containerImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [v7 elementRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 timeStamp];

  [(AXAuditScreenshotManager *)self _boundsForRect:v16 containerImageSize:v9 timestamp:v11, v13, v15, width, height];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_boundsForRect:(CGRect)a3 containerImageSize:(CGSize)a4 timestamp:(id)a5
{
  height = a4.height;
  width = a4.width;
  v40 = a3.size.height;
  v41 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a5;
  [(AXAuditScreenshotManager *)self screenshotBorderFrameForTimestamp:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(AXAuditScreenshotManager *)self screenshotRotationForTimestamp:v9];
  v19 = v18 * 57.2957795;
  if (fabs(v19) > 360.0)
  {
    v19 = v19 - (360 * (v19 / 360));
  }

  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 + 360.0;
  }

  v42.origin.x = v11;
  v42.origin.y = v13;
  v42.size.width = v15;
  v42.size.height = v17;
  v21 = NSIsEmptyRect(v42);
  [(AXAuditScreenshotManager *)self screenshotDisplayBoundsForTimestamp:v9];
  v22 = v43.size.width;
  v23 = v43.size.height;
  if (NSIsEmptyRect(v43))
  {
    [(AXAuditScreenshotManager *)self screenshotScaleFactorForTimestamp:v9];
    v25 = v24;
  }

  else
  {
    if ((v20 < 45.0 || v20 >= 135.0) && (v20 < 225.0 || v20 >= 315.0))
    {
      v26 = v22;
      v22 = v23;
    }

    else
    {
      v26 = v23;
    }

    v24 = width / v26;
    v25 = height / v22;
  }

  if (v21)
  {
    v27 = y;
  }

  else
  {
    v27 = y - v13;
  }

  if (v21)
  {
    v28 = x;
  }

  else
  {
    v28 = x - v11;
  }

  if (width <= height)
  {
    v29 = height;
  }

  else
  {
    v29 = width;
  }

  v44.size.height = v40 * v25;
  v44.size.width = v41 * v24;
  v44.origin.y = v27 * v25;
  v44.origin.x = v28 * v24;
  v45 = NSInsetRect(v44, v29 / -330.0, v29 / -330.0);
  v30 = v45.origin.x;
  v31 = v45.origin.y;
  v32 = v45.size.width;
  v33 = v45.size.height;
  if ([(AXAuditScreenshotManager *)self screenshotShouldFlipOutlineForTimestamp:v9])
  {
    v34 = height - v31 - v33;
  }

  else
  {
    v34 = v31;
  }

  v35 = v30;
  v36 = v34;
  v37 = v32;
  v38 = v33;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (void)addScreenshotWithInfo:(id)a3 timestamp:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 && v9)
  {
    v12 = [v8 objectForKeyedSubscript:@"imageData"];
    v13 = [v8 objectForKeyedSubscript:@"rotationRadians"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v14 = 1.0;
      if (objc_opt_isKindOfClass())
      {
        [v13 floatValue];
        v14 = v15;
      }

      v16 = +[AXAuditScreenshotManager imageProcessingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __71__AXAuditScreenshotManager_addScreenshotWithInfo_timestamp_completion___block_invoke;
      block[3] = &unk_278BE2F18;
      v24 = v14;
      v18 = v12;
      v19 = self;
      v20 = v9;
      v21 = v13;
      v22 = v8;
      v23 = v11;
      dispatch_async(v16, block);
    }

    else
    {
      v11[2](v11);
    }
  }

  else
  {
    v10[2](v10);
  }
}

void __71__AXAuditScreenshotManager_addScreenshotWithInfo_timestamp_completion___block_invoke(uint64_t a1)
{
  v2 = [AXAuditScreenshotManager imageFromRemoteImageData:*(a1 + 32) rotation:*(a1 + 80)];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__AXAuditScreenshotManager_addScreenshotWithInfo_timestamp_completion___block_invoke_2;
  block[3] = &unk_278BE2F18;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v12 = v2;
  v4 = v3;
  v5 = *(a1 + 56);
  v15 = *(a1 + 80);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v13 = v9;
  v14 = v8;
  v10 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__AXAuditScreenshotManager_addScreenshotWithInfo_timestamp_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) addScreenshot:*(a1 + 40) forTimestamp:*(a1 + 48)];
  v2 = *(a1 + 56);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setScreenshotRotation:*(a1 + 48) forTimestamp:*(a1 + 80)];
  }

  v10 = [*(a1 + 64) objectForKeyedSubscript:@"shouldFlipOutline"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setScreenshotShouldFlipOutline:objc_msgSend(v10 forTimestamp:{"BOOLValue"), *(a1 + 48)}];
  }

  v3 = [*(a1 + 64) objectForKeyedSubscript:@"displayNativeScale"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    [v3 floatValue];
    [v4 setScreenshotScaleFactor:*(a1 + 48) forTimestamp:v5];
  }

  v6 = [*(a1 + 64) objectForKeyedSubscript:@"borderFrame"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = *(a1 + 32);
    [v6 rectValue];
    [v7 setScreenshotBorderFrame:*(a1 + 48) forTimestamp:?];
  }

  v8 = [*(a1 + 64) objectForKeyedSubscript:@"displayBounds"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    [v8 rectValue];
    [v9 setScreenshotDisplayBounds:*(a1 + 48) forTimestamp:?];
  }

  (*(*(a1 + 72) + 16))();
}

- (CGRect)elementBoundsInScreenShotForIssue:(id)a3
{
  v4 = a3;
  v5 = [v4 timeStamp];
  v6 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:v5];

  if (v6)
  {
    [v6 size];
  }

  else
  {
    v7 = *MEMORY[0x277CCA870];
    v8 = *(MEMORY[0x277CCA870] + 8);
  }

  v9 = *MEMORY[0x277CCA868];
  v10 = *(MEMORY[0x277CCA868] + 8);
  v11 = *(MEMORY[0x277CCA868] + 16);
  v12 = *(MEMORY[0x277CCA868] + 24);
  if (v7 > 0.0 && v8 > 0.0)
  {
    [(AXAuditScreenshotManager *)self _elementBoundsForIssue:v4 containerImageSize:?];
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
  }

  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (id)screenshotForIssue:(id)a3 elementRect:(CGRect *)a4
{
  v6 = a3;
  v7 = [v6 timeStamp];
  v8 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:v7];

  if (v8)
  {
    [v8 size];
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *MEMORY[0x277CCA870];
    v10 = *(MEMORY[0x277CCA870] + 8);
    if (!a4)
    {
      goto LABEL_8;
    }
  }

  if (v9 > 0.0 && v10 > 0.0)
  {
    [(AXAuditScreenshotManager *)self _elementBoundsForIssue:v6 containerImageSize:?];
    a4->origin.x = v11;
    a4->origin.y = v12;
    a4->size.width = v13;
    a4->size.height = v14;
  }

LABEL_8:

  return v8;
}

- (id)screenshotHighlightingIssue:(id)a3
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v13.origin = *MEMORY[0x277CBF3A0];
  v13.size = v3;
  v4 = [(AXAuditScreenshotManager *)self screenshotForIssue:a3 elementRect:&v13];
  v5 = v4;
  if (v4)
  {
    [v4 size];
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v9 = 0;
  if (v6 > 0.0 && v8 > 0.0)
  {
    if (v6 <= v8)
    {
      v6 = v8;
    }

    v10 = v6 / 330.0;
    [v5 size];
    UIGraphicsBeginImageContext(v15);
    [v5 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    CurrentContext = UIGraphicsGetCurrentContext();
    v13.origin.y = v8 - v13.size.height - v13.origin.y;
    CGContextSetRGBStrokeColor(CurrentContext, 0.0, 0.0, 1.0, 1.0);
    CGContextStrokeRectWithWidth(CurrentContext, v13, v10);
    CGContextSaveGState(CurrentContext);
    v9 = UIGraphicsGetImageFromCurrentImageContext();
  }

  return v9;
}

- (id)thumbnailImageOfIssue:(id)a3
{
  v4 = a3;
  v5 = [v4 timeStamp];
  [v4 elementRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:v5 inRect:v7, v9, v11, v13];

  return v14;
}

- (id)screenshotImageForTimestamp:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if (v9)
  {
    v10 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:v9];
    v11 = v10;
    if (v10)
    {
      [v10 size];
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v13 = *MEMORY[0x277CCA870];
      v15 = *(MEMORY[0x277CCA870] + 8);
    }

    v17 = 0;
    if (v13 > 0.0 && v15 > 0.0)
    {
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      if (CGRectIsEmpty(v31))
      {
        goto LABEL_11;
      }

      [(AXAuditScreenshotManager *)self _boundsForRect:v9 containerImageSize:x timestamp:y, width, height, v13, v15];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v15 - v22 - v24;
      v26 = [v11 CGImage];
      v32.origin.x = v19;
      v32.origin.y = v25;
      v32.size.width = v21;
      v32.size.height = v23;
      v27 = CGImageCreateWithImageInRect(v26, v32);
      if (!v27)
      {
LABEL_11:
        v17 = 0;
      }

      else
      {
        v28 = v27;
        v17 = [MEMORY[0x277D755B8] imageWithCGImage:v27];
        CFRelease(v28);
      }
    }

    v16 = v17;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)imageProcessingQueue
{
  if (imageProcessingQueue_onceToken != -1)
  {
    +[AXAuditScreenshotManager imageProcessingQueue];
  }

  v3 = imageProcessingQueue_imageProcessingQueue;

  return v3;
}

uint64_t __48__AXAuditScreenshotManager_imageProcessingQueue__block_invoke()
{
  imageProcessingQueue_imageProcessingQueue = dispatch_queue_create("com.apple.axAudit.images", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)imageFromRemoteImageData:(id)a3 rotation:(double)a4
{
  v4 = -a4;
  v5 = MEMORY[0x277D755B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithData:v6];

  [v7 size];
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, v8, v10}];
  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeRotation(&v23, v4);
  transform = v23;
  [v12 applyTransform:&transform];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v25.width = v13;
  v25.height = v15;
  UIGraphicsBeginImageContext(v25);
  CurrentContext = UIGraphicsGetCurrentContext();
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&v23.a = *MEMORY[0x277CBF2C0];
  *&v23.c = v18;
  *&v23.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v21.a = *&v23.a;
  *&v21.c = v18;
  *&v21.tx = *&v23.tx;
  CGAffineTransformTranslate(&transform, &v21, v14 * 0.5, v16 * 0.5);
  v23 = transform;
  v21 = transform;
  CGAffineTransformRotate(&transform, &v21, v4);
  v23 = transform;
  v21 = transform;
  CGAffineTransformTranslate(&transform, &v21, -(v14 * 0.5), -(v16 * 0.5));
  v23 = transform;
  CGContextConcatCTM(CurrentContext, &transform);
  [v7 drawInRect:{v14 * 0.5 + 0.0 - v9 * 0.5, v16 * 0.5 + 0.0 - v11 * 0.5, v9, v11}];
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

@end