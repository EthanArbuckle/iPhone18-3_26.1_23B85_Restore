@interface AAUIBadgeImageFactory
- (AAUIBadgeImageFactory)init;
- (BOOL)hasCachedThumbnailImageForAchievement:(id)achievement size:(CGSize)size;
- (BOOL)hasCachedThumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type;
- (CGGradient)_makeShadowGradient;
- (CGGradient)_makeShadowSolidGradient;
- (CGRect)_initialFrameForSize:(CGSize)size isRTL:(BOOL)l isStack:(BOOL)stack;
- (double)_stackBadgeOverlapForStackType:(int)type;
- (id)_availableAchievementsForStackType:(int)type andAchievements:(id)achievements;
- (id)_makeGradientImage:(id)image solidGradient:(CGGradient *)gradient gradient:(CGGradient *)a5 isRTL:(BOOL)l;
- (id)_perfectCropForImage:(id)image andDirections:(unint64_t)directions;
- (id)_queue_generateImageForConfiguration:(id)configuration size:(CGSize)size stackType:(int)type isRTL:(BOOL)l unearned:(BOOL)unearned;
- (id)_queue_thumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type;
- (id)thumbnailImageForAchievement:(id)achievement size:(CGSize)size;
- (id)thumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type;
- (void)clearAllCachedImages;
- (void)thumbnailImageForAchievement:(id)achievement size:(CGSize)size completion:(id)completion;
- (void)thumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type completion:(id)completion;
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

- (id)thumbnailImageForAchievement:(id)achievement size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v13 = *MEMORY[0x277D85DE8];
  achievementCopy = achievement;
  v7 = MEMORY[0x277CBEA60];
  achievementCopy2 = achievement;
  v9 = [v7 arrayWithObjects:&achievementCopy count:1];

  v10 = [(AAUIBadgeImageFactory *)self thumbnailImageForAchievements:v9 size:0 alignment:0 stackType:width, height, achievementCopy, v13];

  return v10;
}

- (id)thumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type
{
  v6 = *&type;
  v7 = *&alignment;
  height = size.height;
  width = size.width;
  achievementsCopy = achievements;
  if ([achievementsCopy count])
  {
    v12 = AAUIAchievementBadgeCacheKey(achievementsCopy, v7, v6);
    os_unfair_lock_lock(&self->_cacheLock);
    cache = [(AAUIBadgeImageFactory *)self cache];
    v14 = [cache objectForKey:v12];

    os_unfair_lock_unlock(&self->_cacheLock);
    if (v14)
    {
      height = v14;
    }

    else
    {
      v16 = [(AAUIBadgeImageFactory *)self _availableAchievementsForStackType:v6 andAchievements:achievementsCopy];
      height = 0;
      if ([v16 count])
      {
        if (!v6)
        {
          width = width + -10.0;
          height = height + -10.0;
        }

        if (width > 0.0 && height > 0.0)
        {
          height = [(AAUIBadgeImageFactory *)self _queue_thumbnailImageForAchievements:v16 size:v7 alignment:v6 stackType:width, height];
          if (height)
          {
            os_unfair_lock_lock(&self->_cacheLock);
            cache2 = [(AAUIBadgeImageFactory *)self cache];
            [cache2 setObject:height forKey:v12];

            os_unfair_lock_unlock(&self->_cacheLock);
          }

          else
          {
            v18 = ACHLogDefault();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [AAUIBadgeImageFactory thumbnailImageForAchievements:achievementsCopy size:v18 alignment:width stackType:height];
            }
          }
        }
      }
    }
  }

  else
  {
    height = 0;
  }

  return height;
}

- (void)thumbnailImageForAchievement:(id)achievement size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v14 = *MEMORY[0x277D85DE8];
  achievementCopy = achievement;
  v9 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  achievementCopy2 = achievement;
  v12 = [v9 arrayWithObjects:&achievementCopy count:1];

  [(AAUIBadgeImageFactory *)self thumbnailImageForAchievements:v12 size:0 alignment:0 stackType:completionCopy completion:width, height, achievementCopy, v14];
}

- (void)thumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type completion:(id)completion
{
  height = size.height;
  width = size.width;
  achievementsCopy = achievements;
  completionCopy = completion;
  if (completionCopy)
  {
    v15 = dispatch_get_global_queue(21, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__AAUIBadgeImageFactory_thumbnailImageForAchievements_size_alignment_stackType_completion___block_invoke;
    v16[3] = &unk_278C43570;
    v16[4] = self;
    v17 = achievementsCopy;
    v19 = width;
    v20 = height;
    alignmentCopy = alignment;
    typeCopy = type;
    v18 = completionCopy;
    dispatch_async(v15, v16);
  }
}

void __91__AAUIBadgeImageFactory_thumbnailImageForAchievements_size_alignment_stackType_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailImageForAchievements:*(a1 + 40) size:*(a1 + 72) alignment:*(a1 + 76) stackType:{*(a1 + 56), *(a1 + 64)}];
  (*(*(a1 + 48) + 16))();
}

- (BOOL)hasCachedThumbnailImageForAchievement:(id)achievement size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = *MEMORY[0x277D85DE8];
  achievementCopy = achievement;
  v7 = MEMORY[0x277CBEA60];
  achievementCopy2 = achievement;
  v9 = [v7 arrayWithObjects:&achievementCopy count:1];

  LOBYTE(self) = [(AAUIBadgeImageFactory *)self hasCachedThumbnailImageForAchievements:v9 size:0 alignment:0 stackType:width, height, achievementCopy, v12];
  return self;
}

- (BOOL)hasCachedThumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type
{
  v7 = AAUIAchievementBadgeCacheKey(achievements, *&alignment, *&type);
  os_unfair_lock_lock(&self->_cacheLock);
  cache = [(AAUIBadgeImageFactory *)self cache];
  v9 = [cache objectForKey:v7];

  os_unfair_lock_unlock(&self->_cacheLock);
  return v9 != 0;
}

- (void)clearAllCachedImages
{
  os_unfair_lock_lock(&self->_cacheLock);
  cache = [(AAUIBadgeImageFactory *)self cache];
  [cache removeAllObjects];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)_queue_thumbnailImageForAchievements:(id)achievements size:(CGSize)size alignment:(int)alignment stackType:(int)type
{
  height = size.height;
  width = size.width;
  achievementsCopy = achievements;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  imageCreationQueue = [(AAUIBadgeImageFactory *)self imageCreationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__AAUIBadgeImageFactory__queue_thumbnailImageForAchievements_size_alignment_stackType___block_invoke;
  v15[3] = &unk_278C435C0;
  typeCopy = type;
  v18 = width;
  v19 = height;
  v15[4] = self;
  v16 = achievementsCopy;
  v17 = &v21;
  v12 = achievementsCopy;
  dispatch_sync(imageCreationQueue, v15);

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

- (id)_availableAchievementsForStackType:(int)type andAchievements:(id)achievements
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = [achievements hk_filter:&__block_literal_global];
  if (![v6 count])
  {
    v4 = MEMORY[0x277CBEBF8];
    goto LABEL_13;
  }

  if ((type - 2) < 2)
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

  if (type == 1)
  {
    v8 = [v6 count];
    v9 = v8 >= 5;
    v10 = 5;
    goto LABEL_9;
  }

  if (!type)
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

- (double)_stackBadgeOverlapForStackType:(int)type
{
  result = 0.0;
  if ((type - 1) <= 2)
  {
    return dbl_23E4DFA28[type - 1];
  }

  return result;
}

- (CGRect)_initialFrameForSize:(CGSize)size isRTL:(BOOL)l isStack:(BOOL)stack
{
  height = size.height;
  v6 = 0.0;
  if (!stack || l)
  {
    size.width = 0.0;
  }

  v7 = height;
  result.origin.x = size.width;
  result.size.height = v7;
  result.size.width = height;
  result.origin.y = v6;
  return result;
}

- (id)_makeGradientImage:(id)image solidGradient:(CGGradient *)gradient gradient:(CGGradient *)a5 isRTL:(BOOL)l
{
  lCopy = l;
  [image size];
  width = v20.width;
  height = v20.height;
  UIGraphicsBeginImageContextWithOptions(v20, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v12 = CurrentContext;
  if (lCopy)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = width;
  }

  if (lCopy)
  {
    v14 = width - width * 0.25;
  }

  else
  {
    v14 = width * 0.25;
  }

  if (lCopy)
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
  CGContextDrawLinearGradient(CurrentContext, gradient, *&v15, v22, 3u);
  v21.x = v14;
  v21.y = height * 0.5;
  v23.x = v13;
  v23.y = height * 0.5;
  CGContextDrawLinearGradient(v12, a5, v21, v23, 3u);
  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

- (id)_queue_generateImageForConfiguration:(id)configuration size:(CGSize)size stackType:(int)type isRTL:(BOOL)l unearned:(BOOL)unearned
{
  lCopy = l;
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  imageCreationQueue = [(AAUIBadgeImageFactory *)self imageCreationQueue];
  dispatch_assert_queue_V2(imageCreationQueue);

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v15 = width * 1.4;
  v16 = height * 1.4;
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  if (unearned)
  {
    [(AAUIBadgeImageFactory *)self unearnedBadgeView];
  }

  else
  {
    [(AAUIBadgeImageFactory *)self earnedBadgeView];
  }
  v19 = ;
  [v19 setConfiguration:configurationCopy];

  [v19 setFrame:{v17, v18, v15, v16}];
  [v19 resizeBadgeForCurrentViewSize];
  snapshot = [v19 snapshot];
  [v19 cleanupAfterSnapshot];
  if (type)
  {
    if (lCopy)
    {
      v21 = 13;
    }

    else
    {
      v21 = 14;
    }

    v22 = [(AAUIBadgeImageFactory *)self _perfectCropForImage:snapshot andDirections:v21];

    snapshot = v22;
  }

  [MEMORY[0x277CD9FF0] commit];

  return snapshot;
}

- (CGGradient)_makeShadowSolidGradient
{
  v8[2] = *MEMORY[0x277D85DE8];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v3 = [whiteColor colorWithAlphaComponent:0.0];

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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v3 = [whiteColor colorWithAlphaComponent:0.0];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v9[0] = [v3 CGColor];
  v9[1] = [whiteColor2 CGColor];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v7 = CGGradientCreateWithColors(DeviceRGB, v5, 0);
  CGColorSpaceRelease(DeviceRGB);

  return v7;
}

- (id)_perfectCropForImage:(id)image andDirections:(unint64_t)directions
{
  directionsCopy = directions;
  imageCopy = image;
  cGImage = [imageCopy CGImage];
  Width = CGImageGetWidth(cGImage);
  Height = CGImageGetHeight(cGImage);
  v9 = 4 * Width;
  ColorSpace = CGImageGetColorSpace(cGImage);
  v11 = CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, ColorSpace, 1u);
  if (v11)
  {
    v12 = v11;
    v50.origin.x = 0.0;
    v50.origin.y = 0.0;
    v50.size.width = Width;
    v50.size.height = Height;
    CGContextDrawImage(v11, v50, cGImage);
    Data = CGBitmapContextGetData(v12);
    v14 = 0;
    if ((directionsCopy & 1) != 0 && Width >= 1)
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
    if ((directionsCopy & 2) != 0 && Width >= 1)
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
    if ((directionsCopy & 4) != 0 && Height >= 1)
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
    if ((directionsCopy & 8) != 0)
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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
      [imageCopy drawInRect:{-v14 / v43, -v27 / v43, Width / v43, Height / v43}];
      v33 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v33 = imageCopy;
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