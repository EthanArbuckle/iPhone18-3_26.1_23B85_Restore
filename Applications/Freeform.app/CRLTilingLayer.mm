@interface CRLTilingLayer
- (BOOL)crl_tilingSafeHasContents;
- (BOOL)p_updateTileSizeWithLayerSize:(CGSize)size;
- (CRLTilingLayer)init;
- (id)p_deferredTileBlocksForCurrentThread;
- (id)p_nonTileAndContentLayers;
- (id)p_tileAndContentLayers;
- (id)p_tileLayers;
- (void)crl_cancelLayoutForTilingLayers;
- (void)crl_setNeedsLayoutForTilingLayers;
- (void)crl_tilingSafeSetSublayers:(id)sublayers;
- (void)display;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)i_drawRect:(CGRect)rect inContext:(CGContext *)context inBackground:(BOOL)background;
- (void)i_drawTile:(id)tile inContext:(CGContext *)context;
- (void)layoutSublayers;
- (void)setContents:(id)contents;
- (void)setContentsScale:(double)scale;
- (void)setForceTiled:(BOOL)tiled;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setNeedsLayout;
- (void)setTileContents:(id)contents;
- (void)setTilingMode:(int64_t)mode;
@end

@implementation CRLTilingLayer

- (CRLTilingLayer)init
{
  v11.receiver = self;
  v11.super_class = CRLTilingLayer;
  v2 = [(CRLTilingLayer *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_tilingMode = 0;
    [(CRLTilingLayer *)v2 contentsScale];
    v5 = 640.0 / v4;
    v3->_tileSize.width = v5;
    v3->_tileSize.height = v5;
    *&v3->_flags |= 2u;
    v6 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
    deferredTileBlocks = v3->_deferredTileBlocks;
    v3->_deferredTileBlocks = v6;

    v8 = dispatch_semaphore_create(1);
    deferredTileBlocksLock = v3->_deferredTileBlocksLock;
    v3->_deferredTileBlocksLock = v8;

    __dmb(0xBu);
  }

  return v3;
}

- (void)setContentsScale:(double)scale
{
  [(CRLTilingLayer *)self contentsScale];
  if (v5 != scale)
  {
    self->_tileSize.width = 640.0 / scale;
    self->_tileSize.height = 640.0 / scale;
    [(CRLTilingLayer *)self setNeedsLayout];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    p_tileLayers = [(CRLTilingLayer *)self p_tileLayers];
    v7 = [p_tileLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(p_tileLayers);
          }

          [*(*(&v12 + 1) + 8 * v10) setContentsScale:scale];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [p_tileLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  v11.receiver = self;
  v11.super_class = CRLTilingLayer;
  [(CRLTilingLayer *)&v11 setContentsScale:scale];
}

- (void)setContents:(id)contents
{
  v5.receiver = self;
  v5.super_class = CRLTilingLayer;
  [(CRLTilingLayer *)&v5 setContents:contents];
  flags = self->_flags;
  *&self->_flags = flags | 2;
  if (flags)
  {
    [(CRLTilingLayer *)self setNeedsLayout];
  }
}

- (void)setTileContents:(id)contents
{
  contentsCopy = contents;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!contentsCopy || (isKindOfClass & 1) != 0)
  {
    if (contentsCopy)
    {
      [contentsCopy setZPosition:-10000.0];
    }

    [(CRLTilingLayer *)&v7 setContents:0, v6.receiver, v6.super_class, self, CRLTilingLayer];
  }

  else
  {
    [(CRLTilingLayer *)&v6 setContents:contentsCopy, self, CRLTilingLayer, v7.receiver, v7.super_class];
  }
}

- (void)display
{
  if (*&self->_flags)
  {
    contents = [(CRLTilingLayer *)self contents];

    if (contents)
    {
      v5.receiver = self;
      v5.super_class = CRLTilingLayer;
      [(CRLTilingLayer *)&v5 setContents:0];
    }
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLTilingLayer;
    [(CRLTilingLayer *)&v4 display];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if ((*&self->_flags & 2) != 0)
  {
    *&self->_flags &= ~2u;
    [(CRLTilingLayer *)self setNeedsLayout];
    size = CGRectNull.size;
    self->_lastVisibleBounds.origin = CGRectNull.origin;
    self->_lastVisibleBounds.size = size;
    self->_lastBoundsSize = CGSizeZero;
  }

  v32.receiver = self;
  v32.super_class = CRLTilingLayer;
  [(CRLTilingLayer *)&v32 setNeedsDisplayInRect:x, y, width, height];
  p_deferredTileBlocksForCurrentThread = [(CRLTilingLayer *)self p_deferredTileBlocksForCurrentThread];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  p_tileLayers = [(CRLTilingLayer *)self p_tileLayers];
  v11 = [p_tileLayers countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(p_tileLayers);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 frame];
        v35.origin.x = v16;
        v35.origin.y = v17;
        v35.size.width = v18;
        v35.size.height = v19;
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        if (CGRectIntersectsRect(v34, v35))
        {
          [(CRLTilingLayer *)self convertRect:v15 toLayer:x, y, width, height];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_100504018;
          v27[3] = &unk_10183D298;
          v27[4] = v15;
          v27[5] = v20;
          v27[6] = v21;
          v27[7] = v22;
          v27[8] = v23;
          v24 = [v27 copy];
          v25 = objc_retainBlock(v24);
          [p_deferredTileBlocksForCurrentThread addObject:v25];
        }
      }

      v12 = [p_tileLayers countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  if ([p_deferredTileBlocksForCurrentThread count])
  {
    v26.receiver = self;
    v26.super_class = CRLTilingLayer;
    [(CRLTilingLayer *)&v26 setNeedsLayout];
  }
}

- (void)setNeedsLayout
{
  *&self->_flags |= 8u;
  v2.receiver = self;
  v2.super_class = CRLTilingLayer;
  [(CRLTilingLayer *)&v2 setNeedsLayout];
}

- (void)crl_setNeedsLayoutForTilingLayers
{
  [(CRLTilingLayer *)self setNeedsLayout];
  v3.receiver = self;
  v3.super_class = CRLTilingLayer;
  [(CRLTilingLayer *)&v3 crl_setNeedsLayoutForTilingLayers];
}

- (void)crl_cancelLayoutForTilingLayers
{
  *&self->_flags &= ~8u;
  v2.receiver = self;
  v2.super_class = CRLTilingLayer;
  [(CRLTilingLayer *)&v2 crl_cancelLayoutForTilingLayers];
}

- (void)layoutSublayers
{
  p_deferredTileBlocksForCurrentThread = [(CRLTilingLayer *)self p_deferredTileBlocksForCurrentThread];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v4 = [p_deferredTileBlocksForCurrentThread countByEnumeratingWithState:&v108 objects:v113 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v109;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v109 != v6)
        {
          objc_enumerationMutation(p_deferredTileBlocksForCurrentThread);
        }

        (*(*(*(&v108 + 1) + 8 * i) + 16))();
      }

      v5 = [p_deferredTileBlocksForCurrentThread countByEnumeratingWithState:&v108 objects:v113 count:16];
    }

    while (v5);
  }

  [p_deferredTileBlocksForCurrentThread removeAllObjects];
  if ((*&self->_flags & 8) != 0)
  {
    delegate = [(CRLTilingLayer *)self delegate];
    selfCopy = self;
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(CRLTilingLayer *)self delegate];
      v11 = [delegate2 shouldLayoutTilingLayer:self];

      if (!v11)
      {
        goto LABEL_71;
      }
    }

    else
    {
    }

    v107.receiver = selfCopy;
    v107.super_class = CRLTilingLayer;
    [(CRLTilingLayer *)&v107 layoutSublayers];
    [(CRLTilingLayer *)selfCopy bounds];
    v13 = v12;
    v15 = v14;
    v92 = v16;
    v93 = v17;
    superlayer = [(CRLTilingLayer *)selfCopy superlayer];

    if (superlayer)
    {
      delegate3 = [(CRLTilingLayer *)selfCopy delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        delegate4 = [(CRLTilingLayer *)selfCopy delegate];
        [delegate4 visibleBoundsForTilingLayer:selfCopy];
        x = v22;
        y = v24;
        width = v26;
        height = v28;
      }

      else
      {
        v30 = selfCopy;
        superlayer2 = [(CRLTilingLayer *)v30 superlayer];
        v32 = v93 > 0.0;
        v33 = v92 > 0.0;
        if (superlayer2 && v93 > 0.0 && v92 > 0.0)
        {
          x = v13;
          y = v15;
          width = v92;
          height = v93;
          v34 = v30;
          do
          {
            [superlayer2 convertRect:v34 fromLayer:{x, y, width, height}];
            x = v35;
            y = v36;
            width = v37;
            height = v38;
            if ([superlayer2 masksToBounds])
            {
              [superlayer2 bounds];
              v121.origin.x = v39;
              v121.origin.y = v40;
              v121.size.width = v41;
              v121.size.height = v42;
              v114.origin.x = x;
              v114.origin.y = y;
              v114.size.width = width;
              v114.size.height = height;
              v115 = CGRectIntersection(v114, v121);
              x = v115.origin.x;
              y = v115.origin.y;
              width = v115.size.width;
              height = v115.size.height;
            }

            v43 = superlayer2;

            superlayer2 = [(CRLTilingLayer *)v43 superlayer];

            v32 = height > 0.0;
            v33 = width > 0.0;
            if (!superlayer2)
            {
              break;
            }

            if (height <= 0.0)
            {
              break;
            }

            v34 = v43;
          }

          while (width > 0.0);
        }

        else
        {
          v43 = v30;
          height = v93;
          width = v92;
          y = v15;
          x = v13;
        }

        if (v32 && v33)
        {
          [(CRLTilingLayer *)v30 convertRect:v43 fromLayer:x, y, width, height];
          x = v44;
          y = v45;
          width = v46;
          height = v47;
        }
      }
    }

    else
    {
      x = CGRectNull.origin.x;
      y = CGRectNull.origin.y;
      width = CGRectNull.size.width;
      height = CGRectNull.size.height;
    }

    v116.origin.x = x;
    v116.origin.y = y;
    v116.size.width = width;
    v116.size.height = height;
    v122.origin.x = v13;
    v122.origin.y = v15;
    v122.size.width = v92;
    v122.size.height = v93;
    v117 = CGRectIntersection(v116, v122);
    v48 = v117.origin.x;
    v49 = v117.origin.y;
    v50 = v117.size.width;
    v51 = v117.size.height;
    v52 = [(CRLTilingLayer *)selfCopy p_updateTileSizeWithLayerSize:v92, v93];
    p_width = &selfCopy->_tileSize.width;
    v53.f64[0] = v92;
    v53.f64[1] = v93;
    flags = selfCopy->_flags;
    v55 = vcvtq_u64_f64(vrndpq_f64(vdivq_f64(v53, selfCopy->_tileSize)));
    v56 = v55;
    if (v55.i64[0] > 1uLL || v55.i64[1] > 1uLL)
    {
      LOBYTE(v58) = 1;
    }

    else
    {
      v58 = (*&flags >> 2) & 1;
    }

    v59 = *&flags & 0xF6 | v58;
    *&selfCopy->_flags = v59;
    v90 = v55;
    v89 = v52;
    if ((*&flags & 2) != 0)
    {
      p_tileLayers = [(CRLTilingLayer *)selfCopy p_tileLayers];
      v60 = [p_tileLayers count] != 0;

      v59 = selfCopy->_flags;
    }

    else
    {
      v60 = 0;
    }

    v62 = *&flags & 1;
    p_lastVisibleBounds = &selfCopy->_lastVisibleBounds;
    v64 = sub_10011EE4C(v48, v49, v50, v51, selfCopy->_lastVisibleBounds.origin.x, selfCopy->_lastVisibleBounds.origin.y, selfCopy->_lastVisibleBounds.size.width, selfCopy->_lastVisibleBounds.size.height);
    v65 = selfCopy;
    v66 = v59 & 1;
    if (!v64 || v62 != v66 || v60 | !sub_10011ECC8(v65[9], v65[10], v92, v93))
    {
      v91 = v65;
      if (v62 != v66 && (v59 & 2) == 0)
      {
        if (v59)
        {
          [v65 setTileContents:0];
        }

        else
        {
          v106.receiver = v65;
          v106.super_class = CRLTilingLayer;
          [(CRLTilingLayer *)&v106 setNeedsDisplayInRect:CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height];
        }
      }

      IsNull = CGRectIsNull(*p_lastVisibleBounds);
      p_lastVisibleBounds->origin.x = v48;
      p_lastVisibleBounds->origin.y = v49;
      p_lastVisibleBounds->size.width = v50;
      p_lastVisibleBounds->size.height = v51;
      v91[9] = v92;
      v91[10] = v93;
      v68 = objc_alloc_init(NSMutableIndexSet);
      v118.origin.x = v48;
      v118.origin.y = v49;
      v118.size.width = v50;
      v118.size.height = v51;
      v69 = CGRectIsNull(v118);
      if ((v91[4] & 3) == 1 && !v69 && v51 > 0.0 && v50 > 0.0)
      {
        v70 = sub_10011F31C(v48, v49, v13);
        v123.size.width = *p_width;
        v123.size.height = p_width[1];
        *&v70 = v70 / *p_width;
        *&v71 = v71 / v123.size.height;
        v72 = (floorf(*&v70) + (floorf(*&v71) * v56.u64[0]));
        v123.origin.x = v13 + *p_width * (v72 % v56.i64[0]);
        v123.origin.y = v15 + v123.size.height * (v72 / v56.i64[0]);
        v119.origin.x = v48;
        v119.origin.y = v49;
        v119.size.width = v50;
        v119.size.height = v51;
        v120 = CGRectUnion(v119, v123);
        v73 = vcvtpd_u64_f64(v120.size.height / p_width[1]);
        if (v73)
        {
          v74 = 0;
          v75 = vcvtpd_u64_f64(v120.size.width / *p_width);
          do
          {
            if (v75)
            {
              v76 = v72;
              v77 = v75;
              do
              {
                [v68 addIndex:v76++];
                --v77;
              }

              while (v77);
            }

            ++v74;
            v72 += v56.i64[0];
          }

          while (v74 != v73);
        }
      }

      v78 = objc_alloc_init(NSMutableArray);
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      p_tileLayers2 = [v91 p_tileLayers];
      v80 = [p_tileLayers2 countByEnumeratingWithState:&v102 objects:v112 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v103;
        v83 = IsNull | v89;
        do
        {
          for (j = 0; j != v81; j = j + 1)
          {
            if (*v103 != v82)
            {
              objc_enumerationMutation(p_tileLayers2);
            }

            v85 = *(*(&v102 + 1) + 8 * j);
            index = [v85 index];
            if ((v83 & 1) != 0 || (v87 = index, ([v68 containsIndex:index] & 1) == 0))
            {
              [v78 addObject:v85];
            }

            else
            {
              [v68 removeIndex:v87];
              [v85 updateFrameWithTileSize:*&v56 tilesWide:*p_width tilesHigh:p_width[1]];
            }
          }

          v81 = [p_tileLayers2 countByEnumeratingWithState:&v102 objects:v112 count:16];
        }

        while (v81);
      }

      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_1005048FC;
      v95[3] = &unk_10186AD70;
      v97 = v90;
      v98 = v13;
      v99 = v15;
      v100 = v92;
      v101 = v93;
      v95[4] = v91;
      v96 = v78;
      v88 = v78;
      [v68 enumerateIndexesUsingBlock:v95];
      [v88 makeObjectsPerformSelector:"removeFromSuperlayer"];
    }
  }

LABEL_71:
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  layerCopy = layer;
  superlayer = [layerCopy superlayer];
  v7 = objc_opt_class();
  v8 = objc_opt_class();

  superlayer2 = [layerCopy superlayer];
  v10 = superlayer2;
  if (v7 == v8)
  {
    v9Superlayer = [(CRLTilingLayer *)superlayer2 superlayer];

    if (v9Superlayer != self)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013886EC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101388700();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101388794();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v15);
      }

      v16 = [NSString stringWithUTF8String:"[CRLTilingLayer drawLayer:inContext:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTilingLayer.m"];
      [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:379 isFatal:0 description:"This tiling layer is not responsible for the layer asking to be drawn"];
    }

    superlayer3 = [layerCopy superlayer];
    [superlayer3 frame];
    [(CRLTilingLayer *)self setNeedsDisplayInRect:?];
  }

  else
  {

    if (v10 != self)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138861C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101388630();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013886C4();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLTilingLayer drawLayer:inContext:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTilingLayer.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:382 isFatal:0 description:"This tiling layer is not responsible for the layer asking to be drawn"];
    }

    [(CRLTilingLayer *)self setNeedsDisplay];
  }
}

- (void)setTilingMode:(int64_t)mode
{
  if (self->_tilingMode != mode)
  {
    self->_tilingMode = mode;
    if ((*&self->_flags & 2) == 0)
    {
      size = CGRectNull.size;
      self->_lastVisibleBounds.origin = CGRectNull.origin;
      self->_lastVisibleBounds.size = size;
      self->_lastBoundsSize = CGSizeZero;
      [(CRLTilingLayer *)self setNeedsDisplay];

      [(CRLTilingLayer *)self setNeedsLayout];
    }
  }
}

- (void)setForceTiled:(BOOL)tiled
{
  if (tiled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_flags = *&self->_flags & 0xFB | v3;
}

- (void)crl_tilingSafeSetSublayers:(id)sublayers
{
  sublayersCopy = sublayers;
  p_nonTileAndContentLayers = [(CRLTilingLayer *)self p_nonTileAndContentLayers];
  v5 = [sublayersCopy isEqualToArray:p_nonTileAndContentLayers];

  if ((v5 & 1) == 0)
  {
    p_tileAndContentLayers = [(CRLTilingLayer *)self p_tileAndContentLayers];
    v7 = [p_tileAndContentLayers arrayByAddingObjectsFromArray:sublayersCopy];
    [(CRLTilingLayer *)self setSublayers:v7];
  }
}

- (BOOL)crl_tilingSafeHasContents
{
  if (*&self->_flags)
  {
    p_tileLayers = [(CRLTilingLayer *)self p_tileLayers];
    v2 = [p_tileLayers count] != 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CRLTilingLayer;
    return [(CRLTilingLayer *)&v5 crl_tilingSafeHasContents];
  }

  return v2;
}

- (void)i_drawTile:(id)tile inContext:(CGContext *)context
{
  tileCopy = tile;
  if (CGRectIsNull(self->_lastVisibleBounds))
  {
    v7 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013887BC();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v12 = v8;
      *buf = 67110658;
      v14 = v7;
      v15 = 2082;
      v16 = "[CRLTilingLayer i_drawTile:inContext:]";
      v17 = 2082;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTilingLayer.m";
      v19 = 1024;
      v20 = 435;
      v21 = 2048;
      selfCopy = self;
      v23 = 2048;
      v24 = tileCopy;
      v25 = 2048;
      index = [tileCopy index];
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Shouldn't be drawing tiles for an hidden layer %p, tile %p index %ld", buf, 0x40u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013887D0();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLTilingLayer i_drawTile:inContext:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLTilingLayer.m"];
    +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, v11, 435, 0, "Shouldn't be drawing tiles for an hidden layer %p, tile %p index %ld", self, tileCopy, [tileCopy index]);
  }

  [tileCopy frame];
  [(CRLTilingLayer *)self i_drawRect:context inContext:0 inBackground:?];
}

- (void)i_drawRect:(CGRect)rect inContext:(CGContext *)context inBackground:(BOOL)background
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, -x, -y);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGContextClipToRect(context, v12);
  [(CRLTilingLayer *)self drawInContext:context];

  CGContextRestoreGState(context);
}

- (BOOL)p_updateTileSizeWithLayerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CRLTilingLayer *)self contentsScale];
  v7 = 2048.0 / v6;
  v8 = 640.0 / v6;
  v9 = fmax(width, height) > 2048.0 / v6;
  v10 = width * height;
  v11 = v8 * v8;
  tilingMode = self->_tilingMode;
  if (tilingMode <= 3)
  {
    switch(tilingMode)
    {
      case 1:
        if (v10 > v11)
        {
          v9 = 1;
        }

        break;
      case 2:
        if (v10 > v11)
        {
          v9 = 1;
        }

        v13 = v9;
        v14 = v8 + v8;
        v15 = v8 * 0.5;
        goto LABEL_28;
      case 3:
        if (v10 > v11)
        {
          v9 = 1;
        }

        v13 = v9;
        v14 = v8 * 0.5;
        v15 = v8 + v8;
LABEL_28:
        if (v13)
        {
          height = v15;
        }

        if (v13)
        {
          width = v14;
        }

        goto LABEL_38;
    }

    goto LABEL_17;
  }

  v16 = v7 * v7 * 0.25;
  switch(tilingMode)
  {
    case 4:
      if (v10 > v16)
      {
        v9 = 1;
      }

      if (v9)
      {
        height = v8 + v8;
        width = v7;
      }

      break;
    case 5:
      if (v10 > v16)
      {
        v9 = 1;
      }

      if (v9)
      {
        height = v7;
        width = v8 + v8;
      }

      break;
    case 6:
      if (v10 > v11)
      {
        v9 = 1;
      }

      if (v9)
      {
        v17 = sub_10012211C(width);
        v18 = v17 / v8;
        *&v17 = v17 / ceilf(v18);
        width = (floorf(*&v17) + 1.0);
        *&v17 = v19 / v8;
        *&v17 = v19 / ceilf(*&v17);
        height = (floorf(*&v17) + 1.0);
      }

      break;
    default:
LABEL_17:
      if (v9)
      {
        height = v8;
        width = v8;
      }

      break;
  }

LABEL_38:
  v20 = height != self->_tileSize.height || width != self->_tileSize.width;
  if (v20)
  {
    self->_tileSize.width = width;
    self->_tileSize.height = height;
  }

  return v20;
}

- (id)p_tileLayers
{
  v3 = +[NSMutableArray array];
  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(CRLTilingLayer *)self sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)p_tileAndContentLayers
{
  v3 = +[NSMutableArray array];
  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(CRLTilingLayer *)self sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)p_nonTileAndContentLayers
{
  v3 = +[NSMutableArray array];
  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(CRLTilingLayer *)self sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v3)
          {
            v3 = +[NSMutableArray array];
          }

          [v3 addObject:v9];
        }
      }

      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)p_deferredTileBlocksForCurrentThread
{
  dispatch_semaphore_wait(self->_deferredTileBlocksLock, 0xFFFFFFFFFFFFFFFFLL);
  v3 = +[NSThread currentThread];
  v4 = [(NSMapTable *)self->_deferredTileBlocks objectForKey:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableArray);
    [(NSMapTable *)self->_deferredTileBlocks setObject:v4 forKey:v3];
  }

  dispatch_semaphore_signal(self->_deferredTileBlocksLock);

  return v4;
}

@end