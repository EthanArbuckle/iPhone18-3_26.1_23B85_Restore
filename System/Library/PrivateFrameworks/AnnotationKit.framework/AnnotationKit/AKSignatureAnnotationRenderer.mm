@interface AKSignatureAnnotationRenderer
+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness;
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation;
+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil;
@end

@implementation AKSignatureAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  [annotationCopy rectangle];
  v16 = CGRectInset(v15, -1.0, -1.0);
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  [annotationCopy rotationAngle];
  v9 = v8;

  [AKGeometryHelper boundsOfRotatedRectangle:x angle:y, width, height, v9];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)annotation
{
  v3 = -5.0;
  v4 = -5.0;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)annotation intoContext:(CGContext *)context options:(id)options pageControllerOrNil:(id)nil
{
  v102 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  optionsCopy = options;
  nilCopy = nil;
  [optionsCopy allowHDR];
  CGContextSaveGState(context);
  [self _transformContextToModelCoordinates:context forAnnotation:annotationCopy forDisplay:objc_msgSend(optionsCopy pageControllerOrNil:{"forDisplay"), nilCopy}];
  memset(&v100, 0, sizeof(v100));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:0];
  transform = v100;
  CGContextConcatCTM(context, &transform);
  [annotationCopy rectangle];
  CGContextTranslateCTM(context, v13, v14);
  v15 = +[AKGeometryHelper inverseExifOrientation:](AKGeometryHelper, "inverseExifOrientation:", [annotationCopy originalExifOrientation]);
  memset(&transform, 0, sizeof(transform));
  [annotationCopy rectangle];
  [AKGeometryHelper affineTransformRecenteringAboutOriginForExifOrientation:v15 withOriginalSize:v16, v17];
  v98 = transform;
  CGContextConcatCTM(context, &v98);
  signature = [annotationCopy signature];
  drawing = [signature drawing];

  if (!drawing)
  {
LABEL_7:
    signature2 = [annotationCopy signature];
    path = [signature2 path];

    if (path)
    {
      strokeColor = [annotationCopy strokeColor];

      if (strokeColor)
      {
        [annotationCopy strokeColorForOptions:optionsCopy];
      }

      else
      {
        [MEMORY[0x277D75348] blackColor];
      }
      v30 = ;
      CGContextSetFillColorWithColor(context, [v30 CGColor]);

      signature3 = [annotationCopy signature];
      [signature3 pathBounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [annotationCopy rectangle];
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

      CGContextScaleCTM(context, v42, v42);
      CGContextTranslateCTM(context, v43 - v33, -v35);
      signature4 = [annotationCopy signature];
      CGContextAddPath(context, [signature4 path]);

      CGContextFillPath(context);
    }

    goto LABEL_44;
  }

  forDisplay = [optionsCopy forDisplay];
  if (nilCopy && forDisplay)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v23 = [threadDictionary objectForKey:@"AKAnnotationRendererIsFastPathRenderingOnCurrentThread"];
    bOOLValue = [v23 BOOLValue];

    if (bOOLValue)
    {
      signature5 = [annotationCopy signature];
      path2 = [signature5 path];

      if (path2)
      {

        goto LABEL_7;
      }

      if (qword_27E39B7B0 != -1)
      {
        sub_23F4BD568();
      }
    }
  }

  signature6 = [annotationCopy signature];
  drawing2 = [signature6 drawing];

  strokeColor2 = [annotationCopy strokeColor];
  if (strokeColor2)
  {
    v91 = nilCopy;
    blackColor = [MEMORY[0x277D75348] blackColor];
    v49 = [strokeColor2 isEqual:blackColor];

    if (v49)
    {
      v50 = drawing2;
      nilCopy = v91;
    }

    else
    {
      v88 = v15;
      v89 = optionsCopy;
      v90 = annotationCopy;
      v51 = objc_alloc(MEMORY[0x277CBEB70]);
      strokes = [drawing2 strokes];
      v53 = [v51 initWithArray:strokes];

      v86 = v53;
      v87 = drawing2;
      v50 = [objc_alloc(MEMORY[0x277CD95F8]) initWithStrokes:v53 fromDrawing:drawing2];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      strokes2 = [v50 strokes];
      v55 = [strokes2 countByEnumeratingWithState:&v94 objects:v101 count:16];
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
              objc_enumerationMutation(strokes2);
            }

            v59 = *(*(&v94 + 1) + 8 * i);
            v60 = MEMORY[0x277CD9638];
            v61 = [v59 ink];
            v62 = [v60 inkFromInk:v61 color:strokeColor2];

            v63 = [v50 setStroke:v59 ink:v62];
          }

          v56 = [strokes2 countByEnumeratingWithState:&v94 objects:v101 count:16];
        }

        while (v56);
      }

      annotationCopy = v90;
      v15 = v88;
      optionsCopy = v89;
      nilCopy = v91;
    }
  }

  else
  {
    v50 = drawing2;
  }

  [v50 bounds];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  [annotationCopy rectangle];
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

  CGContextScaleCTM(context, v74, v74);
  v92 = v65;
  CGContextTranslateCTM(context, v75 - v65, -v67);
  memset(&v98, 0, sizeof(v98));
  CGContextGetCTM(&v98, context);
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
    CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
    akCGImage = [v84 akCGImage];
    v106.origin.x = v92;
    v106.origin.y = v67;
    v106.size.width = v69;
    v106.size.height = v71;
    CGContextDrawImage(context, v106, akCGImage);
  }

LABEL_44:
  CGContextRestoreGState(context);
}

+ (BOOL)_concretePointIsOnBorder:(CGPoint)border ofAnnotation:(id)annotation minimumBorderThickness:(double)thickness
{
  y = border.y;
  x = border.x;
  annotationCopy = annotation;
  [objc_opt_class() _concreteDraggingBoundsInsetsForAnnotation:annotationCopy];
  v9 = v8;
  v11 = v10;
  [annotationCopy rectangle];
  v26 = CGRectInset(v25, v9, v11);
  v12 = v26.origin.x;
  v13 = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  v22 = 0;
  memset(&v21, 0, sizeof(v21));
  [AKGeometryHelper rotationTransformForRectangularAnnotation:annotationCopy hasRotation:&v22];

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