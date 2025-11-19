@interface CRLSwatchCache
+ (BOOL)applyFakeStrokeIfNeededForShape:(id)a3 backgroundAppearance:(unint64_t)a4;
+ (CGImage)newImageForDarkBackground:(CGImage *)a3 atScale:(double)a4 ofSize:(CGSize)a5 inset:(CGSize)a6;
+ (CRLSwatchCache)swatchCache;
- (BOOL)p_shouldAddHighContrastBackgroundForShapeType:(int64_t)a3 withStrokeColor:(id)a4 context:(id)a5;
- (CGImage)p_newImageWithConnectionLineKnobsForShape:(id)a3 atScale:(double)a4 ofSize:(CGSize)a5 overImage:(CGImage *)a6;
- (CGSize)shapeSwatchInset;
- (CGSize)swatchInsetForShapeType:(int64_t)a3;
- (id)imageForImageWithSize:(CGSize)a3 imageScale:(double)a4 imageInfo:(id)a5 editingCoordinator:(id)a6 renderForWideGamut:(BOOL)a7;
- (id)imageForMovieWithSize:(CGSize)a3 imageScale:(double)a4 movieInfo:(id)a5 editingCoordinator:(id)a6 renderForWideGamut:(BOOL)a7;
- (id)imageForShapeWithSize:(CGSize)a3 imageScale:(double)a4 shapeType:(int64_t)a5 shapePathSource:(id)a6 angle:(double)a7 editingCoordinator:(id)a8 renderingContext:(id)a9;
- (id)imageForStyledItemWithSize:(CGSize)a3 imageScale:(double)a4 editingCoordinator:(id)a5 renderForWideGamut:(BOOL)a6 styledInfoAspectRatio:(CGSize)a7 usingSwatchInfoFromBlock:(id)a8;
- (id)p_darkBackgroundColorForBackgroundAppearance:(unint64_t)a3;
- (id)shapeItemWithPresetsForSize:(CGSize)a3 shapeType:(int64_t)a4 shapePathSource:(id)a5 angle:(double)a6 editingCoordinator:(id)a7 renderingContext:(id)a8;
@end

@implementation CRLSwatchCache

+ (CRLSwatchCache)swatchCache
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10033D788;
  block[3] = &unk_10183B690;
  block[4] = a1;
  if (qword_101A34CC8 != -1)
  {
    dispatch_once(&qword_101A34CC8, block);
  }

  v2 = qword_101A34CC0;

  return v2;
}

- (CGSize)shapeSwatchInset
{
  v2 = 8.0;
  v3 = 8.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (BOOL)applyFakeStrokeIfNeededForShape:(id)a3 backgroundAppearance:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 stroke];
  if (v6)
  {
    v7 = [v5 stroke];
    if ([v7 isNullStroke])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v9 = [v5 stroke];
      v8 = [v9 requiresOutlineOnBackgroundWithAppearance:a4] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v10 = [v5 fill];
  if (v10)
  {
    v11 = [v5 fill];
    v12 = [v11 requiresOutlineOnBackgroundWithAppearance:a4] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  if (((v8 | v12) & 1) == 0)
  {
    v13 = 0.0;
    if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v13 = 1.0;
    }

    v14 = [CRLColor colorWithWhite:v13 alpha:0.200000003];
    v15 = [CRLStroke strokeWithColor:v14 width:1.0];
    [v5 setStroke:v15];
  }

  return ((v8 | v12) & 1) == 0;
}

- (id)shapeItemWithPresetsForSize:(CGSize)a3 shapeType:(int64_t)a4 shapePathSource:(id)a5 angle:(double)a6 editingCoordinator:(id)a7 renderingContext:(id)a8
{
  height = a3.height;
  width = a3.width;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  [(CRLSwatchCache *)self shapeSwatchInset];
  v19 = v18;
  v21 = v20;
  [(CRLSwatchCache *)self swatchInsetForShapeType:a4];
  v23 = sub_10011F334(v19, v21, v22);
  v25 = v24;
  v26 = width - v23 * 2.0;
  v27 = height - v24 * 2.0;
  v28 = [v17 wantsRoundedCornersIfAppropriate];
  if (a4 == 3 && (v28 & 1) != 0)
  {
    v29 = [CRLScalarPathSource roundedRectangleWithScalar:1 naturalSize:5.0 continuousCurve:width - v23 * 2.0, v27];

    v15 = v29;
LABEL_4:
    [v15 naturalSize];
    [v15 scaleToNaturalSize:{sub_100121EF4(0, v30, v31, v26 + 0.0, v27 + 0.0)}];
    [v15 naturalSize];
    v23 = v23 + (v26 - v32) * 0.5;
    [v15 naturalSize];
    v25 = v25 + (v27 - v33) * 0.5;
    a4 = 21;
    v34 = v15;
    goto LABEL_15;
  }

  if (a4 <= 0x14)
  {
    if (((1 << a4) & 0x1D8006) != 0)
    {
      if (v26 >= v27)
      {
        v35 = v27;
      }

      else
      {
        v35 = width - v23 * 2.0;
      }

      v36 = __sincos_stret(a6 * 0.0174532925);
      v37 = fabs(v36.__sinval);
      v38 = fabs(v36.__cosval);
      if (v37 < v38)
      {
        v37 = v38;
      }

      v23 = width * 0.5 - v35 / v37 * 0.5;
      v25 = height * 0.5;
      goto LABEL_13;
    }

    if (a4 == 9)
    {
      v59 = -4.0;
LABEL_46:
      v23 = v23 + v59;
      goto LABEL_13;
    }
  }

  if ((a4 - 13) <= 1)
  {
    v59 = -2.0;
    goto LABEL_46;
  }

  if (a4 == 21)
  {
    goto LABEL_4;
  }

  if (a4 == 12)
  {
    v23 = v23 + 7.0;
  }

LABEL_13:
  v34 = [CRLPathSource pathSourceForShapeType:a4 naturalSize:?];

  if (a4 == 4)
  {
    v39 = objc_opt_class();
    v40 = sub_100014370(v39, v34);
    [v40 setIsCurveContinuous:1];

    a4 = 4;
  }

LABEL_15:
  v41 = [v16 boardItemFactory];
  v42 = [v41 makeShapeItemForShapeLibrarySwatchWithShapeType:a4 pathSource:v34 position:v23 angleInDegrees:{v25, a6}];

  v43 = (a4 - 1) < 0x14 && ((0xEC003u >> (a4 - 1)) & 1) != 0 || a4 == 19 || (a4 & 0xFFFFFFFFFFFFFFEFLL) == 2;
  v45 = [v17 backgroundAppearance] != 3 && objc_msgSend(v17, "backgroundAppearance") != 2;
  v46 = [v42 stroke];
  v47 = [v46 color];
  v48 = [(CRLSwatchCache *)self p_shouldAddHighContrastBackgroundForShapeType:a4 withStrokeColor:v47 context:v17];

  if (v43 && !v45)
  {
    if (v48)
    {
      +[CRLColor canvas_darkInsertSwatchBackgroundColor];
    }

    else
    {
      -[CRLSwatchCache p_darkBackgroundColorForBackgroundAppearance:](self, "p_darkBackgroundColorForBackgroundAppearance:", [v17 backgroundAppearance]);
    }
    v49 = ;
    v50 = [v42 stroke];
    [v50 width];
    if (v51 < 2.0)
    {
      v52 = [v42 stroke];
      v53 = [v52 color];
      [v53 contrastRatioWithColor:v49];
      v55 = v54;

      if (v55 >= 6.0)
      {
LABEL_36:

        goto LABEL_37;
      }

      v56 = [v42 stroke];
      v50 = [v56 mutableCopy];

      [v50 setWidth:2.0];
      v57 = [v50 copy];
      [v42 setStroke:v57];
    }

    goto LABEL_36;
  }

LABEL_37:
  if (!(v43 | v48 & 1 | (([v17 wantsToRenderHighContrastBackground] & 1) == 0)))
  {
    +[CRLSwatchCache applyFakeStrokeIfNeededForShape:backgroundAppearance:](CRLSwatchCache, "applyFakeStrokeIfNeededForShape:backgroundAppearance:", v42, [v17 backgroundAppearance]);
  }

  return v42;
}

- (id)imageForShapeWithSize:(CGSize)a3 imageScale:(double)a4 shapeType:(int64_t)a5 shapePathSource:(id)a6 angle:(double)a7 editingCoordinator:(id)a8 renderingContext:(id)a9
{
  height = a3.height;
  width = a3.width;
  v17 = a9;
  v18 = a8;
  v19 = [(CRLSwatchCache *)self shapeItemWithPresetsForSize:a5 shapeType:a6 shapePathSource:v18 angle:v17 editingCoordinator:width renderingContext:height, a7];
  v20 = [CRLCanvasImager alloc];
  v21 = [v18 mainBoard];

  v22 = -[CRLCanvasImager initWithBoard:renderForWideGamut:](v20, "initWithBoard:renderForWideGamut:", v21, [v17 rendersForWideGamut]);
  [(CRLCanvasImager *)v22 setScaledImageSize:sub_10011F340(width, height, a4)];
  sub_10011F340(width, height, 1.0);
  [(CRLCanvasImager *)v22 setUnscaledClipRect:sub_10011ECB4()];
  v34 = v19;
  v23 = [NSArray arrayWithObjects:&v34 count:1];
  [(CRLCanvasImager *)v22 setInfos:v23];

  v24 = [(CRLCanvasImager *)v22 newImage];
  if (a5 <= 0x13 && ((1 << a5) & 0xC0004) != 0)
  {
    v25 = objc_opt_class();
    v26 = sub_100014370(v25, v19);
    v27 = [(CRLSwatchCache *)self p_newImageWithConnectionLineKnobsForShape:v26 atScale:v24 ofSize:a4 overImage:width, height];

    CGImageRelease(v24);
    v24 = v27;
  }

  v28 = [v19 stroke];
  v29 = [v28 color];
  v30 = [(CRLSwatchCache *)self p_shouldAddHighContrastBackgroundForShapeType:a5 withStrokeColor:v29 context:v17];

  if (v30)
  {
    v31 = [CRLSwatchCache newImageForDarkBackground:v24 atScale:a4 ofSize:width inset:height, CGSizeZero.width, CGSizeZero.height];
    CGImageRelease(v24);
    v24 = v31;
  }

  v32 = [CRLImage imageWithCGImage:v24 scale:0 orientation:a4];
  CGImageRelease(v24);

  return v32;
}

- (BOOL)p_shouldAddHighContrastBackgroundForShapeType:(int64_t)a3 withStrokeColor:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v9 wantsToRenderHighContrastBackground] && ((a3 - 1) >= 0x14 || ((0xEC003u >> (a3 - 1)) & 1) == 0 ? (a3 != 19 ? (v11 = (a3 & 0xFFFFFFFFFFFFFFEFLL) == 2) : (v11 = 1), v11 ? (v10 = 0) : (v10 = 1)) : (v10 = 0), objc_msgSend(v9, "backgroundAppearance") != 3 ? (v12 = objc_msgSend(v9, "backgroundAppearance") != 2) : (v12 = 0), ((v10 | v12) & 1) == 0))
  {
    v14 = -[CRLSwatchCache p_darkBackgroundColorForBackgroundAppearance:](self, "p_darkBackgroundColorForBackgroundAppearance:", [v9 backgroundAppearance]);
    v15 = +[CRLColor canvas_darkInsertSwatchBackgroundColor];
    v13 = [v8 improvesContrastWhenDisplayedOverAlternateBackgroundColor:v15 ratherThanStandardBackgroundColor:v14 inScenario:1] ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (id)p_darkBackgroundColorForBackgroundAppearance:(unint64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = +[CRLColor canvas_darkTranslucentSwatchBackground];
  }

  else
  {
    v4 = +[UIColor crl_insertPaneBackgroundColor];
    v3 = [CRLColor colorWithUIColor:v4];
  }

  return v3;
}

- (id)imageForImageWithSize:(CGSize)a3 imageScale:(double)a4 imageInfo:(id)a5 editingCoordinator:(id)a6 renderForWideGamut:(BOOL)a7
{
  v83 = a7;
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v85 = height;
  v12 = height + -20.0;
  v13 = a6;
  v14 = [v10 geometry];
  [v14 size];
  v81 = v16;
  v82 = v15;

  v17 = [v10 geometryWithMask];
  [v17 size];
  v19 = v18;
  v21 = v20;

  v22 = [v10 maskInfo];
  if (!v22)
  {
    v22 = [v10 defaultMaskInfo];
  }

  v11 = width + -20.0;
  v23 = v11 + v11;
  v24 = v12 + v12;
  v25 = [v22 geometry];
  [v25 size];
  v28 = v26;
  v29 = v27;
  if (v21 <= v19)
  {

    v42 = v28 / v29;
    if (v28 / v29 <= width / v85)
    {
      v44 = v24 * v42;
      v41 = 20.0;
      v40 = (v23 - v44) * 0.5 + 20.0;
      v23 = v44;
    }

    else
    {
      v43 = v23 / v42;
      v40 = 20.0;
      v41 = (v24 - v43) * 0.5 + 20.0;
      v24 = v43;
    }
  }

  else
  {
    v30 = sub_100121E58(v11 + v11, v24, v26, v27);
    v32 = v31;
    [v25 center];
    v34 = v33;
    v36 = v35;
    v37 = [CRLScalarPathSource rectangleWithNaturalSize:v30, v32];
    v38 = [[CRLCanvasInfoGeometry alloc] initWithCenter:v34 size:v36, v30, v32];

    v39 = [[CRLMaskInfo alloc] initWithImageItem:v10 geometry:v38 pathSource:v37];
    v40 = 20.0;
    v41 = 20.0;
    v22 = v39;
  }

  v45 = [v22 geometry];
  [v45 size];
  v48 = v23 / v47;
  v49 = v47 <= 0.0;
  v50 = 1.0;
  if (v49)
  {
    v48 = 1.0;
  }

  if (v46 > 0.0)
  {
    v50 = v24 / v46;
  }

  if (v48 >= v50)
  {
    v51 = v48;
  }

  else
  {
    v51 = v50;
  }

  [v45 position];
  v54 = sub_10011F340(v52, v53, v51);
  v56 = v55;
  v57 = [CRLScalarPathSource rectangleWithNaturalSize:v23, v24];
  v79 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v54 size:v56, v23, v24];
  v80 = v57;
  v58 = [[CRLMaskInfo alloc] initWithImageItem:v10 geometry:v79 pathSource:v57];
  v59 = sub_10011F340(v82, v81, v51);
  v60 = v40 - v54;
  v61 = v41 - v56;
  v63 = sub_100122154(v59, v62);
  v65 = v64;
  v66 = sub_100122154(v60, v61);
  v68 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v66 size:v67, v63, v65];
  v69 = [v10 thumbnailAssetPayload];
  if (!v69)
  {
    v69 = [v10 imageAssetPayload];
  }

  v70 = [v13 boardItemFactory];
  v71 = [v70 makeImageItemWithGeometry:v68 imageData:v69 thumbnailData:0];

  [v71 setMaskInfo:v58];
  v72 = [CRLCanvasImager alloc];
  v73 = [v13 mainBoard];

  v74 = [(CRLCanvasImager *)v72 initWithBoard:v73 renderForWideGamut:v83];
  [(CRLCanvasImager *)v74 setScaledImageSize:sub_10011F340(width, v85, a4)];
  sub_10011F340(width, v85, 2.0);
  [(CRLCanvasImager *)v74 setUnscaledClipRect:sub_10011ECB4()];
  v86 = v71;
  v75 = [NSArray arrayWithObjects:&v86 count:1];
  [(CRLCanvasImager *)v74 setInfos:v75];

  v76 = [(CRLCanvasImager *)v74 newImage];
  v77 = [CRLImage imageWithCGImage:v76 scale:0 orientation:a4];
  CGImageRelease(v76);

  return v77;
}

+ (CGImage)newImageForDarkBackground:(CGImage *)a3 atScale:(double)a4 ofSize:(CGSize)a5 inset:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v9 = sub_10011F340(a5.width, a5.height, a4);
  v11 = sub_10050DF80(3, v9, v10);
  v19.origin.x = sub_10011ECB4();
  v20 = CGRectInset(v19, width, height);
  x = v20.origin.x;
  y = v20.origin.y;
  v14 = v20.size.width;
  v15 = v20.size.height;
  v16 = +[CRLColor canvas_darkInsertSwatchBackgroundColor];
  CGContextSetFillColorWithColor(v11, [v16 CGColor]);

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = v14;
  v21.size.height = v15;
  CGContextFillRect(v11, v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = v14;
  v22.size.height = v15;
  CGContextDrawImage(v11, v22, a3);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  return Image;
}

- (CGImage)p_newImageWithConnectionLineKnobsForShape:(id)a3 atScale:(double)a4 ofSize:(CGSize)a5 overImage:(CGImage *)a6
{
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = sub_10011F340(width, height, a4);
  v13 = v12;
  v14 = sub_10050DF80(3, v11, v12);
  v15 = +[CRLCanvasKnob defaultSelectionKnobImage];
  v16 = +[CRLCanvasKnob greenKnobImage];
  [v15 size];
  v18 = v17;
  v20 = v19;
  v77 = 0;
  v78 = &v77;
  v79 = 0x3010000000;
  v80 = &unk_1016A8115;
  v81 = CGPointZero;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3010000000;
  v75 = &unk_1016A8115;
  v76 = v81;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3010000000;
  v70 = &unk_1016A8115;
  v71 = v81;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_10033EB38;
  v66[3] = &unk_1018571E8;
  v66[4] = &v77;
  v66[5] = &v72;
  v66[6] = &v67;
  *&v66[7] = a4;
  *&v66[8] = v11;
  *&v66[9] = v13;
  [v10 withTemporaryLayoutPerform:v66];
  v21 = sub_10011ECB4();
  v64 = v22;
  v65 = v21;
  v62 = v24;
  v63 = v23;
  v25 = sub_10011F340(v18, v20, a4);
  v26 = sub_10011EC70(v73[4], v73[5], v25);
  v28 = v27;
  v59 = v30;
  v60 = v29;
  v31 = sub_10011EC70(v78[4], v78[5], v25);
  v33 = v32;
  v57 = v35;
  v58 = v34;
  v36 = sub_10011EC70(v68[4], v68[5], v25);
  v37 = a4;
  v39 = v38;
  v41 = v40;
  rect = v42;
  v43 = sub_100122154(v26, v28);
  v45 = v44;
  v46 = sub_100122154(v31, v33);
  v56 = v47;
  v48 = sub_100122154(v36, v39);
  v50 = v49;
  v82.origin.y = v64;
  v82.origin.x = v65;
  v82.size.height = v62;
  v82.size.width = v63;
  CGContextDrawImage(v14, v82, a6);
  v51 = [v15 CGImageForContentsScale:v37];
  v83.origin.x = v48;
  v83.origin.y = v50;
  v83.size.width = v41;
  v83.size.height = rect;
  CGContextDrawImage(v14, v83, v51);
  v52 = [v16 CGImageForContentsScale:v37];
  v84.origin.x = v43;
  v84.origin.y = v45;
  v84.size.height = v59;
  v84.size.width = v60;
  CGContextDrawImage(v14, v84, v52);
  v53 = [v15 CGImageForContentsScale:v37];
  v85.origin.x = v46;
  v85.origin.y = v56;
  v85.size.height = v57;
  v85.size.width = v58;
  CGContextDrawImage(v14, v85, v53);
  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v77, 8);

  return Image;
}

- (CGSize)swatchInsetForShapeType:(int64_t)a3
{
  if (a3 > 0x14 || (v3 = 3.0, ((1 << a3) & 0x1D8006) == 0))
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)imageForMovieWithSize:(CGSize)a3 imageScale:(double)a4 movieInfo:(id)a5 editingCoordinator:(id)a6 renderForWideGamut:(BOOL)a7
{
  v7 = a7;
  height = a3.height;
  width = a3.width;
  v13 = a5;
  v14 = a6;
  v15 = [v13 geometry];
  [v15 size];
  v17 = v16;
  v19 = v18;

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10033EEC8;
  v24[3] = &unk_101857210;
  v25 = v13;
  v26 = v14;
  v20 = v14;
  v21 = v13;
  v22 = [(CRLSwatchCache *)self imageForStyledItemWithSize:v20 imageScale:v7 editingCoordinator:v24 renderForWideGamut:width styledInfoAspectRatio:height usingSwatchInfoFromBlock:a4, v17, v19];

  return v22;
}

- (id)imageForStyledItemWithSize:(CGSize)a3 imageScale:(double)a4 editingCoordinator:(id)a5 renderForWideGamut:(BOOL)a6 styledInfoAspectRatio:(CGSize)a7 usingSwatchInfoFromBlock:(id)a8
{
  v9 = a6;
  height = a3.height;
  width = a3.width;
  v14 = a3.width + -20.0 + a3.width + -20.0;
  v15 = a3.height + -20.0 + a3.height + -20.0;
  v16 = a7.width / a7.height;
  if (a7.width / a7.height <= width / height)
  {
    v20 = v15 * v16;
    v19 = 20.0;
    v18 = (v14 - v20) * 0.5 + 20.0;
    v14 = v20;
  }

  else
  {
    v17 = v14 / v16;
    v18 = 20.0;
    v19 = (v15 - v17) * 0.5 + 20.0;
    v15 = v17;
  }

  v21 = sub_100122154(v14, v15);
  v23 = v22;
  v24 = sub_100122154(v18, v19);
  v26 = v25;
  v27 = a8;
  v28 = a5;
  v29 = [[CRLCanvasInfoGeometry alloc] initWithPosition:v24 size:v26, v21, v23];
  v30 = v27[2](v27, v29);

  v31 = [CRLCanvasImager alloc];
  v32 = [v28 mainBoard];

  v33 = [(CRLCanvasImager *)v31 initWithBoard:v32 renderForWideGamut:v9];
  [(CRLCanvasImager *)v33 setScaledImageSize:sub_10011F340(width, height, a4)];
  sub_10011F340(width, height, 2.0);
  [(CRLCanvasImager *)v33 setUnscaledClipRect:sub_10011ECB4()];
  if (v30)
  {
    v38 = v30;
    v34 = [NSArray arrayWithObjects:&v38 count:1];
    [(CRLCanvasImager *)v33 setInfos:v34];
  }

  v35 = [(CRLCanvasImager *)v33 newImage];
  v36 = [CRLImage imageWithCGImage:v35 scale:0 orientation:a4];
  CGImageRelease(v35);

  return v36;
}

@end