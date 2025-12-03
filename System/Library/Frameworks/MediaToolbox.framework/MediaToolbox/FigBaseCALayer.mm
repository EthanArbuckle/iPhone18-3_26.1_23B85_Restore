@interface FigBaseCALayer
- (FigBaseCALayer)init;
- (FigBaseCALayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)transaction;
- (float)getDisplayScale;
- (id)actionForKey:(id)key;
- (id)getLayerDisplay;
- (uint64_t)layoutSublayers;
- (void)addSublayer:(id)sublayer;
- (void)dealloc;
- (void)enableDRMFallback;
- (void)insertSublayer:(id)sublayer above:(id)above;
- (void)insertSublayer:(id)sublayer atIndex:(unsigned int)index;
- (void)insertSublayer:(id)sublayer below:(id)below;
- (void)layoutDRMLayerPositionsAndSizes;
- (void)layoutSublayers;
- (void)removeFromSuperlayer;
- (void)replaceSublayer:(id)sublayer with:(id)with;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setNeedsDisplay;
- (void)setPosition:(CGPoint)position;
- (void)setSublayers:(id)sublayers;
@end

@implementation FigBaseCALayer

- (FigBaseCALayer)init
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v7.receiver = self;
  v7.super_class = FigBaseCALayer;
  v3 = [(FigBaseCALayer *)&v7 init];
  v4 = v3;
  if (v3)
  {
    [(FigBaseCALayer *)v3 getDisplayScale];
    [(FigBaseCALayer *)v4 setContentsScale:v5];
    v4->_enabledDRMFallback = 0;
  }

  return v4;
}

- (FigBaseCALayer)initWithDeferredTransaction:(OpaqueFigDeferredTransaction *)transaction
{
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v9.receiver = self;
  v9.super_class = FigBaseCALayer;
  v5 = [(FigBaseCALayer *)&v9 init];
  if (!v5)
  {
    return v5;
  }

  if (!transaction)
  {
    if (FigDeferredTransactionCreate(*MEMORY[0x1E695E480], &cf))
    {
LABEL_6:

      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    transaction = cf;
  }

  [(FigBaseCALayer *)v5 getDisplayScale];
  v7 = FBLSupportAppendDeferredTransactionChangeToSetContentsScaleForFigCALayer(transaction, v5, "[FigBaseCALayer initWithDeferredTransaction:]", v6);
  v5->_enabledDRMFallback = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  if (cf)
  {
    FigDeferredTransactionCommit(cf, 0);
    CFRelease(cf);
  }

  return v5;
}

- (id)actionForKey:(id)key
{
  if (([key isEqualToString:@"contentsCDRStrength"] & 1) == 0 && (objc_msgSend(key, "isEqualToString:", @"contentsEDRStrength") & 1) == 0 && !objc_msgSend(key, "isEqualToString:", @"preferredDynamicRange"))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = FigBaseCALayer;
  return [(FigBaseCALayer *)&v6 actionForKey:key];
}

- (void)setSublayers:(id)sublayers
{
  if (!self->_preventsChangesToSublayerHierarchy)
  {
    v3.receiver = self;
    v3.super_class = FigBaseCALayer;
    [(FigBaseCALayer *)&v3 setSublayers:sublayers];
  }
}

- (void)addSublayer:(id)sublayer
{
  if (!self->_preventsChangesToSublayerHierarchy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5.receiver = self;
    v5.super_class = FigBaseCALayer;
    [(FigBaseCALayer *)&v5 addSublayer:sublayer];
  }
}

- (void)insertSublayer:(id)sublayer atIndex:(unsigned int)index
{
  if (!self->_preventsChangesToSublayerHierarchy)
  {
    v4.receiver = self;
    v4.super_class = FigBaseCALayer;
    [(FigBaseCALayer *)&v4 insertSublayer:sublayer atIndex:*&index];
  }
}

- (void)insertSublayer:(id)sublayer below:(id)below
{
  if (!self->_preventsChangesToSublayerHierarchy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7.receiver = self;
    v7.super_class = FigBaseCALayer;
    [(FigBaseCALayer *)&v7 insertSublayer:sublayer below:below];
  }
}

- (void)insertSublayer:(id)sublayer above:(id)above
{
  if (!self->_preventsChangesToSublayerHierarchy)
  {
    v4.receiver = self;
    v4.super_class = FigBaseCALayer;
    [(FigBaseCALayer *)&v4 insertSublayer:sublayer above:above];
  }
}

- (void)replaceSublayer:(id)sublayer with:(id)with
{
  if (!self->_preventsChangesToSublayerHierarchy)
  {
    v4.receiver = self;
    v4.super_class = FigBaseCALayer;
    [(FigBaseCALayer *)&v4 replaceSublayer:sublayer with:with];
  }
}

- (void)removeFromSuperlayer
{
  v2.receiver = self;
  v2.super_class = FigBaseCALayer;
  [(FigBaseCALayer *)&v2 removeFromSuperlayer];
}

- (id)getLayerDisplay
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [-[FigBaseCALayer context](self "context")];
  v3 = [v2 objectForKey:*MEMORY[0x1E69796A0]];
  if (v3)
  {
    v4 = v3;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    displays = [MEMORY[0x1E6979328] displays];
    v6 = [displays countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(displays);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([objc_msgSend(v11 "deviceName")])
          {
            v8 = v11;
          }
        }

        v7 = [displays countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
      return v8;
    }

    return 0;
  }

  if (![objc_msgSend(MEMORY[0x1E6979328] "displays")])
  {
    return 0;
  }

  displays2 = [MEMORY[0x1E6979328] displays];

  return [displays2 objectAtIndex:0];
}

- (float)getDisplayScale
{
  if (registerOnce != -1)
  {
    [FigBaseCALayer getDisplayScale];
  }

  return *&sMaxDisplayScale_0;
}

- (void)setNeedsDisplay
{
  if (registerOnce != -1)
  {
    [FigBaseCALayer getDisplayScale];
  }

  v3 = *&sMaxDisplayScale_0;
  [(FigBaseCALayer *)self contentsScale];
  if (v4 != v3)
  {
    [(FigBaseCALayer *)self setContentsScale:?];
  }

  v5.receiver = self;
  v5.super_class = FigBaseCALayer;
  [(FigBaseCALayer *)&v5 setNeedsDisplay];
}

- (void)enableDRMFallback
{
  if (_os_feature_enabled_impl())
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__FigBaseCALayer_enableDRMFallback__block_invoke;
    block[3] = &unk_1E7482608;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __35__FigBaseCALayer_enableDRMFallback__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 88) & 1) == 0)
  {
    SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 0.85);
    v3 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"DRMFallbackText", &stru_1F0B1AFB8, @"Localizable"}];
    Mutable = CGPathCreateMutable();
    v5 = CGPathCreateMutable();
    v6 = CGPathCreateMutable();
    CGPathMoveToPoint(v5, 0, 0.0, 384.961);
    CGPathAddLineToPoint(v5, 0, 47.168, 384.961);
    CGPathAddLineToPoint(v5, 0, 47.168, 446.191);
    CGPathAddCurveToPoint(v5, 0, 47.168, 476.66, 63.2812, 492.187, 92.5781, 492.187);
    CGPathAddLineToPoint(v5, 0, 153.223, 492.187);
    CGPathAddLineToPoint(v5, 0, 153.223, 539.355);
    CGPathAddLineToPoint(v5, 0, 91.9922, 539.355);
    CGPathAddCurveToPoint(v5, 0, 30.7617, 539.355, 0.0, 509.179, 0.0, 448.535);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 0.0, 194.531);
    CGPathAddLineToPoint(v5, 0, 47.168, 194.531);
    CGPathAddLineToPoint(v5, 0, 47.168, 344.824);
    CGPathAddLineToPoint(v5, 0, 0.0, 344.824);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 91.9922, 0.0);
    CGPathAddLineToPoint(v5, 0, 153.223, 0.0);
    CGPathAddLineToPoint(v5, 0, 153.223, 47.168);
    CGPathAddLineToPoint(v5, 0, 92.5781, 47.168);
    CGPathAddCurveToPoint(v5, 0, 63.2812, 47.168, 47.168, 62.695, 47.168, 93.164);
    CGPathAddLineToPoint(v5, 0, 47.168, 154.394);
    CGPathAddLineToPoint(v5, 0, 0.0, 154.394);
    CGPathAddLineToPoint(v5, 0, 0.0, 90.82);
    CGPathAddCurveToPoint(v5, 0, 0.0, 30.175, 30.7617, 0.0, 91.9922, 0.0);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 193.359, 0.0);
    CGPathAddLineToPoint(v5, 0, 325.488, 0.0);
    CGPathAddLineToPoint(v5, 0, 325.488, 47.168);
    CGPathAddLineToPoint(v5, 0, 193.359, 47.168);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 365.332, 0.0);
    CGPathAddLineToPoint(v5, 0, 497.461, 0.0);
    CGPathAddLineToPoint(v5, 0, 497.461, 47.168);
    CGPathAddLineToPoint(v5, 0, 365.332, 47.168);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 598.828, 0.0);
    CGPathAddCurveToPoint(v5, 0, 660.059, 0.0, 690.82, 30.175, 690.82, 90.82);
    CGPathAddLineToPoint(v5, 0, 690.82, 154.394);
    CGPathAddLineToPoint(v5, 0, 643.652, 154.394);
    CGPathAddLineToPoint(v5, 0, 643.652, 93.164);
    CGPathAddCurveToPoint(v5, 0, 643.652, 62.695, 627.539, 47.168, 598.242, 47.168);
    CGPathAddLineToPoint(v5, 0, 537.598, 47.168);
    CGPathAddLineToPoint(v5, 0, 537.598, 0.0);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 690.82, 384.961);
    CGPathAddLineToPoint(v5, 0, 690.82, 448.535);
    CGPathAddCurveToPoint(v5, 0, 690.82, 509.179, 660.059, 539.355, 598.828, 539.355);
    CGPathAddLineToPoint(v5, 0, 537.598, 539.355);
    CGPathAddLineToPoint(v5, 0, 537.598, 492.187);
    CGPathAddLineToPoint(v5, 0, 598.242, 492.187);
    CGPathAddCurveToPoint(v5, 0, 627.539, 492.187, 643.652, 476.66, 643.652, 446.191);
    CGPathAddLineToPoint(v5, 0, 643.652, 384.961);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 690.82, 194.531);
    CGPathAddLineToPoint(v5, 0, 690.82, 344.824);
    CGPathAddLineToPoint(v5, 0, 643.652, 344.824);
    CGPathAddLineToPoint(v5, 0, 643.652, 194.531);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 193.359, 492.187);
    CGPathAddLineToPoint(v5, 0, 325.488, 492.187);
    CGPathAddLineToPoint(v5, 0, 325.488, 539.355);
    CGPathAddLineToPoint(v5, 0, 193.359, 539.355);
    CGPathCloseSubpath(v5);
    CGPathMoveToPoint(v5, 0, 365.332, 492.187);
    CGPathAddLineToPoint(v5, 0, 497.461, 492.187);
    CGPathAddLineToPoint(v5, 0, 497.461, 539.355);
    CGPathAddLineToPoint(v5, 0, 365.332, 539.355);
    CGPathCloseSubpath(v5);
    *cp2y = *(MEMORY[0x1E695EFD0] + 16);
    *v26 = *MEMORY[0x1E695EFD0];
    *&m.m11 = *v26;
    *&m.m13 = *cp2y;
    v24 = *(MEMORY[0x1E695EFD0] + 32);
    *&m.m21 = v24;
    *&v31.m11 = *v26;
    *&v31.m13 = *cp2y;
    *&v31.m21 = v24;
    CGAffineTransformTranslate(&m, &v31, -346.0, -270.0);
    CGPathAddPath(Mutable, &m, v5);
    CGPathMoveToPoint(v6, 0, 0.0, 32.226);
    CGPathAddCurveToPoint(v6, 0, 0.0, 10.253, 9.668, 0.0, 30.176, 0.0);
    CGPathAddLineToPoint(v6, 0, 181.934, 0.0);
    CGPathAddCurveToPoint(v6, 0, 202.149, 0.0, 211.817, 10.253, 211.817, 32.226);
    CGPathAddLineToPoint(v6, 0, 211.817, 148.828);
    CGPathAddCurveToPoint(v6, 0, 211.817, 169.335, 203.321, 179.296, 186.036, 180.468);
    CGPathAddLineToPoint(v6, 0, 186.036, 215.332);
    CGPathAddCurveToPoint(v6, 0, 186.036, 269.238, 153.809, 305.273, 106.055, 305.273);
    CGPathAddCurveToPoint(v6, 0, 58.301, 305.273, 26.075, 269.238, 26.075, 215.332);
    CGPathAddLineToPoint(v6, 0, 26.075, 180.468);
    CGPathAddCurveToPoint(v6, 0, 8.497, 179.296, 0.0, 169.335, 0.0, 148.828);
    CGPathCloseSubpath(v6);
    CGPathMoveToPoint(v6, 0, 56.543, 180.761);
    CGPathAddLineToPoint(v6, 0, 56.543, 218.554);
    CGPathAddCurveToPoint(v6, 0, 56.543, 252.832, 76.172, 275.683, 106.055, 275.683);
    CGPathAddCurveToPoint(v6, 0, 135.645, 275.683, 155.567, 252.832, 155.567, 218.554);
    CGPathAddLineToPoint(v6, 0, 155.567, 180.761);
    CGPathCloseSubpath(v6);
    *&m.m11 = *v26;
    *&m.m13 = *cp2y;
    *&m.m21 = v24;
    *&v30.m11 = *v26;
    *&v30.m13 = *cp2y;
    *&v30.m21 = v24;
    CGAffineTransformTranslate(&v31, &v30, -106.0, -146.0);
    *&m.m11 = *&v31.m11;
    *&m.m13 = *&v31.m13;
    *&m.m21 = *&v31.m21;
    CGPathAddPath(Mutable, &m, v6);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(a1 + 32) setAllowedContentsHideSublayers:1];
    *(*(a1 + 32) + 56) = objc_alloc_init(MEMORY[0x1E69794A0]);
    [*(*(a1 + 32) + 56) setPath:Mutable];
    [*(*(a1 + 32) + 56) setFillColor:SRGB];
    [*(*(a1 + 32) + 56) setAllowsEdgeAntialiasing:1];
    *(*(a1 + 32) + 72) = 0x4085A00000000000;
    *(*(a1 + 32) + 80) = 0x4080E00000000000;
    [*(a1 + 32) bounds];
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    MidX = CGRectGetMidX(v33);
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    [*(*(a1 + 32) + 56) setPosition:{MidX, CGRectGetMidY(v34)}];
    [*(a1 + 32) bounds];
    v14 = *(*(a1 + 32) + 72);
    v15.f64[0] = v12;
    v15.f64[1] = v13;
    v16 = 1.0;
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(v14), vceqzq_f64(v15)))) & 1) == 0)
    {
      v17 = v12 / v14.f64[0];
      v14.f64[0] = v13 / v14.f64[1];
      if (v17 < v13 / v14.f64[1])
      {
        v14.f64[0] = v17;
      }

      v16 = v14.f64[0] / 3.0;
    }

    memset(&m, 0, sizeof(m));
    CATransform3DMakeRotation(&m, 3.14159265, 1.0, 0.0, 0.0);
    v30 = m;
    CATransform3DScale(&v31, &v30, v16, v16, 1.0);
    m = v31;
    [*(*(a1 + 32) + 56) setTransform:&v31];
    *(*(a1 + 32) + 64) = objc_alloc_init(MEMORY[0x1E6979508]);
    [*(a1 + 32) bounds];
    v18 = v35.origin.x;
    v19 = v35.origin.y;
    v20 = v35.size.width;
    v21 = v35.size.height;
    v22 = CGRectGetMidX(v35);
    v36.origin.x = v18;
    v36.origin.y = v19;
    v36.size.width = v20;
    v36.size.height = v21;
    v23 = CGRectGetMidY(v36) + v21 * 0.25;
    [*(*(a1 + 32) + 64) setBounds:{v18, v19, v20 * 0.5, v21 * 0.125}];
    [*(*(a1 + 32) + 64) setPosition:{v22, v23}];
    [*(*(a1 + 32) + 64) setAlignmentMode:*MEMORY[0x1E6979560]];
    [*(*(a1 + 32) + 64) setWrapped:0];
    [*(*(a1 + 32) + 64) setString:v3];
    [*(a1 + 32) addSublayer:*(*(a1 + 32) + 64)];
    [*(a1 + 32) addSublayer:*(*(a1 + 32) + 56)];
    figUpdateFontSizeForDRMFallbackTextLayer(*(*(a1 + 32) + 64));
    [MEMORY[0x1E6979518] commit];
    objc_initWeak(&v31, *(*(a1 + 32) + 56));
    objc_initWeak(&v30, *(*(a1 + 32) + 64));
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __35__FigBaseCALayer_enableDRMFallback__block_invoke_2;
    v27[3] = &unk_1E748F4A0;
    objc_copyWeak(&v28, &v31);
    objc_copyWeak(&v29, &v30);
    *(*(a1 + 32) + 96) = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    *(*(a1 + 32) + 104) = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v31);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (SRGB)
    {
      CFRelease(SRGB);
    }

    *(*(a1 + 32) + 88) = 1;
  }
}

void __35__FigBaseCALayer_enableDRMFallback__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak((a1 + 32));
  v3 = objc_loadWeak((a1 + 40));
  if (dword_1ED4CBE50)
  {
    v8 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Weak | v3)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [Weak setHidden:1];
    [v3 setHidden:1];
    [MEMORY[0x1E6979518] commit];
    v5 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__FigBaseCALayer_enableDRMFallback__block_invoke_49;
    block[3] = &unk_1E7483A30;
    block[4] = Weak;
    block[5] = v3;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __35__FigBaseCALayer_enableDRMFallback__block_invoke_49(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [*(a1 + 32) setHidden:0];
  [*(a1 + 40) setHidden:0];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (void)layoutDRMLayerPositionsAndSizes
{
  if (self->_enabledDRMFallback)
  {
    v31 = v9;
    v32 = v8;
    v33 = v7;
    v34 = v6;
    v35 = v5;
    v36 = v4;
    v37 = v2;
    v38 = v3;
    [(FigBaseCALayer *)self bounds];
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    MidX = CGRectGetMidX(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    [(CAShapeLayer *)self->_DRMFallbackIconLayer setPosition:MidX, CGRectGetMidY(v40)];
    [(FigBaseCALayer *)self bounds];
    DRMFallbackIconSize = self->_DRMFallbackIconSize;
    v19.f64[0] = v16;
    v19.f64[1] = v17;
    v20 = 1.0;
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(DRMFallbackIconSize), vceqzq_f64(v19)))) & 1) == 0)
    {
      v21 = v16 / DRMFallbackIconSize.width;
      DRMFallbackIconSize.width = v17 / DRMFallbackIconSize.height;
      if (v21 < v17 / DRMFallbackIconSize.height)
      {
        DRMFallbackIconSize.width = v21;
      }

      v20 = DRMFallbackIconSize.width / 3.0;
    }

    memset(&v30, 0, sizeof(v30));
    CATransform3DMakeRotation(&v30, 3.14159265, 1.0, 0.0, 0.0);
    v28 = v30;
    CATransform3DScale(&v29, &v28, v20, v20, 1.0);
    v30 = v29;
    [(CAShapeLayer *)self->_DRMFallbackIconLayer setTransform:&v29];
    [(FigBaseCALayer *)self bounds];
    v22 = v41.origin.x;
    v23 = v41.origin.y;
    v24 = v41.size.width;
    v25 = v41.size.height;
    v26 = CGRectGetMidX(v41);
    v42.origin.x = v22;
    v42.origin.y = v23;
    v42.size.width = v24;
    v42.size.height = v25;
    v27 = CGRectGetMidY(v42) + v25 * 0.25;
    [(CATextLayer *)self->_DRMFallbackTextLayer setBounds:v22, v23, v24 * 0.5, v25 * 0.125];
    [(CATextLayer *)self->_DRMFallbackTextLayer setPosition:v26, v27];
  }
}

- (void)layoutSublayers
{
  if (self->_enabledDRMFallback)
  {
    [(FigBaseCALayer *)self layoutSublayers];
  }

  else
  {
    v2.receiver = self;
    v2.super_class = FigBaseCALayer;
    [(FigBaseCALayer *)&v2 layoutSublayers];
  }
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = FigBaseCALayer;
  [(FigBaseCALayer *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (self->_enabledDRMFallback)
  {
    [(FigBaseCALayer *)self layoutDRMLayerPositionsAndSizes];
  }
}

- (void)setPosition:(CGPoint)position
{
  v14.receiver = self;
  v14.super_class = FigBaseCALayer;
  [(FigBaseCALayer *)&v14 setPosition:position.x, position.y];
  if (self->_enabledDRMFallback)
  {
    [(FigBaseCALayer *)self bounds];
    x = v15.origin.x;
    y = v15.origin.y;
    width = v15.size.width;
    height = v15.size.height;
    MidX = CGRectGetMidX(v15);
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    [(CAShapeLayer *)self->_DRMFallbackIconLayer setPosition:MidX, CGRectGetMidY(v16)];
    [(FigBaseCALayer *)self bounds];
    v9 = v17.origin.x;
    v10 = v17.origin.y;
    v11 = v17.size.width;
    v12 = v17.size.height;
    v13 = CGRectGetMidX(v17);
    v18.origin.x = v9;
    v18.origin.y = v10;
    v18.size.width = v11;
    v18.size.height = v12;
    [(CATextLayer *)self->_DRMFallbackTextLayer setPosition:v13, CGRectGetMidY(v18) + v12 * 0.25];
  }
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = FigBaseCALayer;
  [(FigBaseCALayer *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (self->_enabledDRMFallback)
  {
    [(FigBaseCALayer *)self layoutDRMLayerPositionsAndSizes];
  }
}

- (void)dealloc
{
  if (self->_snapshotObserverForAppKit)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_snapshotObserverForAppKit = 0;
  }

  if (self->_snapshotObserverForWebKit)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    self->_snapshotObserverForWebKit = 0;
  }

  self->_DRMFallbackIconLayer = 0;
  self->_DRMFallbackTextLayer = 0;
  v3.receiver = self;
  v3.super_class = FigBaseCALayer;
  [(FigBaseCALayer *)&v3 dealloc];
}

- (uint64_t)layoutSublayers
{
  [self layoutDRMLayerPositionsAndSizes];
  v2 = self[8];

  return figUpdateFontSizeForDRMFallbackTextLayer(v2);
}

@end