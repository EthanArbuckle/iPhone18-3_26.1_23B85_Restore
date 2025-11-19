@interface PKSelectionGlowRenderer
+ (id)sharedStrokePathCache;
+ (void)invalidateSharedStrokePathCache;
- (CGPoint)editMenuLocation;
- (PKSelectionGlowRenderer)initWithStrokeSelection:(id)a3 renderingDelegate:(id)a4;
- (PKSelectionModificationKnob)_newKnobWithLocation:(uint64_t)a1;
- (double)_widthForStroke:(double)a3 withDrawingScale:;
- (id)_accessibilityUserTestingChildren;
- (id)_affordanceForLocationInSelectionView:(double)a3 inputType:(double)a4;
- (id)initForLiveSelectionWithRenderingDelegate:(id)a3;
- (id)setKnobsVisible:(id *)result;
- (uint64_t)_didEndDragKnobLocation:(uint64_t)a3 knobDragMode:(unint64_t)a4;
- (uint64_t)_highlightColor;
- (uint64_t)_resetKnobAppearance;
- (void)_createPathAroundStrokes:(id *)a1 inDrawing:(void *)a2 isLive:(void *)a3 liveScrollOffset:(int)a4;
- (void)_renderLiveSelectionPath:(CGPath *)a3 forStrokes:(id)a4 inDrawing:(id)a5 liveScrollOffset:(CGPoint)a6;
- (void)_setupHighlightIfNecessary;
- (void)_updateKnobAppearanceForDragAtKnobLocation:(double)a3 point:(double)a4 otherKnobPoint:(double)a5 selectionType:(double)a6 touchType:;
- (void)_updateKnobAppearanceForDragAtKnobLocation:(unint64_t)a3 point:(uint64_t)a4 knobDragMode:(uint64_t)a5 selectionType:(double)a6 touchType:(double)a7;
- (void)_willBeginDragKnobLocation:(unint64_t)a3 atPoint:(double)a4 knobDragMode:(double)a5;
@end

@implementation PKSelectionGlowRenderer

- (void)_setupHighlightIfNecessary
{
  if (a1 && !*(a1 + 8))
  {
    v2 = [MEMORY[0x1E6979398] layer];
    v3 = *(a1 + 8);
    *(a1 + 8) = v2;

    v4 = [MEMORY[0x1E6979398] layer];
    v5 = *(a1 + 16);
    *(a1 + 16) = v4;

    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v7 = [*(a1 + 80) drawing];
    [WeakRetained scaleForDrawing:v7];
    v9 = v8;

    [*(a1 + 8) setContentsScale:v9];
    [*(a1 + 8) addSublayer:*(a1 + 16)];
    if (!*(a1 + 24))
    {
      v10 = [(PKSelectionGlowRenderer *)a1 _newKnobWithLocation:?];
      v11 = *(a1 + 24);
      *(a1 + 24) = v10;

      [*(a1 + 8) addSublayer:*(a1 + 24)];
    }

    if (!*(a1 + 32))
    {
      v12 = [(PKSelectionGlowRenderer *)a1 _newKnobWithLocation:?];
      v13 = *(a1 + 32);
      *(a1 + 32) = v12;

      [*(a1 + 8) addSublayer:*(a1 + 32)];
    }

    v14 = [*(a1 + 80) strokes];
    -[PKSelectionGlowRenderer setKnobsVisible:](a1, [v14 count] != 0);

    v15 = *(a1 + 80);
    if (v15)
    {
      [v15 bounds];
      v18 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, v9 * v16, v9 * v17}];
      v19 = *(a1 + 72);
      *(a1 + 72) = v18;
      v20 = v18;

      v22 = [*(a1 + 80) strokes];
      v21 = [*(a1 + 80) drawing];

      [PKSelectionGlowRenderer _createPathAroundStrokes:a1 inDrawing:v22 isLive:v21 liveScrollOffset:0];
    }
  }
}

- (uint64_t)_highlightColor
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = [WeakRetained selectionColor];

  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"internalSettings.drawing.enableLassolessSelectionDebugColors"];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 88));
    v7 = [v6 currentIntersectionAlgorithm];

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = [MEMORY[0x1E69DC888] systemOrangeColor];
        goto LABEL_12;
      }

      if (v7 == 3)
      {
        v8 = [MEMORY[0x1E69DC888] systemYellowColor];
        goto LABEL_12;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_12;
      }

      if (v7 == 1)
      {
        v8 = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_12:
        v9 = v8;
        v10 = [v8 CGColor];

        return v10;
      }
    }
  }

  return v3;
}

- (PKSelectionGlowRenderer)initWithStrokeSelection:(id)a3 renderingDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKSelectionGlowRenderer;
  v9 = [(PKSelectionGlowRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeSelection, a3);
    objc_storeWeak(&v10->_renderingDelegate, v8);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tiles = v10->_tiles;
    v10->_tiles = v11;
  }

  return v10;
}

- (id)initForLiveSelectionWithRenderingDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKSelectionGlowRenderer;
  v5 = [(PKSelectionGlowRenderer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_renderingDelegate, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tiles = v6->_tiles;
    v6->_tiles = v7;

    [(PKSelectionGlowRenderer *)v6 _setupHighlightIfNecessary];
  }

  return v6;
}

+ (id)sharedStrokePathCache
{
  objc_opt_self();
  if (_MergedGlobals_118 != -1)
  {
    dispatch_once(&_MergedGlobals_118, &__block_literal_global_3);
  }

  v0 = qword_1ED6A4F58;

  return v0;
}

void __48__PKSelectionGlowRenderer_sharedStrokePathCache__block_invoke()
{
  v0 = objc_alloc_init(PKLRUCache);
  v1 = qword_1ED6A4F58;
  qword_1ED6A4F58 = v0;

  if (qword_1ED6A4F58)
  {
    *(qword_1ED6A4F58 + 64) = 0x4000000;
  }
}

+ (void)invalidateSharedStrokePathCache
{
  objc_opt_self();
  v0 = +[PKSelectionGlowRenderer sharedStrokePathCache];
  [(PKLRUCache *)v0 removeAllObjects];
}

- (id)_affordanceForLocationInSelectionView:(double)a3 inputType:(double)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = *(a1 + 32);
    v28[0] = *(a1 + 24);
    v28[1] = v7;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      if (a2)
      {
        v11 = 20.0;
      }

      else
      {
        v11 = 40.0;
      }

      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if (v13)
          {
            v30.origin.x = [(PKSelectionModificationKnob *)*(*(&v23 + 1) + 8 * i) _rectForKnob];
            x = v30.origin.x;
            y = v30.origin.y;
            width = v30.size.width;
            height = v30.size.height;
            MidX = CGRectGetMidX(v30);
            v31.origin.x = x;
            v31.origin.y = y;
            v31.size.width = width;
            v31.size.height = height;
            MidY = CGRectGetMidY(v31);
            [v13 frame];
            if (sqrt((a4 - (MidY + v21)) * (a4 - (MidY + v21)) + (a3 - (MidX + v20)) * (a3 - (MidX + v20))) < v11 + width * 0.5 && ![v13 isHidden])
            {
              v9 = v13;
              goto LABEL_16;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGPoint)editMenuLocation
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_renderLiveSelectionPath:(CGPath *)a3 forStrokes:(id)a4 inDrawing:(id)a5 liveScrollOffset:(CGPoint)a6
{
  v10 = a4;
  v8 = a5;
  v9 = [(PKSelectionModificationKnob *)self->_leftKnob isHidden];
  if (v10 && v8)
  {
    if (v9)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [(PKSelectionGlowRenderer *)self _setupHighlightIfNecessary];
      [PKSelectionGlowRenderer _createPathAroundStrokes:v10 inDrawing:v8 isLive:1 liveScrollOffset:?];
      [(PKSelectionGlowRenderer *)&self->super.isa setKnobsVisible:?];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      [(PKSelectionGlowRenderer *)self _setupHighlightIfNecessary];
      [PKSelectionGlowRenderer _createPathAroundStrokes:v10 inDrawing:v8 isLive:1 liveScrollOffset:?];
      [(PKSelectionGlowRenderer *)&self->super.isa setKnobsVisible:?];
    }
  }

  else
  {
    [(PKSelectionGlowRenderer *)&self->super.isa setKnobsVisible:?];
    [(CALayer *)self->_strokePathsTilesLayer setSublayers:0];
    [(NSMutableDictionary *)self->_tiles removeAllObjects];
  }
}

- (id)setKnobsVisible:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[3] setHidden:a2 ^ 1u];
    [*(v3 + 32) setHidden:a2 ^ 1u];
    v4 = [(PKSelectionGlowRenderer *)v3 _highlightColor];
    [(PKSelectionModificationKnob *)*(v3 + 24) setKnobColor:v4];
    v5 = [(PKSelectionGlowRenderer *)v3 _highlightColor];
    v6 = *(v3 + 32);

    return [(PKSelectionModificationKnob *)v6 setKnobColor:v5];
  }

  return result;
}

- (void)_createPathAroundStrokes:(id *)a1 inDrawing:(void *)a2 isLive:(void *)a3 liveScrollOffset:(int)a4
{
  v232 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (v7 && [v7 count])
    {
      v159 = v8;
      v9 = v8;
      v10 = *(MEMORY[0x1E695EFD0] + 16);
      *&v222.a = *MEMORY[0x1E695EFD0];
      *&v222.c = v10;
      *&v222.tx = *(MEMORY[0x1E695EFD0] + 32);
      if (a4)
      {
        WeakRetained = objc_loadWeakRetained(a1 + 11);
        v12 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained transformFromStrokeSpaceToViewInDrawing:v9];
        }

        else
        {
          memset(&v225, 0, sizeof(v225));
        }

        v222 = v225;
      }

      else
      {
        [a1[10] bounds];
        v14 = v13;
        v16 = v15;
        v17 = objc_loadWeakRetained(a1 + 11);
        v18 = [a1[10] drawing];
        [v17 scaleForDrawing:v18];
        v20 = v19;

        memset(&v225, 0, sizeof(v225));
        CGAffineTransformMakeTranslation(&v225, -v14, -v16);
        CGAffineTransformMakeScale(&t2, v20, v20);
        t1 = v225;
        CGAffineTransformConcat(&v222, &t1, &t2);
      }

      v21 = objc_loadWeakRetained(a1 + 11);
      [v21 scaleForDrawing:v9];
      v23 = v22;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__PKSelectionGlowRenderer__createPathAroundStrokes_inDrawing_isLive_liveScrollOffset___block_invoke;
      aBlock[3] = &unk_1E82D6DF8;
      aBlock[4] = a1;
      *&aBlock[5] = v23;
      v221 = v222;
      v174 = _Block_copy(aBlock);
      v24 = objc_loadWeakRetained(a1 + 11);
      [v24 attachmentBoundsForDrawing:v9];
      r2_24 = v26;
      v190 = v25;
      r2_8 = v28;
      r2_16 = v27;

      v29 = objc_loadWeakRetained(a1 + 11);
      v161 = v29;
      if (v29)
      {
        v30 = objc_loadWeakRetained(v29 + 15);
      }

      else
      {
        v30 = 0;
      }

      v31 = [v9 uuid];
      v32 = [v30 _attachmentForUUID:v31];

      if (a4 && [v32 isExternalAttachment])
      {
        v33 = [v32 viewRep];
        [v33 frame];
        r2_24 = v35;
        v190 = v34;
        r2_8 = v37;
        r2_16 = v36;
      }

      v162 = v32;
      v38 = *(MEMORY[0x1E695F050] + 8);
      r2 = *MEMORY[0x1E695F050];
      v40 = *(MEMORY[0x1E695F050] + 16);
      v39 = *(MEMORY[0x1E695F050] + 24);
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v41 = v7;
      v42 = [v41 countByEnumeratingWithState:&v216 objects:v231 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v217;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v217 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v233.origin.x = v174[2](v174, *(*(&v216 + 1) + 8 * i));
            x = v233.origin.x;
            y = v233.origin.y;
            width = v233.size.width;
            height = v233.size.height;
            v249.origin.y = r2_24;
            v249.origin.x = v190;
            v249.size.height = r2_8;
            v249.size.width = r2_16;
            if (CGRectIntersectsRect(v233, v249))
            {
              v234.origin.x = x;
              v234.origin.y = y;
              v234.size.width = width;
              v234.size.height = height;
              v250.origin.x = r2;
              v250.origin.y = v38;
              v250.size.width = v40;
              v250.size.height = v39;
              v235 = CGRectUnion(v234, v250);
              r2 = v235.origin.x;
              v38 = v235.origin.y;
              v40 = v235.size.width;
              v39 = v235.size.height;
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v216 objects:v231 count:16];
        }

        while (v43);
      }

      v157 = a4;
      v160 = v7;
      v165 = v41;

      v236.origin.y = r2_24;
      v236.origin.x = v190;
      v236.size.height = r2_8;
      v236.size.width = r2_16;
      v251.origin.x = r2;
      v251.origin.y = v38;
      v251.size.width = v40;
      v251.size.height = v39;
      v237 = CGRectUnion(v236, v251);
      v50 = v237.origin.x;
      v191 = v237.origin.y;
      r2_16a = v237.size.width;
      v51 = v237.size.height;
      v52 = MEMORY[0x1E695DFA8];
      v53 = [a1[8] allKeys];
      v163 = [v52 setWithArray:v53];

      r2_24a = a1;
      LODWORD(v54) = 1050253722;
      [a1[2] setOpacity:v54];
      v164 = [MEMORY[0x1E695DFA8] set];
      r2a = vcvtpd_s64_f64(v51 * 0.00390625);
      if (r2a >= 1)
      {
        v55 = v51;
        r2_8a = 0;
        v56 = vcvtpd_s64_f64(r2_16a * 0.00390625);
        do
        {
          if (v56 >= 1)
          {
            for (j = 0; j != v56; ++j)
            {
              v238.size.width = 256.0;
              v238.origin.x = v50 + j * 256.0;
              v238.origin.y = v191 + r2_8a * 256.0;
              v238.size.height = 256.0;
              v252.origin.x = v50;
              v252.origin.y = v191;
              v252.size.width = r2_16a;
              v252.size.height = v55;
              v239 = CGRectIntersection(v238, v252);
              v58 = v239.origin.x;
              v59 = v239.origin.y;
              v60 = v239.size.width;
              v61 = v239.size.height;
              if (!CGRectIsNull(v239))
              {
                v62 = [MEMORY[0x1E695DF70] array];
                v212 = 0u;
                v213 = 0u;
                v214 = 0u;
                v215 = 0u;
                v63 = v41;
                v64 = [v63 countByEnumeratingWithState:&v212 objects:v230 count:16];
                if (v64)
                {
                  v65 = v64;
                  v66 = *v213;
                  do
                  {
                    for (k = 0; k != v65; ++k)
                    {
                      if (*v213 != v66)
                      {
                        objc_enumerationMutation(v63);
                      }

                      v68 = *(*(&v212 + 1) + 8 * k);
                      v240.origin.x = v174[2](v174, v68);
                      v253.origin.x = v58;
                      v253.origin.y = v59;
                      v253.size.width = v60;
                      v253.size.height = v61;
                      if (CGRectIntersectsRect(v240, v253))
                      {
                        [v62 addObject:v68];
                      }
                    }

                    v65 = [v63 countByEnumeratingWithState:&v212 objects:v230 count:16];
                  }

                  while (v65);
                }

                if ([v62 count])
                {
                  v69 = [[PKSelectionTileProperties alloc] initWithFrame:v62 strokes:v58, v59, v60, v61];
                  [v164 addObject:v69];
                }
              }
            }
          }

          ++r2_8a;
        }

        while (r2_8a != r2a);
      }

      v70 = [v164 mutableCopy];
      [v70 minusSet:v163];
      v71 = [v163 mutableCopy];
      [v71 minusSet:v164];
      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v72 = v71;
      v73 = [v72 countByEnumeratingWithState:&v208 objects:v229 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v209;
        do
        {
          for (m = 0; m != v74; ++m)
          {
            if (*v209 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v77 = *(*(&v208 + 1) + 8 * m);
            v78 = [*(r2_24a + 64) objectForKeyedSubscript:v77];
            [v78 removeFromSuperlayer];
            [*(r2_24a + 64) removeObjectForKey:v77];
          }

          v74 = [v72 countByEnumeratingWithState:&v208 objects:v229 count:16];
        }

        while (v74);
      }

      v156 = v72;

      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v79 = v70;
      v80 = [v79 countByEnumeratingWithState:&v204 objects:v228 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v205;
        do
        {
          for (n = 0; n != v81; ++n)
          {
            if (*v205 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = *(*(&v204 + 1) + 8 * n);
            v85 = [[PKSelectionTile alloc] initWithProperties:v84];
            [v84 frame];
            [(PKSelectionTile *)v85 setFrame:?];
            [*(r2_24a + 64) setObject:v85 forKeyedSubscript:v84];
            [*(r2_24a + 16) addSublayer:v85];
          }

          v81 = [v79 countByEnumeratingWithState:&v204 objects:v228 count:16];
        }

        while (v81);
      }

      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      obj = v79;
      v86 = r2_24a;
      v170 = [obj countByEnumeratingWithState:&v200 objects:v227 count:16];
      if (v170)
      {
        v168 = *v201;
        r2_16b = *MEMORY[0x1E6979E78];
        r2_8b = *MEMORY[0x1E6979E98];
        do
        {
          v87 = 0;
          do
          {
            if (*v201 != v168)
            {
              objc_enumerationMutation(obj);
            }

            v172 = v87;
            v88 = *(*(&v200 + 1) + 8 * v87);
            v192 = [*(v86 + 64) objectForKeyedSubscript:v88];
            v196 = 0u;
            v197 = 0u;
            v198 = 0u;
            v199 = 0u;
            r2b = [v88 strokes];
            v89 = [r2b countByEnumeratingWithState:&v196 objects:v226 count:16];
            if (v89)
            {
              v90 = v89;
              v91 = *v197;
              do
              {
                for (ii = 0; ii != v90; ++ii)
                {
                  if (*v197 != v91)
                  {
                    objc_enumerationMutation(r2b);
                  }

                  v93 = *(*(&v196 + 1) + 8 * ii);
                  v94 = +[PKSelectionGlowRenderer sharedStrokePathCache];
                  v95 = [v93 _strokeUUID];
                  v96 = [(PKLRUCache *)v94 objectForKey:v95];

                  if (v96)
                  {
                    v97 = CGPathRetain([v96 CGPath]);
                  }

                  else
                  {
                    LODWORD(v225.a) = 0;
                    v97 = [v93 newSelectionPathRepresentationWithPointsCount:&v225];
                    v98 = +[PKSelectionGlowRenderer sharedStrokePathCache];
                    v99 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v97];
                    v100 = [v93 _strokeUUID];
                    [(PKLRUCache *)v98 setObject:v99 forKey:v100 cost:16 * SLODWORD(v225.a)];
                  }

                  v101 = [MEMORY[0x1E69794A0] layer];
                  memset(&v225, 0, sizeof(v225));
                  [v88 frame];
                  v103 = -v102;
                  [v88 frame];
                  CGAffineTransformMakeTranslation(&v225, v103, -v104);
                  memset(&t2, 0, sizeof(t2));
                  if (v93)
                  {
                    [v93 _transform];
                  }

                  else
                  {
                    memset(&t1, 0, sizeof(t1));
                  }

                  v195 = v222;
                  CGAffineTransformConcat(&t2, &t1, &v195);
                  v195 = t2;
                  v194 = v225;
                  CGAffineTransformConcat(&t1, &v195, &v194);
                  t2 = t1;
                  v105 = CGPathCreateMutableCopyByTransformingPath(v97, &t2);
                  v106 = [MEMORY[0x1E69DCEB0] mainScreen];
                  [v106 scale];
                  [v101 setContentsScale:?];

                  [v101 setPath:v105];
                  v107 = [v93 _strokeMask];

                  if (v107)
                  {
                    v86 = r2_24a;
                    [v101 setFillColor:-[PKSelectionGlowRenderer _highlightColor](r2_24a)];
                    v108 = 10.0;
                  }

                  else
                  {
                    [v101 setFillColor:0];
                    v109 = v93;
                    v86 = r2_24a;
                    v108 = [(PKSelectionGlowRenderer *)r2_24a _widthForStroke:v109 withDrawingScale:v23]+ 10.0;
                  }

                  [v101 setLineWidth:v108];
                  [v101 setLineCap:r2_16b];
                  [v101 setLineJoin:r2_8b];
                  [v101 setStrokeColor:-[PKSelectionGlowRenderer _highlightColor](v86)];
                  CGPathRelease(v97);
                  CGPathRelease(v105);
                  [v192 addSublayer:v101];
                }

                v90 = [r2b countByEnumeratingWithState:&v196 objects:v226 count:16];
              }

              while (v90);
            }

            v87 = v172 + 1;
          }

          while (v172 + 1 != v170);
          v170 = [obj countByEnumeratingWithState:&v200 objects:v227 count:16];
        }

        while (v170);
      }

      v7 = v160;
      v110 = v162;
      if (v157 && v162 && [v162 isExternalAttachment])
      {
        v111 = [v86 adornmentLayer];
        v112 = v111;
        if (v161 && v111 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v113 = [v162 contentWindowCoordinateSpace];
          v114 = [v162 contentScaledCoordinateSpace];
          v115 = objc_loadWeakRetained(v161 + 15);
          [v115 frame];
          [v113 convertRect:v114 toCoordinateSpace:?];
          [v112 setFrame:?];

          if (objc_opt_respondsToSelector())
          {
            [v161 updateLiveSelectionForStrokesInLayer:v112 inDrawing:v151];
          }

          v110 = v162;
        }
      }

      if ((*(v86 + 48) & 1) == 0)
      {
        a = v222.a;
        b = v222.b;
        r2_16c = v222.d;
        tx = v222.tx;
        r2c = v222.c;
        r2_8c = v222.ty;
        v117 = v165;
        v118 = objc_loadWeakRetained((v86 + 88));
        v119 = [v118 _firstStrokesInStrokes:v117];

        v120 = objc_loadWeakRetained((v86 + 88));
        v121 = [v120 _lastStrokesInStrokes:v117];

        [PKDrawing _boundingBoxForStrokeArray:v119];
        v123 = v122;
        v125 = v124;
        v127 = v126;
        v129 = v128;
        [PKDrawing _boundingBoxForStrokeArray:v121];
        v166 = v130;
        v169 = v131;
        v171 = v132;
        v134 = v133;
        MaxX = *MEMORY[0x1E695EFF8];
        MinY = *(MEMORY[0x1E695EFF8] + 8);
        v137 = objc_loadWeakRetained((v86 + 88));
        LOBYTE(v120) = [v137 isRTL];

        v138 = [v119 count];
        r2_24b = a;
        v158 = MaxX;
        if (v120)
        {
          v152 = MinY;
          if (v138)
          {
            v241.origin.x = v123;
            v241.origin.y = v125;
            v241.size.width = v127;
            v241.size.height = v129;
            MaxX = CGRectGetMaxX(v241);
            v242.origin.x = v123;
            v242.origin.y = v125;
            v242.size.width = v127;
            v242.size.height = v129;
            MinY = CGRectGetMinY(v242);
          }

          if ([v121 count])
          {
            v243.origin.x = v166;
            v243.origin.y = v169;
            v243.size.width = v171;
            v243.size.height = v134;
            MinX = CGRectGetMinX(v243);
            v244.size.height = v134;
            v140 = MinX;
            v244.origin.x = v166;
            v244.origin.y = v169;
            v244.size.width = v171;
            MaxY = CGRectGetMaxY(v244);
          }

          else
          {
            MaxY = v153;
            v140 = v158;
          }
        }

        else
        {
          v154 = v134;
          MaxY = MinY;
          v140 = MaxX;
          if (v138)
          {
            v245.origin.x = v123;
            v245.origin.y = v125;
            v245.size.width = v127;
            v245.size.height = v129;
            v140 = CGRectGetMinX(v245);
            v246.origin.x = v123;
            v246.origin.y = v125;
            v246.size.width = v127;
            v246.size.height = v129;
            MaxY = CGRectGetMinY(v246);
          }

          if ([v121 count])
          {
            v247.origin.x = v166;
            v247.origin.y = v169;
            v247.size.width = v171;
            v247.size.height = v155;
            MaxX = CGRectGetMaxX(v247);
            v248.origin.x = v166;
            v248.origin.y = v169;
            v248.size.width = v171;
            v248.size.height = v155;
            MinY = CGRectGetMaxY(v248);
          }
        }

        v142 = tx + r2c * MaxY + r2_24b * v140;
        v143 = r2_8c + r2_16c * MaxY + b * v140;
        v144 = tx + r2c * MinY + r2_24b * MaxX;
        v145 = r2_8c + r2_16c * MinY + b * MaxX;
        v146 = objc_loadWeakRetained((v86 + 88));
        v147 = [v146 isRTL];

        if (v147)
        {
          v148 = -1.0;
        }

        else
        {
          v148 = 1.0;
        }

        v149 = v143 - v148;
        v150 = v145 + v148;
        [*(v86 + 24) setPosition:{v142 + -1.0, v149}];
        [*(v86 + 32) setPosition:{v144 + 1.0, v150}];

        v110 = v162;
      }

      v8 = v159;
    }

    else
    {
      [a1[2] setSublayers:0];
      [a1[8] removeAllObjects];
    }
  }
}

- (PKSelectionModificationKnob)_newKnobWithLocation:(uint64_t)a1
{
  v4 = [PKSelectionModificationKnob alloc];
  v5 = [(PKSelectionGlowRenderer *)a1 _highlightColor];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = [WeakRetained isRTL];
  if (v4)
  {
    v8 = v7;
    v19.receiver = v4;
    v19.super_class = PKSelectionModificationKnob;
    v9 = objc_msgSendSuper2(&v19, sel_init);
    v4 = v9;
    if (v9)
    {
      LODWORD(v10) = 1.0;
      [(PKSelectionModificationKnob *)v9 setOpacity:v10];
      v11 = [MEMORY[0x1E6979398] layer];
      knobLayer = v4->_knobLayer;
      v4->_knobLayer = v11;

      v13 = [MEMORY[0x1E6979398] layer];
      knobTailLayer = v4->_knobTailLayer;
      v4->_knobTailLayer = v13;

      v4->_knobColor = CGColorRetain(v5);
      [(PKSelectionModificationKnob *)&v4->super.super.isa _updateKnobAppearance];
      v4->_isRTL = v8;
      v4->_knobLocation = a2;
      [(PKSelectionModificationKnob *)v4 addSublayer:v4->_knobLayer];
      [(PKSelectionModificationKnob *)v4 addSublayer:v4->_knobTailLayer];
      [(PKSelectionModificationKnob *)v4 setIsAccessibilityElement:1];
    }
  }

  v15 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v15 userInterfaceIdiom] == 1)
  {
    v16 = 14.0;
  }

  else
  {
    v16 = 13.0;
  }

  [(PKSelectionModificationKnob *)v4 setFrame:0.0, 0.0, v16, v16 + v16];
  v17 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v17 scale];
  [(PKSelectionModificationKnob *)v4 setContentsScale:?];

  return v4;
}

- (double)_widthForStroke:(double)a3 withDrawingScale:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    [v5 _maxWidthForStroke];
    v8 = v7;
    v9 = [MEMORY[0x1E69DC938] currentDevice];
    [v9 userInterfaceIdiom];

    v10 = 0.0;
    v11 = 0.0;
    if (v6)
    {
      [v6 transform];
      v11 = v20;
      v10 = v21;
    }

    v12 = sqrt(v10 * v10 + v11 * v11);
    v13 = [v6 ink];
    v14 = [v13 behavior];
    v15 = [v14 renderingDescriptor];
    v16 = [v15 type];
    v17 = 2.0;
    if (v16)
    {
      v17 = 0.0;
    }

    v18 = (v17 + v8 * v12) * a3;
  }

  else
  {
    v18 = 0.0;
  }

  return v18;
}

void __86__PKSelectionGlowRenderer__createPathAroundStrokes_inDrawing_isLive_liveScrollOffset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 renderBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PKSelectionGlowRenderer *)*(a1 + 32) _widthForStroke:v3 withDrawingScale:*(a1 + 40)];

  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  v16 = CGRectInset(v15, -(v12 + 10.0), -(v12 + 10.0));
  v13 = *(a1 + 64);
  *&v14.a = *(a1 + 48);
  *&v14.c = v13;
  *&v14.tx = *(a1 + 80);
  CGRectApplyAffineTransform(v16, &v14);
}

- (void)_willBeginDragKnobLocation:(unint64_t)a3 atPoint:(double)a4 knobDragMode:(double)a5
{
  if (a1)
  {
    *(a1 + 40) = a3;
    *(a1 + 56) = a2;
    *(a1 + 48) = 1;
    if (a3 <= 2)
    {
      [(PKSelectionModificationKnob *)*(a1 + 32) didBeginBrushSelection];
      [(PKSelectionModificationKnob *)*(a1 + 24) didBeginBrushSelection];
      [(PKSelectionGlowRenderer *)a1 _updateKnobAppearanceForDragAtKnobLocation:a2 point:a3 knobDragMode:1 selectionType:2 touchType:a4, a5];
      v11 = 32;
      if (!a2)
      {
        v11 = 24;
      }

      v13 = *(a1 + v11);
      [v13 setHidden:0];
      v12 = [(PKSelectionGlowRenderer *)a1 _highlightColor];
      [(PKSelectionModificationKnob *)v13 setKnobColor:v12];
    }
  }
}

- (void)_updateKnobAppearanceForDragAtKnobLocation:(unint64_t)a3 point:(uint64_t)a4 knobDragMode:(uint64_t)a5 selectionType:(double)a6 touchType:(double)a7
{
  if (a1)
  {
    v13 = 32;
    if (!a2)
    {
      v13 = 24;
    }

    v14 = *(a1 + v13);
    if (a3 > 2)
    {
      [(PKSelectionGlowRenderer *)a1 _resetKnobAppearance];
      [v14 frame];
      v25 = v24;
      v27 = v26;
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v14 setFrame:{a6 - v25 * 0.5, a7 - v27 * 0.5, v25, v27}];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      v16 = 5.75;
      if (a5 == 2)
      {
        v16 = 3.5;
      }

      v17 = 6.5;
      v18 = 5.0;
      if (a5 == 2)
      {
        v17 = 5.0;
        v18 = 2.0;
      }

      if (a4 == 1)
      {
        v17 = v18;
      }

      if (a4 != 2)
      {
        v16 = v17;
      }

      CATransform3DMakeScale(&v28, v16, v16, 1.0);
      [v14 setTransform:&v28];
      [v14 frame];
      v20 = v19;
      v22 = v21;
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v14 setFrame:{a6 - v20 * 0.5, a7 - v22 * 0.5, v20, v22}];
      [MEMORY[0x1E6979518] commit];
      v23 = *(a1 + 24);
      if (v23 == v14)
      {
        v23 = *(a1 + 32);
      }

      [v23 setOpacity:0.0];
    }
  }
}

- (void)_updateKnobAppearanceForDragAtKnobLocation:(double)a3 point:(double)a4 otherKnobPoint:(double)a5 selectionType:(double)a6 touchType:
{
  if (a1)
  {
    if (a2)
    {
      v12 = 32;
    }

    else
    {
      v12 = 24;
    }

    v13 = *(a1 + v12);
    if (a2)
    {
      v14 = 24;
    }

    else
    {
      v14 = 32;
    }

    v28 = v13;
    v15 = *(a1 + v14);
    [(PKSelectionGlowRenderer *)a1 _resetKnobAppearance];
    v17 = 1.0;
    if (a2 == 1)
    {
      v17 = -1.0;
    }

    v18 = a5 + v17;
    v19 = a6 + v17;
    [v28 frame];
    v21 = v20;
    v23 = v22;
    [v15 frame];
    v25 = v24;
    v27 = v26;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v28 setFrame:{a3 - v21 * 0.5, a4 - v23 * 0.5, v21, v23}];
    [v15 setFrame:{v18 - v25 * 0.5, v19 - v27 * 0.5, v25, v27}];
    [MEMORY[0x1E6979518] commit];
  }
}

- (uint64_t)_resetKnobAppearance
{
  if (result)
  {
    v2 = result;
    LODWORD(a2) = 1.0;
    [*(result + 24) setOpacity:a2];
    LODWORD(v3) = 1.0;
    [*(v2 + 32) setOpacity:v3];
    v4 = *(v2 + 24);
    v12 = *(MEMORY[0x1E69792E8] + 80);
    v18 = *(MEMORY[0x1E69792E8] + 64);
    v13 = v18;
    v19 = v12;
    v10 = *(MEMORY[0x1E69792E8] + 112);
    v20 = *(MEMORY[0x1E69792E8] + 96);
    v11 = v20;
    v21 = v10;
    v8 = *(MEMORY[0x1E69792E8] + 16);
    v14 = *MEMORY[0x1E69792E8];
    v9 = v14;
    v15 = v8;
    v6 = *(MEMORY[0x1E69792E8] + 48);
    v16 = *(MEMORY[0x1E69792E8] + 32);
    v7 = v16;
    v17 = v6;
    [v4 setTransform:&v14];
    v5 = *(v2 + 32);
    v18 = v13;
    v19 = v12;
    v20 = v11;
    v21 = v10;
    v14 = v9;
    v15 = v8;
    v16 = v7;
    v17 = v6;
    return [v5 setTransform:&v14];
  }

  return result;
}

- (uint64_t)_didEndDragKnobLocation:(uint64_t)a3 knobDragMode:(unint64_t)a4
{
  if (result)
  {
    v4 = result;
    if (a4 <= 2)
    {
      [(PKSelectionModificationKnob *)*(result + 32) didEndBrushSelection];
      [(PKSelectionModificationKnob *)*(v4 + 24) didEndBrushSelection];
    }

    v6 = [*(v4 + 80) strokes];
    -[PKSelectionGlowRenderer setKnobsVisible:](v4, [v6 count] != 0);

    *(v4 + 48) = 0;

    return [(PKSelectionGlowRenderer *)v4 _resetKnobAppearance];
  }

  return result;
}

- (id)_accessibilityUserTestingChildren
{
  v3 = MEMORY[0x1E695DF70];
  v11.receiver = self;
  v11.super_class = PKSelectionGlowRenderer;
  v4 = [(PKSelectionGlowRenderer *)&v11 _accessibilityUserTestingChildren];
  v5 = [v3 arrayWithArray:v4];

  leftKnob = self->_leftKnob;
  if (leftKnob)
  {
    [(PKSelectionModificationKnob *)leftKnob opacity];
    if (v7 > 0.0)
    {
      [v5 addObject:self->_leftKnob];
    }
  }

  rightKnob = self->_rightKnob;
  if (rightKnob)
  {
    [(PKSelectionModificationKnob *)rightKnob opacity];
    if (v9 > 0.0)
    {
      [v5 addObject:self->_rightKnob];
    }
  }

  return v5;
}

@end