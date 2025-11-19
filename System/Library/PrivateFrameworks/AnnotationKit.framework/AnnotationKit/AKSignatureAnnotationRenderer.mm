@interface AKSignatureAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKSignatureAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  v3 = a3;
  [v3 rectangle];
  v16 = CGRectInset(v15, -1.0, -1.0);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  [v3 rotationAngle];
  v9 = v8;

  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v9];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = -5.0;
  v4 = -5.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v102 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [v11 allowHDR];
  CGContextSaveGState(a4);
  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:objc_msgSend(v11 pageControllerOrNil:{"forDisplay"), v12}];
  memset(&v100, 0, sizeof(v100));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v10 hasRotation:0];
  transform = v100;
  CGContextConcatCTM(a4, &transform);
  [v10 rectangle];
  CGContextTranslateCTM(a4, v13, v14);
  v15 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [v10 originalExifOrientation]);
  memset(&transform, 0, sizeof(transform));
  [v10 rectangle];
  [AKGeometryHelper affineTransformRecenteringAboutOriginForExifOrientation:v15 withOriginalSize:v16, v17];
  v98 = transform;
  CGContextConcatCTM(a4, &v98);
  v18 = [v10 signature];
  v19 = [v18 drawing];

  if (!v19)
  {
LABEL_7:
    v27 = [v10 signature];
    v28 = [v27 path];

    if (v28)
    {
      v29 = [v10 strokeColor];

      if (v29)
      {
        [v10 strokeColorForOptions:v11];
      }

      else
      {
        [MEMORY[0x277D75348] blackColor];
      }
      v30 = ;
      CGContextSetFillColorWithColor(a4, [v30 CGColor]);

      v31 = [v10 signature];
      [v31 pathBounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [v10 rectangle];
      [AKGeometryHelper adjustRect:"adjustRect:forExifOrientation:aboutCenter:" forExifOrientation:v15 aboutCenter:?];
      v42 = v40 / v37;
      if (v40 / v37 >= v41 / v39)
      {
        v42 = v41 / v39;
      }

      v43 = 0.0;
      if (v42 < 1.0)
      {
        v43 = (v40 / v42 - v37) * 0.5;
      }

      CGContextScaleCTM(a4, v42, v42);
      CGContextTranslateCTM(a4, v43 - v33, -v35);
      v44 = [v10 signature];
      CGContextAddPath(a4, [v44 path]);

      CGContextFillPath(a4);
    }

    goto LABEL_44;
  }

  v20 = [v11 forDisplay];
  if (v12 && v20)
  {
    v21 = [MEMORY[0x277CCACC8] currentThread];
    v22 = [v21 threadDictionary];

    v23 = [v22 objectForKey:@"AKAnnotationRendererIsFastPathRenderingOnCurrentThread"];
    v24 = [v23 BOOLValue];

    if (v24)
    {
      v25 = [v10 signature];
      v26 = [v25 path];

      if (v26)
      {

        goto LABEL_7;
      }

      if (qword_27E39B7B0 != -1)
      {
        sub_23F4BD568();
      }
    }
  }

  v45 = [v10 signature];
  v46 = [v45 drawing];

  v47 = [v10 strokeColor];
  if (v47)
  {
    v91 = v12;
    v48 = [MEMORY[0x277D75348] blackColor];
    v49 = [v47 isEqual:v48];

    if (v49)
    {
      v50 = v46;
      v12 = v91;
    }

    else
    {
      v88 = v15;
      v89 = v11;
      v90 = v10;
      v51 = objc_alloc(MEMORY[0x277CBEB70]);
      v52 = [v46 strokes];
      v53 = [v51 initWithArray:v52];

      v86 = v53;
      v87 = v46;
      v50 = [objc_alloc(MEMORY[0x277CD95F8]) initWithStrokes:v53 fromDrawing:v46];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v54 = [v50 strokes];
      v55 = [v54 countByEnumeratingWithState:&v94 objects:v101 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v95;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v95 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v94 + 1) + 8 * i);
            v60 = MEMORY[0x277CD9638];
            v61 = [v59 ink];
            v62 = [v60 inkFromInk:v61 color:v47];

            v63 = [v50 setStroke:v59 ink:v62];
          }

          v56 = [v54 countByEnumeratingWithState:&v94 objects:v101 count:16];
        }

        while (v56);
      }

      v10 = v90;
      v15 = v88;
      v11 = v89;
      v12 = v91;
    }
  }

  else
  {
    v50 = v46;
  }

  [v50 bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  [v10 rectangle];
  [AKGeometryHelper adjustRect:"adjustRect:forExifOrientation:aboutCenter:" forExifOrientation:v15 aboutCenter:?];
  v74 = v72 / v69;
  if (v72 / v69 >= v73 / v71)
  {
    v74 = v73 / v71;
  }

  v75 = 0.0;
  if (v74 < 1.0)
  {
    v75 = (v72 / v74 - v69) * 0.5;
  }

  CGContextScaleCTM(a4, v74, v74);
  v92 = v65;
  CGContextTranslateCTM(a4, v75 - v65, -v67);
  memset(&v98, 0, sizeof(v98));
  CGContextGetCTM(&v98, a4);
  v93 = v98;
  v103.origin.x = 0.0;
  v103.origin.y = 0.0;
  v103.size.width = 1.0;
  v103.size.height = 1.0;
  v104 = CGRectApplyAffineTransform(v103, &v93);
  x = v104.origin.x;
  y = v104.origin.y;
  width = v104.size.width;
  height = v104.size.height;
  v80 = CGRectGetWidth(v104);
  v105.origin.x = x;
  v105.origin.y = y;
  v105.size.width = width;
  v105.size.height = height;
  v81 = CGRectGetHeight(v105);
  if (v80 >= v81)
  {
    v82 = v80;
  }

  else
  {
    v82 = v81;
  }

  Type = CGContextGetType();
  if (Type == 6 || Type == 1)
  {
    v82 = v82 + v82;
  }

  v84 = [AKInkRendererHelper renderDrawing:v50 clippedToStrokeSpaceRect:v92 scale:v67, v69, v71, v82];
  if (v84)
  {
    CGContextSetInterpolationQuality(a4, kCGInterpolationHigh);
    v85 = [v84 akCGImage];
    v106.origin.x = v92;
    v106.origin.y = v67;
    v106.size.width = v69;
    v106.size.height = v71;
    CGContextDrawImage(a4, v106, v85);
  }

LABEL_44:
  CGContextRestoreGState(a4);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)a3 ofAnnotation:(id)a4 minimumBorderThickness:(double)a5
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [objc_opt_class() _concreteDraggingBoundsInsetsForAnnotation:v7];
  v9 = v8;
  v11 = v10;
  [v7 rectangle];
  v26 = CGRectInset(v25, v9, v11);
  v12 = v26.origin.x;
  v13 = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v22 = 0;
  memset(&v21, 0, sizeof(v21));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:v7 hasRotation:&v22];

  if (v22)
  {
    v19 = v21;
    memset(&m, 0, sizeof(m));
    CGAffineTransformInvert(&m, &v19);
    v27.origin.x = v12;
    v27.origin.y = v13;
    v27.size.width = width;
    v27.size.height = height;
    v16 = CGPathCreateWithRect(v27, 0);
    v23.x = x;
    v23.y = y;
    v17 = CGPathContainsPoint(v16, &m, v23, 0);
    CGPathRelease(v16);
  }

  else
  {
    v28.origin.x = v12;
    v28.origin.y = v13;
    v28.size.width = width;
    v28.size.height = height;
    v24.x = x;
    v24.y = y;
    return CGRectContainsPoint(v28, v24);
  }

  return v17;
}

@end