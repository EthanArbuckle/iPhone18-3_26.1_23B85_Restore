@interface AESceneGroupedTilingLayout
- (AEBrowserLayoutDelegate)delegate;
- (AESceneGroupedTilingLayout)initWithDataSource:(id)source layoutStyle:(int64_t)style gradientTileInfo:(id)info orientation:(int64_t)orientation;
- (AESceneGroupedTilingLayout)initWithDataSource:(id)source layoutStyle:(int64_t)style orientation:(int64_t)orientation;
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (CGPoint)_boundedVisibleOrigin;
- (CGRect)_frameForGridTile:(int64_t)tile inSection:(int64_t)section;
- (CGRect)_gradientShadowFrameForItemFrame:(CGRect)result;
- (CGRect)_progressFrameForGridTileFrame:(CGRect)frame;
- (CGRect)contentBounds;
- (CGSize)_safeReferenceSize;
- (PXTileGeometry)_geometryWithFrame:(SEL)frame alpha:(CGRect)alpha zPosition:(double)position;
- (double)_zPositionForDecorativeTileSubitem:(unint64_t)subitem;
- (int64_t)_thumbnailRowsForCurrentLayoutStyle;
- (void)_invalidateBadgeDecorations;
- (void)dealloc;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)prepareLayout;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setPortraitOrientation:(BOOL)orientation;
- (void)setProgressSnapshot:(id)snapshot;
- (void)setReferenceSize:(CGSize)size;
- (void)setSelectedIndexPaths:(id)paths;
- (void)setVisibleOrigin:(CGPoint)origin;
@end

@implementation AESceneGroupedTilingLayout

- (AEBrowserLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)_progressFrameForGridTileFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  CGRectGetMaxX(frame);
  UIRoundToViewScale();
  v8 = v7;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGRectGetMaxY(v14);
  UIRoundToViewScale();
  v10 = v9;
  v11 = 26.0;
  v12 = 26.0;
  v13 = v8;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v13;
  return result;
}

- (CGRect)_frameForGridTile:(int64_t)tile inSection:(int64_t)section
{
  [(AESceneGroupedTilingLayout *)self _thumbnailRowsForCurrentLayoutStyle:tile];
  [(AESceneGroupedTilingLayout *)self _safeReferenceSize];
  [(AESceneGroupedTilingLayout *)self layoutStyle];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  UIRoundToViewScale();
  v8 = v7;
  UIRoundToViewScale();
  v10 = v9;
  UIRoundToViewScale();
  v12 = v11;
  v13 = v10;
  v14 = v8;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)_gradientShadowFrameForItemFrame:(CGRect)result
{
  v3 = result.origin.y + result.size.height - self->_cachedGradientOverlaySize.height;
  height = self->_cachedGradientOverlaySize.height;
  result.size.height = height;
  result.origin.y = v3;
  return result;
}

- (double)_zPositionForDecorativeTileSubitem:(unint64_t)subitem
{
  if (subitem == 5)
  {
    return 1.0;
  }

  result = 0.0;
  if (subitem == 6)
  {
    abort();
  }

  return result;
}

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  v11 = identifier->var1[0];
  if (identifier->var0 == 5 && v11 == *MEMORY[0x277D3CC58])
  {
    v13 = identifier->var1[1];
    dataSource = [(PXAssetsTilingLayout *)self dataSource];
    identifier = [dataSource identifier];

    if (v13 == identifier)
    {
      [(AESceneGroupedTilingLayout *)self _frameForGridTile:identifier->var1[3] inSection:identifier->var1[2]];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = 0;
      v25 = 0.0;
      v26 = 66059;
      if (!geometry)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v11 = identifier->var1[0];
  }

  if (v11 == 795209731)
  {
    groupCopy = group;
    dataCopy = data;
    v41 = identifier->var1[3];
    v42 = identifier->var1[4];
    v43 = identifier->var1[2];
    [(AESceneGroupedTilingLayout *)self _frameForGridTile:v41 inSection:v43];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = identifier->var1[1];
    delegate = [(AESceneGroupedTilingLayout *)self delegate];
    *&v69.x = v52;
    *&v69.y = v43;
    *&v70.width = v41;
    v70.height = NAN;
    v63 = [delegate layout:self shouldShowVideoDecorationAtIndexPath:&v69];
    *&v69.x = v52;
    *&v69.y = v43;
    *&v70.width = v41;
    v70.height = NAN;
    v53 = [delegate layout:self shouldShowCloudDecorationAtIndexPath:&v69];
    *&v69.x = v52;
    *&v69.y = v43;
    *&v70.width = v41;
    v70.height = NAN;
    v54 = [delegate layout:self shouldShowLoopDecorationAtIndexPath:&v69];
    [(AESceneGroupedTilingLayout *)self _zPositionForDecorativeTileSubitem:v42];
    if (v42 == 5 && ((v53 | v63) & 1) != 0)
    {
      v25 = v55;
      [(AESceneGroupedTilingLayout *)self _gradientShadowFrameForItemFrame:v45, v47, v49, v51];
      v17 = v56;
      v19 = v57;
      v21 = v58;
      v23 = v59;
      v24 = [[AEGridOverlayConfiguration alloc] initWithShowCloudDecoration:v53 showVideoDecoration:v63 & 1 showLoopDecoration:v54];

      v26 = 136507;
      data = dataCopy;
      group = groupCopy;
      if (!geometry)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    data = dataCopy;
    group = groupCopy;
    goto LABEL_25;
  }

  if (v11 != 112112321)
  {
LABEL_26:
    v68.receiver = self;
    v68.super_class = AESceneGroupedTilingLayout;
    v60 = *&identifier->var1[5];
    v71 = *&identifier->var1[3];
    v72 = v60;
    v73 = *&identifier->var1[7];
    *&v74 = identifier->var1[9];
    v61 = *&identifier->var1[1];
    v69 = *&identifier->var0;
    v70 = v61;
    v40 = [(PXAssetsTilingLayout *)&v68 getGeometry:geometry group:group userData:data forTileWithIdentifier:&v69];
    v24 = 0;
    goto LABEL_27;
  }

  v64 = *&identifier->var1[3];
  v66 = *&identifier->var1[1];
  delegate = [(AESceneGroupedTilingLayout *)self progressSnapshot];
  v69 = v66;
  v70 = v64;
  if (![delegate hasProgressForIndexPath:&v69])
  {
LABEL_25:

    goto LABEL_26;
  }

  [(AESceneGroupedTilingLayout *)self _frameForGridTile:*&v64.width inSection:*&v66.y];
  [(AESceneGroupedTilingLayout *)self _progressFrameForGridTileFrame:?];
  v17 = v28;
  v19 = v29;
  v21 = v30;
  v23 = v31;
  [(AESceneGroupedTilingLayout *)self _zPositionForDecorativeTileSubitem:5];
  v25 = v32;

  v24 = 0;
  v26 = 855060;
  if (geometry)
  {
LABEL_14:
    [(AESceneGroupedTilingLayout *)self _geometryWithFrame:v17 alpha:v19 zPosition:v21, v23, 1.0, v25];
    v33 = v78;
    *&geometry->var6 = v77;
    *&geometry->var7.height = v33;
    v34 = v80;
    *&geometry->var8.origin.y = v79;
    *&geometry->var8.size.height = v34;
    v35 = v74;
    *&geometry->var3.a = v73;
    *&geometry->var3.c = v35;
    v36 = v76;
    *&geometry->var3.tx = v75;
    *&geometry->var4 = v36;
    v37 = v70;
    geometry->var0.origin = v69;
    geometry->var0.size = v37;
    v38 = v72;
    geometry->var1 = v71;
    geometry->var2 = v38;
  }

LABEL_15:
  if (group)
  {
    *group = v26;
  }

  if (data)
  {
    v39 = v24;
    *data = v24;
  }

  v40 = 1;
LABEL_27:

  return v40;
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  blockCopy = block;
  dataSource = [(PXAssetsTilingLayout *)self dataSource];
  identifier = [dataSource identifier];

  coordinateSpaceIdentifier = [(PXTilingLayout *)self coordinateSpaceIdentifier];
  v106[0] = 0;
  v71 = optionsCopy;
  tileGroups = [optionsCopy tileGroups];
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  if (CGRectIntersectsRect(*self->_sectionBounds, v108))
  {
    dataSource2 = [(PXAssetsTilingLayout *)self dataSource];
    v16 = [dataSource2 numberOfItemsInSection:0];

    if (v16 >= 1)
    {
      v65 = *MEMORY[0x277D3CC58];
      v17 = 1;
      v62 = xmmword_241200000;
      v68 = width;
      v69 = height;
      v66 = x;
      v67 = y;
      v70 = v16;
      do
      {
        [(AESceneGroupedTilingLayout *)self _frameForGridTile:v17 - 1 inSection:0, v62];
        v18 = v107.origin.x;
        v19 = v107.origin.y;
        v20 = v107.size.width;
        v21 = v107.size.height;
        v109.origin.x = x;
        v109.origin.y = y;
        v109.size.width = width;
        v109.size.height = height;
        if (CGRectIntersectsRect(v107, v109))
        {
          memset(v105, 0, sizeof(v105));
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          *&v97 = v18;
          *(&v97 + 1) = v19;
          *&v98 = v20;
          *(&v98 + 1) = v21;
          PXRectGetCenter();
          *&v99 = v22;
          *(&v99 + 1) = v23;
          *&v100 = v20;
          *(&v100 + 1) = v21;
          v75 = *(MEMORY[0x277CBF2C0] + 16);
          v76 = *MEMORY[0x277CBF2C0];
          v101 = *MEMORY[0x277CBF2C0];
          v102 = v75;
          v73 = *(MEMORY[0x277CBF2C0] + 32);
          v103 = v73;
          v104 = xmmword_2411FFFF0;
          *(v105 + 8) = v100;
          v24 = *(MEMORY[0x277D3CFC0] + 16);
          v74 = *MEMORY[0x277D3CFC0];
          *(&v105[1] + 8) = *MEMORY[0x277D3CFC0];
          v72 = v24;
          *(&v105[2] + 8) = v24;
          *(&v105[3] + 1) = coordinateSpaceIdentifier;
          if (!tileGroups || [tileGroups containsIndex:66059])
          {
            v25 = blockCopy[2];
            *&v89 = 5;
            *(&v89 + 1) = v65;
            v90 = identifier;
            v91 = 0;
            v92 = v17 - 1;
            v93 = 0x7FFFFFFFFFFFFFFFLL;
            v94 = 0u;
            v95 = 0u;
            v96 = 0;
            v87 = v105[0];
            *v88 = v105[1];
            *&v88[16] = v105[2];
            *&v88[32] = v105[3];
            v83 = v101;
            v84 = v102;
            v85 = v103;
            v86 = v104;
            v79 = v97;
            v80 = v98;
            v81 = v99;
            v82 = v100;
            v25(blockCopy, &v89, &v79, 66059, 0, v106);
            if (!tileGroups)
            {
              goto LABEL_9;
            }
          }

          if ([tileGroups containsIndex:855060])
          {
LABEL_9:
            progressSnapshot = [(AESceneGroupedTilingLayout *)self progressSnapshot];
            v79 = identifier;
            *&v80 = v17 - 1;
            *(&v80 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v27 = [progressSnapshot hasProgressForIndexPath:&v79];

            if (v27)
            {
              [(AESceneGroupedTilingLayout *)self _progressFrameForGridTileFrame:v18, v19, v20, v21];
              v29 = v28;
              v31 = v30;
              v33 = v32;
              v35 = v34;
              PXRectGetCenter();
              v63 = v37;
              v64 = v36;
              [(AESceneGroupedTilingLayout *)self _zPositionForDecorativeTileSubitem:5];
              v38 = blockCopy[2];
              v89 = v62;
              v90 = identifier;
              v91 = 0;
              v92 = v17 - 1;
              v93 = 0x7FFFFFFFFFFFFFFFLL;
              v94 = 0u;
              v95 = 0u;
              v96 = 0;
              *&v79 = v29;
              *(&v79 + 1) = v31;
              width = v68;
              height = v69;
              *&v80 = v33;
              *(&v80 + 1) = v35;
              *&v81 = v64;
              *(&v81 + 1) = v63;
              *&v82 = v33;
              *(&v82 + 1) = v35;
              v83 = v76;
              v84 = v75;
              v85 = v73;
              *&v86 = 0x3FF0000000000000;
              *(&v86 + 1) = v39;
              *&v87 = 0;
              *(&v87 + 1) = v33;
              *v88 = v35;
              x = v66;
              y = v67;
              *&v88[24] = v72;
              *&v88[8] = v74;
              *&v88[40] = coordinateSpaceIdentifier;
              v38(blockCopy, &v89, &v79, 855060, 0, v106);
            }
          }

          v40 = tileGroups;
          v79 = identifier;
          *&v80 = v17 - 1;
          *(&v80 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          [(PXAssetsTilingLayout *)self enumerateAccessoryTilesForContentTileWithIndexPath:&v79 geometry:&v97 withOptions:v71 usingBlock:blockCopy];
          delegate = [(AESceneGroupedTilingLayout *)self delegate];
          v79 = identifier;
          *&v80 = v17 - 1;
          *(&v80 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          v42 = [delegate layout:self shouldShowVideoDecorationAtIndexPath:&v79];
          v79 = identifier;
          *&v80 = v17 - 1;
          *(&v80 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          v43 = [delegate layout:self shouldShowCloudDecorationAtIndexPath:&v79];
          v79 = identifier;
          *&v80 = v17 - 1;
          *(&v80 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          v44 = [delegate layout:self shouldShowLoopDecorationAtIndexPath:&v79];
          v45 = v44;
          if ((v43 & 1) != 0 || (v42 & 1) != 0 || v44)
          {
            [(AESceneGroupedTilingLayout *)self _gradientShadowFrameForItemFrame:v18, v19, v20, v21];
            v47 = v46;
            v49 = v48;
            v51 = v50;
            v53 = v52;
            PXRectGetCenter();
            v55 = v54;
            v57 = v56;
            [(AESceneGroupedTilingLayout *)self _zPositionForDecorativeTileSubitem:5];
            v59 = v58;
            v60 = [[AEGridOverlayConfiguration alloc] initWithShowCloudDecoration:v43 showVideoDecoration:v42 showLoopDecoration:v45];
            v61 = blockCopy[2];
            v89 = xmmword_241200010;
            v90 = identifier;
            v91 = 0;
            v92 = v17 - 1;
            v93 = 5;
            v94 = 0u;
            v95 = 0u;
            v96 = 0;
            *&v79 = v47;
            *(&v79 + 1) = v49;
            width = v68;
            height = v69;
            *&v80 = v51;
            *(&v80 + 1) = v53;
            *&v81 = v55;
            *(&v81 + 1) = v57;
            *&v82 = v51;
            *(&v82 + 1) = v53;
            v83 = v76;
            v84 = v75;
            v85 = v73;
            *&v86 = 0x3FF0000000000000;
            *(&v86 + 1) = v59;
            *&v87 = 0;
            *(&v87 + 1) = v51;
            *v88 = v53;
            x = v66;
            y = v67;
            *&v88[24] = v72;
            *&v88[8] = v74;
            *&v88[40] = coordinateSpaceIdentifier;
            v61(blockCopy, &v89, &v79, 136507, v60, v106);
          }

          tileGroups = v40;
          v16 = v70;
        }

        if (v17 >= v16)
        {
          break;
        }

        ++v17;
      }

      while ((v106[0] & 1) == 0);
    }
  }
}

- (CGPoint)_boundedVisibleOrigin
{
  [(PXTilingLayout *)self visibleOrigin];
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  result.y = v3;
  result.x = v2;
  return result;
}

- (PXTileGeometry)_geometryWithFrame:(SEL)frame alpha:(CGRect)alpha zPosition:(double)position
{
  height = alpha.size.height;
  width = alpha.size.width;
  y = alpha.origin.y;
  x = alpha.origin.x;
  coordinateSpaceIdentifier = [(PXTilingLayout *)self coordinateSpaceIdentifier];
  *&retstr->var6 = 0;
  retstr->var0.origin.x = x;
  retstr->var0.origin.y = y;
  retstr->var0.size.width = width;
  retstr->var0.size.height = height;
  result = PXRectGetCenter();
  retstr->var1.x = v15;
  retstr->var1.y = v16;
  retstr->var2.width = width;
  retstr->var2.height = height;
  v17 = MEMORY[0x277CBF2C0];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->var3.a = *MEMORY[0x277CBF2C0];
  *&retstr->var3.c = v18;
  *&retstr->var3.tx = *(v17 + 32);
  retstr->var6 = 0;
  retstr->var7 = retstr->var2;
  v19 = *(MEMORY[0x277D3CFC0] + 16);
  retstr->var8.origin = *MEMORY[0x277D3CFC0];
  retstr->var8.size = v19;
  retstr->var9 = coordinateSpaceIdentifier;
  retstr->var4 = position;
  retstr->var5 = a6;
  return result;
}

- (void)_invalidateBadgeDecorations
{
  v3 = objc_alloc_init(MEMORY[0x277D3CC38]);
  [v3 invalidateTilesInGroup:855060];
  [v3 invalidateTilesInGroup:136507];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v3];
}

- (CGSize)_safeReferenceSize
{
  [(PXTilingLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  contentInset = [(PXTilingLayout *)self contentInset];
  v14.n128_u64[0] = v10.n128_u64[0];
  v15.n128_u64[0] = v11.n128_u64[0];
  v8 = v12.n128_u64[0];
  v9 = v13.n128_u64[0];
  v10.n128_u64[0] = v4;
  v11.n128_u64[0] = v6;
  v12.n128_u64[0] = v14.n128_u64[0];
  v13.n128_u64[0] = v15.n128_u64[0];
  v14.n128_u64[0] = v8;
  v15.n128_u64[0] = v9;

  MEMORY[0x28219D070](contentInset, v10, v11, v12, v13, v14, v15);
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)setSelectedIndexPaths:(id)paths
{
  pathsCopy = paths;
  [(AESceneGroupedTilingLayout *)self _invalidateBadgeDecorations];
  v5.receiver = self;
  v5.super_class = AESceneGroupedTilingLayout;
  [(PXAssetsTilingLayout *)&v5 setSelectedIndexPaths:pathsCopy];
}

- (void)setProgressSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_progressSnapshot != snapshotCopy)
  {
    v7 = snapshotCopy;
    objc_storeStrong(&self->_progressSnapshot, snapshot);
    v6 = objc_alloc_init(MEMORY[0x277D3CC38]);
    [v6 invalidateAllTiles];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v6];

    snapshotCopy = v7;
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  [(PXTilingLayout *)self contentInset];
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = AESceneGroupedTilingLayout;
    [(PXTilingLayout *)&v9 setContentInset:top, left, bottom, right];
    v8 = objc_alloc_init(MEMORY[0x277D3CC38]);
    [v8 invalidateEverything];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v8];
  }
}

- (void)setVisibleOrigin:(CGPoint)origin
{
  v5.receiver = self;
  v5.super_class = AESceneGroupedTilingLayout;
  [(PXTilingLayout *)&v5 setVisibleOrigin:origin.x, origin.y];
  v4 = objc_alloc_init(MEMORY[0x277D3CC38]);
  [v4 invalidateTilesInGroup:1111633208];
  [(PXTilingLayout *)self invalidateLayoutWithContext:v4];
}

- (void)setPortraitOrientation:(BOOL)orientation
{
  if (self->_portraitOrientation != orientation)
  {
    self->_portraitOrientation = orientation;
    [(PXTilingLayout *)self invalidateLayout];
  }
}

- (void)setReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PXTilingLayout *)self referenceSize];
  if (v7 != width || v6 != height)
  {
    v9.receiver = self;
    v9.super_class = AESceneGroupedTilingLayout;
    [(PXTilingLayout *)&v9 setReferenceSize:width, height];
    [(PXTilingLayout *)self invalidateLayout];
  }
}

- (int64_t)_thumbnailRowsForCurrentLayoutStyle
{
  v3 = objc_alloc_init(AEGridEnvironment);
  [(AESceneGroupedTilingLayout *)self _safeReferenceSize];
  [(AEGridEnvironment *)v3 setCompactExtensionHeight:v4];
  [(AEGridEnvironment *)v3 setMinimumTileHeight:dbl_241200020[([(AESceneGroupedTilingLayout *)self layoutStyle]- 1) < 2]];
  v5 = [AEGridConfiguration configurationForEnvironment:v3];
  rowCount = [v5 rowCount];

  return rowCount;
}

- (void)prepareLayout
{
  _gradientTileLayoutInfo = [(AESceneGroupedTilingLayout *)self _gradientTileLayoutInfo];
  dataSource = [(PXAssetsTilingLayout *)self dataSource];
  v4 = ceil([dataSource numberOfItemsInSection:0] / -[AESceneGroupedTilingLayout _thumbnailRowsForCurrentLayoutStyle](self, "_thumbnailRowsForCurrentLayoutStyle"));
  [(AESceneGroupedTilingLayout *)self _safeReferenceSize];
  v6 = v5;
  [(AESceneGroupedTilingLayout *)self layoutStyle];
  UIRoundToViewScale();
  v8 = v7;
  [_gradientTileLayoutInfo tileSystemLayoutSizeFittingSize:?];
  self->_cachedGradientOverlaySize.width = v9;
  self->_cachedGradientOverlaySize.height = v10;
  sectionBounds = self->_sectionBounds;
  sectionBounds->origin.x = 0.0;
  sectionBounds->origin.y = 0.0;
  sectionBounds->size.width = v4 * (v8 + 1.0) + -1.0;
  sectionBounds->size.height = v6;
}

- (CGRect)contentBounds
{
  v2 = self->_sectionBounds->origin.x + self->_sectionBounds->size.width;
  [(AESceneGroupedTilingLayout *)self _safeReferenceSize];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  v7 = v2;
  result.size.height = v4;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)dealloc
{
  free(self->_sectionBounds);
  v3.receiver = self;
  v3.super_class = AESceneGroupedTilingLayout;
  [(AESceneGroupedTilingLayout *)&v3 dealloc];
}

- (AESceneGroupedTilingLayout)initWithDataSource:(id)source layoutStyle:(int64_t)style gradientTileInfo:(id)info orientation:(int64_t)orientation
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = AESceneGroupedTilingLayout;
  v12 = [(PXAssetsTilingLayout *)&v14 initWithDataSource:source];
  if (v12)
  {
    v12->_sectionBounds = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    v12->_layoutStyle = style;
    v12->_portraitOrientation = (orientation - 1) < 2;
    objc_storeStrong(&v12->__gradientTileLayoutInfo, info);
    [(PXAssetsTilingLayout *)v12 setSelectionBadgeOptions:1];
  }

  return v12;
}

- (AESceneGroupedTilingLayout)initWithDataSource:(id)source layoutStyle:(int64_t)style orientation:(int64_t)orientation
{
  sourceCopy = source;
  v9 = +[AEGridOverlayView gridOverlayLayoutInfo];
  v10 = [(AESceneGroupedTilingLayout *)self initWithDataSource:sourceCopy layoutStyle:style gradientTileInfo:v9 orientation:orientation];

  return v10;
}

@end