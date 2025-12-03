@interface CRLShapeRepHelperDefault
- (BOOL)drawsInOneStep;
- (BOOL)hasLegacyFreehandDrawingBrushStroke;
- (CRLShapeRepHelperDefault)initWithShapeRep:(id)rep;
- (void)dealloc;
- (void)drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity usingPathOverride:(id)override patternOffsetsBySubpathOverride:(id)subpathOverride transparencyLayersBySubpath:(id)subpath;
- (void)dynamicOperationDidEnd;
@end

@implementation CRLShapeRepHelperDefault

- (CRLShapeRepHelperDefault)initWithShapeRep:(id)rep
{
  repCopy = rep;
  v11.receiver = self;
  v11.super_class = CRLShapeRepHelperDefault;
  v5 = [(CRLShapeRepHelperDefault *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_shapeRep, repCopy);
    shapeLayout = [repCopy shapeLayout];
    objc_storeWeak(&v6->_shapeLayout, shapeLayout);

    shapeInfo = [repCopy shapeInfo];
    objc_storeWeak(&v6->_shapeInfo, shapeInfo);

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
  fill = [WeakRetained fill];

  if (fill)
  {
    isClear = [fill isClear];
  }

  else
  {
    isClear = 1;
  }

  v6 = objc_loadWeakRetained(&self->_shapeInfo);
  stroke = [v6 stroke];

  if (([stroke shouldRender] & 1) == 0)
  {

    stroke = 0;
  }

  if (stroke)
  {
    v8 = isClear;
  }

  else
  {
    v8 = 1;
  }

  v9 = objc_loadWeakRetained(&self->_shapeLayout);
  if ([v9 pathIsOpen])
  {
    v10 = objc_loadWeakRetained(&self->_shapeInfo);
    headLineEnd = [v10 headLineEnd];
    if (headLineEnd)
    {
      v12 = 0;
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->_shapeInfo);
      tailLineEnd = [v13 tailLineEnd];
      v12 = tailLineEnd == 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if ((v8 & v12) == 1)
  {
    if (isClear)
    {
      if (!stroke)
      {
        drawsInOneStep = 1;
        goto LABEL_22;
      }

      v15 = stroke;
    }

    else
    {
      v15 = fill;
    }

    drawsInOneStep = [v15 drawsInOneStep];
  }

  else
  {
    drawsInOneStep = 0;
  }

LABEL_22:

  return drawsInOneStep;
}

- (BOOL)hasLegacyFreehandDrawingBrushStroke
{
  WeakRetained = objc_loadWeakRetained(&self->_shapeInfo);
  isFreehandDrawingShape = [WeakRetained isFreehandDrawingShape];

  if (isFreehandDrawingShape)
  {
    v5 = objc_opt_class();
    v6 = objc_loadWeakRetained(&self->_shapeLayout);
    stroke = [v6 stroke];
    v8 = sub_100014370(v5, stroke);

    if (v8)
    {
      strokeName = [v8 strokeName];
      if ([strokeName isEqualToString:@"Pencil"])
      {
        LOBYTE(isFreehandDrawingShape) = 1;
      }

      else
      {
        strokeName2 = [v8 strokeName];
        LOBYTE(isFreehandDrawingShape) = [strokeName2 isEqualToString:@"Crayon"];
      }
    }

    else
    {
      LOBYTE(isFreehandDrawingShape) = 0;
    }
  }

  return isFreehandDrawingShape;
}

- (void)drawInContext:(CGContext *)context withContent:(BOOL)content strokeDrawOptions:(unint64_t)options withOpacity:(BOOL)opacity usingPathOverride:(id)override patternOffsetsBySubpathOverride:(id)subpathOverride transparencyLayersBySubpath:(id)subpath
{
  opacityCopy = opacity;
  contentCopy = content;
  overrideCopy = override;
  subpathOverrideCopy = subpathOverride;
  subpathCopy = subpath;
  WeakRetained = objc_loadWeakRetained(&self->_shapeRep);
  canvas = [WeakRetained canvas];

  shouldSuppressBackgrounds = [canvas shouldSuppressBackgrounds];
  optionsCopy = options;
  if (shouldSuppressBackgrounds != sub_1005106C8(context))
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

    options = optionsCopy;
  }

  v22 = objc_loadWeakRetained(&self->_shapeLayout);
  path = [v22 path];
  if (![path containsElementsOtherThanMoveAndClose])
  {

    goto LABEL_156;
  }

  if ((options & 3) != 0 || (options & 4) != 0 || contentCopy)
  {
    CGContextSaveGState(context);
    v24 = objc_loadWeakRetained(&self->_shapeRep);
    freehandDrawingDynamicFillErasingDelegate = [v24 freehandDrawingDynamicFillErasingDelegate];

    if (freehandDrawingDynamicFillErasingDelegate)
    {
      v26 = objc_loadWeakRetained(&self->_shapeRep);
      freehandDrawingDynamicFillErasingDelegate2 = [v26 freehandDrawingDynamicFillErasingDelegate];
      maskImageForErasing = [freehandDrawingDynamicFillErasingDelegate2 maskImageForErasing];

      if (maskImageForErasing)
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
        CGContextConcatCTM(context, &transform);

        v31 = objc_loadWeakRetained(&self->_shapeRep);
        freehandDrawingDynamicFillErasingDelegate3 = [v31 freehandDrawingDynamicFillErasingDelegate];
        [freehandDrawingDynamicFillErasingDelegate3 unscaledRectForMaskImageForErasing];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;
        cGImage = [maskImageForErasing CGImage];
        v230.origin.x = v34;
        v230.origin.y = v36;
        v230.size.width = v38;
        v230.size.height = v40;
        CGContextClipToMask(context, v230, cGImage);

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

        CGContextConcatCTM(context, &transform);
      }

      options = optionsCopy;
    }

    if (opacityCopy)
    {
      v44 = objc_loadWeakRetained(&self->_shapeRep);
      v208 = [v44 i_beginApplyOpacity:context forDrawingInOneStep:{-[CRLShapeRepHelperDefault drawsInOneStep](self, "drawsInOneStep")}];
    }

    else
    {
      v208 = 0;
    }

    v45 = objc_loadWeakRetained(&self->_shapeLayout);
    [v45 pathBounds];
    v47 = v46;
    v49 = v48;

    CGContextTranslateCTM(context, -v47, -v49);
    [canvas viewScale];
    v51 = v50;
    v52 = sub_100510A7C(context);
    v226 = CGPointZero;
    *&v227.a = v226;
    v53 = objc_loadWeakRetained(&self->_shapeLayout);
    stroke = [v53 stroke];

    if (([stroke shouldRender] & 1) == 0)
    {

      stroke = 0;
    }

    v213 = canvas;
    v55 = v51 * v52;
    v216 = stroke;
    v56 = subpathOverrideCopy;
    if (overrideCopy)
    {
      v57 = subpathCopy;
      v214 = [overrideCopy copy];
      v58 = [stroke copy];
    }

    else
    {
      v59 = objc_loadWeakRetained(&self->_shapeInfo);
      isFreehandDrawingShape = [v59 isFreehandDrawingShape];

      v61 = objc_loadWeakRetained(&self->_shapeLayout);
      v62 = v61;
      v57 = subpathCopy;
      if (isFreehandDrawingShape)
      {
        path2 = [v61 path];
        v214 = [path2 copy];

        v58 = [stroke copy];
      }

      else
      {
        v224 = 0;
        v225 = 0;
        [v61 aliasPathForScale:&v225 adjustedStroke:&v224 adjustedPath:&v227 startDelta:&v226 endDelta:v51 * v52];
        v58 = v225;
        v214 = v224;
      }

      options = optionsCopy;
    }

    v64 = objc_opt_class();
    v212 = v58;
    v65 = [v58 mutableCopy];
    v66 = sub_100013F00(v64, v65);

    v67 = objc_opt_class();
    v215 = v66;
    v217 = sub_1003038E0(v66, v67, 1, v68, v69, v70, v71, v72, &OBJC_PROTOCOL___CRLMutableStroke);
    subpathCopy = v57;
    subpathOverrideCopy = v56;
    canvas = v213;
    if (v217)
    {
      v73 = objc_loadWeakRetained(&self->_shapeInfo);
      pathSource = [v73 pathSource];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = objc_loadWeakRetained(&self->_shapeInfo);
        [v75 pathSource];
        v76 = subpathCopy;
        v77 = subpathOverrideCopy;
        v79 = v78 = overrideCopy;
        isCurveContinuous = [v79 isCurveContinuous];

        overrideCopy = v78;
        subpathOverrideCopy = v77;
        subpathCopy = v76;
        canvas = v213;

        options = optionsCopy;
        if (isCurveContinuous)
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
    v211 = overrideCopy;
    if ([v84 pathIsOpen])
    {
      v85 = objc_loadWeakRetained(&self->_shapeInfo);
      headLineEnd = [v85 headLineEnd];
      if (headLineEnd)
      {
        v210 = 1;
      }

      else
      {
        v88 = objc_loadWeakRetained(&self->_shapeInfo);
        tailLineEnd = [v88 tailLineEnd];
        v210 = tailLineEnd != 0;
      }

      v87 = v217;

      options = optionsCopy;
    }

    else
    {
      v210 = 0;
      v87 = v217;
    }

    if (contentCopy)
    {
      contextCopy = context;
      v91 = objc_loadWeakRetained(&self->_shapeLayout);
      fill = [v91 fill];

      if (fill && (([fill isClear] | shouldSuppressBackgrounds) & 1) == 0)
      {
        if ([fill fillType] == 1 && (v93 = objc_opt_class(), sub_100013F00(v93, fill), v94 = objc_claimAutoreleasedReturnValue(), v95 = objc_msgSend(v94, "gradientType"), v94, v95 == 1))
        {
          v96 = objc_loadWeakRetained(&self->_shapeRep);
          [v96 boundsForStandardKnobs];
          v232 = CGRectOffset(v231, v47, v49);
          x = v232.origin.x;
          v221 = v55;
          y = v232.origin.y;
          width = v232.size.width;
          height = v232.size.height;

          cGPath = [v214 CGPath];
          isDrawingIntoPDF = [canvas isDrawingIntoPDF];
          v103 = y;
          v55 = v221;
          [fill paintPath:cGPath naturalBounds:contextCopy inContext:isDrawingIntoPDF isPDF:{x, v103, width, height}];
        }

        else
        {
          [fill paintPath:objc_msgSend(v214 inContext:{"CGPath"), contextCopy}];
        }
      }

      context = contextCopy;
    }

    if (!v87)
    {
      v217 = 0;
      overrideCopy = v211;
      v105 = v216;
LABEL_153:
      if (opacityCopy)
      {
        v202 = objc_loadWeakRetained(&self->_shapeRep);
        [v202 i_endApplyOpacity:context appliedTransparencyLayer:v208];
      }

      CGContextRestoreGState(context);

      goto LABEL_156;
    }

    shouldRender = [v87 shouldRender];
    v105 = v216;
    if ((options & 7) == 0 || !shouldRender)
    {
LABEL_152:
      overrideCopy = v211;
      goto LABEL_153;
    }

    v106 = !v210;
    if ((options & 1) == 0)
    {
      v106 = 1;
    }

    if (v106)
    {
      v109 = 0;
    }

    else
    {
      color = [v87 color];
      [color alphaComponent];
      v109 = (options & 8) == 0 && v108 < 1.0;
    }

    v110 = objc_loadWeakRetained(&self->_shapeRep);
    if ([v110 i_isCurrentlyBeingFreehandDrawn])
    {
      color2 = [v87 color];
      [color2 alphaComponent];
      selfCopy = self;
      contextCopy2 = context;
      v115 = v114 < 1.0;

      LOBYTE(color2) = v115 || v109;
      context = contextCopy2;
      self = selfCopy;
      options = optionsCopy;

      if ((color2 & 1) == 0)
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

    CGContextSaveGState(context);
    color3 = [v87 color];
    [color3 alphaComponent];
    CGContextSetAlpha(context, v117);

    CGContextBeginTransparencyLayer(context, 0);
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
        canvas = v213;
LABEL_77:
        v130 = objc_loadWeakRetained(&self->_shapeRep);
        if ([v130 isBeingResized])
        {
          if ([v214 elementCount] <= 20)
          {
            v131 = objc_loadWeakRetained(&self->_shapeInfo);
            isFreehandDrawingShape2 = [v131 isFreehandDrawingShape];
          }

          else
          {
            isFreehandDrawingShape2 = 1;
          }
        }

        else
        {
          isFreehandDrawingShape2 = 0;
        }

        v105 = v216;

        v217 = v87;
        if ((options & 1) == 0)
        {
LABEL_139:
          if (v210)
          {
            if (shouldSuppressBackgrounds)
            {
              [objc_opt_class() colorOnSuppressedBackgrounds];
            }

            else
            {
              [v87 color];
            }
            v199 = ;

            CGContextSetStrokeColorWithColor(context, [v199 CGColor]);
            CGContextSetFillColorWithColor(context, [v199 CGColor]);
            if ((options & 2) != 0 && v215)
            {
              v200 = objc_loadWeakRetained(&self->_shapeRep);
              [v200 i_drawLineEndForHead:1 withDelta:v87 andStroke:context inContext:isFreehandDrawingShape2 useFastDrawing:v226];
            }

            if ((options & 4) != 0 && v215)
            {
              v201 = objc_loadWeakRetained(&self->_shapeRep);
              [v201 i_drawLineEndForHead:0 withDelta:v87 andStroke:context inContext:isFreehandDrawingShape2 useFastDrawing:{v227.a, v227.b}];
            }

            v105 = v216;
          }

          if (v222)
          {
            CGContextEndTransparencyLayer(context);
            CGContextRestoreGState(context);
          }

          goto LABEL_152;
        }

        v132 = objc_loadWeakRetained(&self->_shapeRep);
        v133 = [v132 i_strokeForRenderingIncludingPlaybackFromStroke:v215];

        if ((options & 8) != 0)
        {
          v134 = objc_loadWeakRetained(&self->_shapeRep);
          v215 = [v134 i_brushStrokeFromStroke:v133];
        }

        else
        {
          v215 = v133;
        }

        contextCopy3 = context;
        CGContextSaveGState(context);
        v135 = objc_loadWeakRetained(&self->_shapeInfo);
        pathSource2 = [v135 pathSource];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v137 = objc_loadWeakRetained(&self->_shapeInfo);
          pathSource3 = [v137 pathSource];
          if ([pathSource3 isCurveContinuous])
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

            context = contextCopy3;
            options = optionsCopy;
            if (v182)
            {
              CGAffineTransformMakeRotation(&transform, 0.000001);
              CGContextConcatCTM(contextCopy3, &transform);
            }

            goto LABEL_92;
          }
        }

        context = contextCopy3;
LABEL_92:
        v141 = objc_loadWeakRetained(&self->_shapeRep);
        i_isCurrentlyBeingFreehandDrawn = [v141 i_isCurrentlyBeingFreehandDrawn];

        if (i_isCurrentlyBeingFreehandDrawn)
        {
          v143 = objc_loadWeakRetained(&self->_shapeRep);
          interactiveCanvasController = [v143 interactiveCanvasController];

          v144 = objc_loadWeakRetained(&self->_shapeRep);
          [v144 i_uncommittedFreehandDrawingPointRange];
          v146 = v145;

          if (v146 >= 5)
          {
            if (!self->_committedPathContext)
            {
              v147 = objc_loadWeakRetained(&self->_shapeRep);
              [v147 i_scaledFrameForFreehandCommittedPathImage];
              [interactiveCanvasController convertBoundsToUnscaledRect:?];
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
            i_commitAvailableFreehandDrawingPointsIfPossible = [v156 i_commitAvailableFreehandDrawingPointsIfPossible];
            v159 = v158;

            if (v159)
            {
              v160 = [v214 copyWithPointsInRange:{i_commitAvailableFreehandDrawingPointsIfPossible, v159}];
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

              v184 = (options >> 4) & 1;
              CGContextConcatCTM(committedPathContext, &transform);

              CGContextTranslateCTM(self->_committedPathContext, -v47, -v49);
              options = optionsCopy;
              [v215 paintPath:objc_msgSend(v160 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:self->_committedPathContext parameterized:isFreehandDrawingShape2 shouldReverseDrawOrder:{(optionsCopy >> 3) & 1, v184}];
              CGContextRestoreGState(self->_committedPathContext);
              CGImageRelease(self->_committedPathImage);
              self->_committedPathImage = CGBitmapContextCreateImage(self->_committedPathContext);

              context = contextCopy3;
            }
          }

          if (self->_committedPathImage)
          {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, v47, v49);
            v185 = objc_loadWeakRetained(&self->_shapeRep);
            [v185 convertNaturalRectFromUnscaledCanvas:{self->_committedPathImageUnscaledRect.origin.x, self->_committedPathImageUnscaledRect.origin.y, self->_committedPathImageUnscaledRect.size.width, self->_committedPathImageUnscaledRect.size.height}];
            CGContextDrawImage(context, v233, self->_committedPathImage);

            CGContextRestoreGState(context);
          }

          v186 = objc_loadWeakRetained(&self->_shapeRep);
          [v186 i_uncommittedFreehandDrawingPointRange];
          v188 = v187;

          if (v188)
          {
            v189 = objc_loadWeakRetained(&self->_shapeRep);
            i_uncommittedFreehandDrawingPointRange = [v189 i_uncommittedFreehandDrawingPointRange];
            v192 = [v214 copyWithPointsInRange:{i_uncommittedFreehandDrawingPointRange, v191}];

            [v215 paintPath:objc_msgSend(v192 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:contextCopy3 parameterized:isFreehandDrawingShape2 shouldReverseDrawOrder:{(options >> 3) & 1, (options >> 4) & 1}];
            v214 = v192;
            context = contextCopy3;
          }

          v105 = v216;
        }

        else
        {
          v164 = objc_loadWeakRetained(&self->_shapeLayout);
          dynamicPatternOffsetsBySubpath = [v164 dynamicPatternOffsetsBySubpath];

          v105 = v216;
          if (dynamicPatternOffsetsBySubpath)
          {
            v166 = objc_loadWeakRetained(&self->_shapeLayout);
            dynamicPatternOffsetsBySubpath = [v166 dynamicPatternOffsetsBySubpath];
          }

          if (subpathOverrideCopy)
          {
            v167 = subpathOverrideCopy;

            dynamicPatternOffsetsBySubpath = v167;
          }

          v168 = objc_opt_class();
          v203 = sub_100014370(v168, v215);
          interactiveCanvasController = dynamicPatternOffsetsBySubpath;
          if (v203)
          {
            v169 = objc_alloc_init(CRLBrushStrokeLayoutOptions);
            v170 = objc_loadWeakRetained(&self->_shapeRep);
            [v170 strokeEnd];
            [(CRLBrushStrokeLayoutOptions *)v169 setStrokeEnd:?];

            if ([(CRLShapeRepHelperDefault *)self hasLegacyFreehandDrawingBrushStroke])
            {
              [(CRLBrushStrokeLayoutOptions *)v169 setTransparencyLayersBySubpath:subpathCopy];
              if (dynamicPatternOffsetsBySubpath)
              {
                [(CRLBrushStrokeLayoutOptions *)v169 setPatternOffsetsBySubpath:dynamicPatternOffsetsBySubpath];
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
            [v203 paintPath:objc_msgSend(v214 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:contextCopy3 parameterized:isFreehandDrawingShape2 shouldReverseDrawOrder:(options >> 3) & 1 withLayoutOptions:{(options >> 4) & 1, v169}];

            context = contextCopy3;
            v105 = v216;
          }

          else
          {
            if (subpathCopy)
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

              options = optionsCopy;
              v105 = v216;
            }

            v175 = objc_loadWeakRetained(&self->_shapeRep);
            [v175 strokeEnd];
            v177 = v176;

            context = contextCopy3;
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
            [v215 paintPath:objc_msgSend(v214 wantsInteriorStroke:"CGPath") inContext:0 useFastDrawing:contextCopy3 parameterized:isFreehandDrawingShape2 shouldReverseDrawOrder:{(options >> 3) & 1, (options >> 4) & 1}];
            v196 = 0;
          }
        }

        CGContextRestoreGState(context);
        goto LABEL_139;
      }

      v215 = v121;
      canvas = v213;
    }

    color4 = [v87 color];
    v129 = [color4 colorWithAlphaComponent:1.0];
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