@interface AXAuditScreenshotManager
+ (id)imageFromRemoteImageData:(id)data rotation:(double)rotation;
+ (id)imageProcessingQueue;
+ (id)sharedManager;
- (AXAuditScreenshotManager)init;
- (BOOL)screenshotShouldFlipOutlineForTimestamp:(id)timestamp;
- (CGRect)_boundsForRect:(CGRect)rect containerImageSize:(CGSize)size timestamp:(id)timestamp;
- (CGRect)_elementBoundsForIssue:(id)issue containerImageSize:(CGSize)size;
- (CGRect)elementBoundsInScreenShotForIssue:(id)issue;
- (CGRect)screenshotBorderFrameForTimestamp:(id)timestamp;
- (CGRect)screenshotDisplayBoundsForTimestamp:(id)timestamp;
- (double)screenshotRotationForTimestamp:(id)timestamp;
- (double)screenshotScaleFactorForTimestamp:(id)timestamp;
- (id)screenshotForIssue:(id)issue elementRect:(CGRect *)rect;
- (id)screenshotHighlightingIssue:(id)issue;
- (id)screenshotImageForTimestamp:(id)timestamp;
- (id)screenshotImageForTimestamp:(id)timestamp inRect:(CGRect)rect;
- (id)thumbnailImageOfIssue:(id)issue;
- (void)addScreenshot:(id)screenshot forTimestamp:(id)timestamp;
- (void)addScreenshotWithInfo:(id)info timestamp:(id)timestamp completion:(id)completion;
- (void)clear;
- (void)setScreenshotBorderFrame:(CGRect)frame forTimestamp:(id)timestamp;
- (void)setScreenshotDisplayBounds:(CGRect)bounds forTimestamp:(id)timestamp;
- (void)setScreenshotRotation:(double)rotation forTimestamp:(id)timestamp;
- (void)setScreenshotScaleFactor:(double)factor forTimestamp:(id)timestamp;
@end

@implementation AXAuditScreenshotManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AXAuditScreenshotManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)addScreenshot:(id)screenshot forTimestamp:(id)timestamp
{
  if (screenshot && timestamp)
  {
    timestampCopy = timestamp;
    screenshotCopy = screenshot;
    _image = [(AXAuditScreenshotManager *)self _image];
    [_image setObject:screenshotCopy forKeyedSubscript:timestampCopy];

    [(AXAuditScreenshotManager *)self setLastTimestamp:timestampCopy];
  }
}

- (void)setScreenshotRotation:(double)rotation forTimestamp:(id)timestamp
{
  if (timestamp)
  {
    v5 = MEMORY[0x277CCABB0];
    rotationCopy = rotation;
    timestampCopy = timestamp;
    *&v8 = rotationCopy;
    v10 = [v5 numberWithFloat:v8];
    _rotation = [(AXAuditScreenshotManager *)self _rotation];
    [_rotation setObject:v10 forKeyedSubscript:timestampCopy];
  }
}

- (void)setScreenshotDisplayBounds:(CGRect)bounds forTimestamp:(id)timestamp
{
  if (timestamp)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    v9 = MEMORY[0x277CCAE60];
    timestampCopy = timestamp;
    v12 = [v9 valueWithRect:{x, y, width, height}];
    _displayBounds = [(AXAuditScreenshotManager *)self _displayBounds];
    [_displayBounds setObject:v12 forKeyedSubscript:timestampCopy];
  }
}

- (void)setScreenshotBorderFrame:(CGRect)frame forTimestamp:(id)timestamp
{
  if (timestamp)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v9 = MEMORY[0x277CCAE60];
    timestampCopy = timestamp;
    v12 = [v9 valueWithRect:{x, y, width, height}];
    _borderFrame = [(AXAuditScreenshotManager *)self _borderFrame];
    [_borderFrame setObject:v12 forKeyedSubscript:timestampCopy];
  }
}

- (void)setScreenshotScaleFactor:(double)factor forTimestamp:(id)timestamp
{
  if (timestamp)
  {
    v5 = MEMORY[0x277CCABB0];
    factorCopy = factor;
    timestampCopy = timestamp;
    *&v8 = factorCopy;
    v10 = [v5 numberWithFloat:v8];
    _scaleFactor = [(AXAuditScreenshotManager *)self _scaleFactor];
    [_scaleFactor setObject:v10 forKeyedSubscript:timestampCopy];
  }
}

- (id)screenshotImageForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  _image = [(AXAuditScreenshotManager *)self _image];
  v6 = [_image objectForKeyedSubscript:timestampCopy];

  return v6;
}

- (double)screenshotRotationForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  _rotation = [(AXAuditScreenshotManager *)self _rotation];
  v6 = [_rotation objectForKeyedSubscript:timestampCopy];

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

- (CGRect)screenshotDisplayBoundsForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  _displayBounds = [(AXAuditScreenshotManager *)self _displayBounds];
  v6 = [_displayBounds objectForKeyedSubscript:timestampCopy];

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

- (CGRect)screenshotBorderFrameForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  _borderFrame = [(AXAuditScreenshotManager *)self _borderFrame];
  v6 = [_borderFrame objectForKeyedSubscript:timestampCopy];

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

- (double)screenshotScaleFactorForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  _scaleFactor = [(AXAuditScreenshotManager *)self _scaleFactor];
  v6 = [_scaleFactor objectForKeyedSubscript:timestampCopy];

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

- (BOOL)screenshotShouldFlipOutlineForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  _shouldFlipOutline = [(AXAuditScreenshotManager *)self _shouldFlipOutline];
  v6 = [_shouldFlipOutline objectForKeyedSubscript:timestampCopy];

  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (CGRect)_elementBoundsForIssue:(id)issue containerImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  issueCopy = issue;
  [issueCopy elementRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  timeStamp = [issueCopy timeStamp];

  [(AXAuditScreenshotManager *)self _boundsForRect:timeStamp containerImageSize:v9 timestamp:v11, v13, v15, width, height];
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

- (CGRect)_boundsForRect:(CGRect)rect containerImageSize:(CGSize)size timestamp:(id)timestamp
{
  height = size.height;
  width = size.width;
  v40 = rect.size.height;
  v41 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  timestampCopy = timestamp;
  [(AXAuditScreenshotManager *)self screenshotBorderFrameForTimestamp:timestampCopy];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(AXAuditScreenshotManager *)self screenshotRotationForTimestamp:timestampCopy];
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
  [(AXAuditScreenshotManager *)self screenshotDisplayBoundsForTimestamp:timestampCopy];
  v22 = v43.size.width;
  v23 = v43.size.height;
  if (NSIsEmptyRect(v43))
  {
    [(AXAuditScreenshotManager *)self screenshotScaleFactorForTimestamp:timestampCopy];
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
  if ([(AXAuditScreenshotManager *)self screenshotShouldFlipOutlineForTimestamp:timestampCopy])
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

- (void)addScreenshotWithInfo:(id)info timestamp:(id)timestamp completion:(id)completion
{
  infoCopy = info;
  timestampCopy = timestamp;
  completionCopy = completion;
  v11 = completionCopy;
  if (infoCopy && timestampCopy)
  {
    v12 = [infoCopy objectForKeyedSubscript:@"imageData"];
    v13 = [infoCopy objectForKeyedSubscript:@"rotationRadians"];
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
      selfCopy = self;
      v20 = timestampCopy;
      v21 = v13;
      v22 = infoCopy;
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
    completionCopy[2](completionCopy);
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

- (CGRect)elementBoundsInScreenShotForIssue:(id)issue
{
  issueCopy = issue;
  timeStamp = [issueCopy timeStamp];
  v6 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:timeStamp];

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
    [(AXAuditScreenshotManager *)self _elementBoundsForIssue:issueCopy containerImageSize:?];
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

- (id)screenshotForIssue:(id)issue elementRect:(CGRect *)rect
{
  issueCopy = issue;
  timeStamp = [issueCopy timeStamp];
  v8 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:timeStamp];

  if (v8)
  {
    [v8 size];
    if (!rect)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *MEMORY[0x277CCA870];
    v10 = *(MEMORY[0x277CCA870] + 8);
    if (!rect)
    {
      goto LABEL_8;
    }
  }

  if (v9 > 0.0 && v10 > 0.0)
  {
    [(AXAuditScreenshotManager *)self _elementBoundsForIssue:issueCopy containerImageSize:?];
    rect->origin.x = v11;
    rect->origin.y = v12;
    rect->size.width = v13;
    rect->size.height = v14;
  }

LABEL_8:

  return v8;
}

- (id)screenshotHighlightingIssue:(id)issue
{
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v13.origin = *MEMORY[0x277CBF3A0];
  v13.size = v3;
  v4 = [(AXAuditScreenshotManager *)self screenshotForIssue:issue elementRect:&v13];
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

- (id)thumbnailImageOfIssue:(id)issue
{
  issueCopy = issue;
  timeStamp = [issueCopy timeStamp];
  [issueCopy elementRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:timeStamp inRect:v7, v9, v11, v13];

  return v14;
}

- (id)screenshotImageForTimestamp:(id)timestamp inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  timestampCopy = timestamp;
  if (timestampCopy)
  {
    v10 = [(AXAuditScreenshotManager *)self screenshotImageForTimestamp:timestampCopy];
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

      [(AXAuditScreenshotManager *)self _boundsForRect:timestampCopy containerImageSize:x timestamp:y, width, height, v13, v15];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v15 - v22 - v24;
      cGImage = [v11 CGImage];
      v32.origin.x = v19;
      v32.origin.y = v25;
      v32.size.width = v21;
      v32.size.height = v23;
      v27 = CGImageCreateWithImageInRect(cGImage, v32);
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

+ (id)imageFromRemoteImageData:(id)data rotation:(double)rotation
{
  v4 = -rotation;
  v5 = MEMORY[0x277D755B8];
  dataCopy = data;
  v7 = [[v5 alloc] initWithData:dataCopy];

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