@interface CRLFreehandDrawingShapeTracingHelper
+ (id)diskNonEmptyKernel;
+ (id)unscaledOutlinePathFromFreehandDrawingShapeLayouts:(id)a3 scaledOutset:(double)a4 viewScale:(double)a5;
@end

@implementation CRLFreehandDrawingShapeTracingHelper

+ (id)unscaledOutlinePathFromFreehandDrawingShapeLayouts:(id)a3 scaledOutset:(double)a4 viewScale:(double)a5
{
  v7 = a3;
  v8 = +[CRLCapabilities currentCapabilities];
  v9 = [v8 isMetalCapable];

  if (v9)
  {
    v10 = +[NSMutableArray array];
    v11 = +[NSMutableDictionary dictionary];
    v110 = +[NSMutableSet set];
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v105 = v7;
    obj = v7;
    v16 = [obj countByEnumeratingWithState:&v131 objects:v140 count:16];
    v106 = v11;
    v103 = a4 / a5;
    v104 = a5;
    if (v16)
    {
      v17 = v16;
      v114 = *v132;
      v18 = -(a4 / a5);
      v19 = 2.0 / a5 + 2.0 / a5;
      if (a5 <= 0.0)
      {
        v19 = 4.0;
      }

      v108 = v19;
      do
      {
        v20 = 0;
        v107 = v17;
        do
        {
          if (*v132 != v114)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v131 + 1) + 8 * v20);
          memset(&v130, 0, sizeof(v130));
          if (v21)
          {
            [v21 pureTransformInRoot];
          }

          v22 = [v21 pathSource];
          v23 = [v22 bezierPath];
          v24 = [v23 copy];

          buf = v130;
          [v24 transformUsingAffineTransform:&buf];
          v25 = [v21 shapeInfo];
          LOBYTE(v23) = [v25 isTreatedAsFillForFreehandDrawing];

          if ((v23 & 1) != 0 || (v26 = a4, a4 == 0.0) && (([v24 length], v27 < 10.0) || (objc_msgSend(v21, "stroke"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "width"), v30 = v29, v28, v30 < 2.0)))
          {
            v31 = [v21 stroke];
            [v31 width];
            v33 = v32;

            if (v33 < 2.0)
            {
              [v24 setLineWidth:v108];
            }

            [v24 bounds];
            v152 = CGRectInset(v142, v18, v18);
            v143.origin.x = x;
            v143.origin.y = y;
            v143.size.width = width;
            v143.size.height = height;
            v144 = CGRectUnion(v143, v152);
            x = v144.origin.x;
            y = v144.origin.y;
            width = v144.size.width;
            height = v144.size.height;
            [v24 length];
            if (v34 >= 10.0)
            {
              [v24 lineWidth];
              v35 = [NSNumber numberWithDouble:?];
              v36 = [v11 objectForKeyedSubscript:v35];

              if (v36)
              {
                [v36 appendBezierPath:v24];
              }

              else
              {
                [v24 lineWidth];
                v50 = [NSNumber numberWithDouble:?];
                [v11 setObject:v24 forKeyedSubscript:v50];
              }
            }

            else
            {
              [v110 addObject:v24];
            }
          }

          else
          {
            v37 = [v21 pencilKitStrokes];
            if (!v37)
            {
              v38 = +[CRLAssertionHandler _atomicIncrementAssertCount];
              if (qword_101AD5A10 != -1)
              {
                sub_1013433C0();
              }

              v39 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf.a) = 67110146;
                HIDWORD(buf.a) = v38;
                LOWORD(buf.b) = 2082;
                *(&buf.b + 2) = "+[CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:scaledOutset:viewScale:]";
                WORD1(buf.c) = 2082;
                *(&buf.c + 4) = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeTracingHelper.m";
                WORD2(buf.d) = 1024;
                *(&buf.d + 6) = 98;
                WORD1(buf.tx) = 2082;
                *(&buf.tx + 4) = "pkStrokesFromShapeLayout";
                _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", &buf, 0x2Cu);
              }

              if (qword_101AD5A10 != -1)
              {
                sub_1013433E8();
              }

              v40 = off_1019EDA68;
              if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
              {
                v51 = v40;
                v52 = +[CRLAssertionHandler packedBacktraceString];
                LODWORD(buf.a) = 67109378;
                HIDWORD(buf.a) = v38;
                LOWORD(buf.b) = 2114;
                *(&buf.b + 2) = v52;
                _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", &buf, 0x12u);
              }

              v41 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:scaledOutset:viewScale:]");
              v42 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeTracingHelper.m"];
              [CRLAssertionHandler handleFailureInFunction:v41 file:v42 lineNumber:98 isFatal:0 description:"invalid nil value for '%{public}s'", "pkStrokesFromShapeLayout"];
            }

            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v43 = v37;
            v44 = [v43 countByEnumeratingWithState:&v126 objects:v138 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v127;
              do
              {
                for (i = 0; i != v45; i = i + 1)
                {
                  if (*v127 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v48 = *(*(&v126 + 1) + 8 * i);
                  buf = v130;
                  v49 = [v48 _strokeByAppendingTransform:&buf];
                  [v10 addObject:v49];
                  [v49 renderBounds];
                  v153 = CGRectInset(v145, v18, v18);
                  v146.origin.x = x;
                  v146.origin.y = y;
                  v146.size.width = width;
                  v146.size.height = height;
                  v147 = CGRectUnion(v146, v153);
                  x = v147.origin.x;
                  y = v147.origin.y;
                  width = v147.size.width;
                  height = v147.size.height;
                }

                v45 = [v43 countByEnumeratingWithState:&v126 objects:v138 count:16];
              }

              while (v45);
            }

            v11 = v106;
            v17 = v107;
          }

          v20 = v20 + 1;
        }

        while (v20 != v17);
        v17 = [obj countByEnumeratingWithState:&v131 objects:v140 count:16];
      }

      while (v17);
    }

    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = width;
    v148.size.height = height;
    if (CGRectGetWidth(v148) == 0.0 || (v149.origin.x = x, v149.origin.y = y, v149.size.width = width, v149.size.height = height, CGRectGetHeight(v149) == 0.0))
    {
      v53 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101343410();
      }

      v54 = off_1019EDA68;
      v7 = v105;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101343438(v54, obj, v53);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101343520();
      }

      v55 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v55, v53);
      }

      v56 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingShapeTracingHelper unscaledOutlinePathFromFreehandDrawingShapeLayouts:scaledOutset:viewScale:]");
      v57 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingShapeTracingHelper.m"];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v56, v57, 111, 0, "Unable to trace freehand drawing shape layouts (count: %zu).", [obj count]);

      v150.origin.x = x;
      v150.origin.y = y;
      v150.size.width = width;
      v150.size.height = height;
      if (CGRectIsNull(v150))
      {
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
      }

      v58 = [CRLBezierPath bezierPathWithRect:x, y, width, height];
      v59 = v106;
    }

    else
    {
      v61 = sub_100121ED4(width, height, 4194304.0);
      v62 = sub_10012211C(v61);
      v64 = v63;
      v151.origin.x = x;
      v151.origin.y = y;
      v151.size.width = width;
      v151.size.height = height;
      v65 = CGRectGetWidth(v151);
      memset(&v130, 0, sizeof(v130));
      CGAffineTransformMakeScale(&v130, v62 / v65, v62 / v65);
      v125 = v130;
      CGAffineTransformTranslate(&buf, &v125, -x, -y);
      v130 = buf;
      v66 = sub_10050DF80(10, v62, v64);
      sub_10050F870(v66, 1);
      buf = v130;
      CGContextConcatCTM(v66, &buf);
      if ([v10 count])
      {
        [CRLPencilKitInkStroke drawStrokes:v10 inContext:v66 overTransparentCanvas:1];
      }

      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v109 = [v11 allValues];
      v67 = [v109 countByEnumeratingWithState:&v121 objects:v137 count:16];
      v115 = v66;
      if (v67)
      {
        v68 = v67;
        obja = *v122;
        do
        {
          for (j = 0; j != v68; j = j + 1)
          {
            if (*v122 != obja)
            {
              objc_enumerationMutation(v109);
            }

            v70 = *(*(&v121 + 1) + 8 * j);
            v71 = [CRLBrushStroke alloc];
            v72 = +[CRLColor blackColor];
            [v70 lineWidth];
            v74 = v73;
            v75 = +[CRLStrokePattern solidPattern];
            v76 = [(CRLBrushStroke *)v71 initWithName:@"Basic Rounded" color:v72 width:1 cap:1 join:v75 pattern:v74 miterLimit:0.0];

            v66 = v115;
            -[CRLBrushStroke paintPath:wantsInteriorStroke:inContext:useFastDrawing:parameterized:shouldReverseDrawOrder:](v76, "paintPath:wantsInteriorStroke:inContext:useFastDrawing:parameterized:shouldReverseDrawOrder:", [v70 CGPath], 0, v115, 0, 0, 0);
          }

          v68 = [v109 countByEnumeratingWithState:&v121 objects:v137 count:16];
        }

        while (v68);
      }

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      objb = v110;
      v77 = [objb countByEnumeratingWithState:&v117 objects:v136 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v118;
        do
        {
          for (k = 0; k != v78; k = k + 1)
          {
            if (*v118 != v79)
            {
              objc_enumerationMutation(objb);
            }

            v81 = *(*(&v117 + 1) + 8 * k);
            v82 = [CRLStroke alloc];
            v83 = +[CRLColor blackColor];
            [v81 lineWidth];
            v85 = v84;
            v86 = +[CRLStrokePattern solidPattern];
            v87 = [(CRLStroke *)v82 initWithColor:v83 width:1 cap:1 join:v86 pattern:v85];

            v88 = [v81 CGPath];
            v66 = v115;
            [(CRLStroke *)v87 paintPath:v88 inContext:v115];
          }

          v78 = [objb countByEnumeratingWithState:&v117 objects:v136 count:16];
        }

        while (v78);
      }

      Image = CGBitmapContextCreateImage(v66);
      CGContextRelease(v66);
      if (a4 > 0.0)
      {
        v90 = [CIImage imageWithCGImage:Image];
        if (v104 >= 1.0)
        {
          v92 = a4;
          v93 = v103;
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
          CGAffineTransformMakeScale(&buf, v104, v104);
          v125 = buf;
          v91 = [v90 imageByApplyingTransform:&v125 highQualityDownsample:0];

          v90 = v91;
          v92 = a4;
          v93 = a4;
        }

        v94 = +[CRLFreehandDrawingShapeTracingHelper diskNonEmptyKernel];
        v135[0] = v90;
        v95 = [NSNumber numberWithDouble:v93];
        v135[1] = v95;
        v135[2] = &off_1018E3040;
        v96 = [NSArray arrayWithObjects:v135 count:3];

        v116[0] = _NSConcreteStackBlock;
        v116[1] = 3221225472;
        v116[2] = sub_10028B824;
        v116[3] = &unk_10184F850;
        *&v116[4] = v92;
        v97 = objc_retainBlock(v116);
        [v90 extent];
        v98 = [v94 applyWithExtent:v97 roiCallback:v96 arguments:?];

        if (v104 < 1.0)
        {
          memset(&buf, 0, sizeof(buf));
          CGAffineTransformMakeScale(&buf, 1.0 / v104, 1.0 / v104);
          v125 = buf;
          v99 = [v98 imageByApplyingTransform:&v125 highQualityDownsample:0];

          v98 = v99;
        }

        v100 = [CIContext contextWithOptions:0];
        v101 = [v100 createCGImage:v98 fromRect:{0.0, 0.0, v62, v64}];
        CGImageRelease(Image);

        Image = v101;
      }

      v59 = v106;
      v102 = [CRLBezierPath tracedPathForImage:Image alphaThreshold:0.01 pointSpacing:3.0];
      CGImageRelease(Image);
      v125 = v130;
      CGAffineTransformInvert(&buf, &v125);
      [v102 transformUsingAffineTransform:&buf];
      v58 = [CRLBezierPath exteriorOfBezierPath:v102];

      v7 = v105;
    }
  }

  else
  {
    v58 = [CRLBezierPath bezierPathWithRect:0.0, 0.0, 1.0, 1.0];
  }

  return v58;
}

+ (id)diskNonEmptyKernel
{
  if (qword_101A34A00 != -1)
  {
    sub_101343548();
  }

  v3 = qword_101A349F8;

  return v3;
}

@end