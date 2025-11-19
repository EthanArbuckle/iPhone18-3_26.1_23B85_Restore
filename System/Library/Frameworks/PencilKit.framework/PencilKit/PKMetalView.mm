@interface PKMetalView
+ (void)installLuminanceColorFilterOnLayer:(uint64_t)a3 lightLuma:(void *)a4 darkLuma:;
- (id)metalLayer;
- (id)metalMultiplyLayer;
- (uint64_t)flushDrawables;
- (uint64_t)isDrawableAvailable;
- (uint64_t)setPresentsWithTransaction:(uint64_t)result;
- (void)accessibilityInvertColorsStatusDidChange:(id)a3;
- (void)initWithFrame:(char)a3 andPixelSize:(double)a4 pixelFormat:(double)a5 wantsExtendedDynamicRangeContent:(double)a6;
- (void)resizeDrawableIfNecessary;
- (void)setDoubleBuffered:(uint64_t)a1;
- (void)setPixelFormat:(uint64_t)a1;
- (void)setSixChannelBlending:(uint64_t)a1;
- (void)setUseLuminanceColorFilter:(uint64_t)a1;
- (void)setWantsExtendedDynamicRangeContent:(uint64_t)a1;
- (void)setupEDROnLayer:(int)a3 shouldToneMap:;
- (void)setupMetalLayer:(int)a3 shouldToneMap:;
@end

@implementation PKMetalView

- (id)metalLayer
{
  if (a1)
  {
    a1 = a1[52];
    v1 = vars8;
  }

  return a1;
}

- (id)metalMultiplyLayer
{
  if (a1)
  {
    a1 = a1[53];
    v1 = vars8;
  }

  return a1;
}

- (void)setupEDROnLayer:(int)a3 shouldToneMap:
{
  if (a1 && a2)
  {
    v5 = *MEMORY[0x1E69792A0];
    v6 = *MEMORY[0x1E69792A8];
    if (*(a1 + 436))
    {
      v7 = *MEMORY[0x1E69792A0];
    }

    else
    {
      v7 = *MEMORY[0x1E69792A8];
    }

    v11 = a2;
    [v11 setPreferredDynamicRange:v7];
    if (*(a1 + 436) == 1)
    {
      [v11 setColorspace:+[PKMetalResourceHandler colorSpaceForExtendedDynamicRange]()];
      v8 = MEMORY[0x1E69792D8];
      if (!a3)
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
    [v11 setPixelFormat:*(a1 + 440)];
  }
}

- (void)setupMetalLayer:(int)a3 shouldToneMap:
{
  v6 = a2;
  v5 = +[PKMetalUtility defaultDevice];
  [v6 setDevice:v5];

  [v6 setOpaque:1];
  [v6 setFramebufferOnly:1];
  [(PKMetalView *)a1 setupEDROnLayer:v6 shouldToneMap:a3];
  [v6 setLowLatency:1];
  if (objc_opt_respondsToSelector())
  {
    [v6 setLowWorkload:1];
  }

  [v6 setAllowsDisplayCompositingWithCopy:0];
  if ((*(a1 + 432) & 1) == 0)
  {
    +[PKMetalUtility layerContentsScale];
    [v6 setContentsScale:?];
  }
}

- (void)resizeDrawableIfNecessary
{
  v75 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 frame];
    v3 = v2;
    v5 = v4;
    [*(a1 + 408) setFrame:{0.0, 0.0}];
    v6 = *(a1 + 416);
    [v6 setFrame:{0.0, 0.0, v3, v5}];

    v7 = *(a1 + 424);
    [v7 setFrame:{0.0, 0.0, v3, v5}];

    if (*(a1 + 432) == 1)
    {
      if (v3 > 0.0 && v5 > 0.0)
      {
        if (*(a1 + 448) / v3 >= *(a1 + 456) / v5)
        {
          v8 = *(a1 + 448) / v3;
        }

        else
        {
          v8 = *(a1 + 456) / v5;
        }

        v9 = *(a1 + 416);
        [v9 setContentsScale:v8];

        v10 = *(a1 + 424);
        [v10 setContentsScale:v8];
      }

      v11 = *(a1 + 448);
      v12 = *(a1 + 456);
      v13 = *(a1 + 416);
      [v13 drawableSize];
      v15 = v14;
      v17 = v16;

      if (v11 != v15 || v12 != v17)
      {
        v19 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v61 = *(a1 + 448);
          v62 = *(a1 + 456);
          v63 = [(PKMetalView *)a1 metalLayer];
          [v63 contentsScale];
          v69 = 134218496;
          v70 = v61;
          v71 = 2048;
          v72 = v62;
          v73 = 2048;
          v74 = v64;
          _os_log_debug_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEBUG, "Resize drawable to: %g %g, contentsScale: %g", &v69, 0x20u);
        }

        v20 = *(a1 + 448);
        v21 = *(a1 + 456);
        v22 = *(a1 + 416);
        [v22 setDrawableSize:{v20, v21}];
      }

      v23 = *(a1 + 424);
      if (v23)
      {
        v24 = v23;
        v26 = *(a1 + 448);
        v25 = *(a1 + 456);
        v27 = *(a1 + 424);
        [v27 drawableSize];
        v29 = v28;
        v31 = v30;

        if (v26 != v29 || v25 != v31)
        {
          v32 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v65 = *(a1 + 448);
            v66 = *(a1 + 456);
            v67 = [(PKMetalView *)a1 metalMultiplyLayer];
            [v67 contentsScale];
            v69 = 134218496;
            v70 = v65;
            v71 = 2048;
            v72 = v66;
            v73 = 2048;
            v74 = v68;
            _os_log_debug_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_DEBUG, "Resize multiply drawable to: %g %g, contentsScale: %g", &v69, 0x20u);
          }

          v33 = *(a1 + 448);
          v34 = *(a1 + 456);
LABEL_37:
          v60 = *(a1 + 424);
          [v60 setDrawableSize:{v33, v34}];
        }
      }
    }

    else
    {
      v35 = *(a1 + 416);
      [v35 contentsScale];
      v37 = v3 * v36;

      v38 = *(a1 + 416);
      [v38 contentsScale];
      v40 = v5 * v39;

      [PKMetalUtility clampedPixelSize:v37, v40];
      v33 = v41;
      v34 = v42;
      v43 = *(a1 + 416);
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

        v50 = *(a1 + 416);
        [v50 setDrawableSize:{v33, v34}];
      }

      v51 = *(a1 + 424);
      if (v51)
      {
        v52 = v51;
        v53 = *(a1 + 424);
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

- (void)initWithFrame:(char)a3 andPixelSize:(double)a4 pixelFormat:(double)a5 wantsExtendedDynamicRangeContent:(double)a6
{
  if (!a1)
  {
    return 0;
  }

  v21.receiver = a1;
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
    *(v13 + 436) = a3;
    v16 = objc_alloc_init(MEMORY[0x1E69793F0]);
    v17 = v14[52];
    v14[52] = v16;
    v18 = v16;

    v19 = [v14 layer];
    [v19 addSublayer:v18];

    [(PKMetalView *)v14 setupMetalLayer:v18 shouldToneMap:1];
    [(PKMetalView *)v14 resizeDrawableIfNecessary];
    [v14 setUserInteractionEnabled:0];
  }

  return v14;
}

- (void)setPixelFormat:(uint64_t)a1
{
  if (a1 && *(a1 + 440) != a2)
  {
    *(a1 + 440) = a2;
    [(PKMetalView *)a1 flushDrawables];
    [(PKMetalView *)a1 setupEDROnLayer:1 shouldToneMap:?];
    v4 = objc_opt_self();
    v3 = [(PKMetalView *)v4 metalMultiplyLayer];
    [(PKMetalView *)a1 setupEDROnLayer:v3 shouldToneMap:0];
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

- (void)setSixChannelBlending:(uint64_t)a1
{
  if (a1 && *(a1 + 434) != a2)
  {
    if (a2)
    {
      if (*(a1 + 408))
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
        *(a1 + 434) = a2;
        v7 = [a1 layer];
        [v7 setAllowsGroupBlending:0];

        v8 = [a1 layer];
        [v8 setAllowsGroupOpacity:0];

        v9 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C58]];
        [*(a1 + 416) setCompositingFilter:v9];

        [*(a1 + 416) setAllowsGroupOpacity:0];
        if (!*(a1 + 424))
        {
          v10 = objc_alloc_init(MEMORY[0x1E69793F0]);
          v11 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
          [v10 setCompositingFilter:v11];

          [v10 setAllowsGroupOpacity:0];
          v12 = *(a1 + 424);
          *(a1 + 424) = v10;
          v13 = v10;

          v14 = [a1 layer];
          [v14 insertSublayer:v13 below:*(a1 + 416)];

          [(PKMetalView *)a1 setupMetalLayer:v13 shouldToneMap:0];

          [(PKMetalView *)a1 resizeDrawableIfNecessary];
        }
      }
    }

    else
    {
      *(a1 + 434) = 0;
      v4 = [a1 layer];
      [v4 setAllowsGroupBlending:1];

      [*(a1 + 416) setAllowsGroupOpacity:1];
      [*(a1 + 416) setCompositingFilter:0];
      v5 = *(a1 + 424);
      if (v5)
      {
        [v5 removeFromSuperlayer];
        v6 = *(a1 + 424);
        *(a1 + 424) = 0;
      }
    }
  }
}

- (void)setUseLuminanceColorFilter:(uint64_t)a1
{
  if (a1 && *(a1 + 435) != a2)
  {
    if (a2 && *(a1 + 424))
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
      [*(a1 + 416) removeFromSuperlayer];
      [*(a1 + 408) removeFromSuperlayer];
      v5 = *(a1 + 408);
      *(a1 + 408) = 0;

      *(a1 + 435) = a2;
      v6 = [MEMORY[0x1E696AD88] defaultCenter];
      v7 = v6;
      if (a2)
      {
        [v6 addObserver:a1 selector:sel_accessibilityInvertColorsStatusDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];

        v8 = objc_alloc_init(MEMORY[0x1E6979310]);
        v9 = *(a1 + 408);
        *(a1 + 408) = v8;

        [*(a1 + 408) setReducesCaptureBitDepth:1];
        [*(a1 + 408) setIgnoresScreenClip:1];
        [*(a1 + 408) setScale:0.25];
        v10 = [a1 layer];
        [v10 addSublayer:*(a1 + 408)];

        [*(a1 + 408) setMask:*(a1 + 416)];
        [a1 bounds];
        v12 = v11;
        [a1 bounds];
        [*(a1 + 408) setFrame:{0.0, 0.0, v12}];
        v13 = *(a1 + 408);

        [(PKMetalView *)0.0 installLuminanceColorFilterOnLayer:PKMetalView lightLuma:v13 darkLuma:?];
      }

      else
      {
        [v6 removeObserver:a1 name:*MEMORY[0x1E69DD8D8] object:0];

        v14 = [a1 layer];
        [v14 addSublayer:*(a1 + 416)];
      }
    }
  }
}

+ (void)installLuminanceColorFilterOnLayer:(uint64_t)a3 lightLuma:(void *)a4 darkLuma:
{
  v15[2] = *MEMORY[0x1E69E9840];
  v6 = a4;
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
      v12 = a1;
    }

    else
    {
      v12 = a2;
    }

    if (!IsInvertColorsEnabled)
    {
      a2 = a1;
    }

    CGContextSetRGBFillColor(v10, v12, v12, v12, 1.0);
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
  [v6 setFilters:v14];
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

- (void)setWantsExtendedDynamicRangeContent:(uint64_t)a1
{
  if (a1 && *(a1 + 436) != a2)
  {
    *(a1 + 436) = a2;
    [(PKMetalView *)a1 setupEDROnLayer:1 shouldToneMap:?];
    v3 = *(a1 + 424);

    [(PKMetalView *)a1 setupEDROnLayer:v3 shouldToneMap:0];
  }
}

- (void)setDoubleBuffered:(uint64_t)a1
{
  if (a1)
  {
    if (qword_1EC297208 != -1)
    {
      dispatch_once(&qword_1EC297208, &__block_literal_global_61);
    }

    if (_MergedGlobals_3 == 1 && *(a1 + 433) != a2)
    {
      *(a1 + 433) = a2;
      if (a2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }

      [*(a1 + 416) setMaximumDrawableCount:v4];
      v5 = *(a1 + 424);

      [v5 setMaximumDrawableCount:v4];
    }
  }
}

- (uint64_t)isDrawableAvailable
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 416);
    if ([v2 isDrawableAvailable])
    {
      v3 = *(v1 + 424);
      if (v3)
      {
        v4 = v3;
        v1 = [v4 isDrawableAvailable];
      }

      else
      {
        v1 = 1;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)accessibilityInvertColorsStatusDidChange:(id)a3
{
  v4 = a3;
  if (self && self->_useLuminanceColorFilter)
  {
    v5 = v4;
    [(PKMetalView *)0.0 installLuminanceColorFilterOnLayer:PKMetalView lightLuma:self->_backdropLayer darkLuma:?];
    v4 = v5;
  }
}

@end