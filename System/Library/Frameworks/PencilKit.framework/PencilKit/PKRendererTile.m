@interface PKRendererTile
+ (double)layerFrameForLevel:(uint64_t)a3 offset:(uint64_t)a4;
+ (void)drawingFrameForLayerFrame:(CGFloat)a3 drawingTransform:(CGFloat)a4 contentScale:(double)a5;
- (PKRendererTileProperties)properties;
- (double)tileLayer;
- (double)tileMultiplyLayer;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)framebuffer;
- (id)initWithLevel:(__int128 *)a3 offset:(char)a4 drawingTransform:(char)a5 contentsScale:(char)a6 sixChannelMode:(double)a7 transparentBlending:(double)a8 wantsExtendedDynamicRangeContent:(double)a9;
- (id)multiplyFramebuffer;
- (uint64_t)_clearFramebuffers;
- (uint64_t)_lockAndSetFramebuffer:(uint64_t)a1;
- (uint64_t)_lockAndSetMultiplyFramebuffer:(uint64_t)a1;
- (uint64_t)hasContents;
- (uint64_t)lockAndSetFramebufferThreadSafe:(uint64_t)a1;
- (uint64_t)lockAndSetMultiplyFramebufferThreadSafe:(uint64_t)a1;
- (uint64_t)recreatePurgedTileLayersIfPossible;
- (void)clearFramebuffersThreadSafe;
- (void)dealloc;
- (void)purgeTileLayers;
- (void)updateDisableTransactionActions:(int)a3 reloadContents:;
- (void)updateLastUsedTimestamp;
@end

@implementation PKRendererTile

- (id)initWithLevel:(__int128 *)a3 offset:(char)a4 drawingTransform:(char)a5 contentsScale:(char)a6 sixChannelMode:(double)a7 transparentBlending:(double)a8 wantsExtendedDynamicRangeContent:(double)a9
{
  if (!a1)
  {
    return 0;
  }

  v40.receiver = a1;
  v40.super_class = PKRendererTile;
  v17 = objc_msgSendSuper2(&v40, sel_init);
  v18 = v17;
  if (v17)
  {
    v19 = [MEMORY[0x1E696AFB0] UUID];
    v20 = *(v17 + 15);
    *(v17 + 15) = v19;

    *(v17 + 21) = a7;
    *(v17 + 22) = a8;
    v21 = *(v17 + 17);
    v22 = MEMORY[0x1E695E0F0];
    *(v17 + 16) = a2;
    *(v17 + 17) = v22;

    *(v17 + 82) = a4;
    *(v17 + 83) = a5;
    v23 = *a3;
    v24 = a3[2];
    *(v17 + 3) = a3[1];
    *(v17 + 4) = v24;
    *(v17 + 2) = v23;
    *(v17 + 84) = a6;
    *(v17 + 19) = a9;
    atomic_store(*&a9, v17 + 1);
    [*(v17 + 11) setContentsScale:a9];
    [*(v17 + 12) setContentsScale:a9];
    v37 = *a3;
    v38 = a3[1];
    v39 = a3[2];
    v25 = [(PKRendererTile *)*(v17 + 21) layerFrameForLevel:PKRendererTile offset:*(v17 + 16)];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v41[0] = v37;
    v41[1] = v38;
    v41[2] = v39;
    [(PKRendererTile *)v25 drawingFrameForLayerFrame:v26 drawingTransform:v28 contentScale:v30, *(v17 + 19), PKRendererTile, v41];
    *(v17 + 23) = v32;
    *(v17 + 24) = v33;
    *(v17 + 25) = v34;
    *(v17 + 26) = v35;
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      *(v17 + 27) = v25;
      *(v17 + 28) = v27;
      *(v17 + 29) = v29;
      *(v17 + 30) = v31;
      [(PKRendererTile *)v17 updateLastUsedTimestamp];
      [*(v17 + 11) setFrame:{v25, v27, v29, v31}];
      [*(v17 + 12) setFrame:{v25, v27, v29, v31}];
    }

    *(v17 + 20) = 0;
    [*(v17 + 11) setOpacity:{0.0, v37, v38, v39}];
    [*(v17 + 12) setOpacity:0.0];
    [(PKRendererTile *)v17 updateLastUsedTimestamp];
  }

  return v18;
}

- (void)updateLastUsedTimestamp
{
  if (a1)
  {
    v3 = [MEMORY[0x1E696AE30] processInfo];
    [v3 systemUptime];
    atomic_store(v2, (a1 + 24));
  }
}

- (void)dealloc
{
  v3 = self->_tileLayer;
  v4 = self->_tileMultiplyLayer;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __25__PKRendererTile_dealloc__block_invoke;
  aBlock[3] = &unk_1E82D6890;
  v5 = v3;
  v11 = v5;
  v6 = v4;
  v12 = v6;
  v7 = _Block_copy(aBlock);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  if (self->_framebufferIsLocked)
  {
    [(PKMetalFramebuffer *)self->_framebuffer decrementNonPurgeableCount];
  }

  if (self->_multiplyFramebufferIsLocked)
  {
    [(PKMetalFramebuffer *)self->_multiplyFramebuffer decrementNonPurgeableCount];
  }

  v8 = +[PKRendererTileController sharedController];
  [(PKRendererTileController *)v8 didTeardownTile:?];

  v9.receiver = self;
  v9.super_class = PKRendererTile;
  [(PKRendererTile *)&v9 dealloc];
}

void __25__PKRendererTile_dealloc__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) superlayer];

  if (v2)
  {
    v3 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_INFO, "Removed tileLayer from superlayer", buf, 2u);
    }

    [*(a1 + 32) removeFromSuperlayer];
  }

  v4 = [*(a1 + 40) superlayer];

  if (v4)
  {
    v5 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_INFO, "Removed tileMultiplyLayer from superlayer", v6, 2u);
    }

    [*(a1 + 40) removeFromSuperlayer];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PKRendererTile alloc];
  level = self->_level;
  x = self->_offset.x;
  y = self->_offset.y;
  v8 = *&self->_drawingTransform.c;
  v17[0] = *&self->_drawingTransform.a;
  v17[1] = v8;
  v17[2] = *&self->_drawingTransform.tx;
  v9 = [(PKRendererTile *)v4 initWithLevel:v17 offset:self->_sixChannelMode drawingTransform:self->_transparentBlending contentsScale:self->_wantsExtendedDynamicRangeContent sixChannelMode:x transparentBlending:y wantsExtendedDynamicRangeContent:self->_contentsScale];
  v10 = v9;
  if (v9)
  {
    v11 = self->_frame.origin.x;
    v12 = self->_frame.origin.y;
    width = self->_frame.size.width;
    height = self->_frame.size.height;
    v9[27] = v11;
    v9[28] = v12;
    v9[29] = width;
    v9[30] = height;
    [(PKRendererTile *)v9 updateLastUsedTimestamp];
    [*(v10 + 11) setFrame:{v11, v12, width, height}];
    [*(v10 + 12) setFrame:{v11, v12, width, height}];
  }

  origin = self->_drawingFrame.origin;
  *(v10 + 25) = self->_drawingFrame.size;
  *(v10 + 23) = origin;
  return v10;
}

- (PKRendererTileProperties)properties
{
  if (a1)
  {
    v2 = a1;
    v3 = [PKRendererTileProperties alloc];
    a = v2[1]._drawingTransform.a;
    ty = v2[1]._drawingTransform.ty;
    v6 = *&v2[2].super.isa;
    v7 = *&v2->_drawingTransform.b;
    v9[0] = *&v2->_offset.y;
    v9[1] = v7;
    v9[2] = *&v2->_drawingTransform.d;
    a1 = [(PKRendererTileProperties *)v3 initWithLevel:*&a offset:v9 drawingTransform:BYTE2(v2->_drawingTransform.ty) sixChannelMode:BYTE3(v2->_drawingTransform.ty) transparentBlending:BYTE4(v2->_drawingTransform.ty) extendedDynamicRange:ty, v6];
    v1 = vars8;
  }

  return a1;
}

+ (double)layerFrameForLevel:(uint64_t)a3 offset:(uint64_t)a4
{
  objc_opt_self();
  objc_opt_self();
  v7 = round(exp2(a4) * 256.0);

  return DKDRoundedRectForScale(a1 * v7, a2 * v7, v7, v7, 1.0);
}

+ (void)drawingFrameForLayerFrame:(CGFloat)a3 drawingTransform:(CGFloat)a4 contentScale:(double)a5
{
  objc_opt_self();
  v13 = a7[1];
  *&v14.a = *a7;
  *&v14.c = v13;
  *&v14.tx = a7[2];
  CGAffineTransformInvert(&v15, &v14);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  DKDRoundedRectForScale(v17.origin.x, v17.origin.y, v17.size.width, v17.size.height, a5);
}

- (void)updateDisableTransactionActions:(int)a3 reloadContents:
{
  if (a1)
  {
    [MEMORY[0x1E6979518] begin];
    if ((*(a1 + 86) & 1) != 0 || a2)
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    if (a3)
    {
      [*(a1 + 88) reloadValueForKeyPath:@"contents"];
      [*(a1 + 96) reloadValueForKeyPath:@"contents"];
    }

    *(a1 + 160) = 0x3FF0000000000000;
    LODWORD(v6) = 1.0;
    [*(a1 + 88) setOpacity:v6];
    LODWORD(v7) = 1.0;
    [*(a1 + 96) setOpacity:v7];
    [MEMORY[0x1E6979518] commit];

    [(PKRendererTile *)a1 updateLastUsedTimestamp];
  }
}

- (double)tileLayer
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 11);
    if (v2)
    {
LABEL_20:
      a1 = v2;
      goto LABEL_21;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = objc_alloc_init(MEMORY[0x1E6979398]);
    v4 = *(v1 + 11);
    *(v1 + 11) = v3;

    [*(v1 + 11) setFrame:{v1[27], v1[28], v1[29], v1[30]}];
    [*(v1 + 11) setContentsScale:v1[19]];
    [*(v1 + 11) setHidden:*(v1 + 86)];
    v5 = v1[20];
    *&v5 = v5;
    [*(v1 + 11) setOpacity:v5];
    [*(v1 + 11) setAllowsGroupOpacity:0];
    if (*(v1 + 84))
    {
      v6 = MEMORY[0x1E69792D8];
    }

    else
    {
      v6 = MEMORY[0x1E69792D0];
    }

    [*(v1 + 11) setToneMapMode:*v6];
    v7 = 0.0;
    if (*(v1 + 84))
    {
      v7 = 4.0;
    }

    [*(v1 + 11) setContentsHeadroom:v7];
    if (*(v1 + 84))
    {
      v8 = MEMORY[0x1E69792A0];
    }

    else
    {
      v8 = MEMORY[0x1E69792A8];
    }

    [*(v1 + 11) setPreferredDynamicRange:*v8];
    v9 = *(v1 + 13);
    if (!v9 || *(v1 + 80) != 1)
    {
LABEL_19:
      [MEMORY[0x1E6979518] commit];
      v2 = *(v1 + 11);
      goto LABEL_20;
    }

    if (*(v1 + 82))
    {
      v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C58]];
      [*(v1 + 11) setCompositingFilter:v10];

      v9 = *(v1 + 13);
      v11 = *(v1 + 11);
      if (!v9)
      {
        v12 = 0;
LABEL_18:
        [v11 setContents:v12];
        goto LABEL_19;
      }
    }

    else
    {
      v11 = *(v1 + 11);
    }

    v12 = *(v9 + 56);
    goto LABEL_18;
  }

LABEL_21:

  return a1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  level = self->_level;
  x = self->_offset.x;
  y = self->_offset.y;
  v9 = NSStringFromCGRect(self->_frame);
  v10 = v9;
  if (self->_outOfDate)
  {
    v11 = @" outOfDate";
  }

  else
  {
    v11 = &stru_1F476BD20;
  }

  v12 = atomic_load(&self->_renderCount);
  v13 = [v3 stringWithFormat:@"<%@ %p [%ld, (%ld, %ld)] frame=%@%@ renderCount:%ld opacity:%d hidden:%d>", v5, self, level, x, y, v9, v11, v12, self->_opacity, self->_hidden];

  return v13;
}

- (uint64_t)hasContents
{
  v1 = a1;
  if (a1)
  {
    v2 = [*(a1 + 88) contents];
    if (v2)
    {
      v1 = 1;
    }

    else
    {
      v3 = [*(v1 + 96) contents];
      v1 = v3 != 0;
    }
  }

  return v1;
}

- (double)tileMultiplyLayer
{
  if (a1)
  {
    v1 = a1;
    v2 = *(a1 + 12);
    if (!v2)
    {
      if (*(a1 + 82) == 1)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v3 = objc_alloc_init(MEMORY[0x1E6979398]);
        v4 = *(v1 + 12);
        *(v1 + 12) = v3;

        [*(v1 + 12) setFrame:{v1[27], v1[28], v1[29], v1[30]}];
        [*(v1 + 12) setContentsScale:v1[19]];
        [*(v1 + 12) setHidden:*(v1 + 86)];
        v5 = v1[20];
        *&v5 = v5;
        [*(v1 + 12) setOpacity:v5];
        [*(v1 + 12) setAllowsGroupOpacity:0];
        if (*(v1 + 84))
        {
          v6 = MEMORY[0x1E69792A0];
        }

        else
        {
          v6 = MEMORY[0x1E69792A8];
        }

        [*(v1 + 12) setPreferredDynamicRange:*v6];
        [*(v1 + 12) setToneMapMode:*MEMORY[0x1E69792E0]];
        v7 = 0.0;
        if (*(v1 + 84))
        {
          v7 = 4.0;
        }

        [*(v1 + 12) setContentsHeadroom:v7];
        if (*(v1 + 14) && *(v1 + 81) == 1)
        {
          v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
          [*(v1 + 12) setCompositingFilter:v8];

          v9 = *(v1 + 14);
          if (v9)
          {
            v10 = *(v9 + 56);
          }

          else
          {
            v10 = 0;
          }

          [*(v1 + 12) setContents:v10];
        }

        [MEMORY[0x1E6979518] commit];
        v2 = *(v1 + 12);
      }

      else
      {
        v2 = 0;
      }
    }

    a1 = v2;
  }

  return a1;
}

- (uint64_t)_lockAndSetFramebuffer:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 104);
    if (v5 == v4)
    {
      if (*(a1 + 80))
      {
        LOBYTE(a1) = 1;
        goto LABEL_14;
      }
    }

    else if (*(a1 + 80))
    {
      [(PKMetalFramebuffer *)v5 decrementNonPurgeableCount];
      v6 = *(a1 + 104);
      *(a1 + 104) = 0;

      *(a1 + 80) = 0;
      v5 = *(a1 + 104);
    }

    *(a1 + 104) = 0;

    if ([(PKMetalFramebuffer *)v4 incrementNonPurgeableCount])
    {
      objc_storeStrong((a1 + 104), a2);
      *(a1 + 80) = 1;
      if (v4)
      {
        v7 = v4[7];
      }

      else
      {
        v7 = 0;
      }

      [*(a1 + 88) setContents:v7];
      if (*(a1 + 82) == 1)
      {
        v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C58]];
        [*(a1 + 88) setCompositingFilter:v8];
      }
    }

    else
    {
      [*(a1 + 88) setContents:0];
      [*(a1 + 88) setCompositingFilter:0];
    }

    LOBYTE(a1) = *(a1 + 80);
  }

LABEL_14:

  return a1 & 1;
}

- (uint64_t)_lockAndSetMultiplyFramebuffer:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 112);
    if (v5 == v4)
    {
      if (*(a1 + 81))
      {
        LOBYTE(a1) = 1;
        goto LABEL_13;
      }
    }

    else if (*(a1 + 81))
    {
      [(PKMetalFramebuffer *)v5 decrementNonPurgeableCount];
      v6 = *(a1 + 112);
      *(a1 + 112) = 0;

      *(a1 + 81) = 0;
      v5 = *(a1 + 112);
    }

    *(a1 + 112) = 0;

    if ([(PKMetalFramebuffer *)v4 incrementNonPurgeableCount])
    {
      objc_storeStrong((a1 + 112), a2);
      *(a1 + 81) = 1;
      if (v4)
      {
        v7 = v4[7];
      }

      else
      {
        v7 = 0;
      }

      [*(a1 + 96) setContents:v7];
      v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
      [*(a1 + 96) setCompositingFilter:v8];
    }

    else
    {
      [*(a1 + 96) setCompositingFilter:0];
      [*(a1 + 96) setContents:0];
    }

    LOBYTE(a1) = *(a1 + 81);
  }

LABEL_13:

  return a1 & 1;
}

- (uint64_t)lockAndSetFramebufferThreadSafe:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v4 = [(PKRendererTile *)a1 _lockAndSetFramebuffer:v3];
      *(v10 + 24) = v4;
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__PKRendererTile_lockAndSetFramebufferThreadSafe___block_invoke;
      block[3] = &unk_1E82DBFB8;
      v8 = &v9;
      block[4] = a1;
      v7 = v3;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    LOBYTE(a1) = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return a1 & 1;
}

uint64_t __50__PKRendererTile_lockAndSetFramebufferThreadSafe___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  *(*(*(a1 + 48) + 8) + 24) = [(PKRendererTile *)*(a1 + 32) _lockAndSetFramebuffer:?];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (uint64_t)lockAndSetMultiplyFramebufferThreadSafe:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v4 = [(PKRendererTile *)a1 _lockAndSetMultiplyFramebuffer:v3];
      *(v10 + 24) = v4;
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58__PKRendererTile_lockAndSetMultiplyFramebufferThreadSafe___block_invoke;
      block[3] = &unk_1E82DBFB8;
      v8 = &v9;
      block[4] = a1;
      v7 = v3;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    LOBYTE(a1) = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return a1 & 1;
}

uint64_t __58__PKRendererTile_lockAndSetMultiplyFramebufferThreadSafe___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  *(*(*(a1 + 48) + 8) + 24) = [(PKRendererTile *)*(a1 + 32) _lockAndSetMultiplyFramebuffer:?];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (uint64_t)_clearFramebuffers
{
  if (result)
  {
    v1 = result;
    if (*(result + 80) == 1)
    {
      [(PKMetalFramebuffer *)*(result + 104) decrementNonPurgeableCount];
      *(v1 + 80) = 0;
    }

    v2 = *(v1 + 104);
    *(v1 + 104) = 0;

    [*(v1 + 88) setContents:0];
    [*(v1 + 88) setCompositingFilter:0];
    if (*(v1 + 81) == 1)
    {
      [(PKMetalFramebuffer *)*(v1 + 112) decrementNonPurgeableCount];
      *(v1 + 81) = 0;
    }

    v3 = *(v1 + 112);
    *(v1 + 112) = 0;

    [*(v1 + 96) setContents:0];
    v4 = *(v1 + 96);

    return [v4 setCompositingFilter:0];
  }

  return result;
}

- (void)clearFramebuffersThreadSafe
{
  if (a1)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [(PKRendererTile *)a1 _clearFramebuffers];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PKRendererTile_clearFramebuffersThreadSafe__block_invoke;
      block[3] = &unk_1E82D6388;
      block[4] = a1;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __45__PKRendererTile_clearFramebuffersThreadSafe__block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(PKRendererTile *)*(a1 + 32) _clearFramebuffers];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (id)framebuffer
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (*(a1 + 80) == 1)
  {
    a1 = a1[13];
    goto LABEL_4;
  }

  a1 = 0;

  return a1;
}

- (id)multiplyFramebuffer
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if (*(a1 + 81) == 1)
  {
    a1 = a1[14];
    goto LABEL_4;
  }

  a1 = 0;

  return a1;
}

- (void)purgeTileLayers
{
  if (a1)
  {
    if (*(a1 + 80) == 1)
    {
      [(PKMetalFramebuffer *)*(a1 + 104) decrementNonPurgeableCount];
      *(a1 + 80) = 0;
    }

    if (*(a1 + 81) == 1)
    {
      [(PKMetalFramebuffer *)*(a1 + 112) decrementNonPurgeableCount];
      *(a1 + 81) = 0;
    }

    [*(a1 + 88) removeFromSuperlayer];
    [*(a1 + 88) setContents:0];
    v2 = *(a1 + 88);
    *(a1 + 88) = 0;

    [*(a1 + 96) removeFromSuperlayer];
    [*(a1 + 96) setContents:0];
    v3 = *(a1 + 96);
    *(a1 + 96) = 0;
  }
}

- (uint64_t)recreatePurgedTileLayersIfPossible
{
  if (!a1)
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (*(a1 + 88) && (*(a1 + 96) || *(a1 + 82) != 1))
  {
LABEL_22:
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  v2 = *(a1 + 104);
  if (v2 && (*(a1 + 80) & 1) == 0 && [(PKMetalFramebuffer *)v2 incrementNonPurgeableCount])
  {
    *(a1 + 80) = 1;
  }

  v3 = *(a1 + 112);
  if (v3 && (*(a1 + 81) & 1) == 0 && [(PKMetalFramebuffer *)v3 incrementNonPurgeableCount])
  {
    *(a1 + 81) = 1;
  }

  if (!*(a1 + 104) || *(a1 + 80) == 1)
  {
    v4 = [(PKRendererTile *)a1 tileLayer];
  }

  if (*(a1 + 82) == 1 && (!*(a1 + 112) || *(a1 + 81) == 1))
  {
    v5 = [(PKRendererTile *)a1 tileMultiplyLayer];
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    if (!*(a1 + 96))
    {
      LOBYTE(v6) = *(a1 + 82) ^ 1;
      return v6 & 1;
    }

    goto LABEL_22;
  }

  return v6 & 1;
}

@end