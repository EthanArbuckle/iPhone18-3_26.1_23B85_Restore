@interface PKRendererTile
+ (double)layerFrameForLevel:(uint64_t)level offset:(uint64_t)offset;
+ (void)drawingFrameForLayerFrame:(CGFloat)frame drawingTransform:(CGFloat)transform contentScale:(double)scale;
- (PKRendererTileProperties)properties;
- (double)tileLayer;
- (double)tileMultiplyLayer;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)framebuffer;
- (id)initWithLevel:(__int128 *)level offset:(char)offset drawingTransform:(char)transform contentsScale:(char)scale sixChannelMode:(double)mode transparentBlending:(double)blending wantsExtendedDynamicRangeContent:(double)content;
- (id)multiplyFramebuffer;
- (uint64_t)_clearFramebuffers;
- (uint64_t)_lockAndSetFramebuffer:(uint64_t)framebuffer;
- (uint64_t)_lockAndSetMultiplyFramebuffer:(uint64_t)framebuffer;
- (uint64_t)hasContents;
- (uint64_t)lockAndSetFramebufferThreadSafe:(uint64_t)safe;
- (uint64_t)lockAndSetMultiplyFramebufferThreadSafe:(uint64_t)safe;
- (uint64_t)recreatePurgedTileLayersIfPossible;
- (void)clearFramebuffersThreadSafe;
- (void)dealloc;
- (void)purgeTileLayers;
- (void)updateDisableTransactionActions:(int)actions reloadContents:;
- (void)updateLastUsedTimestamp;
@end

@implementation PKRendererTile

- (id)initWithLevel:(__int128 *)level offset:(char)offset drawingTransform:(char)transform contentsScale:(char)scale sixChannelMode:(double)mode transparentBlending:(double)blending wantsExtendedDynamicRangeContent:(double)content
{
  if (!self)
  {
    return 0;
  }

  v40.receiver = self;
  v40.super_class = PKRendererTile;
  v17 = objc_msgSendSuper2(&v40, sel_init);
  v18 = v17;
  if (v17)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v20 = *(v17 + 15);
    *(v17 + 15) = uUID;

    *(v17 + 21) = mode;
    *(v17 + 22) = blending;
    v21 = *(v17 + 17);
    v22 = MEMORY[0x1E695E0F0];
    *(v17 + 16) = a2;
    *(v17 + 17) = v22;

    *(v17 + 82) = offset;
    *(v17 + 83) = transform;
    v23 = *level;
    v24 = level[2];
    *(v17 + 3) = level[1];
    *(v17 + 4) = v24;
    *(v17 + 2) = v23;
    *(v17 + 84) = scale;
    *(v17 + 19) = content;
    atomic_store(*&content, v17 + 1);
    [*(v17 + 11) setContentsScale:content];
    [*(v17 + 12) setContentsScale:content];
    v37 = *level;
    v38 = level[1];
    v39 = level[2];
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
  if (self)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    atomic_store(v2, (self + 24));
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

- (id)copyWithZone:(_NSZone *)zone
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
  if (self)
  {
    selfCopy = self;
    v3 = [PKRendererTileProperties alloc];
    a = selfCopy[1]._drawingTransform.a;
    ty = selfCopy[1]._drawingTransform.ty;
    v6 = *&selfCopy[2].super.isa;
    v7 = *&selfCopy->_drawingTransform.b;
    v9[0] = *&selfCopy->_offset.y;
    v9[1] = v7;
    v9[2] = *&selfCopy->_drawingTransform.d;
    self = [(PKRendererTileProperties *)v3 initWithLevel:*&a offset:v9 drawingTransform:BYTE2(selfCopy->_drawingTransform.ty) sixChannelMode:BYTE3(selfCopy->_drawingTransform.ty) transparentBlending:BYTE4(selfCopy->_drawingTransform.ty) extendedDynamicRange:ty, v6];
    v1 = vars8;
  }

  return self;
}

+ (double)layerFrameForLevel:(uint64_t)level offset:(uint64_t)offset
{
  objc_opt_self();
  objc_opt_self();
  v7 = round(exp2(offset) * 256.0);

  return DKDRoundedRectForScale(self * v7, a2 * v7, v7, v7, 1.0);
}

+ (void)drawingFrameForLayerFrame:(CGFloat)frame drawingTransform:(CGFloat)transform contentScale:(double)scale
{
  objc_opt_self();
  v13 = a7[1];
  *&v14.a = *a7;
  *&v14.c = v13;
  *&v14.tx = a7[2];
  CGAffineTransformInvert(&v15, &v14);
  v16.origin.x = self;
  v16.origin.y = a2;
  v16.size.width = frame;
  v16.size.height = transform;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  DKDRoundedRectForScale(v17.origin.x, v17.origin.y, v17.size.width, v17.size.height, scale);
}

- (void)updateDisableTransactionActions:(int)actions reloadContents:
{
  if (self)
  {
    [MEMORY[0x1E6979518] begin];
    if ((*(self + 86) & 1) != 0 || a2)
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    if (actions)
    {
      [*(self + 88) reloadValueForKeyPath:@"contents"];
      [*(self + 96) reloadValueForKeyPath:@"contents"];
    }

    *(self + 160) = 0x3FF0000000000000;
    LODWORD(v6) = 1.0;
    [*(self + 88) setOpacity:v6];
    LODWORD(v7) = 1.0;
    [*(self + 96) setOpacity:v7];
    [MEMORY[0x1E6979518] commit];

    [(PKRendererTile *)self updateLastUsedTimestamp];
  }
}

- (double)tileLayer
{
  if (self)
  {
    selfCopy = self;
    v2 = *(self + 11);
    if (v2)
    {
LABEL_20:
      self = v2;
      goto LABEL_21;
    }

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v3 = objc_alloc_init(MEMORY[0x1E6979398]);
    v4 = *(selfCopy + 11);
    *(selfCopy + 11) = v3;

    [*(selfCopy + 11) setFrame:{selfCopy[27], selfCopy[28], selfCopy[29], selfCopy[30]}];
    [*(selfCopy + 11) setContentsScale:selfCopy[19]];
    [*(selfCopy + 11) setHidden:*(selfCopy + 86)];
    v5 = selfCopy[20];
    *&v5 = v5;
    [*(selfCopy + 11) setOpacity:v5];
    [*(selfCopy + 11) setAllowsGroupOpacity:0];
    if (*(selfCopy + 84))
    {
      v6 = MEMORY[0x1E69792D8];
    }

    else
    {
      v6 = MEMORY[0x1E69792D0];
    }

    [*(selfCopy + 11) setToneMapMode:*v6];
    v7 = 0.0;
    if (*(selfCopy + 84))
    {
      v7 = 4.0;
    }

    [*(selfCopy + 11) setContentsHeadroom:v7];
    if (*(selfCopy + 84))
    {
      v8 = MEMORY[0x1E69792A0];
    }

    else
    {
      v8 = MEMORY[0x1E69792A8];
    }

    [*(selfCopy + 11) setPreferredDynamicRange:*v8];
    v9 = *(selfCopy + 13);
    if (!v9 || *(selfCopy + 80) != 1)
    {
LABEL_19:
      [MEMORY[0x1E6979518] commit];
      v2 = *(selfCopy + 11);
      goto LABEL_20;
    }

    if (*(selfCopy + 82))
    {
      v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C58]];
      [*(selfCopy + 11) setCompositingFilter:v10];

      v9 = *(selfCopy + 13);
      v11 = *(selfCopy + 11);
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
      v11 = *(selfCopy + 11);
    }

    v12 = *(v9 + 56);
    goto LABEL_18;
  }

LABEL_21:

  return self;
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
  selfCopy = self;
  if (self)
  {
    contents = [*(self + 88) contents];
    if (contents)
    {
      selfCopy = 1;
    }

    else
    {
      contents2 = [*(selfCopy + 96) contents];
      selfCopy = contents2 != 0;
    }
  }

  return selfCopy;
}

- (double)tileMultiplyLayer
{
  if (self)
  {
    selfCopy = self;
    v2 = *(self + 12);
    if (!v2)
    {
      if (*(self + 82) == 1)
      {
        [MEMORY[0x1E6979518] begin];
        [MEMORY[0x1E6979518] setDisableActions:1];
        v3 = objc_alloc_init(MEMORY[0x1E6979398]);
        v4 = *(selfCopy + 12);
        *(selfCopy + 12) = v3;

        [*(selfCopy + 12) setFrame:{selfCopy[27], selfCopy[28], selfCopy[29], selfCopy[30]}];
        [*(selfCopy + 12) setContentsScale:selfCopy[19]];
        [*(selfCopy + 12) setHidden:*(selfCopy + 86)];
        v5 = selfCopy[20];
        *&v5 = v5;
        [*(selfCopy + 12) setOpacity:v5];
        [*(selfCopy + 12) setAllowsGroupOpacity:0];
        if (*(selfCopy + 84))
        {
          v6 = MEMORY[0x1E69792A0];
        }

        else
        {
          v6 = MEMORY[0x1E69792A8];
        }

        [*(selfCopy + 12) setPreferredDynamicRange:*v6];
        [*(selfCopy + 12) setToneMapMode:*MEMORY[0x1E69792E0]];
        v7 = 0.0;
        if (*(selfCopy + 84))
        {
          v7 = 4.0;
        }

        [*(selfCopy + 12) setContentsHeadroom:v7];
        if (*(selfCopy + 14) && *(selfCopy + 81) == 1)
        {
          v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
          [*(selfCopy + 12) setCompositingFilter:v8];

          v9 = *(selfCopy + 14);
          if (v9)
          {
            v10 = *(v9 + 56);
          }

          else
          {
            v10 = 0;
          }

          [*(selfCopy + 12) setContents:v10];
        }

        [MEMORY[0x1E6979518] commit];
        v2 = *(selfCopy + 12);
      }

      else
      {
        v2 = 0;
      }
    }

    self = v2;
  }

  return self;
}

- (uint64_t)_lockAndSetFramebuffer:(uint64_t)framebuffer
{
  v4 = a2;
  if (framebuffer)
  {
    v5 = *(framebuffer + 104);
    if (v5 == v4)
    {
      if (*(framebuffer + 80))
      {
        LOBYTE(framebuffer) = 1;
        goto LABEL_14;
      }
    }

    else if (*(framebuffer + 80))
    {
      [(PKMetalFramebuffer *)v5 decrementNonPurgeableCount];
      v6 = *(framebuffer + 104);
      *(framebuffer + 104) = 0;

      *(framebuffer + 80) = 0;
      v5 = *(framebuffer + 104);
    }

    *(framebuffer + 104) = 0;

    if ([(PKMetalFramebuffer *)v4 incrementNonPurgeableCount])
    {
      objc_storeStrong((framebuffer + 104), a2);
      *(framebuffer + 80) = 1;
      if (v4)
      {
        v7 = v4[7];
      }

      else
      {
        v7 = 0;
      }

      [*(framebuffer + 88) setContents:v7];
      if (*(framebuffer + 82) == 1)
      {
        v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979C58]];
        [*(framebuffer + 88) setCompositingFilter:v8];
      }
    }

    else
    {
      [*(framebuffer + 88) setContents:0];
      [*(framebuffer + 88) setCompositingFilter:0];
    }

    LOBYTE(framebuffer) = *(framebuffer + 80);
  }

LABEL_14:

  return framebuffer & 1;
}

- (uint64_t)_lockAndSetMultiplyFramebuffer:(uint64_t)framebuffer
{
  v4 = a2;
  if (framebuffer)
  {
    v5 = *(framebuffer + 112);
    if (v5 == v4)
    {
      if (*(framebuffer + 81))
      {
        LOBYTE(framebuffer) = 1;
        goto LABEL_13;
      }
    }

    else if (*(framebuffer + 81))
    {
      [(PKMetalFramebuffer *)v5 decrementNonPurgeableCount];
      v6 = *(framebuffer + 112);
      *(framebuffer + 112) = 0;

      *(framebuffer + 81) = 0;
      v5 = *(framebuffer + 112);
    }

    *(framebuffer + 112) = 0;

    if ([(PKMetalFramebuffer *)v4 incrementNonPurgeableCount])
    {
      objc_storeStrong((framebuffer + 112), a2);
      *(framebuffer + 81) = 1;
      if (v4)
      {
        v7 = v4[7];
      }

      else
      {
        v7 = 0;
      }

      [*(framebuffer + 96) setContents:v7];
      v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CA8]];
      [*(framebuffer + 96) setCompositingFilter:v8];
    }

    else
    {
      [*(framebuffer + 96) setCompositingFilter:0];
      [*(framebuffer + 96) setContents:0];
    }

    LOBYTE(framebuffer) = *(framebuffer + 81);
  }

LABEL_13:

  return framebuffer & 1;
}

- (uint64_t)lockAndSetFramebufferThreadSafe:(uint64_t)safe
{
  v3 = a2;
  if (safe)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v4 = [(PKRendererTile *)safe _lockAndSetFramebuffer:v3];
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
      block[4] = safe;
      v7 = v3;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    LOBYTE(safe) = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return safe & 1;
}

uint64_t __50__PKRendererTile_lockAndSetFramebufferThreadSafe___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  *(*(*(a1 + 48) + 8) + 24) = [(PKRendererTile *)*(a1 + 32) _lockAndSetFramebuffer:?];
  v2 = MEMORY[0x1E6979518];

  return [v2 commit];
}

- (uint64_t)lockAndSetMultiplyFramebufferThreadSafe:(uint64_t)safe
{
  v3 = a2;
  if (safe)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      v4 = [(PKRendererTile *)safe _lockAndSetMultiplyFramebuffer:v3];
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
      block[4] = safe;
      v7 = v3;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    LOBYTE(safe) = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  return safe & 1;
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
  if (self)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {

      [(PKRendererTile *)self _clearFramebuffers];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__PKRendererTile_clearFramebuffersThreadSafe__block_invoke;
      block[3] = &unk_1E82D6388;
      block[4] = self;
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
  if (!self)
  {
LABEL_4:

    return self;
  }

  if (*(self + 80) == 1)
  {
    self = self[13];
    goto LABEL_4;
  }

  self = 0;

  return self;
}

- (id)multiplyFramebuffer
{
  if (!self)
  {
LABEL_4:

    return self;
  }

  if (*(self + 81) == 1)
  {
    self = self[14];
    goto LABEL_4;
  }

  self = 0;

  return self;
}

- (void)purgeTileLayers
{
  if (self)
  {
    if (*(self + 80) == 1)
    {
      [(PKMetalFramebuffer *)*(self + 104) decrementNonPurgeableCount];
      *(self + 80) = 0;
    }

    if (*(self + 81) == 1)
    {
      [(PKMetalFramebuffer *)*(self + 112) decrementNonPurgeableCount];
      *(self + 81) = 0;
    }

    [*(self + 88) removeFromSuperlayer];
    [*(self + 88) setContents:0];
    v2 = *(self + 88);
    *(self + 88) = 0;

    [*(self + 96) removeFromSuperlayer];
    [*(self + 96) setContents:0];
    v3 = *(self + 96);
    *(self + 96) = 0;
  }
}

- (uint64_t)recreatePurgedTileLayersIfPossible
{
  if (!self)
  {
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (*(self + 88) && (*(self + 96) || *(self + 82) != 1))
  {
LABEL_22:
    LOBYTE(v6) = 1;
    return v6 & 1;
  }

  v2 = *(self + 104);
  if (v2 && (*(self + 80) & 1) == 0 && [(PKMetalFramebuffer *)v2 incrementNonPurgeableCount])
  {
    *(self + 80) = 1;
  }

  v3 = *(self + 112);
  if (v3 && (*(self + 81) & 1) == 0 && [(PKMetalFramebuffer *)v3 incrementNonPurgeableCount])
  {
    *(self + 81) = 1;
  }

  if (!*(self + 104) || *(self + 80) == 1)
  {
    tileLayer = [(PKRendererTile *)self tileLayer];
  }

  if (*(self + 82) == 1 && (!*(self + 112) || *(self + 81) == 1))
  {
    tileMultiplyLayer = [(PKRendererTile *)self tileMultiplyLayer];
  }

  v6 = *(self + 88);
  if (v6)
  {
    if (!*(self + 96))
    {
      LOBYTE(v6) = *(self + 82) ^ 1;
      return v6 & 1;
    }

    goto LABEL_22;
  }

  return v6 & 1;
}

@end