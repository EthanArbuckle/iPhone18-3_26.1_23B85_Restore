@interface PKMetalRenderer
- (BOOL)generateBSplineInComputeForStroke:(uint64_t)stroke;
- (BOOL)setViewScissor:(CGFloat)scissor;
- (BOOL)setupAlphaBlendingForAlphaBlendFactor:(void *)factor renderEncoder:(double)encoder;
- (PKMetalStrokeRenderCache)generateCacheForStroke:(unint64_t)stroke points:(double *)points segmentSteps:(void *)steps;
- (__n128)setCombineStrokesAllowed:(uint64_t)allowed;
- (double)alphaForStroke:(uint64_t)stroke;
- (double)antialiasingThresholdForStroke:(uint64_t)stroke;
- (double)calculateSourceRectForTile:(void *)tile tileTransform:(float64x2_t *)transform destinationQuadOut:(_OWORD *)out;
- (double)dirtyClipRectForAnimatingStrokeVertices:(uint64_t)vertices newSize:(unint64_t)size;
- (double)particleOffsetAtEndOfStroke:(uint64_t)stroke forSecondaryParticles:(void *)particles;
- (double)updateActualSize:(double)size pixelSize:(double)pixelSize;
- (float)clipRectForVertices:(float *)result numVertices:(uint64_t)vertices vertexSize:(uint64_t)size;
- (id).cxx_construct;
- (id)blitShader;
- (id)colorForStroke:(uint64_t)stroke;
- (id)generateParticleCacheForStroke:(double *)stroke animatingStroke:(uint64_t)animatingStroke starts:(int)starts ends:(int)ends secondaryParticles:(int)particles;
- (id)initWithDrawingPixelSize:(void *)size actualSize:(void *)actualSize device:(uint64_t)device resourceHandler:(char)handler sixChannelBlendingMode:pixelFormat:wantsExtendedDynamicRangeContent:;
- (id)initWithDrawingPixelSize:(void *)size actualSize:(void *)actualSize device:resourceHandler:sixChannelBlendingMode:;
- (id)renderCacheItemForStroke:(uint64_t)stroke bsplineFilter:(void *)filter purgeableResources:(void *)resources strokeRenderCache:;
- (id)renderCommandEncoderForCommandBuffer:(id *)buffer renderStateConfig:(void *)config renderState:;
- (uint64_t)_renderStrokes:(_OWORD *)strokes clippedToStrokeSpaceRect:(void *)rect strokeTransform:(double)transform stopBlock:(double)block;
- (uint64_t)applyStrokeSpaceClipRect:(double)rect strokeTransform:(double)transform;
- (uint64_t)clearAndRenderStrokes:(__int128 *)strokes clippedToStrokeSpaceRect:(void *)rect strokeTransform:(CGFloat)transform stopBlock:(CGFloat)block;
- (uint64_t)newCGImageWithClipRect:(CGFloat)rect;
- (uint64_t)newCGImageWithClipRect:(CGFloat)rect framebuffer:(CGFloat)framebuffer;
- (uint64_t)newSixChannelMultiplyCGImageWithClipRect:(CGFloat)rect;
- (uint64_t)renderParticleRenderCache:(void *)cache renderEncoder:(void *)encoder computeEncoder:(id *)computeEncoder animatingStroke:(int)stroke secondaryParticles:;
- (uint64_t)renderParticleStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke starts:(int)starts ends:(char)ends secondaryParticles:(int)particles renderEncoder:(void *)encoder;
- (uint64_t)renderPenStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke renderEncoder:(void *)encoder;
- (uint64_t)renderSDFPenStroke:(uint64_t)stroke animatingStroke:(uint64_t)animatingStroke renderEncoder:(void *)encoder;
- (uint64_t)renderStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke renderEncoder:(void *)encoder computeEncoder:(void *)computeEncoder renderCache:(void *)cache;
- (uint64_t)renderStrokeRenderCache:(void *)cache renderEncoder:(uint64_t)encoder animatingStroke:(int)stroke indexed:;
- (uint64_t)renderStrokeRenderCacheBuffers:(void *)buffers renderEncoder:(_anonymous_namespace_:(int)encoder :AnimatingStroke *)a4 animatingStroke:indexed:;
- (uint64_t)renderStrokes:(__int128 *)strokes clippedToStrokeSpaceRect:(void *)rect strokeTransform:(double)transform stopBlock:(double)block;
- (uint64_t)renderStrokes:(void *)strokes stopBlock:;
- (uint64_t)renderVerticies:(unint64_t)verticies size:(uint64_t)size numRenderedVertices:(void *)vertices vertexSize:(uint64_t)vertexSize numIndices:(uint64_t)indices localClipRect:(char)rect animatingStroke:(CGFloat)stroke secondaryParticles:(CGFloat)self0 renderEncoder:(CGFloat)self1;
- (uint64_t)renderZoomFactorForStroke:(uint64_t)stroke;
- (uint64_t)setupClippingForStrokeClipRect:(CGFloat *)rect clippedToPixelSpaceRect:(CGFloat)spaceRect renderEncoder:(CGFloat)encoder outNewClipRect:(CGFloat)clipRect;
- (uint64_t)setupForDefaultUberVertexShaderInRenderEncoder:(uint64_t)encoder;
- (uint64_t)shouldRenderDebugColorForStroke:(uint64_t)stroke;
- (unint64_t)fadeOutLimitFromPoints:(uint64_t)points animatingStroke:;
- (void)addBufferForRenderCache:(uint64_t)cache strokeVertices:(unint64_t)vertices numVertices:(void *)numVertices vertexSize:(char)size bounds:(void *)bounds secondaryParticles:(double)particles renderEncoder:(double)encoder;
- (void)addStrokeSpaceDrawableDirtyRect:(double)rect;
- (void)allocateAndClearAddMultiplyFramebuffersIfNecessary;
- (void)buildRenderCacheForStrokes:(uint64_t)strokes;
- (void)clearFramebuffer:(uint64_t)framebuffer waitUntilCompleted:(void *)completed;
- (void)clearNowWithStrokeSpaceClipRect:(CGFloat)rect strokeTransform:(CGFloat)transform;
- (void)clearTile:(uint64_t)tile waitUntilCompleted:(void *)completed;
- (void)copyFromAddMultiplyLayersUsingRenderEncoder:(int)encoder clearIfMissing:;
- (void)copyFromFramebuffer:(uint64_t)framebuffer toFramebuffer:(CGFloat)toFramebuffer clipRect:(CGFloat)rect renderEncoder:(CGFloat)encoder paintIndex:(CGFloat)index alphaBlendFactor:(double)factor;
- (void)copyIntoPaintFromTexture:(void *)texture clipRect:(uint64_t)rect renderEncoder:(CGFloat)encoder paintIndex:(CGFloat)index alphaBlendFactor:(CGFloat)factor;
- (void)dealloc;
- (void)disableClippingForRenderEncoder:(uint64_t)encoder;
- (void)drawNewPointsAt:(uint64_t)at drawCount:(uint64_t)count;
- (void)drawingBeganWithStroke:(uint64_t)stroke forPreview:(void *)preview;
- (void)drawingCancelledForPreview:(uint64_t)preview;
- (void)drawingEnded:(void *)ended finishStrokeBlock:;
- (void)eraseShaderForAttachmentIndex:(void *)index;
- (void)finishLiveStrokeAndPresentDrawable:(void *)drawable multiplyDrawable:(int)multiplyDrawable waitUntilScheduled:;
- (void)finishRendering;
- (void)finishRenderingNoTeardownForStroke:(void *)stroke clippedToPixelSpaceRect:(CGFloat)rect renderEncoder:(CGFloat)encoder;
- (void)flushMemoryIfPossible;
- (void)framebufferForTile:(char)tile createIfNeeded:;
- (void)generateLiveStrokeCachesForStrokes:(uint64_t)strokes destinationLocations:(void *)locations startTime:duration:;
- (void)generatePaintCacheForStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke segmentSteps:(void *)steps liveStrokePoints:(uint64_t)points liveStrokeStartTime:(double)time duration:(double)duration;
- (void)generateRenderMaskForPaths:(void *)paths renderCache:;
- (void)getAndRenderNewPoints:(uint64_t)points;
- (void)multiplyFramebufferForTile:(char)tile createIfNeeded:;
- (void)purgeOriginalBackFramebuffer;
- (void)purgePaintFramebuffers;
- (void)purgeRenderCachesForStrokes:(uint64_t)strokes;
- (void)renderAheadWithTransform:(int)transform onPaper:(void *)paper renderBufferSize:(void *)size destinationTexture:(float64_t)texture destinationMultiplyTexture:(float64_t)multiplyTexture;
- (void)renderBrushIndicatorForStroke:(__int128 *)stroke withTransform:(unint64_t)transform mode:;
- (void)renderFullscreenQuadWithShader:(void *)shader renderEncoder:;
- (void)renderImageTexture:(__int128 *)texture imageTextureTransform:(void *)transform withTiles:(uint64_t)tiles tileTransform:(char)tileTransform waitUntilCompleted:;
- (void)renderLiveStrokeWithTransform:(float64_t)transform renderBufferSize:(float64_t)size;
- (void)renderPaperTransform:(_OWORD *)transform paperTransform:(int)paperTransform flipped:(void *)flipped multiply:(double)multiply renderEncoder:;
- (void)renderStroke:(uint64_t)stroke withTransform:(unint64_t)transform mode:(int)mode flipped:(void *)flipped renderBufferSize:(int)size renderEncoder:(float64_t)encoder currentClipRect:(float64_t)rect needRenderMask:(CGFloat)self0;
- (void)renderStrokeVertices:(unint64_t)vertices numVertices:(uint64_t)numVertices vertexSize:(uint64_t)size numIndices:(void *)indices renderEncoder:;
- (void)renderTexture:(uint64_t)texture;
- (void)renderTexture:(void *)texture intoFramebuffer:(void *)framebuffer clipRect:(CGFloat)rect renderState:(CGFloat)state;
- (void)renderTexture:(void *)texture intoFramebuffer:(void *)framebuffer sourceRect:(uint64_t)rect destinationQuad:(CGFloat)quad renderState:(CGFloat)state blendMode:(CGFloat)mode;
- (void)renderTexture:(void *)texture intoFramebuffer:(void *)framebuffer sourceRect:(uint64_t)rect destinationRect:(CGFloat)destinationRect renderState:(CGFloat)state blendMode:(CGFloat)mode;
- (void)renderTile:(void *)tile tileFramebuffer:(float64x2_t *)framebuffer tileTransform:(void *)transform renderState:(int)state shouldComposite:;
- (void)renderTiles:(int)tiles clearBackBuffer:(float64x2_t *)buffer tileTransform:(char)transform waitUntilCompleted:;
- (void)renderTiles:(void *)tiles intoTile:(char)tile waitUntilCompleted:;
- (void)renderUberVertexShaderWithSourceRect:(CGFloat)rect destinationQuad:(CGFloat)quad renderEncoder:(CGFloat)encoder sourcePixelSize:(CGFloat)size destPixelSize:(double)pixelSize texCoordTransform:(double)transform;
- (void)renderWithTransform:(uint64_t)transform animatingStroke:(unint64_t)stroke mode:(int)mode clipped:(void *)clipped renderBufferSize:(float64_t)size renderEncoder:(float64_t)encoder;
- (void)resetPaintFramebufferAccumulate:(uint64_t)accumulate;
- (void)setAlternativeStrokes:(double)strokes alpha:(double)alpha originalStrokeAlpha:;
- (void)setBackgroundColor:(uint64_t)color;
- (void)setLinedPaper:(uint64_t)paper;
- (void)setLiveRenderingOverrideColor:(uint64_t)color;
- (void)setPaperTextureImage:(uint64_t)image;
- (void)setupDrawingFramebuffersIfNecessaryWantMemorylessPaint:(uint64_t)paint;
- (void)setupOriginalBackFramebufferIfNecessary;
- (void)setupRenderEncoder:(uint64_t)encoder forParticleStroke:(int)stroke secondaryParticles:;
- (void)setupRenderEncoder:(uint64_t)encoder forPenStroke:(double)stroke alphaFactor:;
- (void)setupRenderEncoder:(uint64_t)encoder forSDFPenStroke:(void *)stroke alphaFactor:(uint64_t)factor;
- (void)setupRenderState:(int)state needCompute:(int)compute clearPaint:;
- (void)setupRenderStateForRenderingStrokes:(uint64_t)strokes;
- (void)setupRenderStateForStrokeRenderingNumPaintBuffers:(int)buffers needRenderMask:;
- (void)setupRenderStateWithLiveRenderConfig:(uint64_t)config;
- (void)setupUberVertexShaderWithTransform:(_anonymous_namespace_ *)transform paperTransform:(float64x2_t *)paperTransform texCoordTransform:(float64x2_t *)coordTransform renderEncoder:(void *)encoder;
- (void)setupViewScissorClippingIfNecessaryForRenderEncoder:(uint64_t)encoder;
- (void)teardownDrawingFramebuffers;
- (void)teardownOriginalBackFramebuffer;
- (void)teardownRenderStateIfNecessary;
- (void)updateTile:(void *)tile strokes:(uint64_t)strokes clear:(char)clear waitUntilCompleted:(uint64_t)completed offscreen:(void *)offscreen stopBlock:;
@end

@implementation PKMetalRenderer

- (uint64_t)shouldRenderDebugColorForStroke:(uint64_t)stroke
{
  v3 = a2;
  if ([v3 _isSynthesizedInk])
  {
    v4 = *(stroke + 960);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (id)colorForStroke:(uint64_t)stroke
{
  v3 = a2;
  if ([(PKMetalRenderer *)stroke shouldRenderDebugColorForStroke:v3])
  {
    redColor = [MEMORY[0x1E69DC888] redColor];
  }

  else
  {
    if (*(stroke + 497) == 1 && ([v3 ink], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "hdrColor"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
    {
      v7 = [v3 ink];
      hdrColor = [v7 hdrColor];
    }

    else
    {
      v7 = [v3 ink];
      hdrColor = [v7 sdrColor];
    }

    redColor = hdrColor;
  }

  return redColor;
}

void __59__PKMetalRenderer_disableClearOriginalBackbufferWorkaround__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.PencilKit"];
  _MergedGlobals_145 = [v0 BOOLForKey:@"PKDisableClearOriginalBackbufferWorkaround"];
}

- (id)initWithDrawingPixelSize:(void *)size actualSize:(void *)actualSize device:resourceHandler:sixChannelBlendingMode:
{
  v7 = a2;
  sizeCopy = size;
  if (self)
  {
    v9 = [PKMetalRenderer initWithDrawingPixelSize:self actualSize:v7 device:sizeCopy resourceHandler:actualSize sixChannelBlendingMode:80 pixelFormat:0 wantsExtendedDynamicRangeContent:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)initWithDrawingPixelSize:(void *)size actualSize:(void *)actualSize device:(uint64_t)device resourceHandler:(char)handler sixChannelBlendingMode:pixelFormat:wantsExtendedDynamicRangeContent:
{
  v11 = a2;
  sizeCopy = size;
  if (self)
  {
    v15.receiver = self;
    v15.super_class = PKMetalRenderer;
    v13 = objc_msgSendSuper2(&v15, sel_init);
    self = v13;
    if (v13)
    {
      *(v13 + 497) = handler;
      v13[129] = 0x3FF0000000000000;
      objc_storeStrong(v13 + 3, a2);
      self[91] = actualSize;
      *(self + 1006) = 0;
      self[133] = 0x3FF0000000000000;
      *(self + 5) = 0u;
      *(self + 6) = 0u;
      *(self + 721) = 1;
      operator new();
    }
  }

  return self;
}

- (void)dealloc
{
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    CGColorRelease(backgroundColor);
  }

  liveRenderingOverrideColor = self->_liveRenderingOverrideColor;
  if (liveRenderingOverrideColor)
  {
    CGColorRelease(liveRenderingOverrideColor);
  }

  v5.receiver = self;
  v5.super_class = PKMetalRenderer;
  [(PKMetalRenderer *)&v5 dealloc];
}

- (BOOL)generateBSplineInComputeForStroke:(uint64_t)stroke
{
  v3 = a2;
  v4 = v3;
  if ((*(stroke + 1003) & 1) == 0)
  {
    v6 = [v3 ink];
    v7 = v6;
    if (v6)
    {
      _isFountainPenInkV2 = [v6 _isFountainPenInkV2];

      if (_isFountainPenInkV2)
      {
        v5 = 1;
        goto LABEL_6;
      }
    }

    if (*(stroke + 721) == 1 && [v4 _pointsCount] >= 0x20)
    {
      v10 = [v4 ink];
      behavior = [v10 behavior];
      renderingDescriptor = [behavior renderingDescriptor];
      v5 = [renderingDescriptor type] == 0;

      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)flushMemoryIfPossible
{
  if (self)
  {
    strokeRenderCache = [(PKMetalResourceHandler *)*(self + 192) strokeRenderCache];
    [(PKLRUCache *)strokeRenderCache removeAllObjects];

    [(PKMetalResourceHandler *)*(self + 192) deallocateReusableBuffers];
    if (!*(self + 8))
    {

      [(PKMetalRenderer *)self teardownDrawingFramebuffers];
    }
  }
}

- (void)teardownDrawingFramebuffers
{
  if (self)
  {
    v2 = self[22];
    self[22] = 0;

    v3 = self[23];
    self[23] = 0;
  }
}

- (BOOL)setViewScissor:(CGFloat)scissor
{
  if (result)
  {
    v8 = a2;
    v9 = result;
    result = CGRectIsNull(*&a2);
    if (!result)
    {
      v11.size.width = v9[28];
      v11.size.height = v9[29];
      v11.origin.x = 0.0;
      v11.origin.y = 0.0;
      v10.origin.x = v8;
      v10.origin.y = scissor;
      v10.size.width = a4;
      v10.size.height = a5;
      result = CGRectEqualToRect(v10, v11);
      if (result)
      {
        v8 = *MEMORY[0x1E695F050];
        scissor = *(MEMORY[0x1E695F050] + 8);
        a4 = *(MEMORY[0x1E695F050] + 16);
        a5 = *(MEMORY[0x1E695F050] + 24);
      }
    }

    v9[40] = v8;
    v9[41] = scissor;
    v9[42] = a4;
    v9[43] = a5;
  }

  return result;
}

- (uint64_t)renderZoomFactorForStroke:(uint64_t)stroke
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 ink], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "behavior"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "renderingDescriptor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "type"), v7, v6, v5, !v8))
  {
    v9 = fmax(round(*(stroke + 1032)), 1.0);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)drawingBeganWithStroke:(uint64_t)stroke forPreview:(void *)preview
{
  previewCopy = preview;
  v5 = previewCopy;
  if (stroke)
  {
    v6 = *(stroke + 632);
    v7 = *(stroke + 640) - v6;
    if (v7)
    {
      v8 = 0x4FA4FA4FA4FA4FA5 * (v7 >> 3);
      if (v8 <= 1)
      {
        v8 = 1;
      }

      v9 = (v6 + 304);
      do
      {
        *(v9 - 1) = 0;
        *v9 = 0x3FF0000000000000;
        v9 += 45;
        --v8;
      }

      while (v8);
    }

    [previewCopy _renderMask];
    objc_claimAutoreleasedReturnValue();
    *(stroke + 352) = 0;
    if (*(stroke + 1007) == 1)
    {
      v10 = *(stroke + 656);
      if (v10)
      {
        _renderGroupID = [v10 _renderGroupID];
        _renderGroupID2 = [v5 _renderGroupID];
        v13 = [_renderGroupID isEqual:_renderGroupID2];

        if ((v13 & 1) == 0)
        {
          [(PKMetalRenderer *)stroke purgePaintFramebuffers];
          *(stroke + 121) = 1;
          *(stroke + 153) = 1;
          *(stroke + 137) = 1;
          *(stroke + 169) = 1;
          v14 = *(MEMORY[0x1E695F050] + 16);
          *(stroke + 672) = *MEMORY[0x1E695F050];
          *(stroke + 688) = v14;
          v15 = os_log_create("com.apple.pencilkit", "Sketching");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Clearing paint framebuffers to switching to a new render group.", buf, 2u);
          }
        }
      }
    }

    objc_storeStrong((stroke + 656), preview);
    v16 = *(stroke + 664);
    *(stroke + 664) = 0;

    [(PKMetalRenderer *)stroke renderZoomFactorForStroke:v5];
    operator new();
  }
}

- (void)getAndRenderNewPoints:(uint64_t)points
{
  v5 = a2;
  if (points)
  {
    if (v5)
    {
      v3 = *(points + 640);
      if (*(points + 632) != v3 && *(v3 - 184) == 1)
      {
        kdebug_trace();
        kdebug_trace();
      }
    }

    v4 = *(points + 640);
    if (*(points + 632) == v4 || (*(v4 - 23) & 1) == 0)
    {
      kdebug_trace();
      CACurrentMediaTime();
      [PKMetalRenderer drawNewPointsAt:points drawCount:1];
      kdebug_trace();
    }
  }
}

- (void)drawingEnded:(void *)ended finishStrokeBlock:
{
  v12 = a2;
  endedCopy = ended;
  v6 = endedCopy;
  if (self)
  {
    v7 = *(self + 640);
    v8 = *(self + 632);
    if (v7 == v8)
    {
      if (endedCopy)
      {
        (*(endedCopy + 2))(endedCopy);
      }
    }

    else
    {
      while (*(v8 + 176) != 1)
      {
        v8 += 360;
        if (v8 == v7)
        {
          goto LABEL_9;
        }
      }

      v9 = v12;
      *(v8 + 176) = 0;
      (*(**(v8 + 96) + 8))(*(v8 + 96));

      v10 = _Block_copy(v6);
      v11 = *(v8 + 352);
      *(v8 + 352) = v10;
    }
  }

LABEL_9:
}

- (void)setAlternativeStrokes:(double)strokes alpha:(double)alpha originalStrokeAlpha:
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = x1_0;
  if (!self)
  {
    goto LABEL_29;
  }

  v9 = *(self + 640);
  if (*(self + 632) == v9)
  {
    goto LABEL_29;
  }

  v10 = (v9 - 72);
  v26 = *(v9 - 72);
  if (v26)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v26;
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = *v33;
      do
      {
        v14 = 0;
        do
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v32 + 1) + 8 * v14) _bounds];
          v15 = *(self + 288);
          *&v31.a = *(self + 272);
          *&v31.c = v15;
          *&v31.tx = *(self + 304);
          ++v14;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
    }
  }

  if ([*v10 count] || !objc_msgSend(v8, "count"))
  {
    if ([v8 count] || !objc_msgSend(*v10, "count"))
    {
      goto LABEL_19;
    }

    v16 = -88;
    v17 = -80;
    v18 = -92;
    v19 = -84;
  }

  else
  {
    v16 = -80;
    v17 = -88;
    v18 = -84;
    v19 = -92;
  }

  *(v9 + v18) = *(v9 + v19);
  *(v9 + v16) = *(v9 + v17);
  v20 = *(v9 - 96);
  *(v9 + v19) = v20;
  *(v9 + v17) = v20;
LABEL_19:
  objc_storeStrong((v9 - 72), x1_0);
  *(v9 - 64) = strokes;
  *(v9 - 56) = alpha;
  if (v8)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v8;
    v22 = [v21 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v22)
    {
      v23 = *v28;
      do
      {
        v24 = 0;
        do
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v27 + 1) + 8 * v24) _bounds];
          v25 = *(self + 288);
          *&v31.a = *(self + 272);
          *&v31.c = v25;
          *&v31.tx = *(self + 304);
          ++v24;
        }

        while (v22 != v24);
        v22 = [v21 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v22);
    }
  }

LABEL_29:
}

- (void)drawingCancelledForPreview:(uint64_t)preview
{
  if (preview)
  {
    v3 = *(preview + 640);
    if (v3 != *(preview + 632) && *(v3 - 184) == 1)
    {
      v7 = _Block_copy(*(v3 - 8));
      *(preview + 640) = v5;
      if (v5 == *(preview + 632) && (a2 & 1) == 0)
      {
        [(PKMetalRenderer *)preview purgePaintFramebuffers];
        *(preview + 121) = 1;
        *(preview + 153) = 1;
        *(preview + 137) = 1;
        *(preview + 169) = 1;
        v6 = *(MEMORY[0x1E695F050] + 16);
        *(preview + 672) = *MEMORY[0x1E695F050];
        *(preview + 688) = v6;
      }

      if (v7)
      {
        v7[2]();
      }
    }
  }
}

- (void)drawNewPointsAt:(uint64_t)at drawCount:(uint64_t)count
{
  if (at)
  {
    v3 = *(at + 640);
    if (v3 != *(at + 632) && *(*(v3 - 264) + 88) != *(*(v3 - 264) + 80) && *(v3 - 184) == 1)
    {
      v5 = *(at + 8);
      if (v5)
      {
        v5 = v5[10];
      }

      v43 = v5;
      v6 = *(at + 640);
      v7 = *(v6 - 264);
      if (*(v6 - 23) != 1)
      {
        goto LABEL_27;
      }

      v8 = [*(v6 - 280) ink];
      identifier = [v8 identifier];
      if ([identifier isEqualToString:@"com.apple.ink.pencil"])
      {
        std::vector<_PKStrokePoint>::resize((at + 776), 6uLL);
        v10 = 0;
        v11 = *(v7 + 88);
        v54 = *(v11 - 64);
        v49 = *(v11 - 32);
        v12 = *(v11 - 96);
        v51 = *(v11 - 80);
        v13 = *(v11 - 56);
        v44 = *(v11 - 16);
        v46 = *(v11 - 48);
        v14 = fmax(v13, 0.1);
        v15 = *(v11 - 24) * *(at + 1064);
        v16 = *(v11 - 88) - v14;
        v17 = v14 / 5.0;
        do
        {
          v18 = *(at + 776) + v10;
          *v18 = v12;
          *(v18 + 8) = v16;
          *(v18 + 16) = v51;
          *(v18 + 32) = v54;
          *(v18 + 40) = v13;
          *(v18 + 48) = v46;
          *(v18 + 64) = v49;
          *(v18 + 72) = v15;
          v16 = v17 + v16;
          v10 += 96;
          *(v18 + 80) = v44;
        }

        while (v10 != 576);
      }

      else
      {
        v19 = (at + 776);
        if ([identifier isEqualToString:@"com.apple.ink.crayon"])
        {
          std::vector<_PKStrokePoint>::resize((at + 776), 2uLL);
          v20 = 0;
          v21 = *(v7 + 88);
          v22 = *(v21 - 96);
          v52 = *(v21 - 80);
          v55 = *(v21 - 64);
          v57 = *(v21 - 48);
          v58 = *(v21 - 32);
          v47 = *(v21 - 16);
          v23 = *(at + 1064);
          v24 = *(v21 - 88) + -1.0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v19 + 96 * v20;
            *v27 = v22;
            *(v27 + 8) = v24;
            *(v27 + 16) = v52;
            *(v27 + 32) = v55;
            *(v27 + 48) = v57;
            *(v27 + 64) = v58;
            *(v27 + 72) = v23;
            *(v27 + 80) = v47;
            v24 = v24 + 1.0;
            v20 = 1;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
        }

        else
        {
          std::vector<_PKStrokePoint>::resize((at + 776), 2uLL);
          v28 = *(v7 + 88);
          v29 = *(v28 - 96);
          v30 = *(v28 - 88);
          v53 = *(v28 - 80);
          v56 = *(v28 - 64);
          v31 = *(v28 - 56);
          v50 = *(v28 - 32);
          v32 = *(v28 - 24);
          v45 = *(v28 - 16);
          v48 = *(v28 - 48);
          behavior = [v8 behavior];
          if (behavior && (v34 = behavior[9], behavior, (v34 & 1) != 0))
          {
            *(at + 360) = v29;
            *(at + 368) = v30;
            *(at + 392) = v56;
            *(at + 376) = v53;
            *(at + 400) = v31;
            *(at + 424) = v50;
            *(at + 408) = v48;
            *(at + 432) = v32;
            *(at + 440) = v45;
            *(at + 352) = 1;
            v35 = *(at + 1064);
            *(at + 1056) = v35;
          }

          else
          {
            v35 = *(at + 1064);
          }

          v36 = [identifier isEqualToString:@"com.apple.ink.watercolor"] ? *(at + 1064) * 0.25 : v32 * v35;
          v37 = *v19;
          *v37 = v29;
          *(v37 + 8) = v30;
          *(v37 + 16) = v53;
          *(v37 + 48) = v48;
          *(v37 + 80) = v45;
          *(v37 + 64) = v50;
          *(v37 + 32) = v56;
          *(v37 + 40) = 0;
          *(v37 + 72) = v36;
          v38 = *v19;
          *(v38 + 96) = v29;
          *(v38 + 104) = v30 + 0.1;
          *(v38 + 112) = v53;
          *(v38 + 128) = v56;
          *(v38 + 136) = 0;
          *(v38 + 144) = v48;
          *(v38 + 160) = v50;
          *(v38 + 168) = v36;
          *(v38 + 176) = v45;
        }
      }

      if (*(v6 - 23))
      {
        v39 = *(at + 776);
        v40 = *(at + 784);
      }

      else
      {
LABEL_27:
        v41 = *(v6 - 192);
        if (v41 <= *(v6 - 200))
        {
          v41 = *(v6 - 200);
        }

        if (v41 <= 1)
        {
          v41 = 1;
        }

        v40 = *(v7 + 88);
        v39 = *(v7 + 80) + 96 * v41 - 96;
      }

      [(PKMetalRenderer *)at setupViewScissorClippingIfNecessaryForRenderEncoder:v43];
      if (count >= 1)
      {
        do
        {
          [(PKMetalRenderer *)at renderStroke:v39 animatingStroke:v40 renderEncoder:v6 - 360 computeEncoder:v43 renderCache:0, 0];
          --count;
        }

        while (count);
      }

      [(PKMetalRenderer *)at disableClippingForRenderEncoder:v43];
      v42 = *(at + 8);
      if (v42)
      {
        [objc_opt_class() renderTargetBarrierForRenderEncoder:*(v42 + 80)];
      }

      *(at + 736) = CGRectUnion(*(at + 736), *(v6 - 176));
      *(at + 672) = CGRectUnion(*(at + 672), *(v6 - 176));
    }
  }
}

- (void)setupViewScissorClippingIfNecessaryForRenderEncoder:(uint64_t)encoder
{
  v3 = a2;
  if (!CGRectIsNull(*(encoder + 320)))
  {
    v4 = *(encoder + 336);
    v5 = *(encoder + 344);
    v6 = *(encoder + 232);
    v7 = *(encoder + 320);
    v18.origin.y = *(encoder + 328);
    v18.origin.x = v7;
    v18.size.width = v4;
    v18.size.height = v5;
    v19.origin.y = v6 - CGRectGetMaxY(v18);
    v14 = 0u;
    v15 = 0u;
    v19.origin.x = v7;
    v19.size.width = v4;
    v19.size.height = v5;
    v8 = v15;
    if (v15)
    {
      v9 = *(&v15 + 1);
      if (*(&v15 + 1))
      {
        v16 = v14;
        v17 = v15;
        [v3 setScissorRect:&v16];
        v10 = *(encoder + 8);
        if (v10)
        {
          v10 = v10[10];
        }

        v11 = v10;

        if (v11 == v3)
        {
          v12 = *(encoder + 8);
          if (v12)
          {
            *(v12 + 176) = v14;
            *(v12 + 192) = v8;
            *(v12 + 200) = v9;
            v13 = *(v12 + 80);
            if (v13)
            {
              v16 = v14;
              *&v17 = v8;
              *(&v17 + 1) = v9;
              [v13 setScissorRect:&v16];
            }
          }
        }
      }
    }
  }
}

- (uint64_t)renderStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke renderEncoder:(void *)encoder computeEncoder:(void *)computeEncoder renderCache:(void *)cache
{
  v163 = *MEMORY[0x1E69E9840];
  encoderCopy = encoder;
  computeEncoderCopy = computeEncoder;
  cacheCopy = cache;
  *(self + 352) = 0;
  v134 = x1_0;
  strokeCopy = stroke;
  v131 = cacheCopy;
  v14 = 0xAAAAAAAAAAAAAAABLL * ((stroke - x1_0) >> 5) <= 1 && cacheCopy == 0;
  if (v14 && *(animatingStroke + 336) != 1)
  {
    encoderCopy = 0;
    goto LABEL_139;
  }

  v15 = *(animatingStroke + 248);
  v16 = *(animatingStroke + 256);
  v126 = (animatingStroke + 268);
  v17 = *(animatingStroke + 268);
  v18 = *(MEMORY[0x1E695F050] + 16);
  *(animatingStroke + 184) = *MEMORY[0x1E695F050];
  *(animatingStroke + 200) = v18;
  v19 = [*(animatingStroke + 80) ink];
  behavior = [v19 behavior];
  if (behavior && behavior[9] == 1)
  {

    if (stroke != x1_0)
    {
      memmove((self + 360), (stroke - 96), 0x60uLL);
      *(self + 352) = 1;
    }
  }

  else
  {
  }

  if (*(animatingStroke + 336))
  {
    v21 = 1;
  }

  else
  {
    v21 = *(animatingStroke + 72);
  }

  v127 = v21;
  v22 = [*(animatingStroke + 80) ink];
  behavior2 = [v22 behavior];
  renderingDescriptor = [behavior2 renderingDescriptor];
  type = [renderingDescriptor type];

  if (type)
  {
    v26 = objc_opt_class();
    v27 = PKDynamicCast(v26, v131);
    v128 = v27;
    if (v27)
    {
      encoderCopy = [(PKMetalRenderer *)self renderParticleRenderCache:v27 renderEncoder:encoderCopy computeEncoder:computeEncoderCopy animatingStroke:animatingStroke secondaryParticles:0];
      v29 = [*(animatingStroke + 80) ink];
      behavior3 = [v29 behavior];
      secondaryParticleDescriptor = [behavior3 secondaryParticleDescriptor];

      if (secondaryParticleDescriptor)
      {
        encoderCopy += [(PKMetalRenderer *)self renderParticleRenderCache:v128 renderEncoder:encoderCopy computeEncoder:computeEncoderCopy animatingStroke:animatingStroke secondaryParticles:1];
      }

      goto LABEL_136;
    }

    if (v131)
    {
      v60 = objc_opt_class();
      particleDescriptor = PKDynamicCast(v60, v131);
      encoderCopy = [(PKMetalRenderer *)self renderStrokeRenderCache:particleDescriptor renderEncoder:encoderCopy animatingStroke:animatingStroke indexed:1];
LABEL_135:

      v128 = 0;
      goto LABEL_136;
    }

    v112 = [*(animatingStroke + 80) ink];
    behavior4 = [v112 behavior];
    particleDescriptor = [behavior4 particleDescriptor];

    if ([particleDescriptor adjustEndCapParticleAlpha] && (*(animatingStroke + 337) & 1) == 0)
    {
      v117 = *(animatingStroke + 168);
      if (v117 <= *(animatingStroke + 160))
      {
        v117 = *(animatingStroke + 160);
      }

      v114 = v117 == 0;
    }

    else
    {
      v114 = 0;
    }

    if (![particleDescriptor adjustEndCapParticleAlpha])
    {
      goto LABEL_132;
    }

    v118 = *(animatingStroke + 337) ^ 1;
    if ((*(animatingStroke + 337) & 1) == 0 && ((v127 ^ 1) & 1) == 0)
    {
      if (*(animatingStroke + 176))
      {
LABEL_132:
        v118 = 0;
        goto LABEL_133;
      }

      v118 = *(*(animatingStroke + 96) + 88) == strokeCopy;
    }

LABEL_133:
    encoderCopy = [(PKMetalRenderer *)self renderParticleStroke:v134 animatingStroke:strokeCopy starts:animatingStroke ends:v114 secondaryParticles:v118 renderEncoder:0, encoderCopy];
    v119 = [*(animatingStroke + 80) ink];
    behavior5 = [v119 behavior];
    secondaryParticleDescriptor2 = [behavior5 secondaryParticleDescriptor];

    if (secondaryParticleDescriptor2)
    {
      encoderCopy += [(PKMetalRenderer *)self renderParticleStroke:v134 animatingStroke:strokeCopy starts:animatingStroke ends:0 secondaryParticles:0 renderEncoder:1, encoderCopy];
    }

    goto LABEL_135;
  }

  v32 = objc_opt_class();
  v128 = PKDynamicCast(v32, v131);
  v33 = objc_opt_class();
  v125 = PKDynamicCast(v33, v131);
  v34 = objc_opt_class();
  v124 = PKDynamicCast(v34, v131);
  animatingStrokeCopy = animatingStroke;
  selfCopy = self;
  if (v128)
  {
    v132 = v128;
    v35 = encoderCopy;
    v36 = computeEncoderCopy;
    sdfPenShaderKernelPipelineState = [(PKMetalResourceHandler *)*(self + 192) sdfPenShaderKernelPipelineState];
    [v36 setComputePipelineState:sdfPenShaderKernelPipelineState];
    v38 = [(PKMetalRenderer *)self antialiasingThresholdForStroke:?];
    *&v150.a = v38;
    memset(&v153, 0, sizeof(v153));
    v154 = 0u;
    obj = [(PKMetalSDFPenRenderCache *)v132 buffers];
    v39 = [obj countByEnumeratingWithState:&v153 objects:v162 count:16];
    if (v39)
    {
      v142 = **&v153.c;
      do
      {
        v145 = v39;
        for (i = 0; i != v145; ++i)
        {
          if (**&v153.c != v142)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*&v153.b + 8 * i);
          v151.a = 0.0;
          if (v41)
          {
            v42 = 36 * v41[5];
          }

          else
          {
            v42 = 0;
          }

          v43 = *(self + 8);
          if (v43)
          {
            v43 = v43[7];
          }

          v44 = *(self + 192);
          v45 = v43;
          v46 = [(PKMetalResourceHandler *)v44 newGPUBufferWithLength:v42 outOffset:&v151 commandBuffer:v45];

          threadExecutionWidth = [sdfPenShaderKernelPipelineState threadExecutionWidth];
          if (v41)
          {
            v48 = v41[6];
          }

          else
          {
            v48 = 0.0;
          }

          [v36 setComputePipelineState:{sdfPenShaderKernelPipelineState, v124}];
          [v36 setBytes:&v150 length:4 atIndex:3];
          uniformsBuffer = [(PKMetalSDFPenRenderCacheBuffer *)v41 uniformsBuffer];
          if (v41)
          {
            v50 = v41[3];
          }

          else
          {
            v50 = 0;
          }

          [v36 setBuffer:uniformsBuffer offset:v50 atIndex:0];

          strokePointBuffer = [(PKMetalSDFPenRenderCacheBuffer *)v41 strokePointBuffer];
          if (v41)
          {
            v52 = v41[4];
          }

          else
          {
            v52 = 0;
          }

          [v36 setBuffer:strokePointBuffer offset:v52 atIndex:1];

          [v36 setBuffer:v46 offset:*&v151.a atIndex:2];
          *&v160.a = vcvtpd_u64_f64(v48 / threadExecutionWidth);
          *&v160.b = vdupq_n_s64(1uLL);
          *&v152.a = threadExecutionWidth;
          *&v152.b = *&v160.b;
          [v36 dispatchThreadgroups:&v160 threadsPerThreadgroup:&v152];
          [PKMetalRenderer setupRenderEncoder:selfCopy forSDFPenStroke:v35 alphaFactor:animatingStrokeCopy];
          [v35 setVertexBuffer:v46 offset:*&v151.a atIndex:0];
          if (v41)
          {
            v53 = v41[5];
            v54 = ((3 * v53) >> 1) & 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = 0;
            v53 = 0;
          }

          v160.a = 0.0;
          v55 = [(PKMetalResourceHandler *)*(selfCopy + 192) indexBufferForNumVertices:v53 outIndexType:&v160];
          [v35 drawIndexedPrimitives:3 indexCount:v54 indexType:*&v160.a indexBuffer:v55 indexBufferOffset:0];

          self = selfCopy;
        }

        v39 = [obj countByEnumeratingWithState:&v153 objects:v162 count:16];
      }

      while (v39);
    }

    [*(animatingStrokeCopy + 10) _bounds];
    v56 = *(selfCopy + 288);
    *&v160.a = *(selfCopy + 272);
    *&v160.c = v56;
    *&v160.tx = *(selfCopy + 304);

    animatingStroke = animatingStrokeCopy;
    self = selfCopy;
  }

  if (v125)
  {
    v137 = v125;
    v57 = encoderCopy;
    v58 = computeEncoderCopy;
    v59 = *(self + 192);
    if (*(self + 1003) == 1)
    {
      [(PKMetalResourceHandler *)v59 paintShaderKernelPipelineStateWithLiveStrokeMode];
    }

    else
    {
      [(PKMetalResourceHandler *)v59 paintShaderKernelPipelineState];
    }
    v92 = ;
    [v58 setComputePipelineState:{v92, v124}];
    v154 = 0u;
    memset(&v153, 0, sizeof(v153));
    objb = [(PKMetalSDFPenRenderCache *)v137 buffers];
    encoderCopy = 0;
    v93 = [objb countByEnumeratingWithState:&v153 objects:v162 count:16];
    if (v93)
    {
      v144 = v92;
      v147 = **&v153.c;
      do
      {
        v94 = 0;
        do
        {
          if (**&v153.c != v147)
          {
            objc_enumerationMutation(objb);
          }

          v95 = *(*&v153.b + 8 * v94);
          v151.a = 0.0;
          if (v95)
          {
            v96 = 24 * v95[5];
          }

          else
          {
            v96 = 0;
          }

          v97 = *(selfCopy + 8);
          if (v97)
          {
            v97 = v97[7];
          }

          v98 = *(selfCopy + 192);
          v99 = v97;
          v100 = [(PKMetalResourceHandler *)v98 newGPUBufferWithLength:v96 outOffset:&v151 commandBuffer:v99];

          v92 = v144;
          threadExecutionWidth2 = [v144 threadExecutionWidth];
          if (v95)
          {
            v102 = v95[6];
          }

          else
          {
            v102 = 0.0;
          }

          [v58 setComputePipelineState:v144];
          uniformsBuffer2 = [(PKMetalSDFPenRenderCacheBuffer *)v95 uniformsBuffer];
          if (v95)
          {
            v104 = v95[3];
          }

          else
          {
            v104 = 0;
          }

          [v58 setBuffer:uniformsBuffer2 offset:v104 atIndex:0];

          strokePointBuffer2 = [(PKMetalSDFPenRenderCacheBuffer *)v95 strokePointBuffer];
          if (v95)
          {
            v106 = v95[4];
          }

          else
          {
            v106 = 0;
          }

          [v58 setBuffer:strokePointBuffer2 offset:v106 atIndex:1];

          [v58 setBuffer:v100 offset:*&v151.a atIndex:2];
          *&v160.a = vcvtpd_u64_f64(v102 / threadExecutionWidth2);
          *&v160.b = vdupq_n_s64(1uLL);
          *&v152.a = threadExecutionWidth2;
          *&v152.b = *&v160.b;
          [v58 dispatchThreadgroups:&v160 threadsPerThreadgroup:&v152];
          [(PKMetalRenderer *)selfCopy setupRenderEncoder:v57 forPenStroke:animatingStrokeCopy alphaFactor:1.0];
          [v57 setVertexBuffer:v100 offset:*&v151.a atIndex:0];
          if (v95)
          {
            v107 = v95[5];
            v108 = ((3 * v107) >> 1) & 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v108 = 0;
            v107 = 0;
          }

          v160.a = 0.0;
          v109 = [(PKMetalResourceHandler *)*(selfCopy + 192) indexBufferForNumVertices:v107 outIndexType:&v160];
          [v57 drawIndexedPrimitives:3 indexCount:v108 indexType:*&v160.a indexBuffer:v109 indexBufferOffset:0];
          if (v95)
          {
            v95 = v95[5];
          }

          encoderCopy += v95;
          ++v94;
        }

        while (v93 != v94);
        v110 = [objb countByEnumeratingWithState:&v153 objects:v162 count:16];
        v93 = v110;
      }

      while (v110);
    }

    [*(animatingStrokeCopy + 10) _bounds];
    v111 = *(selfCopy + 288);
    *&v160.a = *(selfCopy + 272);
    *&v160.c = v111;
    *&v160.tx = *(selfCopy + 304);
  }

  else
  {
    if (!v124)
    {
      if (v131)
      {
        v115 = objc_opt_class();
        v116 = PKDynamicCast(v115, v131);
        encoderCopy = [(PKMetalRenderer *)self renderStrokeRenderCache:v116 renderEncoder:encoderCopy animatingStroke:animatingStroke indexed:1];
      }

      else
      {
        {
          encoderCopy2 = [(PKMetalRenderer *)self renderSDFPenStroke:v134 animatingStroke:strokeCopy renderEncoder:animatingStroke, encoderCopy];
        }

        else
        {
          encoderCopy2 = [(PKMetalRenderer *)self renderPenStroke:v134 animatingStroke:strokeCopy renderEncoder:animatingStroke, encoderCopy];
        }

        encoderCopy = encoderCopy2;
      }

      goto LABEL_119;
    }

    obja = v124;
    v138 = encoderCopy;
    v62 = computeEncoderCopy;
    paintShaderKernelPipelineStateWithLiveStrokeParticles = [(PKMetalResourceHandler *)*(self + 192) paintShaderKernelPipelineStateWithLiveStrokeParticles];
    [v62 setComputePipelineState:?];
    v161 = 0u;
    memset(&v160, 0, sizeof(v160));
    buffers = [(PKMetalSDFPenRenderCache *)obja buffers];
    encoderCopy = 0;
    v63 = [buffers countByEnumeratingWithState:&v160 objects:v162 count:16];
    if (v63)
    {
      v135 = **&v160.c;
      do
      {
        v64 = 0;
        v143 = v63;
        do
        {
          if (**&v160.c != v135)
          {
            objc_enumerationMutation(buffers);
          }

          v65 = *(*&v160.b + 8 * v64);
          v159 = 0;
          if (v65)
          {
            v66 = 24 * *(v65 + 40);
          }

          else
          {
            v66 = 0;
          }

          v67 = *(self + 8);
          if (v67)
          {
            v67 = v67[7];
          }

          v68 = *(self + 192);
          v69 = v67;
          v70 = [(PKMetalResourceHandler *)v68 newGPUBufferWithLength:v66 outOffset:&v159 commandBuffer:v69];

          threadExecutionWidth3 = [paintShaderKernelPipelineStateWithLiveStrokeParticles threadExecutionWidth];
          if (v65)
          {
            v72 = *(v65 + 48);
          }

          else
          {
            v72 = 0.0;
          }

          [v62 setComputePipelineState:{paintShaderKernelPipelineStateWithLiveStrokeParticles, v124}];
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          *&v153.tx = 0u;
          v154 = 0u;
          LODWORD(v153.a) = 0;
          if (v65)
          {
            v73 = *(v65 + 48);
          }

          else
          {
            v73 = 0;
          }

          v74 = *(obja + 5);
          v75 = *(selfCopy + 1080) - *(obja + 4);
          if (v75 >= v74)
          {
            v75 = *(obja + 5);
          }

          v76 = v74;
          *&v77 = v75;
          *&v153.c = v76;
          v78 = *(animatingStrokeCopy + 67);
          HIDWORD(v153.a) = v73;
          *&v153.b = __PAIR64__(v77, v78);
          v79 = 0uLL;
          memset(&v152, 0, sizeof(v152));
          v80 = *(animatingStrokeCopy + 10);
          if (v80)
          {
            [v80 _inkTransform];
            v81 = COERCE_DOUBLE(vcvt_f32_f64(*&v152.a));
            v79 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v152.c), *&v152.tx);
          }

          else
          {
            v81 = 0.0;
          }

          LODWORD(v153.ty) = 0;
          v153.tx = v81;
          DWORD2(v154) = 0;
          *&v154 = v79.i64[0];
          DWORD2(v155) = 1065353216;
          *&v155 = vdupq_laneq_s64(v79, 1).u64[0];
          v150 = v152;
          CGAffineTransformInvert(&v151, &v150);
          DWORD2(v156) = 0;
          *&v156 = vcvt_f32_f64(*&v151.a);
          DWORD2(v157) = 0;
          *&v157 = vcvt_f32_f64(*&v151.c);
          DWORD2(v158) = 1065353216;
          *&v158 = vcvt_f32_f64(*&v151.tx);
          [v62 setBytes:&v153 length:128 atIndex:0];
          [v62 setBuffer:*(selfCopy + 704) offset:0 atIndex:4];
          if (v65)
          {
            v82 = *(v65 + 24);
            v83 = *(v65 + 32);
          }

          else
          {
            v82 = 0;
            v83 = 0;
          }

          [v62 setBuffer:v82 offset:v83 atIndex:3];

          if (v65)
          {
            v84 = *(v65 + 8);
            v85 = *(v65 + 16);
          }

          else
          {
            v84 = 0;
            v85 = 0;
          }

          [v62 setBuffer:v84 offset:v85 atIndex:1];

          [v62 setBuffer:v70 offset:v159 atIndex:2];
          *&v151.a = vcvtpd_u64_f64(v72 / threadExecutionWidth3);
          *&v151.b = vdupq_n_s64(1uLL);
          *&v150.a = threadExecutionWidth3;
          *&v150.b = *&v151.b;
          [v62 dispatchThreadgroups:&v151 threadsPerThreadgroup:&v150];
          [(PKMetalRenderer *)selfCopy setupRenderEncoder:v138 forPenStroke:animatingStrokeCopy alphaFactor:fmax(fmin((*(&v153.b + 1) - *&v153.c * 0.5) / (0.0 - *&v153.c * 0.5), 1.0), 0.0)];
          [v138 setVertexBuffer:v70 offset:v159 atIndex:0];
          if (v65)
          {
            v86 = *(v65 + 40);
            v87 = ((3 * v86) >> 1) & 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v87 = 0;
            v86 = 0;
          }

          v151.a = 0.0;
          v88 = [(PKMetalResourceHandler *)*(selfCopy + 192) indexBufferForNumVertices:v86 outIndexType:&v151];
          [v138 drawIndexedPrimitives:3 indexCount:v87 indexType:*&v151.a indexBuffer:v88 indexBufferOffset:0];
          if (v65)
          {
            v65 = *(v65 + 40);
          }

          encoderCopy += v65;
          ++v64;
          self = selfCopy;
        }

        while (v143 != v64);
        v89 = [buffers countByEnumeratingWithState:&v160 objects:v162 count:16];
        v63 = v89;
      }

      while (v89);
    }

    [*(animatingStrokeCopy + 10) _bounds];
    v90 = *(selfCopy + 288);
    *&v153.a = *(selfCopy + 272);
    *&v153.c = v90;
    *&v153.tx = *(selfCopy + 304);
    v166 = *(obja + 48);
    v91 = *(selfCopy + 288);
    *&v153.a = *(selfCopy + 272);
    *&v153.c = v91;
    *&v153.tx = *(selfCopy + 304);
  }

  animatingStroke = animatingStrokeCopy;
  self = selfCopy;
LABEL_119:

LABEL_136:
  if ((v127 & 1) == 0)
  {
    *(animatingStroke + 248) = v15;
    *(animatingStroke + 256) = v16;
    *v126 = v17;
  }

  *(self + 736) = CGRectUnion(*(self + 736), *(animatingStroke + 184));
LABEL_139:

  return encoderCopy;
}

- (void)disableClippingForRenderEncoder:(uint64_t)encoder
{
  v3 = a2;
  v9.size.width = *(encoder + 224);
  v9.size.height = *(encoder + 232);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v8.width = v9.size.width;
  v8.height = v9.size.height;
  [v3 setScissorRect:v7];
  v4 = *(encoder + 8);
  if (v4)
  {
    v4 = v4[10];
  }

  v5 = v4;

  if (v5 == v3)
  {
    v6 = *(encoder + 8);
    if (v6)
    {
      *(v6 + 176) = 0u;
      *(v6 + 192) = 0u;
    }
  }
}

- (uint64_t)applyStrokeSpaceClipRect:(double)rect strokeTransform:(double)transform
{
  v7 = a2[1];
  *&v16.a = *a2;
  *&v16.c = v7;
  *&v16.tx = a2[2];
  v17 = CGRectApplyAffineTransform(*&rect, &v16);
  v18 = CGRectIntegral(v17);
  v14 = 0u;
  v15 = 0u;
  v8 = v15;
  if (v15)
  {
    v9 = *(&v15 + 1) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9)
  {
    v11 = *(self + 8);
    if (v11)
    {
      *(v11 + 176) = v14;
      *(v11 + 192) = v8;
      v12 = *(v11 + 80);
      if (v12)
      {
        *&v16.a = v14;
        *&v16.c = v8;
        [v12 setScissorRect:&v16];
      }
    }
  }

  return v10;
}

- (uint64_t)renderStrokes:(__int128 *)strokes clippedToStrokeSpaceRect:(void *)rect strokeTransform:(double)transform stopBlock:(double)block
{
  v15 = a2;
  rectCopy = rect;
  if (self && (v17 = strokes[1], v23 = *strokes, v24 = v17, v25 = strokes[2], [(PKMetalRenderer *)self applyStrokeSpaceClipRect:transform strokeTransform:block, a7, a8]))
  {
    v18 = strokes[1];
    v23 = *strokes;
    v24 = v18;
    v25 = strokes[2];
    v19 = [(PKMetalRenderer *)self _renderStrokes:v15 clippedToStrokeSpaceRect:&v23 strokeTransform:rectCopy stopBlock:transform, block, a7, a8];
    v20 = *(self + 8);
    if (v20)
    {
      v20 = v20[10];
    }

    v21 = v20;
    [(PKMetalRenderer *)self disableClippingForRenderEncoder:v21];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (uint64_t)_renderStrokes:(_OWORD *)strokes clippedToStrokeSpaceRect:(void *)rect strokeTransform:(double)transform stopBlock:(double)block
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = a2;
  rectCopy = rect;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults BOOLForKey:@"internalSettings.drawing.slowRendering"];

  if ((*(self + 1003) & 1) == 0)
  {
    v15 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v27.a) = 134217984;
      *(&v27.a + 4) = [v25 count];
      _os_log_debug_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEBUG, "Metal Render %ld strokes.", &v27, 0xCu);
    }
  }

  v16 = *(self + 8);
  if ([v25 count] && v16)
  {
    *(self + 16) = 0;
    v18 = strokes[1];
    v17 = strokes[2];
    *(self + 272) = *strokes;
    *(self + 288) = v18;
    *(self + 304) = v17;
    [v25 count];
    kdebug_trace();
    v19 = strokes[1];
    *&v27.a = *strokes;
    *&v27.c = v19;
    *&v27.tx = strokes[2];
    transformCopy = transform;
    *&v19 = block;
    v21 = a7;
    v22 = a8;
    v29 = CGRectApplyAffineTransform(*(&v19 - 8), &v27);
    CGRectIntegral(v29);
    operator new();
  }

  return 0;
}

- (uint64_t)renderStrokes:(void *)strokes stopBlock:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  strokesCopy = strokes;
  if (self)
  {
    v7 = 0;
    v8 = 0;
    v34 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v9 = *(self + 688);
    v31 = *(self + 672);
    v32 = v9;
    v10 = *(self + 1003);
    v11 = MEMORY[0x1E695F050];
    if (v10 == 1)
    {
      v8 = *(self + 8);
      v12 = 0;
      v13 = &v33;
      v14 = 1;
      do
      {
        v15 = v14;
        v16 = (self + 112 + 16 * v12);
        v14 = 0;
        v13 = &v35;
        v12 = 1;
      }

      while ((v15 & 1) != 0);
      v7 = *(self + 176);
      v17 = *(self + 176);
      *(self + 176) = 0;

      v18 = *(self + 8);
      *(self + 8) = 0;

      v19 = *(v11 + 1);
      *(self + 672) = *v11;
      *(self + 688) = v19;
    }

    v20 = *(self + 8);
    if (!v20)
    {
      [(PKMetalRenderer *)self setupRenderStateForRenderingStrokes:v5];
    }

    v21 = *v11;
    v22 = v11[1];
    v23 = v11[2];
    v24 = v11[3];
    v25 = *(self + 288);
    v30[0] = *(self + 272);
    v30[1] = v25;
    v30[2] = *(self + 304);
    v26 = [(PKMetalRenderer *)self _renderStrokes:v5 clippedToStrokeSpaceRect:v30 strokeTransform:strokesCopy stopBlock:v21, v22, v23, v24];
    if (!v20)
    {
      [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
    }

    if (v8)
    {
      objc_storeStrong((self + 8), v8);
    }

    if (v7)
    {
      objc_storeStrong((self + 176), v7);
    }

    if (v10)
    {
    }

    v27 = v32;
    *(self + 672) = v31;
    *(self + 688) = v27;

    for (i = 16; i != -16; i -= 16)
    {
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)setupRenderStateForRenderingStrokes:(uint64_t)strokes
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        _strokeMask = [v7 _strokeMask];
        v9 = _strokeMask == 0;

        if (!_strokeMask)
        {
          _renderMask = [v7 _renderMask];
          v11 = _renderMask == 0;

          if (v11)
          {
            continue;
          }
        }

        v12 = _strokeMask != 0;
        goto LABEL_13;
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v9 = 0;
      v12 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
    v12 = 0;
  }

LABEL_13:

  if ([v3 count])
  {
    v13 = [v3 objectAtIndexedSubscript:0];
    v14 = [v13 ink];
    _numPaintFramebuffers = [v14 _numPaintFramebuffers];
  }

  else
  {
    _numPaintFramebuffers = 0;
  }

  [(PKMetalRenderer *)strokes setupRenderStateForStrokeRenderingNumPaintBuffers:_numPaintFramebuffers needRenderMask:v9 || v12];
}

- (void)teardownRenderStateIfNecessary
{
  if (self)
  {
    v2 = *(self + 8);
    if (v2)
    {
      [(PKMetalRenderState *)v2 commitAndPurgeResourceSet:?];
      v3 = *(self + 8);
      *(self + 8) = 0;
    }
  }
}

- (void)setupRenderStateWithLiveRenderConfig:(uint64_t)config
{
  v65[1] = *MEMORY[0x1E69E9840];
  v4 = *(config + 8);
  if (v4 && (*(v4 + 40) & 1) == 0)
  {
    [(PKMetalRenderer *)config teardownRenderStateIfNecessary];
  }

  v5 = *a2;
  v6 = *(config + 8);
  if (v6)
  {
    v7 = (a2 + 80);
    v8 = *(a2 + 80);
LABEL_19:
    *(v6 + 168) = v8;
    v20 = *(config + 8);
    if (v20)
    {
      *(v20 + 44) = *(a2 + 72);
      v21 = *(config + 8);
      if (v21)
      {
        *(v21 + 47) = *(a2 + 73);
      }
    }

    goto LABEL_22;
  }

  v9 = *(config + 728);
  v10 = 808;
  if (!v9)
  {
    v10 = 800;
  }

  v11 = *(config + v10);
  v65[0] = v11;
  if (v9 == 1)
  {
    v12 = 0;
    v13 = 1;
  }

  else if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v9 == 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = *(a2 + 80);
    v12 = 2 * v14 + 2;
    *(v65 + v12) = v11;
    *(v65 + 2 * v14 + 3) = v65[0];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v15 = [PKMetalRenderState alloc];
  v16 = [(PKMetalRenderState *)&v15->super.isa initWithCommandQueue:1 liveRendering:v65[0] defaultPipelineConfig:?];
  v17 = *(config + 8);
  *(config + 8) = v16;

  v18 = *(config + 8);
  if (v18)
  {
    *(v18 + 152) = v13;
    v19 = *(config + 8);
    if (v19)
    {
      *(v19 + 144) = v12;
      v6 = *(config + 8);
      v7 = (a2 + 80);
      v8 = *(a2 + 80);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  v7 = (a2 + 80);
LABEL_22:
  v8 = *v7;
LABEL_23:
  v22 = *(a2 + 40);
  v23 = v22 != 1;
  if (v8 >= 1 && v22 == 1)
  {
    v25 = (config + 121);
    v26 = 1;
    while (1)
    {
      v27 = *(v25 - 9);
      if (!v27 || (*(v27 + 18) & 1) != 0 || *(v25 - 1) != 1)
      {
        break;
      }

      v28 = *v25;
      v25 += 16;
      v23 = v28;
      if (v26 < v8)
      {
        ++v26;
        if (!v23)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    v23 = 1;
  }

LABEL_36:
  v29 = *(a2 + 32);
  [(PKMetalRenderer *)config setupDrawingFramebuffersIfNecessaryWantMemorylessPaint:?];
  if (v8 >= 1)
  {
    v30 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v31 = vdupq_n_s64(v8 - 1);
    v32 = xmmword_1C801DDF0;
    v33 = xmmword_1C801DE00;
    v34 = xmmword_1C801DE10;
    v35 = xmmword_1C801DE20;
    v36 = xmmword_1C801DE30;
    v37 = xmmword_1C801DE40;
    v38 = xmmword_1C801D840;
    v39 = xmmword_1C8018F80;
    v40 = (config + 185);
    v41 = vdupq_n_s64(0x10uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v31, v39));
      if (vuzp1_s8(vuzp1_s16(v42, *v31.i8), *v31.i8).u8[0])
      {
        *(v40 - 64) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v42, *&v31), *&v31).i8[1])
      {
        *(v40 - 48) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v38))), *&v31).i8[2])
      {
        *(v40 - 32) = 0;
        *(v40 - 16) = 0;
      }

      v43 = vmovn_s64(vcgeq_u64(v31, v37));
      if (vuzp1_s8(*&v31, vuzp1_s16(v43, *&v31)).i32[1])
      {
        *v40 = 0;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(v43, *&v31)).i8[5])
      {
        v40[16] = 0;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v36)))).i8[6])
      {
        v40[32] = 0;
        v40[48] = 0;
      }

      v44 = vmovn_s64(vcgeq_u64(v31, v35));
      if (vuzp1_s8(vuzp1_s16(v44, *v31.i8), *v31.i8).u8[0])
      {
        v40[64] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v44, *&v31), *&v31).i8[1])
      {
        v40[80] = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v34))), *&v31).i8[2])
      {
        v40[96] = 0;
        v40[112] = 0;
      }

      v45 = vmovn_s64(vcgeq_u64(v31, v33));
      if (vuzp1_s8(*&v31, vuzp1_s16(v45, *&v31)).i32[1])
      {
        v40[128] = 0;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(v45, *&v31)).i8[5])
      {
        v40[144] = 0;
      }

      if (vuzp1_s8(*&v31, vuzp1_s16(*&v31, vmovn_s64(vcgeq_u64(v31, *&v32)))).i8[6])
      {
        v40[160] = 0;
        v40[176] = 0;
      }

      v37 = vaddq_s64(v37, v41);
      v38 = vaddq_s64(v38, v41);
      v39 = vaddq_s64(v39, v41);
      v36 = vaddq_s64(v36, v41);
      v35 = vaddq_s64(v35, v41);
      v34 = vaddq_s64(v34, v41);
      v33 = vaddq_s64(v33, v41);
      v40 += 256;
      v32 = vaddq_s64(v32, v41);
      v30 -= 16;
    }

    while (v30);
  }

  [(PKMetalRenderState *)*(config + 8) setDestinationTexture:v5];
  v46 = *(config + 8);
  if (v46)
  {
    *(v46 + 128) = 3;
  }

  if ((*(config + 728) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(PKMetalRenderer *)config allocateAndClearAddMultiplyFramebuffersIfNecessary];
    [(PKMetalRenderState *)*(config + 8) setMultiplyDestinationTexture:?];
    v47 = *(config + 8);
    if (!v47)
    {
      goto LABEL_71;
    }

    v47[16] = 0;
    v47 = *(config + 8);
    if (!v47)
    {
      goto LABEL_71;
    }

    v47[17] = 3;
  }

  v47 = *(config + 8);
  if (v47)
  {
    v47 = v47[10];
  }

LABEL_71:
  v48 = v47;

  if (!v48)
  {
    commandBufferCreateIfNecessary = [(PKMetalRenderState *)*(config + 8) commandBufferCreateIfNecessary];
    [commandBufferCreateIfNecessary setLabel:@"Live rendering command buffer"];
    v50 = 1;
    if (v23)
    {
      v50 = 2;
    }

    *(a2 + 40) = v50;
    v59[0] = *a2;
    v59[1] = *(a2 + 8);
    v51 = *(a2 + 64);
    v62 = *(a2 + 48);
    v63 = v51;
    v64 = *(a2 + 80);
    v52 = *(a2 + 16);
    v61 = *(a2 + 32);
    v60 = v52;
    v53 = [(PKMetalRenderer *)config renderCommandEncoderForCommandBuffer:commandBufferCreateIfNecessary renderStateConfig:v59 renderState:*(config + 8)];
    [(PKMetalRenderState *)*(config + 8) setRenderEncoder:v53];
    if (v29 == 1)
    {
      *(config + 72) = 0;
    }
  }

  v54 = *(config + 640);
  v55 = *(config + 632);
  if (v54 != v55)
  {
    v56 = 0;
    v57 = 344;
    do
    {
      v58 = *(v55 + v57);
      if (v58)
      {
        [(PKMetalRenderState *)*(config + 8) extendLifetimeUntilCompleted:v58];
        v54 = *(config + 640);
        v55 = *(config + 632);
      }

      ++v56;
      v57 += 360;
    }

    while (v56 < 0x4FA4FA4FA4FA4FA5 * ((v54 - v55) >> 3));
  }
}

- (void)setupDrawingFramebuffersIfNecessaryWantMemorylessPaint:(uint64_t)paint
{
  [(PKMetalRenderer *)paint setupOriginalBackFramebufferIfNecessary];
  v4 = *(paint + 8);
  if (!v4)
  {
    goto LABEL_52;
  }

  if ((*(v4 + 152) & 0xFFFFFFFFFFFFFFFELL) != 4)
  {
    goto LABEL_14;
  }

  v5 = *(paint + 56);
  if (v5)
  {
    if (*(paint + 64))
    {
      goto LABEL_14;
    }

    incrementNonPurgeableCount = [(PKMetalFramebuffer *)v5 incrementNonPurgeableCount];
    *(paint + 64) = incrementNonPurgeableCount;
    if (incrementNonPurgeableCount)
    {
      goto LABEL_14;
    }

LABEL_8:
    v7 = *(paint + 56);
    if (v7 && ((*(paint + 64) & 1) != 0 || (*(paint + 64) = [(PKMetalFramebuffer *)v7 incrementNonPurgeableCount], (v7 = *(paint + 56)) != 0)))
    {
      v8 = *(v7 + 24);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v9 setLabel:@"Six channel multiply framebuffer"];

    goto LABEL_14;
  }

  if ((*(paint + 64) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v10 = *(paint + 8);
  if (!v10)
  {
    goto LABEL_52;
  }

  v11 = (paint + 112);
  v12 = -1;
  while (++v12 < *(v10 + 168))
  {
    v13 = *v11;
    if (*v11)
    {
      {
        if ((v11[1] & 1) == 0)
        {
          *(v11 + 8) = [(PKMetalFramebuffer *)v13 incrementNonPurgeableCount];
        }
      }
    }

    if ((v11[1] & 1) == 0)
    {
      v14 = *v11;
      if (*v11)
      {
        v14 = v14[3];
      }

      v15 = v14;
      [v15 setLabel:@"Paint framebuffer"];

      if (*v11 && (v11[1] & 1) == 0)
      {
        *(v11 + 8) = [(PKMetalFramebuffer *)*v11 incrementNonPurgeableCount];
      }

      *(v11 + 9) = 1;
    }

    v16 = *(paint + 8);
    if (!v16)
    {
      goto LABEL_52;
    }

    if (*(v16 + 47) == 1)
    {
      v18 = v11 + 4;
      v17 = v11[4];
      if (v17)
      {
        if ((v11[5] & 1) == 0)
        {
          incrementNonPurgeableCount2 = [(PKMetalFramebuffer *)v17 incrementNonPurgeableCount];
          *(v11 + 40) = incrementNonPurgeableCount2;
          if ((incrementNonPurgeableCount2 & 1) == 0)
          {
LABEL_36:
            v20 = *v18;
            if (*v18 && ((v11[5] & 1) != 0 || (*(v11 + 40) = [(PKMetalFramebuffer *)v20 incrementNonPurgeableCount], (v20 = v11[4]) != 0)))
            {
              v21 = *(v20 + 3);
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
            [v22 setLabel:@"Accumulation framebuffer"];

            *(v11 + 41) = 1;
          }
        }
      }

      else if ((v11[5] & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v11 += 2;
    v10 = *(paint + 8);
    if (!v10)
    {
      goto LABEL_52;
    }
  }

  if ((*(v10 + 44) & 1) == 0 || *(paint + 176))
  {
    goto LABEL_56;
  }

  v23 = [[PKMetalFramebuffer alloc] initWithSize:*(paint + 24) pixelFormat:0 device:0 memoryless:1 backedByIOSurface:0 sampleCount:*(paint + 224) purgeable:*(paint + 232)];
  v24 = *(paint + 176);
  *(paint + 176) = v23;

  v25 = *(paint + 176);
  if (v25)
  {
    v25 = v25[3];
  }

  v26 = v25;
  [v26 setLabel:@"Paint mask framebuffer"];

  v10 = *(paint + 8);
  if (v10)
  {
LABEL_56:
    if (*(v10 + 44) == 1 && !*(paint + 184))
    {
      v27 = [[PKMetalFramebuffer alloc] initWithSize:*(paint + 24) pixelFormat:1 device:0 memoryless:*(paint + 712) backedByIOSurface:0 sampleCount:*(paint + 224) purgeable:*(paint + 232)];
      v28 = *(paint + 184);
      *(paint + 184) = v27;
    }
  }

LABEL_52:
  if (!*(paint + 704))
  {
    randomNumberBuffer = [(PKMetalResourceHandler *)*(paint + 192) randomNumberBuffer];
    v30 = *(paint + 704);
    *(paint + 704) = randomNumberBuffer;
  }
}

- (void)allocateAndClearAddMultiplyFramebuffersIfNecessary
{
  v2 = (self + 968);
  v3 = *(self + 968);
  if (v3)
  {
    if (*(self + 976))
    {
LABEL_5:
      v5 = v3[5];
      goto LABEL_8;
    }

    incrementNonPurgeableCount = [(PKMetalFramebuffer *)v3 incrementNonPurgeableCount];
    *(self + 976) = incrementNonPurgeableCount;
    if (incrementNonPurgeableCount)
    {
      v3 = *v2;
      if (*v2)
      {
        goto LABEL_5;
      }

LABEL_7:
      v5 = 0;
LABEL_8:
      if (v5 == *(self + 1008))
      {
        goto LABEL_18;
      }
    }
  }

  else if (*(self + 976))
  {
    goto LABEL_7;
  }

  v6 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_DEFAULT, "Allocate Add Layer Framebuffer", v22, 2u);
  }

  v7 = *(self + 968);
  if (v7 && ((*(self + 976) & 1) != 0 || (*(self + 976) = [(PKMetalFramebuffer *)v7 incrementNonPurgeableCount], (v7 = *(self + 968)) != 0)))
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v9 setLabel:@"Add Layer Framebuffer"];

  *(self + 977) = 1;
  v10 = *(self + 968);
  if (v10)
  {
    *(v10 + 104) = 0u;
    *(v10 + 88) = 0u;
  }

LABEL_18:
  if (*(self + 977) == 1)
  {
    *(self + 977) = 0;
    [PKMetalRenderer clearFramebuffer:self waitUntilCompleted:*(self + 968)];
  }

  v11 = (self + 984);
  v12 = *(self + 984);
  if (v12)
  {
    if (*(self + 992))
    {
LABEL_24:
      v14 = *(v12 + 5);
      goto LABEL_27;
    }

    incrementNonPurgeableCount2 = [(PKMetalFramebuffer *)v12 incrementNonPurgeableCount];
    *(self + 992) = incrementNonPurgeableCount2;
    if (incrementNonPurgeableCount2)
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_24;
      }

LABEL_26:
      v14 = 0;
LABEL_27:
      if (v14 == *(self + 1008))
      {
        goto LABEL_40;
      }
    }
  }

  else if (*(self + 992))
  {
    goto LABEL_26;
  }

  v15 = os_log_create("com.apple.pencilkit", "Sketching");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Allocate Multiply Layer Framebuffer", v22, 2u);
  }

  v16 = *(self + 984);
  if (v16 && ((*(self + 992) & 1) != 0 || (*(self + 992) = [(PKMetalFramebuffer *)v16 incrementNonPurgeableCount], (v16 = *(self + 984)) != 0)))
  {
    v17 = *(v16 + 24);
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  [v18 setLabel:@" Layer Framebuffer"];

  *(self + 993) = 1;
  v19 = *(self + 728);
  v20 = 0.0;
  if (v19 != 3 && v19 != 5)
  {
    v20 = 1.0;
  }

  v21 = *v11;
  if (*v11)
  {
    v21[11] = v20;
    v21[12] = v20;
    v21[13] = v20;
    v21[14] = v20;
  }

LABEL_40:
  if (*(self + 993) == 1)
  {
    *(self + 993) = 0;
    [PKMetalRenderer clearFramebuffer:self waitUntilCompleted:*(self + 984)];
  }
}

- (id)renderCommandEncoderForCommandBuffer:(id *)buffer renderStateConfig:(void *)config renderState:
{
  v93 = *MEMORY[0x1E69E9840];
  v86 = a2;
  configCopy = config;
  renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v88 = [colorAttachments objectAtIndexedSubscript:0];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v87 = [colorAttachments2 objectAtIndexedSubscript:3];

  [v88 setLoadAction:buffer[3]];
  [v88 setStoreAction:buffer[4]];
  v10 = *(self + 728) & 0xFFFFFFFFFFFFFFFELL;
  if (v10 == 2)
  {
    if (*buffer)
    {
      [v88 setClearColor:{0.0, 0.0, 0.0, 0.0}];
      [v88 setTexture:*buffer];
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v10 != 4)
  {
LABEL_8:
    [v88 setClearColor:{*(self + 80), *(self + 88), *(self + 96), *(self + 104)}];
    v11 = *(self + 40);
    if (v11)
    {
      v11 = v11[3];
    }

    goto LABEL_10;
  }

  [v88 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v11 = *(self + 40);
  if (v11)
  {
    v11 = v11[3];
  }

LABEL_10:
  v12 = v11;
  [v88 setTexture:v12];

LABEL_11:
  v13 = *(self + 40);
  if (v13)
  {
    [(PKMetalRenderState *)configCopy addPurgeableFramebuffer:v13];
  }

  selfCopy = self;
  v14 = renderPassDescriptor;
  if (buffer[10] >= 1)
  {
    v15 = 0;
    v16 = self + 144;
    v17 = self + 112;
    v18 = self + 200;
    do
    {
      colorAttachments3 = [v14 colorAttachments];
      v20 = colorAttachments3;
      if (v15)
      {
        v21 = 4;
      }

      else
      {
        v21 = 1;
      }

      v22 = [colorAttachments3 objectAtIndexedSubscript:v21];

      if (configCopy)
      {
        v23 = (v16 + 16 * v15);
        if (*(configCopy + 46))
        {
          v24 = v17 + 32;
        }

        else
        {
          v24 = v17;
        }
      }

      else
      {
        v23 = (v17 + 32);
        v24 = v17;
      }

      v25 = *v24;
      if (*v24)
      {
        v25 = v25[3];
      }

      v26 = v25;
      [v22 setTexture:v26];

      [(PKMetalRenderState *)configCopy addPurgeableFramebuffer:?];
      v27 = *v24;
      if (*(v24 + 9))
      {
        v28 = 2;
        if (v27)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v27 && (v27[18] & 1) != 0)
        {
          v28 = 2;
LABEL_31:
          v29 = v27[18] ^ 1;
          goto LABEL_32;
        }

        v28 = buffer[5];
        if (v27)
        {
          goto LABEL_31;
        }
      }

      v29 = 1;
LABEL_32:
      [v22 setLoadAction:v28];
      [v22 setStoreAction:v29];
      [v22 setClearColor:{0.0, 0.0, 0.0, 0.0}];
      *(v24 + 9) = 0;

      if ((!configCopy || (*(configCopy + 46) & 1) == 0) && *(buffer + 73) == 1 && *v23)
      {
        colorAttachments4 = [v14 colorAttachments];
        v31 = colorAttachments4;
        if (v15)
        {
          v32 = 5;
        }

        else
        {
          v32 = 2;
        }

        v33 = [colorAttachments4 objectAtIndexedSubscript:v32];

        if (*(v17 + 41))
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        [v33 setLoadAction:v34];
        *(v17 + 41) = 0;
        [v33 setStoreAction:1];
        v35 = *v23;
        if (*v23)
        {
          v35 = v35[3];
        }

        v36 = v35;
        [v33 setTexture:v36];

        [(PKMetalRenderState *)configCopy addPurgeableFramebuffer:?];
        goto LABEL_55;
      }

      colorAttachments5 = [v14 colorAttachments];
      v38 = colorAttachments5;
      if (v15)
      {
        v39 = 5;
      }

      else
      {
        v39 = 2;
      }

      v33 = [colorAttachments5 objectAtIndexedSubscript:v39];

      [v33 setLoadAction:0];
      [v33 setStoreAction:0];
      v40 = *(v18 + 8 * v15);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v42 = [[PKMetalFramebuffer alloc] initWithSize:*(selfCopy + 24) pixelFormat:1 device:0 memoryless:1 backedByIOSurface:0 sampleCount:*(selfCopy + 224) purgeable:*(selfCopy + 232)];
        v43 = *(v18 + 8 * v15);
        *(v18 + 8 * v15) = v42;

        v44 = *(v18 + 8 * v15);
        if (v44)
        {
          v44 = v44[3];
        }

        v45 = v44;
        [v45 setLabel:@"Dummy Paint Framebuffer"];

        v41 = *(v18 + 8 * v15);
        if (!v41)
        {
          v46 = 0;
          goto LABEL_54;
        }
      }

      v46 = v41[3];
LABEL_54:
      v47 = v46;
      [v33 setTexture:v47];

LABEL_55:
      ++v15;
      v17 += 16;
    }

    while (v15 < buffer[10]);
  }

  v48 = v14;
  [v87 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  v49 = *(selfCopy + 728);
  if ((v49 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v50 = *(selfCopy + 8);
    if (v50)
    {
      v50 = v50[15];
    }

    v51 = v50;
    [v87 setTexture:v51];

    [v87 setLoadAction:buffer[2]];
    [v87 setStoreAction:1];
    [v87 setClearColor:{1.0, 1.0, 1.0, 1.0}];
    v52 = *(selfCopy + 968);
    if (v52)
    {
      v53 = *(v52 + 24);
      if (v53)
      {
        v54 = v53;
        v55 = *(selfCopy + 984);
        if (v55)
        {
          v55 = v55[3];
        }

        v56 = v55;

        if (v56)
        {
          [(PKMetalRenderState *)configCopy addPurgeableFramebuffer:?];
          [(PKMetalRenderState *)configCopy addPurgeableFramebuffer:?];
          v57 = *(selfCopy + 8);
          if (v57)
          {
            v58 = *(v57 + 144);
          }

          else
          {
            v58 = 0;
          }

          colorAttachments6 = [v14 colorAttachments];
          v60 = [colorAttachments6 objectAtIndexedSubscript:v58];

          [v60 setLoadAction:1];
          [v60 setStoreAction:1];
          v61 = *(selfCopy + 968);
          if (v61)
          {
            v61 = v61[3];
          }

          v62 = v61;
          [v60 setTexture:v62];

          colorAttachments7 = [v14 colorAttachments];
          v64 = [colorAttachments7 objectAtIndexedSubscript:v58 + 1];

          [v64 setLoadAction:1];
          [v64 setStoreAction:1];
          v65 = *(selfCopy + 984);
          if (v65)
          {
            v65 = v65[3];
          }

          v66 = v65;
          [v64 setTexture:v66];
        }
      }
    }

    goto LABEL_101;
  }

  v67 = buffer[4];
  if (configCopy)
  {
    v68 = *(configCopy + 14);

    if (v68)
    {
      v69 = buffer[2];
      if (v69 == 2)
      {
        v70 = *(selfCopy + 240);
        if (v70)
        {
          v91 = xmmword_1C801DED0;
          v92 = unk_1C801DEE0;
          DKUColorGetRGBAComponents(v70, &v91);
          [v87 setClearColor:{v91, v92}];
        }

        else
        {
          [v87 setClearColor:{*&PKMetalRendererBackboardWhiteLevel, *&PKMetalRendererBackboardWhiteLevel, *&PKMetalRendererBackboardWhiteLevel, 1.0}];
        }
      }

      v82 = *(selfCopy + 8);
      if (v82)
      {
        v82 = v82[14];
      }

      v83 = v82;
      [v87 setTexture:v83];

      [v87 setLoadAction:v69];
      [v87 setStoreAction:1];
      goto LABEL_101;
    }

    v49 = *(selfCopy + 728);
  }

  if (!v49 || !*(selfCopy + 56) || v67 != 1)
  {
    v74 = *(selfCopy + 216);
    if (v74)
    {
      v75 = v74;
    }

    else
    {
      v76 = [[PKMetalFramebuffer alloc] initWithSize:*(selfCopy + 24) pixelFormat:1 device:0 memoryless:1 backedByIOSurface:0 sampleCount:*(selfCopy + 224) purgeable:*(selfCopy + 232)];
      v77 = *(selfCopy + 216);
      *(selfCopy + 216) = v76;

      v78 = *(selfCopy + 216);
      if (v78)
      {
        v78 = v78[3];
      }

      v79 = v78;
      [v79 setLabel:@"Dummy Color Framebuffer"];

      v75 = *(selfCopy + 216);
      if (!v75)
      {
        v80 = 0;
        goto LABEL_96;
      }
    }

    v80 = v75[3];
LABEL_96:
    v81 = v80;
    [v87 setTexture:v81];

    [v87 setLoadAction:0];
    [v87 setStoreAction:0];
    goto LABEL_101;
  }

  v71 = 0.0;
  if (v49 != 3 && v49 != 5)
  {
    v71 = 1.0;
  }

  [v87 setClearColor:{v71, v71, v71, v71}];
  v72 = *(selfCopy + 56);
  if (v72)
  {
    v72 = v72[3];
  }

  v73 = v72;
  [v87 setTexture:v73];

  [(PKMetalRenderState *)configCopy addPurgeableFramebuffer:?];
  [v87 setLoadAction:buffer[3]];
  [v87 setStoreAction:1];
LABEL_101:
  v84 = [v86 renderCommandEncoderWithDescriptor:v14];

  return v84;
}

- (void)setupRenderStateForStrokeRenderingNumPaintBuffers:(int)buffers needRenderMask:
{
  v6 = *(self + 8);
  if (v6)
  {
    if ((*(v6 + 40) & 1) == 0 || ([(PKMetalRenderer *)self teardownRenderStateIfNecessary], v6 = *(self + 8), v7 = a2 > 0, v6))
    {
      if (a2 <= 0)
      {
        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v7 = a2 > 0;
  }

  v8 = [[PKMetalRenderState alloc] initWithCommandQueue:0 liveRendering:*(self + 800) defaultPipelineConfig:?];
  v9 = *(self + 8);
  *(self + 8) = v8;

  if (v7)
  {
    v10 = *(self + 8);
    if (v10)
    {
      *(v10 + 168) = a2;
    }

    v11 = *(self + 728);
    if (v11)
    {
      v12 = 5;
      if (v11 != 3 && v11 != 5)
      {
        v12 = 4;
      }

      v13 = *(self + 8);
      if (!v13)
      {
        v6 = 0;
        if ((buffers & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      *(v13 + 152) = v12;
    }

    v6 = *(self + 8);
    if ((buffers & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (!v6)
    {
      goto LABEL_21;
    }

    *(v6 + 44) = 1;
    v6 = *(self + 8);
LABEL_19:
    if (v6)
    {
LABEL_20:
      *(v6 + 168) = a2;
    }

LABEL_21:
    v14 = 2;
    goto LABEL_26;
  }

  if (buffers)
  {
    v15 = *(self + 8);
    if (v15)
    {
      v14 = 0;
      *(v15 + 44) = 1;
      goto LABEL_26;
    }
  }

LABEL_25:
  v14 = 0;
LABEL_26:
  [(PKMetalRenderer *)self setupDrawingFramebuffersIfNecessaryWantMemorylessPaint:?];
  v16 = *(self + 8);
  if (v16)
  {
    v16 = v16[10];
  }

  v17 = v16;

  if (!v17)
  {
    v18 = *(self + 8);
    if (v18)
    {
      v19 = *(v18 + 168);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(self + 72);
    commandBufferCreateIfNecessary = [(PKMetalRenderState *)v18 commandBufferCreateIfNecessary];
    v24[0] = 0;
    v24[1] = 0;
    if (v20)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v24[2] = 0;
    v24[3] = v22;
    v24[4] = 1;
    v24[5] = v14;
    memset(&v24[6], 0, 24);
    v25 = 0;
    v26 = v19;
    v23 = [(PKMetalRenderer *)self renderCommandEncoderForCommandBuffer:commandBufferCreateIfNecessary renderStateConfig:v24 renderState:*(self + 8)];
    [(PKMetalRenderState *)*(self + 8) setRenderEncoder:v23];
    *(self + 72) = 0;
  }
}

- (void)renderAheadWithTransform:(int)transform onPaper:(void *)paper renderBufferSize:(void *)size destinationTexture:(float64_t)texture destinationMultiplyTexture:(float64_t)multiplyTexture
{
  v194 = *MEMORY[0x1E69E9840];
  paperCopy = paper;
  sizeCopy = size;
  if (!self)
  {
    goto LABEL_187;
  }

  v12 = *(self + 632);
  v13 = *(self + 640);
  while (v12 != v13)
  {
    if ((*(v12 + 176) & 1) == 0)
    {
    }

    v12 += 360;
  }

  v144 = paperCopy;
  v187 = 0;
  v186 = 0uLL;
  v145 = sizeCopy;
  v14 = *(self + 8);
  if (v14)
  {
    *(v14 + 43) = transform;
  }

  if (transform)
  {
    v15 = 2 * (*(self + 240) != 0);
  }

  else
  {
    v15 = 2;
  }

  if (*(self + 72))
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = *(self + 640);
  if (*(self + 632) == v17)
  {
    if (*(self + 656))
    {
      if ([*(self + 664) count])
      {
        v152 = *(self + 664);
        v18 = 1.0;
      }

      else
      {
        v152 = 0;
        v18 = 0.0;
      }

      v24 = [*(self + 656) ink];
      _numPaintFramebuffers = [v24 _numPaintFramebuffers];

      v149 = 0;
      if (_numPaintFramebuffers <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = _numPaintFramebuffers;
      }

      v148 = v26;
      v156 = 1;
      v23 = 1;
    }

    else
    {
      v149 = 0;
      v156 = 0;
      v152 = 0;
      v18 = 0.0;
      v23 = 2;
      v148 = 1;
    }
  }

  else
  {
    v149 = *(v17 - 75);
    v152 = *(v17 - 72);
    v18 = *(v17 - 64);
    v19 = *(v17 - 40);
    v20 = [*(v17 - 280) ink];
    _numPaintFramebuffers2 = [v20 _numPaintFramebuffers];
    v156 = v19 ^ 1;

    if (_numPaintFramebuffers2 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = _numPaintFramebuffers2;
    }

    v148 = v22;
    if (v19)
    {
      v23 = 2;
    }

    else
    {
      v23 = 1;
    }
  }

  v27 = *(self + 728);
  if (v27 != 1)
  {
    *(self + 480) = *(self + 1008);
    if ((v27 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v15 = 2;
      v16 = 2;
    }

    goto LABEL_41;
  }

  if (*(self + 497) == 1)
  {
    v28 = (self + 1008);
LABEL_39:
    v29 = *v28;
    goto LABEL_40;
  }

  v29 = *(self + 192);
  if (v29)
  {
    v28 = (v29 + 432);
    goto LABEL_39;
  }

LABEL_40:
  *(self + 480) = v29;
LABEL_41:
  v146 = v144;
  v180[0] = v146;
  v147 = v145;
  v180[1] = v147;
  v180[2] = v15;
  v180[3] = v16;
  v180[4] = 1;
  v180[5] = v23;
  memset(&v180[6], 0, 24);
  v181 = v149;
  v182 = v156;
  v183 = v148;
  [(PKMetalRenderer *)self setupRenderStateWithLiveRenderConfig:v180];
  selfCopy = self;
  if ((*(self + 728) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v30 = *(self + 8);
    if (v30)
    {
      v30 = v30[10];
    }

    v31 = v30;
    [(PKMetalRenderer *)self copyFromAddMultiplyLayersUsingRenderEncoder:v31 clearIfMissing:0];
  }

  [(PKMetalRenderState *)*(self + 8) pushDebugGroup:?];
  if (v156)
  {
    v32 = *(self + 632);
    v33 = v32 != *(self + 640) && (*(v32 + 337) & 1) == 0 && *(*(v32 + 96) + 72) > *(v32 + 160) + 1;
    [(PKMetalRenderer *)self resetPaintFramebufferAccumulate:v33];
  }

  if ([v152 count])
  {
    v162 = [MEMORY[0x1E695DFA8] set];
    v179 = 0u;
    v177 = 0u;
    v178 = 0u;
    v176 = 0u;
    obj = v152;
    v34 = [obj countByEnumeratingWithState:&v176 objects:v191 count:16];
    if (v34)
    {
      v160 = *v177;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v177 != v160)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v176 + 1) + 8 * i);
          v163 = v162;
          if (*(self + 8))
          {
            v37 = [(PKMetalRenderer *)self renderZoomFactorForStroke:v36];
            if (v36)
            {
              [(PKStroke *)v36 _transform];
            }

            else
            {
              memset(&t1, 0, sizeof(t1));
            }

            *&buf[2].c = t1;
            v193 = v18;
            operator new();
          }

          self = selfCopy;
        }

        v34 = [obj countByEnumeratingWithState:&v176 objects:v191 count:16];
      }

      while (v34);
    }

    self = selfCopy;
  }

  else
  {
    v162 = 0;
  }

  v38 = *(self + 352);
  *(self + 352) = 0;
  v39 = *a2;
  v40 = a2[1];
  v42 = a2[2];
  v41 = a2[3];
  v44 = a2[4];
  v43 = a2[5];
  [(PKMetalRenderState *)*(self + 8) pushDebugGroup:?];
  v45 = *(self + 8);
  if (v45)
  {
    v45 = v45[10];
  }

  v46 = v45;
  v47 = *(self + 632);
  v48 = *(self + 640);
  v143 = v38;
  if (v47 != v48)
  {
    v49 = 0;
    *(self + 72) = 0;
    v50 = 0x4FA4FA4FA4FA4FA5 * ((v48 - v47) >> 3);
    if (v50 <= 1)
    {
      v50 = 1;
    }

    v51 = (v47 + 304);
    v164 = -1;
    do
    {
      if (*(*(v51 - 26) + 108) == 1 && (!*(v51 - 2) || *v51 < 0.01 || *(v51 - 1) < 0.01))
      {
        v164 = v49;
      }

      ++v49;
      v51 += 45;
    }

    while (v50 != v49);
    if (v164 > 0)
    {
      v52 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0].a) = 0;
        _os_log_impl(&dword_1C7CCA000, v52, OS_LOG_TYPE_DEFAULT, "Detected more than one stroke finished", buf, 2u);
      }

      self = selfCopy;
    }

    v53 = 0;
    for (j = 1; ; j = 0)
    {
      v55 = *(self + 632);
      v56 = 0x4FA4FA4FA4FA4FA5 * ((*(self + 640) - v55) >> 3);
      if (v53 >= v56)
      {
        goto LABEL_180;
      }

      v57 = v53;
      v58 = v55 + 360 * v53;
      *(self + 736) = CGRectUnion(*(self + 736), *(v58 + 184));
      if (((*(v58 + 337) | v156) & 1) == 0)
      {
        v59 = *(v58 + 96);
        selfCopy2 = self;
        v62 = *(v59 + 72);
        v61 = *(v59 + 80);
        v63 = *(v58 + 168);
        *(v58 + 336) = 1;
        [(PKMetalRenderer *)selfCopy2 setupViewScissorClippingIfNecessaryForRenderEncoder:v46];
        if (v63 <= 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = v63;
        }

        [(PKMetalRenderer *)selfCopy renderStroke:v61 + 96 * v62 animatingStroke:v58 renderEncoder:v46 computeEncoder:0 renderCache:0];
        [(PKMetalRenderer *)selfCopy disableClippingForRenderEncoder:v46];
        v65 = *(selfCopy + 8);
        if (v65)
        {
          [objc_opt_class() renderTargetBarrierForRenderEncoder:*(v65 + 80)];
        }

        *(v58 + 168) = v62;
        *(v58 + 336) = 0;
        self = selfCopy;
      }

      *(self + 672) = CGRectUnion(*(self + 672), *(v58 + 216));
      if (j)
      {
        v66 = 0;
      }

      else
      {
        v66 = 2;
      }

      buf[0].a = v39;
      buf[0].b = v40;
      buf[0].c = v42;
      buf[0].d = v41;
      buf[0].tx = v44;
      buf[0].ty = v43;
      [(PKMetalRenderer *)self renderWithTransform:buf animatingStroke:v58 mode:v66 clipped:(j & 1) == 0 renderBufferSize:v46 renderEncoder:texture, multiplyTexture];
      if (v57 > v164)
      {
        v53 = v57 + 1;
        goto LABEL_146;
      }

      [(PKMetalRenderState *)*(self + 8) pushDebugGroup:?];
      v67 = *(self + 8);
      if (v67)
      {
        v67 = v67[10];
      }

      v68 = v67;
      v69 = *(self + 632);
      v70 = *(v69 + 96);
      v71 = *(v69 + 168);
      if (v71 <= *(v69 + 160))
      {
        v71 = *(v69 + 160);
      }

      if (v71 <= 1)
      {
        v71 = 1;
      }

      v72 = *(v70 + 88);
      v73 = *(v70 + 80) + 96 * v71 - 96;
      if (0xAAAAAAAAAAAAAAABLL * ((v72 - v73) >> 5) < 2)
      {
        v76 = (v69 + 338);
        if (*(v69 + 338))
        {
          goto LABEL_111;
        }
      }

      else
      {
        v74 = os_log_create("com.apple.pencilkit", "Sketching");
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0].a) = 134217984;
          *(&buf[0].a + 4) = 0xAAAAAAAAAAAAAAABLL * ((v72 - v73) >> 5);
          _os_log_impl(&dword_1C7CCA000, v74, OS_LOG_TYPE_DEFAULT, "FinishFrontStroke: Rendering remaining stroke points: %lu", buf, 0xCu);
        }

        [(PKMetalRenderer *)selfCopy setupViewScissorClippingIfNecessaryForRenderEncoder:v68];
        [(PKMetalRenderer *)selfCopy renderStroke:v73 animatingStroke:v72 renderEncoder:v69 computeEncoder:v68 renderCache:0, 0];
        [(PKMetalRenderer *)selfCopy disableClippingForRenderEncoder:v68];
        v75 = *(selfCopy + 8);
        if (v75)
        {
          [objc_opt_class() renderTargetBarrierForRenderEncoder:*(v75 + 80)];
        }

        *(selfCopy + 736) = CGRectUnion(*(selfCopy + 736), *(v69 + 184));
        *(selfCopy + 672) = CGRectUnion(*(selfCopy + 672), *(v69 + 184));
        v76 = (v69 + 338);
        if (*(v69 + 338))
        {
          [(PKMetalRenderer *)selfCopy resetPaintFramebufferAccumulate:?];
          goto LABEL_111;
        }
      }

      v153 = *MEMORY[0x1E695F050];
      v155 = *(MEMORY[0x1E695F050] + 8);
      obja = *(MEMORY[0x1E695F050] + 16);
      v159 = *(MEMORY[0x1E695F050] + 24);
      v77 = v68;
      v78 = *(selfCopy + 288);
      *&buf[0].a = *(selfCopy + 272);
      *&buf[0].c = v78;
      *&buf[0].tx = *(selfCopy + 304);
      v79 = v153;
      *&v78 = v155;
      v80 = obja;
      v81 = v159;
      v195 = CGRectApplyAffineTransform(*(&v78 - 8), buf);
      [(PKMetalRenderer *)selfCopy finishRenderingNoTeardownForStroke:v69 clippedToPixelSpaceRect:v77 renderEncoder:v195.origin.x, v195.origin.y, v195.size.width, v195.size.height];
      [(PKMetalRenderer *)selfCopy finishRendering];

LABEL_111:
      if (*(*(v69 + 96) + 108) == 1)
      {
        v82 = *(v69 + 288);
        if (!v82 || *(v69 + 304) < 0.01 || *(v69 + 296) < 0.01)
        {
          if (*v76 == 1 && [v82 count])
          {
            v83 = [*(v69 + 288) copy];
            v84 = *(selfCopy + 664);
            *(selfCopy + 664) = v83;
          }

          v85 = _Block_copy(*(v69 + 352));
          if (v85)
          {
            v86 = *(selfCopy + 8);
            if (v86)
            {
              v86 = v86[7];
            }

            v87 = v86;
            *&t1.a = MEMORY[0x1E69E9820];
            *&t1.b = 3221225472;
            *&t1.c = __36__PKMetalRenderer_finishFrontStroke__block_invoke;
            *&t1.d = &unk_1E82DA1F8;
            *&t1.tx = v85;
            [v87 addCompletedHandler:&t1];
          }
        }
      }

      v88 = *(selfCopy + 632);
      v89 = *(selfCopy + 640);
      if ((v88 + 360) != v89)
      {
        do
        {
          v90 = v88 + 360;
          v91 = *(v88 + 360);
          *(v88 + 360) = 0;
          *(v88 + 368) = 0;
          v92 = *(v88 + 8);
          *v88 = v91;
          if (v92)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v92);
          }

          v93 = *(v88 + 376);
          *(v88 + 376) = 0;
          *(v88 + 384) = 0;
          v94 = *(v88 + 24);
          *(v88 + 16) = v93;
          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          v95 = *(v88 + 392);
          *(v88 + 392) = 0;
          *(v88 + 400) = 0;
          v96 = *(v88 + 40);
          *(v88 + 32) = v95;
          if (v96)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96);
          }

          v97 = *(v88 + 408);
          *(v88 + 408) = 0;
          *(v88 + 416) = 0;
          v98 = *(v88 + 56);
          *(v88 + 48) = v97;
          if (v98)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v98);
          }

          *(v88 + 64) = *(v88 + 424);
          *(v88 + 71) = *(v88 + 431);
          v99 = *(v88 + 440);
          *(v88 + 440) = 0;
          v100 = *(v88 + 80);
          *(v88 + 80) = v99;

          v101 = *(v88 + 448);
          *(v88 + 448) = 0;
          v102 = *(v88 + 88);
          *(v88 + 88) = v101;

          v103 = *(v88 + 456);
          *(v88 + 456) = 0;
          std::unique_ptr<PKBSplineFilter>::reset[abi:ne200100]((v88 + 96), v103);
          v104 = *(v88 + 464);
          *(v88 + 464) = 0;
          std::unique_ptr<PKMetalInputProvider>::reset[abi:ne200100]((v88 + 104), v104);
          v105 = *(v88 + 616);
          *(v88 + 240) = *(v88 + 600);
          *(v88 + 256) = v105;
          *(v88 + 270) = *(v88 + 630);
          v106 = *(v88 + 552);
          *(v88 + 176) = *(v88 + 536);
          *(v88 + 192) = v106;
          v107 = *(v88 + 584);
          *(v88 + 208) = *(v88 + 568);
          *(v88 + 224) = v107;
          v108 = *(v88 + 488);
          *(v88 + 112) = *(v88 + 472);
          *(v88 + 128) = v108;
          v109 = *(v88 + 520);
          *(v88 + 144) = *(v88 + 504);
          *(v88 + 160) = v109;
          v110 = *(v88 + 648);
          *(v88 + 648) = 0;
          v111 = *(v88 + 288);
          *(v88 + 288) = v110;

          v112 = *(v88 + 672);
          *(v88 + 296) = *(v88 + 656);
          *(v88 + 312) = v112;
          *(v88 + 323) = *(v88 + 683);
          v113 = *(v88 + 704);
          *(v88 + 704) = 0;
          v114 = *(v88 + 344);
          *(v88 + 344) = v113;

          v115 = *(v88 + 712);
          *(v88 + 712) = 0;
          v116 = *(v88 + 352);
          *(v88 + 352) = v115;

          v88 += 360;
        }

        while ((v90 + 360) != v89);
        v89 = *(selfCopy + 640);
        v88 = v90;
      }

      while (v89 != v88)
      {
        v89 = (v89 - 360);
      }

      v117 = selfCopy;
      *(selfCopy + 640) = v88;
      if (*(selfCopy + 632) == v88)
      {
        if (*(selfCopy + 1007) != 1 || (v118 = [*(selfCopy + 664) count], v117 = selfCopy, v118))
        {
          [(PKMetalRenderer *)v117 purgePaintFramebuffers];
          v117 = selfCopy;
          *(selfCopy + 121) = 1;
          *(selfCopy + 153) = 1;
          *(selfCopy + 137) = 1;
          *(selfCopy + 169) = 1;
          v119 = *(MEMORY[0x1E695F050] + 16);
          *(selfCopy + 672) = *MEMORY[0x1E695F050];
          *(selfCopy + 688) = v119;
        }
      }

      v120 = *(v117 + 8);
      if (v120)
      {
        [*(v120 + 80) popDebugGroup];
      }

      --v164;
      if (v156)
      {
        self = selfCopy;
        if ((*(selfCopy + 1007) & 1) == 0)
        {
          for (k = 0; ; ++k)
          {
            v126 = *(self + 8);
            if (v126)
            {
              v126 = *(v126 + 168);
            }

            if (k >= v126)
            {
              break;
            }

            if (k)
            {
              v127 = 5;
            }

            else
            {
              v127 = 2;
            }

            v128 = [(PKMetalRenderer *)self eraseShaderForAttachmentIndex:v127];
            [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v128 renderEncoder:v46];

            self = selfCopy;
          }
        }

        v53 = v57;
      }

      else
      {
        v53 = v57;
        self = selfCopy;
      }

LABEL_146:
      if (v57 != v56 - 1 && (*(self + 1007) & 1) == 0)
      {
        memset(buf, 0, 32);
        if (*&buf[0].c)
        {
          if (*&buf[0].d)
          {
            for (m = 0; ; ++m)
            {
              v122 = *(self + 8);
              if (v122)
              {
                v122 = *(v122 + 168);
              }

              if (m >= v122)
              {
                break;
              }

              if (m)
              {
                v123 = 4;
              }

              else
              {
                v123 = 1;
              }

              v124 = [(PKMetalRenderer *)self eraseShaderForAttachmentIndex:v123];
              [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v124 renderEncoder:v46];

              self = selfCopy;
            }

            v129 = *(MEMORY[0x1E695F050] + 16);
            *(self + 672) = *MEMORY[0x1E695F050];
            *(self + 688) = v129;
          }
        }
      }

      [(PKMetalRenderer *)self disableClippingForRenderEncoder:v46];
    }
  }

  v130 = *(self + 656);
  if (v130)
  {
    v131 = *(MEMORY[0x1E695EFD0] + 16);
    *&buf[0].a = *MEMORY[0x1E695EFD0];
    *&buf[0].c = v131;
    *&buf[0].tx = *(MEMORY[0x1E695EFD0] + 32);
    v132 = COERCE__INT64(fabs(v39 * v41 - v40 * v42)) > 0x7FEFFFFFFFFFFFFFLL;
    if (fabs(v39 * v41 - v40 * v42) >= 0.001 && !v132 && (*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && texture > 0.0 && multiplyTexture > 0.0)
    {
      t1.a = v39;
      t1.b = v40;
      t1.c = v42;
      t1.d = v41;
      t1.tx = v44;
      t1.ty = v43;
      t2.a = 2.0 / texture;
      t2.c = 0.0;
      t2.b = 0.0;
      t2.d = 2.0 / multiplyTexture;
      __asm { FMOV            V0.2D, #-1.0 }

      v161 = _Q0;
      *&t2.tx = _Q0;
      CGAffineTransformConcat(buf, &t1, &t2);
      t1.c = 0.0;
      t1.b = 0.0;
      __asm { FMOV            V1.2D, #0.5 }

      v139 = vmulq_f64(*(self + 248), _Q1);
      *&t1.a = v139.i64[0];
      *&t1.d = vextq_s8(v139, v139, 8uLL);
      *&t1.ty = v139.i64[1];
      v188.a = v39;
      v188.b = v40;
      v188.c = v42;
      v188.d = v41;
      v188.tx = v44;
      v188.ty = v43;
      CGAffineTransformConcat(&t2, &t1, &v188);
      v188.a = 2.0 / texture;
      v188.b = 0.0;
      v188.c = 0.0;
      v188.d = 2.0 / multiplyTexture;
      *&v188.tx = v161;
      CGAffineTransformConcat(&t1, &t2, &v188);
      buf[0] = t1;
    }

    v140 = *(self + 192);
    if (v140)
    {
      LOBYTE(v140) = *(v140 + 420);
    }

    t1 = buf[0];
    [(PKMetalRenderer *)self renderStroke:v130 withTransform:&t1 mode:0 flipped:v140 & 1 renderBufferSize:v46 renderEncoder:0 currentClipRect:texture needRenderMask:multiplyTexture, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }

  else
  {
    buf[0].a = v39;
    buf[0].b = v40;
    buf[0].c = v42;
    buf[0].d = v41;
    buf[0].tx = v44;
    buf[0].ty = v43;
    [(PKMetalRenderer *)self renderWithTransform:buf animatingStroke:0 mode:0 clipped:0 renderBufferSize:v46 renderEncoder:texture, multiplyTexture];
  }

LABEL_180:
  v141 = *(self + 8);
  if (v141)
  {
    [*(v141 + 80) popDebugGroup];
  }

  *(selfCopy + 352) = v143;
  v142 = *(selfCopy + 8);
  if (v142)
  {
    [*(v142 + 80) popDebugGroup];
  }

  if ((*(selfCopy + 1001) & 1) == 0)
  {
    [(PKMetalRenderState *)*(selfCopy + 8) commitAndPurgeResourceSet:v162];
    v166[0] = v146;
    v166[1] = v147;
    v167 = vdupq_n_s64(1uLL);
    v168 = v167;
    v169 = v186;
    v170 = v187;
    v171 = v149;
    v172 = v156;
    v173 = v184;
    v174 = v185;
    v175 = v148;
    [(PKMetalRenderer *)selfCopy setupRenderStateWithLiveRenderConfig:v166];
  }

LABEL_187:
}

- (void)copyFromAddMultiplyLayersUsingRenderEncoder:(int)encoder clearIfMissing:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!self[1])
  {
    v13 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "No render state when copying add/multiply layers.", buf, 2u);
    }

    goto LABEL_22;
  }

  v6 = self[121];
  if (v6)
  {
    v7 = *(v6 + 24);
    if (v7)
    {
      v8 = v7;
      v9 = self[123];
      if (v9)
      {
        v9 = v9[3];
      }

      v10 = v9;

      if (v10)
      {
        [(PKMetalRenderer *)self setupForDefaultUberVertexShaderInRenderEncoder:v5];
        [(PKMetalRenderer *)self setupViewScissorClippingIfNecessaryForRenderEncoder:v5];
        v11 = self[1];
        if (v11)
        {
          pipelineConfig = [(PKMetalRenderState *)v11 pipelineConfig];
        }

        else
        {
          pipelineConfig = self[100];
        }

        v14 = self[24];
        *buf = 7;
        memset(&buf[8], 0, 24);
        v33 = pipelineConfig;
        v13 = [(PKMetalResourceHandler *)v14 namedShaderForKey:buf];
        LODWORD(v31) = 1065353216;
        [v5 setFragmentBytes:&v31 length:4 atIndex:0];
        v15 = self[121];
        if (v15)
        {
          v15 = v15[3];
        }

        v16 = v15;
        [v5 setFragmentTexture:v16 atIndex:0];

        [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v13 renderEncoder:v5];
        v17 = self[24];
        *buf = 7;
        *&buf[8] = 3;
        memset(&buf[12], 0, 20);
        v33 = pipelineConfig;
        v18 = [(PKMetalResourceHandler *)v17 namedShaderForKey:buf];
        v19 = self[123];
        if (v19)
        {
          v19 = v19[3];
        }

        v20 = v19;
        [v5 setFragmentTexture:v20 atIndex:0];

        [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v18 renderEncoder:v5];
        goto LABEL_22;
      }
    }
  }

  if (encoder)
  {
    [(PKMetalRenderer *)self setupForDefaultUberVertexShaderInRenderEncoder:v5];
    v21 = self[1];
    if (v21)
    {
      pipelineConfig2 = [(PKMetalRenderState *)v21 pipelineConfig];
    }

    else
    {
      pipelineConfig2 = self[100];
    }

    v23 = self[24];
    *buf = 12;
    memset(&buf[8], 0, 24);
    v33 = pipelineConfig2;
    v13 = [(PKMetalResourceHandler *)v23 namedShaderForKey:buf];
    v31 = 0uLL;
    [v5 setFragmentBytes:&v31 length:16 atIndex:0];
    [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v13 renderEncoder:v5];
    v24 = self[24];
    *buf = 12;
    *&buf[8] = 3;
    memset(&buf[12], 0, 20);
    v33 = pipelineConfig2;
    v25 = [(PKMetalResourceHandler *)v24 namedShaderForKey:buf];
    __asm { FMOV            V0.4S, #1.0 }

    v31 = _Q0;
    [v5 setFragmentBytes:&v31 length:16 atIndex:0];
    [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v25 renderEncoder:v5];

LABEL_22:
  }
}

- (void)resetPaintFramebufferAccumulate:(uint64_t)accumulate
{
  v4 = *(accumulate + 8);
  if (v4)
  {
    v4 = v4[10];
  }

  v5 = v4;
  [(PKMetalRenderState *)*(accumulate + 8) pushDebugGroup:?];
  if (a2)
  {
    [(PKMetalRenderState *)*(accumulate + 8) pushDebugGroup:?];
    v6 = *(accumulate + 632);
    v7 = *(v6 + 184);
    v8 = *(v6 + 192);
    v9 = *(v6 + 200);
    v10 = *(v6 + 208);
    v11 = *(v6 + 96);
    v12 = *(v6 + 160);
    v13 = v11[10];
    v14 = v11[11];
    v15 = v11[9];
    *(v6 + 72) = 1;
    v16 = *(v6 + 304);
    *(v6 + 304) = 0x3FF0000000000000;
    [(PKMetalRenderer *)accumulate setupViewScissorClippingIfNecessaryForRenderEncoder:v5];
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 5);
    if (v17 >= v15)
    {
      v17 = v15;
    }

    v18 = v13 + 96 * v17;
    if (v12 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v12;
    }

    [(PKMetalRenderer *)accumulate renderStroke:v18 animatingStroke:v6 renderEncoder:v5 computeEncoder:0 renderCache:0];
    [(PKMetalRenderer *)accumulate disableClippingForRenderEncoder:v5];
    *(v6 + 72) = 0;
    *(v6 + 304) = v16;
    v20 = *(accumulate + 8);
    if (v20)
    {
      [objc_opt_class() renderTargetBarrierForRenderEncoder:*(v20 + 80)];
    }

    v68.origin.x = v7;
    v68.origin.y = v8;
    v68.size.width = v9;
    v68.size.height = v10;
    *(v6 + 184) = CGRectUnion(v68, *(v6 + 184));
    *(v6 + 160) = *(*(v6 + 96) + 72);
    v21 = *(accumulate + 8);
    if (v21)
    {
      [*(v21 + 80) popDebugGroup];
    }
  }

  v22 = *(accumulate + 632);
  if (v22 == *(accumulate + 640))
  {
    v37 = *(accumulate + 632);
  }

  else
  {
    if ([*(v22 + 288) count])
    {
      v23 = *(accumulate + 632);
      v69 = CGRectUnion(*(v23 + 216), *(accumulate + 672));
      v70 = CGRectIntegral(v69);
      x = v70.origin.x;
      y = v70.origin.y;
      width = v70.size.width;
      height = v70.size.height;
      v28 = 0;
      for (i = 144; ; i += 16)
      {
        v30 = *(accumulate + 8);
        v31 = v30 ? v30[21] : 0;
        if (v28 >= v31)
        {
          break;
        }

        v32 = *(accumulate + 192);
        if (v32 && *(v32 + 420) == 1)
        {
          if (v30)
          {
            v30 = v30[10];
          }

          v33 = v30;
          [(PKMetalRenderer *)accumulate copyFromFramebuffer:v33 toFramebuffer:v28 clipRect:x renderEncoder:y paintIndex:width alphaBlendFactor:height, *(v23 + 304)];
        }

        else
        {
          v34 = *(accumulate + i);
          if (v34)
          {
            v34 = v34[3];
          }

          v33 = v34;
          v35 = *(accumulate + 8);
          if (v35)
          {
            v35 = v35[10];
          }

          v36 = v35;
          [(PKMetalRenderer *)accumulate copyIntoPaintFromTexture:v33 clipRect:v36 renderEncoder:v28 paintIndex:x alphaBlendFactor:y, width, height, *(v23 + 304)];
        }

        ++v28;
      }

      goto LABEL_74;
    }

    v37 = *(accumulate + 640);
    v22 = *(accumulate + 632);
  }

  if (*(accumulate + 1007))
  {
    if (v37 - v22 == 360)
    {
      v71 = CGRectUnion(*(v22 + 184), *(accumulate + 672));
      goto LABEL_55;
    }

LABEL_53:
    if (v22 == v37)
    {
      x = *(accumulate + 672);
      y = *(accumulate + 680);
      width = *(accumulate + 688);
      height = *(accumulate + 696);
LABEL_57:
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      if (CGRectIsNull(v73) || (v74.origin.x = x, v74.origin.y = y, v74.size.width = width, v74.size.height = height, v75 = CGRectIntegral(v74), x = v75.origin.x, y = v75.origin.y, width = v75.size.width, height = v75.size.height, [(PKMetalRenderState *)*(accumulate + 8) pushDebugGroup:?], (v46 = *(accumulate + 8)) == 0))
      {
LABEL_74:
        v77.origin.x = x;
        v77.origin.y = y;
        v77.size.width = width;
        v77.size.height = height;
        *(accumulate + 736) = CGRectUnion(*(accumulate + 736), v77);
        v61 = *(MEMORY[0x1E695F050] + 16);
        *(accumulate + 672) = *MEMORY[0x1E695F050];
        *(accumulate + 688) = v61;
        goto LABEL_75;
      }

      v47 = 0;
      v48 = (accumulate + 144);
      while (1)
      {
        if (v47 >= *(v46 + 168))
        {
          [*(v46 + 80) popDebugGroup];
          goto LABEL_74;
        }

        v49 = *(accumulate + 192);
        if (!v49)
        {
          break;
        }

        v50 = *v48;
        if (*(v49 + 420) != 1)
        {
          goto LABEL_65;
        }

        v51 = *(v48 - 4);
        v52 = *(v46 + 80);
        v53 = v50;
        v54 = v51;
        v55 = v52;
        [(PKMetalRenderer *)accumulate copyFromFramebuffer:v55 toFramebuffer:v47 clipRect:x renderEncoder:y paintIndex:width alphaBlendFactor:height, 1.0];
        v56 = v55;
LABEL_70:

        ++v47;
        v46 = *(accumulate + 8);
        v48 += 2;
        if (!v46)
        {
          goto LABEL_74;
        }
      }

      v50 = *v48;
LABEL_65:
      if (v50)
      {
        v57 = v50[3];
      }

      else
      {
        v57 = 0;
      }

      v58 = v57;
      v59 = *(accumulate + 8);
      if (v59)
      {
        v59 = v59[10];
      }

      v60 = v59;
      v54 = v58;
      v55 = v60;
      [(PKMetalRenderer *)accumulate copyIntoPaintFromTexture:v54 clipRect:v55 renderEncoder:v47 paintIndex:x alphaBlendFactor:y, width, height, 1.0];
      v53 = v55;
      v56 = v54;
      goto LABEL_70;
    }

    v71 = CGRectUnion(*(v22 + 216), *(accumulate + 672));
LABEL_55:
    x = v71.origin.x;
    y = v71.origin.y;
    width = v71.size.width;
    height = v71.size.height;
    goto LABEL_57;
  }

  if (v22 != v37 && (*(v22 + 160) > 0 || (a2 & 1) != 0))
  {
    if (v37 - v22 == 360)
    {
      x = *(v22 + 184);
      y = *(v22 + 192);
      width = *(v22 + 200);
      height = *(v22 + 208);
      goto LABEL_57;
    }

    goto LABEL_53;
  }

  if (!CGRectIsNull(*(accumulate + 672)))
  {
    [(PKMetalRenderState *)*(accumulate + 8) pushDebugGroup:?];
    v72 = CGRectIntegral(*(accumulate + 672));
    v38 = v72.origin.x;
    v39 = v72.origin.y;
    v40 = v72.size.width;
    v41 = v72.size.height;
    v66 = 0u;
    v67 = 0u;
    if (v67 && *(&v67 + 1))
    {
      v76.origin.x = v38;
      v76.origin.y = v39;
      v76.size.width = v40;
      v76.size.height = v41;
      *(accumulate + 736) = CGRectUnion(*(accumulate + 736), v76);
      v65[0] = v66;
      v65[1] = v67;
      [v5 setScissorRect:v65];
      for (j = 0; ; ++j)
      {
        v43 = *(accumulate + 8);
        if (v43)
        {
          v43 = *(v43 + 168);
        }

        if (j >= v43)
        {
          break;
        }

        if (j)
        {
          v44 = 4;
        }

        else
        {
          v44 = 1;
        }

        v45 = [(PKMetalRenderer *)accumulate eraseShaderForAttachmentIndex:v44];
        [(PKMetalRenderer *)accumulate setupForDefaultUberVertexShaderInRenderEncoder:v5];
        [(PKMetalRenderer *)accumulate renderFullscreenQuadWithShader:v45 renderEncoder:v5];
      }

      [(PKMetalRenderer *)accumulate disableClippingForRenderEncoder:v5];
    }

    v63 = *(MEMORY[0x1E695F050] + 16);
    *(accumulate + 672) = *MEMORY[0x1E695F050];
    *(accumulate + 688) = v63;
    v64 = *(accumulate + 8);
    if (v64)
    {
      [*(v64 + 80) popDebugGroup];
    }
  }

LABEL_75:
  v62 = *(accumulate + 8);
  if (v62)
  {
    [*(v62 + 80) popDebugGroup];
  }
}

- (void)renderLiveStrokeWithTransform:(float64_t)transform renderBufferSize:(float64_t)size
{
  if (self)
  {
    v5 = self[80];
    if (v5 != self[79] && *(v5 - 184) == 1)
    {
      if (*(v5 - 23) == 1)
      {
        v9 = [*(v5 - 280) ink];
        identifier = [v9 identifier];

        if (([identifier isEqualToString:{@"com.apple.ink.marker", CACurrentMediaTime()}] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"com.apple.ink.pencil"))
        {
          v10 = 3;
        }

        else
        {
          v10 = 1;
        }

        [PKMetalRenderer drawNewPointsAt:self drawCount:v10];
      }

      v11 = self[1];
      if (v11)
      {
        v11 = v11[10];
      }

      v16 = v11;
      [(PKMetalRenderState *)self[1] pushDebugGroup:?];
      v12 = self[80] - 360;
      v13 = a2[1];
      v17[0] = *a2;
      v17[1] = v13;
      v17[2] = a2[2];
      [(PKMetalRenderer *)self renderWithTransform:v17 animatingStroke:v12 mode:0 clipped:1 renderBufferSize:v16 renderEncoder:transform, size];
      v14 = self[1];
      if (v14)
      {
        [*(v14 + 80) popDebugGroup];
      }
    }
  }
}

- (void)renderWithTransform:(uint64_t)transform animatingStroke:(unint64_t)stroke mode:(int)mode clipped:(void *)clipped renderBufferSize:(float64_t)size renderEncoder:(float64_t)encoder
{
  clippedCopy = clipped;
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v42.a = *MEMORY[0x1E695EFD0];
  *&v42.c = v16;
  v17 = MEMORY[0x1E695F050];
  *&v42.tx = *(MEMORY[0x1E695EFD0] + 32);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v22 = fabs(*a2 * *(a2 + 24) - *(a2 + 8) * *(a2 + 16));
  if (v22 >= 0.001 && *&v22 <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && size > 0.0 && encoder > 0.0)
  {
    v23 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v23;
    *&t1.tx = *(a2 + 32);
    t2.a = 2.0 / size;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.d = 2.0 / encoder;
    __asm { FMOV            V0.2D, #-1.0 }

    v38 = _Q0;
    *&t2.tx = _Q0;
    CGAffineTransformConcat(&v42, &t1, &t2);
    t1.b = 0.0;
    t1.c = 0.0;
    __asm { FMOV            V1.2D, #0.5 }

    v30 = vmulq_f64(*(self + 248), _Q1);
    *&t1.a = v30.i64[0];
    *&t1.d = vextq_s8(v30, v30, 8uLL);
    *&t1.ty = v30.i64[1];
    v31 = *(a2 + 16);
    *&v39.a = *a2;
    *&v39.c = v31;
    *&v39.tx = *(a2 + 32);
    CGAffineTransformConcat(&t2, &t1, &v39);
    v39.a = 2.0 / size;
    v39.b = 0.0;
    v39.c = 0.0;
    v39.d = 2.0 / encoder;
    *&v39.tx = v38;
    CGAffineTransformConcat(&t1, &t2, &v39);
    v42 = t1;
  }

  if (transform)
  {
    if (mode && !CGRectIsNull(*(transform + 184)))
    {
      v43 = *(transform + 184);
      v32 = *(self + 232);
      t1.a = 2.0 / *(self + 224);
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = 2.0 / v32;
      __asm { FMOV            V4.2D, #-1.0 }

      *&t1.tx = _Q4;
      v44 = CGRectApplyAffineTransform(v43, &t1);
      t1 = v42;
      v45 = CGRectApplyAffineTransform(v44, &t1);
      t1.a = size * 0.5;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = encoder * 0.5;
      t1.tx = size * 0.5;
      t1.ty = encoder * 0.5;
      v46 = CGRectApplyAffineTransform(v45, &t1);
      v47 = CGRectIntegral(v46);
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
      memset(&t1, 0, 32);
      if (*&t1.c && *&t1.d)
      {
        *&t2.a = *&t1.a;
        *&t2.c = *&t1.c;
        [clippedCopy setScissorRect:&t2];
      }

      else
      {
        x = *v17;
        y = v17[1];
        width = v17[2];
        height = v17[3];
      }
    }

    v34 = *(transform + 80);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v36 = *(self + 192);
  if (v36)
  {
    LOBYTE(v36) = *(v36 + 420);
  }

  t1 = v42;
  if (transform)
  {
    v37 = (transform + 285);
LABEL_23:
    LOBYTE(v37) = *v37;
    goto LABEL_24;
  }

  v37 = *(self + 8);
  if (v37)
  {
    v37 += 44;
    goto LABEL_23;
  }

LABEL_24:
  [(PKMetalRenderer *)self renderStroke:v35 withTransform:&t1 mode:stroke flipped:v36 & 1 renderBufferSize:clippedCopy renderEncoder:v37 & 1 currentClipRect:size needRenderMask:encoder, x, y, width, height];
  [(PKMetalRenderer *)self disableClippingForRenderEncoder:clippedCopy];
}

- (void)finishLiveStrokeAndPresentDrawable:(void *)drawable multiplyDrawable:(int)multiplyDrawable waitUntilScheduled:
{
  v9 = a2;
  drawableCopy = drawable;
  if (self)
  {
    lastCommandBuffer = [(PKMetalRenderState *)*(self + 8) lastCommandBuffer];
    if (v9 | drawableCopy)
    {
      if (v9)
      {
        [lastCommandBuffer presentDrawable:v9];
      }

      if (drawableCopy)
      {
        [lastCommandBuffer presentDrawable:drawableCopy];
      }

      [lastCommandBuffer addCompletedHandler:&__block_literal_global_58];
    }

    [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
    if (multiplyDrawable)
    {
      [lastCommandBuffer waitUntilScheduled];
    }

    if (*(self + 632) == *(self + 640) && (*(self + 1007) & 1) == 0)
    {
      [(PKMetalRenderer *)self purgePaintFramebuffers];
    }
  }
}

- (void)purgePaintFramebuffers
{
  if (self)
  {
    v1 = 0;
    v2 = self + 112;
    v3 = self + 144;
    v4 = 1;
    do
    {
      v5 = v4;
      v6 = v2 + 16 * v1;
      if (*(v6 + 8) == 1)
      {
        [(PKMetalFramebuffer *)*v6 decrementNonPurgeableCount];
        *(v6 + 8) = 0;
      }

      v7 = v3 + 16 * v1;
      if (*(v7 + 8) == 1)
      {
        [(PKMetalFramebuffer *)*v7 decrementNonPurgeableCount];
        *(v7 + 8) = 0;
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

- (void)addStrokeSpaceDrawableDirtyRect:(double)rect
{
  if (self)
  {
    v6 = *(self + 736);
    v7 = *(self + 744);
    v8 = *(self + 752);
    v9 = *(self + 760);
    v10 = *(self + 288);
    *&v11.a = *(self + 272);
    *&v11.c = v10;
    *&v11.tx = *(self + 304);
    v13 = CGRectApplyAffineTransform(*&a2, &v11);
    v12.origin.x = v6;
    v12.origin.y = v7;
    v12.size.width = v8;
    v12.size.height = v9;
    *(self + 736) = CGRectUnion(v12, v13);
  }
}

- (__n128)setCombineStrokesAllowed:(uint64_t)allowed
{
  if (allowed)
  {
    *(allowed + 1007) = a2;
    if ((a2 & 1) == 0)
    {
      v3 = *(allowed + 656);
      *(allowed + 656) = 0;

      v4 = *(allowed + 664);
      *(allowed + 664) = 0;

      [(PKMetalRenderer *)allowed purgePaintFramebuffers];
      *(allowed + 121) = 1;
      *(allowed + 153) = 1;
      *(allowed + 137) = 1;
      *(allowed + 169) = 1;
      result = *MEMORY[0x1E695F050];
      v6 = *(MEMORY[0x1E695F050] + 16);
      *(allowed + 672) = *MEMORY[0x1E695F050];
      *(allowed + 688) = v6;
    }
  }

  return result;
}

- (void)renderStroke:(uint64_t)stroke withTransform:(unint64_t)transform mode:(int)mode flipped:(void *)flipped renderBufferSize:(int)size renderEncoder:(float64_t)encoder currentClipRect:(float64_t)rect needRenderMask:(CGFloat)self0
{
  v437 = *MEMORY[0x1E69E9840];
  v22 = a2;
  flippedCopy = flipped;
  transformCopy = transform;
  v400 = flippedCopy;
  v394 = v22;
  modeCopy = mode;
  if (!*(self + 728))
  {
    [(PKMetalRenderState *)*(self + 8) pushDebugGroup:?];
    v36 = *(self + 8);
    if (v36)
    {
      v37 = *(v36 + 128);
    }

    else
    {
      LODWORD(v37) = 0;
    }

    transformCopy2 = transform;
    if (!transform)
    {
      if (*(self + 1016))
      {
        v38 = 2;
      }

      else
      {
        v38 = *(self + 240) != 0;
      }

      transformCopy2 = v38;
    }

    v421 = 0u;
    v422 = 0u;
    v428 = 0u;
    v429 = 0u;
    v426 = 0u;
    v427 = 0u;
    v424 = 0u;
    v425 = 0u;
    v423 = 0u;
    v419 = 0u;
    v420 = 0u;
    v417 = 0u;
    v418 = 0u;
    modeCopy3 = mode;
    v155 = vcvt_f32_f64(*MEMORY[0x1E695EFD0]);
    v156 = vcvt_f32_f64(*(MEMORY[0x1E695EFD0] + 16));
    v157 = vcvt_f32_f64(*(MEMORY[0x1E695EFD0] + 32));
    DWORD2(v421) = 0;
    *&v421 = v155;
    DWORD2(v422) = 0;
    *&v422 = v156;
    DWORD2(v423) = 1065353216;
    *&v423 = v157;
    v410 = 1065353216;
    if (*(self + 1004) == 1)
    {
      __asm { FMOV            V1.2D, #16.0 }

      v407 = vcvt_f32_f64(vdivq_f64(_Q1, *(self + 248)));
    }

    rect = a13;
    if (v36)
    {
      v159 = *(v36 + 168) > 1uLL;
      if (v22)
      {
        goto LABEL_110;
      }

      pipelineConfig = [(PKMetalRenderState *)v36 pipelineConfig];
    }

    else
    {
      if (v22)
      {
        v159 = 0;
LABEL_110:
        v160 = [v22 ink];
        v161 = [(PKMetalRenderer *)self colorForStroke:v22];
        cGColor = [v161 CGColor];

        v163 = *(self + 8);
        if (v163 && *(v163 + 40) == 1 && *(self + 1024))
        {
          cGColor = *(self + 1024);
        }

        *&t2.a = xmmword_1C801DED0;
        *&t2.c = unk_1C801DEE0;
        if (*(self + 1005) == 1)
        {
          *&v433.a = xmmword_1C801DED0;
          *&v433.c = unk_1C801DEE0;
          DKUColorGetRGBAComponents(cGColor, &v433);
          DKUHeadroomFromColor(cGColor);
          *&buf.a = __const_DKUTransformColorFromRGBA_hsla;
          *&buf.c = unk_1C801E8F0;
          DKUConvertsRGBToHSL(&v433, &buf);
          buf.c = 1.0 - buf.c;
          DKUConvertHSLToSRGB(&buf, &t2);
        }

        else
        {
          DKUColorGetRGBAComponents(cGColor, &t2);
        }

        d = t2.d;
        behavior = [v160 behavior];
        v168 = [behavior version] < 3;

        if (v168)
        {
          behavior2 = [v160 behavior];
          [behavior2 blendAlpha];
          d = v170;
        }

        behavior3 = [v160 behavior];
        [behavior3 targetMultiple];
        v173 = v172;

        if (v173 != 0.0 && vabdd_f64(t2.a, t2.b) < 0.00999999978 && vabdd_f64(t2.b, t2.c) < 0.00999999978)
        {
          v173 = 0.0;
        }

        *&v174 = vcvt_f32_f64(*&t2.a);
        *&v175 = t2.c;
        *(&v174 + 1) = __PAIR64__(1.0, v175);
        v403[0] = v174;
        *&v174 = d;
        v176 = v173;
        v405 = v174;
        v406 = v176;
        _clipPlane = [v394 _clipPlane];
        behavior4 = [v160 behavior];
        renderingDescriptor = [behavior4 renderingDescriptor];
        blendMode = [renderingDescriptor blendMode];

        if (blendMode)
        {
          if (blendMode == 1)
          {
            if (t2.a < 0.99 || t2.b < 0.99 || t2.c < 0.99)
            {
              v195 = *(self + 192);
              v196 = *(self + 1004);
              v197 = *(self + 8);
              if (v197)
              {
                pipelineConfig2 = [(PKMetalRenderState *)v197 pipelineConfig];
              }

              else
              {
                pipelineConfig2 = *(self + 800);
              }

              v199 = [(PKMetalResourceHandler *)v195 compositeMultiplyShaderWithMode:transformCopy2 clipping:_clipPlane != 0 targetMultiple:v173 > 0.0 colorAttachmentIndex:v37 renderMask:size edgeMask:v196 secondaryPaintEnabled:v159 pipelineConfig:pipelineConfig2];
            }

            else
            {
              behavior5 = [v160 behavior];
              v185 = [behavior5 version] < 3;

              if (v185)
              {
                v405 = 1065353216;
              }

              v186 = *(self + 192);
              v187 = *(self + 1004);
              v188 = *(self + 8);
              if (v188)
              {
                pipelineConfig3 = [(PKMetalRenderState *)v188 pipelineConfig];
              }

              else
              {
                pipelineConfig3 = *(self + 800);
              }

              v199 = [(PKMetalResourceHandler *)v186 compositeSoftWhiteShaderWithMode:transformCopy2 clipping:_clipPlane != 0 colorAttachmentIndex:v37 renderMask:size edgeMask:v187 secondaryPaintEnabled:v159 pipelineConfig:pipelineConfig3];
            }
          }

          else
          {
            if (blendMode != 2)
            {
              v194 = os_log_create("com.apple.pencilkit", "");
              if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
              {
                v344 = [v394 ink];
                behavior6 = [v344 behavior];
                renderingDescriptor2 = [behavior6 renderingDescriptor];
                blendMode2 = [renderingDescriptor2 blendMode];
                LODWORD(buf.a) = 134217984;
                *(&buf.a + 4) = blendMode2;
                _os_log_error_impl(&dword_1C7CCA000, v194, OS_LOG_TYPE_ERROR, "Renderer has stroke with unknown blend mode %ld", &buf, 0xCu);
              }

              v165 = v160;
              goto LABEL_244;
            }

            v181 = *(self + 192);
            v182 = *(self + 8);
            if (v182)
            {
              pipelineConfig4 = [(PKMetalRenderState *)v182 pipelineConfig];
            }

            else
            {
              pipelineConfig4 = *(self + 800);
            }

            v199 = [(PKMetalResourceHandler *)v181 compositeEraseShaderWithMode:transformCopy2 clipping:_clipPlane != 0 colorAttachmentIndex:v37 secondaryPaintEnabled:v159 pipelineConfig:pipelineConfig4];
          }
        }

        else
        {
          v190 = *(self + 192);
          v191 = *(self + 1004);
          v192 = *(self + 8);
          if (v192)
          {
            pipelineConfig5 = [(PKMetalRenderState *)v192 pipelineConfig];
          }

          else
          {
            pipelineConfig5 = *(self + 800);
          }

          v199 = [(PKMetalResourceHandler *)v190 compositeOverShaderWithMode:transformCopy2 clipping:_clipPlane != 0 colorAttachmentIndex:v37 renderMask:size edgeMask:v191 secondaryPaintEnabled:v159 pipelineConfig:pipelineConfig5];
        }

        v165 = v199;
        if (_clipPlane)
        {
          v201 = *(self + 224);
          v200 = *(self + 232);
          [_clipPlane origin];
          v373 = v202;
          v204 = v203;
          [_clipPlane normal];
          v369 = v205;
          v207 = v206;
          v208 = *(self + 288);
          *&buf.a = *(self + 272);
          *&buf.c = v208;
          *&buf.tx = *(self + 304);
          if (CGAffineTransformIsIdentity(&buf))
          {
            v209.f64[0] = v373;
            v210.f64[0] = v369;
          }

          else
          {
            v211 = *(self + 272);
            v212 = *(self + 280);
            v213 = *(self + 288);
            v214 = *(self + 296);
            v215 = *(self + 304);
            v216 = *(self + 312);
            v217 = *(MEMORY[0x1E695EFF8] + 8);
            v218 = v216 + v214 * v217 + v212 * *MEMORY[0x1E695EFF8];
            v219 = v215 + v207 * v213 + v211 * v369 - (v215 + v213 * v217 + v211 * *MEMORY[0x1E695EFF8]);
            v220 = v216 + v207 * v214 + v212 * v369 - v218;
            v221 = v204 * v213;
            v204 = v216 + v204 * v214 + v212 * v373;
            v209.f64[0] = v215 + v221 + v211 * v373;
            v222 = 1.0 / sqrt(v220 * v220 + v219 * v219);
            v210.f64[0] = v219 * v222;
            v207 = v220 * v222;
          }

          v223 = -v207;
          v224 = v200 - v204;
          if (!modeCopy)
          {
            v223 = v207;
            v224 = v204;
          }

          v209.f64[1] = v224;
          *&v225 = vcvt_f32_f64(v209);
          v210.f64[1] = v223;
          *(&v225 + 1) = vneg_f32(vcvt_f32_f64(v210));
          v404 = v225;
          *&v226 = v201;
          *&v225 = v226;
          v227 = v200;
          LODWORD(v228) = 0;
          *(&v228 + 1) = v227;
          DWORD2(v424) = 0;
          *&v424 = v225;
          DWORD2(v425) = 0;
          *&v425 = v228;
          DWORD2(v426) = 1065353216;
          *&v426 = 0;
        }

        transform = transformCopy;
LABEL_160:
        paperTextureSize = [(PKMetalResourceHandler *)*(self + 192) paperTextureSize];
        if (*(self + 456))
        {
          v232 = *(self + 464);
          v231 = *(self + 472);
          v233 = 1.0;
        }

        else
        {
          v232 = paperTextureSize;
          v231 = v230;
          v233 = 2.0;
        }

        v234 = *(self + 224);
        v235 = *(self + 232);
        memset(&v402, 0, sizeof(v402));
        v236 = *stroke;
        v237 = *(stroke + 8);
        v238 = *(stroke + 16);
        v239 = *(stroke + 24);
        *&buf.tx = 0uLL;
        buf.a = v236;
        buf.b = v237;
        buf.c = v238;
        buf.d = v239;
        CGAffineTransformScale(&v402, &buf, 1.0 / sqrt(v237 * v237 + v236 * v236), 1.0 / sqrt(v239 * v239 + v238 * v238));
        CGAffineTransformMakeScale(&buf, v234 / v233 / v232, v235 / v233 / v231);
        t2 = buf;
        v433 = v402;
        CGAffineTransformConcat(&buf, &t2, &v433);
        t2 = buf;
        CGAffineTransformMakeTranslation(&v433, 0.0, -(*(self + 1144) * *(self + 264)) / (v231 * v233));
        CGAffineTransformConcat(&buf, &t2, &v433);
        v374 = *&buf.a;
        v368 = *&buf.tx;
        v370 = *&buf.c;
        if (transform)
        {
          if (transform > 2)
          {
            if (transformCopy2 != 2)
            {
              goto LABEL_219;
            }

            goto LABEL_187;
          }
        }

        else
        {
          v241 = v400;
          v242 = *(self + 240);
          if (v242)
          {
            v243 = v165;
            *&buf.a = xmmword_1C801DED0;
            *&buf.c = unk_1C801DEE0;
            DKUColorGetRGBAComponents(v242, &buf);
            v403[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*&buf.a), *&buf.c);
          }

          else
          {
            v243 = v165;
            v244 = *(self + 456);
            paperTexture = v244;
            if (!v244)
            {
              paperTexture = [(PKMetalResourceHandler *)*(self + 192) paperTexture];
            }

            [v241 setFragmentTexture:paperTexture atIndex:2];
            if (!v244)
            {
            }
          }

          v165 = v243;
          if (!*(self + 240))
          {
            DWORD2(v427) = 0;
            *&v427 = vcvt_f32_f64(v374);
            DWORD2(v428) = 0;
            *&v428 = vcvt_f32_f64(v370);
            DWORD2(v429) = 1065353216;
            *&v429 = vcvt_f32_f64(v368);
          }

          transform = transformCopy;
          if (!CGRectIsNull(*(self + 320)) && (*(self + 1000) & 1) == 0 && !*(self + 240))
          {
            v337 = *(self + 336);
            v338 = *(self + 344);
            v339 = *(self + 232);
            v340 = *(self + 320);
            v441.origin.y = *(self + 328);
            v441.origin.x = v340;
            v441.size.width = v337;
            v441.size.height = v338;
            MaxY = CGRectGetMaxY(v441);
            if (v340 > 0.0 || (v342 = v339 - MaxY, v442.origin.x = v340, v442.origin.y = v342, v442.size.width = v337, v442.size.height = v338, CGRectGetMaxX(v442) < *(self + 224)))
            {
              v343 = *(stroke + 16);
              *&buf.a = *stroke;
              *&buf.c = v343;
              *&buf.tx = *(stroke + 32);
              *&t2.a = v374;
              *&t2.c = v370;
              *&t2.tx = v368;
              [(PKMetalRenderer *)self renderPaperTransform:&t2 paperTransform:modeCopy ^ 1 flipped:v241 multiply:*(self + 1040) renderEncoder:?];
              v246 = 1;
LABEL_179:
              if (!CGRectIsNull(*(self + 320)))
              {
                v247 = *(self + 336);
                v248 = *(self + 344);
                v249 = *(self + 232);
                v250 = *(self + 320);
                v439.origin.y = *(self + 328);
                v439.origin.x = v250;
                v439.size.width = v247;
                v439.size.height = v248;
                v251 = CGRectGetMaxY(v439);
                v440.origin.x = mask;
                v440.origin.y = a11;
                v440.size.width = a12;
                v440.size.height = rect;
                IsNull = CGRectIsNull(v440);
                v253 = v249 - v251;
                if (!IsNull)
                {
                  v254 = v250;
                  v255 = v247;
                  v256 = v248;
                  v447.origin.x = mask;
                  v447.origin.y = a11;
                  v447.size.width = a12;
                  v447.size.height = rect;
                  *(&v253 - 1) = CGRectIntersection(*(&v253 - 1), v447);
                  v250 = v257;
                  v247 = v258;
                  v248 = v259;
                }

                memset(&buf, 0, 32);
                v260 = v250;
                v261 = v247;
                v262 = v248;
                if (!*&buf.c || !*&buf.d)
                {
                  goto LABEL_242;
                }

                *&t2.a = *&buf.a;
                *&t2.c = *&buf.c;
                [v400 setScissorRect:&t2];
              }

              if (transformCopy2 != 2)
              {
LABEL_219:
                v310 = *(self + 192);
                if (!v310 || (*(v310 + 420) & 1) == 0)
                {
                  v311 = *(self + 8);
                  if (v311 && *(v311 + 40) == 1 && (v312 = *(v311 + 120), v313 = v312 == 0, v312, !v313))
                  {
                    v314 = *(self + 8);
                    if (v314)
                    {
                      v314 = v314[15];
                    }
                  }

                  else
                  {
                    v314 = *(self + 40);
                    if (v314)
                    {
                      v314 = v314[3];
                    }
                  }

                  v315 = v314;
                  [v400 setFragmentTexture:v315 atIndex:1];

                  v310 = *(self + 192);
                  transform = transformCopy;
                  if (!v310)
                  {
                    goto LABEL_246;
                  }
                }

                if ((*(v310 + 420) & 1) == 0)
                {
LABEL_246:
                  v330 = *(self + 8);
                  if (v330)
                  {
                    v331 = 0;
                    v332 = (self + 112);
                    do
                    {
                      if (v331 >= *(v330 + 168))
                      {
                        break;
                      }

                      if (*(v330 + 46))
                      {
                        v333 = v332 + 4;
                      }

                      else
                      {
                        v333 = v332;
                      }

                      v334 = *v333;
                      if (v334)
                      {
                        v334 = v334[3];
                      }

                      v335 = v334;
                      v336 = v331 ? 7 : 6;
                      [v400 setFragmentTexture:v335 atIndex:v336];

                      ++v331;
                      v330 = *(self + 8);
                      v332 += 2;
                      transform = transformCopy;
                    }

                    while (v330);
                  }
                }

                if (size)
                {
                  v316 = *(self + 176);
                  if (v316)
                  {
                    v316 = v316[3];
                  }

                  v317 = v316;
                  [v400 setFragmentTexture:v317 atIndex:3];

                  transform = transformCopy;
                }

                if (modeCopy)
                {
                  v318 = *(stroke + 16);
                  *&t2.a = *stroke;
                  *&t2.c = v318;
                  *&t2.tx = *(stroke + 32);
                  v433.a = 1.0;
                  v433.b = 0.0;
                  v433.c = 0.0;
                  v433.d = -1.0;
                  v433.ty = 0.0;
                  v433.tx = 0.0;
                  CGAffineTransformConcat(&buf, &t2, &v433);
                  v319 = *&buf.c;
                  *stroke = *&buf.a;
                  *(stroke + 16) = v319;
                  *(stroke + 32) = *&buf.tx;
                }

                v417 = v320;
                v418 = v321;
                v419 = v322;
                v420 = v323;
                [v400 setVertexBytes:&v417 length:224 atIndex:3];
                [v400 setFragmentBytes:v403 length:112 atIndex:0];
                [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v165 renderEncoder:v400];
                v324 = *(self + 192);
                if (v324)
                {
                  LOBYTE(v324) = *(v324 + 420);
                }

                v325 = *(self + 224);
                v326 = *(self + 232);
                v327 = -1.0;
                if ((v324 ^ modeCopy))
                {
                  v327 = 1.0;
                }

                v401.a = 2.0 / v325;
                v401.b = 0.0;
                v401.c = 0.0;
                v401.d = (v327 + v327) / v326;
                v401.tx = -1.0;
                v401.ty = -v327;
                v328 = *(self + 288);
                *&buf.a = *(self + 272);
                *&buf.c = v328;
                *&buf.tx = *(self + 304);
                *&t2.a = COERCE_UNSIGNED_INT64(2.0 / v325);
                *&t2.c = *&v401.c;
                *&t2.tx = *&v401.tx;
                CGAffineTransformConcat(&v401, &buf, &t2);
                [(PKMetalRenderer *)self renderBrushIndicatorForStroke:v394 withTransform:&v401 mode:transform];
LABEL_242:
                v329 = *(self + 8);
                if (v329)
                {
                  [*(v329 + 80) popDebugGroup];
                }

LABEL_244:

                goto LABEL_245;
              }

              if (v246)
              {
LABEL_193:
                v269 = v400;
                if (*(self + 1016))
                {
                  v415 = 0;
                  __src = 0;
                  v416 = 0;
                  v270 = *(self + 8);
                  if (v270)
                  {
                    pipelineConfig6 = [(PKMetalRenderState *)v270 pipelineConfig];
                  }

                  else
                  {
                    pipelineConfig6 = *(self + 800);
                  }

                  v272 = *(self + 192);
                  *&buf.a = 8;
                  memset(&buf.b, 0, 24);
                  *&buf.tx = pipelineConfig6;
                  v273 = [(PKMetalResourceHandler *)v272 namedShaderForKey:?];
                  if (*(self + 1005) == 1)
                  {
                    [MEMORY[0x1E69DC888] pk_linedPaperLineColor_dark];
                  }

                  else
                  {
                    [MEMORY[0x1E69DC888] pk_linedPaperLineColor_light];
                  }
                  v274 = ;
                  v434 = xmmword_1C801DED0;
                  v435 = unk_1C801DEE0;
                  v275 = v274;
                  DKUColorGetRGBAComponents([v274 CGColor], &v434);
                  v413 = vcvt_hight_f32_f64(vcvt_f32_f64(v434), v435);
                  [v269 setFragmentBytes:&v413 length:16 atIndex:0];
                  v433.a = 2.0 / encoder;
                  v433.c = 0.0;
                  v433.b = 0.0;
                  v433.d = -2.0 / rect;
                  *&v433.tx = xmmword_1C8018A30;
                  v276 = *(self + 288);
                  *&buf.a = *(self + 272);
                  *&buf.c = v276;
                  *&buf.tx = *(self + 304);
                  *&t2.a = COERCE_UNSIGNED_INT64(2.0 / encoder);
                  *&t2.c = *&v433.c;
                  *&t2.tx = xmmword_1C8018A30;
                  CGAffineTransformConcat(&v433, &buf, &t2);
                  *&buf.a = v278;
                  *&buf.c = v279;
                  *&buf.tx = v280;
                  v432 = v281;
                  memset(&t2, 0, sizeof(t2));
                  t1 = v433;
                  v279.f64[0] = rect;
                  v279.f64[1] = encoder;
                  v411.a = encoder * -0.5;
                  v411.b = 0.0;
                  v411.c = 0.0;
                  *&v411.d = vmulq_f64(v279, xmmword_1C801DE60);
                  v411.ty = rect * 0.5;
                  CGAffineTransformConcat(&t2, &t1, &v411);
                  v411 = t2;
                  memset(&t1, 0, sizeof(t1));
                  CGAffineTransformInvert(&t1, &v411);
                  [*(self + 1016) lineSpacing];
                  v283 = v282;
                  v285 = v284;
                  [*(self + 1016) horizontalInset];
                  v287 = v286;
                  if ((v416 - __src) >> 6 <= 0x4A)
                  {
                    operator new();
                  }

                  v371 = t1.ty + t1.d * 0.0 + t1.b * 0.0;
                  v288 = t1.ty + rect * t1.d + t1.b * 0.0;
                  v289 = t1.a + t1.c;
                  if (v285 > 1.0)
                  {
                    v290 = vcvtpd_s64_f64(v288 / v285);
                    v291 = vcvtmd_s64_f64(v371 / v285);
                    if (v291 <= v290)
                    {
                      v292 = v286;
                      v391 = v292;
                      v293 = 768.0 - v287;
                      v397 = v293;
                      v294 = v290 + 1;
                      do
                      {
                        v295 = t1.ty + t1.d * (round(t2.ty + v285 * v291 * t2.d + t2.b * 0.0) + 1.0) + t1.b * (t2.tx + v285 * v291 * t2.c + t2.a * 0.0);
                        *&v296 = v295 - v289;
                        recta = COERCE_DOUBLE(__PAIR64__(v296, LODWORD(v391)));
                        v383 = v296;
                        *&v411.a = __PAIR64__(v296, LODWORD(v391));
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        *&v411.a = __PAIR64__(v383, LODWORD(v397));
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        *&v297 = v289 + v295;
                        v375 = v297;
                        v384 = COERCE_DOUBLE(__PAIR64__(v297, LODWORD(v397)));
                        *&v411.a = __PAIR64__(v297, LODWORD(v397));
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        v411.a = recta;
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        v411.a = v384;
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        *&v411.a = __PAIR64__(v375, LODWORD(v391));
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        ++v291;
                      }

                      while (v294 != v291);
                    }
                  }

                  if (v283 > 1.0)
                  {
                    v298 = ((v287 * -2.0 + 768.0) / v283);
                    if ((v298 & 0x8000000000000000) == 0)
                    {
                      v299 = 0;
                      v300 = v371;
                      v392 = v300;
                      v301 = v288;
                      v398 = v301;
                      v302 = v298 + 1;
                      do
                      {
                        v303 = t1.tx + (t2.ty + t2.d * 0.0 + t2.b * (v287 + v283 * v299)) * t1.c + t1.a * round(t2.tx + t2.c * 0.0 + t2.a * (v287 + v283 * v299));
                        *&v304 = v303 - v289;
                        v385 = LODWORD(v304);
                        *(&v304 + 1) = v392;
                        rectb = v304;
                        v411.a = v304;
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        *&v411.a = __PAIR64__(LODWORD(v398), v385);
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        *&v305 = v289 + v303;
                        v376 = LODWORD(v305);
                        *(&v305 + 1) = v398;
                        v386 = v305;
                        v411.a = v305;
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        v411.a = rectb;
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        v411.a = v386;
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        *&v411.a = __PAIR64__(LODWORD(v392), v376);
                        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE9push_backB8ne200100EOS1_(&__src, &v411);
                        ++v299;
                      }

                      while (v302 != v299);
                    }
                  }

                  if (v415 != __src)
                  {
                    if (v273)
                    {
                      v306 = v273[3];
                    }

                    else
                    {
                      v306 = 0;
                    }

                    v307 = v306;
                    [v269 setRenderPipelineState:v307];

                    [v269 setVertexBytes:__src length:v415 - __src atIndex:0];
                    [v269 setVertexBytes:&buf length:64 atIndex:1];
                    [v269 drawPrimitives:3 vertexStart:0 vertexCount:(v415 - __src) >> 3];
                  }

                  if (__src)
                  {
                    v415 = __src;
                    operator delete(__src);
                  }
                }

                v308 = *(self + 8);
                if (v308)
                {
                  [objc_opt_class() renderTargetBarrierForRenderEncoder:*(v308 + 80)];
                }

                v309 = [(PKMetalShader *)v165 shaderWithBlendMode:?];

                v165 = v309;
                transform = transformCopy;
                goto LABEL_219;
              }

LABEL_187:
              if (*(self + 240))
              {
                v263 = v400;
                *&t2.a = xmmword_1C801DED0;
                *&t2.c = unk_1C801DEE0;
                DKUColorGetRGBAComponents(*(self + 240), &t2);
                *&v433.a = vcvt_hight_f32_f64(vcvt_f32_f64(*&t2.a), *&t2.c);
                [(PKMetalRenderer *)self setupForDefaultUberVertexShaderInRenderEncoder:v263];
                [v263 setFragmentBytes:&v433 length:16 atIndex:0];
                v264 = *(self + 8);
                if (v264)
                {
                  pipelineConfig7 = [(PKMetalRenderState *)v264 pipelineConfig];
                }

                else
                {
                  pipelineConfig7 = *(self + 800);
                }

                v267 = *(self + 192);
                *&buf.a = 12;
                memset(&buf.b + 4, 0, 20);
                LODWORD(buf.b) = 3;
                *&buf.tx = pipelineConfig7;
                v268 = [(PKMetalResourceHandler *)v267 namedShaderForKey:?];
                [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v268 renderEncoder:v263];
              }

              else
              {
                v266 = *(stroke + 16);
                *&buf.a = *stroke;
                *&buf.c = v266;
                *&buf.tx = *(stroke + 32);
                *&t2.a = v374;
                *&t2.c = v370;
                *&t2.tx = v368;
                [(PKMetalRenderer *)self renderPaperTransform:&t2 paperTransform:modeCopy ^ 1 flipped:v400 multiply:*(self + 1040) renderEncoder:?];
              }

              goto LABEL_193;
            }

            r1 = *(self + 224);
            if (v342 > 0.0)
            {
              v443.origin.x = mask;
              v443.origin.y = a11;
              v443.size.width = a12;
              v443.size.height = rect;
              v348 = CGRectIsNull(v443);
              v349 = 0;
              v350 = 0;
              v351 = r1;
              v352 = v342;
              if (!v348)
              {
                v353 = r1;
                v354 = v342;
                v448.origin.x = mask;
                v448.origin.y = a11;
                v448.size.width = a12;
                v448.size.height = rect;
                *&v349 = CGRectIntersection(*&v349, v448);
              }

              memset(&v433, 0, 32);
              if (*&v433.c)
              {
                if (*&v433.d)
                {
                  *&buf.a = *&v433.a;
                  *&buf.c = *&v433.c;
                  [v241 setScissorRect:&buf];
                  if (!*(self + 240))
                  {
                    v355 = *(stroke + 16);
                    *&buf.a = *stroke;
                    *&buf.c = v355;
                    *&buf.tx = *(stroke + 32);
                    *&t2.a = v374;
                    *&t2.c = v370;
                    *&t2.tx = v368;
                    [(PKMetalRenderer *)self renderPaperTransform:&t2 paperTransform:modeCopy ^ 1 flipped:v241 multiply:*(self + 1040) renderEncoder:?];
                  }
                }
              }
            }

            v444.origin.x = v340;
            v444.origin.y = v342;
            v444.size.width = v337;
            v444.size.height = v338;
            if (CGRectGetMaxY(v444) < *(self + 232))
            {
              v445.origin.x = v340;
              v445.origin.y = v342;
              v445.size.width = v337;
              v445.size.height = v338;
              v356 = CGRectGetMaxY(v445);
              v357 = *(self + 232);
              v446.origin.x = mask;
              v446.origin.y = a11;
              v446.size.width = a12;
              v446.size.height = rect;
              v358 = CGRectIsNull(v446);
              v359 = v357 - v356;
              v360 = 0;
              if (v358)
              {
                v361 = r1;
              }

              else
              {
                v362 = v356;
                v363 = r1;
                v449.origin.x = mask;
                v449.origin.y = a11;
                v449.size.width = a12;
                v449.size.height = rect;
                *&v360 = CGRectIntersection(*&v360, v449);
                v356 = v364;
              }

              memset(&v433, 0, 32);
              v365 = v356;
              if (*&v433.c)
              {
                if (*&v433.d)
                {
                  *&buf.a = *&v433.a;
                  *&buf.c = *&v433.c;
                  [v241 setScissorRect:&buf];
                  v366 = *(stroke + 16);
                  *&buf.a = *stroke;
                  *&buf.c = v366;
                  *&buf.tx = *(stroke + 32);
                  *&t2.a = v374;
                  *&t2.c = v370;
                  *&t2.tx = v368;
                  [(PKMetalRenderer *)self renderPaperTransform:&t2 paperTransform:modeCopy ^ 1 flipped:v241 multiply:*(self + 1040) renderEncoder:?];
                }
              }
            }
          }
        }

        v246 = 0;
        goto LABEL_179;
      }

      v159 = 0;
      pipelineConfig = *(self + 800);
    }

    v165 = [(PKMetalResourceHandler *)*(self + 192) compositePaperShaderWithMode:transformCopy2 colorAttachmentIndex:v37 secondaryPaintEnabled:v159 pipelineConfig:pipelineConfig];
    goto LABEL_160;
  }

  v24 = flippedCopy;
  v25 = *(stroke + 16);
  *&t1.a = *stroke;
  *&t1.c = v25;
  *&t1.tx = *(stroke + 32);
  v26 = v22;
  v27 = v24;
  v428 = 0u;
  v429 = 0u;
  v426 = 0u;
  v427 = 0u;
  v424 = 0u;
  v425 = 0u;
  v422 = 0u;
  v423 = 0u;
  v420 = 0u;
  v421 = 0u;
  v418 = 0u;
  v419 = 0u;
  v417 = 0u;
  v410 = 1065353216;
  modeCopy3 = mode;
  v28 = vcvt_f32_f64(*MEMORY[0x1E695EFD0]);
  v29 = vcvt_f32_f64(*(MEMORY[0x1E695EFD0] + 16));
  v30 = vcvt_f32_f64(*(MEMORY[0x1E695EFD0] + 32));
  DWORD2(v421) = 0;
  *&v421 = v28;
  DWORD2(v422) = 0;
  *&v422 = v29;
  DWORD2(v423) = 1065353216;
  *&v423 = v30;
  v31 = *(self + 8);
  if (v31)
  {
    v32 = v31[21] > 1uLL;
  }

  else
  {
    v32 = 0;
  }

  v396 = v26;
  if (v26)
  {
    v33 = [v26 ink];
    v34 = [(PKMetalRenderer *)self colorForStroke:v26];
    cGColor2 = [v34 CGColor];

    *&t2.a = xmmword_1C801DED0;
    *&t2.c = unk_1C801DEE0;
    if (*(self + 1005) == 1)
    {
      *&v433.a = xmmword_1C801DED0;
      *&v433.c = unk_1C801DEE0;
      DKUColorGetRGBAComponents(cGColor2, &v433);
      DKUHeadroomFromColor(cGColor2);
      *&buf.a = __const_DKUTransformColorFromRGBA_hsla;
      *&buf.c = unk_1C801E8F0;
      DKUConvertsRGBToHSL(&v433, &buf);
      buf.c = 1.0 - buf.c;
      DKUConvertHSLToSRGB(&buf, &t2);
    }

    else
    {
      DKUColorGetRGBAComponents(cGColor2, &t2);
    }

    v40 = t2.d;
    behavior7 = [v33 behavior];
    if ([behavior7 version] <= 2)
    {
      behavior8 = [v33 behavior];
      renderingDescriptor3 = [behavior8 renderingDescriptor];
      if ([renderingDescriptor3 blendMode] == 1)
      {
      }

      else
      {
        behavior9 = [v33 behavior];
        renderingDescriptor4 = [behavior9 renderingDescriptor];
        v51 = [renderingDescriptor4 blendMode] == 3;

        if (!v51)
        {
LABEL_25:
          behavior10 = [v33 behavior];
          renderingDescriptor5 = [behavior10 renderingDescriptor];
          v55 = [renderingDescriptor5 blendMode] == 0;

          *&v56 = vcvt_f32_f64(*&t2.a);
          *&v57 = t2.c;
          *(&v56 + 1) = __PAIR64__(1.0, v57);
          v403[0] = v56;
          v58 = v40;
          if (v55)
          {
            v58 = 1.0;
          }

          v405 = LODWORD(v58);
          _ink = [v396 _ink];
          [_ink _sixChannelAddColor];
          v381 = v60;

          _ink2 = [v396 _ink];
          [_ink2 _sixChannelMultiplyColor];
          v388 = v62;

          if (*(self + 497) == 1)
          {
            _ink3 = [v396 _ink];
            [_ink3 hdrHeadroom];
            v65 = v64 > 1.0;

            if (v65)
            {
              _ink4 = [v396 _ink];
              [_ink4 _hdrAddColor];
              v381 = v67;

              _ink5 = [v396 _ink];
              [_ink5 _hdrMultiplyColor];
              v388 = v69;

              if ((*(self + 1008) & 0xFFFFFFFFFFFFFFFDLL) == 0x228)
              {
                v70 = v381.f32[1];
                if (v381.f32[1] < v381.f32[2])
                {
                  v70 = v381.f32[2];
                }

                if (v381.f32[0] >= v70)
                {
                  v71 = v381.f32[0];
                }

                else
                {
                  v71 = v70;
                }

                if (v71 > 1.251)
                {
                  v72 = vmulq_n_f32(v381, 1.251 / v71);
                  v72.i32[3] = v381.i32[3];
                  v381 = v72;
                }

                v73 = v388.f32[1];
                if (v388.f32[1] < v388.f32[2])
                {
                  v73 = v388.f32[2];
                }

                if (v388.f32[0] >= v73)
                {
                  v73 = v388.f32[0];
                }

                if (v73 > 1.251)
                {
                  v74 = vmulq_n_f32(v388, 1.251 / v73);
                  v74.i32[3] = v388.i32[3];
                  v388 = v74;
                }
              }
            }
          }

          if ([(PKMetalRenderer *)self shouldRenderDebugColorForStroke:v396])
          {
            v75 = [v396 ink];
            behavior11 = [v75 behavior];
            renderingDescriptor6 = [behavior11 renderingDescriptor];
            v78 = [renderingDescriptor6 blendMode] == 1;

            if (v78)
            {
              v79.i64[0] = 0;
              v79.i32[2] = 0;
              v79.i32[3] = v381.i32[3];
              v80.i64[0] = 1065353216;
              v80.i32[2] = 0;
              v80.i32[3] = v388.i32[3];
              v388 = v80;
            }

            else
            {
              v79.i64[0] = 1065353216;
              v79.i32[2] = 0;
              v79.i32[3] = v381.i32[3];
            }

            v81 = v79;
          }

          else
          {
            v81 = v381;
          }

          v82.i64[0] = v81.i64[0];
          v408 = v81;
          v409 = v388;
          v83 = *(self + 8);
          if (v83 && *(v83 + 152) == 1 && (*(self + 496) & 1) == 0)
          {
            v410 = 0;
            v82 = vaddq_f32(v388, v81);
            v84 = v82.f32[3];
            if (v82.f32[3] < v388.f32[3])
            {
              v84 = v388.f32[3];
            }

            v82.f32[3] = v84;
            __asm { FMOV            V1.4S, #1.0 }

            v408 = v82;
            v409 = _Q1;
          }

          _clipPlane2 = [v396 _clipPlane];
          v91 = _clipPlane2;
          if (_clipPlane2)
          {
            v93 = *(self + 224);
            v92 = *(self + 232);
            [_clipPlane2 origin];
            v389 = v94;
            v96 = v95;
            [v91 normal];
            v382 = v97;
            v99 = v98;
            v100 = *(self + 288);
            *&buf.a = *(self + 272);
            *&buf.c = v100;
            *&buf.tx = *(self + 304);
            if (CGAffineTransformIsIdentity(&buf))
            {
              v102.f64[0] = v382;
              v101.f64[0] = v389;
            }

            else
            {
              v103 = *(self + 272);
              v104 = *(self + 280);
              v105 = *(self + 288);
              v106 = *(self + 296);
              v107 = *(self + 304);
              v108 = *(self + 312);
              v109 = *(MEMORY[0x1E695EFF8] + 8);
              v110 = v108 + v106 * v109 + v104 * *MEMORY[0x1E695EFF8];
              v111 = v107 + v99 * v105 + v103 * v382 - (v107 + v105 * v109 + v103 * *MEMORY[0x1E695EFF8]);
              v112 = v108 + v99 * v106 + v104 * v382 - v110;
              v113 = v96 * v105;
              v96 = v108 + v96 * v106 + v104 * v389;
              v101.f64[0] = v107 + v113 + v103 * v389;
              v114 = 1.0 / sqrt(v112 * v112 + v111 * v111);
              v102.f64[0] = v111 * v114;
              v99 = v112 * v114;
            }

            v115 = -v99;
            v116 = v92 - v96;
            if (!modeCopy)
            {
              v115 = v99;
              v116 = v96;
            }

            v101.f64[1] = v116;
            *&v117 = vcvt_f32_f64(v101);
            v102.f64[1] = v115;
            *(&v117 + 1) = vneg_f32(vcvt_f32_f64(v102));
            v404 = v117;
            *&v118 = v93;
            *&v117 = v118;
            v119 = v92;
            LODWORD(v120) = 0;
            *(&v120 + 1) = v119;
            DWORD2(v424) = 0;
            *&v424 = v117;
            DWORD2(v425) = 0;
            *&v425 = v120;
            DWORD2(v426) = 1065353216;
            *&v426 = 0;
          }

          v121 = [v396 ink];
          _isEraserInk = [v121 _isEraserInk];

          if (!transformCopy && (*(self + 728) & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v438.origin.x = mask;
            v438.origin.y = a11;
            v438.size.width = a12;
            v438.size.height = a13;
            if (!CGRectIsNull(v438))
            {
              [(PKMetalRenderer *)self copyFromAddMultiplyLayersUsingRenderEncoder:v27 clearIfMissing:1];
            }
          }

          v390 = v27;
          v123 = v33;
          v124 = *(self + 192);
          v125 = *(self + 8);
          if (v125)
          {
            v126 = v125[19];
            v127 = *(self + 1006);
            v129 = v125[16];
            v128 = v125[17];
            pipelineConfig8 = [(PKMetalRenderState *)v125 pipelineConfig];
          }

          else
          {
            v128 = 0;
            v126 = 0;
            v129 = 0;
            v127 = *(self + 1006);
            pipelineConfig8 = *(self + 800);
          }

          v39 = [(PKMetalResourceHandler *)v124 sixChannelShaderWithMode:v126 clipping:v91 != 0 erase:_isEraserInk bitmapEraserMask:v127 & 1 snapshotImage:0 renderMask:size secondaryPaintEnabled:v32 colorAttachmentIndex:v129 multiplyLayerColorAttachmentIndex:v128 pipelineConfig:pipelineConfig8];

          v131 = v123;
          v27 = v390;

          goto LABEL_69;
        }
      }

      behavior7 = [v33 behavior];
      [behavior7 blendAlpha];
      v40 = v52;
    }

    goto LABEL_25;
  }

  if ((*(self + 728) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v39 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_1C7CCA000, v39, OS_LOG_TYPE_DEFAULT, "No stroke when rendering add/multiply layers.", &buf, 2u);
    }

LABEL_102:

    goto LABEL_103;
  }

  v44 = *(self + 192);
  if (v31)
  {
    v45 = v31[16];
    v46 = v31[17];
    pipelineConfig9 = [(PKMetalRenderState *)v31 pipelineConfig];
  }

  else
  {
    v46 = 0;
    v45 = 0;
    pipelineConfig9 = *(self + 800);
  }

  v39 = [(PKMetalResourceHandler *)v44 sixChannelShaderWithMode:0 clipping:0 erase:0 bitmapEraserMask:0 snapshotImage:0 renderMask:v32 secondaryPaintEnabled:v45 colorAttachmentIndex:v46 multiplyLayerColorAttachmentIndex:pipelineConfig9 pipelineConfig:?];
LABEL_69:
  if (v39)
  {
    v132 = *(self + 192);
    if (!v132 || (*(v132 + 420) & 1) == 0)
    {
      v133 = *(self + 40);
      if (v133)
      {
        v133 = v133[3];
      }

      v134 = v133;
      [v27 setFragmentTexture:v134 atIndex:1];

      v135 = *(self + 8);
      if (v135)
      {
        v136 = 0;
        v137 = (self + 112);
        while (v136 < *(v135 + 168))
        {
          if (*(v135 + 46))
          {
            v138 = v137 + 4;
          }

          else
          {
            v138 = v137;
          }

          v139 = *v138;
          if (v139)
          {
            v139 = v139[3];
          }

          v140 = v139;
          if (v136)
          {
            v141 = 7;
          }

          else
          {
            v141 = 6;
          }

          [v27 setFragmentTexture:v140 atIndex:v141];

          ++v136;
          v135 = *(self + 8);
          v137 += 2;
          if (!v135)
          {
            goto LABEL_91;
          }
        }

        if ((*(v135 + 152) & 0xFFFFFFFFFFFFFFFELL) == 4)
        {
          v142 = *(self + 56);
          if (v142)
          {
            v142 = v142[3];
          }

          v143 = v142;
          [v27 setFragmentTexture:v143 atIndex:5];
        }
      }
    }

LABEL_91:
    if (size)
    {
      v144 = *(self + 176);
      if (v144)
      {
        v144 = v144[3];
      }

      v145 = v144;
      [v27 setFragmentTexture:v145 atIndex:3];
    }

    if (modeCopy)
    {
      buf = t1;
      t2.a = 1.0;
      t2.b = 0.0;
      t2.c = 0.0;
      t2.d = -1.0;
      t2.tx = 0.0;
      t2.ty = 0.0;
      CGAffineTransformConcat(&t1, &buf, &t2);
    }

    v417 = v146;
    v418 = v147;
    v419 = v148;
    v420 = v149;
    [v27 setVertexBytes:&v417 length:224 atIndex:3];
    [v27 setFragmentBytes:v403 length:112 atIndex:0];
    [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v39 renderEncoder:v27];
    v150 = *(self + 192);
    if (v150)
    {
      LOBYTE(v150) = *(v150 + 420);
    }

    v151 = *(self + 224);
    v152 = *(self + 232);
    v153 = -1.0;
    if ((v150 ^ modeCopy))
    {
      v153 = 1.0;
    }

    v433.a = 2.0 / v151;
    v433.c = 0.0;
    v433.b = 0.0;
    v433.d = (v153 + v153) / v152;
    v433.tx = -1.0;
    v433.ty = -v153;
    v154 = *(self + 288);
    *&buf.a = *(self + 272);
    *&buf.c = v154;
    *&buf.tx = *(self + 304);
    *&t2.a = COERCE_UNSIGNED_INT64(2.0 / v151);
    *&t2.c = *&v433.c;
    *&t2.tx = *&v433.tx;
    CGAffineTransformConcat(&v433, &buf, &t2);
    [(PKMetalRenderer *)self renderBrushIndicatorForStroke:v396 withTransform:&v433 mode:transformCopy];
    goto LABEL_102;
  }

LABEL_103:

LABEL_245:
}

- (void)eraseShaderForAttachmentIndex:(void *)index
{
  v14 = *MEMORY[0x1E69E9840];
  if (index)
  {
    indexCopy = index;
    v4 = index[1];
    if (v4)
    {
      pipelineConfig = [(PKMetalRenderState *)v4 pipelineConfig];
    }

    else
    {
      pipelineConfig = indexCopy[100];
    }

    v6 = indexCopy[24];
    v8 = 11;
    v9 = a2;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = pipelineConfig;
    index = [(PKMetalResourceHandler *)v6 namedShaderForKey:?];
  }

  return index;
}

- (void)renderFullscreenQuadWithShader:(void *)shader renderEncoder:
{
  v11 = a2;
  shaderCopy = shader;
  if (self)
  {
    [(PKMetalRenderState *)*(self + 8) pushDebugGroup:?];
    v6 = v11 ? v11[3] : 0;
    v7 = v6;
    [shaderCopy setRenderPipelineState:v7];

    cachedQuadVertexBuffer = [(PKMetalResourceHandler *)*(self + 192) cachedQuadVertexBuffer];
    [shaderCopy setVertexBuffer:cachedQuadVertexBuffer offset:0 atIndex:0];

    cachedQuadTexCoordBuffer = [(PKMetalResourceHandler *)*(self + 192) cachedQuadTexCoordBuffer];
    [shaderCopy setVertexBuffer:cachedQuadTexCoordBuffer offset:0 atIndex:1];

    [shaderCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
    [PKMetalRenderState renderTargetBarrierForRenderEncoder:shaderCopy];
    v10 = *(self + 8);
    if (v10)
    {
      [*(v10 + 80) popDebugGroup];
    }
  }
}

- (id)renderCacheItemForStroke:(uint64_t)stroke bsplineFilter:(void *)filter purgeableResources:(void *)resources strokeRenderCache:
{
  filterCopy = filter;
  resourcesCopy = resources;
  v11 = *(a2 + 80);
  v12 = [(PKMetalRenderer *)self renderZoomFactorForStroke:?];
  _strokeDataUUID = [v11 _strokeDataUUID];
  v14 = [(PKLRUCache *)resourcesCopy objectForKey:_strokeDataUUID scaleFactor:v12];

  if (v14)
  {
    v15 = [v11 ink];
    if ([v14 isCompatibleWithInk:v15 renderZoomFactor:v12])
    {
      v16 = [v14 lockPurgeableResourcesAddToSet:filterCopy];

      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    _strokeDataUUID2 = [v11 _strokeDataUUID];
    [(PKLRUCache *)resourcesCopy removeObjectForKey:_strokeDataUUID2 scaleFactor:v12];
  }

  memset(__p, 0, sizeof(__p));
  if ([(PKMetalRenderer *)self generateBSplineInComputeForStroke:v11])
  {
    path = [v11 path];
    v19 = [v11 ink];
    PKBSplineFilter::copyPointsFromStroke(stroke, path, v19, __p);
  }

  else
  {
    path = [v11 path];
    v19 = [v11 ink];
    PKBSplineFilter::splineFromStroke(stroke, path, v19, -1.0);
  }

  v14 = [(PKMetalRenderer *)self generateCacheForStroke:a2 points:*(stroke + 80) segmentSteps:*(stroke + 88), __p];
  [v14 lockPurgeableResourcesAddToSet:filterCopy];
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_12:

  return v14;
}

- (void)renderTexture:(void *)texture intoFramebuffer:(void *)framebuffer clipRect:(CGFloat)rect renderState:(CGFloat)state
{
  v19 = a2;
  textureCopy = texture;
  framebufferCopy = framebuffer;
  if (self)
  {
    v21.origin.x = rect;
    v21.origin.y = state;
    v21.size.width = a7;
    v21.size.height = a8;
    if (CGRectIsNull(v21))
    {
      a7 = [v19 width];
      a8 = [v19 height];
      rect = 0.0;
      state = 0.0;
    }

    v17 = [(PKMetalFramebuffer *)textureCopy size];
    [(PKMetalRenderer *)self renderTexture:v19 intoFramebuffer:textureCopy sourceRect:framebufferCopy destinationRect:0 renderState:rect blendMode:state, a7, a8, 0.0, 0.0, v17, v18];
  }
}

- (void)renderTexture:(void *)texture intoFramebuffer:(void *)framebuffer sourceRect:(uint64_t)rect destinationRect:(CGFloat)destinationRect renderState:(CGFloat)state blendMode:(CGFloat)mode
{
  v25 = a2;
  textureCopy = texture;
  framebufferCopy = framebuffer;
  if (self)
  {
    v29.origin.x = a10;
    v29.origin.y = a11;
    v29.size.width = a12;
    v29.size.height = a13;
    [(PKMetalRenderer *)self renderTexture:v25 intoFramebuffer:textureCopy sourceRect:framebufferCopy destinationQuad:rect renderState:destinationRect blendMode:state, mode, a9, *v28, *&v28[1], *&v28[2], *&v28[3]];
  }
}

- (void)renderUberVertexShaderWithSourceRect:(CGFloat)rect destinationQuad:(CGFloat)quad renderEncoder:(CGFloat)encoder sourcePixelSize:(CGFloat)size destPixelSize:(double)pixelSize texCoordTransform:(double)transform
{
  *v40 = pixelSize;
  *&v40[1] = transform;
  *&v40[2] = a9;
  *&v40[3] = a10;
  selfCopy = self;
  v41.origin.x = rect;
  v41.origin.y = quad;
  v41.size.width = encoder;
  v41.size.height = size;
  CGAffineTransformMakeScale(&v38, 1.0 / a11, 1.0 / a12);
  v26 = 0;
  v27 = *&v38.a;
  v28 = *&v38.c;
  v29 = *&v38.tx;
  do
  {
    v39[v26] = vcvt_f32_f64(vaddq_f64(v29, vmlaq_n_f64(vmulq_n_f64(v28, COERCE_FLOAT(HIDWORD(*&v39[v26]))), v27, COERCE_FLOAT(*&v39[v26]))));
    ++v26;
  }

  while (v26 != 4);
  CGAffineTransformMakeScale(&t1, 1.0 / a13, 1.0 / a14);
  v36.c = 0.0;
  *&v36.a = 0x4000000000000000uLL;
  *&v36.d = xmmword_1C801DE70;
  v36.ty = 1.0;
  CGAffineTransformConcat(&v38, &t1, &v36);
  v30 = 0;
  v31 = *&v38.a;
  v32 = *&v38.c;
  v33 = *&v38.tx;
  do
  {
    v40[v30] = vcvt_f32_f64(vaddq_f64(v33, vmlaq_n_f64(vmulq_n_f64(v32, COERCE_FLOAT(HIDWORD(v40[v30]))), v31, COERCE_FLOAT(v40[v30]))));
    ++v30;
  }

  while (v30 != 4);
  v34 = *(MEMORY[0x1E695EFD0] + 16);
  *&v38.a = *MEMORY[0x1E695EFD0];
  *&v38.c = v34;
  *&v38.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&t1.a = *&v38.a;
  *&t1.c = v34;
  *&t1.tx = *&v38.tx;
  v35 = a2[1];
  *&v36.a = *a2;
  *&v36.c = v35;
  *&v36.tx = a2[2];
  [PKMetalRenderer setupUberVertexShaderWithTransform:&t1 paperTransform:&v36 texCoordTransform:selfCopy renderEncoder:?];
  [selfCopy setVertexBytes:v40 length:32 atIndex:0];
  [selfCopy setVertexBytes:v39 length:32 atIndex:1];
  [selfCopy drawPrimitives:4 vertexStart:0 vertexCount:4];
}

- (void)setupUberVertexShaderWithTransform:(_anonymous_namespace_ *)transform paperTransform:(float64x2_t *)paperTransform texCoordTransform:(float64x2_t *)coordTransform renderEncoder:(void *)encoder
{
  v30 = *MEMORY[0x1E69E9840];
  encoderCopy = encoder;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v8 = vcvt_f32_f64(*coordTransform);
  v9 = vcvt_f32_f64(coordTransform[1]);
  v10 = vcvt_f32_f64(coordTransform[2]);
  DWORD2(v20) = 0;
  *&v20 = v8;
  DWORD2(v21) = 0;
  *&v21 = v9;
  DWORD2(v22) = 1065353216;
  *&v22 = v10;
  v11 = vcvt_f32_f64(*MEMORY[0x1E695EFD0]);
  v12 = vcvt_f32_f64(*(MEMORY[0x1E695EFD0] + 16));
  v13 = vcvt_f32_f64(*(MEMORY[0x1E695EFD0] + 32));
  DWORD2(v23) = 0;
  *&v23 = v11;
  DWORD2(v24) = 0;
  *&v24 = v12;
  DWORD2(v25) = 1065353216;
  *&v25 = v13;
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = v17;
  v19[3] = v18;
  *&v15 = vcvt_f32_f64(*paperTransform);
  *&v16 = vcvt_f32_f64(paperTransform[1]);
  *&v17 = vcvt_f32_f64(paperTransform[2]);
  DWORD2(v26) = 0;
  *&v26 = v15;
  DWORD2(v27) = 0;
  *&v27 = v16;
  DWORD2(v28) = 1065353216;
  *&v28 = v17;
  [encoderCopy setVertexBytes:v19 length:224 atIndex:3];
}

- (void)renderTexture:(void *)texture intoFramebuffer:(void *)framebuffer sourceRect:(uint64_t)rect destinationQuad:(CGFloat)quad renderState:(CGFloat)state blendMode:(CGFloat)mode
{
  v67 = *MEMORY[0x1E69E9840];
  v63 = a2;
  textureCopy = texture;
  framebufferCopy = framebuffer;
  if (!self)
  {
    goto LABEL_47;
  }

  v27 = *(self + 192);
  v28 = *(self + 816);
  *v65 = 7;
  memset(&v65[8], 0, 24);
  *&v66 = v28;
  v29 = [(PKMetalResourceHandler *)v27 namedShaderForKey:v65];
  if (framebufferCopy)
  {
    v30 = *(framebufferCopy + 20);
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  if (v31)
  {
    v32 = *(self + 192);
    v33 = *(self + 497);
    memset(&v65[12], 0, 20);
    v34 = 5;
    if (v32)
    {
      if ((v33 & 1) == 0)
      {
        v34 = 2;
        if (*(v32 + 421))
        {
          v34 = 3;
        }
      }
    }

    else
    {
      v34 = 0;
    }

    *v65 = 7;
    *&v65[8] = 0;
    *&v66 = v34;
    blitShader = [(PKMetalResourceHandler *)v32 namedShaderForKey:v65];
  }

  else
  {
    if (!framebufferCopy)
    {
      goto LABEL_12;
    }

    if (*(framebufferCopy + 40))
    {
      goto LABEL_12;
    }

    if (*(self + 40) != textureCopy)
    {
      goto LABEL_12;
    }

    v56 = *(framebufferCopy + 20);

    if (v56)
    {
      goto LABEL_12;
    }

    blitShader = [(PKMetalRenderer *)self blitShader];
  }

  v36 = blitShader;

  v29 = v36;
LABEL_12:
  if (rect)
  {
    v37 = [(PKMetalShader *)v29 shaderWithBlendMode:rect];

    v29 = v37;
  }

  if (framebufferCopy)
  {
    v38 = *(framebufferCopy + 7);
    v39 = *(framebufferCopy + 10);
  }

  else
  {
    v38 = 0;
    v39 = 0;
  }

  v40 = v39;
  v41 = v40;
  if (v38 && v40)
  {
    v62 = 0;
    v42 = v40;
    commandBuffer = v38;
  }

  else
  {
    v62 = v38 == 0;
    commandBuffer = v38;
    if (!v38)
    {
      commandBuffer = [*(self + 32) commandBuffer];
    }

    renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
    colorAttachments = [renderPassDescriptor colorAttachments];
    v46 = [colorAttachments objectAtIndexedSubscript:0];

    if (*(self + 40) == textureCopy && *(self + 72) == 1)
    {
      *(self + 72) = 0;
      v47 = 2;
    }

    else
    {
      v47 = 1;
    }

    [v46 setLoadAction:v47];
    [v46 setStoreAction:1];
    if (textureCopy)
    {
      v48 = textureCopy[3];
    }

    else
    {
      v48 = 0;
    }

    v49 = v48;
    [v46 setTexture:v49];

    [(PKMetalRenderState *)framebufferCopy addPurgeableFramebuffer:textureCopy];
    v42 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];

    if (v38)
    {
      [(PKMetalRenderState *)framebufferCopy setRenderEncoder:v42];
    }
  }

  if (v29)
  {
    v50 = v29[3];
  }

  else
  {
    v50 = 0;
  }

  v51 = v50;
  [v42 setRenderPipelineState:v51];

  [v42 setFragmentTexture:v63 atIndex:0];
  if (v29)
  {
    v52 = v29[3];
  }

  else
  {
    v52 = 0;
  }

  v53 = v52;
  [v42 setRenderPipelineState:v53];

  if (framebufferCopy)
  {
    v54 = *(framebufferCopy + 14);
    *v65 = *(framebufferCopy + 13);
    *&v65[16] = v54;
    v55 = *(framebufferCopy + 15);
  }

  else
  {
    v57 = *(MEMORY[0x1E695EFD0] + 16);
    *v65 = *MEMORY[0x1E695EFD0];
    *&v65[16] = v57;
    v55 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v66 = v55;
  width = [v63 width];
  height = [v63 height];
  v60 = [(PKMetalFramebuffer *)textureCopy size];
  v64[0] = *v65;
  v64[1] = *&v65[16];
  v64[2] = v66;
  [(PKMetalRenderer *)v42 renderUberVertexShaderWithSourceRect:v64 destinationQuad:quad renderEncoder:state sourcePixelSize:mode destPixelSize:a9 texCoordTransform:a10, a11, a12, a13, width, height, v60, v61];
  if (v62)
  {
    if (framebufferCopy)
    {
      [v42 endEncoding];
      [(PKMetalRenderState *)framebufferCopy addCommandBuffer:commandBuffer];
    }

    else
    {
      [PKMetalRenderState renderTargetBarrierForRenderEncoder:v42];
      [v42 endEncoding];
      [commandBuffer enqueue];
      [commandBuffer commit];
    }
  }

LABEL_47:
}

- (id)blitShader
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = self[1];
  if (v2)
  {
    pipelineConfig = [(PKMetalRenderState *)v2 pipelineConfig];
  }

  else
  {
    pipelineConfig = self[100];
  }

  v4 = self[24];
  v7 = 7uLL;
  v8 = 0;
  v9 = 0;
  v10 = pipelineConfig;
  v5 = [(PKMetalResourceHandler *)v4 namedShaderForKey:?];

  return v5;
}

- (uint64_t)newCGImageWithClipRect:(CGFloat)rect
{
  selfCopy = self;
  if (self)
  {
    v10 = *(self + 40);
    if (!v10 || (*(selfCopy + 72) & 1) != 0)
    {
      goto LABEL_4;
    }

    if ((*(selfCopy + 48) & 1) == 0)
    {
      incrementNonPurgeableCount = [(PKMetalFramebuffer *)v10 incrementNonPurgeableCount];
      *(selfCopy + 48) = incrementNonPurgeableCount;
      if (!incrementNonPurgeableCount)
      {
LABEL_4:
        v11 = 0;
LABEL_9:
        selfCopy = [(PKMetalRenderer *)selfCopy newCGImageWithClipRect:v11 framebuffer:a2, rect, a4, a5];

        return selfCopy;
      }

      v10 = *(selfCopy + 40);
    }

    v11 = v10;
    goto LABEL_9;
  }

  return selfCopy;
}

- (uint64_t)newSixChannelMultiplyCGImageWithClipRect:(CGFloat)rect
{
  selfCopy = self;
  if (self)
  {
    v10 = *(self + 56);
    if (v10)
    {
      if (*(selfCopy + 64))
      {
LABEL_6:
        v12 = v10;
LABEL_8:
        selfCopy = [(PKMetalRenderer *)selfCopy newCGImageWithClipRect:v12 framebuffer:a2, rect, a4, a5];

        return selfCopy;
      }

      incrementNonPurgeableCount = [(PKMetalFramebuffer *)v10 incrementNonPurgeableCount];
      *(selfCopy + 64) = incrementNonPurgeableCount;
      if (incrementNonPurgeableCount)
      {
        v10 = *(selfCopy + 56);
        goto LABEL_6;
      }
    }

    v12 = 0;
    goto LABEL_8;
  }

  return selfCopy;
}

- (uint64_t)newCGImageWithClipRect:(CGFloat)rect framebuffer:(CGFloat)framebuffer
{
  v57 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (Image)
  {
    v58.origin.x = rect;
    v58.origin.y = framebuffer;
    v58.size.width = a5;
    v58.size.height = a6;
    IsNull = CGRectIsNull(v58);
    width = *(Image + 224);
    height = *(Image + 232);
    x = 0.0;
    if (IsNull)
    {
      rect = 0.0;
      rect = 0.0;
      framebuffer = 0.0;
      a5 = *(Image + 224);
      a6 = *(Image + 232);
    }

    else
    {
      v65.origin.x = 0.0;
      v65.origin.y = 0.0;
      v59.origin.x = rect;
      v59.origin.y = framebuffer;
      v59.size.width = a5;
      v59.size.height = a6;
      v65.size.width = *(Image + 224);
      v65.size.height = *(Image + 232);
      v60 = CGRectIntersection(v59, v65);
      rect = v60.origin.y;
      x = v60.origin.x;
      width = v60.size.width;
      height = v60.size.height;
    }

    v61.origin.x = rect;
    v61.origin.y = framebuffer;
    v61.size.width = a5;
    v61.size.height = a6;
    v16 = CGRectGetWidth(v61);
    v62.origin.x = rect;
    v62.origin.y = framebuffer;
    v62.size.width = a5;
    v62.size.height = a6;
    v17 = vcvtpd_u64_f64(v16);
    v18 = vcvtpd_u64_f64(CGRectGetHeight(v62));
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
LABEL_10:
      Image = 0;
      goto LABEL_25;
    }

    v63.origin.x = x;
    v63.origin.y = rect;
    v63.size.width = width;
    v63.size.height = height;
    IsEmpty = CGRectIsEmpty(v63);
    if (v11)
    {
      v21 = IsEmpty;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      v22 = v18;
      v23 = DKUCreateRGBABitmapContext(0, v17, v18, 1.0);
      v24 = v23;
      if (v23)
      {
        v64.origin.x = 0.0;
        v64.origin.y = 0.0;
        v64.size.width = v17;
        v64.size.height = v22;
        CGContextClearRect(v23, v64);
        Image = CGBitmapContextCreateImage(v24);
        CGContextRelease(v24);
        goto LABEL_25;
      }

      goto LABEL_10;
    }

    v25 = *(Image + 497);
    v26 = [PKMetalFramebuffer alloc];
    if (v25)
    {
      v27 = 115;
    }

    else
    {
      v27 = 80;
    }

    v28 = [(PKMetalFramebuffer *)&v26->super.isa initWithSize:v27 pixelFormat:*(Image + 24) device:0 memoryless:1 backedByIOSurface:1 sampleCount:0 purgeable:v17, v18];
    v29 = *(Image + 224);
    v30 = *(Image + 232);
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    commandBuffer = [*(Image + 32) commandBuffer];
    v32 = *(Image + 497);
    v33 = *(Image + 192);
    v34 = *(Image + 816);
    *&v55[20] = 0;
    *&v55[12] = 0;
    v19 = v32 == 0;
    v35 = 2;
    if (!v19)
    {
      v35 = 6;
    }

    *v55 = 7;
    *&v55[28] = 0;
    *&v55[8] = 0;
    *&v56.f64[0] = v34 & 0xFFFFFFFFFFFFFF00 | v35;
    v36 = [(PKMetalResourceHandler *)v33 namedShaderForKey:v55];
    renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
    colorAttachments = [renderPassDescriptor colorAttachments];
    v39 = [colorAttachments objectAtIndexedSubscript:0];

    [v39 setLoadAction:2];
    [v39 setClearColor:{*(v11 + 11), *(v11 + 12), *(v11 + 13), *(v11 + 14)}];
    [v39 setStoreAction:1];
    if (v28)
    {
      v40 = v28[3];
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    [v39 setTexture:v41];

    [(PKMetalFramebuffer *)v11 incrementNonPurgeableCount];
    [(PKMetalFramebuffer *)v11 incrementNonPurgeableCount];
    v42 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
    v43 = *(MEMORY[0x1E695EFD0] + 16);
    *v55 = *MEMORY[0x1E695EFD0];
    *&v55[16] = v43;
    v56 = *(MEMORY[0x1E695EFD0] + 32);
    v51[0] = *v55;
    v51[1] = v43;
    v51[2] = v56;
    v50[0] = v52;
    v50[1] = v53;
    v50[2] = v54;
    [PKMetalRenderer setupUberVertexShaderWithTransform:v55 paperTransform:v51 texCoordTransform:v50 renderEncoder:v42];
    v44 = v11[3];
    [v42 setFragmentTexture:v44 atIndex:0];

    [(PKMetalRenderer *)Image renderFullscreenQuadWithShader:v36 renderEncoder:v42];
    [PKMetalRenderState renderTargetBarrierForRenderEncoder:v42];
    [v42 endEncoding];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __54__PKMetalRenderer_newCGImageWithClipRect_framebuffer___block_invoke;
    v48[3] = &unk_1E82DA220;
    v45 = v11;
    v49 = v45;
    [commandBuffer addCompletedHandler:v48];
    [commandBuffer commit];
    [commandBuffer waitUntilScheduled];
    Image = [PKIOSurfaceUtilities makeCGImageFromIOSurfaceFramebuffer:v28 opaque:0];
    [(PKMetalFramebuffer *)v45 decrementNonPurgeableCount];
  }

LABEL_25:

  return Image;
}

- (void)setBackgroundColor:(uint64_t)color
{
  if (color)
  {
    v4 = *(color + 240);
    if (v4 != a2)
    {
      if (v4)
      {
        CGColorRelease(v4);
        *(color + 240) = 0;
      }

      if (a2)
      {
        *(color + 240) = DKUCGColorCreateConvertedToSRGB(a2);
      }
    }
  }
}

- (void)setLiveRenderingOverrideColor:(uint64_t)color
{
  if (color)
  {
    v4 = *(color + 1024);
    if (v4 != color)
    {
      if (v4)
      {
        CGColorRelease(v4);
        *(color + 1024) = 0;
      }

      if (color)
      {
        *(color + 1024) = CGColorRetain(color);
      }
    }
  }
}

- (void)setPaperTextureImage:(uint64_t)image
{
  v29[2] = *MEMORY[0x1E69E9840];
  if (image)
  {
    v4 = *(image + 456);
    *(image + 456) = 0;

    *(image + 464) = *MEMORY[0x1E695F060];
    if (a2)
    {
      v5 = [objc_alloc(MEMORY[0x1E6974438]) initWithDevice:*(image + 24)];
      v6 = *MEMORY[0x1E6974418];
      v7 = *MEMORY[0x1E69743F8];
      v28[0] = *MEMORY[0x1E69743F0];
      v28[1] = v7;
      v29[0] = v6;
      v29[1] = MEMORY[0x1E695E110];
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v25 = 0;
      v9 = [v5 newTextureWithCGImage:a2 options:v8 error:&v25];
      v10 = v25;
      v11 = *(image + 456);
      *(image + 456) = v9;

      v12 = *(image + 456);
      if (!v12)
      {
        Width = CGImageGetWidth(a2);
        Height = CGImageGetHeight(a2);
        v30.width = Width;
        v30.height = Height;
        UIGraphicsBeginImageContextWithOptions(v30, 0, 1.0);
        v15 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
        [v15 drawInRect:{0.0, 0.0, Width, Height}];

        v16 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        v17 = v16;
        v24 = v10;
        v18 = [v5 newTextureWithCGImage:objc_msgSend(v16 options:"CGImage") error:{v8, &v24}];
        v19 = v24;

        v20 = *(image + 456);
        *(image + 456) = v18;

        v12 = *(image + 456);
        v10 = v19;
      }

      width = [v12 width];
      height = [*(image + 456) height];
      *(image + 464) = width;
      *(image + 472) = height;
      if (!*(image + 456))
      {
        v23 = os_log_create("com.apple.pencilkit", "");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = v10;
          _os_log_impl(&dword_1C7CCA000, v23, OS_LOG_TYPE_DEFAULT, "Failed to load texture: %@", buf, 0xCu);
        }
      }
    }
  }
}

- (uint64_t)setupForDefaultUberVertexShaderInRenderEncoder:(uint64_t)encoder
{
  v3 = a2;
  if (encoder)
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    v10[0] = *MEMORY[0x1E695EFD0];
    v10[1] = v4;
    v9[0] = v10[0];
    v9[1] = v4;
    v6 = *MEMORY[0x1E695EFD0];
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v11 = *(MEMORY[0x1E695EFD0] + 32);
    v9[2] = v11;
    v8[0] = v6;
    v8[1] = v5;
    v8[2] = *(MEMORY[0x1E695EFD0] + 32);
    [PKMetalRenderer setupUberVertexShaderWithTransform:v10 paperTransform:v9 texCoordTransform:v8 renderEncoder:v3];
  }

  return MEMORY[0x1EEE66C30]();
}

- (double)dirtyClipRectForAnimatingStrokeVertices:(uint64_t)vertices newSize:(unint64_t)size
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *(vertices + 328);
  {
    v6 = 36;
  }

  else
  {
    v6 = 24;
  }

  if (*(vertices + 320) == 1)
  {
    verticesCopy2 = vertices;
    v8 = 0;
  }

  else
  {
    v9 = size > v5;
    size -= v5;
    if (!v9)
    {
      return v4;
    }

    verticesCopy2 = vertices;
    v8 = v5;
  }

  [PKMetalRenderer clipRectForVertices:v10 numVertices:size vertexSize:v6];
  return v11;
}

- (float)clipRectForVertices:(float *)result numVertices:(uint64_t)vertices vertexSize:(uint64_t)size
{
  if (vertices)
  {
    v3 = *result;
    v4 = result[1];
    v5 = vertices - 1;
    if (vertices != 1)
    {
      v6 = (result + size + 4);
      v7 = result[1];
      v8 = *result;
      while (1)
      {
        v9 = *v6;
        v10 = *(v6 - 1);
        v11 = v3 < v10 ? *(v6 - 1) : v3;
        if (v8 <= v10)
        {
          v3 = v11;
        }

        else
        {
          v8 = *(v6 - 1);
        }

        v12 = v9;
        if (v7 > v9)
        {
          break;
        }

        if (v4 >= v12)
        {
          goto LABEL_15;
        }

LABEL_16:
        v6 = (v6 + size);
        v4 = v12;
        if (!--v5)
        {
          return result;
        }
      }

      v7 = v9;
LABEL_15:
      v12 = v4;
      goto LABEL_16;
    }
  }

  return result;
}

- (double)updateActualSize:(double)size pixelSize:(double)pixelSize
{
  if (self)
  {
    v6 = result;
    v8 = *(self + 224);
    if (pixelSize != v8 || a5 != *(self + 232))
    {
      *(self + 224) = pixelSize;
      *(self + 232) = a5;
      [(PKMetalRenderer *)self teardownOriginalBackFramebuffer];
      [(PKMetalRenderer *)self teardownDrawingFramebuffers];
      v10 = *(self + 200);
      *(self + 200) = 0;

      v11 = *(self + 208);
      *(self + 208) = 0;

      v12 = *(self + 216);
      *(self + 216) = 0;

      v8 = *(self + 224);
    }

    *(self + 248) = v6;
    *(self + 256) = size;
    result = v8 / v6;
    *(self + 264) = result;
  }

  return result;
}

- (void)teardownOriginalBackFramebuffer
{
  if (self)
  {
  }
}

- (void)setupOriginalBackFramebufferIfNecessary
{
  if (!self || (*(self + 728) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return;
  }

  v3 = (self + 40);
  v2 = *(self + 40);
  if (v2)
  {
    if (*(self + 48))
    {
LABEL_7:
      v5 = *(v2 + 40);
      goto LABEL_10;
    }

    incrementNonPurgeableCount = [(PKMetalFramebuffer *)v2 incrementNonPurgeableCount];
    *(self + 48) = incrementNonPurgeableCount;
    if (incrementNonPurgeableCount)
    {
      v2 = *v3;
      if (*v3)
      {
        goto LABEL_7;
      }

LABEL_9:
      v5 = 0;
LABEL_10:
      v6 = *(self + 480);
      if (v5 == v6)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if (*(self + 48))
  {
    goto LABEL_9;
  }

  v6 = *(self + 480);
LABEL_13:
  v7 = *(self + 40);
  if (v7 && ((*(self + 48) & 1) != 0 || (*(self + 48) = [(PKMetalFramebuffer *)v7 incrementNonPurgeableCount], (v7 = *(self + 40)) != 0)))
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v9 setLabel:@"Original back framebuffer"];

  *(self + 72) = 1;
  v10 = *(self + 192);
  if (v10 && (*(v10 + 418) & 1) == 0 && *(v10 + 419) == 1)
  {
    if (qword_1ED6A5180 != -1)
    {
      dispatch_once(&qword_1ED6A5180, &__block_literal_global_31);
    }

    if ((_MergedGlobals_145 & 1) == 0)
    {
      [PKMetalRenderer clearFramebuffer:self waitUntilCompleted:*(self + 40)];
    }
  }
}

- (void)clearFramebuffer:(uint64_t)framebuffer waitUntilCompleted:(void *)completed
{
  v20 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  if (framebuffer)
  {
    commandBuffer = [*(framebuffer + 32) commandBuffer];
    renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
    colorAttachments = [renderPassDescriptor colorAttachments];
    v7 = [colorAttachments objectAtIndexedSubscript:0];

    [v7 setLoadAction:0];
    [v7 setStoreAction:1];
    if (completedCopy)
    {
      v8 = *(completedCopy + 3);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 setTexture:v9];

    v10 = [commandBuffer renderCommandEncoderWithDescriptor:renderPassDescriptor];
    [(PKMetalRenderer *)framebuffer setupForDefaultUberVertexShaderInRenderEncoder:v10];
    if (completedCopy)
    {
      v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*(completedCopy + 88)), *(completedCopy + 104));
    }

    else
    {
      v11 = 0uLL;
    }

    v15 = v11;
    [v10 setFragmentBytes:&v15 length:16 atIndex:0];
    v12 = *(framebuffer + 192);
    v13 = *(framebuffer + 816);
    v17 = 0;
    v18 = 0;
    v16 = 0xCuLL;
    v19 = v13;
    v14 = [(PKMetalResourceHandler *)v12 namedShaderForKey:?];
    [(PKMetalRenderer *)framebuffer renderFullscreenQuadWithShader:v14 renderEncoder:v10];

    [v10 endEncoding];
    [commandBuffer enqueue];
    [commandBuffer commit];
  }
}

- (void)renderBrushIndicatorForStroke:(__int128 *)stroke withTransform:(unint64_t)transform mode:
{
  v74 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v7 = [v43 ink];
  behavior = [v7 behavior];
  v9 = [behavior isEraser] ^ 1;
  if (transform > 2)
  {
    LOBYTE(v9) = 1;
  }

  if (v9)
  {
  }

  else
  {
    v10 = *(self + 352);

    if (v10 == 1)
    {
      v11 = *(self + 368);
      v12 = *(self + 376);
      v13 = *(self + 384);
      v44 = *stroke;
      v45 = stroke[1];
      v46 = stroke[2];
      v14 = *(self + 8);
      if (v14)
      {
        v21 = *(v14 + 80);
        if (v21)
        {
          v50 = xmmword_1C801DE80;
          v22 = *(self + 1048);
          __asm
          {
            FMOV            V2.2D, #0.5
            FMOV            V3.2D, #1.0
          }

          v29 = 3.5 / v22.f64[0];
          v52 = vcvt_f32_f64(vextq_s8(vmulq_f64(v22, _Q2), vdivq_f64(_Q3, v22), 8uLL));
          *v22.f64 = v13;
          v53 = v29;
          v51 = LODWORD(v22.f64[0]);
          v49 = 0;
          v76.val[0].i64[0] = __PAIR64__(v62, v59[0]);
          v76.val[0].i64[1] = __PAIR64__(v70, v66);
          v76.val[1].i64[0] = __PAIR64__(v63, v59[1]);
          v76.val[1].i64[1] = __PAIR64__(v71, v67);
          v30 = v58;
          vst2q_f32(v30, v76);
          v76.val[0].i16[0] = v60;
          v76.val[0].i16[1] = v64;
          v76.val[0].i16[2] = v68;
          v76.val[0].i16[3] = v72;
          v76.val[0] = vcvtq_f32_f16(*v76.val[0].f32);
          v31.i16[0] = v61;
          v31.i16[1] = v65;
          v31.i16[2] = v69;
          v31.i16[3] = v73;
          v76.val[1] = vcvtq_f32_f16(v31);
          v32 = v57;
          vst2q_f32(v32, v76);
          v33 = *(self + 8);
          if (v33)
          {
            pipelineConfig = [(PKMetalRenderState *)v33 pipelineConfig];
          }

          else
          {
            pipelineConfig = *(self + 800);
          }

          v35 = *(self + 192);
          v54 = 9uLL;
          v55 = 0uLL;
          *&v56 = pipelineConfig;
          v36 = [(PKMetalResourceHandler *)v35 namedShaderForKey:?];
          v54 = v44;
          v55 = v45;
          v56 = v46;
          v37 = *(MEMORY[0x1E695EFD0] + 16);
          v48[0] = *MEMORY[0x1E695EFD0];
          v48[1] = v37;
          v39 = *MEMORY[0x1E695EFD0];
          v38 = *(MEMORY[0x1E695EFD0] + 16);
          v48[2] = *(MEMORY[0x1E695EFD0] + 32);
          v47[0] = v39;
          v47[1] = v38;
          v47[2] = *(MEMORY[0x1E695EFD0] + 32);
          [PKMetalRenderer setupUberVertexShaderWithTransform:v48 paperTransform:v47 texCoordTransform:v21 renderEncoder:?];
          if (v36)
          {
            v40 = v36[3];
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;
          [v21 setRenderPipelineState:v41];

          [v21 setVertexBytes:v58 length:32 atIndex:0];
          [v21 setVertexBytes:v57 length:32 atIndex:1];
          [v21 setFragmentBytes:&v50 length:32 atIndex:0];
          *&v54 = 0;
          v42 = [(PKMetalResourceHandler *)*(self + 192) indexBufferForNumVertices:&v54 outIndexType:?];
          [v21 drawIndexedPrimitives:3 indexCount:6 indexType:v54 indexBuffer:v42 indexBufferOffset:0];
        }
      }

      else
      {
        v21 = 0;
      }
    }
  }
}

- (void)finishRenderingNoTeardownForStroke:(void *)stroke clippedToPixelSpaceRect:(CGFloat)rect renderEncoder:(CGFloat)encoder
{
  strokeCopy = stroke;
  [(PKMetalRenderState *)*(self + 8) pushDebugGroup:?];
  v14 = *(MEMORY[0x1E695F050] + 16);
  v27 = *MEMORY[0x1E695F050];
  v28 = v14;
  if (![(PKMetalRenderer *)self setupClippingForStrokeClipRect:strokeCopy clippedToPixelSpaceRect:&v27 renderEncoder:*(a2 + 216) outNewClipRect:*(a2 + 224), *(a2 + 232), *(a2 + 240), rect, encoder, a6, a7])
  {
    goto LABEL_12;
  }

  v15 = *(self + 8);
  if (v15)
  {
    v17 = v15[16];
    v16 = v15[17];
    if ((*(self + 728) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v18 = v15[18];
      v15[16] = v18;
      v19 = *(self + 8);
      if (v19)
      {
        *(v19 + 136) = v18 + 1;
      }

      goto LABEL_8;
    }

    v15[16] = 0;
    goto LABEL_7;
  }

  v17 = 0;
  v16 = 0;
  if ((*(self + 728) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
LABEL_7:
    *(self + 72) = 0;
  }

LABEL_8:
  [(PKMetalRenderState *)*(self + 8) pushDebugGroup:?];
  v20 = *(a2 + 80);
  v21 = *(MEMORY[0x1E695EFD0] + 16);
  v26[0] = *MEMORY[0x1E695EFD0];
  v26[1] = v21;
  v26[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PKMetalRenderer *)self renderStroke:v20 withTransform:v26 mode:3uLL flipped:0 renderBufferSize:strokeCopy renderEncoder:*(a2 + 285) currentClipRect:*MEMORY[0x1E695F060] needRenderMask:*(MEMORY[0x1E695F060] + 8), *&v27, *(&v27 + 1), *&v28, *(&v28 + 1)];
  v22 = *(self + 8);
  if (!v22)
  {
    goto LABEL_14;
  }

  [*(v22 + 80) popDebugGroup];
  v23 = *(self + 8);
  if (!v23)
  {
    goto LABEL_14;
  }

  *(v23 + 128) = v17;
  v24 = *(self + 8);
  if (!v24)
  {
    goto LABEL_14;
  }

  *(v24 + 136) = v16;
LABEL_12:
  v25 = *(self + 8);
  if (v25)
  {
    [*(v25 + 80) popDebugGroup];
  }

LABEL_14:
}

- (void)finishRendering
{
  if (self)
  {
    if ((*(self + 1003) & 1) == 0)
    {
      v2 = os_log_create("com.apple.pencilkit", "Sketching");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        *v3 = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "Finish rendering", v3, 2u);
      }
    }

    *(self + 352) = 0;
  }
}

- (uint64_t)setupClippingForStrokeClipRect:(CGFloat *)rect clippedToPixelSpaceRect:(CGFloat)spaceRect renderEncoder:(CGFloat)encoder outNewClipRect:(CGFloat)clipRect
{
  v21 = a2;
  if (self)
  {
    v32.origin.x = a8;
    v32.origin.y = a9;
    v32.size.width = a10;
    v32.size.height = a11;
    IsNull = CGRectIsNull(v32);
    v33.origin.x = spaceRect;
    v33.origin.y = encoder;
    v33.size.width = clipRect;
    v33.size.height = a7;
    v34 = CGRectIntegral(v33);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!IsNull)
    {
      v38.origin.x = a8;
      v38.origin.y = a9;
      v38.size.width = a10;
      v38.size.height = a11;
      v35 = CGRectIntersection(v34, v38);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
    }

    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    if (CGRectIsNull(v36))
    {
      self = 0;
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      if (v31)
      {
        v27 = *(&v31 + 1) == 0;
      }

      else
      {
        v27 = 1;
      }

      self = !v27;
      if (!v27)
      {
        if (rect)
        {
          *rect = x;
          rect[1] = y;
          rect[2] = width;
          rect[3] = height;
        }

        v29[0] = v30;
        v29[1] = v31;
        [v21 setScissorRect:v29];
      }
    }
  }

  return self;
}

- (void)renderPaperTransform:(_OWORD *)transform paperTransform:(int)paperTransform flipped:(void *)flipped multiply:(double)multiply renderEncoder:
{
  v38 = *MEMORY[0x1E69E9840];
  flippedCopy = flipped;
  [(PKMetalRenderState *)self[1] pushDebugGroup:?];
  v12 = self[1];
  if (v12)
  {
    pipelineConfig = [(PKMetalRenderState *)v12 pipelineConfig];
  }

  else
  {
    pipelineConfig = self[100];
  }

  v14 = self[24];
  *&v37.a = 6;
  memset(&v37.b, 0, 24);
  *&v37.tx = pipelineConfig;
  v15 = [(PKMetalResourceHandler *)v14 namedShaderForKey:?];
  multiplyCopy = multiply;
  v36 = multiplyCopy;
  [flippedCopy setFragmentBytes:&v36 length:4 atIndex:0];
  v17 = self[57];
  paperTexture = v17;
  if (!v17)
  {
    paperTexture = [(PKMetalResourceHandler *)self[24] paperTexture];
  }

  [flippedCopy setFragmentTexture:paperTexture atIndex:2];
  if (!v17)
  {
  }

  if (paperTransform)
  {
    v19 = a2[1];
    *&t1.a = *a2;
    *&t1.c = v19;
    *&t1.tx = a2[2];
    *&v34.a = 0x3FF0000000000000uLL;
    v34.c = 0.0;
    v34.d = -1.0;
    v34.tx = 0.0;
    v34.ty = 0.0;
    CGAffineTransformConcat(&v37, &t1, &v34);
    v20 = *&v37.c;
    *a2 = *&v37.a;
    a2[1] = v20;
    a2[2] = *&v37.tx;
  }

  v21 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v21;
  *&t1.tx = a2[2];
  v34.c = 0.0;
  *&v34.a = 0x3FE0000000000000uLL;
  __asm { FMOV            V0.2D, #0.5 }

  *&v34.d = _Q0;
  v34.ty = 0.5;
  DKDTransformFromTransformSpace(&t1, &v34, &v37);
  v27 = *&v37.c;
  *a2 = *&v37.a;
  a2[1] = v27;
  a2[2] = *&v37.tx;
  v28 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v28;
  *&t1.tx = a2[2];
  CGAffineTransformInvert(&v37, &t1);
  v29 = *&v37.c;
  *a2 = *&v37.a;
  a2[1] = v29;
  a2[2] = *&v37.tx;
  v30 = a2[1];
  *&v37.a = *a2;
  *&v37.c = v30;
  *&v37.tx = a2[2];
  v31 = transform[1];
  *&t1.a = *transform;
  *&t1.c = v31;
  *&t1.tx = transform[2];
  v32 = *(MEMORY[0x1E695EFD0] + 16);
  *&v34.a = *MEMORY[0x1E695EFD0];
  *&v34.c = v32;
  *&v34.tx = *(MEMORY[0x1E695EFD0] + 32);
  [PKMetalRenderer setupUberVertexShaderWithTransform:&t1 paperTransform:&v34 texCoordTransform:flippedCopy renderEncoder:?];
  [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v15 renderEncoder:flippedCopy];
  v33 = self[1];
  if (v33)
  {
    [*(v33 + 80) popDebugGroup];
  }
}

- (double)alphaForStroke:(uint64_t)stroke
{
  v3 = a2;
  v4 = [v3 ink];
  v5 = v4;
  if (v4)
  {
    color = [v4 color];
    cGColor = [color CGColor];

    v8 = *(stroke + 8);
    if (v8 && *(v8 + 40) == 1 && *(stroke + 1024))
    {
      cGColor = *(stroke + 1024);
    }

    behavior = [v5 behavior];
    v10 = [(PKInkBehavior *)behavior alphaForStrokeColor:cGColor];
  }

  else
  {
    v10 = 1.0;
  }

  return v10;
}

- (double)antialiasingThresholdForStroke:(uint64_t)stroke
{
  v2 = *(stroke + 272);
  v3 = *(stroke + 280);
  if (a2)
  {
    [a2 transform];
    v5 = v7;
    v4 = v8;
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  return 1.0 / (sqrt(v3 * v3 + v2 * v2) * sqrt(v4 * v4 + v5 * v5));
}

- (uint64_t)renderStrokeRenderCacheBuffers:(void *)buffers renderEncoder:(_anonymous_namespace_:(int)encoder :AnimatingStroke *)a4 animatingStroke:indexed:
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a2;
  buffersCopy = buffers;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v10 = 0;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        uniformsBuffer = [(PKMetalSDFPenRenderCacheBuffer *)v14 uniformsBuffer];
        if (v14)
        {
          v16 = v14[2];
        }

        else
        {
          v16 = 0;
        }

        [buffersCopy setVertexBuffer:uniformsBuffer offset:v16 atIndex:0];

        if (v14)
        {
          v17 = v14[3];
        }

        else
        {
          v17 = 0;
        }

        if (encoder)
        {
          v28.a = 0.0;
          v18 = [(PKMetalResourceHandler *)*(self + 192) indexBufferForNumVertices:v17 outIndexType:&v28];
          [buffersCopy drawIndexedPrimitives:3 indexCount:6 * (v17 >> 2) indexType:*&v28.a indexBuffer:v18 indexBufferOffset:0];
        }

        else
        {
          [buffersCopy drawPrimitives:4 vertexStart:0 vertexCount:v17];
        }

        if (*(a4 + 320) == 1)
        {
          if (v14)
          {
            v19 = v14[5];
            v20 = v14[6];
            v21 = v14[7];
            v22 = v14[8];
          }

          else
          {
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v19 = 0;
          }

          v23 = *(self + 288);
          *&v28.a = *(self + 272);
          *&v28.c = v23;
          *&v28.tx = *(self + 304);
        }

        v10 += v17;
        ++v13;
      }

      while (v11 != v13);
      v24 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      v11 = v24;
    }

    while (v24);
  }

  return v10;
}

- (uint64_t)renderStrokeRenderCache:(void *)cache renderEncoder:(uint64_t)encoder animatingStroke:(int)stroke indexed:
{
  v9 = x1_0;
  cacheCopy = cache;
  if ((*(encoder + 284) & 1) != 0 || ([*(encoder + 80) ink], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "behavior"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "renderingDescriptor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "type"), v13, v12, v11, v14 != 1))
  {
    {
      [PKMetalRenderer setupRenderEncoder:self forSDFPenStroke:cacheCopy alphaFactor:encoder];
    }

    else
    {
      [(PKMetalRenderer *)self setupRenderEncoder:cacheCopy forPenStroke:encoder alphaFactor:1.0];
    }

    v15 = 0;
  }

  else
  {
    [(PKMetalRenderer *)self setupRenderEncoder:cacheCopy forParticleStroke:encoder secondaryParticles:0];
    v15 = 1;
  }

  buffers = [v9 buffers];
  v17 = [(PKMetalRenderer *)self renderStrokeRenderCacheBuffers:buffers renderEncoder:cacheCopy animatingStroke:encoder indexed:stroke];

  if (v15)
  {
    secondaryBuffers = [v9 secondaryBuffers];

    if (secondaryBuffers)
    {
      [(PKMetalRenderer *)self setupRenderEncoder:cacheCopy forParticleStroke:encoder secondaryParticles:1];
      secondaryBuffers2 = [v9 secondaryBuffers];
      v17 += [(PKMetalRenderer *)self renderStrokeRenderCacheBuffers:secondaryBuffers2 renderEncoder:cacheCopy animatingStroke:encoder indexed:stroke];
    }
  }

  if ((*(encoder + 336) & 1) == 0)
  {
    [*(encoder + 80) _bounds];
    v20 = self[18];
    *&v22.a = self[17];
    *&v22.c = v20;
    *&v22.tx = self[19];
  }

  return v17;
}

- (void)setupRenderEncoder:(uint64_t)encoder forParticleStroke:(int)stroke secondaryParticles:
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [*(encoder + 80) ink];
  behavior = [v8 behavior];
  if (stroke)
  {
    [behavior secondaryParticleDescriptor];
  }

  else
  {
    [behavior particleDescriptor];
  }
  v10 = ;

  *(encoder + 73) = stroke;
  identifier = [v8 identifier];
  v12 = [identifier isEqualToString:@"com.apple.ink.marker"];

  if (v12)
  {
    v13 = *(encoder + 73);
    if (*(encoder + 74) != 1)
    {
      if (*(encoder + 72) == 1)
      {
        if (*(encoder + 73))
        {
          v13 = 5;
        }

        else
        {
          v13 = 2;
        }
      }

      else if (*(encoder + 73))
      {
        v13 = 4;
      }

      else
      {
        v13 = 1;
      }
    }

    v16 = *(self + 8);
    if (v16)
    {
      pipelineConfig = [(PKMetalRenderState *)v16 pipelineConfig];
    }

    else
    {
      pipelineConfig = *(self + 800);
    }

    v18 = *(self + 192);
    *&v50[0] = 5;
    memset(v50 + 12, 0, 20);
    DWORD2(v50[0]) = v13;
  }

  else
  {
    maskTextureName = [v10 maskTextureName];

    v15 = *(encoder + 73);
    if (maskTextureName)
    {
      if ((*(encoder + 74) & 1) == 0)
      {
        if (*(encoder + 72) == 1)
        {
          if (*(encoder + 73))
          {
            v15 = 5;
          }

          else
          {
            v15 = 2;
          }
        }

        else if (*(encoder + 73))
        {
          v15 = 4;
        }

        else
        {
          v15 = 1;
        }
      }

      particleBlendMode = [v10 particleBlendMode];
      v20 = *(self + 8);
      if (v20)
      {
        pipelineConfig = [(PKMetalRenderState *)v20 pipelineConfig];
      }

      else
      {
        pipelineConfig = *(self + 800);
      }

      v18 = *(self + 192);
      v21 = particleBlendMode == 1;
      v22 = 4;
    }

    else
    {
      if ((*(encoder + 74) & 1) == 0)
      {
        if (*(encoder + 72) == 1)
        {
          if (*(encoder + 73))
          {
            v15 = 5;
          }

          else
          {
            v15 = 2;
          }
        }

        else if (*(encoder + 73))
        {
          v15 = 4;
        }

        else
        {
          v15 = 1;
        }
      }

      particleBlendMode2 = [v10 particleBlendMode];
      v24 = *(self + 8);
      if (v24)
      {
        pipelineConfig = [(PKMetalRenderState *)v24 pipelineConfig];
      }

      else
      {
        pipelineConfig = *(self + 800);
      }

      v18 = *(self + 192);
      v21 = particleBlendMode2 == 1;
      v22 = 3;
    }

    *&v50[0] = v22;
    *(v50 + 12) = 0;
    DWORD2(v50[0]) = v15;
    DWORD1(v50[1]) = 0;
    *(&v50[1] + 1) = v21;
  }

  *&v51 = pipelineConfig;
  v25 = [(PKMetalResourceHandler *)v18 namedShaderForKey:v50];
  v51 = 0u;
  v52 = 0u;
  memset(v50, 0, sizeof(v50));
  v26 = *(encoder + 128);
  *&v46.a = *(encoder + 112);
  *&v46.c = v26;
  *&v46.tx = *(encoder + 144);
  memset(&v47, 0, sizeof(v47));
  *&v26 = -2.0 / *(self + 232);
  v45.a = 2.0 / *(self + 224);
  v45.b = 0.0;
  v45.c = 0.0;
  *&v45.d = v26;
  *&v45.tx = xmmword_1C8018A30;
  v27 = *(self + 288);
  *&t1.a = *(self + 272);
  *&t1.c = v27;
  *&t1.tx = *(self + 304);
  *&t2.a = *&v45.a;
  *&t2.c = *&v45.c;
  *&t2.tx = xmmword_1C8018A30;
  CGAffineTransformConcat(&v45, &t1, &t2);
  CGAffineTransformConcat(&v47, &v46, &v45);
  v50[0] = v29;
  v50[1] = v30;
  v51 = v31;
  v52 = v32;
  *&v29 = *(encoder + 304);
  v53 = v29;
  [v10 maskDepth];
  *&v33 = v33;
  v54 = LODWORD(v33);
  [v7 setVertexBytes:v50 length:80 atIndex:1];
  if (v25)
  {
    v34 = v25[3];
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  [v7 setRenderPipelineState:v35];

  v36 = *(self + 192);
  textureName = [v10 textureName];
  v38 = -[PKMetalResourceHandler inkTextureNamed:image:](v36, textureName, [v10 textureImage]);

  if (v38)
  {
    [v7 setFragmentTexture:v38 atIndex:0];
  }

  else
  {
    v39 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(t1.a) = 0;
      _os_log_error_impl(&dword_1C7CCA000, v39, OS_LOG_TYPE_ERROR, "Failed to load ink texture.", &t1, 2u);
    }
  }

  maskTextureName2 = [v10 maskTextureName];
  v41 = maskTextureName2 == 0;

  if (!v41)
  {
    v42 = *(self + 192);
    maskTextureName3 = [v10 maskTextureName];
    v44 = -[PKMetalResourceHandler inkTextureNamed:image:](v42, maskTextureName3, [v10 maskTextureImage]);

    if (v44)
    {
      [v7 setFragmentTexture:v44 atIndex:1];
    }
  }
}

- (void)setupRenderEncoder:(uint64_t)encoder forSDFPenStroke:(void *)stroke alphaFactor:(uint64_t)factor
{
  v43 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = *(factor + 73);
  if (*(factor + 74) != 1)
  {
    if (*(factor + 73))
    {
      v7 = 4;
    }

    else
    {
      v7 = 1;
    }

    if (*(factor + 73))
    {
      v8 = 5;
    }

    else
    {
      v8 = 2;
    }

    if (*(factor + 72) == 1)
    {
      v6 = v8;
    }

    else
    {
      v6 = v7;
    }
  }

  v9 = *(encoder + 8);
  if (v9)
  {
    pipelineConfig = [(PKMetalRenderState *)v9 pipelineConfig];
  }

  else
  {
    pipelineConfig = *(encoder + 800);
  }

  v11 = *(encoder + 192);
  *&t1.a = 14;
  memset(&t1.b + 4, 0, 20);
  LODWORD(t1.b) = v6;
  *&t1.tx = pipelineConfig;
  v12 = [(PKMetalResourceHandler *)v11 namedShaderForKey:?];
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  [strokeCopy setRenderPipelineState:v15];

  v16 = *(factor + 80);
  v17 = [(PKMetalRenderer *)encoder alphaForStroke:v16];
  if (v17 >= 0.97)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = v17;
  }

  if (*(factor + 337))
  {
    v18 = v18 * *(encoder + 1064);
  }

  v19 = *(factor + 128);
  *&v32.a = *(factor + 112);
  *&v32.c = v19;
  *&v32.tx = *(factor + 144);
  memset(&v33, 0, sizeof(v33));
  *&v19 = -2.0 / *(encoder + 232);
  v31.a = 2.0 / *(encoder + 224);
  v31.b = 0.0;
  v31.c = 0.0;
  *&v31.d = v19;
  *&v31.tx = xmmword_1C8018A30;
  v20 = *(encoder + 288);
  *&t1.a = *(encoder + 272);
  *&t1.c = v20;
  *&t1.tx = *(encoder + 304);
  *&t2.a = *&v31.a;
  *&t2.c = *&v31.c;
  *&t2.tx = xmmword_1C8018A30;
  CGAffineTransformConcat(&v31, &t1, &t2);
  CGAffineTransformConcat(&v33, &v32, &v31);
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  *&v22 = v18 * *(factor + 304);
  v38 = v22;
  v26 = [(PKMetalRenderer *)encoder antialiasingThresholdForStroke:?];
  v40 = v26;
  v27 = *(factor + 80);
  if (v27)
  {
    [v27 _inkTransform];
    d = t1.d;
  }

  else
  {
    d = 0.0;
  }

  v39 = d;
  [strokeCopy setVertexBytes:&v34 length:80 atIndex:1];
  [strokeCopy setFragmentBytes:&v34 length:80 atIndex:0];
  sdfPenMaxHeightLookupTexture = [(PKMetalResourceHandler *)*(encoder + 192) sdfPenMaxHeightLookupTexture];
  [strokeCopy setFragmentTexture:sdfPenMaxHeightLookupTexture atIndex:0];

  sdfPenEllipseLookupTexture = [(PKMetalResourceHandler *)*(encoder + 192) sdfPenEllipseLookupTexture];
  [strokeCopy setFragmentTexture:sdfPenEllipseLookupTexture atIndex:1];
}

- (void)setupRenderEncoder:(uint64_t)encoder forPenStroke:(double)stroke alphaFactor:
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  if (*(encoder + 284) == 1)
  {
    v8 = *(self + 192);
    *&t1.a = 10;
    memset(&t1.b, 0, 24);
    *&t1.tx = 1;
    v9 = [(PKMetalResourceHandler *)v8 namedShaderForKey:?];
    v10 = [(PKMetalShader *)v9 msaaPipelineStateWithSampleCount:?];
    [v7 setRenderPipelineState:v10];
  }

  else
  {
    v11 = [*(encoder + 80) ink];
    behavior = [v11 behavior];
    renderingDescriptor = [behavior renderingDescriptor];
    alternateMode = [renderingDescriptor alternateMode];

    if (alternateMode == 1)
    {
      v15 = *(encoder + 73);
      if (*(encoder + 74) != 1)
      {
        if (*(encoder + 72) == 1)
        {
          if (*(encoder + 73))
          {
            v15 = 5;
          }

          else
          {
            v15 = 2;
          }
        }

        else if (*(encoder + 73))
        {
          v15 = 4;
        }

        else
        {
          v15 = 1;
        }
      }

      v21 = *(self + 8);
      if (v21)
      {
        pipelineConfig = [(PKMetalRenderState *)v21 pipelineConfig];
      }

      else
      {
        pipelineConfig = *(self + 800);
      }

      v23 = *(self + 192);
      *&t1.a = 15;
      memset(&t1.b + 4, 0, 20);
      LODWORD(t1.b) = v15;
      *&t1.tx = pipelineConfig;
      v24 = [(PKMetalResourceHandler *)v23 namedShaderForKey:?];
      v9 = v24;
      if (v24)
      {
        v25 = *(v24 + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v16 = [*(encoder + 80) ink];
      behavior2 = [v16 behavior];
      renderingDescriptor2 = [behavior2 renderingDescriptor];
      alternateMode2 = [renderingDescriptor2 alternateMode];

      v20 = *(encoder + 73);
      if (alternateMode2 == 2)
      {
        if ((*(encoder + 74) & 1) == 0)
        {
          if (*(encoder + 72) == 1)
          {
            if (*(encoder + 73))
            {
              v20 = 5;
            }

            else
            {
              v20 = 2;
            }
          }

          else if (*(encoder + 73))
          {
            v20 = 4;
          }

          else
          {
            v20 = 1;
          }
        }

        v26 = *(self + 8);
        if (v26)
        {
          pipelineConfig2 = [(PKMetalRenderState *)v26 pipelineConfig];
        }

        else
        {
          pipelineConfig2 = *(self + 800);
        }

        v28 = *(self + 192);
        *&t1.a = 16;
        memset(&t1.b + 4, 0, 20);
        LODWORD(t1.b) = v20;
        *&t1.tx = pipelineConfig2;
        v29 = [(PKMetalResourceHandler *)v28 namedShaderForKey:?];
        v9 = v29;
        if (v29)
        {
          v25 = *(v29 + 24);
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        if ((*(encoder + 74) & 1) == 0)
        {
          if (*(encoder + 72) == 1)
          {
            if (*(encoder + 73))
            {
              v20 = 5;
            }

            else
            {
              v20 = 2;
            }
          }

          else if (*(encoder + 73))
          {
            v20 = 4;
          }

          else
          {
            v20 = 1;
          }
        }

        v30 = *(self + 1003);
        v31 = *(self + 8);
        if (v31)
        {
          pipelineConfig3 = [(PKMetalRenderState *)v31 pipelineConfig];
        }

        else
        {
          pipelineConfig3 = *(self + 800);
        }

        v33 = *(self + 192);
        v34 = 1;
        if (v30)
        {
          v34 = 2;
        }

        *&t1.a = v34;
        memset(&t1.b + 4, 0, 20);
        LODWORD(t1.b) = v20;
        *&t1.tx = pipelineConfig3;
        v35 = [(PKMetalResourceHandler *)v33 namedShaderForKey:?];
        v9 = v35;
        if (v35)
        {
          v25 = *(v35 + 24);
        }

        else
        {
          v25 = 0;
        }
      }
    }

    v10 = v25;
    [v7 setRenderPipelineState:v10];
  }

  v36 = *(encoder + 80);
  v37 = [(PKMetalRenderer *)self alphaForStroke:v36];
  if (v37 >= 0.97)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = v37;
  }

  if (*(encoder + 337))
  {
    v38 = v38 * *(self + 1064);
  }

  v39 = *(encoder + 128);
  *&v56.a = *(encoder + 112);
  *&v56.c = v39;
  *&v56.tx = *(encoder + 144);
  memset(&v57, 0, sizeof(v57));
  *&v39 = -2.0 / *(self + 232);
  v55.a = 2.0 / *(self + 224);
  v55.b = 0.0;
  v55.c = 0.0;
  *&v55.d = v39;
  *&v55.tx = xmmword_1C8018A30;
  v40 = *(self + 288);
  *&t1.a = *(self + 272);
  *&t1.c = v40;
  *&t1.tx = *(self + 304);
  *&t2.a = *&v55.a;
  *&t2.c = *&v55.c;
  *&t2.tx = xmmword_1C8018A30;
  CGAffineTransformConcat(&v55, &t1, &t2);
  CGAffineTransformConcat(&v57, &v56, &v55);
  v58 = v42;
  v59 = v43;
  v60 = v44;
  v61 = v45;
  *&v42 = v38 * stroke * *(encoder + 304);
  v62 = v42;
  v46 = [(PKMetalRenderer *)self antialiasingThresholdForStroke:?];
  v63 = v46;
  v47 = 0uLL;
  memset(&t1, 0, sizeof(t1));
  v48 = *(encoder + 80);
  if (v48)
  {
    [v48 _inkTransform];
    v49 = vcvt_f32_f64(*&t1.a);
    v47 = vcvt_hight_f32_f64(vcvt_f32_f64(*&t1.c), *&t1.tx);
  }

  else
  {
    v49 = 0;
  }

  DWORD2(v65) = 0;
  *&v65 = v49;
  DWORD2(v66) = 0;
  *&v66 = v47.i64[0];
  DWORD2(v67) = 1065353216;
  *&v67 = vdupq_laneq_s64(v47, 1).u64[0];
  v64 = 0.0;
  if (*(self + 1002) == 1)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v51 = v50;
    if ([*(encoder + 80) _pointsCount])
    {
      [*(encoder + 80) timestamp];
    }

    else
    {
      v53 = *(*(encoder + 96) + 80);
      if (*(*(encoder + 96) + 88) == v53)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = *v53;
      }
    }

    v54 = v51 - v52;
    v64 = v54;
  }

  [v7 setVertexBytes:&v58 length:128 atIndex:1];
  [v7 setFragmentBytes:&v58 length:128 atIndex:0];
}

- (uint64_t)renderParticleRenderCache:(void *)cache renderEncoder:(void *)encoder computeEncoder:(id *)computeEncoder animatingStroke:(int)stroke secondaryParticles:
{
  v58 = *MEMORY[0x1E69E9840];
  v10 = x1_0;
  cacheCopy = cache;
  encoderCopy = encoder;
  v42 = v10;
  v13 = [computeEncoder[10] ink];
  version = [v13 version];

  v15 = [computeEncoder[10] ink];
  behavior = [v15 behavior];
  if (stroke)
  {
    [behavior secondaryParticleDescriptor];
  }

  else
  {
    [behavior particleDescriptor];
  }
  v17 = ;

  v43 = v17;
  maskTextureName = [v17 maskTextureName];
  v19 = maskTextureName != 0;

  v20 = [(PKMetalResourceHandler *)*(self + 192) particleShaderKernelPipelineStateWithVariableSpacing:v19 particleMasks:?];
  [encoderCopy setComputePipelineState:v20];
  if (stroke)
  {
    [(PKMetalParticleRenderCache *)v10 secondaryBuffers];
  }

  else
  {
    [(PKMetalSDFPenRenderCache *)v10 buffers];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  obj = v54 = 0u;
  v21 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  computeEncoderCopy = computeEncoder;
  v22 = 0;
  if (v21)
  {
    v45 = *v54;
    do
    {
      v48 = v21;
      for (i = 0; i != v48; ++i)
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v53 + 1) + 8 * i);
        v52 = 0;
        if (v24)
        {
          v25 = 24 * v24[5];
        }

        else
        {
          v25 = 0;
        }

        v26 = *(self + 8);
        if (v26)
        {
          v26 = v26[7];
        }

        v27 = *(self + 192);
        v28 = v26;
        v29 = [(PKMetalResourceHandler *)v27 newGPUBufferWithLength:v25 outOffset:&v52 commandBuffer:v28];

        threadExecutionWidth = [v20 threadExecutionWidth];
        if (v24)
        {
          v31 = v24[7];
        }

        else
        {
          v31 = 0.0;
        }

        [encoderCopy setComputePipelineState:v20];
        uniformsBuffer = [(PKMetalSDFPenRenderCacheBuffer *)v24 uniformsBuffer];
        if (v24)
        {
          v33 = v24[3];
        }

        else
        {
          v33 = 0;
        }

        [encoderCopy setBuffer:uniformsBuffer offset:v33 atIndex:0];

        strokePointBuffer = [(PKMetalSDFPenRenderCacheBuffer *)v24 strokePointBuffer];
        if (v24)
        {
          v35 = v24[4];
        }

        else
        {
          v35 = 0;
        }

        [encoderCopy setBuffer:strokePointBuffer offset:v35 atIndex:1];

        [encoderCopy setBuffer:v29 offset:v52 atIndex:2];
        [encoderCopy setBuffer:*(self + 704) offset:0 atIndex:3];
        *&v49.a = vcvtpd_u64_f64(v31 / threadExecutionWidth);
        *&v49.b = vdupq_n_s64(1uLL);
        v50 = threadExecutionWidth;
        v51 = *&v49.b;
        [encoderCopy dispatchThreadgroups:&v49 threadsPerThreadgroup:&v50];
        [(PKMetalRenderer *)self setupRenderEncoder:cacheCopy forParticleStroke:computeEncoderCopy secondaryParticles:stroke];
        [cacheCopy setVertexBuffer:v29 offset:v52 atIndex:0];
        if (v24)
        {
          v36 = v24[5];
          v37 = ((3 * v36) >> 1) & 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = 0;
          v36 = 0;
        }

        v49.a = 0.0;
        v38 = [(PKMetalResourceHandler *)*(self + 192) indexBufferForNumVertices:v36 outIndexType:&v49];
        [cacheCopy drawIndexedPrimitives:3 indexCount:v37 indexType:*&v49.a indexBuffer:v38 indexBufferOffset:0];
        if (v24)
        {
          v39 = v24[5];
        }

        else
        {
          v39 = 0;
        }

        v22 += v39;
      }

      v21 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v21);
  }

  [computeEncoderCopy[10] _bounds];
  v40 = *(self + 288);
  *&v49.a = *(self + 272);
  *&v49.c = v40;
  *&v49.tx = *(self + 304);

  return v22;
}

- (uint64_t)renderSDFPenStroke:(uint64_t)stroke animatingStroke:(uint64_t)animatingStroke renderEncoder:(void *)encoder
{
  encoderCopy = encoder;
  if (*(animatingStroke + 336) == 1 && ([*(animatingStroke + 344) buffers], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = 1;
    v13 = [(PKMetalRenderer *)self renderStrokeRenderCache:encoderCopy renderEncoder:animatingStroke animatingStroke:1 indexed:?];
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = *(animatingStroke + 328);
  if (v14 || 0xAAAAAAAAAAAAAAABLL * ((stroke - a2) >> 5) >= 2)
  {
    if (encoderCopy)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    v83 = encoderCopy;
    if ((v15 & 1) == 0)
    {
      [PKMetalRenderer setupRenderEncoder:self forSDFPenStroke:encoderCopy alphaFactor:animatingStroke];
    }

    v87 = [(PKMetalRenderer *)self antialiasingThresholdForStroke:?];
    v16 = *(animatingStroke + 48);
    v17 = v16;
    if (!v16)
    {
      v17 = *(animatingStroke + 32);
    }

    if (v17[1] == *v17)
    {
      std::vector<PKMetalSDFStrokeVertex>::resize(v17);
      v16 = *(animatingStroke + 48);
    }

    selfCopy = self;
    if (!v16)
    {
      v16 = *(animatingStroke + 32);
    }

    v18 = *v17;
    *&v82[16] = *(MEMORY[0x1E695F050] + 16);
    *&v82[24] = *(MEMORY[0x1E695F050] + 24);
    *v82 = *MEMORY[0x1E695F050];
    *&v82[8] = *(MEMORY[0x1E695F050] + 8);
    if (stroke != a2)
    {
      v19 = a2 + 96;
      if (a2 + 96 != stroke)
      {
        v86 = 0x8E38E38E38E38E39 * ((v16[1] - *v16) >> 2);
        v20 = stroke - a2 - 96;
        v21 = a2 + 56;
        v22 = COERCE_UNSIGNED_INT(-1.0);
        v23 = a2;
        do
        {
          v24 = vsubq_f64(*(v19 + 8), *(v21 - 48));
          v25 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v24, v24).f64[1]) + v24.f64[0] * v24.f64[0]);
          if (v25 >= 0.00000011920929)
          {
            v88 = v24;
            v89 = *(v21 - 48);
            *&v90 = v25;
            v91 = *(v19 + 8);
            v26 = *v21;
            v27 = fmod(*v21, 6.28318531);
            if (v26 <= 6.28318531 && v26 >= 0.0)
            {
              v27 = v26;
            }

            if (v27 < 0.0)
            {
              v27 = v27 + 6.28318531;
            }

            if (v27 == 0.0)
            {
              v29 = 0.0;
            }

            else
            {
              v29 = v27;
            }

            v30 = *(v19 + 56);
            v31 = fmod(v30, 6.28318531);
            if (v30 <= 6.28318531 && v30 >= 0.0)
            {
              v31 = v30;
            }

            if (v31 < 0.0)
            {
              v31 = v31 + 6.28318531;
            }

            if (v31 == 0.0)
            {
              v33 = 0.0;
            }

            else
            {
              v33 = v31;
            }

            v34 = *(v21 - 32);
            v35 = *(v19 + 24);
            if (v14 + 12 >= v86)
            {
              v85 = v13;
              strokeCopy = stroke;
              v37 = *(animatingStroke + 88);
              if (v37)
              {
                [PKMetalRenderer clipRectForVertices:v18 numVertices:v14 vertexSize:36];
                [(PKMetalRenderer *)selfCopy addBufferForRenderCache:v37 strokeVertices:v18 numVertices:v14 vertexSize:0x24 bounds:0 secondaryParticles:0 renderEncoder:v38, v39, v40, v41];
                stroke = strokeCopy;
                v42 = v85;
              }

              else if (v83)
              {
                v43 = *(animatingStroke + 344);
                if (v43)
                {
                  [PKMetalRenderer clipRectForVertices:v18 numVertices:v14 vertexSize:36];
                  [(PKMetalRenderer *)selfCopy addBufferForRenderCache:v43 strokeVertices:v18 numVertices:v14 vertexSize:0x24 bounds:0 secondaryParticles:v83 renderEncoder:v44, v45, v46, v47];
                }

                else
                {
                  [(PKMetalRenderer *)selfCopy renderStrokeVertices:v18 numVertices:v14 vertexSize:36 numIndices:((3 * v14) >> 1) & 0x3FFFFFFFFFFFFFFFLL renderEncoder:v83];
                }

                stroke = strokeCopy;
                v42 = v85;
                v92.origin.x = [PKMetalRenderer dirtyClipRectForAnimatingStrokeVertices:animatingStroke newSize:v14];
                v92.origin.y = v48;
                v92.size.width = v49;
                v92.size.height = v50;
                *v82 = CGRectUnion(*v82, v92);
              }

              else
              {
                stroke = strokeCopy;
                v42 = v85;
              }

              v13 = v14 + v42;
              *(animatingStroke + 328) = 0;
              v14 = 0;
            }

            v51 = vdivq_f64(v88, vdupq_lane_s64(v90, 0));
            _S2 = v29;
            _S16 = v33;
            _D4 = v87 + v34 + -2.0;
            _D3 = v87 + v35 + -2.0;
            *&v56.f64[0] = vdupq_laneq_s64(v51, 1).u64[0];
            v56.f64[1] = -v51.f64[0];
            v57 = vsubq_f64(v56, v51);
            v51.f64[0] = vaddvq_f64(v51);
            v58 = v89.f64[0] - v51.f64[0] * _D4;
            v59 = v91.f64[0] + v51.f64[0] * _D3;
            *&v56.f64[0] = vcvt_f32_f64(v89);
            v60 = vcvt_f32_f64(v91);
            __asm
            {
              FCVT            H6, D4
              FCVT            H1, D3
              FCVT            H7, S2
              FCVT            H2, S16
            }

            _D16 = *(v21 + 24);
            __asm { FCVT            H16, D16 }

            _D23 = *(v19 + 80);
            *&v70 = v89.f64[0] + _D4 * v57.f64[0];
            _S19 = v89.f64[1] + vmuld_lane_f64(_D4, v57, 1);
            *(&v70 + 1) = _S19;
            __asm { FCVT            H19, D23 }

            v72 = &v18[9 * v14];
            *v72 = v70;
            *(v72 + 1) = *&v56.f64[0];
            *(v72 + 2) = v60;
            *(v72 + 12) = _H6;
            *(v72 + 13) = _H1;
            *(v72 + 14) = _H7;
            *(v72 + 15) = _H2;
            *(v72 + 16) = _D16;
            *(v72 + 17) = LOWORD(_S19);
            *&v70 = v58;
            *&v58 = v89.f64[1] - _D4 * v57.f64[0];
            HIDWORD(v70) = LODWORD(v58);
            *(v72 + 9) = v70;
            *(v72 + 11) = v56.f64[0];
            *(v72 + 13) = v60;
            *(v72 + 30) = _H6;
            *(v72 + 31) = _H1;
            *(v72 + 32) = _H7;
            *(v72 + 33) = _H2;
            *(v72 + 34) = _D16;
            *(v72 + 35) = LOWORD(_S19);
            *&v70 = v59;
            *(v72 + 10) = *&v56.f64[0];
            *(v72 + 11) = v60;
            *(v72 + 48) = _H6;
            *(v72 + 49) = _H1;
            *(v72 + 50) = _H7;
            *(v72 + 51) = _H2;
            *(v72 + 52) = _D16;
            *(v72 + 53) = LOWORD(_S19);
            v73 = vmulq_n_f64(v57, _D3);
            v74 = v91.f64[1] + v73.f64[0];
            *(&v70 + 1) = v74;
            *(v72 + 9) = v70;
            *(v72 + 27) = vcvt_f32_f64(vsubq_f64(v91, v73));
            *(v72 + 29) = v56.f64[0];
            *(v72 + 31) = v60;
            *(v72 + 66) = _H6;
            *(v72 + 67) = _H1;
            *(v72 + 68) = _H7;
            *(v72 + 69) = _H2;
            *(v72 + 70) = _D16;
            *(v72 + 71) = LOWORD(_S19);
            if (a2 + 192 == stroke && (_D4 - _D3) / *&v90 < 1.0)
            {
              _D4 = *(v19 + 80);
              *&v76 = v91.f64[0] - _D3;
              *&v77 = v91.f64[1] - _D3;
              v78 = &v18[9 * v14 + 36];
              *v78 = __PAIR64__(v77, v76);
              v78[1] = v60;
              v78[2] = v60;
              __asm { FCVT            H4, D4 }

              v78[3].i16[0] = _H1;
              v78[3].i16[1] = v22;
              v78[3].i16[2] = _H2;
              v78[3].i16[3] = v22;
              v78[4].i16[0] = _D4;
              v78[4].i16[1] = _D4;
              v79 = v91.f64[1] + _D3;
              *(&v76 + 1) = v79;
              *(v72 + 45) = v76;
              *(v72 + 47) = v60;
              *(v72 + 49) = v60;
              *(v72 + 102) = _H1;
              *(v72 + 103) = v22;
              *(v72 + 104) = _H2;
              *(v72 + 105) = v22;
              *(v72 + 106) = _D4;
              *&v80 = v91.f64[0] + _D3;
              *(v72 + 107) = _D4;
              *(v72 + 27) = __PAIR64__(v77, v80);
              *(v72 + 28) = v60;
              *(v72 + 29) = v60;
              *(v72 + 120) = _H1;
              *(v72 + 121) = v22;
              *(v72 + 122) = _H2;
              *(v72 + 123) = v22;
              *(v72 + 124) = _D4;
              *(v72 + 125) = _D4;
              *(&v80 + 1) = v79;
              v14 += 8;
              *(v72 + 63) = v80;
              *(v72 + 65) = v60;
              *(v72 + 67) = v60;
              *(v72 + 138) = _H1;
              *(v72 + 139) = v22;
              *(v72 + 140) = _H2;
              *(v72 + 141) = v22;
              *(v72 + 142) = _D4;
              *(v72 + 143) = _D4;
            }

            else
            {
              v14 += 4;
            }
          }

          a2 = v23 + 96;
          v19 = v23 + 192;
          v21 += 96;
          v23 += 96;
          v20 -= 96;
        }

        while (v20);
      }
    }

    encoderCopy = v83;
    v13 = [(PKMetalRenderer *)selfCopy renderVerticies:v18 size:v14 numRenderedVertices:v13 vertexSize:0x24 numIndices:((3 * v14) >> 1) & 0x3FFFFFFFFFFFFFFFLL localClipRect:animatingStroke animatingStroke:0 secondaryParticles:*v82 renderEncoder:*&v82[8], *&v82[16], *&v82[24], v83];
  }

  return v13;
}

- (uint64_t)renderPenStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke renderEncoder:(void *)encoder
{
  v144[0] = a2;
  v144[1] = stroke;
  encoderCopy = encoder;
  if (*(animatingStroke + 336) == 1 && ([*(animatingStroke + 344) buffers], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v11))
  {
    v12 = 1;
    encoderCopy = [(PKMetalRenderer *)self renderStrokeRenderCache:encoderCopy renderEncoder:animatingStroke animatingStroke:1 indexed:?];
  }

  else
  {
    encoderCopy = 0;
    v12 = 0;
  }

  v14 = *(animatingStroke + 328);
  v143 = v14;
  if (v14 || 0xAAAAAAAAAAAAAAABLL * ((stroke - a2) >> 5) >= 2)
  {
    if (encoderCopy)
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      [(PKMetalRenderer *)self setupRenderEncoder:encoderCopy forPenStroke:animatingStroke alphaFactor:1.0];
    }

    v141 = 0u;
    v142 = 0u;
    v140 = 0u;
    v16 = *(animatingStroke + 80);
    if (v16)
    {
      [v16 _inkTransform];
      v17 = v140.f64[1];
      v18 = v140.f64[0];
      v19 = v141.f64[1];
      v20 = v141.f64[0];
      v21 = v142.f64[1];
      v22 = v142.f64[0];
      v23 = *(animatingStroke + 80);
    }

    else
    {
      v23 = 0;
      v21 = 0.0;
      v22 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
    }

    *&v138.a = v140;
    *&v138.c = v141;
    *&v138.tx = v142;
    memset(&v139, 0, sizeof(v139));
    CGAffineTransformInvert(&v139, &v138);
    if ([v23 _pointsCount])
    {
      [*(animatingStroke + 80) timestamp];
      v124 = v24;
    }

    else
    {
      v25 = *(*(animatingStroke + 96) + 80);
      if (*(*(animatingStroke + 96) + 88) == v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = *v25;
      }

      v124 = v26;
    }

    v27 = *(animatingStroke + 16);
    if (!v27)
    {
      v27 = *animatingStroke;
    }

    v28 = *v27;
    y = *(MEMORY[0x1E695F050] + 8);
    x = *MEMORY[0x1E695F050];
    height = *(MEMORY[0x1E695F050] + 24);
    width = *(MEMORY[0x1E695F050] + 16);
    if (stroke != a2)
    {
      v29 = *(v27 + 8);
      selfCopy = self;
      v30 = [(PKMetalRenderer *)self fadeOutLimitFromPoints:v144 animatingStroke:animatingStroke];
      v37 = v30;
      v38 = (v30 + 96);
      if (stroke != v30 + 96)
      {
        v118 = encoderCopy;
        v132 = v21 + v19 * 0.0 + v17;
        v133 = v22 + v20 * 0.0 + v18;
        v39 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3);
        v130 = v21 + v19 + v17 * 0.0;
        v131 = v22 + v20 + v18 * 0.0;
        v40 = stroke - v30 - 96;
        v41 = v30;
        do
        {
          v42 = v41[1];
          v43 = v41[2];
          v44 = v38[1];
          v45 = v38[2];
          v46 = v139.ty + v43 * v139.d + v139.b * v42;
          v47 = v139.tx + v45 * v139.c + v139.a * v44 - (v139.tx + v43 * v139.c + v139.a * v42);
          v48 = v139.ty + v45 * v139.d + v139.b * v44 - v46;
          v49 = sqrt(v48 * v48 + v47 * v47);
          if (v49 >= 0.00000011920929)
          {
            v125 = v139.tx + v43 * v139.c + v139.a * v42;
            v126 = v139.ty + v45 * v139.d + v139.b * v44;
            v127 = v139.tx + v45 * v139.c + v139.a * v44;
            v128 = v38[2];
            v129 = v38[1];
            v50 = *v41;
            v51 = v41[3];
            v134 = v41[9];
            v136 = v38[9];
            v137 = v38[3];
            v52 = v143;
            if (v143 + 12 >= v39)
            {
              v53 = *(animatingStroke + 88);
              if (v53)
              {
                [PKMetalRenderer clipRectForVertices:v28 numVertices:v143 vertexSize:24];
                [(PKMetalRenderer *)selfCopy addBufferForRenderCache:v53 strokeVertices:v28 numVertices:v52 vertexSize:0x18 bounds:0 secondaryParticles:0 renderEncoder:v54, v55, v56, v57];
              }

              else if (v118)
              {
                v58 = *(animatingStroke + 344);
                if (v58)
                {
                  [PKMetalRenderer clipRectForVertices:v28 numVertices:v143 vertexSize:24];
                  [(PKMetalRenderer *)selfCopy addBufferForRenderCache:v58 strokeVertices:v28 numVertices:v52 vertexSize:0x18 bounds:0 secondaryParticles:v118 renderEncoder:v59, v60, v61, v62];
                }

                else
                {
                  [(PKMetalRenderer *)selfCopy renderStrokeVertices:v28 numVertices:v143 vertexSize:24 numIndices:((3 * v143) >> 1) & 0x3FFFFFFFFFFFFFFFLL renderEncoder:v118];
                }

                v147.origin.x = [PKMetalRenderer dirtyClipRectForAnimatingStrokeVertices:animatingStroke newSize:v52];
                v147.origin.y = v63;
                v147.size.width = v64;
                v147.size.height = v65;
                v145.origin.y = y;
                v145.origin.x = x;
                v145.size.height = height;
                v145.size.width = width;
                v146 = CGRectUnion(v145, v147);
                y = v146.origin.y;
                x = v146.origin.x;
                height = v146.size.height;
                width = v146.size.width;
              }

              encoderCopy += v52;
              v143 = 0;
              *(animatingStroke + 328) = 0;
            }

            v66 = v50 - v124;
            *&_S11 = v134;
            v135 = v66;
            v68 = (v51 - v137) / v49;
            if (v68 > -1.0 && v68 < 1.0)
            {
              v70 = asin((v51 - v137) / v49) + -1.57079633;
              if (v70 == 0.0)
              {
                sinval = 0.0;
                cosval = 1.0;
              }

              else
              {
                v73 = __sincos_stret(v70);
                cosval = v73.__cosval;
                sinval = v73.__sinval;
              }

              v74 = -(v47 / v49);
              v75 = v48 / v49 * (v48 / v49 * cosval - v47 / v49 * sinval) + v47 / v49 * (v47 / v49 * cosval + v48 / v49 * sinval);
              v76 = v47 / v49 * v75;
              v77 = v48 / v49 * v75;
              v78 = v125 + v51 * v76;
              v79 = v46 + v51 * v77;
              _D16 = v48 / v49 * v51;
              v81 = v51 * v74;
              _D18 = _D16 + v78;
              _D19 = v51 * v74 + v79;
              _D20 = v78 - _D16;
              v85 = v79 - v51 * v74;
              v86 = v127 + v137 * v76;
              v87 = v126 + v137 * v77;
              _D7 = v48 / v49 * v137;
              _D22 = v137 * v74;
              _D3 = _D7 + v86;
              _D4 = _D22 + v87;
              _D0 = v86 - _D7;
              v93 = v87 - _D22;
              v94 = v47 / v49 * (v51 * v75);
              v95 = v48 / v49 * (v51 * v75);
              _D25 = v94 - _D16;
              _D26 = v95 - v81;
              v98 = _D16 + v94;
              _D17 = v81 + v95;
              v100 = v137 * v75;
              _D2 = v47 / v49 * v100;
              v102 = v48 / v49 * v100;
              v103 = _D2 - _D7;
              v104 = v102 - _D22;
              v105 = _D7 + _D2;
              v106 = _D22 + v102;
              *&_D2 = _D25;
              *&_D7 = _D26;
              *&_D16 = v51;
              *&_D22 = v135;
              __asm
              {
                FCVT            H25, S2
                FCVT            H26, S7
                FCVT            H28, S16
                FCVT            H2, S22
                FCVT            H22, S11
              }

              v111 = v143;
              v112 = &v28[6 * v143];
              v113 = v140;
              v114 = v141;
              v115 = v142;
              *v112 = vcvt_f32_f64(vaddq_f64(v142, vmlaq_n_f64(vmulq_n_f64(v141, _D19), v140, _D18)));
              *(v112 + 4) = LOWORD(_D25);
              *(v112 + 5) = LOWORD(_D26);
              *(v112 + 6) = _H28;
              *(v112 + 7) = LOWORD(_D2);
              *(v112 + 8) = LOWORD(_D22);
              *(v112 + 18) = 0.0078125;
              *&_D18 = v98;
              *&_D17 = _D17;
              __asm
              {
                FCVT            H18, S18
                FCVT            H17, S17
              }

              *(v112 + 3) = vcvt_f32_f64(vaddq_f64(v115, vmlaq_n_f64(vmulq_n_f64(v114, v85), v113, _D20)));
              *(v112 + 16) = LOWORD(_D18);
              *(v112 + 17) = LOWORD(_D17);
              *(v112 + 18) = _H28;
              *(v112 + 19) = LOWORD(_D2);
              *(v112 + 20) = LOWORD(_D22);
              *(v112 + 42) = 0.0078125;
              *&_D17 = v103;
              *&_D18 = v104;
              *&_D19 = v137;
              *&_D20 = v136;
              __asm
              {
                FCVT            H17, S17
                FCVT            H18, S18
                FCVT            H19, S19
                FCVT            H20, S20
              }

              *(v112 + 6) = vcvt_f32_f64(vaddq_f64(v115, vmlaq_n_f64(vmulq_n_f64(v114, _D4), v113, _D3)));
              *(v112 + 28) = LOWORD(_D17);
              *(v112 + 29) = LOWORD(_D18);
              *(v112 + 30) = LOWORD(_D19);
              *(v112 + 31) = LOWORD(_D2);
              *(v112 + 32) = LOWORD(_D20);
              *(v112 + 66) = 0.0078125;
              *&_D3 = v105;
              *&_D4 = v106;
              __asm { FCVT            H3, S3 }

              v143 = v111 + 4;
              *(v112 + 9) = vcvt_f32_f64(vaddq_f64(v115, vmlaq_n_f64(vmulq_n_f64(v114, v93), v113, _D0)));
              *(v112 + 40) = LOWORD(_D3);
              __asm { FCVT            H0, S4 }

              *(v112 + 41) = LOWORD(_D0);
              *(v112 + 42) = LOWORD(_D19);
              *(v112 + 43) = LOWORD(_D2);
              *(v112 + 44) = LOWORD(_D20);
              *(v112 + 90) = 0.0078125;
            }

            if (stroke == v37 + 24 && v68 < 1.0)
            {
              *&v116 = v136;
            }
          }

          v37 = v41 + 12;
          v38 = v41 + 24;
          v41 += 12;
          v40 -= 96;
        }

        while (v40);
        v14 = v143;
        encoderCopy = v118;
      }

      self = selfCopy;
    }

    encoderCopy = [(PKMetalRenderer *)self renderVerticies:v28 size:v14 numRenderedVertices:encoderCopy vertexSize:0x18 numIndices:((3 * v14) >> 1) & 0x3FFFFFFFFFFFFFFFLL localClipRect:animatingStroke animatingStroke:0 secondaryParticles:x renderEncoder:y, width, height, encoderCopy];
  }

  return encoderCopy;
}

- (uint64_t)renderParticleStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke starts:(int)starts ends:(char)ends secondaryParticles:(int)particles renderEncoder:(void *)encoder
{
  v247[0] = a2;
  v247[1] = stroke;
  encoderCopy = encoder;
  if (*(animatingStroke + 336) != 1)
  {
    encoderCopy = 0;
    goto LABEL_6;
  }

  buffers = [*(animatingStroke + 344) buffers];
  encoderCopy = [buffers count];

  if (!encoderCopy)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_9;
  }

  [(PKMetalRenderer *)self setupRenderEncoder:encoderCopy forParticleStroke:animatingStroke secondaryParticles:particles];
  v15 = *(animatingStroke + 344);
  if (particles)
  {
    [v15 secondaryBuffers];
  }

  else
  {
    [v15 buffers];
  }
  v17 = ;
  encoderCopy = [(PKMetalRenderer *)self renderStrokeRenderCacheBuffers:v17 renderEncoder:encoderCopy animatingStroke:animatingStroke indexed:1];

  v16 = 1;
LABEL_9:
  v18 = *(animatingStroke + 328);
  if (!v18 && 0xAAAAAAAAAAAAAAABLL * ((stroke - a2) >> 5) < 2)
  {
    goto LABEL_107;
  }

  if (!encoderCopy)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    [(PKMetalRenderer *)self setupRenderEncoder:encoderCopy forParticleStroke:animatingStroke secondaryParticles:particles];
  }

  v194 = [*(animatingStroke + 80) ink];
  v19 = 248;
  if (particles)
  {
    v19 = 256;
  }

  v20 = *(animatingStroke + v19);
  v199 = [(PKMetalRenderer *)self alphaForStroke:?];
  v21 = *(animatingStroke + 16);
  if (!v21)
  {
    v21 = *animatingStroke;
  }

  v22 = *v21;
  *v204 = *MEMORY[0x1E695F050];
  *&v204[8] = *(MEMORY[0x1E695F050] + 8);
  *&v204[16] = *(MEMORY[0x1E695F050] + 16);
  *&v204[24] = *(MEMORY[0x1E695F050] + 24);
  v242 = *(v21 + 8);
  behavior = [v194 behavior];
  if (particles)
  {
    [behavior secondaryParticleDescriptor];
  }

  else
  {
    [behavior particleDescriptor];
  }
  v189 = ;

  particleCount = [v189 particleCount];
  v25 = *(animatingStroke + 168);
  if (v25 <= *(animatingStroke + 160))
  {
    v25 = *(animatingStroke + 160);
  }

  v188 = encoderCopy;
  v244 = a2;
  if (v25 < 1)
  {
    [v189 particleSpacingForRadius:*(a2 + 24)];
  }

  else
  {
    [v189 particleSpacingForRadius:*(*(*(animatingStroke + 96) + 80) + 24)];
  }

  v190 = v26;
  endsCopy = ends;
  v28 = 268;
  if (particles)
  {
    v28 = 272;
  }

  animatingStrokeCopy = animatingStroke;
  v30 = *(animatingStroke + v28);
  randomNumberArray = [(PKMetalResourceHandler *)*(self + 192) randomNumberArray];
  [v189 particleSpacing];
  v224 = v32;
  [v189 dynamicStep];
  v211 = v33;
  particleRotation = [v189 particleRotation];
  maskTextureName = [v189 maskTextureName];

  [v189 maskScale];
  v35 = v34;
  [v194 weight];
  v37 = v36;
  [v189 maskScaleConstant];
  v39 = v38;
  [v189 maskMovement];
  v240 = v35;
  v40 = *MEMORY[0x1E695EFF8];
  v41 = *(MEMORY[0x1E695EFF8] + 8);
  v43 = v42;
  if ([v189 maskInitialRandomOffset])
  {
    v44 = *(animatingStrokeCopy + 264);
    v40 = *(randomNumberArray + 4 * (v44 & 0xFFF));
    v41 = *(randomNumberArray + 4 * ((v44 + 1) & 0xFFF));
  }

  [*(animatingStrokeCopy + 80) _anchorPointForTexture];
  v238 = v45;
  v47 = v46;
  v48 = *(animatingStrokeCopy + 80);
  if (particles)
  {
    v49 = v189;
    [v48 _secondaryParticleOffset];
    if (v50 == 0.0)
    {
      goto LABEL_37;
    }

    v51 = 80;
  }

  else
  {
    v49 = v189;
    [v48 _particleOffset];
    if (v50 == 0.0)
    {
      goto LABEL_37;
    }

    v51 = 24;
  }

  v52 = v190 * *(v244 + v51);
  v30 += 3 * fmax(ceil(v50 / v52), 0.0);
  v20 = v20 + v52 - fmod(v50, v52);
LABEL_37:
  [v49 particleSize];
  v205 = v54;
  v206 = v53;
  if (0xAAAAAAAAAAAAAAABLL * ((stroke - v244) >> 5) >= 2)
  {
    v55 = *(v244 + 24);
    v56 = [(PKMetalRenderer *)self fadeOutLimitFromPoints:v247 animatingStroke:animatingStrokeCopy];
    if (stroke != v56 + 96)
    {
      v209 = 0xAAAAAAAAAAAAAAABLL * ((v242 - v22) >> 3);
      v200 = 1.0 / (v39 + v240 * v37);
      v203 = v200 * v43;
      v201 = v41 - v200 * v43 * v47;
      v202 = v40 - v200 * v43 * v238;
      v208 = particleCount;
      v192 = endsCopy ^ 1;
      v58 = 4;
      if (starts)
      {
        v58 = 8;
      }

      v59 = v56 + 96;
      v191 = v58;
      v232 = -(v55 * v205);
      v233 = v206 * v55;
      v229 = v206 * v55;
      v230 = v232;
      v234 = -(v55 * v206);
      v227 = v205 * v55;
      v228 = v234;
      v231 = v205 * v55;
      v196 = v56;
      v60 = v56;
      while (1)
      {
        v241 = *(v60 + 16);
        v243 = *(v60 + 8);
        *&v57 = *(v60 + 32);
        v239 = *(v60 + 24);
        v245 = v57;
        v61 = *(v60 + 40);
        v62 = *(v60 + 72);
        v237 = *(v60 + 80);
        v63 = *(v60 + 88);
        v65 = *(v59 + 8);
        v64 = *(v59 + 16);
        v66 = *(v59 + 24);
        v222 = *(v59 + 32);
        v225 = *(v59 + 56);
        v226 = *(v60 + 56);
        v67 = *(v59 + 80);
        v216 = *(v59 + 40);
        v218 = *(v59 + 72);
        v193 = v59;
        v213 = *(v59 + 88);
        if ([v194 version] >= 3)
        {
          v68 = 1.0;
          v69 = v237;
          if (v237 < 1.0)
          {
            v69 = 1.0;
          }

          if (v239 >= 1.0)
          {
            v68 = v239;
          }

          if (!particles)
          {
            v69 = v68;
          }

          v224 = v190 * v69;
        }

        v195 = v60;
        v70 = v65 - v243;
        v71 = v64 - v241;
        v72 = sqrt(v71 * v71 + v70 * v70);
        if (v72 > v20)
        {
          break;
        }

        v96 = v20;
LABEL_91:
        v173 = v192;
        if (stroke != v196 + 192)
        {
          v173 = 1;
        }

        if ((v173 & 1) == 0 && v18 >= v191)
        {
          v174 = &v22[6 * v18];
          v175 = (*(v193 + 16) - *(v195 + 16)) * (*(v174 - 5) - *(v174 - 11)) + (*(v174 - 6) - *(v174 - 12)) * (*(v193 + 8) - *(v195 + 8));
          v176 = v175 < 0.0;
          v177 = 2.5;
          if (v175 >= 0.0)
          {
            v178 = 2.5;
          }

          else
          {
            v178 = 0.5;
          }

          if (!v176)
          {
            v177 = 0.5;
          }

          v179 = &v22[6 * v18 - 9];
          v180 = 1;
          do
          {
            v181 = v180;
            _H2 = *(v179 + 12);
            __asm { FCVT            D2, H2 }

            _D2 = v178 * _D2;
            __asm { FCVT            H2, D2 }

            *(v179 + 12) = LOWORD(_D2);
            LOWORD(_D2) = *v179;
            __asm { FCVT            D2, H2 }

            _D2 = v177 * _D2;
            __asm { FCVT            H2, D2 }

            *v179 = LOWORD(_D2);
            v179 -= 12;
            v180 = 0;
          }

          while ((v181 & 1) != 0);
        }

        v20 = v96 - v72;
        v59 = v195 + 192;
        v196 = v195 + 96;
        v60 = v195 + 96;
        if (stroke == v195 + 192)
        {
          goto LABEL_103;
        }
      }

      v235 = v71 / v72;
      v236 = v70 / v72;
      v220 = (v67 - v237) / v72;
      v221 = (v66 - v239) / v72;
      v73 = v61;
      v74 = v62;
      v217 = (v216 - v73) / v72;
      v219 = (v218 - v62) / v72;
      v75 = (v222 - *&v245) / v72;
      startsCopy = starts;
      v223 = v72;
      v214 = (v213 - v63) / v72;
      v215 = v75;
      while (1)
      {
        if (v18 + 12 >= v209)
        {
          if (encoderCopy)
          {
            v79 = *(animatingStrokeCopy + 344);
            if (v79)
            {
              [PKMetalRenderer clipRectForVertices:v22 numVertices:v18 vertexSize:24];
              [(PKMetalRenderer *)self addBufferForRenderCache:v79 strokeVertices:v22 numVertices:v18 vertexSize:0x18 bounds:particles secondaryParticles:encoderCopy renderEncoder:v80, v81, v82, v83];
            }

            else
            {
              [(PKMetalRenderer *)self renderStrokeVertices:v22 numVertices:v18 vertexSize:24 numIndices:6 * (v18 >> 2) renderEncoder:encoderCopy];
            }

            v248.origin.x = [PKMetalRenderer dirtyClipRectForAnimatingStrokeVertices:animatingStrokeCopy newSize:v18];
            v248.origin.y = v89;
            v248.size.width = v90;
            v248.size.height = v91;
            *v204 = CGRectUnion(*v204, v248);
          }

          else
          {
            v84 = *(animatingStrokeCopy + 88);
            if (v84)
            {
              [PKMetalRenderer clipRectForVertices:v22 numVertices:v18 vertexSize:24];
              [(PKMetalRenderer *)self addBufferForRenderCache:v84 strokeVertices:v22 numVertices:v18 vertexSize:0x18 bounds:particles secondaryParticles:0 renderEncoder:v85, v86, v87, v88];
            }
          }

          v77 = v74;
          v78 = v73;
          v18 = 0;
          *(animatingStrokeCopy + 328) = 0;
        }

        else
        {
          v77 = v74;
          v78 = v73;
        }

        v72 = v72 - v20;
        v92 = v239 + v221 * v20;
        v93 = v237 + v220 * v20;
        DKDMixAnglesInRadians(v226, v225, (v223 - v72) / v223);
        *(&v95 + 1) = *(&v245 + 1);
        *&v95 = *&v245 + v215 * v20;
        v245 = v95;
        v237 = v93;
        v239 = v92;
        if (particles)
        {
          v92 = v93;
        }

        v96 = v211 > 0.0 ? v224 * v92 / v211 : v224;
        v97 = *(randomNumberArray + 4 * (v30 & 0xFFF));
        if (particleRotation == 2)
        {
          break;
        }

        CGAffineTransformMakeRotation(&v246, v94);
        a = v246.a;
        b = v246.b;
        c = v246.c;
        d = v246.d;
        tx = v246.tx;
        ty = v246.ty;
        if ((particleRotation - 1) <= 1)
        {
          goto LABEL_70;
        }

LABEL_71:
        v73 = v78 + v217 * v20;
        v241 = v235 * v20 + v241;
        v243 = v236 * v20 + v243;
        v107 = v243;
        v108 = v241;
        if (v73 > 0.0)
        {
          v109 = fmax(fmin((*(randomNumberArray + 4 * ((v30 + 2) & 0xFFF)) * 100.0) / 200.0, 1.0), 0.0);
          v110 = (v109 * (v109 * (v109 * -2.0)) + v109 * 3.0 * v109) * (v73 + v73) + 0.0;
          v111 = (ty + d * 0.0 - b) * v110;
          v107 = v243 + (tx + c * 0.0 - a) * v110;
          v108 = v241 + v111;
        }

        v74 = v77 + v219 * v20;
        v112 = 1.0;
        v113 = 1.0;
        if ((particles & 1) == 0)
        {
          v114 = 2.5;
          if ((startsCopy & 1) == 0)
          {
            v114 = 1.0;
          }

          v113 = v199 * (v114 * v74);
          v115 = 0.5;
          if ((startsCopy & 1) == 0)
          {
            v115 = 1.0;
          }

          v112 = v199 * (v115 * v74);
        }

        v63 = v63 + v214 * v20;
        v116 = (v97 * v208) % particleCount;
        _S4 = v116 / v208;
        _S2 = (v116 + 1) / v208;
        v119 = v235 * (v227 - v230) + (v228 - v234) * v236;
        _NF = v119 < 0.0;
        if (v119 >= 0.0)
        {
          v121 = v112;
        }

        else
        {
          v121 = v113;
        }

        if (_NF)
        {
          v122.f64[0] = v112;
        }

        else
        {
          v122.f64[0] = v113;
        }

        v123 = v234 + v107;
        v124 = v230 + v108;
        if (maskTextureName)
        {
          v125 = v202 + v203 * v107;
          v126 = v201 + v203 * v108;
          v127.f64[0] = v200 * v234 + v125;
          v128 = v229;
          v129 = v231;
          v130 = v123;
          v131 = v124;
          v132 = &v22[6 * v18];
          *v132 = v130;
          v132[1] = v131;
          v127.f64[1] = v200 * v230 + v126;
          v133 = v228 + v107;
          v134 = v227 + v108;
          v132[6] = v133;
          v132[7] = v134;
          *&v122.f64[1] = v245;
          _S18 = v200 * v228 + v125;
          _S19 = v200 * v227 + v126;
          __asm
          {
            FCVT            H18, S18
            FCVT            H19, S19
          }

          *(v132 + 20) = LOWORD(_S18);
          *(v132 + 21) = LOWORD(_S19);
          v140 = v233 + v107;
          v141 = v232 + v108;
          v132[12] = v140;
          v132[13] = v141;
          __asm { FCVT            H4, S4 }

          *(v132 + 5) = _H4;
          *(v132 + 29) = _H4;
          _S4 = v200 * v233 + v125;
          __asm { FCVT            H4, S4 }

          *(v132 + 32) = LOWORD(_S4);
          _S4 = v200 * v232 + v126;
          __asm { FCVT            H4, S4 }

          *(v132 + 33) = LOWORD(_S4);
          _S4 = v63;
          __asm { FCVT            H7, S4 }

          *(v132 + 4) = 0;
          v147 = vcvt_f16_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v122), v127));
          *(v132 + 3) = v147;
          *(v132 + 10) = _H7;
          _S3 = v121;
          __asm
          {
            FCVT            H2, S2
            FCVT            H3, S3
          }

          *(v132 + 16) = 0;
          *(v132 + 17) = _H2;
          *(v132 + 18) = _H3;
          *(v132 + 19) = v147.i16[1];
          v132[15] = *v147.i32;
          _H4 = v147.i16[1];
          *(v132 + 22) = _H7;
          v152 = COERCE_UNSIGNED_INT(1.0);
          *(v132 + 28) = COERCE_UNSIGNED_INT(1.0);
          *(v132 + 34) = _H7;
          _S5 = v200 * v229 + v125;
          _S16 = v200 * v231 + v126;
          __asm
          {
            FCVT            H6, S5
            FCVT            H5, S16
          }
        }

        else
        {
          v157 = v123;
          v158 = v124;
          v159 = &v22[6 * v18];
          *v159 = v157;
          v159[1] = v158;
          _S6 = v122.f64[0];
          _H5 = 0;
          *(v159 + 4) = 0;
          _S7 = *&v245;
          __asm { FCVT            H16, S4 }

          *(v159 + 5) = _H16;
          _S17 = v63;
          __asm
          {
            FCVT            H18, S6
            FCVT            H4, S7
            FCVT            H6, S17
          }

          *(v159 + 6) = _H18;
          *(v159 + 7) = _H4;
          *(v159 + 8) = _H6;
          *(v159 + 18) = 0.0078125;
          v165 = v228 + v107;
          v166 = v227 + v108;
          _S3 = v121;
          __asm
          {
            FCVT            H2, S2
            FCVT            H3, S3
          }

          v159[6] = v165;
          v159[7] = v166;
          *(v159 + 16) = 0;
          *(v159 + 17) = _H2;
          *(v159 + 18) = _H3;
          *(v159 + 19) = _H4;
          *(v159 + 20) = _H6;
          *(v159 + 42) = 0.0078125;
          v168 = v233 + v107;
          v169 = v232 + v108;
          v159[12] = v168;
          v159[13] = v169;
          _H7 = COERCE_UNSIGNED_INT(1.0);
          *(v159 + 28) = COERCE_UNSIGNED_INT(1.0);
          *(v159 + 29) = _H16;
          *(v159 + 30) = _H18;
          *(v159 + 31) = _H4;
          *(v159 + 32) = _H6;
          *(v159 + 66) = 0.0078125;
          v152 = COERCE_UNSIGNED_INT(1.0);
          v129 = v231;
          v128 = v229;
        }

        startsCopy = 0;
        LOBYTE(starts) = 0;
        v170 = &v22[6 * v18];
        v171 = v129 + v108;
        v172 = v128 + v107;
        v170[18] = v172;
        v170[19] = v171;
        *(v170 + 40) = v152;
        *(v170 + 41) = _H2;
        *(v170 + 42) = _H3;
        *(v170 + 43) = _H4;
        *(v170 + 44) = _H6;
        *(v170 + 45) = _H5;
        *(v170 + 46) = _H7;
        v18 += 4;
        v30 += 3;
        v20 = v96;
        if (v72 <= v96)
        {
          goto LABEL_91;
        }
      }

      v98 = *(randomNumberArray + 4 * ((v30 + 1) & 0xFFF)) * 3.14159265;
      *&v98 = v98 + v98;
      CGAffineTransformMakeRotation(&v246, *&v98);
      a = v246.a;
      b = v246.b;
      c = v246.c;
      d = v246.d;
      tx = v246.tx;
      ty = v246.ty;
LABEL_70:
      *(&v57 + 1) = *(&v245 + 1);
      *&v57 = v206 * (*&v245 * v92);
      v233 = tx + a * *&v57 - v205 * v92 * c;
      v234 = tx + -(v205 * v92 * c) - a * *&v57;
      v105 = v205 * v92 * c;
      v229 = tx + v105 + a * *&v57;
      v230 = ty + -(v205 * v92 * d) - b * *&v57;
      v106 = v205 * v92 * d;
      v231 = ty + v106 + b * *&v57;
      v232 = ty + b * *&v57 - v106;
      v227 = ty + v106 - b * *&v57;
      v228 = tx + v105 - a * *&v57;
      goto LABEL_71;
    }
  }

LABEL_103:
  if (particles)
  {
    *(animatingStrokeCopy + 256) = v20;
    *(animatingStrokeCopy + 272) = v30;
  }

  else
  {
    *(animatingStrokeCopy + 248) = v20;
    *(animatingStrokeCopy + 268) = v30;
  }

  encoderCopy = [(PKMetalRenderer *)self renderVerticies:v22 size:v18 numRenderedVertices:v188 vertexSize:0x18 numIndices:6 * (v18 >> 2) localClipRect:animatingStrokeCopy animatingStroke:particles secondaryParticles:*v204 renderEncoder:*&v204[8], *&v204[16], *&v204[24], encoderCopy];

LABEL_107:
  return encoderCopy;
}

- (void)renderStrokeVertices:(unint64_t)vertices numVertices:(uint64_t)numVertices vertexSize:(uint64_t)size numIndices:(void *)indices renderEncoder:
{
  indicesCopy = indices;
  v14 = 0;
  v12 = [(PKMetalResourceHandler *)*(self + 192) newBufferWithLength:a2 bytes:&v14 outOffset:?];
  [indicesCopy setVertexBuffer:v12 offset:v14 atIndex:0];

  v14 = 0;
  v13 = [(PKMetalResourceHandler *)*(self + 192) indexBufferForNumVertices:vertices outIndexType:&v14];
  [indicesCopy drawIndexedPrimitives:3 indexCount:size indexType:v14 indexBuffer:v13 indexBufferOffset:0];
}

- (unint64_t)fadeOutLimitFromPoints:(uint64_t)points animatingStroke:
{
  v3 = *a2;
  if (!points)
  {
    return v3;
  }

  if (*(self + 1003) == 1 && (v6 = *(self + 1088), v6 > 0.0) && (v7 = *(self + 1096), v7 > 0.0))
  {
    v8 = *(points + 312);
    if (v8)
    {
      goto LABEL_6;
    }

    if (a2[1] != v3)
    {
      v12 = *(MEMORY[0x1E695F050] + 16);
      v13 = *(MEMORY[0x1E695F050] + 24);
      v14 = *MEMORY[0x1E695F050];
      v15 = *(MEMORY[0x1E695F050] + 8);
      v16 = -v3;
      v17 = *a2;
      do
      {
        v20.origin.x = *(v17 + 8);
        v20.origin.y = *(v17 + 16);
        v20.size.width = 1.0;
        v20.size.height = 1.0;
        *&v14 = CGRectUnion(*&v14, v20);
        if (v12 > v6 || v13 > v7)
        {
          v8 = 0xAAAAAAAAAAAAAAABLL * ((-v16 - *a2) >> 5);
          *(points + 312) = v8;
          goto LABEL_22;
        }

        v17 += 96;
        v16 -= 96;
      }

      while (v17 != a2[1]);
      v8 = *(points + 312);
LABEL_22:
      if (v8)
      {
        v3 = *a2;
LABEL_6:
        v9 = a2[1] - 96 * v8;
        if (v3 <= v9)
        {
          return v9;
        }
      }
    }
  }

  else if (*(points + 337) == 1)
  {
    v10 = *(points + 312);
    if (v10)
    {
      v11 = a2[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v11 - v3) >> 5) > v10)
      {
        return v11 - 96 * v10;
      }
    }
  }

  return v3;
}

- (void)addBufferForRenderCache:(uint64_t)cache strokeVertices:(unint64_t)vertices numVertices:(void *)numVertices vertexSize:(char)size bounds:(void *)bounds secondaryParticles:(double)particles renderEncoder:(double)encoder
{
  v21 = a2;
  boundsCopy = bounds;
  *(self + 16) += 24 * vertices;
  v30 = 0;
  v23 = [(PKMetalResourceHandler *)*(self + 192) newPurgeableBufferWithLength:cache bytes:&v30 outOffset:?];
  v24 = [PKMetalStrokeRenderCacheBuffer alloc];
  v25 = [(PKMetalStrokeRenderCacheBuffer *)&v24->super.isa initWithBuffer:v23 offset:v30 numVertices:vertices vertexSize:numVertices bounds:particles, encoder, a10, a11];
  if (size)
  {
    [v21 addSecondaryBuffer:v25];
  }

  else
  {
    [v21 addBuffer:v25];
  }

  if (boundsCopy)
  {
    uniformsBuffer = [(PKMetalSDFPenRenderCacheBuffer *)v25 uniformsBuffer];
    if (v25)
    {
      v27 = v25[2];
    }

    else
    {
      v27 = 0;
    }

    [boundsCopy setVertexBuffer:uniformsBuffer offset:v27 atIndex:0];

    v29 = 0;
    v28 = [(PKMetalResourceHandler *)*(self + 192) indexBufferForNumVertices:vertices outIndexType:&v29];
    [boundsCopy drawIndexedPrimitives:3 indexCount:6 * (vertices >> 2) indexType:v29 indexBuffer:v28 indexBufferOffset:0];
  }
}

- (uint64_t)renderVerticies:(unint64_t)verticies size:(uint64_t)size numRenderedVertices:(void *)vertices vertexSize:(uint64_t)vertexSize numIndices:(uint64_t)indices localClipRect:(char)rect animatingStroke:(CGFloat)stroke secondaryParticles:(CGFloat)self0 renderEncoder:(CGFloat)self1
{
  v25 = a13;
  v26 = v25;
  if (verticies)
  {
    if (v25)
    {
      [(PKMetalRenderer *)self renderStrokeVertices:a2 numVertices:verticies vertexSize:vertices numIndices:vertexSize renderEncoder:v25];
      v40.origin.x = [PKMetalRenderer dirtyClipRectForAnimatingStrokeVertices:indices newSize:verticies];
      v40.origin.y = v27;
      v40.size.width = v28;
      v40.size.height = v29;
      v38.origin.x = stroke;
      v38.origin.y = particles;
      v38.size.width = encoder;
      v38.size.height = a12;
      v39 = CGRectUnion(v38, v40);
      v30 = self[18];
      *&v37.a = self[17];
      *&v37.c = v30;
      *&v37.tx = self[19];
    }

    else
    {
      v31 = *(indices + 88);
      if (v31)
      {
        [PKMetalRenderer clipRectForVertices:a2 numVertices:verticies vertexSize:vertices];
        [(PKMetalRenderer *)self addBufferForRenderCache:v31 strokeVertices:a2 numVertices:verticies vertexSize:vertices bounds:rect secondaryParticles:0 renderEncoder:v32, v33, v34, v35];
      }
    }

    size += verticies;
    if (*(indices + 336) == 1)
    {
      *(indices + 328) = verticies;
    }
  }

  return size;
}

- (void)generateRenderMaskForPaths:(void *)paths renderCache:
{
  pathsCopy = paths;
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = **(self + 600);
    v19 = vdupq_n_s64(0x4059000000000000uLL);
    do
    {
      __p = 0;
      v21 = 0;
      v22 = 0;
      std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(&__p, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v9 = __p;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3);
      if (v21 != __p)
      {
        v11 = 0;
        if (v10 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3);
        }

        v13 = v8;
        do
        {
          v14 = v11 >> 1;
          if (v11)
          {
            v14 = v10 + ~(v11 >> 1);
          }

          *v13 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_s64(*&v9[24 * v14]), v19));
          v13[1] = 0;
          v13[2].i32[0] = 0;
          v13[2].i16[2] = COERCE_UNSIGNED_INT(1.0);
          ++v11;
          v13 += 3;
        }

        while (v12 != v11);
      }

      [PKMetalRenderer clipRectForVertices:v8 numVertices:v10 vertexSize:24];
      [(PKMetalRenderer *)self addBufferForRenderCache:pathsCopy strokeVertices:v8 numVertices:v10 vertexSize:0x18 bounds:0 secondaryParticles:0 renderEncoder:v15, v16, v17, v18];
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      v6 += 3;
    }

    while (v6 != v7);
  }
}

- (void)generatePaintCacheForStroke:(unint64_t)stroke animatingStroke:(uint64_t)animatingStroke segmentSteps:(void *)steps liveStrokePoints:(uint64_t)points liveStrokeStartTime:(double)time duration:(double)duration
{
  v137 = *MEMORY[0x1E69E9840];
  v134[0] = a2;
  v134[1] = stroke;
  if (0xAAAAAAAAAAAAAAABLL * ((stroke - a2) >> 5) < 2)
  {
    v8 = 0;
    goto LABEL_73;
  }

  v15 = &v119;
  v119 = 0;
  v120 = &v119;
  v121 = 0xB012000000;
  v122 = __Block_byref_object_copy__20;
  v123 = __Block_byref_object_dispose__20;
  v124 = "";
  v16 = 0uLL;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v125 = 0;
  v126 = -1431655765 * ((stroke - a2) >> 5);
  v17 = 0;
  v127 = 0;
  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  v18 = *(animatingStroke + 80);
  if (v18)
  {
    [v18 _inkTransform];
    v15 = v120;
    v17 = vcvt_f32_f64(v116);
    v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v117), v118);
  }

  *(v15 + 22) = 0;
  v15[10] = v17;
  *(v15 + 26) = 0;
  v15[12] = v16.i64[0];
  *(v15 + 30) = 1065353216;
  v15[14] = vdupq_laneq_s64(v16, 1).u64[0];
  *&v115.a = v116;
  *&v115.c = v117;
  *&v115.tx = v118;
  CGAffineTransformInvert(&v108, &v115);
  v19 = vcvt_f32_f64(*&v108.a);
  v20 = vcvt_f32_f64(*&v108.c);
  v21 = vcvt_f32_f64(*&v108.tx);
  *(v15 + 34) = 0;
  v15[16] = v19;
  *(v15 + 38) = 0;
  v15[18] = v20;
  *(v15 + 42) = 1065353216;
  v15[20] = v21;
  v115.a = 0.0;
  *&v115.b = &v115;
  *&v115.c = 0x2020000000;
  v115.d = 0.0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v87 = [(PKMetalRenderer *)self renderZoomFactorForStroke:?];
  if (!points)
  {
    v30 = 0;
    goto LABEL_21;
  }

  v22 = *(self + 584);
  v23 = *(self + 576);
  v24 = (v22 - v23) >> 4;
  if (!(v24 >> 16))
  {
    v25 = 0x10000 - v24;
    v26 = *(self + 592);
    if (v25 > (v26 - v22) >> 4)
    {
      v27 = v26 - v23;
      v28 = v27 >> 3;
      if ((v27 >> 3) <= 0x10000)
      {
        v28 = 0x10000;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFF0)
      {
        v29 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v28;
      }

      if (!(v29 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(self + 584), 16 * v25);
    v31 = v22 + 16 * v25;
    goto LABEL_19;
  }

  if (v22 - v23 != 0x100000)
  {
    v31 = v23 + 0x100000;
LABEL_19:
    *(self + 584) = v31;
  }

  v30 = *(self + 576);
LABEL_21:
  v32 = *(self + 536);
  v33 = *(self + 528);
  v34 = &v32[-v33];
  v35 = 0xAAAAAAAAAAAAAAABLL * (&v32[-v33] >> 3);
  if (!(v35 >> 16))
  {
    v36 = 0x10000 - v35;
    v37 = *(self + 544);
    if (0xAAAAAAAAAAAAAAABLL * ((v37 - v32) >> 3) < v36)
    {
      v38 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v33) >> 3);
      v39 = 2 * v38;
      if (2 * v38 <= 0x10000)
      {
        v39 = 0x10000;
      }

      if (v38 >= 0x555555555555555)
      {
        v40 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v40 = v39;
      }

      if (v40 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(v32, 1572840 - v34 - (1572840 - v34) % 0x18u + 24);
    v32 += 1572840 - v34 - (1572840 - v34) % 0x18u + 24;
    goto LABEL_33;
  }

  if (v34 != 1572864)
  {
    v32 = (v33 + 1572864);
LABEL_33:
    *(self + 536) = v32;
  }

  v41 = *(self + 528);
  array = [MEMORY[0x1E695DF70] array];
  if ([*(animatingStroke + 80) _pointsCount])
  {
    [*(animatingStroke + 80) timestamp];
    v43 = v42;
  }

  else
  {
    v44 = *(*(animatingStroke + 96) + 80);
    if (*(*(animatingStroke + 96) + 88) == v44)
    {
      v43 = 0.0;
    }

    else
    {
      v43 = *v44;
    }
  }

  v45 = [(PKMetalRenderer *)self fadeOutLimitFromPoints:v134 animatingStroke:animatingStroke];
  v108.a = 0.0;
  *&v108.b = &v108;
  *&v108.c = 0x5012000000;
  *&v108.d = __Block_byref_object_copy__109;
  *&v108.tx = __Block_byref_object_dispose__110;
  *&v108.ty = "";
  v109 = 0u;
  v110 = 0u;
  [*(animatingStroke + 80) _bounds];
  *&v109 = v46;
  *(&v109 + 1) = v47;
  *&v110 = v48;
  *(&v110 + 1) = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__PKMetalRenderer_generatePaintCacheForStroke_animatingStroke_segmentSteps_liveStrokePoints_liveStrokeStartTime_duration___block_invoke;
  aBlock[3] = &unk_1E82DA248;
  v102 = &v115;
  v103 = &v108;
  pointsCopy = points;
  v107 = v30;
  v104 = &v111;
  v105 = v41;
  v101 = &v119;
  aBlock[4] = self;
  v50 = array;
  v100 = v50;
  v90 = _Block_copy(aBlock);
  v86 = v50;
  stepsCopy2 = steps;
  if (stroke != v45 + 96)
  {
    v52 = 0;
    v53 = 0xAAAAAAAAAAAAAAABLL * (&v32[-v41] >> 3);
    v54 = stroke - v45 - 96;
    do
    {
      if (v52 >= (stepsCopy2[1] - *stepsCopy2) >> 2)
      {
        v55 = 8;
      }

      else
      {
        v55 = *(*stepsCopy2 + 4 * v52);
      }

      if (*(self + 1003) == 1)
      {
        if (*(self + 1002) == 1)
        {
          v56 = *v45 - v43;
          if (v56 > 255.996094)
          {
            v56 = 255.996094;
          }

          v57 = vcvtd_n_s64_f64(v56, 8uLL);
        }

        else
        {
          v57 = 0xFFFF;
        }
      }

      else
      {
        v57 = v55;
      }

      v58 = vcvt_f32_f64(*(v45 + 8));
      v59 = *(v45 + 24);
      v60 = *(v45 + 72);
      v61 = v57 | (*(v112 + 6) << 16);
      v62 = *(*&v115.b + 24);
      *(*&v115.b + 24) = v62 + 1;
      v63 = (v41 + 24 * v62);
      *v63 = v58;
      v63[1].f32[0] = v59;
      v63[1].f32[1] = v60;
      v63[2].i32[0] = v61;
      v64 = v112;
      v65 = v112[3];
      v66 = 8 * v55;
      if (v65 + 8 * v55 + 4 > v53)
      {
        v90[2]();
        b = v115.b;
        *(*&v115.b + 24) = 0;
        v112[3] = 0;
        v68 = *(*&b + 24);
        *(*&b + 24) = v68 + 1;
        v69 = (v41 + 24 * v68);
        *v69 = v58;
        v69[1].f32[0] = v59;
        v69[1].f32[1] = v60;
        v69[2].i32[0] = v57;
        v64 = v112;
        v65 = v112[3];
        stepsCopy2 = steps;
      }

      v64[3] = v65 + v66;
      v45 += 96;
      ++v52;
      v54 -= 96;
    }

    while (v54);
  }

  v70 = vcvt_f32_f64(*(v45 + 8));
  v71 = *(v45 + 24);
  v72 = *(v45 + 72);
  v73 = *(*&v115.b + 24);
  *(*&v115.b + 24) = v73 + 1;
  v74 = (v41 + 24 * v73);
  *v74 = v70;
  v74[1].f32[0] = v71;
  v74[1].f32[1] = v72;
  v90[2]();
  if (points)
  {
    v75 = [[PKMetalLiveStrokePaintRenderCache alloc] initWithRenderZoomFactor:v87];
    v8 = v75;
    if (v75)
    {
      *(v75 + 4) = time;
      *(v75 + 5) = duration;
      v76 = *(*&v108.b + 64);
      *(v75 + 3) = *(*&v108.b + 48);
      *(v75 + 4) = v76;
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v77 = v86;
    v78 = [v77 countByEnumeratingWithState:&v95 objects:v136 count:16];
    if (v78)
    {
      v79 = *v96;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v96 != v79)
          {
            objc_enumerationMutation(v77);
          }

          [(PKMetalLiveStrokePaintRenderCache *)v8 addBuffer:?];
        }

        v78 = [v77 countByEnumeratingWithState:&v95 objects:v136 count:16];
      }

      while (v78);
    }
  }

  else
  {
    v8 = [[PKMetalPaintRenderCache alloc] initWithPurgeableBuffers:v87 renderZoomFactor:?];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v81 = v86;
    v82 = [v81 countByEnumeratingWithState:&v91 objects:v135 count:16];
    if (v82)
    {
      v83 = *v92;
      do
      {
        for (j = 0; j != v82; ++j)
        {
          if (*v92 != v83)
          {
            objc_enumerationMutation(v81);
          }

          [(PKMetalPaintRenderCache *)v8 addBuffer:?];
        }

        v82 = [v81 countByEnumeratingWithState:&v91 objects:v135 count:16];
      }

      while (v82);
    }
  }

  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(&v119, 8);
LABEL_73:

  return v8;
}

void __122__PKMetalRenderer_generatePaintCacheForStroke_animatingStroke_segmentSteps_liveStrokePoints_liveStrokeStartTime_duration___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 52) = *(*(*(a1 + 56) + 8) + 24);
  v2 = *(a1 + 80) + 24 * *(*(*(a1 + 56) + 8) + 24);
  *(v2 - 8) = *(v2 - 8);
  v3 = *(a1 + 80) + 24 * *(*(*(a1 + 56) + 8) + 24);
  *(v3 - 8) = *(v3 - 6) << 16;
  if (*(a1 + 88))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 88);
        v9.origin.x = COERCE_FLOAT(*(v6 + 8 * v5));
        v9.origin.y = COERCE_FLOAT(HIDWORD(*(v6 + 8 * v5)));
        v9.size.width = 1.0;
        v9.size.height = 1.0;
        v10 = CGRectInset(v9, -20.0, -20.0);
        *(*(*(a1 + 64) + 8) + 48) = CGRectUnion(*(*(*(a1 + 64) + 8) + 48), v10);
        *(*(a1 + 96) + v4) = *(*(a1 + 88) + 8 * v5);
        *(*(a1 + 96) + v4 + 8) = 1074790400;
        ++v5;
        v4 += 16;
      }

      while (v5 < *(*(*(a1 + 56) + 8) + 24));
    }

    v7 = [[PKMetalLiveStrokePaintRenderCacheBuffer alloc] initWithPoints:*(a1 + 96) liveStrokePoints:*(*(*(a1 + 56) + 8) + 24) numPoints:*(*(*(a1 + 72) + 8) + 24) + 4 numVertices:*(*(a1 + 32) + 192) resourceHandler:?];
    [*(a1 + 40) addObject:?];
  }

  else
  {
    v7 = [[PKMetalPaintRenderCacheBuffer alloc] initWithUniforms:*(a1 + 80) points:*(*(*(a1 + 56) + 8) + 24) numPoints:*(*(*(a1 + 72) + 8) + 24) + 4 numVertices:*(*(a1 + 32) + 192) resourceHandler:?];
    [*(a1 + 40) addObject:?];
  }
}

void __77__PKMetalRenderer_generateSDFPenCacheForStroke_animatingStroke_segmentSteps___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 52) = *(*(*(a1 + 56) + 8) + 24);
  v2 = *(a1 + 72) + 24 * *(*(*(a1 + 56) + 8) + 24);
  *(v2 - 8) = *(v2 - 8);
  v3 = *(a1 + 72) + 24 * *(*(*(a1 + 56) + 8) + 24);
  *(v3 - 8) = *(v3 - 6) << 16;
  v4 = [[PKMetalSDFPenRenderCacheBuffer alloc] initWithUniforms:*(a1 + 72) points:*(*(*(a1 + 56) + 8) + 24) numPoints:*(*(*(a1 + 64) + 8) + 24) numVertices:*(*(a1 + 32) + 192) resourceHandler:?];
  [*(a1 + 40) addObject:?];
}

- (id)generateParticleCacheForStroke:(double *)stroke animatingStroke:(uint64_t)animatingStroke starts:(int)starts ends:(int)ends secondaryParticles:(int)particles
{
  v136 = *MEMORY[0x1E69E9840];
  if (stroke == a2)
  {
    v7 = 0;
    goto LABEL_72;
  }

  v10 = a2;
  v110 = [*(animatingStroke + 80) ink];
  behavior = [v110 behavior];
  v12 = [(PKInkBehavior *)behavior alphaForStroke:?];

  v13 = *(self + 504);
  v14 = *(self + 512);
  v15 = v14 - v13;
  v16 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - v13) >> 3);
  if (v16 >> 16)
  {
    if (v15 == 2621440)
    {
      goto LABEL_16;
    }

    v14 = v13 + 2621440;
  }

  else
  {
    v17 = 0x10000 - v16;
    v18 = *(self + 520);
    if (0xCCCCCCCCCCCCCCCDLL * ((v18 - v14) >> 3) < v17)
    {
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v13) >> 3);
      v20 = 2 * v19;
      if (2 * v19 <= 0x10000)
      {
        v20 = 0x10000;
      }

      if (v19 >= 0x333333333333333)
      {
        v21 = 0x666666666666666;
      }

      else
      {
        v21 = v20;
      }

      if (v21 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(self + 512), 2621400 - v15 - (2621400 - v15) % 0x28u + 40);
    v14 += 2621400 - v15 - (2621400 - v15) % 0x28u + 40;
  }

  *(self + 512) = v14;
LABEL_16:
  v109 = *(self + 504);
  v22 = [(PKMetalRenderer *)self renderZoomFactorForStroke:?];
  behavior2 = [v110 behavior];
  if (particles)
  {
    [behavior2 secondaryParticleDescriptor];
  }

  else
  {
    [behavior2 particleDescriptor];
  }
  v24 = ;

  particleCount = [v24 particleCount];
  v26 = v10 + 3;
  [v24 particleSpacingForRadius:v10[3]];
  v28 = v27;
  [v24 particleSpacing];
  v30 = v29;
  [v24 dynamicStep];
  v32 = v31;
  particleRotation = [v24 particleRotation];
  [v24 particleSize];
  v111 = v34;
  v107 = v35;
  randomNumberArray = [(PKMetalResourceHandler *)*(self + 192) randomNumberArray];
  v37.f64[0] = v111;
  v37.f64[1] = v107;
  v121 = vcvt_f32_f64(v37);
  *v37.f64 = v12;
  v122 = LODWORD(v37.f64[0]);
  v126 = particleCount;
  if ([v110 version] <= 2)
  {
    v38 = v30;
  }

  else
  {
    v38 = v28;
  }

  v39 = v38;
  v40 = v32;
  v123 = v39;
  v124 = v40;
  v128 = particleRotation != 0;
  v129 = particleRotation == 2;
  startsCopy = starts;
  v131 = 0;
  [v24 maskScale];
  v42 = v41;
  [v110 weight];
  v44 = v43;
  [v24 maskScaleConstant];
  *&v42 = 1.0 / (v45 + v42 * v44);
  v132 = LODWORD(v42);
  [v24 maskMovement];
  *&v46 = v46 * *&v42;
  v133 = *&v46;
  v47 = 268;
  if (particles)
  {
    v47 = 272;
  }

  v48 = *(animatingStroke + v47);
  v49 = *MEMORY[0x1E695EFF8];
  v50 = *(MEMORY[0x1E695EFF8] + 8);
  if ([v24 maskInitialRandomOffset])
  {
    v51 = *(animatingStroke + 264);
    v49 = *(randomNumberArray + 4 * (v51 & 0xFFF));
    v50 = *(randomNumberArray + 4 * ((v51 + 1) & 0xFFF));
  }

  [*(animatingStroke + 80) _anchorPointForTexture];
  *&v52 = v49 - v52 * v133;
  *&v53 = v50 - v53 * v133;
  HIDWORD(v52) = LODWORD(v53);
  v134 = v52;
  v54 = *(animatingStroke + 80);
  if (!particles)
  {
    [v54 _particleOffset];
    if (v55 != 0.0)
    {
      goto LABEL_30;
    }

LABEL_31:
    _D11 = 0.0;
    goto LABEL_32;
  }

  [v54 _secondaryParticleOffset];
  if (v55 == 0.0)
  {
    goto LABEL_31;
  }

  v26 = v10 + 10;
LABEL_30:
  v56 = v28 * *v26;
  v48 += 3 * fmax(ceil(v55 / v56), 0.0);
  _D11 = v56 - fmod(v55, v56) + 0.0;
LABEL_32:
  array = [MEMORY[0x1E695DF70] array];
  v102 = v22;
  v58 = v10 + 12;
  if (v10 + 12 == stroke)
  {
    v59 = 0;
    _D11 = 0.0;
  }

  else
  {
    v104 = v24;
    v60 = 0;
    v61 = 0;
    v108 = 0;
    v59 = 0;
    v112 = 0;
    v62 = v14 - v109;
    v63 = v109;
    v64 = 0xCCCCCCCCCCCCCCCDLL * (v62 >> 3);
    do
    {
      v65 = *(v10 + 1);
      *&v120.timestamp = *v10;
      *&v120.location.y = v65;
      v66 = *(v10 + 3);
      *&v120.aspectRatio = *(v10 + 2);
      *&v120.force = v66;
      v67 = *(v10 + 5);
      *&v120.altitude = *(v10 + 4);
      *&v120.radius2 = v67;
      v68 = sqrt((v58[2] - v120.location.y) * (v58[2] - v120.location.y) + (v58[1] - v120.location.x) * (v58[1] - v120.location.x));
      if (v68 <= _D11)
      {
        _D11 = _D11 - v68;
      }

      else
      {
        v69 = v58[3];
        v119 = 0;
        memset(v118, 0, sizeof(v118));
        __asm { FCVT            H0, D11 }

        WORD2(v118[1]) = _H0;
        if ([v110 version] >= 3)
        {
          v75 = 24;
          if (particles)
          {
            v75 = 80;
          }

          v76 = *(&v120.timestamp + v75);
          if (v76 < 1.0)
          {
            v76 = 1.0;
          }

          v30 = v28 * v76;
        }

        if (v32 <= 0.0)
        {
          v80 = fmax(floor((v68 - _D11) / v30), 0.0);
          v79 = v80 + 1;
          HIWORD(v118[1]) = v79;
          _D11 = v30 - (v68 - _D11 - v80 * v30);
        }

        else
        {
          if (v68 >= _D11)
          {
            radius = v120.radius;
            v78 = (v69 - v120.radius) / v68;
            do
            {
              v68 = v68 - _D11;
              radius = radius + v78 * _D11;
              _D11 = v30 * radius / v32;
            }

            while (v68 >= _D11);
          }

          _D11 = _D11 - v68;
          v79 = HIWORD(v118[1]);
        }

        v81 = v60 + 1;
        if (v61 + 4 * v79 > v64 || v81 == v64)
        {
          v82 = v119;
          v83 = v109 + 40 * v60;
          *v83 = *&v118[0];
          *(v83 + 8) = v61;
          *(v83 + 12) = *(v118 + 12);
          *(v83 + 28) = WORD6(v118[1]);
          *(v83 + 30) = 0;
          *(v83 + 32) = v82;
          *(self + 16) += 40 * v81;
          v127 = v60 + 1;
          v125 = v108;
          v84 = [[PKMetalParticleRenderCacheBuffer alloc] initWithUniforms:v109 points:v60 + 1 numPoints:*(self + 192) resourceHandler:?];
          [array addObject:v84];
          startsCopy = 0;

          v61 = 0;
          v60 = 0;
          v108 += v81;
        }

        LOWORD(v119) = v48;
        DWORD2(v118[0]) = v61;
        v63 = v109;
        v85 = v109 + 40 * v60++;
        v86 = v118[1];
        *v85 = v118[0];
        *(v85 + 16) = v86;
        *(v85 + 32) = v119;
        v87 = 4 * v79;
        v61 += v87;
        v112 += v87;
        v59 = (3 * v79 + v48);
        v48 = v59;
      }

      v58 = v10 + 24;
      v10 += 12;
    }

    while (v58 != stroke);
    if (v60)
    {
      v88 = *(stroke - 3);
      *&v120.aspectRatio = *(stroke - 4);
      *&v120.force = v88;
      v89 = *(stroke - 1);
      *&v120.altitude = *(stroke - 2);
      *&v120.radius2 = v89;
      v90 = *(stroke - 5);
      *&v120.timestamp = *(stroke - 6);
      *&v120.location.y = v90;
      v119 = 0;
      memset(v118, 0, sizeof(v118));
      DWORD2(v118[0]) = v61;
      HIWORD(v118[1]) = 0;
      v91 = v60 + 1;
      v92 = v63 + 40 * v60;
      *(v92 + 32) = v119;
      v93 = v118[1];
      *v92 = v118[0];
      *(v92 + 16) = v93;
      v94 = 4;
      if (starts)
      {
        v94 = 8;
      }

      if (ends && v112 >= v94)
      {
        v131 = 1;
      }

      v125 = v108;
      v127 = v60 + 1;
      v24 = v104;
      v95 = [[PKMetalParticleRenderCacheBuffer alloc] initWithUniforms:v63 points:v91 numPoints:*(self + 192) resourceHandler:?];
      [array addObject:v95];
      *(self + 16) += 40 * v91;
    }

    else
    {
      v24 = v104;
    }
  }

  v7 = [[PKMetalParticleRenderCache alloc] initWithDevice:v110 ink:v102 renderZoomFactor:?];
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v96 = array;
  v97 = [v96 countByEnumeratingWithState:&v114 objects:v135 count:16];
  if (v97)
  {
    v98 = *v115;
    do
    {
      for (i = 0; i != v97; ++i)
      {
        if (*v115 != v98)
        {
          objc_enumerationMutation(v96);
        }

        [(PKMetalParticleRenderCache *)v7 addBuffer:?];
      }

      v97 = [v96 countByEnumeratingWithState:&v114 objects:v135 count:16];
    }

    while (v97);
  }

  if (v7)
  {
    v7[6] = v59;
    *(v7 + 7) = _D11;
  }

LABEL_72:

  return v7;
}

- (PKMetalStrokeRenderCache)generateCacheForStroke:(unint64_t)stroke points:(double *)points segmentSteps:(void *)steps
{
  v5 = 0;
  v134 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_94;
  }

  strokeCopy = stroke;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((points - stroke) >> 5);
  if (v8 < 2)
  {
    goto LABEL_94;
  }

  v10 = a2;
  v11 = *(a2 + 80);
  v12 = *(v10 + 248);
  v13 = *(v10 + 256);
  v107 = (v10 + 268);
  v14 = *(v10 + 268);
  v110 = v11;
  v15 = [v11 ink];
  behavior = [v15 behavior];
  renderingDescriptor = [behavior renderingDescriptor];
  type = [renderingDescriptor type];

  v106 = v10;
  if (type)
  {
    v19 = *(v10 + 336);
    v20 = [*(v10 + 80) ink];
    behavior2 = [v20 behavior];
    particleDescriptor = [behavior2 particleDescriptor];

    v108 = particleDescriptor;
    if ([particleDescriptor adjustEndCapParticleAlpha])
    {
      v23 = *(v10 + 168);
      if (v23 <= *(v10 + 160))
      {
        v23 = *(v10 + 160);
      }

      v24 = v23 == 0;
    }

    else
    {
      v24 = 0;
    }

    adjustEndCapParticleAlpha = [particleDescriptor adjustEndCapParticleAlpha];
    if ((adjustEndCapParticleAlpha & v19) == 1)
    {
      adjustEndCapParticleAlpha = (*(v10 + 176) & 1) == 0 && *(*(v10 + 96) + 88) == points;
    }

    if (v8 >= 0x29 && (*(self + 721) & 1) != 0)
    {
      v5 = [(PKMetalRenderer *)self generateParticleCacheForStroke:strokeCopy animatingStroke:points starts:v10 ends:v24 secondaryParticles:adjustEndCapParticleAlpha, 0];
      v36 = [*(v10 + 80) ink];
      behavior3 = [v36 behavior];
      secondaryParticleDescriptor = [behavior3 secondaryParticleDescriptor];

      if (secondaryParticleDescriptor)
      {
        v39 = [(PKMetalRenderer *)self generateParticleCacheForStroke:strokeCopy animatingStroke:points starts:v10 ends:v24 secondaryParticles:adjustEndCapParticleAlpha, 1];
        v118 = 0u;
        v119 = 0u;
        aBlock = 0u;
        v117 = 0u;
        buffers = [(PKMetalSDFPenRenderCache *)v39 buffers];
        v41 = [buffers countByEnumeratingWithState:&aBlock objects:v133 count:16];
        if (v41)
        {
          v42 = *v117;
          do
          {
            for (i = 0; i != v41; ++i)
            {
              if (*v117 != v42)
              {
                objc_enumerationMutation(buffers);
              }

              [(PKMetalParticleRenderCache *)v5 addSecondaryBuffer:?];
            }

            v41 = [buffers countByEnumeratingWithState:&aBlock objects:v133 count:16];
          }

          while (v41);
        }

        v10 = v106;
      }
    }

    else
    {
      v44 = [PKMetalStrokeRenderCache alloc];
      v45 = [*(v10 + 80) ink];
      v46 = [(PKMetalStrokeRenderCache *)v44 initWithInk:v45 renderZoomFactor:[(PKMetalRenderer *)self renderZoomFactorForStroke:?]];

      objc_storeStrong((v10 + 88), v46);
      [(PKMetalRenderer *)self renderParticleStroke:strokeCopy animatingStroke:points starts:v10 ends:v24 secondaryParticles:adjustEndCapParticleAlpha renderEncoder:0, 0];
      v47 = [*(v10 + 80) ink];
      behavior4 = [v47 behavior];
      secondaryParticleDescriptor2 = [behavior4 secondaryParticleDescriptor];

      if (secondaryParticleDescriptor2)
      {
        [(PKMetalRenderer *)self renderParticleStroke:strokeCopy animatingStroke:points starts:v10 ends:v24 secondaryParticles:adjustEndCapParticleAlpha renderEncoder:1, 0];
      }

      v50 = *(v10 + 88);
      *(v10 + 88) = 0;

      buffers2 = [(PKMetalStrokeRenderCache *)v46 buffers];
      if ([buffers2 count])
      {
        v52 = v46;
      }

      else
      {
        v52 = 0;
      }

      v5 = v52;
    }

    selfCopy4 = self;

    if (!v5)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  {
    v130[0] = 0;
    v130[1] = v130;
    v130[2] = 0x3812000000;
    v130[3] = __Block_byref_object_copy__114;
    v130[4] = __Block_byref_object_dispose__115;
    v130[5] = "";
    v131 = 0;
    v132 = v8;
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v129 = 0;
    v122 = 0;
    v123 = &v122;
    v124 = 0x2020000000;
    v125 = 0;
    v104 = [(PKMetalRenderer *)self renderZoomFactorForStroke:?];
    v25 = *(self + 560);
    v26 = *(self + 552);
    v27 = &v25[-v26];
    v28 = 0xAAAAAAAAAAAAAAABLL * (&v25[-v26] >> 3);
    if (v28 >> 16)
    {
      if (v27 == 1572864)
      {
        goto LABEL_54;
      }

      v25 = (v26 + 1572864);
    }

    else
    {
      v29 = 0x10000 - v28;
      v30 = *(self + 568);
      if (0xAAAAAAAAAAAAAAABLL * ((v30 - v25) >> 3) < v29)
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v26) >> 3);
        v32 = 2 * v31;
        if (2 * v31 <= 0x10000)
        {
          v32 = 0x10000;
        }

        if (v31 >= 0x555555555555555)
        {
          v33 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v33 = v32;
        }

        if (v33 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      bzero(v25, 1572840 - v27 - (1572840 - v27) % 0x18u + 24);
      v25 += 1572840 - v27 - (1572840 - v27) % 0x18u + 24;
    }

    *(self + 560) = v25;
LABEL_54:
    v59 = *(self + 552);
    array = [MEMORY[0x1E695DF70] array];
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 3221225472;
    *&v117 = __77__PKMetalRenderer_generateSDFPenCacheForStroke_animatingStroke_segmentSteps___block_invoke;
    *(&v117 + 1) = &unk_1E82DA270;
    *&v119 = v130;
    *(&v119 + 1) = &v126;
    v120 = &v122;
    v121 = v59;
    *&v118 = self;
    v105 = array;
    *(&v118 + 1) = v105;
    v109 = _Block_copy(&aBlock);
    v103 = v14;
    if ((strokeCopy + 96) != points)
    {
      v61 = 0;
      v62 = 0;
      v63 = 0xAAAAAAAAAAAAAAABLL * (&v25[-v59] >> 3);
      v64 = strokeCopy - points + 96;
      do
      {
        if (v62 >= (steps[1] - *steps) >> 2)
        {
          v65 = 8;
        }

        else
        {
          v65 = *(*steps + 4 * v62);
        }

        v66 = *(strokeCopy + 56);
        _D10 = *(strokeCopy + 80);
        v68 = vcvt_f32_f64(*(strokeCopy + 8));
        v69 = *(strokeCopy + 24);
        v70 = v65 | (*(v123 + 6) << 16);
        _D0 = fmod(v66, 6.28318531);
        if (v66 <= 6.28318531 && v66 >= 0.0)
        {
          _D0 = v66;
        }

        if (_D0 < 0.0)
        {
          _D0 = _D0 + 6.28318531;
        }

        if (_D0 == 0.0)
        {
          _D0 = 0.0;
        }

        __asm
        {
          FCVT            H9, D0
          FCVT            H10, D10
        }

        v78 = v127[3];
        v127[3] = v78 + 1;
        v79 = (v59 + 24 * v78);
        *v79 = v68;
        v79[1].f32[0] = v69;
        v79[1].i16[2] = _H9;
        v79[1].i16[3] = _H10;
        v79[2].i32[0] = v70;
        v80 = v123;
        v81 = v123[3];
        if (v81 + 4 * v65 > v63)
        {
          v109[2]();
          v82 = v127;
          v127[3] = 0;
          v123[3] = 0;
          v83 = v82[3];
          v82[3] = v83 + 1;
          v84 = (v59 + 24 * v83);
          *v84 = v68;
          v84[1].f32[0] = v69;
          v84[1].i16[2] = _H9;
          v84[1].i16[3] = _H10;
          v84[2].i32[0] = v65;
          v80 = v123;
          v81 = v123[3];
        }

        if (!v61)
        {
          v81 += 4;
          v80[3] = v81;
        }

        v80[3] = v81 + 4 * v65;
        strokeCopy += 96;
        ++v62;
        v61 -= 96;
      }

      while (v64 != v61);
    }

    v85 = *(strokeCopy + 56);
    _D10 = *(strokeCopy + 80);
    v87 = vcvt_f32_f64(*(strokeCopy + 8));
    v88 = *(strokeCopy + 24);
    _D0 = fmod(v85, 6.28318531);
    if (v85 <= 6.28318531 && v85 >= 0.0)
    {
      _D0 = v85;
    }

    if (_D0 < 0.0)
    {
      _D0 = _D0 + 6.28318531;
    }

    if (_D0 == 0.0)
    {
      _D0 = 0.0;
    }

    __asm
    {
      FCVT            H0, D0
      FCVT            H1, D10
    }

    v93 = v127[3];
    v127[3] = v93 + 1;
    v94 = (v59 + 24 * v93);
    *v94 = v87;
    v94[1].f32[0] = v88;
    v94[1].i16[2] = _H0;
    v94[1].i16[3] = _H1;
    v109[2]();
    v5 = [[PKMetalSDFPenRenderCache alloc] initWithPurgeableBuffers:v104 renderZoomFactor:?];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v95 = v105;
    v96 = [v95 countByEnumeratingWithState:&v112 objects:v133 count:16];
    v14 = v103;
    if (v96)
    {
      v97 = *v113;
      do
      {
        for (j = 0; j != v96; ++j)
        {
          if (*v113 != v97)
          {
            objc_enumerationMutation(v95);
          }

          [(PKMetalSDFPenRenderCache *)v5 addBuffer:?];
        }

        v96 = [v95 countByEnumeratingWithState:&v112 objects:v133 count:16];
      }

      while (v96);
    }

    v10 = v106;
    _Block_object_dispose(&v122, 8);
    _Block_object_dispose(&v126, 8);
    _Block_object_dispose(v130, 8);
    selfCopy4 = self;
    if (!v5)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  selfCopy4 = self;
  if ([(PKMetalRenderer *)self generateBSplineInComputeForStroke:v110])
  {
    v5 = [(PKMetalRenderer *)self generatePaintCacheForStroke:strokeCopy animatingStroke:points segmentSteps:v10 liveStrokePoints:steps liveStrokeStartTime:0 duration:0.0, 0.0];
    if (!v5)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v53 = [PKMetalStrokeRenderCache alloc];
    v54 = [*(v10 + 80) ink];
    v55 = [(PKMetalStrokeRenderCache *)v53 initWithInk:v54 renderZoomFactor:[(PKMetalRenderer *)self renderZoomFactorForStroke:?]];

    objc_storeStrong((v10 + 88), v55);
    selfCopy4 = self;
    [(PKMetalRenderer *)self renderPenStroke:strokeCopy animatingStroke:points renderEncoder:v10, 0];
    v56 = *(v10 + 88);
    *(v10 + 88) = 0;

    buffers3 = [(PKMetalStrokeRenderCache *)v55 buffers];
    if ([buffers3 count])
    {
      v58 = v55;
    }

    else
    {
      v58 = 0;
    }

    v5 = v58;

    if (!v5)
    {
      goto LABEL_91;
    }
  }

LABEL_90:
  v99 = [(PKMetalRenderer *)selfCopy4 renderZoomFactorForStroke:v110];
  strokeRenderCache = [(PKMetalResourceHandler *)*(selfCopy4 + 192) strokeRenderCache];
  _strokeDataUUID = [*(v10 + 80) _strokeDataUUID];
  [(PKLRUCache *)strokeRenderCache setObject:v5 forKey:_strokeDataUUID cost:[(PKMetalStrokeRenderCache *)v5 cacheCost] scaleFactor:v99];

LABEL_91:
  if ((*(v10 + 72) & 1) == 0)
  {
    *(v10 + 248) = v12;
    *(v10 + 256) = v13;
    *v107 = v14;
  }

LABEL_94:

  return v5;
}

- (void)setupRenderState:(int)state needCompute:(int)compute clearPaint:
{
  v7 = a2;
  v8 = v7;
  if (state)
  {
    computeCommandBufferCreateIfNecessary = [(PKMetalRenderState *)v7 computeCommandBufferCreateIfNecessary];
    if (computeCommandBufferCreateIfNecessary)
    {
      v10 = v8 ? *(v8 + 88) : 0;
      v11 = v10;

      if (!v11)
      {
        computeCommandEncoder = [computeCommandBufferCreateIfNecessary computeCommandEncoder];
        [(PKMetalRenderState *)v8 setComputeEncoder:computeCommandEncoder];
        goto LABEL_9;
      }
    }
  }

  else
  {
    computeCommandBufferCreateIfNecessary = 0;
  }

  computeCommandEncoder = 0;
LABEL_9:
  commandBufferCreateIfNecessary = [(PKMetalRenderState *)v8 commandBufferCreateIfNecessary];
  if (!v8)
  {
    v15 = 0;
    v16 = (self + 72);
    if (*(self + 72))
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (compute)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    goto LABEL_37;
  }

  v14 = *(v8 + 80);
  if (!v14)
  {
    v15 = *(v8 + 168);
    v16 = (self + 72);
    if (*(self + 72))
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (compute)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (*(v8 + 45) == 1)
    {
      v37 = computeCommandEncoder;
      v38 = computeCommandBufferCreateIfNecessary;
      v36 = commandBufferCreateIfNecessary;
      v35 = commandBufferCreateIfNecessary;
      v19 = v8;
      renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
      if (v15 >= 1)
      {
        v21 = 0;
        v22 = self + 112;
        do
        {
          colorAttachments = [renderPassDescriptor colorAttachments];
          v24 = [colorAttachments objectAtIndexedSubscript:v21];

          v25 = *v22;
          if (*v22)
          {
            v25 = v25[3];
          }

          v26 = v25;
          [v24 setTexture:v26];

          [(PKMetalRenderState *)v19 addPurgeableFramebuffer:?];
          [v24 setLoadAction:2];
          [v24 setStoreAction:0];
          [v24 setClearColor:{0.0, 0.0, 0.0, 0.0}];
          *(v22 + 9) = 0;

          ++v21;
          v22 += 16;
        }

        while (v15 != v21);
        v27 = (self + 153);
        v28 = v15;
        do
        {
          colorAttachments2 = [renderPassDescriptor colorAttachments];
          v30 = [colorAttachments2 objectAtIndexedSubscript:v15];

          v31 = *(v27 - 9);
          if (v31)
          {
            v31 = v31[3];
          }

          v32 = v31;
          [v30 setTexture:v32];

          [(PKMetalRenderState *)v19 addPurgeableFramebuffer:?];
          if (*v27)
          {
            v33 = 2;
          }

          else
          {
            v33 = v18;
          }

          [v30 setLoadAction:v33];
          [v30 setStoreAction:1];
          [v30 setClearColor:{0.0, 0.0, 0.0, 0.0}];
          *v27 = 0;
          v27 += 16;

          ++v15;
          --v28;
        }

        while (v28);
      }

      v14 = [v35 renderCommandEncoderWithDescriptor:renderPassDescriptor];

      computeCommandEncoder = v37;
      computeCommandBufferCreateIfNecessary = v38;
      commandBufferCreateIfNecessary = v36;
      goto LABEL_38;
    }

LABEL_37:
    memset(v39, 0, 24);
    v39[3] = v17;
    v39[4] = 1;
    v39[5] = v18;
    memset(&v39[6], 0, 24);
    v40 = 0;
    v41 = v15;
    v34 = [(PKMetalRenderer *)self renderCommandEncoderForCommandBuffer:commandBufferCreateIfNecessary renderStateConfig:v39 renderState:v8];
    *v16 = 0;
    v14 = v34;
LABEL_38:
    [(PKMetalRenderState *)v8 setRenderEncoder:v14];
  }
}

uint64_t __85__PKMetalRenderer__renderStrokes_clippedToStrokeSpaceRect_strokeTransform_stopBlock___block_invoke(uint64_t a1)
{
  [(PKMetalRenderState *)*(a1 + 32) commitAndPurgeResourceSet:?];
  result = [*(a1 + 40) removeAllObjects];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 48);
  if (*(v3 + 56) != v4)
  {
    *(v3 + 56) = v4;
  }

  return result;
}

void __85__PKMetalRenderer__renderStrokes_clippedToStrokeSpaceRect_strokeTransform_stopBlock___block_invoke_2(double *a1, void *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  v79 = a2;
  v3 = *(*(a1 + 7) + 8);
  v4 = v3[6];
  v5 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v8 = a1[8];
  v9 = a1[9];
  v11 = a1[10];
  v10 = a1[11];
  v13 = *(a1 + 4);
  v12 = *(a1 + 5);
  if (v12)
  {
    v12 = v12[10];
  }

  v14 = v12;
  v15 = [(PKMetalRenderer *)v13 setupClippingForStrokeClipRect:v14 clippedToPixelSpaceRect:0 renderEncoder:v4 outNewClipRect:v5, v6, v7, v8, v9, v11, v10];

  if (v15)
  {
    v16 = [v79 _strokeMask];
    if (v16)
    {
      LODWORD(v17) = 1;
    }

    else
    {
      v18 = [v79 _renderMask];
      LODWORD(v17) = v18 != 0;
    }

    v19 = *(a1 + 5);
    if (v19)
    {
      [objc_opt_class() renderTargetBarrierForRenderEncoder:*(v19 + 80)];
    }

    v20 = 0;
    v80 = 14;
    v78 = v17;
    while (1)
    {
      v21 = *(a1 + 5);
      if (v21)
      {
        v22 = *(v21 + 168);
      }

      else
      {
        v22 = 0;
      }

      if (v20 >= v22)
      {
        if (v17)
        {
          if (v21)
          {
            v60 = *(v21 + 96);
          }

          else
          {
            v60 = 0;
          }

          v61 = v60;

          if (v61)
          {
            v62 = *(*(a1 + 7) + 8);
            v63 = v62[6];
            v64 = v62[7];
            v65 = v62[8];
            v66 = v62[9];
            v67 = a1[8];
            v68 = a1[9];
            v70 = a1[10];
            v69 = a1[11];
            v72 = *(a1 + 4);
            v71 = *(a1 + 5);
            if (v71)
            {
              v71 = v71[12];
            }

            v73 = v71;
            [(PKMetalRenderer *)v72 setupClippingForStrokeClipRect:v73 clippedToPixelSpaceRect:0 renderEncoder:v63 outNewClipRect:v64, v65, v66, v67, v68, v70, v69];
          }

          (*(*(a1 + 6) + 16))();
        }

        break;
      }

      v23 = *(a1 + 4);
      if (v23)
      {
        v24 = v23[1];
        if (v24)
        {
          v25 = [(PKMetalRenderState *)v24 pipelineConfig];
          if (!v21)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v25 = v23[100];
          if (!v21)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        v25 = 0;
        if (!v21)
        {
LABEL_50:
          LODWORD(v26) = 0;
          goto LABEL_17;
        }
      }

      v26 = *(v21 + 168);
LABEL_17:
      v27 = v23[24];
      if (v27 && *(v27 + 420) == 1)
      {
        v28 = 0;
        v29 = v20;
        v17 = 13;
        if (!v20)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v33 = v23[v80];
        if (v33)
        {
          v33 = v33[3];
        }

        v28 = v33;
        v29 = 0;
        v17 = 7;
        if (!v20)
        {
LABEL_20:
          v30 = [v79 ink];
          v31 = [v30 behavior];
          v32 = [v31 particleDescriptor];
          goto LABEL_25;
        }
      }

      v30 = [v79 ink];
      v31 = [v30 behavior];
      v32 = [v31 secondaryParticleDescriptor];
LABEL_25:
      v34 = v32;

      v35 = [v34 particleBlendMode];
      v36 = *(*(a1 + 4) + 192);
      *&v82 = v17;
      DWORD2(v82) = v26 + v20;
      HIDWORD(v82) = v29;
      v83.i8[0] = 0;
      LOBYTE(v17) = v78;
      v83.i8[1] = v78;
      *(v83.i64 + 2) = 0;
      v83.i64[1] = 0;
      v84 = v25;
      v37 = [(PKMetalResourceHandler *)v36 namedShaderForKey:?];
      v38 = v37;
      if (v35)
      {
        v39 = 1;
      }

      else
      {
        v39 = 3;
      }

      v40 = [(PKMetalShader *)v37 shaderWithBlendMode:v39];

      v41 = *(a1 + 5);
      if (v41)
      {
        v41 = v41[10];
      }

      v42 = *(a1 + 4);
      v43 = v41;
      [(PKMetalRenderer *)v42 setupForDefaultUberVertexShaderInRenderEncoder:v43];

      if (v78)
      {
        v44 = *(a1 + 5);
        if (v44)
        {
          v44 = v44[10];
        }

        v45 = v44;
        v46 = *(*(a1 + 4) + 176);
        if (v46)
        {
          v46 = v46[3];
        }

        v47 = v46;
        [v45 setFragmentTexture:v47 atIndex:1];
      }

      if (v28)
      {
        v48 = *(a1 + 5);
        if (v48)
        {
          v48 = v48[10];
        }

        v49 = v48;
        [v49 setFragmentTexture:v28 atIndex:0];
      }

      v51 = *(a1 + 4);
      v50 = *(a1 + 5);
      if (v50)
      {
        v50 = v50[10];
      }

      v52 = v50;
      [(PKMetalRenderer *)v51 renderFullscreenQuadWithShader:v40 renderEncoder:v52];

      if ((v78 & 1) == 0)
      {
        v53 = *(a1 + 5);
        if (v53)
        {
          v53 = v53[10];
        }

        v54 = *(a1 + 4);
        v55 = v53;
        [(PKMetalRenderer *)v54 setupForDefaultUberVertexShaderInRenderEncoder:v55];

        v56 = *(a1 + 4);
        v57 = [(PKMetalRenderer *)v56 eraseShaderForAttachmentIndex:v20];
        v58 = *(a1 + 5);
        if (v58)
        {
          v58 = v58[10];
        }

        v59 = v58;
        [(PKMetalRenderer *)v56 renderFullscreenQuadWithShader:v57 renderEncoder:v59];
      }

      ++v20;
      v80 += 2;
    }
  }

  v74 = *(*(a1 + 7) + 8);
  v75 = *(MEMORY[0x1E695F050] + 16);
  *(v74 + 48) = *MEMORY[0x1E695F050];
  *(v74 + 64) = v75;
  v76 = *(a1 + 5);
  v81 = *(*(a1 + 4) + 224);
  if (v76)
  {
    v76 = v76[10];
  }

  v77 = v76;
  v82 = 0uLL;
  v83 = vcvtq_u64_f64(v81);
  [v77 setScissorRect:&v82];
}

- (uint64_t)clearAndRenderStrokes:(__int128 *)strokes clippedToStrokeSpaceRect:(void *)rect strokeTransform:(CGFloat)transform stopBlock:(CGFloat)block
{
  v37 = *MEMORY[0x1E69E9840];
  v15 = a2;
  rectCopy = rect;
  if (!self)
  {
    v32 = 0;
    goto LABEL_17;
  }

  v38.origin.x = transform;
  v38.origin.y = block;
  v38.size.width = a7;
  v38.size.height = a8;
  IsNull = CGRectIsNull(v38);
  v18 = os_log_create("com.apple.pencilkit", "Sketching");
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
  if (IsNull)
  {
    if (!v19)
    {
      goto LABEL_6;
    }

    LOWORD(v34) = 0;
    v20 = "Metal Render not clipped to rect";
    v21 = v18;
    v22 = 2;
  }

  else
  {
    if (!v19)
    {
      goto LABEL_6;
    }

    LODWORD(v34) = 67109888;
    DWORD1(v34) = transform;
    WORD4(v34) = 1024;
    *(&v34 + 10) = block;
    HIWORD(v34) = 1024;
    LODWORD(v35) = a7;
    WORD2(v35) = 1024;
    *(&v35 + 6) = a7;
    v20 = "Metal Render clippedToRect %d %d %d %d";
    v21 = v18;
    v22 = 26;
  }

  _os_log_debug_impl(&dword_1C7CCA000, v21, OS_LOG_TYPE_DEBUG, v20, &v34, v22);
LABEL_6:

  v39.origin.x = transform;
  v39.origin.y = block;
  v39.size.width = a7;
  v39.size.height = a8;
  if (!CGRectIsNull(v39))
  {
    v29 = *(self + 72);
    [(PKMetalRenderer *)self setupRenderStateForRenderingStrokes:v15];
    if ((v29 & 1) == 0)
    {
      v30 = strokes[1];
      v34 = *strokes;
      v35 = v30;
      v36 = strokes[2];
      [(PKMetalRenderer *)self clearNowWithStrokeSpaceClipRect:transform strokeTransform:block, a7, a8];
    }

    if ([v15 count])
    {
      v31 = strokes[1];
      v34 = *strokes;
      v35 = v31;
      v36 = strokes[2];
      v28 = [(PKMetalRenderer *)self renderStrokes:v15 clippedToStrokeSpaceRect:&v34 strokeTransform:rectCopy stopBlock:transform, block, a7, a8];
      goto LABEL_13;
    }

    [(PKMetalRenderer *)self finishRendering];
LABEL_15:
    v32 = 0;
    goto LABEL_16;
  }

  [(PKMetalRenderer *)self finishRendering];
  *(self + 72) = 1;
  if (![v15 count])
  {
    goto LABEL_15;
  }

  [(PKMetalRenderer *)self setupRenderStateForRenderingStrokes:v15];
  v23 = *MEMORY[0x1E695F050];
  v24 = *(MEMORY[0x1E695F050] + 8);
  v25 = *(MEMORY[0x1E695F050] + 16);
  v26 = *(MEMORY[0x1E695F050] + 24);
  v27 = strokes[1];
  v34 = *strokes;
  v35 = v27;
  v36 = strokes[2];
  v28 = [(PKMetalRenderer *)self _renderStrokes:v15 clippedToStrokeSpaceRect:&v34 strokeTransform:rectCopy stopBlock:v23, v24, v25, v26];
LABEL_13:
  v32 = v28;
LABEL_16:
  [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
  [(PKMetalRenderer *)self purgePaintFramebuffers];
LABEL_17:

  return v32;
}

- (void)clearNowWithStrokeSpaceClipRect:(CGFloat)rect strokeTransform:(CGFloat)transform
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = (self + 8);
  v13 = *(self + 8);
  v14 = v13;
  if (!v13)
  {
    v14 = [[PKMetalRenderState alloc] initWithCommandQueue:0 liveRendering:*(self + 800) defaultPipelineConfig:?];
    objc_storeStrong(v12, v14);
    [(PKMetalRenderer *)self setupDrawingFramebuffersIfNecessaryWantMemorylessPaint:?];
  }

  commandBufferCreateIfNecessary = [(PKMetalRenderState *)v14 commandBufferCreateIfNecessary];
  if (!v14 || (v16 = v14[10]) == 0)
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    memset(v23, 0, sizeof(v23));
    v24 = vdupq_n_s64(1uLL);
    v25 = 2;
    v26 = 0;
    v30 = 1;
    v16 = [(PKMetalRenderer *)self renderCommandEncoderForCommandBuffer:commandBufferCreateIfNecessary renderStateConfig:v23 renderState:v14];
    [(PKMetalRenderState *)v14 setRenderEncoder:v16];
  }

  v35.origin.x = rect;
  v35.origin.y = transform;
  v35.size.width = a5;
  v35.size.height = a6;
  if (CGRectIsNull(v35) || (v17 = a2[1], v31 = *a2, v32 = v17, v33 = a2[2], ([(PKMetalRenderer *)self applyStrokeSpaceClipRect:rect strokeTransform:transform, a5, a6]& 1) != 0))
  {
    if (*v12)
    {
      pipelineConfig = [(PKMetalRenderState *)*v12 pipelineConfig];
    }

    else
    {
      pipelineConfig = *(self + 800);
    }

    v19 = *(self + 192);
    v31 = 0xBuLL;
    v32 = 0uLL;
    *&v33 = pipelineConfig;
    v20 = [(PKMetalResourceHandler *)v19 namedShaderForKey:?];
    [(PKMetalRenderer *)self setupForDefaultUberVertexShaderInRenderEncoder:v16];
    if (v14)
    {
      v21 = v14[10];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v20 renderEncoder:v22];
  }

  if (v13)
  {
    [(PKMetalRenderer *)self disableClippingForRenderEncoder:v16];
  }

  else
  {
    [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
    [(PKMetalRenderer *)self teardownDrawingFramebuffers];
  }
}

- (void)updateTile:(void *)tile strokes:(uint64_t)strokes clear:(char)clear waitUntilCompleted:(uint64_t)completed offscreen:(void *)offscreen stopBlock:
{
  v143 = *MEMORY[0x1E69E9840];
  v13 = a2;
  tileCopy = tile;
  offscreenCopy = offscreen;
  if (self)
  {
    if (v13)
    {
      v15 = *(v13 + 200);
      v16 = COERCE_DOUBLE(atomic_load(v13 + 1));
      size = vrndaq_f64(vmulq_n_f64(v15, v16));
      memset(&v141, 0, sizeof(v141));
      CGAffineTransformMakeTranslation(&t1, -*(v13 + 23), -*(v13 + 24));
      *&v17 = COERCE_DOUBLE(atomic_load(v13 + 1));
      v18 = *&v17;
      *&v19 = COERCE_DOUBLE(atomic_load(v13 + 1));
      v20 = *&v19;
    }

    else
    {
      memset(&v141, 0, sizeof(v141));
      size = 0;
      CGAffineTransformMakeTranslation(&t1, -0.0, -0.0);
      v18 = 0.0;
      v20 = 0.0;
    }

    CGAffineTransformMakeScale(&t2, v18, v20);
    CGAffineTransformConcat(&v141, &t1, &t2);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __83__PKMetalRenderer_updateTile_strokes_clear_waitUntilCompleted_offscreen_stopBlock___block_invoke;
    aBlock[3] = &unk_1E82DA2E8;
    v21 = offscreenCopy;
    v139 = v21;
    v134 = _Block_copy(aBlock);
    v22 = *(self + 224);
    v23 = *(self + 232);
    if (!v21 && (size.width == v22 ? (v24 = size.height == v23) : (v24 = 0), v24))
    {
      *&t2.a = *(self + 40);
      LOWORD(t2.b) = *(self + 48);
      v25 = (self + 56);
      v136 = *(self + 56);
      v137 = *(self + 64);
      v26 = *(self + 72);
      *&t1.a = [(PKMetalRenderer *)self framebufferForTile:v13 createIfNeeded:1];
      LOWORD(t1.b) = 0;
      v27 = *(self + 40);
      if (v27 && (*(self + 48) & 1) == 0)
      {
        *(self + 48) = [(PKMetalFramebuffer *)v27 incrementNonPurgeableCount];
      }

      if (*(self + 728))
      {
        *&t1.a = [(PKMetalRenderer *)self multiplyFramebufferForTile:v13 createIfNeeded:1];
        LOWORD(t1.b) = 0;
        if (*v25)
        {
          if ((*(self + 64) & 1) == 0)
          {
            *(self + 64) = [(PKMetalFramebuffer *)*v25 incrementNonPurgeableCount];
          }
        }
      }

      *(self + 72) = strokes;
      [(PKMetalRenderer *)self setupRenderStateForRenderingStrokes:tileCopy];
      v28 = *(self + 8);
      if (v28)
      {
        *(v28 + 41) = clear;
      }

      v29 = *(self + 728);
      if (v29)
      {
        v30 = 5;
        if (v29 != 3 && v29 != 5)
        {
          v30 = 4;
        }

        v31 = *(self + 8);
        if (v31)
        {
          *(v31 + 152) = v30;
        }
      }

      if (v13)
      {
        v32 = *(v13 + 23);
        v33 = *(v13 + 24);
        v34 = *(v13 + 25);
        v35 = *(v13 + 26);
      }

      else
      {
        v33 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v32 = 0.0;
      }

      t1 = v141;
      [(PKMetalRenderer *)self renderStrokes:tileCopy clippedToStrokeSpaceRect:&t1 strokeTransform:0 stopBlock:v32, v33, v34, v35];
      [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
      *(self + 72) = v26;
      [(PKMetalRenderer *)self purgePaintFramebuffers];
    }

    else if (v22 < size.width || v23 < size.height)
    {
      v37 = os_log_create("com.apple.pencilkit", "");
      v38 = v37;
      if ((*&size.height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&size.width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          LOWORD(t1.a) = 0;
          _os_log_fault_impl(&dword_1C7CCA000, v38, OS_LOG_TYPE_FAULT, "Tried to update a tile with a non-finite size", &t1, 2u);
        }
      }

      else
      {
        v41 = v37;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v43 = NSStringFromCGSize(*(self + 224));
          v44 = NSStringFromCGSize(size);
          LODWORD(t1.a) = 138412546;
          *(&t1.a + 4) = v43;
          WORD2(t1.b) = 2112;
          *(&t1.b + 6) = v44;
          _os_log_impl(&dword_1C7CCA000, v41, OS_LOG_TYPE_DEFAULT, "Created a one off tile  renderer: %@ => %@", &t1, 0x16u);
        }

        v45 = objc_autoreleasePoolPush();
        v46 = [PKMetalRenderer initWithDrawingPixelSize:*(self + 24) actualSize:*(self + 192) device:*(self + 728) resourceHandler:? sixChannelBlendingMode:?];
        v47 = v46;
        if (v46)
        {
          *(v46 + 1006) = *(self + 1006);
        }

        [(PKMetalRenderer *)v46 updateTile:v13 strokes:tileCopy clear:strokes waitUntilCompleted:1 offscreen:completed stopBlock:v21];

        objc_autoreleasePoolPop(v45);
      }
    }

    else
    {
      v40 = [(PKMetalRenderer *)self framebufferForTile:v13 createIfNeeded:1];
      if (*(self + 728))
      {
        sizea = [(PKMetalRenderer *)self multiplyFramebufferForTile:v13 createIfNeeded:1];
      }

      else
      {
        sizea = 0;
      }

      *(self + 72) = strokes;
      if (v40)
      {
        v48 = *(v40 + 88);
        v49 = *(v40 + 104);
      }

      else
      {
        v48 = 0uLL;
        v49 = 0uLL;
      }

      *(self + 80) = v48;
      *(self + 96) = v49;
      [(PKMetalRenderer *)self setupRenderStateForRenderingStrokes:tileCopy];
      if ((strokes & 1) == 0)
      {
        if (*(self + 728))
        {
          t1 = v141;
          v50 = [PKMetalRenderer calculateSourceRectForTile:v13 tileTransform:&t1 destinationQuadOut:&t2];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v57 = *(self + 8);
          if (v57)
          {
            v57 = v57[10];
          }

          v130 = v57;
          blitShader = [(PKMetalRenderer *)self blitShader];
          v59 = blitShader;
          if (blitShader)
          {
            v60 = *(blitShader + 24);
          }

          else
          {
            v60 = 0;
          }

          v61 = v60;
          [v130 setRenderPipelineState:v61];

          if (v40)
          {
            v62 = *(v40 + 24);
          }

          else
          {
            v62 = 0;
          }

          v63 = v62;
          [v130 setFragmentTexture:v63 atIndex:0];

          v64 = [(PKMetalFramebuffer *)v40 size];
          c = t2.c;
          d = t2.d;
          a = t2.a;
          b = t2.b;
          v69 = *(self + 224);
          v70 = *(self + 232);
          v71 = MEMORY[0x1E695EFD0];
          v72 = *(MEMORY[0x1E695EFD0] + 16);
          *&t1.a = *MEMORY[0x1E695EFD0];
          *&t1.c = v72;
          *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
          [(PKMetalRenderer *)v130 renderUberVertexShaderWithSourceRect:v50 destinationQuad:v52 renderEncoder:v54 sourcePixelSize:v56 destPixelSize:t2.a texCoordTransform:t2.b, t2.c, t2.d, v64, v73, v69, v70];
          v74 = *(self + 8);
          if (v74)
          {
            pipelineConfig = [(PKMetalRenderState *)v74 pipelineConfig];
          }

          else
          {
            pipelineConfig = *(self + 800);
          }

          v76 = *(self + 192);
          *&t1.a = 7;
          memset(&t1.b + 4, 0, 20);
          LODWORD(t1.b) = 3;
          *&t1.tx = pipelineConfig;
          v77 = [(PKMetalResourceHandler *)v76 namedShaderForKey:?];
          v78 = v77;
          if (v77)
          {
            v79 = *(v77 + 24);
          }

          else
          {
            v79 = 0;
          }

          v80 = v79;
          [v130 setRenderPipelineState:v80];

          v81 = sizea;
          if (sizea)
          {
            v81 = sizea[3];
          }

          v82 = v81;
          [v130 setFragmentTexture:v82 atIndex:0];

          v83 = [(PKMetalFramebuffer *)v40 size];
          v84 = *(self + 224);
          v85 = *(self + 232);
          v86 = v71[1];
          *&t1.a = *v71;
          *&t1.c = v86;
          *&t1.tx = v71[2];
          [(PKMetalRenderer *)v130 renderUberVertexShaderWithSourceRect:v50 destinationQuad:v52 renderEncoder:v54 sourcePixelSize:v56 destPixelSize:a texCoordTransform:b, c, d, v83, v87, v84, v85];
        }

        else
        {
          t1 = v141;
          [(PKMetalRenderer *)self renderTile:v13 tileFramebuffer:v40 tileTransform:&t1 renderState:*(self + 8) shouldComposite:0];
        }
      }

      if (v13)
      {
        v88 = *(v13 + 23);
        v89 = *(v13 + 24);
        v90 = *(v13 + 25);
        v91 = *(v13 + 26);
      }

      else
      {
        v89 = 0.0;
        v90 = 0.0;
        v91 = 0.0;
        v88 = 0.0;
      }

      t1 = v141;
      [(PKMetalRenderer *)self renderStrokes:tileCopy clippedToStrokeSpaceRect:&t1 strokeTransform:v21 stopBlock:v88, v89, v90, v91];
      [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
      if ((v134[2]() & 1) == 0)
      {
        if (v13)
        {
          v92 = *(v13 + 23);
          v93 = *(v13 + 24);
          v94 = *(v13 + 25);
          v95 = *(v13 + 26);
        }

        else
        {
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v92 = 0;
        }

        t1 = v141;
        v144 = CGRectApplyAffineTransform(*&v92, &t1);
        x = v144.origin.x;
        height = v144.size.height;
        v146.size.width = *(self + 224);
        v146.size.height = *(self + 232);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        y = v144.origin.y;
        width = v144.size.width;
        v145 = CGRectIntersection(v144, v146);
        v98 = v145.origin.x;
        v99 = v145.origin.y;
        v100 = v145.size.width;
        v101 = v145.size.height;
        v102 = [(PKMetalFramebuffer *)v40 size];
        v104 = v103;
        v105 = DKDRoundedRectForScale(v98, v99, v100, v101, 1.0);
        DKDNormalizedSubrectInRect(v105, v106, v107, v108);
        DKDRectFromNormalizedSubrect(0.0, 0.0, v102, v104, v109, v110, v111, v112);
        v117 = DKDRoundedRectForScale(v113, v114, v115, v116, 1.0);
        v119 = v118;
        v121 = v120;
        v123 = v122;
        v124 = [[PKMetalRenderState alloc] initWithCommandQueue:0 liveRendering:*(self + 800) defaultPipelineConfig:?];
        if (*(self + 728))
        {
          v125 = *(self + 56);
          if (v125)
          {
            v125 = v125[3];
          }

          v126 = v125;
          [(PKMetalRenderer *)self renderTexture:v126 intoFramebuffer:sizea sourceRect:v124 destinationRect:0 renderState:x blendMode:y, width, height, v117, v119, v121, v123];
        }

        if (v124)
        {
          *(v124 + 41) = clear;
        }

        v127 = *(self + 40);
        if (v127)
        {
          v127 = v127[3];
        }

        v128 = v127;
        [(PKMetalRenderer *)self renderTexture:v128 intoFramebuffer:v40 sourceRect:v124 destinationRect:0 renderState:x blendMode:y, width, height, v117, v119, v121, v123];

        if (v124)
        {
          [(PKMetalRenderState *)v124 commitAndPurgeResourceSet:?];
        }
      }

      [(PKMetalRenderer *)self purgePaintFramebuffers];
      *(self + 80) = 0u;
      *(self + 96) = 0u;
      *(self + 72) = 1;
    }
  }
}

uint64_t __83__PKMetalRenderer_updateTile_strokes_clear_waitUntilCompleted_offscreen_stopBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)framebufferForTile:(char)tile createIfNeeded:
{
  v5 = a2;
  framebuffer = [(PKRendererTile *)v5 framebuffer];
  if (!framebuffer)
  {
    v7 = +[PKRendererTileController sharedController];
    v8 = self[3];
    v9 = self[126];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__PKMetalRenderer_framebufferForTile_createIfNeeded___block_invoke;
    v11[3] = &unk_1E82DA310;
    v11[4] = self;
    framebuffer = [(PKRendererTileController *)v7 framebufferForTile:v5 createIfNeeded:tile device:v8 pixelFormat:v9 clearFramebufferBlock:v11];

    if (self[91])
    {
      if (framebuffer)
      {
        framebuffer[8] = 6;
      }
    }
  }

  return framebuffer;
}

- (void)multiplyFramebufferForTile:(char)tile createIfNeeded:
{
  v5 = a2;
  multiplyFramebuffer = [(PKRendererTile *)v5 multiplyFramebuffer];
  if (multiplyFramebuffer || (+[PKRendererTileController sharedController], v7 = objc_claimAutoreleasedReturnValue(), v8 = *(self + 24), v9 = *(self + 1008), v11[0] = MEMORY[0x1E69E9820], v11[1] = 3221225472, v11[2] = __61__PKMetalRenderer_multiplyFramebufferForTile_createIfNeeded___block_invoke, v11[3] = &unk_1E82DA310, v11[4] = self, [(PKRendererTileController *)v7 multiplyFramebufferForTile:v5 createIfNeeded:tile device:v8 pixelFormat:v9 clearFramebufferBlock:v11], multiplyFramebuffer = objc_claimAutoreleasedReturnValue(), v7, multiplyFramebuffer))
  {
    multiplyFramebuffer[8] = 7;
  }

  return multiplyFramebuffer;
}

- (double)calculateSourceRectForTile:(void *)tile tileTransform:(float64x2_t *)transform destinationQuadOut:(_OWORD *)out
{
  tileCopy = tile;
  v6 = tileCopy;
  if (tileCopy)
  {
    v7 = tileCopy[23];
    v8 = tileCopy[24];
    v9 = tileCopy[25];
    v10 = tileCopy[26];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0;
  }

  v11 = 0;
  v12 = *transform;
  v13 = transform[1];
  v14 = transform[2];
  do
  {
    *(v18 + v11) = vcvt_f32_f64(vaddq_f64(v14, vmlaq_n_f64(vmulq_n_f64(v13, COERCE_FLOAT(HIDWORD(*(v18 + v11)))), v12, COERCE_FLOAT(*(v18 + v11)))));
    v11 += 8;
  }

  while (v11 != 32);
  framebuffer = [(PKRendererTile *)v6 framebuffer];
  [(PKMetalFramebuffer *)framebuffer size];

  v16 = v18[1];
  *out = v18[0];
  out[1] = v16;

  return 0.0;
}

- (void)renderTile:(void *)tile tileFramebuffer:(float64x2_t *)framebuffer tileTransform:(void *)transform renderState:(int)state shouldComposite:
{
  v23 = a2;
  tileCopy = tile;
  transformCopy = transform;
  if (tileCopy)
  {
    v13 = framebuffer[1];
    v24[0] = *framebuffer;
    v24[1] = v13;
    v24[2] = framebuffer[2];
    v14 = [PKMetalRenderer calculateSourceRectForTile:v23 tileTransform:v24 destinationQuadOut:&v25];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [(PKMetalRenderer *)self setupOriginalBackFramebufferIfNecessary];
    if (state)
    {
      v21 = *(tileCopy + 8);
    }

    else
    {
      v21 = 0;
    }

    v22 = *(tileCopy + 3);
    [(PKMetalRenderer *)self renderTexture:v22 intoFramebuffer:*(self + 40) sourceRect:transformCopy destinationQuad:v21 renderState:v14 blendMode:v16, v18, v20, *&v25, *(&v25 + 1), v26, v27];
  }
}

- (void)buildRenderCacheForStrokes:(uint64_t)strokes
{
  v3 = a2;
  if (strokes)
  {
    memset(v4, 0, sizeof(v4));
    [PKMetalRenderer generateLiveStrokeCachesForStrokes:strokes destinationLocations:v3 startTime:? duration:?];
    v5 = v4;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

- (void)generateLiveStrokeCachesForStrokes:(uint64_t)strokes destinationLocations:(void *)locations startTime:duration:
{
  locationsCopy = locations;
  if (strokes)
  {
    *(strokes + 16) = 0;
    operator new();
  }
}

- (void)purgeRenderCachesForStrokes:(uint64_t)strokes
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (strokes)
  {
    strokeRenderCache = [(PKMetalResourceHandler *)*(strokes + 192) strokeRenderCache];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          _strokeUUID = [v9 _strokeUUID];
          [(PKLRUCache *)strokeRenderCache removeObjectForKey:_strokeUUID];

          _strokeDataUUID = [v9 _strokeDataUUID];
          [(PKLRUCache *)strokeRenderCache removeObjectForKey:_strokeDataUUID];
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }
}

- (void)purgeOriginalBackFramebuffer
{
  if (self)
  {
    if (*(self + 48) == 1)
    {
      [(PKMetalFramebuffer *)*(self + 40) decrementNonPurgeableCount];
      *(self + 48) = 0;
    }

    *(self + 72) = 1;
    if (*(self + 64) == 1)
    {
      [(PKMetalFramebuffer *)*(self + 56) decrementNonPurgeableCount];
      *(self + 64) = 0;
    }

    if (*(self + 976) == 1)
    {
      [(PKMetalFramebuffer *)*(self + 968) decrementNonPurgeableCount];
      *(self + 976) = 0;
    }

    if (*(self + 992) == 1)
    {
      [(PKMetalFramebuffer *)*(self + 984) decrementNonPurgeableCount];
      *(self + 992) = 0;
    }
  }
}

- (void)renderImageTexture:(__int128 *)texture imageTextureTransform:(void *)transform withTiles:(uint64_t)tiles tileTransform:(char)tileTransform waitUntilCompleted:
{
  v82 = *MEMORY[0x1E69E9840];
  v65 = a2;
  transformCopy = transform;
  if (self)
  {
    v11 = *(self + 728);
    if (v11 == 1)
    {
      [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
      if ((*(self + 497) & 1) == 0)
      {
        v12 = *(self + 192);
        if (v12)
        {
          v12 = *(v12 + 432);
        }

        *(self + 480) = v12;
      }

      *(self + 496) = v65 != 0;
      if (v65)
      {
        v13 = [[PKMetalRenderState alloc] initWithCommandQueue:0 liveRendering:*(self + 800) defaultPipelineConfig:?];
        v14 = *(self + 8);
        *(self + 8) = v13;

        v15 = *(self + 8);
        if (v15)
        {
          *(v15 + 41) = tileTransform;
        }

        [(PKMetalRenderer *)self setupDrawingFramebuffersIfNecessaryWantMemorylessPaint:?];
        v16 = *(self + 40);
        if (v16)
        {
          [(PKMetalRenderState *)*(self + 8) addPurgeableFramebuffer:v16];
        }

        v17 = *(self + 56);
        if (v17)
        {
          [(PKMetalRenderState *)*(self + 8) addPurgeableFramebuffer:v17];
        }

        commandBufferCreateIfNecessary = [(PKMetalRenderState *)*(self + 8) commandBufferCreateIfNecessary];
        [(PKMetalRenderState *)*(self + 8) setSixChannelContentTexture:v65];
        renderPassDescriptor = [MEMORY[0x1E6974128] renderPassDescriptor];
        colorAttachments = [renderPassDescriptor colorAttachments];
        v21 = [colorAttachments objectAtIndexedSubscript:0];

        [v21 setLoadAction:0];
        [v21 setStoreAction:1];
        v22 = *(self + 40);
        if (v22)
        {
          v22 = v22[3];
        }

        v23 = v22;
        [v21 setTexture:v23];

        v24 = [commandBufferCreateIfNecessary renderCommandEncoderWithDescriptor:renderPassDescriptor];
        [(PKMetalRenderState *)*(self + 8) setRenderEncoder:v24];
        v25 = *(self + 8);
        if (v25)
        {
          v26 = *texture;
          v27 = texture[2];
          v25[14] = texture[1];
          v25[15] = v27;
          v25[13] = v26;
          v28 = *(self + 8);
        }

        else
        {
          v28 = 0;
        }

        [(PKMetalRenderer *)self renderTexture:v65 intoFramebuffer:*(self + 40) clipRect:v28 renderState:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
        v29 = *(self + 8);
        if (v29)
        {
          v30 = MEMORY[0x1E695EFD0];
          v31 = *(MEMORY[0x1E695EFD0] + 16);
          v29[13] = *MEMORY[0x1E695EFD0];
          v29[14] = v31;
          v29[15] = *(v30 + 32);
        }

        [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
        *(self + 72) = 0;
      }

      else
      {
        *(self + 72) = 1;
      }
    }

    else if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      *(self + 977) = 1;
      *(self + 993) = 1;
      [(PKMetalRenderer *)self allocateAndClearAddMultiplyFramebuffersIfNecessary];
      if ([transformCopy count])
      {
        v32 = [[PKMetalRenderState alloc] initWithCommandQueue:0 liveRendering:*(self + 816) defaultPipelineConfig:?];
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v33 = transformCopy;
        v34 = [v33 countByEnumeratingWithState:&v76 objects:v81 count:16];
        if (v34)
        {
          v35 = *v77;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v77 != v35)
              {
                objc_enumerationMutation(v33);
              }

              v37 = *(*(&v76 + 1) + 8 * i);
              framebuffer = [(PKRendererTile *)v37 framebuffer];
              if (framebuffer)
              {
                v39 = *(tiles + 16);
                v70 = *tiles;
                v71 = v39;
                v72 = *(tiles + 32);
                v40 = [PKMetalRenderer calculateSourceRectForTile:v37 tileTransform:&v70 destinationQuadOut:&v73];
                v42 = v41;
                v44 = v43;
                v46 = v45;
                v47 = framebuffer[3];
                [(PKMetalRenderer *)self renderTexture:v47 intoFramebuffer:*(self + 968) sourceRect:v32 destinationQuad:0 renderState:v40 blendMode:v42, v44, v46, *&v73, *(&v73 + 1), v74, v75];
              }
            }

            v34 = [v33 countByEnumeratingWithState:&v76 objects:v81 count:16];
          }

          while (v34);
        }

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v48 = v33;
        v49 = [v48 countByEnumeratingWithState:&v66 objects:v80 count:16];
        if (v49)
        {
          v50 = *v67;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v67 != v50)
              {
                objc_enumerationMutation(v48);
              }

              v52 = *(*(&v66 + 1) + 8 * j);
              multiplyFramebuffer = [(PKRendererTile *)v52 multiplyFramebuffer];
              if (multiplyFramebuffer)
              {
                v54 = *(tiles + 16);
                v70 = *tiles;
                v71 = v54;
                v72 = *(tiles + 32);
                v55 = [PKMetalRenderer calculateSourceRectForTile:v52 tileTransform:&v70 destinationQuadOut:&v73];
                v57 = v56;
                v59 = v58;
                v61 = v60;
                v62 = multiplyFramebuffer[3];
                [(PKMetalRenderer *)self renderTexture:v62 intoFramebuffer:*(self + 984) sourceRect:v32 destinationQuad:0 renderState:v55 blendMode:v57, v59, v61, *&v73, *(&v73 + 1), v74, v75];
              }
            }

            v49 = [v48 countByEnumeratingWithState:&v66 objects:v80 count:16];
          }

          while (v49);
        }
      }
    }

    else if (!v11)
    {
      if (v65)
      {
        [(PKMetalRenderer *)self renderTexture:v65];
      }

      v63 = *(tiles + 16);
      v70 = *tiles;
      v71 = v63;
      v72 = *(tiles + 32);
      [(PKMetalRenderer *)self renderTiles:transformCopy clearBackBuffer:v65 == 0 tileTransform:&v70 waitUntilCompleted:tileTransform];
    }
  }
}

- (void)renderTexture:(uint64_t)texture
{
  v5 = a2;
  if (texture)
  {
    [(PKMetalRenderer *)texture setupOriginalBackFramebufferIfNecessary];
    v3 = MEMORY[0x1E695F050];
    [(PKMetalRenderer *)texture renderTexture:v5 intoFramebuffer:*(texture + 40) clipRect:0 renderState:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [(PKMetalRenderer *)texture purgePaintFramebuffers];
    *(texture + 121) = 1;
    *(texture + 153) = 1;
    *(texture + 137) = 1;
    *(texture + 169) = 1;
    v4 = v3[1];
    *(texture + 672) = *v3;
    *(texture + 688) = v4;
  }
}

- (void)renderTiles:(int)tiles clearBackBuffer:(float64x2_t *)buffer tileTransform:(char)transform waitUntilCompleted:
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (self)
  {
    [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
    if (tiles)
    {
      [(PKMetalRenderer *)self finishRendering];
      *(self + 72) = 1;
    }

    [(PKMetalRenderer *)self setupRenderStateForStrokeRenderingNumPaintBuffers:0 needRenderMask:?];
    v10 = *(self + 8);
    if (v10)
    {
      *(v10 + 41) = transform;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = [(PKMetalRenderer *)self framebufferForTile:v15 createIfNeeded:0];
          v17 = buffer[1];
          v18[0] = *buffer;
          v18[1] = v17;
          v18[2] = buffer[2];
          [(PKMetalRenderer *)self renderTile:v15 tileFramebuffer:v16 tileTransform:v18 renderState:*(self + 8) shouldComposite:tiles ^ 1];
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [(PKMetalRenderer *)self teardownRenderStateIfNecessary];
  }
}

- (void)renderTiles:(void *)tiles intoTile:(char)tile waitUntilCompleted:
{
  v75 = *MEMORY[0x1E69E9840];
  v66 = a2;
  tilesCopy = tiles;
  if (!self)
  {
    goto LABEL_49;
  }

  v7 = 0;
  v8 = 1;
  if (*(self + 728))
  {
    v8 = 2;
  }

  v65 = v8;
  v63 = v8 - 1;
  do
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v66;
    v9 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (!v9)
    {

      v11 = 0;
      v10 = 0;
      goto LABEL_48;
    }

    v10 = 0;
    v11 = 0;
    v12 = *v71;
    do
    {
      v13 = 0;
      do
      {
        if (*v71 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v70 + 1) + 8 * v13);
        if (v7)
        {
          [(PKMetalRenderer *)self multiplyFramebufferForTile:0 createIfNeeded:?];
        }

        else
        {
          [(PKMetalRenderer *)self framebufferForTile:0 createIfNeeded:?];
        }
        v15 = ;
        if (!v15)
        {
          goto LABEL_38;
        }

        if (!v10)
        {
          v10 = [[PKMetalRenderState alloc] initWithCommandQueue:0 liveRendering:*(self + 800) defaultPipelineConfig:?];
          commandBufferCreateIfNecessary = [(PKMetalRenderState *)v10 commandBufferCreateIfNecessary];
        }

        if (!v11)
        {
          if (v7)
          {
            [(PKMetalRenderer *)self multiplyFramebufferForTile:tilesCopy createIfNeeded:1];
          }

          else
          {
            [(PKMetalRenderer *)self framebufferForTile:tilesCopy createIfNeeded:1];
          }
          v11 = ;
        }

        if (v14)
        {
          v17 = v14[16];
          if (tilesCopy)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v17 = 0;
          if (tilesCopy)
          {
LABEL_23:
            v18 = tilesCopy[16];
            goto LABEL_24;
          }
        }

        v18 = 0;
LABEL_24:
        if (v17 == v18)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          if (v14)
          {
            v23 = v14[23];
            v20 = v14[24];
            v21 = v14[25];
            v22 = v14[26];
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          if (tilesCopy)
          {
            v26 = tilesCopy[23];
            v19 = tilesCopy[24];
            v24 = tilesCopy[25];
            v25 = tilesCopy[26];
          }

          if (CGRectEqualToRect(*&v23, *(&v19 - 1)))
          {
            v27 = v15[3];
            [(PKMetalRenderer *)self renderTexture:v27 intoFramebuffer:v11 clipRect:v10 renderState:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
LABEL_37:

            goto LABEL_38;
          }
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        if (v14)
        {
          v32 = v14[23];
          v29 = v14[24];
          v30 = v14[25];
          v31 = v14[26];
        }

        v33 = 0;
        v34 = 0;
        v35 = 0;
        if (tilesCopy)
        {
          v35 = tilesCopy[23];
          v28 = tilesCopy[24];
          v33 = tilesCopy[25];
          v34 = tilesCopy[26];
        }

        v76 = CGRectIntersection(*&v32, *(&v28 - 1));
        x = v76.origin.x;
        y = v76.origin.y;
        width = v76.size.width;
        height = v76.size.height;
        if (!CGRectIsNull(v76))
        {
          v40 = [(PKMetalFramebuffer *)v15 size];
          v42 = v41;
          DKDNormalizedSubrectInRect(x, y, width, height);
          DKDRectFromNormalizedSubrect(0.0, 0.0, v40, v42, v43, v44, v45, v46);
          v78 = CGRectIntegral(v77);
          v47 = v78.origin.x;
          v48 = v78.origin.y;
          v49 = v78.size.width;
          v50 = v78.size.height;
          v51 = [(PKMetalFramebuffer *)v11 size];
          v67 = v52;
          v68 = v51;
          DKDNormalizedSubrectInRect(x, y, width, height);
          DKDRectFromNormalizedSubrect(0.0, 0.0, v68, v67, v53, v54, v55, v56);
          v80 = CGRectIntegral(v79);
          v57 = v80.origin.x;
          v58 = v80.origin.y;
          v59 = v80.size.width;
          v60 = v80.size.height;
          v27 = v15[3];
          [(PKMetalRenderer *)self renderTexture:v27 intoFramebuffer:v11 sourceRect:v10 destinationRect:0 renderState:v47 blendMode:v48, v49, v50, v57, v58, v59, v60];
          goto LABEL_37;
        }

LABEL_38:

        ++v13;
      }

      while (v9 != v13);
      v61 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      v9 = v61;
    }

    while (v61);

    if (v10)
    {
      tileCopy = tile;
      if (v7 != v63)
      {
        tileCopy = 0;
      }

      *(v10 + 41) = tileCopy;
      [(PKMetalRenderState *)v10 commitAndPurgeResourceSet:?];
    }

LABEL_48:

    ++v7;
  }

  while (v7 != v65);
LABEL_49:
}

- (void)clearTile:(uint64_t)tile waitUntilCompleted:(void *)completed
{
  completedCopy = completed;
  if (tile)
  {
    v3 = +[PKRendererTileController sharedController];
    [(PKRendererTileController *)v3 didTeardownTile:completedCopy];

    [(PKRendererTile *)completedCopy clearFramebuffersThreadSafe];
  }
}

- (void)copyFromFramebuffer:(uint64_t)framebuffer toFramebuffer:(CGFloat)toFramebuffer clipRect:(CGFloat)rect renderEncoder:(CGFloat)encoder paintIndex:(CGFloat)index alphaBlendFactor:(double)factor
{
  v27 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v22 = 0u;
  v23 = 0u;
  v28.origin.x = toFramebuffer;
  v28.origin.y = rect;
  v28.size.width = encoder;
  v28.size.height = index;
  if (v23)
  {
    v16 = *(&v23 + 1) == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v24 = v22;
    v25 = v23;
    [v15 setScissorRect:&v24];
    v17 = [PKMetalRenderer setupAlphaBlendingForAlphaBlendFactor:v15 renderEncoder:factor];
    v18 = *(self + 8);
    if (v18)
    {
      pipelineConfig = [(PKMetalRenderState *)v18 pipelineConfig];
    }

    else
    {
      pipelineConfig = *(self + 800);
    }

    v20 = *(self + 192);
    *&v24 = 13;
    *(&v24 + 1) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(framebuffer == 0), 0x1FuLL)), 0x200000001, 0x500000004);
    LOWORD(v25) = 0;
    BYTE2(v25) = v17;
    *(&v25 + 3) = 0;
    *(&v25 + 1) = 0;
    v26 = pipelineConfig;
    v21 = [(PKMetalResourceHandler *)v20 namedShaderForKey:?];
    [(PKMetalRenderer *)self setupForDefaultUberVertexShaderInRenderEncoder:v15];
    [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v21 renderEncoder:v15];
    [(PKMetalRenderer *)self disableClippingForRenderEncoder:v15];
  }
}

- (void)copyIntoPaintFromTexture:(void *)texture clipRect:(uint64_t)rect renderEncoder:(CGFloat)encoder paintIndex:(CGFloat)index alphaBlendFactor:(CGFloat)factor
{
  v32 = *MEMORY[0x1E69E9840];
  v17 = a2;
  textureCopy = texture;
  v27 = 0u;
  v28 = 0u;
  v33.origin.x = encoder;
  v33.origin.y = index;
  v33.size.width = factor;
  v33.size.height = a8;
  if (v28)
  {
    v19 = *(&v28 + 1) == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    v29 = v27;
    v30 = v28;
    [textureCopy setScissorRect:&v29];
    [textureCopy setFragmentTexture:v17 atIndex:0];
    v20 = [PKMetalRenderer setupAlphaBlendingForAlphaBlendFactor:textureCopy renderEncoder:a9];
    [(PKMetalRenderer *)self setupForDefaultUberVertexShaderInRenderEncoder:textureCopy];
    v21 = *(self + 8);
    if (v21)
    {
      pipelineConfig = [(PKMetalRenderState *)v21 pipelineConfig];
    }

    else
    {
      pipelineConfig = *(self + 800);
    }

    v23 = *(self + 192);
    *&v29 = 7;
    if (rect)
    {
      v24 = 4;
    }

    else
    {
      v24 = 1;
    }

    *(&v29 + 1) = v24;
    LOWORD(v30) = 0;
    BYTE2(v30) = v20;
    *(&v30 + 3) = 0;
    *(&v30 + 1) = 0;
    v31 = pipelineConfig;
    v25 = [(PKMetalResourceHandler *)v23 namedShaderForKey:?];
    [(PKMetalRenderer *)self renderFullscreenQuadWithShader:v25 renderEncoder:textureCopy];

    [(PKMetalRenderer *)self disableClippingForRenderEncoder:textureCopy];
    v26 = *(self + 8);
    if (v26)
    {
      [objc_opt_class() renderTargetBarrierForRenderEncoder:*(v26 + 80)];
    }
  }
}

- (BOOL)setupAlphaBlendingForAlphaBlendFactor:(void *)factor renderEncoder:(double)encoder
{
  factorCopy = factor;
  v4 = factorCopy;
  if (encoder < 1.0)
  {
    encoderCopy = encoder;
    v7 = encoderCopy;
    [factorCopy setFragmentBytes:&v7 length:4 atIndex:0];
  }

  return encoder < 1.0;
}

- (double)particleOffsetAtEndOfStroke:(uint64_t)stroke forSecondaryParticles:(void *)particles
{
  particlesCopy = particles;
  if (stroke)
  {
    operator new();
  }

  return 0.0;
}

- (void)setLinedPaper:(uint64_t)paper
{
  if (paper)
  {
    objc_storeStrong((paper + 1016), a2);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0;
  *(self + 5) = 0;
  *(self + 7) = 0;
  *(self + 32) = 0;
  *(self + 14) = 0;
  *(self + 60) = 0;
  *(self + 16) = 0;
  *(self + 68) = 0;
  *(self + 18) = 0;
  *(self + 76) = 0;
  *(self + 20) = 0;
  *(self + 84) = 0;
  *(self + 121) = 0;
  *(self + 488) = 0;
  *(self + 496) = 0;
  *(self + 123) = 0;
  *(self + 81) = 0;
  *(self + 616) = 0u;
  *(self + 632) = 0u;
  *(self + 584) = 0u;
  *(self + 600) = 0u;
  *(self + 552) = 0u;
  *(self + 568) = 0u;
  *(self + 520) = 0u;
  *(self + 536) = 0u;
  *(self + 504) = 0u;
  *(self + 792) = 0u;
  *(self + 808) = 0u;
  *(self + 776) = 0u;
  return self;
}

@end