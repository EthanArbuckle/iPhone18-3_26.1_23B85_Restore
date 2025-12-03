@interface PKMetalView
+ (void)installLuminanceColorFilterOnLayer:(uint64_t)layer lightLuma:(void *)luma darkLuma:;
- (id)metalLayer;
- (id)metalMultiplyLayer;
- (uint64_t)flushDrawables;
- (uint64_t)isDrawableAvailable;
- (uint64_t)setPresentsWithTransaction:(uint64_t)result;
- (void)accessibilityInvertColorsStatusDidChange:(id)change;
- (void)initWithFrame:(char)frame andPixelSize:(double)size pixelFormat:(double)format wantsExtendedDynamicRangeContent:(double)content;
- (void)resizeDrawableIfNecessary;
- (void)setDoubleBuffered:(uint64_t)buffered;
- (void)setPixelFormat:(uint64_t)format;
- (void)setSixChannelBlending:(uint64_t)blending;
- (void)setUseLuminanceColorFilter:(uint64_t)filter;
- (void)setWantsExtendedDynamicRangeContent:(uint64_t)content;
- (void)setupEDROnLayer:(int)layer shouldToneMap:;
- (void)setupMetalLayer:(int)layer shouldToneMap:;
@end

@implementation PKMetalView

- (id)metalLayer
{
  if (self)
  {
    self = self[52];
    v1 = vars8;
  }

  return self;
}

- (id)metalMultiplyLayer
{
  if (self)
  {
    self = self[53];
    v1 = vars8;
  }

  return self;
}

- (void)setupEDROnLayer:(int)layer shouldToneMap:
{
  if (self && a2)
  {
    v5 = *MEMORY[0x1E69792A0];
    v6 = *MEMORY[0x1E69792A8];
    if (*(self + 436))
    {
      v7 = *MEMORY[0x1E69792A0];
    }

    else
    {
      v7 = *MEMORY[0x1E69792A8];
    }

    v11 = a2;
    [v11 setPreferredDynamicRange:v7];
    if (*(self + 436) == 1)
    {
      [v11 setColorspace:+[PKMetalResourceHandler colorSpaceForExtendedDynamicRange]()];
      v8 = MEMORY[0x1E69792D8];
      if (!layer)
      {
        v8 = MEMORY[0x1E69792E0];
      }

      v9 = *v8;
      v10 = 4.0;
    }

    else
    {
      [v11 setColorspace:0];
      v9 = *MEMORY[0x1E69792D0];
      v10 = 0.0;
      v5 = v6;
    }

    [v11 setToneMapMode:v9];
    [v11 setContentsHeadroom:v10];
    [v11 setPreferredDynamicRange:v5];
    [v11 setPixelFormat:*(self + 440)];
  }
}

- (void)setupMetalLayer:(int)layer shouldToneMap:
{
  v6 = a2;
  v5 = +[PKMetalUtility defaultDevice];
  [v6 setDevice:v5];

  [v6 setOpaque:1];
  [v6 setFramebufferOnly:1];
  [(PKMetalView *)self setupEDROnLayer:v6 shouldToneMap:layer];
  [v6 setLowLatency:1];
  if (objc_opt_respondsToSelector())
  {
    [v6 setLowWorkload:1];
  }

  [v6 setAllowsDisplayCompositingWithCopy:0];
  if ((*(self + 432) & 1) == 0)
  {
    +[PKMetalUtility layerContentsScale];
    [v6 setContentsScale:?];
  }
}

- (void)resizeDrawableIfNecessary
{
  v75 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self frame];
    v3 = v2;
    v5 = v4;
    [*(self + 408) setFrame:{0.0, 0.0}];
    v6 = *(self + 416);
    [v6 setFrame:{0.0, 0.0, v3, v5}];

    v7 = *(self + 424);
    [v7 setFrame:{0.0, 0.0, v3, v5}];

    if (*(self + 432) == 1)
    {
      if (v3 > 0.0 && v5 > 0.0)
      {
        if (*(self + 448) / v3 >= *(self + 456) / v5)
        {
          v8 = *(self + 448) / v3;
        }

        else
        {
          v8 = *(self + 456) / v5;
        }

        v9 = *(self + 416);
        [v9 setContentsScale:v8];

        v10 = *(self + 424);
        [v10 setContentsScale:v8];
      }

      v11 = *(self + 448);
      v12 = *(self + 456);
      v13 = *(self + 416);
      [v13 drawableSize];
      v15 = v14;
      v17 = v16;

      if (v11 != v15 || v12 != v17)
      {
        v19 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v61 = *(self + 448);
          v62 = *(self + 456);
          metalLayer = [(PKMetalView *)self metalLayer];
          [metalLayer contentsScale];
          v69 = 134218496;
          v70 = v61;
          v71 = 2048;
          v72 = v62;
          v73 = 2048;
          v74 = v64;
          _os_log_debug_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEBUG, "Resize drawable to: %g %g, contentsScale: %g", &v69, 0x20u);
        }

        v20 = *(self + 448);
        v21 = *(self + 456);
        v22 = *(self + 416);
        [v22 setDrawableSize:{v20, v21}];
      }

      v23 = *(self + 424);
      if (v23)
      {
        v24 = v23;
        v26 = *(self + 448);
        v25 = *(self + 456);
        v27 = *(self + 424);
        [v27 drawableSize];
        v29 = v28;
        v31 = v30;

        if (v26 != v29 || v25 != v31)
        {
          v32 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v65 = *(self + 448);
            v66 = *(self + 456);
            metalMultiplyLayer = [(PKMetalView *)self metalMultiplyLayer];
            [metalMultiplyLayer contentsScale];
            v69 = 134218496;
            v70 = v65;
            v71 = 2048;
            v72 = v66;
            v73 = 2048;
            v74 = v68;
            _os_log_debug_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEBUG, "Resize multiply drawable to: %g %g, contentsScale: %g", &v69, 0x20u);
          }

          v33 = *(self + 448);
          v34 = *(self + 456);
LABEL_37:
          v60 = *(self + 424);
          [v60 setDrawableSize:{v33, v34}];
        }
      }
    }

    else
    {
      v35 = *(self + 416);
      [v35 contentsScale];
      v37 = v3 * v36;

      v38 = *(self + 416);
      [v38 contentsScale];
      v40 = v5 * v39;

      [PKMetalUtility clampedPixelSize:v37, v40];
      v33 = v41;
      v34 = v42;
      v43 = *(self + 416);
      [v43 drawableSize];
      v45 = v44;
      v47 = v46;

      if (v33 != v45 || v34 != v47)
      {
        v49 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v69 = 134218240;
          v70 = v33;
          v71 = 2048;
          v72 = v34;
          _os_log_debug_impl(&dword_1C7CCA000, v49, OS_LOG_TYPE_DEBUG, "Resize drawable to: %g %g", &v69, 0x16u);
        }

        v50 = *(self + 416);
        [v50 setDrawableSize:{v33, v34}];
      }

      v51 = *(self + 424);
      if (v51)
      {
        v52 = v51;
        v53 = *(self + 424);
        [v53 drawableSize];
        v55 = v54;
        v57 = v56;

        if (v33 != v55 || v34 != v57)
        {
          v59 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v69 = 134218240;
            v70 = v33;
            v71 = 2048;
            v72 = v34;
            _os_log_debug_impl(&dword_1C7CCA000, v59, OS_LOG_TYPE_DEBUG, "Resize multiply drawable to: %g %g", &v69, 0x16u);
          }

          goto LABEL_37;
        }
      }
    }
  }
}

- (void)initWithFrame:(char)frame andPixelSize:(double)size pixelFormat:(double)format wantsExtendedDynamicRangeContent:(double)content
{
  if (!self)
  {
    return 0;
  }

  v21.receiver = self;
  v21.super_class = PKMetalView;
  v13 = objc_msgSendSuper2(&v21, sel_initWithFrame_);
  v14 = v13;
  if (v13)
  {
    v13[55] = a2;
    v15 = a8 != *MEMORY[0x1E695F060];
    if (a9 != *(MEMORY[0x1E695F060] + 8))
    {
      v15 = 1;
    }

    *(v13 + 432) = v15;
    *(v13 + 56) = a8;
    *(v13 + 57) = a9;
    *(v13 + 436) = frame;
    v16 = objc_alloc_init(MEMORY[0x1E69793F0]);
    v17 = v14[52];
    v14[52] = v16;
    v18 = v16;

    layer = [v14 layer];
    [layer addSublayer:v18];

    [(PKMetalView *)v14 setupMetalLayer:v18 shouldToneMap:1];
    [(PKMetalView *)v14 resizeDrawableIfNecessary];
    [v14 setUserInteractionEnabled:0];
  }

  return v14;
}

- (void)setPixelFormat:(uint64_t)format
{
  if (format && *(format + 440) != a2)
  {
    *(format + 440) = a2;
    [(PKMetalView *)format flushDrawables];
    [(PKMetalView *)format setupEDROnLayer:1 shouldToneMap:?];
    v4 = objc_opt_self();
    metalMultiplyLayer = [(PKMetalView *)v4 metalMultiplyLayer];
    [(PKMetalView *)format setupEDROnLayer:metalMultiplyLayer shouldToneMap:0];
  }
}

- (uint64_t)flushDrawables
{
  if (result)
  {
    v1 = result;
    [*(result + 416) discardContents];
    [*(v1 + 416) removeBackBuffers];
    [*(v1 + 424) discardContents];
    v2 = *(v1 + 424);

    return [v2 removeBackBuffers];
  }

  return result;
}

- (void)setSixChannelBlending:(uint64_t)blending
{
  if (blending && *(blending + 434) != a2)
  {
    if (a2)
    {
      if (*(blending + 408))
      {
        v3 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "6-channel blending is not allowed with a luminance filter", v15, 2u);
        }
      }

      else
      {
        *(blending + 434) = a2;
        layer = [blending layer];
        [layer setAllowsGroupBlending:0];

        layer2 = [blending layer];
        [layer2 setAllowsGroupOpacity:0];

        v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C58]];
        [*(blending + 416) setCompositingFilter:v9];

        [*(blending + 416) setAllowsGroupOpacity:0];
        if (!*(blending + 424))
        {
          v10 = objc_alloc_init(MEMORY[0x1E69793F0]);
          v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
          [v10 setCompositingFilter:v11];

          [v10 setAllowsGroupOpacity:0];
          v12 = *(blending + 424);
          *(blending + 424) = v10;
          v13 = v10;

          layer3 = [blending layer];
          [layer3 insertSublayer:v13 below:*(blending + 416)];

          [(PKMetalView *)blending setupMetalLayer:v13 shouldToneMap:0];

          [(PKMetalView *)blending resizeDrawableIfNecessary];
        }
      }
    }

    else
    {
      *(blending + 434) = 0;
      layer4 = [blending layer];
      [layer4 setAllowsGroupBlending:1];

      [*(blending + 416) setAllowsGroupOpacity:1];
      [*(blending + 416) setCompositingFilter:0];
      v5 = *(blending + 424);
      if (v5)
      {
        [v5 removeFromSuperlayer];
        v6 = *(blending + 424);
        *(blending + 424) = 0;
      }
    }
  }
}

- (void)setUseLuminanceColorFilter:(uint64_t)filter
{
  if (filter && *(filter + 435) != a2)
  {
    if (a2 && *(filter + 424))
    {
      v4 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Luminance color filter is not allowed with 6-channel blending", buf, 2u);
      }
    }

    else
    {
      [*(filter + 416) removeFromSuperlayer];
      [*(filter + 408) removeFromSuperlayer];
      v5 = *(filter + 408);
      *(filter + 408) = 0;

      *(filter + 435) = a2;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      v7 = defaultCenter;
      if (a2)
      {
        [defaultCenter addObserver:filter selector:sel_accessibilityInvertColorsStatusDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];

        v8 = objc_alloc_init(MEMORY[0x1E6979310]);
        v9 = *(filter + 408);
        *(filter + 408) = v8;

        [*(filter + 408) setReducesCaptureBitDepth:1];
        [*(filter + 408) setIgnoresScreenClip:1];
        [*(filter + 408) setScale:0.25];
        layer = [filter layer];
        [layer addSublayer:*(filter + 408)];

        [*(filter + 408) setMask:*(filter + 416)];
        [filter bounds];
        v12 = v11;
        [filter bounds];
        [*(filter + 408) setFrame:{0.0, 0.0, v12}];
        v13 = *(filter + 408);

        [(PKMetalView *)0.0 installLuminanceColorFilterOnLayer:PKMetalView lightLuma:v13 darkLuma:?];
      }

      else
      {
        [defaultCenter removeObserver:filter name:*MEMORY[0x1E69DD8D8] object:0];

        layer2 = [filter layer];
        [layer2 addSublayer:*(filter + 416)];
      }
    }
  }
}

+ (void)installLuminanceColorFilterOnLayer:(uint64_t)layer lightLuma:(void *)luma darkLuma:
{
  v15[2] = *MEMORY[0x1E69E9840];
  lumaCopy = luma;
  objc_opt_self();
  v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
  [v7 setName:@"gaussianBlur"];
  [v7 setValue:MEMORY[0x1E695E118] forKey:@"inputNormalizeEdges"];
  [v7 setValue:&unk_1F47C1F88 forKeyPath:@"inputRadius"];
  v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C70]];
  objc_opt_self();
  v9 = DKUCreateRGBABitmapContext(0, 256.0, 1.0, 1.0);
  if (v9)
  {
    v10 = v9;
    IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
    if (IsInvertColorsEnabled)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = a2;
    }

    if (!IsInvertColorsEnabled)
    {
      a2 = self;
    }

    CGContextSetRGBFillColor(v10, selfCopy, selfCopy, selfCopy, 1.0);
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.height = 1.0;
    v16.size.width = 128.0;
    CGContextFillRect(v10, v16);
    CGContextSetRGBFillColor(v10, a2, a2, a2, 1.0);
    v17.origin.y = 0.0;
    v17.size.height = 1.0;
    v17.origin.x = 128.0;
    v17.size.width = 128.0;
    CGContextFillRect(v10, v17);
    Image = CGBitmapContextCreateImage(v10);
    CGContextRelease(v10);
  }

  else
  {
    Image = 0;
  }

  [v8 setValue:Image forKey:@"inputColorMap"];

  v15[0] = v7;
  v15[1] = v8;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [lumaCopy setFilters:v14];
}

- (uint64_t)setPresentsWithTransaction:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [*(result + 416) setPresentsWithTransaction:a2];
    v4 = *(v3 + 424);

    return [v4 setPresentsWithTransaction:a2];
  }

  return result;
}

- (void)setWantsExtendedDynamicRangeContent:(uint64_t)content
{
  if (content && *(content + 436) != a2)
  {
    *(content + 436) = a2;
    [(PKMetalView *)content setupEDROnLayer:1 shouldToneMap:?];
    v3 = *(content + 424);

    [(PKMetalView *)content setupEDROnLayer:v3 shouldToneMap:0];
  }
}

- (void)setDoubleBuffered:(uint64_t)buffered
{
  if (buffered)
  {
    if (qword_1EC297208 != -1)
    {
      dispatch_once(&qword_1EC297208, &__block_literal_global_61);
    }

    if (_MergedGlobals_3 == 1 && *(buffered + 433) != a2)
    {
      *(buffered + 433) = a2;
      if (a2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }

      [*(buffered + 416) setMaximumDrawableCount:v4];
      v5 = *(buffered + 424);

      [v5 setMaximumDrawableCount:v4];
    }
  }
}

- (uint64_t)isDrawableAvailable
{
  selfCopy = self;
  if (self)
  {
    v2 = *(self + 416);
    if ([v2 isDrawableAvailable])
    {
      v3 = *(selfCopy + 424);
      if (v3)
      {
        v4 = v3;
        selfCopy = [v4 isDrawableAvailable];
      }

      else
      {
        selfCopy = 1;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)accessibilityInvertColorsStatusDidChange:(id)change
{
  changeCopy = change;
  if (self && self->_useLuminanceColorFilter)
  {
    v5 = changeCopy;
    [(PKMetalView *)0.0 installLuminanceColorFilterOnLayer:PKMetalView lightLuma:self->_backdropLayer darkLuma:?];
    changeCopy = v5;
  }
}

@end