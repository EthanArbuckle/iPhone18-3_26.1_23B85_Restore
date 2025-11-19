@interface AKInkAnnotationRenderer
+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3;
+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3;
+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6;
@end

@implementation AKInkAnnotationRenderer

+ (CGRect)_concreteDrawingBoundsOfAnnotation:(id)a3
{
  [a3 rectangle];

  return CGRectInset(*&v3, -1.0, -1.0);
}

+ (CGSize)_concreteDraggingBoundsInsetsForAnnotation:(id)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (void)_concreteRenderAnnotation:(id)a3 intoContext:(CGContext *)a4 options:(id)a5 pageControllerOrNil:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a5;
  CGContextSaveGState(a4);
  v13 = [v12 forDisplay];

  [a1 _transformContextToModelCoordinates:a4 forAnnotation:v10 forDisplay:v13 pageControllerOrNil:v11];
  v14 = [v10 drawing];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 strokes];
    v17 = [v16 count];

    if (v17)
    {
      [v15 bounds];
      v116 = v18;
      v118 = v19;
      v112 = v21;
      v114 = v20;
      [v10 rectangle];
      x = v127.origin.x;
      y = v127.origin.y;
      width = v127.size.width;
      height = v127.size.height;
      MidX = CGRectGetMidX(v127);
      v128.origin.x = x;
      v128.origin.y = y;
      v128.size.width = width;
      v128.size.height = height;
      MidY = CGRectGetMidY(v128);
      v28 = [v10 originalExifOrientation];
      v29 = x;
      v30 = y;
      v31 = width;
      v32 = height;
      if (v28 != 1)
      {
        memset(&v126, 0, sizeof(v126));
        [AKGeometryHelper affineTransformForExifOrientation:[AKGeometryHelper inverseExifOrientation:v28] aboutCenter:MidX, MidY];
        transform = v126;
        CGContextConcatCTM(a4, &transform);
        transform = v126;
        v129.origin.x = x;
        v129.origin.y = y;
        v129.size.width = width;
        v129.size.height = height;
        v130 = CGRectApplyAffineTransform(v129, &transform);
        *(&v30 - 1) = CGRectStandardize(v130);
        v29 = v33;
      }

      v99 = MidX;
      v106 = v30;
      v108 = v31;
      v110 = v32;
      v97 = MidY;
      memset(&v126, 0, sizeof(v126));
      CGContextGetCTM(&v126, a4);
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = sub_23F451394;
      v123[3] = &unk_278C7BD28;
      v124 = v126;
      v34 = [AKGeometryHelper exifOrientationWithConversionBlock:v123];
      transform = v126;
      v131.origin.x = x;
      v131.origin.y = y;
      v131.size.width = width;
      v131.size.height = height;
      v132 = CGRectApplyAffineTransform(v131, &transform);
      v133 = CGRectStandardize(v132);
      v134 = CGRectIntegral(v133);
      rect_16 = v134.size.height;
      rect_24 = v134.size.width;
      transform = v126;
      v134.origin.x = 0.0;
      v134.origin.y = 0.0;
      v134.size.width = 1.0;
      v134.size.height = 1.0;
      v135 = CGRectApplyAffineTransform(v134, &transform);
      v35 = v135.origin.x;
      v36 = v135.origin.y;
      v37 = v135.size.width;
      v38 = v135.size.height;
      v39 = CGRectGetWidth(v135);
      v136.origin.x = v35;
      v136.origin.y = v36;
      v136.size.width = v37;
      v136.size.height = v38;
      v40 = CGRectGetHeight(v136);
      if (v39 >= v40)
      {
        v40 = v39;
      }

      rect_8 = v40;
      v137.origin.x = v29;
      v137.origin.y = v106;
      v137.size.width = v108;
      v137.size.height = v110;
      v41 = CGRectGetWidth(v137);
      v138.origin.x = v116;
      v138.origin.y = v114;
      v138.size.width = v112;
      v138.size.height = v118;
      v42 = v41 / CGRectGetWidth(v138);
      v139.origin.x = v29;
      v139.origin.y = v106;
      v139.size.width = v108;
      v139.size.height = v110;
      v43 = CGRectGetHeight(v139);
      v140.origin.x = v116;
      v140.origin.y = v114;
      v140.size.width = v112;
      v140.size.height = v118;
      v44 = v43 / CGRectGetHeight(v140);
      if (v42 < v44)
      {
        v44 = v42;
      }

      v45 = rect_8 * v44;
      Type = CGContextGetType();
      if (Type == 6 || Type == 1)
      {
        v47 = v45 * 4.16666667;
        v48 = rect_24 * 4.16666667;
        v49 = rect_16 * 4.16666667;
      }

      else
      {
        v47 = v45;
        v49 = rect_16;
        v48 = rect_24;
      }

      if (v48 >= v49)
      {
        v50 = v48;
      }

      else
      {
        v50 = v49;
      }

      [AKInkRendererHelper maxRenderingSize:*&v97];
      v52 = v51;
      v53 = v50 <= v51;
      v54 = v47 * (v51 / v50);
      if (v53)
      {
        v55 = v47;
      }

      else
      {
        v55 = v54;
      }

      v56 = [AKInkRendererHelper renderDrawing:v15 clippedToStrokeSpaceRect:v116 scale:v114, v112, v118, v55];
      if (v56)
      {
        memset(&transform, 0, sizeof(transform));
        CGAffineTransformMakeScale(&transform, v45, v45);
        v122 = transform;
        v141.origin.x = v116;
        v141.origin.y = v114;
        v141.size.width = v112;
        v141.size.height = v118;
        v142 = CGRectApplyAffineTransform(v141, &v122);
        v57 = v142.origin.x;
        v119 = v50;
        v58 = v142.origin.y;
        v59 = v142.size.width;
        v60 = v142.size.height;
        v143 = CGRectIntegral(v142);
        v117 = v52;
        v61 = v143.origin.x;
        v62 = v143.origin.y;
        v63 = v143.size.width;
        v64 = v143.size.height;
        memset(&v122, 0, sizeof(v122));
        [AKGeometryHelper affineTransformForExifOrientation:v34 aboutCenter:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
        v121 = v122;
        v144.origin.x = v57;
        v144.origin.y = v58;
        v144.size.width = v59;
        v144.size.height = v60;
        v145 = CGRectApplyAffineTransform(v144, &v121);
        v65 = v145.origin.x;
        v66 = v145.origin.y;
        v67 = v145.size.width;
        rect_16a = v145.size.width;
        v113 = v145.size.height;
        v121 = v122;
        v145.origin.x = v61;
        v145.origin.y = v62;
        v145.size.width = v63;
        v145.size.height = v64;
        v146 = CGRectApplyAffineTransform(v145, &v121);
        v68 = v146.origin.x;
        v69 = v146.origin.y;
        v70 = v146.size.width;
        v71 = v146.size.height;
        v146.origin.x = round(v146.size.width);
        origin = v146.origin;
        v146.origin.x = round(v146.size.height);
        v115 = v146.origin;
        v107 = v126.ty + v98 * v126.d + v126.b * v100;
        v109 = v126.tx + v98 * v126.c + v126.a * v100;
        v146.origin.x = v68;
        v72 = CGRectGetMidX(v146);
        v147.origin.x = v65;
        v147.origin.y = v66;
        v147.size.width = v67;
        v147.size.height = v113;
        rect_24a = v72 - CGRectGetMidX(v147);
        v148.origin.x = v68;
        v148.origin.y = v69;
        v148.size.width = v70;
        v148.size.height = v71;
        v73 = CGRectGetMidY(v148);
        v149.origin.x = v65;
        v149.origin.y = v66;
        v149.size.width = rect_16a;
        v149.size.height = v113;
        v74 = v107 + v73 - CGRectGetMidY(v149);
        *v75.i64 = origin.x - trunc(origin.x * 0.5) * 2.0;
        v76.f64[0] = NAN;
        v76.f64[1] = NAN;
        v77 = vnegq_f64(v76);
        v78 = round(v109 + rect_24a + 0.5) + -0.5;
        *v79.i64 = round(v109 + rect_24a);
        if (*vbslq_s8(v77, v75, origin).i64 == 0.0)
        {
          v80 = *v79.i64;
        }

        else
        {
          v80 = v78;
        }

        *v79.i64 = v115.x - trunc(v115.x * 0.5) * 2.0;
        v81 = round(v74 + 0.5) + -0.5;
        v82 = round(v74);
        if (*vbslq_s8(v77, v79, v115).i64 == 0.0)
        {
          v81 = v82;
        }

        [AKGeometryHelper rectWithSize:origin.x centeredAtPoint:v115.x, v80, v81];
        v84 = v83;
        v86 = v85;
        v88 = v87;
        v90 = v89;
        v120 = v126;
        memset(&v121, 0, sizeof(v121));
        CGAffineTransformInvert(&v121, &v120);
        v120 = v121;
        v150.origin.x = v84;
        v150.origin.y = v86;
        v150.size.width = v88;
        v150.size.height = v90;
        v151 = CGRectApplyAffineTransform(v150, &v120);
        v91 = v151.origin.x;
        v92 = v151.origin.y;
        v93 = v151.size.width;
        v94 = v151.size.height;
        if (v119 <= v117)
        {
          v95 = kCGInterpolationNone;
        }

        else
        {
          v95 = kCGInterpolationHigh;
        }

        CGContextSetInterpolationQuality(a4, v95);
        v96 = [v56 akCGImage];
        v152.origin.x = v91;
        v152.origin.y = v92;
        v152.size.width = v93;
        v152.size.height = v94;
        CGContextDrawImage(a4, v152, v96);
      }
    }
  }

  CGContextRestoreGState(a4);
}

@end