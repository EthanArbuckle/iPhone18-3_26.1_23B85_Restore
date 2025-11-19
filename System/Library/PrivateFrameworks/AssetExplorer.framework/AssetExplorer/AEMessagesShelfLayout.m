@interface AEMessagesShelfLayout
- (AEMessagesShelfLayoutDelegate)delegate;
- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6;
- (CGRect)_cancelButtonFrameForGridFrame:(CGRect)a3;
- (CGRect)_frameForGridItemAtIndexPath:(PXSimpleIndexPath *)a3;
- (CGRect)_generationButtonFrameForGridFrame:(CGRect)a3;
- (CGRect)_gradientShadowFrameForItemFrame:(CGRect)result;
- (CGRect)_irisToggleFrameForGridFrame:(CGRect)a3;
- (CGRect)_loopBadgeFrameForItemFrame:(CGRect)a3;
- (CGRect)_spatialBadgeFrameForItemFrame:(CGRect)a3;
- (CGRect)_videoBadgeFrameForItemFrame:(CGRect)a3;
- (CGRect)_videoDurationFrameForItemFrame:(CGRect)a3;
- (CGRect)contentBounds;
- (double)_zPositionForShelfTileKind:(unint64_t)a3 atIndexPath:(PXSimpleIndexPath *)a4;
- (void)dealloc;
- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5;
- (void)prepareLayout;
- (void)setReferenceSize:(CGSize)a3;
@end

@implementation AEMessagesShelfLayout

- (AEMessagesShelfLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)_videoDurationFrameForItemFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AEMessagesShelfLayout *)self _videoBadgeFrameForItemFrame:?];
  v9 = v7 + v8;
  v10 = width + -8.0 + x - v9;
  v11 = y + height + -12.0 + -12.0;
  v12 = 12.0;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (CGRect)_videoBadgeFrameForItemFrame:(CGRect)a3
{
  v3 = a3.origin.x + 10.0;
  v4 = a3.origin.y + a3.size.height + -12.0 + -12.0;
  v5 = 20.0;
  v6 = 12.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_spatialBadgeFrameForItemFrame:(CGRect)a3
{
  v3 = a3.origin.x + 8.0;
  v4 = a3.origin.y + 8.0;
  v5 = 20.0;
  v6 = 20.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_loopBadgeFrameForItemFrame:(CGRect)a3
{
  v3 = a3.origin.x + 12.0;
  v4 = a3.origin.y + a3.size.height + -15.0 + -12.0;
  v5 = 19.0;
  v6 = 15.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_gradientShadowFrameForItemFrame:(CGRect)result
{
  v3 = result.origin.y + result.size.height + -39.0;
  v4 = 39.0;
  result.size.height = v4;
  result.origin.y = v3;
  return result;
}

- (CGRect)_generationButtonFrameForGridFrame:(CGRect)a3
{
  v3 = a3.origin.x + 4.0;
  v4 = a3.origin.y + a3.size.height + -26.0 + -4.0;
  v5 = 26.0;
  v6 = 26.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_irisToggleFrameForGridFrame:(CGRect)a3
{
  y = a3.origin.y;
  x = a3.origin.x;
  [AEMessagesShelfRoundButton intrinsicContentSizeForStyle:1, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  v8 = v7;
  v9 = x + 3.0;
  v10 = y + 3.0;
  result.size.height = v8;
  result.size.width = v6;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_cancelButtonFrameForGridFrame:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [AEMessagesShelfRoundButton intrinsicContentSizeForStyle:0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  v9 = v8;
  v10 = x + width - v6 + -4.0;
  v11 = y + 4.0;
  result.size.height = v9;
  result.size.width = v7;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGRect)_frameForGridItemAtIndexPath:(PXSimpleIndexPath *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  itemFramesForCurrentDataSource = self->_itemFramesForCurrentDataSource;
  if (itemFramesForCurrentDataSource)
  {
    p_x = &itemFramesForCurrentDataSource[a3->item].origin.x;
  }

  else
  {
    v6 = PLAssetExplorerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      if (self->_wasPreparedAtLeastOnce)
      {
        v7 = @"was";
      }

      else
      {
        v7 = @"WAS NOT";
      }

      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2411DE000, v6, OS_LOG_TYPE_ERROR, "<Shelf layout> Precomputed item frames unavailable, layout %@ prepared at least once", &v13, 0xCu);
    }

    p_x = MEMORY[0x277CBF3A0];
  }

  v8 = p_x[2];
  v9 = p_x[3];
  v10 = *p_x;
  v11 = p_x[1];
  v12 = *MEMORY[0x277D85DE8];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (double)_zPositionForShelfTileKind:(unint64_t)a3 atIndexPath:(PXSimpleIndexPath *)a4
{
  result = 11000000.0;
  if (a3 <= 1313817679)
  {
    if (a3 != 1215219281 && a3 != 1277777777 && a3 != 1295210292)
    {
      return result;
    }

    return 11000010.0;
  }

  if (a3 - 1500001336 < 3 || a3 == 1313817680)
  {
    return 11000010.0;
  }

  if (a3 == 1500001007)
  {
    return 11000000.5;
  }

  return result;
}

- (void)prepareLayout
{
  self->_wasPreparedAtLeastOnce = 1;
  v17.receiver = self;
  v17.super_class = AEMessagesShelfLayout;
  [(PXTilingLayout *)&v17 prepareLayout];
  itemFramesForCurrentDataSource = self->_itemFramesForCurrentDataSource;
  if (itemFramesForCurrentDataSource)
  {
    free(itemFramesForCurrentDataSource);
    self->_itemFramesForCurrentDataSource = 0;
  }

  v4 = [(PXAssetsTilingLayout *)self dataSource];
  v5 = [(AEMessagesShelfLayout *)self delegate];
  v6 = [v4 numberOfItemsInSection:0];
  self->_itemFramesForCurrentDataSource = malloc_type_malloc(32 * v6, 0x1000040E0EAB150uLL);
  v7 = [v4 identifier];
  [(PXTilingLayout *)self referenceSize];
  UIRoundToViewScale();
  v9 = v8;
  v10 = 0.0;
  if (v6)
  {
    v10 = 6.0;
  }

  self->_currentContentWidth = v10;
  if (v6 >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v16[0] = v7;
      v16[1] = 0;
      v16[2] = v12;
      v16[3] = 0x7FFFFFFFFFFFFFFFLL;
      [v5 layout:self aspectRatioForItemAtIndexPath:v16];
      UIRoundToViewScale();
      currentContentWidth = self->_currentContentWidth;
      self->_currentContentWidth = v14 + currentContentWidth + 6.0;
      v15 = &self->_itemFramesForCurrentDataSource[v11];
      v15->origin.x = currentContentWidth;
      ++v12;
      v15->origin.y = 0.0;
      v15->size.width = v14;
      v15->size.height = v9;
      ++v11;
    }

    while (v6 != v12);
  }
}

- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6
{
  v11 = [(AEMessagesShelfLayout *)self delegate];
  v12 = [v11 layoutShouldShowVideoDuration:self];
  v13 = a6->var1[1];
  v14 = a6->var1[2];
  v15 = a6->var1[3];
  *(&v105 + 1) = a6->var1[4];
  v16 = a6->var1[0];
  if (*&a6->var0 == __PAIR128__(*MEMORY[0x277D3CC58], 5))
  {
    goto LABEL_10;
  }

  if (v16 <= 1295210291)
  {
    if (v16 != 795209731)
    {
      if (v16 != 1215219281)
      {
        v17 = 1277777777;
        goto LABEL_9;
      }

      goto LABEL_10;
    }

    if (*(&v105 + 1))
    {
      if (*(&v105 + 1) == 4)
      {
        *&v106 = a6->var1[1];
        *(&v106 + 1) = v14;
        *&v107 = v15;
        *(&v107 + 1) = 0x7FFFFFFFFFFFFFFFLL;
        v90 = v15;
        if ([v11 layout:self itemAtIndexPathIsSpatial:&v106])
        {
          *&v106 = v13;
          *(&v106 + 1) = v14;
          *&v107 = v90;
          *(&v107 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          [(AEMessagesShelfLayout *)self _frameForGridItemAtIndexPath:&v106];
          v35 = v91;
          v36 = v92;
          v37 = v93;
          v38 = v94;
          *&v106 = v13;
          *(&v106 + 1) = v14;
          *&v107 = v90;
          *(&v107 + 1) = 4;
          v76 = 795209433;
          v75 = self;
LABEL_55:
          [(AEMessagesShelfLayout *)v75 _zPositionForShelfTileKind:v76 atIndexPath:&v106];
          v52 = v99;
          v43 = 0;
          v29 = 0;
          goto LABEL_28;
        }

LABEL_53:
        v22 = v11;
        goto LABEL_18;
      }

      if (*(&v105 + 1) != 3)
      {
        goto LABEL_44;
      }
    }

    *&v106 = a6->var1[1];
    *(&v106 + 1) = v14;
    *&v107 = v15;
    *(&v107 + 1) = 0x7FFFFFFFFFFFFFFFLL;
    v66 = v15;
    if ([v11 layout:self itemAtIndexPathIsVideo:&v106])
    {
      *&v106 = v13;
      *(&v106 + 1) = v14;
      *&v107 = v66;
      *(&v107 + 1) = 0x7FFFFFFFFFFFFFFFLL;
      [(AEMessagesShelfLayout *)self _frameForGridItemAtIndexPath:&v106];
      if (*(&v105 + 1))
      {
        [(AEMessagesShelfLayout *)self _gradientShadowFrameForItemFrame:v67, v68, v69, v70];
        v35 = v71;
        v36 = v72;
        v37 = v73;
        v38 = v74;
        *&v106 = v13;
        *(&v106 + 1) = v14;
        *&v107 = v66;
        *(&v107 + 1) = 3;
        v75 = self;
        v76 = 795209432;
      }

      else
      {
        [(AEMessagesShelfLayout *)self _videoBadgeFrameForItemFrame:v67, v68, v69, v70];
        v35 = v95;
        v36 = v96;
        v37 = v97;
        v38 = v98;
        *&v106 = v13;
        *(&v106 + 1) = v14;
        v107 = v66;
        v75 = self;
        v76 = 1500001336;
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v16 != 1295210292 && v16 != 1500001338)
  {
    v17 = 1313817680;
LABEL_9:
    if (v16 == v17)
    {
      goto LABEL_10;
    }

LABEL_44:
    v77 = a3;
    v22 = v11;
    v112.receiver = self;
    v112.super_class = AEMessagesShelfLayout;
    v78 = *&a6->var1[5];
    v108 = *&a6->var1[3];
    v109 = v78;
    v110 = *&a6->var1[7];
    v111 = a6->var1[9];
    v79 = *&a6->var1[1];
    v106 = *&a6->var0;
    v107 = v79;
    v30 = [(PXAssetsTilingLayout *)&v112 getGeometry:v77 group:a4 userData:a5 forTileWithIdentifier:&v106];
    v29 = 0;
    goto LABEL_35;
  }

LABEL_10:
  v103 = a4;
  v104 = a6->var1[1];
  v102 = a5;
  v18 = v11;
  *&v105 = a6->var1[3];
  v19 = [(PXAssetsTilingLayout *)self dataSource];
  v20 = [v19 numberOfItemsInSection:0];

  v100 = a3;
  if (v105 < v20 && v16 == 1295210292)
  {
    v21 = v13;
    *&v106 = v13;
    *(&v106 + 1) = v14;
    v107 = v105;
    v22 = v18;
    v23 = v18;
    v24 = v105;
    v25 = [v23 layout:self irisToggleStateForItemAtIndexPath:&v106];
    v26 = *(&v105 + 1);
    if (v25 == *(&v105 + 1))
    {
      goto LABEL_21;
    }

LABEL_18:
    v29 = 0;
    v30 = 0;
    goto LABEL_35;
  }

  if (v105 < v20 && v16 == 1215219281 && ((v12 ^ 1) & 1) == 0)
  {
    v21 = v13;
    *&v106 = v13;
    *(&v106 + 1) = v14;
    v107 = v105;
    v22 = v18;
    v27 = v18;
    v24 = v105;
    v28 = [v27 layout:self itemAtIndexPathIsVideo:&v106];
    v26 = *(&v105 + 1);
    if (v28)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v30 = 0;
  v29 = 0;
  if (v105 >= v20)
  {
    v22 = v18;
    goto LABEL_35;
  }

  v22 = v18;
  v24 = v105;
  v21 = v13;
  v26 = *(&v105 + 1);
  if (v16 != 1215219281)
  {
LABEL_21:
    *&v106 = v21;
    *(&v106 + 1) = v14;
    *&v107 = v24;
    *(&v107 + 1) = v26;
    [(AEMessagesShelfLayout *)self _frameForGridItemAtIndexPath:&v106, v100];
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    if (v16 == 1313817680)
    {
      [(AEMessagesShelfLayout *)self _cancelButtonFrameForGridFrame:v31, v32, v33, v34];
      v35 = v39;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      v29 = 0;
      v43 = 0;
      a5 = v102;
      a4 = v103;
      v44 = v105;
      v11 = v22;
    }

    else
    {
      a5 = v102;
      a4 = v103;
      v11 = v22;
      if (v16 != 1295210292)
      {
        a3 = v101;
        if (v16 == 1277777777)
        {
          [(AEMessagesShelfLayout *)self _generationButtonFrameForGridFrame:v31, v32, v33, v34];
          v35 = v62;
          v36 = v63;
          v37 = v64;
          v38 = v65;
          v29 = 0;
          v43 = 2555555555;
          v44 = v105;
        }

        else
        {
          if (v16 == 1215219281)
          {
            [(AEMessagesShelfLayout *)self _videoDurationFrameForItemFrame:v31, v32, v33, v34];
            v35 = v84;
            v36 = v85;
            v37 = v86;
            v38 = v87;
            v88 = MEMORY[0x277CCABB0];
            *&v106 = v104;
            *(&v106 + 1) = v14;
            v107 = v105;
            [v11 layout:self itemAtIndexPathDuration:&v106];
            v89 = [v88 numberWithDouble:?];
            v49 = *(&v105 + 1);
            v44 = v105;
            v13 = v104;
            v29 = v89;
            v43 = 0;
            goto LABEL_27;
          }

          if (v16 == 1500001338)
          {
            [(AEMessagesShelfLayout *)self _spatialBadgeFrameForItemFrame:v31, v32, v33, v34];
            v35 = v80;
            v36 = v81;
            v37 = v82;
            v38 = v83;
          }

          v29 = 0;
          v43 = 0;
          v44 = v105;
        }

LABEL_26:
        v49 = *(&v105 + 1);
LABEL_27:
        v50 = a6->var1[0];
        *&v106 = v13;
        *(&v106 + 1) = v14;
        *&v107 = v44;
        *(&v107 + 1) = v49;
        [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:v50 atIndexPath:&v106];
        v52 = v51;
LABEL_28:
        if (a3)
        {
          v53 = [(PXTilingLayout *)self coordinateSpaceIdentifier];
          PXRectGetCenter();
          a3->var0.origin.x = v35;
          a3->var0.origin.y = v36;
          a3->var0.size.width = v37;
          a3->var0.size.height = v38;
          a3->var1.x = v54;
          a3->var1.y = v55;
          a3->var2.width = v37;
          a3->var2.height = v38;
          v56 = MEMORY[0x277CBF2C0];
          v57 = *(MEMORY[0x277CBF2C0] + 16);
          *&a3->var3.a = *MEMORY[0x277CBF2C0];
          *&a3->var3.c = v57;
          *&a3->var3.tx = *(v56 + 32);
          a3->var4 = 1.0;
          a3->var5 = v52;
          *&a3->var6 = 0;
          v58 = MEMORY[0x277D3CFC0];
          a3->var7.width = v37;
          a3->var7.height = v38;
          v59 = *v58;
          a3->var8.size = *(v58 + 16);
          a3->var8.origin = v59;
          a3->var9 = v53;
        }

        if (a4)
        {
          *a4 = v43;
        }

        v22 = v11;
        if (a5)
        {
          v60 = v29;
          *a5 = v29;
        }

        v30 = 1;
        goto LABEL_35;
      }

      [(AEMessagesShelfLayout *)self _irisToggleFrameForGridFrame:v31, v32, v33, v34];
      v35 = v45;
      v36 = v46;
      v37 = v47;
      v38 = v48;
      v29 = 0;
      v43 = 2295210291;
      v44 = v105;
    }

    a3 = v101;
    goto LABEL_26;
  }

LABEL_35:

  return v30;
}

- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5
{
  v163 = a4;
  v7 = a5;
  v8 = [(PXAssetsTilingLayout *)self dataSource];
  v9 = [v8 identifier];

  v10 = [(PXTilingLayout *)self coordinateSpaceIdentifier];
  v11 = [(AEMessagesShelfLayout *)self delegate];
  v160 = [v11 layoutShouldShowVideoDuration:self];
  v170 = v11;
  v162 = [v11 layoutShouldShowCancelButtons:self];
  v200[0] = 0;
  v12 = [(PXAssetsTilingLayout *)self dataSource];
  v13 = [v12 numberOfSections];

  if (v13 >= 1)
  {
    v14 = 0;
    v161 = *MEMORY[0x277D3CC58];
    v159 = xmmword_241200030;
    v166 = v7;
    v167 = v10;
    do
    {
      v15 = [(PXAssetsTilingLayout *)self dataSource];
      v16 = [v15 numberOfItemsInSection:v14];

      v17 = v10;
      if (v16 >= 1 && (v200[0] & 1) == 0)
      {
        v18 = 1;
        do
        {
          *&v191 = v9;
          *(&v191 + 1) = v14;
          *&v192 = v18 - 1;
          *(&v192 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          [(AEMessagesShelfLayout *)self _frameForGridItemAtIndexPath:&v191];
          x = v201.origin.x;
          y = v201.origin.y;
          width = v201.size.width;
          height = v201.size.height;
          if (CGRectIntersectsRect(v201, a3))
          {
            memset(v199, 0, sizeof(v199));
            v197 = 0u;
            v198 = 0u;
            v195 = 0u;
            v196 = 0u;
            v193 = 0u;
            v194 = 0u;
            *&v191 = x;
            *(&v191 + 1) = y;
            *&v192 = width;
            *(&v192 + 1) = height;
            PXRectGetCenter();
            *&v193 = v23;
            *(&v193 + 1) = v24;
            *&v194 = width;
            *(&v194 + 1) = height;
            v174 = *(MEMORY[0x277CBF2C0] + 16);
            v175 = *MEMORY[0x277CBF2C0];
            v195 = *MEMORY[0x277CBF2C0];
            v196 = v174;
            v25 = *(MEMORY[0x277CBF2C0] + 32);
            LOBYTE(v199[0]) = 0;
            v173 = v25;
            v197 = v25;
            v198 = xmmword_2411FFFF0;
            *(v199 + 8) = v194;
            v171 = *(MEMORY[0x277D3CFC0] + 16);
            v172 = *MEMORY[0x277D3CFC0];
            *(&v199[1] + 8) = *MEMORY[0x277D3CFC0];
            *(&v199[2] + 8) = v171;
            *(&v199[3] + 1) = v17;
            *&v176 = v9;
            *(&v176 + 1) = v14;
            *&v177 = v18 - 1;
            *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v26 = v17;
            [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:v161 atIndexPath:&v176];
            *(&v198 + 1) = v27;
            v28 = v7[2];
            *&v186 = 5;
            *(&v186 + 1) = v161;
            v187 = v9;
            v188 = v14;
            v189 = v18 - 1;
            v190[0] = 0x7FFFFFFFFFFFFFFFLL;
            memset(&v190[1], 0, 40);
            v184 = v199[0];
            *v185 = v199[1];
            *&v185[16] = v199[2];
            *&v185[32] = v199[3];
            v180 = v195;
            v181 = v196;
            v182 = v197;
            v183 = v198;
            v176 = v191;
            v177 = v192;
            v178 = v193;
            v179 = v194;
            v28(v7, &v186, &v176, 0, 0, v200);
            *&v176 = v9;
            *(&v176 + 1) = v14;
            *&v177 = v18 - 1;
            *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v168 = y;
            v169 = x;
            v164 = [v170 layout:self itemAtIndexPathIsVideo:&v176];
            if (v164)
            {
              [(AEMessagesShelfLayout *)self _videoBadgeFrameForItemFrame:x, y, width, height];
              v30 = v29;
              v32 = v31;
              v34 = v33;
              v36 = v35;
              PXRectGetCenter();
              v38 = v37;
              v40 = v39;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:1500001336 atIndexPath:&v176];
              v41 = v7[2];
              v186 = xmmword_241200010;
              v187 = v9;
              v188 = v14;
              v189 = v18 - 1;
              memset(v190, 0, sizeof(v190));
              *&v176 = v30;
              *(&v176 + 1) = v32;
              *&v177 = v34;
              *(&v177 + 1) = v36;
              *&v178 = v38;
              *(&v178 + 1) = v40;
              *&v179 = v34;
              *(&v179 + 1) = v36;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v42;
              *&v184 = 0;
              *(&v184 + 1) = v34;
              *v185 = v36;
              y = v168;
              x = v169;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v17;
              v41(v7, &v186, &v176, 0, 0, v200);
              if (v160)
              {
                [(AEMessagesShelfLayout *)self _videoDurationFrameForItemFrame:v169, v168, width, height];
                v44 = v43;
                v46 = v45;
                v48 = v47;
                v50 = v49;
                v51 = MEMORY[0x277CCABB0];
                *&v176 = v9;
                *(&v176 + 1) = v14;
                *&v177 = v18 - 1;
                *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
                [v170 layout:self itemAtIndexPathDuration:&v176];
                v52 = [v51 numberWithDouble:?];
                PXRectGetCenter();
                v54 = v53;
                v56 = v55;
                *&v176 = v9;
                *(&v176 + 1) = v14;
                *&v177 = v18 - 1;
                *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
                [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:1215219281 atIndexPath:&v176];
                v57 = v7[2];
                v186 = v159;
                v187 = v9;
                v188 = v14;
                v189 = v18 - 1;
                v190[0] = 0x7FFFFFFFFFFFFFFFLL;
                memset(&v190[1], 0, 40);
                *&v176 = v44;
                *(&v176 + 1) = v46;
                y = v168;
                x = v169;
                *&v177 = v48;
                *(&v177 + 1) = v50;
                *&v178 = v54;
                *(&v178 + 1) = v56;
                *&v179 = v48;
                *(&v179 + 1) = v50;
                v180 = v175;
                v181 = v174;
                v182 = v173;
                *&v183 = 0x3FF0000000000000;
                *(&v183 + 1) = v58;
                *&v184 = 0;
                *(&v184 + 1) = v48;
                *v185 = v50;
                *&v185[24] = v171;
                *&v185[8] = v172;
                *&v185[40] = v167;
                v57(v7, &v186, &v176, 0, v52, v200);

                v26 = v167;
              }
            }

            if (enumerateTilesInRect_withOptions_usingBlock__onceToken != -1)
            {
              dispatch_once(&enumerateTilesInRect_withOptions_usingBlock__onceToken, &__block_literal_global_619);
            }

            if (enumerateTilesInRect_withOptions_usingBlock__canShowLoopBadges == 1 && (*&v176 = v9, *(&v176 + 1) = v14, *&v177 = v18 - 1, *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL, [v170 layout:self itemAtIndexPathIsLoop:&v176]))
            {
              [(AEMessagesShelfLayout *)self _loopBadgeFrameForItemFrame:x, y, width, height];
              v60 = v59;
              v62 = v61;
              v64 = v63;
              v66 = v65;
              PXRectGetCenter();
              v68 = v67;
              v70 = v69;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:1500001337 atIndexPath:&v176];
              v71 = v7[2];
              v186 = xmmword_241200010;
              v187 = v9;
              v188 = v14;
              v72 = 1;
              v189 = v18 - 1;
              v190[0] = 1;
              memset(&v190[1], 0, 40);
              *&v176 = v60;
              *(&v176 + 1) = v62;
              *&v177 = v64;
              *(&v177 + 1) = v66;
              *&v178 = v68;
              *(&v178 + 1) = v70;
              *&v179 = v64;
              *(&v179 + 1) = v66;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v73;
              *&v184 = 0;
              *(&v184 + 1) = v64;
              *v185 = v66;
              y = v168;
              x = v169;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v26;
              v71(v7, &v186, &v176, 0, 0, v200);
            }

            else
            {
              v72 = 0;
            }

            *&v176 = v9;
            *(&v176 + 1) = v14;
            *&v177 = v18 - 1;
            *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v74 = [v170 layout:self itemAtIndexPathIsSpatial:&v176];
            if (v74)
            {
              [(AEMessagesShelfLayout *)self _spatialBadgeFrameForItemFrame:x, y, width, height];
              v76 = v75;
              v78 = v77;
              v80 = v79;
              v82 = v81;
              PXRectGetCenter();
              v84 = v83;
              v86 = v85;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:1500001338 atIndexPath:&v176];
              v87 = v166[2];
              v186 = xmmword_241200010;
              v187 = v9;
              v188 = v14;
              v189 = v18 - 1;
              v190[0] = 7;
              memset(&v190[1], 0, 40);
              *&v176 = v76;
              *(&v176 + 1) = v78;
              *&v177 = v80;
              *(&v177 + 1) = v82;
              *&v178 = v84;
              *(&v178 + 1) = v86;
              *&v179 = v80;
              *(&v179 + 1) = v82;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v88;
              *&v184 = 0;
              *(&v184 + 1) = v80;
              *v185 = v82;
              y = v168;
              x = v169;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v167;
              v87(v166, &v186, &v176, 0, 0, v200);
            }

            *&v176 = v9;
            *(&v176 + 1) = v14;
            *&v177 = v18 - 1;
            *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v89 = v166;
            [(PXAssetsTilingLayout *)self enumerateAccessoryTilesForContentTileWithIndexPath:&v176 geometry:&v191 withOptions:v163 usingBlock:v166];
            if ((v164 | v72) == 1)
            {
              [(AEMessagesShelfLayout *)self _gradientShadowFrameForItemFrame:x, y, width, height];
              v91 = v90;
              v93 = v92;
              v95 = v94;
              v97 = v96;
              PXRectGetCenter();
              v99 = v98;
              v101 = v100;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:795209432 atIndexPath:&v176];
              v102 = v166[2];
              v186 = xmmword_241200010;
              v187 = v9;
              v188 = v14;
              v189 = v18 - 1;
              v190[0] = 3;
              memset(&v190[1], 0, 40);
              *&v176 = v91;
              *(&v176 + 1) = v93;
              *&v177 = v95;
              *(&v177 + 1) = v97;
              *&v178 = v99;
              *(&v178 + 1) = v101;
              *&v179 = v95;
              *(&v179 + 1) = v97;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v103;
              *&v184 = 0;
              *(&v184 + 1) = v95;
              *v185 = v97;
              y = v168;
              x = v169;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v167;
              v102(v166, &v186, &v176, 136507, 0, v200);
            }

            if (v74)
            {
              PXRectGetCenter();
              v105 = v104;
              v107 = v106;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:795209433 atIndexPath:&v176];
              v108 = v166[2];
              v186 = xmmword_241200010;
              v187 = v9;
              v188 = v14;
              v189 = v18 - 1;
              v190[0] = 4;
              memset(&v190[1], 0, 40);
              *&v176 = x;
              *(&v176 + 1) = y;
              *&v177 = width;
              *(&v177 + 1) = height;
              *&v178 = v105;
              *(&v178 + 1) = v107;
              *&v179 = width;
              *(&v179 + 1) = height;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v109;
              *&v184 = 0;
              *(&v184 + 1) = width;
              *v185 = height;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v167;
              v108(v166, &v186, &v176, 136507, 0, v200);
            }

            if (v162)
            {
              [(AEMessagesShelfLayout *)self _cancelButtonFrameForGridFrame:x, y, width, height];
              v111 = v110;
              v113 = v112;
              v115 = v114;
              v117 = v116;
              PXRectGetCenter();
              v119 = v118;
              v121 = v120;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:1313817680 atIndexPath:&v176];
              v122 = v166[2];
              v186 = xmmword_241200040;
              v187 = v9;
              v188 = v14;
              v189 = v18 - 1;
              v190[0] = 0x7FFFFFFFFFFFFFFFLL;
              v89 = v166;
              memset(&v190[1], 0, 40);
              *&v176 = v111;
              *(&v176 + 1) = v113;
              *&v177 = v115;
              *(&v177 + 1) = v117;
              *&v178 = v119;
              *(&v178 + 1) = v121;
              *&v179 = v115;
              *(&v179 + 1) = v117;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v123;
              *&v184 = 0;
              *(&v184 + 1) = v115;
              *v185 = v117;
              y = v168;
              x = v169;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v167;
              v122(v166, &v186, &v176, 0, 0, v200);
            }

            *&v176 = v9;
            *(&v176 + 1) = v14;
            *&v177 = v18 - 1;
            *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v124 = [v170 layout:self irisToggleStateForItemAtIndexPath:&v176];
            if (v124)
            {
              v125 = v124;
              [(AEMessagesShelfLayout *)self _irisToggleFrameForGridFrame:x, y, width, height];
              v127 = v126;
              v129 = v128;
              v131 = v130;
              v133 = v132;
              PXRectGetCenter();
              v135 = v134;
              v137 = v136;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:1295210292 atIndexPath:&v176];
              v138 = v89[2];
              v186 = xmmword_241200050;
              v187 = v9;
              v188 = v14;
              v189 = v18 - 1;
              v190[0] = v125;
              memset(&v190[1], 0, 40);
              *&v176 = v127;
              *(&v176 + 1) = v129;
              *&v177 = v131;
              *(&v177 + 1) = v133;
              *&v178 = v135;
              *(&v178 + 1) = v137;
              *&v179 = v131;
              *(&v179 + 1) = v133;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v139;
              *&v184 = 0;
              *(&v184 + 1) = v131;
              *v185 = v133;
              y = v168;
              x = v169;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v167;
              v138(v89, &v186, &v176, 2295210291, 0, v200);
            }

            *&v176 = v9;
            *(&v176 + 1) = v14;
            *&v177 = v18 - 1;
            *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
            v140 = [v170 layout:self generationStateForItemAtIndexPath:&v176];
            if (v140)
            {
              v141 = v140;
              [(AEMessagesShelfLayout *)self _generationButtonFrameForGridFrame:x, y, width, height];
              v143 = v142;
              v145 = v144;
              v147 = v146;
              v149 = v148;
              PXRectGetCenter();
              v151 = v150;
              v153 = v152;
              *&v176 = v9;
              *(&v176 + 1) = v14;
              *&v177 = v18 - 1;
              *(&v177 + 1) = 0x7FFFFFFFFFFFFFFFLL;
              [(AEMessagesShelfLayout *)self _zPositionForShelfTileKind:1277777777 atIndexPath:&v176];
              v154 = v89[2];
              v186 = xmmword_241200060;
              v187 = v9;
              v188 = v14;
              v189 = v18 - 1;
              v190[0] = v141;
              memset(&v190[1], 0, 40);
              *&v176 = v143;
              *(&v176 + 1) = v145;
              *&v177 = v147;
              *(&v177 + 1) = v149;
              *&v178 = v151;
              *(&v178 + 1) = v153;
              *&v179 = v147;
              *(&v179 + 1) = v149;
              v180 = v175;
              v181 = v174;
              v182 = v173;
              *&v183 = 0x3FF0000000000000;
              *(&v183 + 1) = v155;
              *&v184 = 0;
              *(&v184 + 1) = v147;
              *v185 = v149;
              *&v185[24] = v171;
              *&v185[8] = v172;
              *&v185[40] = v167;
              v154(v89, &v186, &v176, 2555555555, 0, v200);
            }

            v17 = v167;
            v7 = v89;
          }

          if (v18 >= v16)
          {
            break;
          }

          ++v18;
        }

        while ((v200[0] & 1) == 0);
      }

      v10 = v17;
      ++v14;
      v156 = [(PXAssetsTilingLayout *)self dataSource];
      v157 = [v156 numberOfSections];
      v158 = v200[0];
    }

    while (v14 < v157 && (v158 & 1) == 0);
  }
}

void __69__AEMessagesShelfLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [v0 objectForKey:@"AssetExplorer_ShowLoopBadges"];

  if (v11)
  {
    v1 = [v11 BOOLValue];
  }

  else
  {
    v1 = enumerateTilesInRect_withOptions_usingBlock__canShowLoopBadges;
  }

  enumerateTilesInRect_withOptions_usingBlock__canShowLoopBadges = v1;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"AssetExplorer_ShowLoopVideos"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = enumerateTilesInRect_withOptions_usingBlock__canShowLoopOverlays;
  }

  enumerateTilesInRect_withOptions_usingBlock__canShowLoopOverlays = v4;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 objectForKey:@"AssetExplorer_ShowVideos"];

  if (v6)
  {
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = enumerateTilesInRect_withOptions_usingBlock__canShowVideoOverlays;
  }

  enumerateTilesInRect_withOptions_usingBlock__canShowVideoOverlays = v7;
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v9 = [v8 objectForKey:@"AssetExplorer_ShowAnimatedImages"];

  if (v9)
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = enumerateTilesInRect_withOptions_usingBlock__canShowAnimatedImageOverlays;
  }

  enumerateTilesInRect_withOptions_usingBlock__canShowAnimatedImageOverlays = v10;
}

- (CGRect)contentBounds
{
  currentContentWidth = self->_currentContentWidth;
  [(PXTilingLayout *)self referenceSize];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  v7 = currentContentWidth;
  result.size.height = v4;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)setReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PXTilingLayout *)self referenceSize];
  if (v7 != width || v6 != height)
  {
    v9.receiver = self;
    v9.super_class = AEMessagesShelfLayout;
    [(PXTilingLayout *)&v9 setReferenceSize:width, height];
    [(PXTilingLayout *)self invalidateLayout];
  }
}

- (void)dealloc
{
  itemFramesForCurrentDataSource = self->_itemFramesForCurrentDataSource;
  if (itemFramesForCurrentDataSource)
  {
    free(itemFramesForCurrentDataSource);
    self->_itemFramesForCurrentDataSource = 0;
  }

  v4.receiver = self;
  v4.super_class = AEMessagesShelfLayout;
  [(AEMessagesShelfLayout *)&v4 dealloc];
}

@end