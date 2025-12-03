@interface AKLoupeAnnotationImageUpdaterHelper
+ (CGAffineTransform)transformForFastPathLayer:(SEL)layer ofLoupeAnnotation:(id)annotation onPageController:(id)controller;
+ (CGRect)magnifiedRectForUnmagnifiedRect:(CGRect)rect ofLoupeAnnotation:(id)annotation onPageController:(id)controller;
+ (CGRect)unmagnifiedRectForMagnifiedRect:(CGRect)rect ofLoupeAnnotation:(id)annotation;
+ (void)updateFastPathImageOnLoupeAnnotation:(id)annotation withFastPathLayer:(id)layer onPageController:(id)controller;
+ (void)updateModelImageOnLoupeAnnotation:(id)annotation onPageController:(id)controller;
@end

@implementation AKLoupeAnnotationImageUpdaterHelper

+ (CGRect)magnifiedRectForUnmagnifiedRect:(CGRect)rect ofLoupeAnnotation:(id)annotation onPageController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [annotation magnification];
  v10 = v9;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidY = CGRectGetMidY(v18);
  v13 = width / v10;
  v14 = height / v10;
  v15 = MidY - height / v10 * 0.5;
  v16 = MidX - width / v10 * 0.5;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

+ (CGRect)unmagnifiedRectForMagnifiedRect:(CGRect)rect ofLoupeAnnotation:(id)annotation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [annotation magnification];
  v9 = v8;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MidY = CGRectGetMidY(v17);
  v12 = width * v9;
  v13 = height * v9;
  v14 = MidY - height * v9 * 0.5;
  v15 = MidX - width * v9 * 0.5;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

+ (void)updateModelImageOnLoupeAnnotation:(id)annotation onPageController:(id)controller
{
  v6 = off_27E398E98;
  controllerCopy = controller;
  annotationCopy = annotation;
  objc_setAssociatedObject(annotationCopy, v6, 0, 0x301);
  [annotationCopy rectangle];
  v10 = v9;
  [self magnifiedRectForUnmagnifiedRect:annotationCopy ofLoupeAnnotation:controllerCopy onPageController:?];
  v12 = v10 / v11;
  [controllerCopy convertRectFromModelToOverlay:?];
  v17 = [controllerCopy newContentSnapshotPDFDataAtScale:annotationCopy inRect:v12 forLoupeAnnotation:{v13, v14, v15, v16}];

  [annotationCopy setImageData:v17];
}

+ (void)updateFastPathImageOnLoupeAnnotation:(id)annotation withFastPathLayer:(id)layer onPageController:(id)controller
{
  v175 = *MEMORY[0x277D85DE8];
  annotationCopy = annotation;
  layerCopy = layer;
  controllerCopy = controller;
  delegate = [controllerCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    pageIndex = [controllerCopy pageIndex];
    controller = [controllerCopy controller];
    v14 = [delegate layerContainingQuickBackgroundForLoupeOnOverlayAtPageIndex:pageIndex forAnnotationController:controller];

    if (v14 && layerCopy)
    {
      overlayView = [controllerCopy overlayView];
      [annotationCopy rectangle];
      v17 = v16;
      v158 = v19;
      v159 = v18;
      v157 = v20;
      [self magnifiedRectForUnmagnifiedRect:annotationCopy ofLoupeAnnotation:controllerCopy onPageController:?];
      v22 = v21;
      v24 = v23;
      v149 = v26;
      v150 = v25;
      [controllerCopy convertRectFromModelToOverlay:?];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;
      layer = [overlayView layer];
      [v14 convertRect:layer fromLayer:{v28, v30, v32, v34}];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      [AKGeometryHelper integralRect:3840 withOptions:v37, v39, v41, v43];
      v47 = v46;
      v49 = v48;
      v50 = v44;
      v152 = v24;
      v153 = v22;
      if (vabdd_f64(v22, v24) >= 0.0005)
      {
        v51 = v45;
      }

      else
      {
        v51 = v44;
      }

      [controllerCopy currentModelToScreenScaleFactor];
      v147 = v52;
      window = [overlayView window];
      screen = [window screen];

      if (screen)
      {
        window2 = [overlayView window];
        screen2 = [window2 screen];
        [screen2 scale];
        v146 = v57;
      }

      else
      {
        window2 = [MEMORY[0x277D759A0] mainScreen];
        [window2 scale];
        v146 = v58;
      }

      geometryHelper = [controllerCopy geometryHelper];
      v151 = v17;
      [geometryHelper screenPixelAlignedRectForRect:{v17, v159, v158, v157}];
      v144 = v61;
      v145 = v60;

      v62 = *(MEMORY[0x277CBF398] + 16);
      v172 = *MEMORY[0x277CBF398];
      v173 = v62;
      v63 = [AKFastLayerSnapshotHelper newFastSnapshotFromLayer:v14 withSourceRect:&v172 acutalSnapshotRect:v47, v49, v50, v51];
      v160 = overlayView;
      layer2 = [overlayView layer];
      [layer2 convertRect:v14 fromLayer:{v172, v173}];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      [controllerCopy convertRectFromOverlayToModel:{v66, v68, v70, v72}];
      v74 = v73;
      v76 = v75;
      v154 = v78;
      v155 = v77;
      [annotationCopy rectangle];
      v80 = v79;
      v82 = v81;
      v84 = v83;
      v86 = v85;
      [annotationCopy magnification];
      v88 = v87;
      v177.origin.x = v80;
      v177.origin.y = v82;
      v177.size.width = v84;
      v177.size.height = v86;
      MidX = CGRectGetMidX(v177);
      v178.origin.x = v80;
      v178.origin.y = v82;
      v178.size.width = v84;
      v178.size.height = v86;
      MidY = CGRectGetMidY(v178);
      v162 = *(MEMORY[0x277CBF2C0] + 16);
      *&v171.a = *MEMORY[0x277CBF2C0];
      v163 = *&v171.a;
      *&v171.c = v162;
      *&v171.tx = *(MEMORY[0x277CBF2C0] + 32);
      v161 = *&v171.tx;
      CGAffineTransformMakeTranslation(&t2, -MidX, -MidY);
      *&t1.a = v163;
      *&t1.c = v162;
      *&t1.tx = v161;
      CGAffineTransformConcat(&v171, &t1, &t2);
      CGAffineTransformMakeScale(&t1, v88, v88);
      v168 = v171;
      CGAffineTransformConcat(&t2, &v168, &t1);
      v171 = t2;
      CGAffineTransformMakeTranslation(&t1, MidX, MidY);
      v168 = v171;
      CGAffineTransformConcat(&t2, &v168, &t1);
      v171 = t2;
      v179.origin.x = v74;
      v179.origin.y = v76;
      v179.size.height = v154;
      v179.size.width = v155;
      v180 = CGRectApplyAffineTransform(v179, &t2);
      [controllerCopy convertRectFromModelToOverlay:{v180.origin.x, v180.origin.y, v180.size.width, v180.size.height}];
      v92 = v91;
      v94 = v93;
      v96 = v95;
      v98 = v97;
      overlayView2 = [controllerCopy overlayView];
      layer3 = [overlayView2 layer];
      superlayer = [layerCopy superlayer];
      [layer3 convertRect:superlayer toLayer:{v92, v94, v96, v98}];
      v103 = v102;
      v105 = v104;
      v107 = v106;
      v109 = v108;

      [layerCopy setFrame:{v103, v105, v107, v109}];
      mask = [layerCopy mask];
      [layerCopy bounds];
      [mask setFrame:?];
      [AKLoupeAnnotationRenderer innerClipRect:annotationCopy];
      [controllerCopy convertRectFromModelToOverlay:?];
      v112 = v111;
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v119 = v160;
      layer4 = [v160 layer];
      [layer4 convertRect:layerCopy toLayer:{v112, v114, v116, v118}];
      v122 = v121;
      v124 = v123;
      v126 = v125;
      v128 = v127;

      [layerCopy convertRect:mask toLayer:{v122, v124, v126, v128}];
      v129 = CGPathCreateWithEllipseInRect(v181, 0);
      [mask setPath:v129];
      CGPathRelease(v129);

      if (v63)
      {
        v156 = layerCopy;
        v130 = v147 * v146 * v144;
        v148 = round(v147 * v146 * v145);
        v131 = round(v130);
        [layerCopy setContents:v63];
        CGImageRelease(v63);
        v176.width = v148;
        v176.height = v131;
        UIGraphicsBeginImageContext(v176);
        CurrentContext = UIGraphicsGetCurrentContext();
        *&v171.a = v163;
        *&v171.c = v162;
        *&v171.tx = v161;
        [AKGeometryHelper verticalFlipTransformForRect:v150, v149, v153, v152];
        *&t1.a = v163;
        *&t1.c = v162;
        *&t1.tx = v161;
        CGAffineTransformConcat(&v171, &t1, &t2);
        v182.origin.x = v151;
        v182.origin.y = v159;
        v182.size.width = v158;
        v182.size.height = v157;
        v133 = -CGRectGetMidX(v182);
        v183.origin.x = v151;
        v183.origin.y = v159;
        v183.size.width = v158;
        v183.size.height = v157;
        v134 = CGRectGetMidY(v183);
        CGAffineTransformMakeTranslation(&t1, v133, -v134);
        v168 = v171;
        CGAffineTransformConcat(&t2, &v168, &t1);
        v171 = t2;
        CGAffineTransformMakeScale(&t1, v148 / v153, v131 / v152);
        v168 = v171;
        CGAffineTransformConcat(&t2, &v168, &t1);
        v171 = t2;
        CGAffineTransformMakeTranslation(&t1, v148 * 0.5, v131 * 0.5);
        v168 = v171;
        CGAffineTransformConcat(&t2, &v168, &t1);
        v171 = t2;
        CGContextConcatCTM(CurrentContext, &t2);
        v135 = [controllerCopy annotationsBeneathLoupe:annotationCopy];
        v164 = 0u;
        v165 = 0u;
        v166 = 0u;
        v167 = 0u;
        v136 = [v135 countByEnumeratingWithState:&v164 objects:v174 count:16];
        if (v136)
        {
          v137 = v136;
          v138 = *v165;
          do
          {
            for (i = 0; i != v137; ++i)
            {
              if (*v165 != v138)
              {
                objc_enumerationMutation(v135);
              }

              v140 = *(*(&v164 + 1) + 8 * i);
              CGContextSaveGState(CurrentContext);
              [v140 integralDrawingBounds];
              x = v184.origin.x;
              y = v184.origin.y;
              if (!CGRectIsInfinite(v184))
              {
                CGContextTranslateCTM(CurrentContext, x, y);
              }

              [AKController renderAnnotation:v140 inContext:CurrentContext];
              CGContextRestoreGState(CurrentContext);
            }

            v137 = [v135 countByEnumeratingWithState:&v164 objects:v174 count:16];
          }

          while (v137);
        }

        v143 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        objc_setAssociatedObject(annotationCopy, off_27E398E98, v143, 0x301);

        layerCopy = v156;
        v119 = v160;
      }

      else
      {
        [self updateModelImageOnLoupeAnnotation:annotationCopy onPageController:controllerCopy];
      }
    }

    else
    {
      [self updateModelImageOnLoupeAnnotation:annotationCopy onPageController:controllerCopy];
    }
  }

  else
  {
    [self updateModelImageOnLoupeAnnotation:annotationCopy onPageController:controllerCopy];
  }
}

+ (CGAffineTransform)transformForFastPathLayer:(SEL)layer ofLoupeAnnotation:(id)annotation onPageController:(id)controller
{
  v8 = a6;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_23F45D17C;
  v22[3] = &unk_278C7BDC8;
  v23 = v8;
  v9 = v8;
  annotationCopy = annotation;
  v11 = [AKGeometryHelper exifOrientationWithConversionBlock:v22];
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  [annotationCopy frame];
  MidX = CGRectGetMidX(v24);
  [annotationCopy frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.origin.x = v14;
  v25.origin.y = v16;
  v25.size.width = v18;
  v25.size.height = v20;
  [AKGeometryHelper affineTransformForExifOrientation:v11 aboutCenter:MidX, CGRectGetMidY(v25)];

  return result;
}

@end