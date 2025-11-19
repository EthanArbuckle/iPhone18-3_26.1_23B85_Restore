@interface CRLShapeRepHelperDefault
- (BOOL)drawsInOneStep;
- (BOOL)hasLegacyFreehandDrawingBrushStroke;
- (CRLShapeRepHelperDefault)initWithShapeRep:(id)a3;
- (void)dealloc;
- (void)drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 usingPathOverride:(id)a7 patternOffsetsBySubpathOverride:(id)a8 transparencyLayersBySubpath:(id)a9;
- (void)dynamicOperationDidEnd;
@end

@implementation CRLShapeRepHelperDefault

- (CRLShapeRepHelperDefault)initWithShapeRep:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRLShapeRepHelperDefault;
  v5 = [(CRLShapeRepHelperDefault *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shapeRep, v4);
    v7 = [v4 shapeLayout];
    objc_storeWeak(&v6->_shapeLayout, v7);

    v8 = [v4 shapeInfo];
    objc_storeWeak(&v6->_shapeInfo, v8);

    size = CGRectNull.size;
    v6->_committedPathImageUnscaledRect.origin = CGRectNull.origin;
    v6->_committedPathImageUnscaledRect.size = size;
  }

  return v6;
}

- (void)dealloc
{
  CGContextRelease(self->_committedPathContext);
  CGImageRelease(self->_committedPathImage);
  v3.receiver = self;
  v3.super_class = CRLShapeRepHelperDefault;
  [(CRLShapeRepHelperDefault *)&v3 dealloc];
}

- (BOOL)drawsInOneStep
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeLayout);
  v4 = [WeakRetained fill];

  if (v4)
  {
    v5 = [v4 isClear];
  }

  else
  {
    v5 = 1;
  }

  v6 = objc_loadWeakRetained(&self->_shapeInfo);
  v7 = [v6 stroke];

  if (([v7 shouldRender] & 1) == 0)
  {

    v7 = 0;
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 1;
  }

  v9 = objc_loadWeakRetained(&self->_shapeLayout);
  if ([v9 pathIsOpen])
  {
    v10 = objc_loadWeakRetained(&self->_shapeInfo);
    v11 = [v10 headLineEnd];
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->_shapeInfo);
      v14 = [v13 tailLineEnd];
      v12 = v14 == 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if ((v8 & v12) == 1)
  {
    if (v5)
    {
      if (!v7)
      {
        v16 = 1;
        goto LABEL_22;
      }

      v15 = v7;
    }

    else
    {
      v15 = v4;
    }

    v16 = [v15 drawsInOneStep];
  }

  else
  {
    v16 = 0;
  }

LABEL_22:

  return v16;
}

- (BOOL)hasLegacyFreehandDrawingBrushStroke
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeInfo);
  v4 = [WeakRetained isFreehandDrawingShape];

  if (v4)
  {
    v5 = objc_opt_class();
    v6 = objc_loadWeakRetained(&self->_shapeLayout);
    v7 = [v6 stroke];
    v8 = sub_100014370(v5, v7);

    if (v8)
    {
      v9 = [v8 strokeName];
      if ([v9 isEqualToString:@"Pencil"])
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        v10 = [v8 strokeName];
        LOBYTE(v4) = [v10 isEqualToString:@"Crayon"];
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)drawInContext:(CGContext *)a3 withContent:(BOOL)a4 strokeDrawOptions:(unint64_t)a5 withOpacity:(BOOL)a6 usingPathOverride:(id)a7 patternOffsetsBySubpathOverride:(id)a8 transparencyLayersBySubpath:(id)a9
{
  v219 = a6;
  v220 = a4;
  v13 = a7;
  v14 = a8;
  v15 = a9;
  WeakRetained = objc_loadWeakRetained(&self->_shapeRep);
  v17 = [WeakRetained canvas];

  v218 = [v17 shouldSuppressBackgrounds];
  v223 = a5;
  if (v218 != sub_1005106C8(a3))
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10137D444();
    }

    v18 = off_1019EDA68;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10137D458();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10137D4F8();
    }

    v19 = off_1019EDA68;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10137D520();
    }

    v20 = [NSString stringWithUTF8String:"[CRLShapeRepHelperDefault drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperDefault.m"];
    [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:109 isFatal:0 description:"Canvas and CGContext disagree about whether we are suppressing backgrounds"];

    a5 = v223;
  }

  v22 = objc_loadWeakRetained(&self->_shapeLayout);
  v23 = [v22 path];
  if (![v23 containsElementsOtherThanMoveAndClose])
  {

    goto LABEL_156;
  }

  if ((a5 & 3) != 0 || (a5 & 4) != 0 || v220)
  {
    CGContextSaveGState(a3);
    v24 = objc_loadWeakRetained(&self->_shapeRep);
    v25 = [v24 freehandDrawingDynamicFillErasingDelegate];

    if (v25)
    {
      v26 = objc_loadWeakRetained(&self->_shapeRep);
      v27 = [v26 freehandDrawingDynamicFillErasingDelegate];
      v28 = [v27 maskImageForErasing];

      if (v28)
      {
        v29 = objc_loadWeakRetained(&self->_shapeLayout);
        v30 = v29;
        if (v29)
        {
          [v29 transformInRoot];
        }

        else
        {
          memset(&v227, 0, sizeof(v227));
        }

        CGAffineTransformInvert(&transform, &v227);
        CGContextConcatCTM(a3, &transform);

        v31 = objc_loadWeakRetained(&self->_shapeRep);
        v32 = [v31 freehandDrawingDynamicFillErasingDelegate];
        [v32 unscaledRectForMaskImageForErasing];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v41 = [v28 CGImage];
        v230.origin.x = v34;
        v230.origin.y = v36;
        v230.size.width = v38;
        v230.size.height = v40;
        CGContextClipToMask(a3, v230, v41);

        v42 = objc_loadWeakRetained(&self->_shapeLayout);
        v43 = v42;
        if (v42)
        {
          [v42 transformInRoot];
        }

        else
        {
          memset(&transform, 0, sizeof(transform));
        }

        CGContextConcatCTM(a3, &transform);
      }

      a5 = v223;
    }

    if (v219)
    {
      v44 = objc_loadWeakRetained(&self->_shapeRep);
      v208 = [v44 i_beginApplyOpacity:a3 forDrawingInOneStep:{-[CRLShapeRepHelperDefault drawsInOneStep](self, "drawsInOneStep")}];
    }

    else
    {
      v208 = 0;
    }

    v45 = objc_loadWeakRetained(&self->_shapeLayout);
    [v45 pathBounds];
    v47 = v46;
    v49 = v48;

    CGContextTranslateCTM(a3, -v47, -v49);
    [v17 viewScale];
    v51 = v50;
    v52 = sub_100510A7C(a3);
    v226 = CGPointZero;
    *&v227.a = v226;
    v53 = objc_loadWeakRetained(&self->_shapeLayout);
    v54 = [v53 stroke];

    if (([v54 shouldRender] & 1) == 0)
    {

      v54 = 0;
    }

    v213 = v17;
    v55 = v51 * v52;
    v216 = v54;
    v56 = v14;
    if (v13)
    {
      v57 = v15;
      v214 = [v13 copy];
      v58 = [v54 copy];
    }

    else
    {
      v59 = objc_loadWeakRetained(&self->_shapeInfo);
      v60 = [v59 isFreehandDrawingShape];

      v61 = objc_loadWeakRetained(&self->_shapeLayout);
      v62 = v61;
      v57 = v15;
      if (v60)
      {
        v63 = [v61 path];
        v214 = [v63 copy];

        v58 = [v54 copy];
      }

      else
      {
        v224 = 0;
        v225 = 0;
        [v61 aliasPathForScale:&v225 adjustedStroke:&v224 adjustedPath:&v227 startDelta:&v226 endDelta:v51 * v52];
        v58 = v225;
        v214 = v224;
      }

      a5 = v223;
    }

    v64 = objc_opt_class();
    v212 = v58;
    v65 = [v58 mutableCopy];
    v66 = sub_100013F00(v64, v65);

    v67 = objc_opt_class();
    v215 = v66;
    v217 = sub_1003038E0(v66, v67, 1, v68, v69, v70, v71, v72, &OBJC_PROTOCOL___CRLMutableStroke);
    v15 = v57;
    v14 = v56;
    v17 = v213;
    if (v217)
    {
      v73 = objc_loadWeakRetained(&self->_shapeInfo);
      v74 = [v73 pathSource];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = objc_loadWeakRetained(&self->_shapeInfo);
        [v75 pathSource];
        v76 = v15;
        v77 = v14;
        v79 = v78 = v13;
        v209 = [v79 isCurveContinuous];

        v13 = v78;
        v14 = v77;
        v15 = v76;
        v17 = v213;

        a5 = v223;
        if (v209)
        {
          [v217 width];
          v81 = v80;
          [v213 viewScale];
          if (v81 * v82 < 1.1)
          {
            [v217 width];
            [v217 setWidth:v83 + 0.1];
          }
        }
      }

      else
      {
      }
    }

    v84 = objc_loadWeakRetained(&self->_shapeLayout);
    v211 = v13;
    if ([v84 pathIsOpen])
    {
      v85 = objc_loadWeakRetained(&self->_shapeInfo);
      v86 = [v85 headLineEnd];
      if (v86)
      {
        v210 = 1;
      }

      else
      {
        v88 = objc_loadWeakRetained(&self->_shapeInfo);
        v89 = [v88 tailLineEnd];
        v210 = v89 != 0;
      }

      v87 = v217;

      a5 = v223;
    }

    else
    {
      v210 = 0;
      v87 = v217;
    }

    if (v220)
    {
      v90 = a3;
      v91 = objc_loadWeakRetained(&self->_shapeLayout);
      v92 = [v91 fill];

      if (v92 && (([v92 isClear] | v218) & 1) == 0)
      {
        if ([v92 fillType] == 1 && (v93 = objc_opt_class(), sub_100013F00(v93, v92), v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "gradientType"), v94, v95 == 1))
        {
          v96 = objc_loadWeakRetained(&self->_shapeRep);
          [v96 boundsForStandardKnobs];
          v232 = CGRectOffset(v231, v47, v49);
          x = v232.origin.x;
          v221 = v55;
          y = v232.origin.y;
          width = v232.size.width;
          height = v232.size.height;

          v101 = [v214 CGPath];
          v102 = [v17 isDrawingIntoPDF];
          v103 = y;
          v55 = v221;
          [v92 paintPath:v101 naturalBounds:v90 inContext:v102 isPDF:{x, v103, width, height}];
        }

        else
        {
          [v92 paintPath:objc_msgSend(v214 inContext:{"CGPath"), v90}];
        }
      }

      a3 = v90;
    }

    if (!v87)
    {
      v217 = 0;
      v13 = v211;
      v105 = v216;
LABEL_153:
      if (v219)
      {
        v202 = objc_loadWeakRetained(&self->_shapeRep);
        [v202 i_endApplyOpacity:a3 appliedTransparencyLayer:v208];
      }

      CGContextRestoreGState(a3);

      goto LABEL_156;
    }

    v104 = [v87 shouldRender];
    v105 = v216;
    if ((a5 & 7) == 0 || !v104)
    {
LABEL_152:
      v13 = v211;
      goto LABEL_153;
    }

    v106 = !v210;
    if ((a5 & 1) == 0)
    {
      v106 = 1;
    }

    if (v106)
    {
      v109 = 0;
    }

    else
    {
      v107 = [v87 color];
      [v107 alphaComponent];
      v109 = (a5 & 8) == 0 && v108 < 1.0;
    }

    v110 = objc_loadWeakRetained(&self->_shapeRep);
    if ([v110 i_isCurrentlyBeingFreehandDrawn])
    {
      v111 = [v87 color];
      [v111 alphaComponent];
      v112 = self;
      v113 = a3;
      v115 = v114 < 1.0;

      LOBYTE(v111) = v115 || v109;
      a3 = v113;
      self = v112;
      a5 = v223;

      if ((v111 & 1) == 0)
      {
LABEL_71:
        v222 = 0;
        goto LABEL_77;
      }
    }

    else
    {

      if (!v109)
      {
        goto LABEL_71;
      }
    }

    CGContextSaveGState(a3);
    v116 = [v87 color];
    [v116 alphaComponent];
    CGContextSetAlpha(a3, v117);

    CGContextBeginTransparencyLayer(a3, 0);
    v118 = v87;
    if (v215 == v216)
    {
      v119 = objc_opt_class();
      v120 = [v215 mutableCopy];
      v121 = sub_100014370(v119, v120);

      v122 = objc_opt_class();
      v87 = sub_1003038E0(v121, v122, 1, v123, v124, v125, v126, v127, &OBJC_PROTOCOL___CRLMutableStroke);

      if (!v87)
      {
        v222 = 1;
        v215 = v121;
        v17 = v213;
LABEL_77:
        v130 = objc_loadWeakRetained(&self->_shapeRep);
        if ([v130 isBeingResized])
        {
          if ([v214 elementCount] <= 20)
          {
            v131 = objc_loadWeakRetained(&self->_shapeInfo);
            v207 = [v131 isFreehandDrawingShape];
          }

          else
          {
            v207 = 1;
          }
        }

        else
        {
          v207 = 0;
        }

        v105 = v216;

        v217 = v87;
        if ((a5 & 1) == 0)
        {
LABEL_139:
          if (v210)
          {
            if (v218)
            {
              [objc_opt_class() colorOnSuppressedBackgrounds];
            }

            else
            {
              [v87 color];
            }
            v199 = ;

            CGContextSetStrokeColorWithColor(a3, [v199 CGColor]);
            CGContextSetFillColorWithColor(a3, [v199 CGColor]);
            if ((a5 & 2) != 0 && v215)
            {
              v200 = objc_loadWeakRetained(&self->_shapeRep);
              [v200 i_drawLineEndForHead:1 withDelta:v87 andStroke:a3 inContext:v207 useFastDrawing:v226];
            }

            if ((a5 & 4) != 0 && v215)
            {
              v201 = objc_loadWeakRetained(&self->_shapeRep);
              [v201 i_drawLineEndForHead:0 withDelta:v87 andStroke:a3 inContext:v207 useFastDrawing:{v227.a, v227.b}];
            }

            v105 = v216;
          }

          if (v222)
          {
            CGContextEndTransparencyLayer(a3);
            CGContextRestoreGState(a3);
          }

          goto LABEL_152;
        }

        v132 = objc_loadWeakRetained(&self->_shapeRep);
        v133 = [v132 i_strokeForRenderingIncludingPlaybackFromStroke:v215];

        if ((a5 & 8) != 0)
        {
          v134 = objc_loadWeakRetained(&self->_shapeRep);
          v215 = [v134 i_brushStrokeFromStroke:v133];
        }

        else
        {
          v215 = v133;
        }

        v206 = a3;
        CGContextSaveGState(a3);
        v135 = objc_loadWeakRetained(&self->_shapeInfo);
        v136 = [v135 pathSource];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v137 = objc_loadWeakRetained(&self->_shapeInfo);
          v138 = [v137 pathSource];
          if ([v138 isCurveContinuous])
          {
            v139 = objc_loadWeakRetained(&self->_shapeLayout);
            v140 = v139;
            v204 = v137;
            if (v139)
            {
              [v139 transformInRoot];
            }

            else
            {
              memset(&transform, 0, sizeof(transform));
            }

            v182 = sub_100139B5C(&transform.a);

            a3 = v206;
            a5 = v223;
            if (v182)
            {
              CGAffineTransformMakeRotation(&transform, 0.000001);
              CGContextConcatCTM(v206, &transform);
            }

            goto LABEL_92;
          }
        }

        a3 = v206;
LABEL_92:
        v141 = objc_loadWeakRetained(&self->_shapeRep);
        v142 = [v141 i_isCurrentlyBeingFreehandDrawn];

        if (v142)
        {
          v143 = objc_loadWeakRetained(&self->_shapeRep);
          v205 = [v143 interactiveCanvasController];

          v144 = objc_loadWeakRetained(&self->_shapeRep);
          [v144 i_uncommittedFreehandDrawingPointRange];
          v146 = v145;

          if (v146 >= 5)
          {
            if (!self->_committedPathContext)
            {
              v147 = objc_loadWeakRetained(&self->_shapeRep);
              [v147 i_scaledFrameForFreehandCommittedPathImage];
              [v205 convertBoundsToUnscaledRect:?];
              self->_committedPathImageUnscaledRect.origin.x = v148;
              self->_committedPathImageUnscaledRect.origin.y = v149;
              self->_committedPathImageUnscaledRect.size.width = v150;
              self->_committedPathImageUnscaledRect.size.height = v151;

              v152 = sub_10011F340(self->_committedPathImageUnscaledRect.size.width, self->_committedPathImageUnscaledRect.size.height, v55);
              v154 = v153;
              v155 = objc_loadWeakRetained(&self->_shapeRep);
              self->_committedPathContext = sub_10050DF80([v155 i_bitmapContextOptionsForContextDestinedToDrawIntoCALayerContextForDrawingStroke:v215], v152, v154);
            }

            v156 = objc_loadWeakRetained(&self->_shapeRep);
            v157 = [v156 i_commitAvailableFreehandDrawingPointsIfPossible];
            v159 = v158;

            if (v159)
            {
              v160 = [v214 copyWithPointsInRange:{v157, v159}];
              CGContextSaveGState(self->_committedPathContext);
              CGContextScaleCTM(self->_committedPathContext, v55, v55);
              CGContextTranslateCTM(self->_committedPathContext, -self->_committedPathImageUnscaledRect.origin.x, -self->_committedPathImageUnscaledRect.origin.y);
              committedPathContext = self->_committedPathContext;
              v162 = objc_loadWeakRetained(&self->_shapeLayout);
              v163 = v162;
              if (v162)
              {
                [v162 transformInRoot];
              }

              else
              {
                memset(&transform, 0, sizeof(transform));
              }

              v184 = (a5 >> 4) & 1;
              CGContextConcatCTM(committedPathContext, &transform);

              CGContextTranslateCTM(self->_committedPathContext, -v47, -v49);
              a5 = v223;
              [v215 paintPath:objc_msgSend(v160 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:self->_committedPathContext parameterized:v207 shouldReverseDrawOrder:{(v223 >> 3) & 1, v184}];
              CGContextRestoreGState(self->_committedPathContext);
              CGImageRelease(self->_committedPathImage);
              self->_committedPathImage = CGBitmapContextCreateImage(self->_committedPathContext);

              a3 = v206;
            }
          }

          if (self->_committedPathImage)
          {
            CGContextSaveGState(a3);
            CGContextTranslateCTM(a3, v47, v49);
            v185 = objc_loadWeakRetained(&self->_shapeRep);
            [v185 convertNaturalRectFromUnscaledCanvas:{self->_committedPathImageUnscaledRect.origin.x, self->_committedPathImageUnscaledRect.origin.y, self->_committedPathImageUnscaledRect.size.width, self->_committedPathImageUnscaledRect.size.height}];
            CGContextDrawImage(a3, v233, self->_committedPathImage);

            CGContextRestoreGState(a3);
          }

          v186 = objc_loadWeakRetained(&self->_shapeRep);
          [v186 i_uncommittedFreehandDrawingPointRange];
          v188 = v187;

          if (v188)
          {
            v189 = objc_loadWeakRetained(&self->_shapeRep);
            v190 = [v189 i_uncommittedFreehandDrawingPointRange];
            v192 = [v214 copyWithPointsInRange:{v190, v191}];

            [v215 paintPath:objc_msgSend(v192 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:v206 parameterized:v207 shouldReverseDrawOrder:{(a5 >> 3) & 1, (a5 >> 4) & 1}];
            v214 = v192;
            a3 = v206;
          }

          v105 = v216;
        }

        else
        {
          v164 = objc_loadWeakRetained(&self->_shapeLayout);
          v165 = [v164 dynamicPatternOffsetsBySubpath];

          v105 = v216;
          if (v165)
          {
            v166 = objc_loadWeakRetained(&self->_shapeLayout);
            v165 = [v166 dynamicPatternOffsetsBySubpath];
          }

          if (v14)
          {
            v167 = v14;

            v165 = v167;
          }

          v168 = objc_opt_class();
          v203 = sub_100014370(v168, v215);
          v205 = v165;
          if (v203)
          {
            v169 = objc_alloc_init(CRLBrushStrokeLayoutOptions);
            v170 = objc_loadWeakRetained(&self->_shapeRep);
            [v170 strokeEnd];
            [(CRLBrushStrokeLayoutOptions *)v169 setStrokeEnd:?];

            if ([(CRLShapeRepHelperDefault *)self hasLegacyFreehandDrawingBrushStroke])
            {
              [(CRLBrushStrokeLayoutOptions *)v169 setTransparencyLayersBySubpath:v15];
              if (v165)
              {
                [(CRLBrushStrokeLayoutOptions *)v169 setPatternOffsetsBySubpath:v165];
              }

              else
              {
                v193 = objc_loadWeakRetained(&self->_shapeInfo);
                [v193 strokePatternOffsetDistance];
                v194 = [NSNumber numberWithDouble:?];
                v229 = v194;
                v195 = [NSArray arrayWithObjects:&v229 count:1];
                [(CRLBrushStrokeLayoutOptions *)v169 setPatternOffsetsBySubpath:v195];
              }
            }

            v196 = v203;
            [v203 paintPath:objc_msgSend(v214 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:v206 parameterized:v207 shouldReverseDrawOrder:(a5 >> 3) & 1 withLayoutOptions:{(a5 >> 4) & 1, v169}];

            a3 = v206;
            v105 = v216;
          }

          else
          {
            if (v15)
            {
              +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_10137D5C0();
              }

              v171 = off_1019EDA68;
              if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
              {
                sub_10137D5E8();
              }

              if (qword_101AD5A10 != -1)
              {
                sub_10137D698();
              }

              v172 = off_1019EDA68;
              if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
              {
                sub_10137D520();
              }

              v173 = [NSString stringWithUTF8String:"[CRLShapeRepHelperDefault drawInContext:withContent:strokeDrawOptions:withOpacity:usingPathOverride:patternOffsetsBySubpathOverride:transparencyLayersBySubpath:]"];
              v174 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLShapeRepHelperDefault.m"];
              [CRLAssertionHandler handleFailureInFunction:v173 file:v174 lineNumber:339 isFatal:0 description:"expected nil value for '%{public}s'", "transparencyLayersBySubpath"];

              a5 = v223;
              v105 = v216;
            }

            v175 = objc_loadWeakRetained(&self->_shapeRep);
            [v175 strokeEnd];
            v177 = v176;

            a3 = v206;
            if (v177 >= 1.0)
            {
              v183 = v214;
            }

            else
            {
              v178 = objc_loadWeakRetained(&self->_shapeRep);
              [v178 strokeEnd];
              v180 = v179;

              if (v180 >= 0.0001)
              {
                transform.a = 0.0;
                v197 = objc_loadWeakRetained(&self->_shapeRep);
                [v197 strokeEnd];
                v198 = [v214 elementPercentage:&transform forOverallPercentage:?];

                v181 = [v214 copyFromSegment:0 t:v198 toSegment:0.0 t:transform.a];
              }

              else
              {
                v181 = +[CRLBezierPath bezierPath];
              }

              v183 = v181;
            }

            v214 = v183;
            [v215 paintPath:objc_msgSend(v214 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:v206 parameterized:v207 shouldReverseDrawOrder:{(a5 >> 3) & 1, (a5 >> 4) & 1}];
            v196 = 0;
          }
        }

        CGContextRestoreGState(a3);
        goto LABEL_139;
      }

      v215 = v121;
      v17 = v213;
    }

    v128 = [v87 color];
    v129 = [v128 colorWithAlphaComponent:1.0];
    [v87 setColor:v129];

    v222 = 1;
    goto LABEL_77;
  }

LABEL_156:
}

- (void)dynamicOperationDidEnd
{
  committedPathContext = self->_committedPathContext;
  if (committedPathContext)
  {
    CFRelease(committedPathContext);
    self->_committedPathContext = 0;
  }

  committedPathImage = self->_committedPathImage;
  if (committedPathImage)
  {
    CFRelease(committedPathImage);
    self->_committedPathImage = 0;
  }

  size = CGRectNull.size;
  self->_committedPathImageUnscaledRect.origin = CGRectNull.origin;
  self->_committedPathImageUnscaledRect.size = size;
}

@end