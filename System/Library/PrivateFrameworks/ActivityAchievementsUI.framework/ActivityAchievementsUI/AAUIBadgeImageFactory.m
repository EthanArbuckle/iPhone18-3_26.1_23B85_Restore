@interface AAUIBadgeImageFactory
- (AAUIBadgeImageFactory)init;
- (BOOL)hasCachedThumbnailImageForAchievement:(id)a3 size:(CGSize)a4;
- (BOOL)hasCachedThumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6;
- (CGGradient)_makeShadowGradient;
- (CGGradient)_makeShadowSolidGradient;
- (CGRect)_initialFrameForSize:(CGSize)a3 isRTL:(BOOL)a4 isStack:(BOOL)a5;
- (double)_stackBadgeOverlapForStackType:(int)a3;
- (id)_availableAchievementsForStackType:(int)a3 andAchievements:(id)a4;
- (id)_makeGradientImage:(id)a3 solidGradient:(CGGradient *)a4 gradient:(CGGradient *)a5 isRTL:(BOOL)a6;
- (id)_perfectCropForImage:(id)a3 andDirections:(unint64_t)a4;
- (id)_queue_generateImageForConfiguration:(id)a3 size:(CGSize)a4 stackType:(int)a5 isRTL:(BOOL)a6 unearned:(BOOL)a7;
- (id)_queue_thumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6;
- (id)thumbnailImageForAchievement:(id)a3 size:(CGSize)a4;
- (id)thumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6;
- (void)clearAllCachedImages;
- (void)thumbnailImageForAchievement:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)thumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6 completion:(id)a7;
@end

@implementation AAUIBadgeImageFactory

- (AAUIBadgeImageFactory)init
{
  v14.receiver = self;
  v14.super_class = AAUIBadgeImageFactory;
  v2 = [(AAUIBadgeImageFactory *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = objc_alloc_init(AAUIAchievementResourceProvider);
    resourceProvider = v2->_resourceProvider;
    v2->_resourceProvider = v5;

    v7 = HKCreateSerialDispatchQueueWithQOSClass();
    imageCreationQueue = v2->_imageCreationQueue;
    v2->_imageCreationQueue = v7;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v9 = [[AAUIBadgeView alloc] initUsingEarnedShader:0];
    unearnedBadgeView = v2->_unearnedBadgeView;
    v2->_unearnedBadgeView = v9;

    v11 = [[AAUIBadgeView alloc] initUsingEarnedShader:1];
    earnedBadgeView = v2->_earnedBadgeView;
    v2->_earnedBadgeView = v11;
  }

  return v2;
}

- (id)thumbnailImageForAchievement:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v13 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a3;
  v9 = [v7 arrayWithObjects:&v12 count:1];

  v10 = [(AAUIBadgeImageFactory *)self thumbnailImageForAchievements:v9 size:0 alignment:0 stackType:width, height, v12, v13];

  return v10;
}

- (id)thumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  if ([v11 count])
  {
    v12 = AAUIAchievementBadgeCacheKey(v11, v7, v6);
    os_unfair_lock_lock(&self->_cacheLock);
    v13 = [(AAUIBadgeImageFactory *)self cache];
    v14 = [v13 objectForKey:v12];

    os_unfair_lock_unlock(&self->_cacheLock);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v16 = [(AAUIBadgeImageFactory *)self _availableAchievementsForStackType:v6 andAchievements:v11];
      v15 = 0;
      if ([v16 count])
      {
        if (!v6)
        {
          width = width + -10.0;
          height = height + -10.0;
        }

        if (width > 0.0 && height > 0.0)
        {
          v15 = [(AAUIBadgeImageFactory *)self _queue_thumbnailImageForAchievements:v16 size:v7 alignment:v6 stackType:width, height];
          if (v15)
          {
            os_unfair_lock_lock(&self->_cacheLock);
            v17 = [(AAUIBadgeImageFactory *)self cache];
            [v17 setObject:v15 forKey:v12];

            os_unfair_lock_unlock(&self->_cacheLock);
          }

          else
          {
            v18 = ACHLogDefault();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [AAUIBadgeImageFactory thumbnailImageForAchievements:v11 size:v18 alignment:width stackType:height];
            }
          }
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)thumbnailImageForAchievement:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v14 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v9 = MEMORY[0x277CBEA60];
  v10 = a5;
  v11 = a3;
  v12 = [v9 arrayWithObjects:&v13 count:1];

  [(AAUIBadgeImageFactory *)self thumbnailImageForAchievements:v12 size:0 alignment:0 stackType:v10 completion:width, height, v13, v14];
}

- (void)thumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6 completion:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a7;
  if (v14)
  {
    v15 = dispatch_get_global_queue(21, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__AAUIBadgeImageFactory_thumbnailImageForAchievements_size_alignment_stackType_completion___block_invoke;
    v16[3] = &unk_278C43570;
    v16[4] = self;
    v17 = v13;
    v19 = width;
    v20 = height;
    v21 = a5;
    v22 = a6;
    v18 = v14;
    dispatch_async(v15, v16);
  }
}

void __91__AAUIBadgeImageFactory_thumbnailImageForAchievements_size_alignment_stackType_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailImageForAchievements:*(a1 + 40) size:*(a1 + 72) alignment:*(a1 + 76) stackType:{*(a1 + 56), *(a1 + 64)}];
  (*(*(a1 + 48) + 16))();
}

- (BOOL)hasCachedThumbnailImageForAchievement:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v12 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a3;
  v9 = [v7 arrayWithObjects:&v11 count:1];

  LOBYTE(self) = [(AAUIBadgeImageFactory *)self hasCachedThumbnailImageForAchievements:v9 size:0 alignment:0 stackType:width, height, v11, v12];
  return self;
}

- (BOOL)hasCachedThumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6
{
  v7 = AAUIAchievementBadgeCacheKey(a3, *&a5, *&a6);
  os_unfair_lock_lock(&self->_cacheLock);
  v8 = [(AAUIBadgeImageFactory *)self cache];
  v9 = [v8 objectForKey:v7];

  os_unfair_lock_unlock(&self->_cacheLock);
  return v9 != 0;
}

- (void)clearAllCachedImages
{
  os_unfair_lock_lock(&self->_cacheLock);
  v3 = [(AAUIBadgeImageFactory *)self cache];
  [v3 removeAllObjects];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)_queue_thumbnailImageForAchievements:(id)a3 size:(CGSize)a4 alignment:(int)a5 stackType:(int)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v11 = [(AAUIBadgeImageFactory *)self imageCreationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__AAUIBadgeImageFactory__queue_thumbnailImageForAchievements_size_alignment_stackType___block_invoke;
  v15[3] = &unk_278C435C0;
  v20 = a6;
  v18 = width;
  v19 = height;
  v15[4] = self;
  v16 = v10;
  v17 = &v21;
  v12 = v10;
  dispatch_sync(v11, v15);

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __87__AAUIBadgeImageFactory__queue_thumbnailImageForAchievements_size_alignment_stackType___block_invoke(uint64_t a1)
{
  IsRightToLeft = FIUILocaleIsRightToLeft();
  v3 = *(a1 + 72);
  [*(a1 + 32) _stackBadgeOverlapForStackType:v3];
  v4 = *(a1 + 64);
  v5 = (a1 + 56);
  v7 = v4 * (1.0 - v6);
  v8 = -(*(a1 + 56) - v4 * [*(a1 + 40) count]);
  v9 = [*(a1 + 40) count];
  if (v7 >= v4 - v8 / (v9 - 1))
  {
    v7 = v4 - v8 / (v9 - 1);
  }

  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x4010000000;
  v48[3] = "";
  v49 = 0u;
  v50 = 0u;
  [*(a1 + 32) _initialFrameForSize:IsRightToLeft isRTL:v3 != 0 isStack:{*v5, *(a1 + 64)}];
  *&v49 = v10;
  *(&v49 + 1) = v11;
  *&v50 = v12;
  *(&v50 + 1) = v13;
  if (v3)
  {
    v14 = [*(a1 + 32) _makeShadowGradient];
    v15 = [*(a1 + 32) _makeShadowSolidGradient];
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = [*(a1 + 32) resourceProvider];
  UIGraphicsBeginImageContextWithOptions(*(a1 + 56), 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v18 = [*(a1 + 40) hk_reversed];
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __87__AAUIBadgeImageFactory__queue_thumbnailImageForAchievements_size_alignment_stackType___block_invoke_2;
  v31 = &unk_278C43598;
  v19 = v16;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v32 = v19;
  v33 = v20;
  v37 = *v5;
  v41 = *(a1 + 72);
  v42 = IsRightToLeft;
  v43 = v3 != 0;
  v35 = v48;
  v38 = v15;
  v39 = v14;
  v40 = v7;
  v34 = v21;
  v36 = &v44;
  [v18 enumerateObjectsUsingBlock:&v28];

  if (*(v45 + 24) == 1)
  {
    v22 = ACHLogDefault();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __87__AAUIBadgeImageFactory__queue_thumbnailImageForAchievements_size_alignment_stackType___block_invoke_cold_1(v22);
    }

    goto LABEL_11;
  }

  v23 = UIGraphicsGetImageFromCurrentImageContext();
  v24 = *(*(a1 + 48) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  UIGraphicsEndImageContext();
  CGGradientRelease(v14);
  CGGradientRelease(v15);
  if (v3)
  {
    v26 = [*(a1 + 32) _perfectCropForImage:*(*(*(a1 + 48) + 8) + 40) andDirections:{3, v28, v29, v30, v31, v32, v33}];
    v27 = *(*(a1 + 48) + 8);
    v22 = *(v27 + 40);
    *(v27 + 40) = v26;
LABEL_11:
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(v48, 8);
}

void __87__AAUIBadgeImageFactory__queue_thumbnailImageForAchievements_size_alignment_stackType___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v19 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) badgeConfigurationForAchievement:v19];
  v9 = [*(a1 + 40) _queue_generateImageForConfiguration:v8 size:*(a1 + 112) stackType:*(a1 + 116) isRTL:objc_msgSend(v19 unearned:{"unearned"), *(a1 + 80), *(a1 + 80)}];
  v10 = v9;
  if (v9)
  {
    if (*(a1 + 117) == 1)
    {
      [v9 size];
      v12 = v11 * *(*(*(a1 + 56) + 8) + 56);
      [v10 size];
      *(*(*(a1 + 56) + 8) + 48) = v12 / v13;
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 32);
      if (*(a1 + 116))
      {
        if (v15 >= *(a1 + 72) - *(v14 + 48))
        {
          v15 = *(a1 + 72) - *(v14 + 48);
        }
      }

      else
      {
        v15 = fmax(v15 - *(v14 + 48), 0.0);
      }

      *(v14 + 32) = v15;
    }

    [v10 drawInRect:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
    if (*(a1 + 117) == 1 && [*(a1 + 48) count] - 1 > a3)
    {
      v16 = [*(a1 + 40) _makeGradientImage:v10 solidGradient:*(a1 + 88) gradient:*(a1 + 96) isRTL:*(a1 + 116)];
      [v16 drawInRect:22 blendMode:*(*(*(a1 + 56) + 8) + 32) alpha:{*(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56), 1.0}];
    }

    v17 = *(*(a1 + 56) + 8);
    if (*(a1 + 116) == 1)
    {
      v18 = *(a1 + 104) + *(v17 + 32);
    }

    else
    {
      v18 = *(v17 + 32) + *(v17 + 48) - *(a1 + 104);
    }

    *(v17 + 32) = v18;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);
}

- (id)_availableAchievementsForStackType:(int)a3 andAchievements:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = [a4 hk_filter:&__block_literal_global];
  if (![v6 count])
  {
    v4 = MEMORY[0x277CBEBF8];
    goto LABEL_13;
  }

  if ((a3 - 2) < 2)
  {
    v8 = [v6 count];
    v9 = v8 >= 3;
    v10 = 3;
LABEL_9:
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    v4 = [v6 subarrayWithRange:{0, v11}];
    goto LABEL_13;
  }

  if (a3 == 1)
  {
    v8 = [v6 count];
    v9 = v8 >= 5;
    v10 = 5;
    goto LABEL_9;
  }

  if (!a3)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v13[0] = v7;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  }

LABEL_13:

  return v4;
}

BOOL __76__AAUIBadgeImageFactory__availableAchievementsForStackType_andAchievements___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 badgeShapeName];

  if (!v3)
  {
    v4 = ACHLogDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __76__AAUIBadgeImageFactory__availableAchievementsForStackType_andAchievements___block_invoke_cold_1(v2, v4);
    }
  }

  return v3 != 0;
}

- (double)_stackBadgeOverlapForStackType:(int)a3
{
  result = 0.0;
  if ((a3 - 1) <= 2)
  {
    return dbl_23E4DFA28[a3 - 1];
  }

  return result;
}

- (CGRect)_initialFrameForSize:(CGSize)a3 isRTL:(BOOL)a4 isStack:(BOOL)a5
{
  height = a3.height;
  v6 = 0.0;
  if (!a5 || a4)
  {
    a3.width = 0.0;
  }

  v7 = height;
  result.origin.x = a3.width;
  result.size.height = v7;
  result.size.width = height;
  result.origin.y = v6;
  return result;
}

- (id)_makeGradientImage:(id)a3 solidGradient:(CGGradient *)a4 gradient:(CGGradient *)a5 isRTL:(BOOL)a6
{
  v6 = a6;
  [a3 size];
  width = v20.width;
  height = v20.height;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v12 = CurrentContext;
  if (v6)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = width;
  }

  if (v6)
  {
    v14 = width - width * 0.25;
  }

  else
  {
    v14 = width * 0.25;
  }

  if (v6)
  {
    v15 = width;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = height * 0.5;
  v22.x = v14;
  v22.y = height * 0.5;
  CGContextDrawLinearGradient(CurrentContext, a4, *&v15, v22, 3u);
  v21.x = v14;
  v21.y = height * 0.5;
  v23.x = v13;
  v23.y = height * 0.5;
  CGContextDrawLinearGradient(v12, a5, v21, v23, 3u);
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (id)_queue_generateImageForConfiguration:(id)a3 size:(CGSize)a4 stackType:(int)a5 isRTL:(BOOL)a6 unearned:(BOOL)a7
{
  v8 = a6;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = [(AAUIBadgeImageFactory *)self imageCreationQueue];
  dispatch_assert_queue_V2(v14);

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v15 = width * 1.4;
  v16 = height * 1.4;
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  if (a7)
  {
    [(AAUIBadgeImageFactory *)self unearnedBadgeView];
  }

  else
  {
    [(AAUIBadgeImageFactory *)self earnedBadgeView];
  }
  v19 = ;
  [v19 setConfiguration:v13];

  [v19 setFrame:{v17, v18, v15, v16}];
  [v19 resizeBadgeForCurrentViewSize];
  v20 = [v19 snapshot];
  [v19 cleanupAfterSnapshot];
  if (a5)
  {
    if (v8)
    {
      v21 = 13;
    }

    else
    {
      v21 = 14;
    }

    v22 = [(AAUIBadgeImageFactory *)self _perfectCropForImage:v20 andDirections:v21];

    v20 = v22;
  }

  [MEMORY[0x277CD9FF0] commit];

  return v20;
}

- (CGGradient)_makeShadowSolidGradient
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75348] whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v8[0] = [v3 CGColor];
  v8[1] = [v3 CGColor];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v6 = CGGradientCreateWithColors(DeviceRGB, v4, 0);
  CGColorSpaceRelease(DeviceRGB);

  return v6;
}

- (CGGradient)_makeShadowGradient
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75348] whiteColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v4 = [MEMORY[0x277D75348] whiteColor];
  v9[0] = [v3 CGColor];
  v9[1] = [v4 CGColor];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7 = CGGradientCreateWithColors(DeviceRGB, v5, 0);
  CGColorSpaceRelease(DeviceRGB);

  return v7;
}

- (id)_perfectCropForImage:(id)a3 andDirections:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 CGImage];
  Width = CGImageGetWidth(v6);
  Height = CGImageGetHeight(v6);
  v9 = 4 * Width;
  ColorSpace = CGImageGetColorSpace(v6);
  v11 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, ColorSpace, 1u);
  if (v11)
  {
    v12 = v11;
    v50.origin.x = 0.0;
    v50.origin.y = 0.0;
    v50.size.width = Width;
    v50.size.height = Height;
    CGContextDrawImage(v11, v50, v6);
    Data = CGBitmapContextGetData(v12);
    v14 = 0;
    if ((v4 & 1) != 0 && Width >= 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = &Data[4 * Width + 3];
      do
      {
        if (Height >= 1)
        {
          if (Data[4 * v15 + 3])
          {
            break;
          }

          v14 = v15 - 1;
          v17 = Height;
          v18 = v16;
          while (--v17)
          {
            v19 = *v18;
            v18 += v9;
            if (v19)
            {
              goto LABEL_12;
            }
          }
        }

        ++v15;
        v16 += 4;
      }

      while (v15 != Width);
    }

LABEL_12:
    v20 = 0;
    if ((v4 & 2) != 0 && Width >= 1)
    {
      v20 = 0;
      v21 = &Data[8 * Width - 1];
      v22 = Width;
      do
      {
        if (Height >= 1)
        {
          if (Data[4 * v22 - 1])
          {
            break;
          }

          v20 = Width - v22;
          v23 = Height;
          v24 = v21;
          while (--v23)
          {
            v25 = *v24;
            v24 += v9;
            if (v25)
            {
              goto LABEL_23;
            }
          }
        }

        v21 -= 4;
        v26 = v22-- <= 1;
      }

      while (!v26);
    }

LABEL_23:
    v27 = 0;
    if ((v4 & 4) != 0 && Height >= 1)
    {
      v27 = 0;
      v28 = 0;
      v29 = Data + 7;
      do
      {
        if (Width >= 1)
        {
          if (Data[4 * v28 * Width + 3])
          {
            break;
          }

          v30 = Width;
          v31 = v29;
          while (--v30)
          {
            v32 = *v31;
            v31 += 4;
            if (v32)
            {
              v27 = v28;
              goto LABEL_36;
            }
          }

          v27 = v28;
        }

        ++v28;
        v29 += v9;
      }

      while (v28 != Height);
    }

LABEL_36:
    if ((v4 & 8) != 0)
    {
      v34 = 0;
      if (Height >= 1)
      {
        v34 = 0;
        v35 = &Data[4 * Width * (Height - 1) + 7];
        v36 = Height;
        do
        {
          v37 = v36 - 1;
          if (Width >= 1)
          {
            if (Data[4 * v37 * Width + 3])
            {
              break;
            }

            v34 = Height - v37;
            v38 = Width;
            v39 = v35;
            while (--v38)
            {
              v40 = *v39;
              v39 += 4;
              if (v40)
              {
                goto LABEL_49;
              }
            }
          }

          v35 -= 4 * Width;
          v26 = v36-- <= 1;
        }

        while (!v26);
      }
    }

    else
    {
      v34 = 0;
    }

LABEL_49:
    CGContextRelease(v12);
    v41 = [MEMORY[0x277D759A0] mainScreen];
    [v41 scale];
    v43 = v42;

    v44 = (Width - (v14 + v20)) / v43;
    if (v44 <= 0.0 || (v45 = (Height - (v27 + v34)) / v43, v45 <= 0.0))
    {
      v47 = ACHLogDefault();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [AAUIBadgeImageFactory _perfectCropForImage:v47 andDirections:?];
      }

      v33 = 0;
    }

    else
    {
      UIGraphicsBeginImageContextWithOptions(*&v44, 0, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationHigh);
      [v5 drawInRect:{-v14 / v43, -v27 / v43, Width / v43, Height / v43}];
      v33 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v33 = v5;
  }

  return v33;
}

- (void)thumbnailImageForAchievements:(void *)a1 size:(NSObject *)a2 alignment:(CGFloat)a3 stackType:(CGFloat)a4 .cold.1(void *a1, NSObject *a2, CGFloat a3, CGFloat a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = [a1 firstObject];
  v8 = [v7 template];
  v9 = [v8 uniqueName];
  v16.width = a3;
  v16.height = a4;
  v10 = NSStringFromCGSize(v16);
  v11 = 138543618;
  v12 = v9;
  v13 = 2114;
  v14 = v10;
  _os_log_error_impl(&dword_23E4A3000, a2, OS_LOG_TYPE_ERROR, "[BadgeImageFactory] Got nil image generating thumbnail for achievement %{public}@, size %{public}@", &v11, 0x16u);
}

void __76__AAUIBadgeImageFactory__availableAchievementsForStackType_andAchievements___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 template];
  v4 = [v3 uniqueName];
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_23E4A3000, a2, OS_LOG_TYPE_FAULT, "[BadgeImageFactory] Got nil badgeShapeName for achievement %{public}@", &v5, 0xCu);
}

@end