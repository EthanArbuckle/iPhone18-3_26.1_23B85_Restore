@interface AKTextAnnotationRenderHelper
+ (BOOL)_hitTestPoint:(CGPoint)point againstActualTextForAnnotation:(id)annotation onPageController:(id)controller contextForVisualDebugging:(CGContext *)debugging;
+ (CGSize)unconstrainedSizeForText:(id)text;
+ (id)_sharedLayoutManager;
+ (void)getAnnotationRectangle:(CGRect *)rectangle textBounds:(CGRect *)bounds containerSize:(CGSize *)size exclusionPaths:(id *)paths isTextClipped:(BOOL *)clipped forAnnotation:(id)annotation onPageController:(id)controller orInContext:(CGContext *)self0 shouldAlignToPixels:(BOOL)self1 optionalText:(id)self2 optionalCenter:(CGPoint)self3 optionalProposedRectangle:(CGRect)self4;
+ (void)renderAnnotationText:(id)text intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKTextAnnotationRenderHelper

+ (void)getAnnotationRectangle:(CGRect *)rectangle textBounds:(CGRect *)bounds containerSize:(CGSize *)size exclusionPaths:(id *)paths isTextClipped:(BOOL *)clipped forAnnotation:(id)annotation onPageController:(id)controller orInContext:(CGContext *)self0 shouldAlignToPixels:(BOOL)self1 optionalText:(id)self2 optionalCenter:(CGPoint)self3 optionalProposedRectangle:(CGRect)self4
{
  height = proposedRectangle.size.height;
  width = proposedRectangle.size.width;
  y = proposedRectangle.origin.y;
  x = proposedRectangle.origin.x;
  v22 = center.y;
  v23 = center.x;
  v188[1] = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  controllerCopy = controller;
  textCopy = text;
  boundsCopy = bounds;
  sizeCopy = size;
  rectangleCopy = rectangle;
  v28 = rectangle | bounds | size;
  if (!v28 && !paths && !clipped)
  {
    v29 = 0;
    goto LABEL_142;
  }

  v158 = x;
  v178 = y;
  v180 = width;
  v142 = v28 != 0;
  v30 = *MEMORY[0x277CBF3A0];
  v31 = *(MEMORY[0x277CBF3A0] + 8);
  v33 = *(MEMORY[0x277CBF3A0] + 16);
  v32 = *(MEMORY[0x277CBF3A0] + 24);
  conformsToAKRectangularAnnotationProtocol = [annotationCopy conformsToAKRectangularAnnotationProtocol];
  v35 = MEMORY[0x277CBF348];
  v152 = v32;
  v154 = v31;
  v175 = v32;
  v36 = v33;
  v156 = v30;
  rect1 = height;
  if (conformsToAKRectangularAnnotationProtocol)
  {
    v208.origin.x = v30;
    v30 = v158;
    v189.origin.x = v158;
    v31 = y;
    v36 = v180;
    v189.origin.y = y;
    v189.size.width = v180;
    v189.size.height = height;
    v208.size.height = v152;
    v208.origin.y = v154;
    v208.size.width = v33;
    if (CGRectEqualToRect(v189, v208))
    {
      [annotationCopy rectangle];
      v30 = v37;
      v31 = v38;
      v36 = v39;
      v175 = v40;
      if (v23 != *v35 || v22 != v35[1])
      {
        v176 = v22;
        v42 = v37;
        v43 = v38;
        v44 = v23 - CGRectGetWidth(*&v37) * 0.5;
        v190.origin.x = v42;
        v190.origin.y = v43;
        v190.size.width = v36;
        v190.size.height = v175;
        v45 = v176 - CGRectGetHeight(v190) * 0.5;
        v191.origin.x = v42;
        v191.origin.y = v43;
        v191.size.width = v36;
        v191.size.height = v175;
        txa = CGRectGetWidth(v191);
        v192.origin.x = v42;
        v22 = v176;
        v192.origin.y = v43;
        v192.size.width = v36;
        v192.size.height = v175;
        v175 = CGRectGetHeight(v192);
        v36 = txa;
        v30 = v44;
        v31 = v45;
      }
    }

    else
    {
      v175 = height;
    }
  }

  v151 = controllerCopy;
  [AKAnnotationRenderer textBoundsOfAnnotation:annotationCopy withOptionalAnnotationRect:textCopy optionalText:v30, v31, v36, v175];
  MidY = v47;
  tx = v46;
  v167 = v48;
  v169 = v49;
  v50 = [AKGeometryHelper isUnpresentableRect:?];
  if (v50)
  {
    v193.origin.x = v30;
    v193.origin.y = v31;
    v193.size.width = v36;
    v193.size.height = v175;
    tx = CGRectGetMidX(v193);
    v194.origin.x = v30;
    v194.origin.y = v31;
    v194.size.width = v36;
    v194.size.height = v175;
    MidY = CGRectGetMidY(v194);
    v167 = 0.0;
    v169 = 0.0;
  }

  MidX = v23;
  v52 = v22 != v35[1] || v23 != *v35;
  v164 = v36;
  v160 = v30;
  if (!v52)
  {
    conformsToAKRectangularAnnotationProtocol2 = [annotationCopy conformsToAKRectangularAnnotationProtocol];
    if (conformsToAKRectangularAnnotationProtocol2)
    {
      v54 = v30;
    }

    else
    {
      v54 = tx;
    }

    v55 = v31;
    if (conformsToAKRectangularAnnotationProtocol2)
    {
      v56 = v164;
    }

    else
    {
      v31 = MidY;
      v56 = v167;
    }

    if (conformsToAKRectangularAnnotationProtocol2)
    {
      v57 = v175;
    }

    else
    {
      v57 = v169;
    }

    v195.origin.x = v54;
    v195.origin.y = v31;
    v195.size.width = v56;
    v195.size.height = v57;
    MidX = CGRectGetMidX(v195);
    v196.origin.x = v54;
    v196.origin.y = v31;
    v31 = v55;
    v36 = v164;
    v196.size.width = v56;
    v196.size.height = v57;
    v22 = CGRectGetMidY(v196);
  }

  originalExifOrientation = [annotationCopy originalExifOrientation];
  v58 = [AKGeometryHelper inverseExifOrientation:?];
  v144 = MidX;
  [AKGeometryHelper adjustRect:v58 forExifOrientation:tx aboutCenter:MidY, v167, v169, MidX, v22];
  v166 = v59;
  v177 = v60;
  rect = v61;
  v63 = v62;
  v209.origin.x = v156;
  v197.origin.x = v158;
  v197.origin.y = v178;
  v197.size.width = v180;
  v197.size.height = rect1;
  v209.size.height = v152;
  v209.origin.y = v154;
  v209.size.width = v33;
  v64 = CGRectEqualToRect(v197, v209);
  v65 = v52 && v64;
  v141 = v58;
  if (v52 && v64)
  {
    textIsFixedHeight = 0;
    v155 = 0;
  }

  else
  {
    v66 = v64;
    textIsFixedHeight = [annotationCopy textIsFixedHeight];
    if (v66)
    {
      v67 = [annotationCopy textIsFixedWidth] | pixels;
    }

    else
    {
      v67 = 1;
    }

    v155 = v67;
  }

  if (textCopy)
  {
    v68 = textCopy;
  }

  else
  {
    v68 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:annotationCopy];
    if (!v68)
    {
      goto LABEL_40;
    }
  }

  if ([v68 length])
  {
    v69 = 0;
    goto LABEL_41;
  }

LABEL_40:
  clippedCopy = clipped;
  typingAttributes = [annotationCopy typingAttributes];
  v72 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:@"|" attributes:typingAttributes];

  v68 = v72;
  clipped = clippedCopy;
  v69 = 1;
LABEL_41:
  v147 = textCopy;
  if ([v68 length])
  {
    [v68 attributesAtIndex:0 effectiveRange:0];
  }

  else
  {
    [annotationCopy typingAttributes];
  }
  v73 = ;
  [annotationCopy originalModelBaseScaleFactor];
  v157 = v73;
  v159 = [AKTextAnnotationAttributeHelper typingAttributes:v73 byApplyingScaleFactor:?];
  [annotationCopy originalModelBaseScaleFactor];
  v74 = [AKTextAnnotationAttributeHelper newTextStorage:v68 byApplyingScaleFactor:?];

  v175 = [AKAnnotationRenderer newTextExclusionPathForAnnotation:annotationCopy withOptionalAnnotationRect:v30, v31, v36, v175];
  pathsCopy = paths;
  if (v175)
  {
    v76 = v175;
    if (CGPathIsEmpty(v175))
    {
      CGPathRelease(v76);
      v77 = 0;
      goto LABEL_48;
    }

    Mutable = CGPathCreateMutable();
    memset(&m, 0, sizeof(m));
    [AKGeometryHelper affineTransformForExifOrientation:originalExifOrientation aboutCenter:MidX, v22];
    CGPathAddPath(Mutable, &m, v76);
    v200.origin.x = v166;
    v200.origin.y = v177;
    v200.size.width = rect;
    v200.size.height = v63;
    v201 = CGRectInset(v200, -1000.0, -1000.0);
    CGPathAddRect(Mutable, 0, v201);
    v77 = [MEMORY[0x277D75208] bezierPathWithCGPath:Mutable];
    CGPathRelease(Mutable);
    memset(&v185, 0, sizeof(v185));
    v202.origin.x = v166;
    v202.origin.y = v177;
    v202.size.width = rect;
    v202.size.height = v63;
    v85 = -CGRectGetMinX(v202);
    v203.origin.x = v166;
    v203.origin.y = v177;
    v203.size.width = rect;
    v203.size.height = v63;
    MinY = CGRectGetMinY(v203);
    CGAffineTransformMakeTranslation(&v185, v85, -MinY);
    CGAffineTransformMakeScale(&t2, 1.0, -1.0);
    t1 = v185;
    CGAffineTransformConcat(&v184, &t1, &t2);
    v185 = v184;
    v204.origin.x = v166;
    v204.origin.y = v177;
    v204.size.width = rect;
    v204.size.height = v63;
    v87 = CGRectGetHeight(v204);
    CGAffineTransformMakeTranslation(&t2, 0.0, v87);
    t1 = v185;
    CGAffineTransformConcat(&v184, &t1, &t2);
    v185 = v184;
    [v77 applyTransform:&v184];
    [v77 setUsesEvenOddFillRule:1];
    CGPathRelease(v76);
    if (!v50)
    {
      goto LABEL_51;
    }

LABEL_48:
    v198.origin.x = tx;
    v198.origin.y = MidY;
    v198.size.width = v167;
    v198.size.height = v169;
    MinX = CGRectGetMidX(v198);
    v199.origin.x = tx;
    v199.origin.y = MidY;
    v199.size.width = v167;
    v199.size.height = v169;
    v78 = CGRectGetMidY(v199);
    v29 = 0;
    v80 = *MEMORY[0x277CBF3A8];
    v79 = *(MEMORY[0x277CBF3A8] + 8);
    v81 = 0.0;
    LOBYTE(v82) = 1;
    v83 = 0.0;
    if ((v69 & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_130;
  }

  v77 = 0;
  if (v50)
  {
    goto LABEL_48;
  }

LABEL_51:
  v88 = v155 ^ 1;
  if (!v151)
  {
    v88 = 0;
  }

  if (v88)
  {
    [v151 maxPageRect];
    v170 = v89;
  }

  else
  {
    v205.origin.x = v166;
    v205.origin.y = v177;
    v205.size.width = rect;
    v205.size.height = v63;
    v170 = CGRectGetWidth(v205);
  }

  selfCopy = self;
  if (!v77)
  {
    [self unconstrainedSizeForText:v74];
    v92 = v170;
    if (v170 >= v91)
    {
      v92 = v91;
    }

    v170 = v92;
  }

  clippedCopy2 = clipped;
  v150 = annotationCopy;
  v153 = v69;
  v140 = v31;
  if (v65)
  {
    alignment = 1;
  }

  else
  {
    v94 = [v74 length];
    v95 = *MEMORY[0x277D74118];
    if (!v94 || ([v74 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0], (defaultParagraphStyle = objc_claimAutoreleasedReturnValue()) == 0))
    {
      defaultParagraphStyle = [v159 objectForKey:v95];
      if (!defaultParagraphStyle)
      {
        defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
      }
    }

    v97 = defaultParagraphStyle;
    alignment = [defaultParagraphStyle alignment];
  }

  rect1a = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz" attributes:v159];
  [selfCopy unconstrainedSizeForText:?];
  v99 = v98;
  v168 = v63;
  v100 = v98 * floor(v63 / v98);
  _sharedLayoutManager = [selfCopy _sharedLayoutManager];
  textContainers = [_sharedLayoutManager textContainers];
  v103 = [textContainers objectAtIndex:0];

  [v103 akSetContainerSize:{v170, 10000000.0}];
  [v103 setExclusionPaths:MEMORY[0x277CBEBF8]];
  v172 = [MEMORY[0x277CBEB58] set];
  LOBYTE(v82) = 0;
  v104 = 0;
  v105 = 9;
  v81 = v99;
  while (1)
  {
    v78 = v22 + v81 * -0.5;
    if (v77)
    {
      v29 = [v77 copy];
      memset(&m, 0, sizeof(m));
      CGAffineTransformMakeTranslation(&m, v166 - (v144 + v170 * -0.5), v177 - v78);
      v185 = m;
      [v29 applyTransform:&v185];
      v188[0] = v29;
      v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:1];
      [v103 setExclusionPaths:v106];

LABEL_70:
      MinX = v144 + v170 * -0.5;
      goto LABEL_71;
    }

    if (alignment == 2)
    {
      v207.origin.x = v166;
      v207.size.height = v168;
      v207.origin.y = v177;
      v207.size.width = rect;
      v29 = 0;
      MinX = CGRectGetMaxX(v207) - v170;
    }

    else
    {
      if (alignment)
      {
        v29 = 0;
        goto LABEL_70;
      }

      v206.origin.x = v166;
      v206.size.height = v168;
      v206.origin.y = v177;
      v206.size.width = rect;
      MinX = CGRectGetMinX(v206);
      v29 = 0;
    }

LABEL_71:
    if (v82)
    {
      LOBYTE(v82) = 1;
      goto LABEL_102;
    }

    v107 = v22;
    [v74 addLayoutManager:_sharedLayoutManager];
    [_sharedLayoutManager glyphRangeForTextContainer:v103];
    [_sharedLayoutManager usedRectForTextContainer:v103];
    v109 = v108;
    [v74 removeLayoutManager:_sharedLayoutManager];
    if (vabdd_f64(v81 / v99, ceil(v109 / v99)) < 0.0005)
    {
      v110 = 1;
      v111 = v81;
      goto LABEL_91;
    }

    if (v81 >= v109)
    {
      if (v104)
      {
        v110 = 1;
        v111 = v81;
        goto LABEL_84;
      }

      v104 = 0;
      v115 = vcvtpd_u64_f64((v81 - v109) / v99);
      if (v115 <= 1)
      {
        v115 = 1;
      }

      v111 = v81 - v115 * v99;
    }

    else
    {
      v112 = vcvtpd_u64_f64((v109 - v81) / v99);
      if (v112 <= 1)
      {
        v112 = 1;
      }

      v111 = v81 + v112 * v99;
      v113 = [MEMORY[0x277CCABB0] numberWithDouble:v111];
      v114 = [v172 containsObject:v113];

      if (v114)
      {
        v110 = 0;
LABEL_84:
        v104 = 1;
        goto LABEL_91;
      }
    }

    v116 = [MEMORY[0x277CCABB0] numberWithDouble:v111];
    [v172 addObject:v116];

    v110 = 0;
LABEL_91:
    v82 = v111 > v100 ? v110 & textIsFixedHeight : 0;
    if (!v105 || (v110 & (v82 ^ 1) & 1) != 0)
    {
      break;
    }

    if (v82)
    {
      v81 = v100;
    }

    else
    {
      v81 = v111;
    }

    --v105;
    v22 = v107;
  }

  v22 = v107;
LABEL_102:
  v117 = 0.0;
  annotationCopy = v150;
  clipped = clippedCopy2;
  v118 = v153;
  v83 = v170;
  if (!v142)
  {
    v79 = 0.0;
    v80 = 0.0;
    v175 = 0.0;
    v140 = 0.0;
    v128 = 0.0;
    goto LABEL_128;
  }

  [AKGeometryHelper adjustRect:originalExifOrientation forExifOrientation:MinX aboutCenter:v78, v170, v81, v144, v22];
  v78 = v120;
  v83 = v121;
  v81 = v122;
  if (pixels)
  {
    v123 = clippedCopy2;
    [AKGeometryHelper renderingAlignedTextRectForRect:v151 alignToScreenUsingPageController:context orAlignToContext:v150 usingAnnotation:?];
    MinX = v124;
    v78 = v125;
    v83 = v126;
    v81 = v127;
  }

  else
  {
    MinX = v119;
    v123 = clippedCopy2;
  }

  v129 = [AKGeometryHelper exifOrientationHasReversedAxes:v141];
  if (v129)
  {
    v79 = v83;
  }

  else
  {
    v79 = v81;
  }

  if (v129)
  {
    v80 = v81;
  }

  else
  {
    v80 = v83;
  }

  if (!rectangleCopy)
  {
    v175 = 0.0;
    v140 = 0.0;
    v128 = 0.0;
LABEL_127:
    clipped = v123;
    v118 = v153;
    goto LABEL_128;
  }

  v130 = v129;
  v131 = textIsFixedHeight ^ 1;
  v132 = v155 ^ 1;
  if (((textIsFixedHeight ^ 1) & 1) == 0 && !v132)
  {
    v117 = v164;
    goto LABEL_126;
  }

  [AKAnnotationRenderer rectangleForAnnotation:v150 withTextBounds:MinX, v78, v83, v81];
  if ((v130 | v132) != 1 || !(v131 | !v130))
  {
    v175 = v136;
    v117 = v164;
    v140 = v134;
LABEL_126:
    v128 = v160;
    annotationCopy = v150;
    goto LABEL_127;
  }

  v128 = v133;
  v117 = v135;
  v137 = v130 | v131;
  annotationCopy = v150;
  v118 = v153;
  if (v137 == 1 && (!v130 || !v155))
  {
    v175 = v136;
    v140 = v134;
  }

  clipped = v123;
LABEL_128:

  v164 = v117;
  v160 = v128;
  v31 = v140;
  if (v118)
  {
LABEL_130:
    LOBYTE(v82) = 0;
    goto LABEL_131;
  }

LABEL_129:
  if (![v74 length])
  {
    goto LABEL_130;
  }

LABEL_131:

  if (rectangleCopy)
  {
    rectangleCopy->origin.x = v160;
    rectangleCopy->origin.y = v31;
    rectangleCopy->size.width = v164;
    rectangleCopy->size.height = v175;
  }

  controllerCopy = v151;
  textCopy = v147;
  if (boundsCopy)
  {
    boundsCopy->origin.x = MinX;
    boundsCopy->origin.y = v78;
    boundsCopy->size.width = v83;
    boundsCopy->size.height = v81;
  }

  if (sizeCopy)
  {
    sizeCopy->width = ceil(v80);
    sizeCopy->height = ceil(v79);
  }

  if (!pathsCopy)
  {
LABEL_140:
    if (!clipped)
    {
      goto LABEL_142;
    }

LABEL_141:
    *clipped = v82;
    goto LABEL_142;
  }

  if (v29)
  {
    v187 = v29;
    v138 = [MEMORY[0x277CBEA60] arrayWithObjects:&v187 count:1];
    *pathsCopy = v138;

    goto LABEL_140;
  }

  *pathsCopy = 0;
  if (clipped)
  {
    goto LABEL_141;
  }

LABEL_142:
}

+ (BOOL)_hitTestPoint:(CGPoint)point againstActualTextForAnnotation:(id)annotation onPageController:(id)controller contextForVisualDebugging:(CGContext *)debugging
{
  point = point.y;
  x = point.x;
  annotationCopy = annotation;
  controllerCopy = controller;
  v11 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:annotationCopy];
  if (![v11 length])
  {
    if ([annotationCopy isMemberOfClass:objc_opt_class()])
    {
      typingAttributes = [annotationCopy typingAttributes];
      [annotationCopy originalModelBaseScaleFactor];
      v39 = [AKTextAnnotationAttributeHelper typingAttributes:typingAttributes byApplyingScaleFactor:?];

      v40 = [AKTextAnnotationAttributeHelper newTextStorageOriginalFontSavvyWithString:@"AAAA" attributes:v39];
      [AKAnnotationRenderer textBoundsOfAnnotation:annotationCopy withOptionalAnnotationRect:v40 optionalText:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      v76.y = point;
      v76.x = x;
      v37 = CGRectContainsPoint(v79, v76);

      goto LABEL_23;
    }

LABEL_12:
    v37 = 0;
    goto LABEL_23;
  }

  memset(&v73, 0, sizeof(v73));
  v71 = 0.0;
  v72 = 0.0;
  v70 = 0;
  LOBYTE(v59) = 0;
  [AKTextAnnotationRenderHelper getAnnotationRectangle:0 textBounds:&v73 containerSize:&v71 exclusionPaths:&v70 isTextClipped:0 forAnnotation:annotationCopy onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), controllerCopy, 0, v59, v11];
  v12 = v70;
  conformsToAKRotatableAnnotationProtocol = [annotationCopy conformsToAKRotatableAnnotationProtocol];
  v14.x = x;
  v14.y = point;
  if (conformsToAKRotatableAnnotationProtocol)
  {
    memset(&m, 0, sizeof(m));
    pointa = v14;
    [annotationCopy rotationAngle];
    [AKGeometryHelper rotationTransformForRect:*&v73.origin withAngle:*&v73.size, v15];
    t1 = m;
    CGAffineTransformInvert(&t2, &t1);
    m = t2;
    v14 = vaddq_f64(*&t2.tx, vmlaq_n_f64(vmulq_laneq_f64(*&t2.c, pointa, 1), *&t2.a, x));
  }

  y = v14.y;
  v17 = v14;
  if (!CGRectContainsPoint(v73, v14))
  {

    goto LABEL_12;
  }

  if ([v12 count] && (objc_msgSend(v12, "firstObject"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "newCGPathForPlatformBezierPath"), v18, v19))
  {
    originalExifOrientation = [annotationCopy originalExifOrientation];
    v21 = [AKGeometryHelper inverseExifOrientation:originalExifOrientation];
    MidX = CGRectGetMidX(v73);
    MidY = CGRectGetMidY(v73);
    [AKGeometryHelper adjustRect:originalExifOrientation forExifOrientation:*&v73.origin aboutCenter:*&v73.size, MidX, MidY];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = *(MEMORY[0x277CBF2C0] + 16);
    *&m.a = *MEMORY[0x277CBF2C0];
    *&m.c = v32;
    *&m.tx = *(MEMORY[0x277CBF2C0] + 32);
    *&v32 = v27;
    Height = CGRectGetHeight(*&v24);
    CGAffineTransformMakeTranslation(&t2, 0.0, -Height);
    t1 = m;
    CGAffineTransformConcat(&m, &t1, &t2);
    CGAffineTransformMakeScale(&t1, 1.0, -1.0);
    v66 = m;
    CGAffineTransformConcat(&t2, &v66, &t1);
    m = t2;
    memset(&t2, 0, sizeof(t2));
    v77.origin.x = v25;
    v77.origin.y = v27;
    v77.size.width = v29;
    v77.size.height = v31;
    MinX = CGRectGetMinX(v77);
    v78.origin.x = v25;
    v78.origin.y = v27;
    v78.size.width = v29;
    v78.size.height = v31;
    MinY = CGRectGetMinY(v78);
    CGAffineTransformMakeTranslation(&t2, MinX, MinY);
    v66 = m;
    v65 = t2;
    CGAffineTransformConcat(&t1, &v66, &v65);
    m = t1;
    memset(&t1, 0, sizeof(t1));
    [AKGeometryHelper affineTransformForExifOrientation:v21 aboutCenter:MidX, MidY];
    v65 = m;
    v64 = t1;
    CGAffineTransformConcat(&v66, &v65, &v64);
    m = v66;
    Mutable = CGPathCreateMutable();
    CGPathAddPath(Mutable, &m, v19);
    CGPathRelease(v19);
    v74.x = v17.x;
    v74.y = y;
    if (CGPathContainsPoint(Mutable, 0, v74, 1))
    {
      CGPathRelease(Mutable);
      v37 = 0;
    }

    else
    {
      v42 = v11;
      _sharedLayoutManager = [self _sharedLayoutManager];
      textContainers = [_sharedLayoutManager textContainers];
      v45 = [textContainers objectAtIndex:0];

      [v45 akSetContainerSize:{v71, v72}];
      [v45 setExclusionPaths:v12];
      [v42 addLayoutManager:_sharedLayoutManager];
      [_sharedLayoutManager glyphRangeForTextContainer:v45];
      [_sharedLayoutManager usedRectForTextContainer:v45];
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      [v42 removeLayoutManager:_sharedLayoutManager];
      v80.origin.x = v47;
      v80.origin.y = v49;
      v80.size.width = v51;
      v80.size.height = v53;
      v54 = CGPathCreateWithRect(v80, &m);
      if (v54)
      {
        v55 = v54;
        if (debugging)
        {
          [MEMORY[0x277D75348] blueColor];
          v56 = v63 = v42;
          CGContextSetFillColorWithColor(debugging, [v56 CGColor]);

          CGContextAddPath(debugging, v55);
          CGContextFillPath(debugging);
          redColor = [MEMORY[0x277D75348] redColor];
          CGContextSetFillColorWithColor(debugging, [redColor CGColor]);

          v42 = v63;
          CGContextAddPath(debugging, Mutable);
          CGContextEOFillPath(debugging);
        }

        v75.x = v17.x;
        v75.y = y;
        v37 = CGPathContainsPoint(v55, 0, v75, 0);
        CGPathRelease(v55);
      }

      else
      {
        v37 = 0;
      }

      CGPathRelease(Mutable);
    }
  }

  else
  {
    if (debugging)
    {
      blueColor = [MEMORY[0x277D75348] blueColor];
      CGContextSetFillColorWithColor(debugging, [blueColor CGColor]);

      CGContextFillRect(debugging, v73);
    }

    v37 = 1;
  }

LABEL_23:
  return v37;
}

+ (CGSize)unconstrainedSizeForText:(id)text
{
  if (text)
  {
    textCopy = text;
    _sharedLayoutManager = [self _sharedLayoutManager];
    textContainers = [_sharedLayoutManager textContainers];
    v7 = [textContainers objectAtIndex:0];

    [v7 akSetContainerSize:{10000000.0, 10000000.0}];
    [v7 setExclusionPaths:MEMORY[0x277CBEBF8]];
    [textCopy addLayoutManager:_sharedLayoutManager];
    [_sharedLayoutManager glyphRangeForTextContainer:v7];
    [_sharedLayoutManager usedRectForTextContainer:v7];
    v9 = v8;
    v11 = v10;
    [textCopy removeLayoutManager:_sharedLayoutManager];
  }

  else
  {
    v9 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)renderAnnotationText:(id)text intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  textCopy = text;
  optionsCopy = options;
  nilCopy = nil;
  if (![optionsCopy forDisplay] || (objc_msgSend(textCopy, "isEditingText") & 1) == 0)
  {
    foregroundColor = [textCopy foregroundColor];

    if (foregroundColor)
    {
      annotationText = [textCopy annotationText];
      v15 = [annotationText mutableCopy];

      if ([v15 length])
      {
        v50.a = 0.0;
        v50.b = 0.0;
        v16 = [v15 attributesAtIndex:0 effectiveRange:&v50];
        v17 = [v16 mutableCopy];

        v18 = [textCopy foregroundColorForOptions:optionsCopy];
        [v17 setObject:v18 forKey:@"NSColor"];

        annotationText2 = [textCopy annotationText];
        [v15 setAttributes:v17 range:{0, objc_msgSend(annotationText2, "length")}];

        annotationText3 = [textCopy annotationText];
        [annotationText3 setAttributedString:v15];
      }
    }

    v21 = [AKTextAnnotationAttributeHelper actualOrPlaceholderTextOfAnnotation:textCopy];
    if ([v21 length])
    {
      if ([optionsCopy forDisplay])
      {
        v22 = nilCopy;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;
      if ([optionsCopy forDisplay])
      {
        contextCopy = 0;
      }

      else
      {
        contextCopy = context;
      }

      v54 = 0u;
      *v55 = 0u;
      v52 = 0.0;
      v53 = 0.0;
      v51 = 0;
      LOBYTE(v41) = 1;
      [AKTextAnnotationRenderHelper getAnnotationRectangle:0 textBounds:&v54 containerSize:&v52 exclusionPaths:&v51 isTextClipped:0 forAnnotation:textCopy onPageController:*MEMORY[0x277CBF348] orInContext:*(MEMORY[0x277CBF348] + 8) shouldAlignToPixels:*MEMORY[0x277CBF3A0] optionalText:*(MEMORY[0x277CBF3A0] + 8) optionalCenter:*(MEMORY[0x277CBF3A0] + 16) optionalProposedRectangle:*(MEMORY[0x277CBF3A0] + 24), v23, contextCopy, v41, v21];

      v25 = v51;
      if (v52 > 0.5 && v53 > 0.5)
      {
        UIGraphicsPushContext(context);
        CGContextSaveGState(context);
        CGContextSetShouldSmoothFonts(context, 0);
        CGContextSetShouldSubpixelPositionFonts(context, 1);
        CGContextSetShouldSubpixelQuantizeFonts(context, 1);
        _sharedLayoutManager = [self _sharedLayoutManager];
        textContainers = [_sharedLayoutManager textContainers];
        firstObject = [textContainers firstObject];

        [firstObject akSetContainerSize:{v52, v53}];
        [firstObject setExclusionPaths:v25];
        [textCopy originalModelBaseScaleFactor];
        v29 = [AKTextAnnotationAttributeHelper newTextStorage:v21 byApplyingScaleFactor:?];
        [v29 addLayoutManager:_sharedLayoutManager];
        v30 = [_sharedLayoutManager glyphRangeForTextContainer:firstObject];
        if (v31)
        {
          v45 = v31;
          v46 = v30;
          y = *(&v54 + 1);
          x = *&v54;
          height = v55[1];
          width = v55[0];
          if ([textCopy conformsToAKRectangularAnnotationProtocol])
          {
            [textCopy rectangle];
            v59.origin.x = v36;
            v59.origin.y = v37;
            v59.size.width = v38;
            v59.size.height = v39;
            v56.origin.x = x;
            v56.origin.y = y;
            v56.size.width = width;
            v56.size.height = height;
            v57 = CGRectIntersection(v56, v59);
            x = v57.origin.x;
            y = v57.origin.y;
            width = v57.size.width;
            height = v57.size.height;
          }

          v58.origin.x = x;
          v58.origin.y = y;
          v58.size.width = width;
          v58.size.height = height;
          CGContextClipToRect(context, v58);
          v40 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [textCopy originalExifOrientation]);
          v43 = *(MEMORY[0x277CBF2C0] + 16);
          *&v50.a = *MEMORY[0x277CBF2C0];
          v44 = *&v50.a;
          *&v50.c = v43;
          *&v50.tx = *(MEMORY[0x277CBF2C0] + 32);
          v42 = *&v50.tx;
          CGAffineTransformMakeTranslation(&t2, -*&v54, -*(&v54 + 1));
          *&t1.a = v44;
          *&t1.c = v43;
          *&t1.tx = v42;
          CGAffineTransformConcat(&v50, &t1, &t2);
          [AKGeometryHelper affineTransformRecenteringAboutOriginForExifOrientation:v40 withOriginalSize:*v55];
          v47 = v50;
          CGAffineTransformConcat(&t2, &v47, &t1);
          v50 = t2;
          CGAffineTransformMakeTranslation(&t1, *&v54, *(&v54 + 1));
          v47 = v50;
          CGAffineTransformConcat(&t2, &v47, &t1);
          v50 = t2;
          CGContextConcatCTM(context, &t2);
          CGContextTranslateCTM(context, 0.0, *(&v54 + 1));
          CGContextTranslateCTM(context, 0.0, v53);
          CGContextScaleCTM(context, 1.0, -1.0);
          CGContextTranslateCTM(context, 0.0, -*(&v54 + 1));
          [_sharedLayoutManager drawGlyphsForGlyphRange:v46 atPoint:{v45, x, y}];
        }

        [v29 removeLayoutManager:_sharedLayoutManager];
        CGContextRestoreGState(context);
        UIGraphicsPopContext();
      }
    }
  }
}

+ (id)_sharedLayoutManager
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKey:@"com.apple.AnnotationKit.AKTextAnnotationRenderHelper.sharedLayoutManager"];
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D74278]) initWithSize:{10000000.0, 10000000.0}];
    v4 = objc_alloc_init(AKTextLayoutManager);
    [v5 setWidthTracksTextView:0];
    [v5 setHeightTracksTextView:0];
    [v5 setLineFragmentPadding:0.0];
    [(AKTextLayoutManager *)v4 addTextContainer:v5];
    [threadDictionary setObject:v4 forKey:@"com.apple.AnnotationKit.AKTextAnnotationRenderHelper.sharedLayoutManager"];
  }

  return v4;
}

@end