@interface AKFormFeatureDetector
+ (CGContext)_newBitmapFromCGPDFDocument:(CGPDFDocument *)document;
+ (CGContext)_newBitmapInRect:(CGRect)rect onPage:(id)page scale:(double)scale;
- ($F0CD3428A0DA0A278EE56C24FA6A9B79)_findVerticalEdgesAtPoint:(SEL)point extent:(CGPoint)extent onPage:(int64_t)page;
- (AKFormFeatureDetector)initWithDelegate:(id)delegate;
- (AKFormFeatureDetectorDelegate)delegate;
- (BOOL)_floatPixelBufferForCGContext:(CGContext *)context imageBuffer:(vImage_Buffer *)buffer;
- (CGRect)_findExtentForLineTop:(double)top lineBottom:(double)bottom x:(double)x onPage:(id)page;
- (CGRect)_translateFeature:(id)feature toPageOrigin:(CGPoint)origin;
- (float)_shiftScanAwayFromEdgeInPixels:(float *)pixels;
- (float)_thresholdPixelStripIn:(float *)in withImageLenth:(int64_t)lenth thresholdValue:(float)value startingPtr:(float *)ptr withThresholdLength:(int64_t)length;
- (id)_boxOnLine:(id)line atPoint:(CGPoint)point;
- (id)_checkboxAtPoint:(CGPoint)point onPage:(id)page pageBitmap:(CGContext *)bitmap;
- (id)_defaultFeatureForPoint:(CGPoint)point onPage:(id)page snapToVerticalEdges:(BOOL)edges;
- (id)_featureAtPoint:(CGPoint)point onPage:(id)page mode:(int64_t)mode;
- (id)_formFieldAtPoint:(CGPoint)point onPage:(id)page enforceMaxWidth:(BOOL)width pageBitmap:(CGContext *)bitmap;
- (id)_lineAtPoint:(CGPoint)point onPage:(id)page useVerticalCenter:(BOOL)center;
- (id)_snappedFormFieldForField:(id)field;
- (int64_t)_scanToEdgeOfFormFieldStartingAtPoint:(CGPoint)point withBitmapData:(float *)data width:(int64_t)width height:(int64_t)height bottomRowStartsAt:(float *)at bottomRowEndsAt:(float *)endsAt withLineThickness:(int64_t)thickness gapWidthForDottedLines:(int64_t)self0 separatorHeights:(id)self1 andRegionHeight:(int64_t *)self2 trackAverageSpacingWidth:(int64_t *)self3 trackFarthestPossibleEdge:(int64_t *)self4 trackNumberOfSegments:(int64_t *)self5 trackNumberOfGapsForDottedLine:(int64_t *)self6 goingLeft:(BOOL)self7;
- (unint64_t)_findLineEdgeTypeOnLeft:(BOOL)left startingAt:(float *)at withPageLeftEdge:(float *)edge withPageWidth:(int64_t)width andFormHeight:(unint64_t)height;
- (void)_drawThresholdedBitmapForTestForPageBitmap:(CGContext *)bitmap withPixels:(float *)pixels;
- (void)dealloc;
@end

@implementation AKFormFeatureDetector

- (AKFormFeatureDetector)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = AKFormFeatureDetector;
  v5 = [(AKFormFeatureDetector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)dealloc
{
  AKLog(@"%s");
  v3.receiver = self;
  v3.super_class = AKFormFeatureDetector;
  [(AKFormFeatureDetector *)&v3 dealloc];
}

- (id)_featureAtPoint:(CGPoint)point onPage:(id)page mode:(int64_t)mode
{
  y = point.y;
  x = point.x;
  pageCopy = page;
  [AKGeometryHelper rectWithSize:400.0 centeredAtPoint:400.0, x, y];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [objc_opt_class() _newBitmapInRect:pageCopy onPage:v10 scale:{v12, v14, v16, 1.0}];
  if (!v18)
  {
    v37.origin.x = v11;
    v37.origin.y = v13;
    v37.size.width = v15;
    v37.size.height = v17;
    v35 = j__NSStringFromCGRect(v37);
    AKLog(@"%@ unable to create bitmap of rect %@ from page controller: %@");

    v22 = 0;
    goto LABEL_30;
  }

  v19 = v18;
  if ((mode - 1) <= 1)
  {
    v20 = [(AKFormFeatureDetector *)self _checkboxAtPoint:pageCopy onPage:v18 pageBitmap:200.0, 200.0];
    if (!v20)
    {
      v21 = [(AKFormFeatureDetector *)self _formFieldAtPoint:pageCopy onPage:1 enforceMaxWidth:v19 pageBitmap:200.0, 200.0];
      if (v21)
      {
        v22 = v21;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = [(AKFormFeatureDetector *)self _snappedFormFieldForField:v22];

          v22 = v23;
        }

        goto LABEL_11;
      }

      if (mode == 2)
      {
        v32 = [(AKFormFeatureDetector *)self _defaultFeatureForPoint:pageCopy onPage:1 snapToVerticalEdges:x, y];
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ((mode - 3) > 1)
  {
    if (!mode)
    {
      v32 = [(AKFormFeatureDetector *)self _lineAtPoint:pageCopy onPage:1 useVerticalCenter:x, y];
LABEL_21:
      v22 = v32;
      goto LABEL_29;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_29;
  }

  v20 = [(AKFormFeatureDetector *)self _checkboxAtPoint:pageCopy onPage:v18 pageBitmap:x, y];
  if (!v20)
  {
    v24 = [(AKFormFeatureDetector *)self _lineAtPoint:pageCopy onPage:0 useVerticalCenter:x, y];
    v25 = v24;
    if (v24)
    {
      [v24 rect];
      if (v26 >= 18.0)
      {
        v33 = [(AKFormFeatureDetector *)self _boxOnLine:v25 atPoint:x, y];
        goto LABEL_27;
      }

      if (mode == 4)
      {
        selfCopy2 = self;
        v28 = x;
        v29 = y;
        v30 = pageCopy;
        v31 = 0;
LABEL_24:
        v33 = [(AKFormFeatureDetector *)selfCopy2 _defaultFeatureForPoint:v30 onPage:v31 snapToVerticalEdges:v28, v29];
LABEL_27:
        v22 = v33;
        goto LABEL_28;
      }
    }

    else if (mode == 4)
    {
      selfCopy2 = self;
      v28 = x;
      v29 = y;
      v30 = pageCopy;
      v31 = 1;
      goto LABEL_24;
    }

    v22 = 0;
LABEL_28:

    goto LABEL_29;
  }

LABEL_10:
  v22 = v20;
LABEL_11:
  [(AKFormFeatureDetector *)self _translateFeature:v22 toPageOrigin:v11, v13];
  [v22 setRect:?];
LABEL_29:
  CGContextRelease(v19);
LABEL_30:

  return v22;
}

- (CGRect)_translateFeature:(id)feature toPageOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  [feature rect];
  v9 = x + v8;
  v11 = y + v10;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (id)_formFieldAtPoint:(CGPoint)point onPage:(id)page enforceMaxWidth:(BOOL)width pageBitmap:(CGContext *)bitmap
{
  widthCopy = width;
  y = point.y;
  x = point.x;
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (([WeakRetained defaultFeatureSizeForPage:pageCopy], v14 = v13, objc_msgSend(pageCopy, "overlayView"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "bounds"), v17 = v16, v19 = v18, v21 = v20, v23 = v22, v15, (v24 = bitmap) != 0) || (v24 = objc_msgSend(objc_opt_class(), "_newBitmapInRect:onPage:scale:", pageCopy, v17, v19, v21, v23, 1.0)) != 0))
  {
    Width = CGBitmapContextGetWidth(v24);
    Height = CGBitmapContextGetHeight(v24);
    v27 = vcvtmd_s64_f64(x);
    v28 = 0;
    if (v27 >= 8 && (Width - 8) > v27)
    {
      v29 = floor(y);
      v30 = Height - v29;
      if ((v30 & 0x8000000000000000) == 0 && Height > v30)
      {
        v89 = v27 - 8;
        v100 = Height;
        v97 = v30;
        memset(v110, 0, 32);
        BitmapInfo = CGBitmapContextGetBitmapInfo(v24);
        if ((BitmapInfo & 0x100) != 0)
        {
          Data = CGBitmapContextGetData(v24);
          v32 = 1;
        }

        else
        {
          v32 = [(AKFormFeatureDetector *)self _floatPixelBufferForCGContext:v24 imageBuffer:v110];
          v34 = *&v110[0];
          if (!v32)
          {
            v34 = 0;
          }

          Data = v34;
        }

        v28 = 0;
        if (v32)
        {
          if (Data)
          {
            v88 = BitmapInfo;
            v86 = widthCopy;
            v35 = Data[Width * v97 + v27] + -0.01;
            v90 = 4 * Width * vcvtmd_s64_f64(v14);
            *&v33 = v35;
            v36 = [AKFormFeatureDetector _thresholdPixelStripIn:"_thresholdPixelStripIn:withImageLenth:thresholdValue:startingPtr:withThresholdLength:" withImageLenth:v33 thresholdValue:? startingPtr:? withThresholdLength:?];
            v98 = &Data[v100 * Width];
            if (&Data[Width * v97 + v89] < v98)
            {
              v38 = v36;
              v87 = WeakRetained;
              v84 = v24;
              bitmapCopy = bitmap;
              v39 = 0;
              v95 = 0;
              v40 = 0;
              v41 = v29;
              v101 = Width;
              v42 = 0.0;
              v93 = &Data[Width * v97 + v89];
              v43 = v93;
              while (1)
              {
                if (v43 + 17 > v38)
                {
                  *&v37 = v35;
                  v38 = [(AKFormFeatureDetector *)self _thresholdPixelStripIn:Data withImageLenth:v100 * Width thresholdValue:v38 startingPtr:v90 withThresholdLength:v37];
                }

                LODWORD(__C) = 0;
                vDSP_sve(v43, 1, &__C, 0x11uLL);
                if (v39)
                {
                  if (v40 >= 4)
                  {
                    if (v95)
                    {
LABEL_40:
                      v83 = v41;
                      v96 = v40;
                      v108 = 0x7FFFFFFFFFFFFFFFLL;
                      __C = 0;
                      v107 = 0x7FFFFFFFFFFFFFFFLL;
                      v105 = 0;
                      v106 = 0;
                      v104 = 0;
                      v99 = objc_alloc_init(MEMORY[0x277CBEB58]);
                      v46 = 0;
                      v94 = &Data[v97 * Width];
                      v103 = 0x7FFFFFFFFFFFFFFFLL;
                      v92 = &v94[4 * Width - 4];
                      v47 = 4;
                      do
                      {
                        v106 = 0x7FFFFFFFFFFFFFFFLL;
                        LOBYTE(v81) = 1;
                        v91 = [(AKFormFeatureDetector *)self _scanToEdgeOfFormFieldStartingAtPoint:Data withBitmapData:Width width:v100 height:v94 bottomRowStartsAt:v92 bottomRowEndsAt:v40 withLineThickness:x gapWidthForDottedLines:y separatorHeights:v47 andRegionHeight:v99 trackAverageSpacingWidth:&v106 trackFarthestPossibleEdge:&v103 trackNumberOfSegments:&v108 trackNumberOfGapsForDottedLine:&v105 goingLeft:&__C, v81];
                        LOBYTE(v82) = 0;
                        v48 = [(AKFormFeatureDetector *)self _scanToEdgeOfFormFieldStartingAtPoint:Data withBitmapData:Width width:v100 height:v94 bottomRowStartsAt:v92 bottomRowEndsAt:v40 withLineThickness:x gapWidthForDottedLines:y separatorHeights:v47 andRegionHeight:v99 trackAverageSpacingWidth:&v106 trackFarthestPossibleEdge:&v103 trackNumberOfSegments:&v107 trackNumberOfGapsForDottedLine:&v104 goingLeft:&__C, v82];
                        if (v46)
                        {
                          break;
                        }

                        v46 = 1;
                        v47 = 6;
                      }

                      while (__C > 2);

                      WeakRetained = v87;
                      v49 = 0;
                      if (v103 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v50 = Width;
                        v51 = v91;
                      }

                      else
                      {
                        v51 = v91;
                        v50 = Width;
                        if (v48 - v91 >= v103 - 2 && v48 - v91 <= v103 + 2)
                        {
                          if (v107 != 0x7FFFFFFFFFFFFFFFLL)
                          {
                            v48 = v107;
                          }

                          if (v108 != 0x7FFFFFFFFFFFFFFFLL)
                          {
                            v51 = v108;
                          }

                          v49 = 1;
                        }
                      }

                      if (v48 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v53 = v50;
                      }

                      else
                      {
                        v53 = v48;
                      }

                      if (v51 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v54 = v89;
                      }

                      else
                      {
                        v54 = v51;
                      }

                      v55 = v53 - v54;
                      if (v53 - v54 < 1)
                      {
                        goto LABEL_96;
                      }

                      v56 = v54;
                      v57 = v55;
                      v58 = v106;
                      v112.origin.x = v54;
                      v112.origin.y = v83;
                      v112.size.width = v55;
                      v112.size.height = v106;
                      if (y > CGRectGetMaxY(v112) + 3.0)
                      {
                        goto LABEL_96;
                      }

                      v113.origin.x = v54;
                      v113.origin.y = v83;
                      v113.size.width = v57;
                      v113.size.height = v58;
                      if (y < CGRectGetMinY(v113) + -3.0)
                      {
                        goto LABEL_96;
                      }

                      if (v14 <= v58)
                      {
                        v59 = v14;
                      }

                      else
                      {
                        v59 = v58;
                      }

                      v60 = floor(v59);
                      if (v60 * 2.5 >= v58)
                      {
                        goto LABEL_73;
                      }

                      v114.origin.x = v54;
                      v114.origin.y = v83;
                      v114.size.width = v57;
                      v114.size.height = v58;
                      v61 = CGRectGetMaxY(v114) - v60 + -3.0;
                      v115.origin.x = v54;
                      v115.origin.y = v83;
                      v115.size.width = v57;
                      v115.size.height = v58;
                      v62 = v60 + CGRectGetMinY(v115) + 3.0;
                      if (y < v61 && y > v62)
                      {
                        goto LABEL_96;
                      }

                      if (y < v61)
                      {
LABEL_73:
                        v66 = 0;
                        v64 = 1;
                        v65 = v83;
                        goto LABEL_74;
                      }

                      v116.origin.x = v54;
                      v116.origin.y = v83;
                      v116.size.width = v57;
                      v116.size.height = v58;
                      v64 = 0;
                      v65 = CGRectGetMaxY(v116) - v60;
                      v97 = v100 - v65;
                      v66 = 2;
LABEL_74:
                      v106 = v60;
                      v117.origin.x = v54;
                      v117.origin.y = v65;
                      v117.size.width = v57;
                      v117.size.height = v60;
                      if (y > CGRectGetMaxY(v117) + 3.0)
                      {
                        goto LABEL_96;
                      }

                      v118.origin.x = v54;
                      v118.origin.y = v65;
                      v118.size.width = v57;
                      v118.size.height = v60;
                      if (y < CGRectGetMinY(v118) + -3.0)
                      {
                        goto LABEL_96;
                      }

                      v67 = &Data[v97 * v101];
                      v68 = [(AKFormFeatureDetector *)self _findLineEdgeTypeOnLeft:1 startingAt:&v67[4 * v54] withPageLeftEdge:v67 withPageWidth:v101 andFormHeight:v106];
                      v69 = [(AKFormFeatureDetector *)self _findLineEdgeTypeOnLeft:0 startingAt:&v67[4 * v53] withPageLeftEdge:v67 withPageWidth:v101 andFormHeight:v106];
                      v70 = v68 == 2 && v69 == 2;
                      v71 = v70 ? 1 : v64;
                      if (v71 != 1)
                      {
                        goto LABEL_96;
                      }

                      v72 = v69 == 1 || v68 == 1;
                      v73 = 18;
                      if (v72)
                      {
                        v73 = 42;
                      }

                      if (v68 == 3)
                      {
                        v73 -= 2;
                      }

                      if (v69 == 3)
                      {
                        v73 -= 2;
                      }

                      v74 = v57 < v73 ? 1 : v49;
                      if (v74)
                      {
LABEL_96:
                        v28 = 0;
                        v24 = v84;
                        bitmap = bitmapCopy;
                        goto LABEL_97;
                      }

                      v76 = [AKFormFeatureLine featureWithRect:pageCopy onPage:v56, v65 - v96, v57];
                      if (v86 && (objc_opt_respondsToSelector() & 1) != 0 && ([v87 maximumFeatureWidthForPage:pageCopy], v77 < v57))
                      {
                        [v87 defaultFeatureSizeForPage:pageCopy];
                        v79 = v78;
                        v80 = x + v78 * -0.0;
                        v66 |= 1uLL;
                      }

                      else
                      {
                        v80 = v56;
                        v79 = v57;
                      }

                      v28 = [AKFormFeatureBox boxWithRect:pageCopy onPage:v66 flags:v76 baseline:v80, v65, v79, v60];
                      [v28 setEnclosingRegionRect:{v56, v83, v57, v58}];
                    }

                    else
                    {
LABEL_45:
                      v28 = 0;
                    }

                    v24 = v84;
                    bitmap = bitmapCopy;
                    v52 = v88;
                    WeakRetained = v87;
                    goto LABEL_98;
                  }

                  if (*&__C >= 16.0)
                  {
                    goto LABEL_40;
                  }

                  if (v42 != *&__C)
                  {
                    goto LABEL_45;
                  }

                  v95 = *&__C == 0.0;
                  ++v40;
                  v39 = 1;
                  v42 = *&__C;
                }

                else
                {
                  LODWORD(v37) = __C;
                  if (*&__C <= 12.0)
                  {
                    if (v43 == v93)
                    {
                      v45 = [(AKFormFeatureDetector *)self _shiftScanAwayFromEdgeInPixels:v43, v37];
                      if (v45)
                      {
                        v39 = 0;
                        v43 = &v45[-Width];
                        v27 += (v45 - v93) >> 2;
                        goto LABEL_35;
                      }

                      LODWORD(v37) = __C;
                    }

                    v95 = *&v37 == 0.0;
                    v39 = 1;
                    v42 = *&v37;
                    v40 = 1;
                  }

                  else
                  {
                    if (*&__C > 17.0 || *&__C <= 12.0)
                    {
                      goto LABEL_45;
                    }

                    v39 = 0;
                    --v41;
                    ++v97;
                  }
                }

LABEL_35:
                v43 += Width;
                if (v43 >= v98)
                {
                  goto LABEL_45;
                }
              }
            }

            v28 = 0;
LABEL_97:
            v52 = v88;
LABEL_98:
            if ((v52 & 0x100) == 0)
            {
              free(*&v110[0]);
            }
          }
        }
      }
    }

    if (!bitmap)
    {
      CGContextRelease(v24);
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (unint64_t)_findLineEdgeTypeOnLeft:(BOOL)left startingAt:(float *)at withPageLeftEdge:(float *)edge withPageWidth:(int64_t)width andFormHeight:(unint64_t)height
{
  leftCopy = left;
  __C = 0.0;
  v12 = -width;
  vDSP_sve(at, -width, &__C, height);
  v13 = __C;
  if (__C == 0.0)
  {
    return 2;
  }

  __I = v12;
  heightCopy = height;
  v16 = 2 * height;
  v17 = vcvts_n_f32_u64(height, 1uLL);
  v18 = at - 1;
  v19 = at + 1;
  widthCopy = width;
  v21 = -1;
  v22 = 1;
  v23 = __C;
  v24 = &edge[widthCopy];
  do
  {
    v25 = v16;
    v26 = v18 > edge && leftCopy;
    if (v26 || v24 > v19)
    {
      if (leftCopy)
      {
        v27 = v21;
      }

      else
      {
        v27 = v22;
      }

      vDSP_sve(&at[v27], __I, &__C, height);
      v29 = __C != heightCopy && __C != 0.0;
      if (!v29 && (v25 - v23) < v17)
      {
        return 1;
      }

      v23 = v23 + __C;
      if (__C == heightCopy)
      {
        break;
      }
    }

    --v21;
    v16 += height;
    --v18;
    ++v19;
    ++v22;
  }

  while (v21 != -4);
  if ((v25 - v23) >= v17 && (v25 - v23) < heightCopy)
  {
    return 3;
  }

  else
  {
    return v13 < (height - 1);
  }
}

- (int64_t)_scanToEdgeOfFormFieldStartingAtPoint:(CGPoint)point withBitmapData:(float *)data width:(int64_t)width height:(int64_t)height bottomRowStartsAt:(float *)at bottomRowEndsAt:(float *)endsAt withLineThickness:(int64_t)thickness gapWidthForDottedLines:(int64_t)self0 separatorHeights:(id)self1 andRegionHeight:(int64_t *)self2 trackAverageSpacingWidth:(int64_t *)self3 trackFarthestPossibleEdge:(int64_t *)self4 trackNumberOfSegments:(int64_t *)self5 trackNumberOfGapsForDottedLine:(int64_t *)self6 goingLeft:(BOOL)self7
{
  x = point.x;
  segmentsCopy = segments;
  heightsCopy = heights;
  leftCopy7 = left;
  v24 = vcvtmd_s64_f64(x);
  v25 = *spacingWidth;
  v26 = *edge;
  v78 = *line;
  v79 = heightsCopy;
  v27 = *regionHeight;
  v28 = &at[v24];
  v29 = v24 >= 0;
  endsAtCopy = endsAt;
  if (!left)
  {
    v29 = v28 <= endsAt;
  }

  if (!v29)
  {
    v90 = 0;
    v53 = 0;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_62;
  }

  atCopy = at;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v90 = 0;
  if (left)
  {
    v36 = -4;
  }

  else
  {
    v36 = 4;
  }

  v37 = -1;
  if (!left)
  {
    v37 = 1;
  }

  v87 = v37;
  v88 = v36;
  v38 = 4 * width;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v41 = -4 * width;
  v42 = &atCopy[v24 - width];
  widthCopy = width;
  v82 = atCopy;
  widthCopy2 = width;
  v80 = 4 * width;
  while (v28 < data || v27 <= 0)
  {
    v50 = 0;
LABEL_29:
    if (leftCopy7)
    {
      v51 = v34;
    }

    else
    {
      v51 = -v34;
    }

    v52 = v24 + v51;
    if ((v31 & 1) == 0)
    {
      v40 = v52;
    }

    v53 = v33 + 1;
    if (v33 > 2)
    {
      goto LABEL_62;
    }

    if (v33 <= 0)
    {
      if ((v31 & ((v32 - 21) < 0xFFFFFFFFFFFFFFEFLL)) != 0 || v25 != 0x7FFFFFFFFFFFFFFFLL && v32 < v25 - 2 && v32 > v25 + 2)
      {
        goto LABEL_62;
      }

      if ((v31 & (v25 == 0x7FFFFFFFFFFFFFFFLL)) == 1)
      {
        if (leftCopy7)
        {
          v25 = v26 - v24;
        }

        else
        {
          v25 = v24 - v26;
        }
      }
    }

    v90 += v31 & (v33 == 0);
    if (v39 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v84 = v34;
      v86 = v40;
      v57 = v39;
      v58 = v25;
      v59 = v24;
      v60 = v33 + 1;
      v61 = [MEMORY[0x277CCABB0] numberWithInteger:v57];
      [v79 addObject:v61];

      v53 = v60;
      v38 = v80;
      widthCopy2 = widthCopy;
      v24 = v59;
      v25 = v58;
      atCopy = v82;
      v34 = v84;
      v40 = v86;
      leftCopy7 = left;
    }

    lines = 0;
    v32 = 0;
    v31 = 1;
    v39 = v50;
    v26 = v24;
LABEL_57:
    v28 = (v28 + v88);
    v24 += v87;
    v62 = v28 <= endsAtCopy;
    if (leftCopy7)
    {
      v62 = v28 >= atCopy;
    }

    v42 += v88;
    v33 = v53;
    if (!v62)
    {
      goto LABEL_62;
    }
  }

  v46 = 0;
  v47 = 1;
  v48 = v28;
  do
  {
    if ((v47 & 1) == 0 && *v48 <= 0.0)
    {
      break;
    }

    v48 = (v48 + v41);
    ++v46;
    if (v48 < data)
    {
      break;
    }

    v47 = 0;
  }

  while (v46 < v27);
  if (v46 <= 8)
  {
    v49 = 0;
    v50 = 0;
    do
    {
      if (*(v28 + v49) > 0.0)
      {
        break;
      }

      ++v50;
      if (v42 + v49 < data)
      {
        break;
      }

      v49 -= v38;
    }

    while (v50 < v27);
    goto LABEL_29;
  }

  v75 = v32;
  v54 = v34;
  v77 = v26;
  v83 = v24;
  v85 = v25;
  if (v27 >= v46)
  {
    v27 = v46;
  }

  __C[0] = 0.0;
  vDSP_sve(v28, widthCopy2, __C, thickness);
  *&v55 = __C[0];
  if (__C[0] < thickness)
  {
    v56 = v78;
    if (v54 > 0)
    {
      v56 = v78 + 1;
    }

    v78 = v56;
    leftCopy7 = left;
    v24 = v83;
    v25 = v85;
    if ((v31 & (v75 > 19)) == 1)
    {
      v26 = v77;
      if (!left)
      {
        v65 = [MEMORY[0x277CCABB0] numberWithInteger:{v39, v55}];
        v66 = [v79 containsObject:v65];

        v25 = v85;
        leftCopy7 = left;
        if (v66)
        {
          v67 = v85;
        }

        else
        {
          v67 = 0;
        }

        v26 = v67 + v77;
      }

      goto LABEL_88;
    }

    v34 = 0;
    v32 = v75 + 1;
    goto LABEL_52;
  }

  v34 = v54 + 1;
  leftCopy7 = left;
  v24 = v83;
  v25 = v85;
  if (v54 + 1 < lines)
  {
    v32 = 0;
LABEL_52:
    v26 = v77;
    v53 = 0;
    widthCopy2 = widthCopy;
    atCopy = v82;
    v38 = v80;
    goto LABEL_57;
  }

  if (left)
  {
    linesCopy = lines;
  }

  else
  {
    linesCopy = -lines;
  }

  v69 = linesCopy + v83;
  if ((v31 & 1) == 0)
  {
    v40 = v69;
  }

  v70 = [MEMORY[0x277CCABB0] numberWithInteger:{v39, v55, segments}];
  v71 = [v79 containsObject:v70];

  if (v71 && v75 >= 5)
  {
    leftCopy7 = left;
    v25 = v85;
    if (left)
    {
      v72 = -v85;
    }

    else
    {
      v72 = v85;
    }

    v26 = v77 + v72;
  }

  else
  {
    v73 = v83;
    v25 = v85;
    if ((v31 & ((v75 - 5) < 0xF)) == 0)
    {
      v73 = v77;
    }

    if (v85 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = v73;
    }

    else
    {
      v26 = v77;
    }

    leftCopy7 = left;
  }

LABEL_88:
  v53 = 0;
LABEL_62:
  *segmentsCopy = v90;
  if (leftCopy7)
  {
    v63 = v53;
  }

  else
  {
    v63 = -v53;
  }

  *edge = v63 + v26;
  *spacingWidth = v25;
  *line = v78;
  *regionHeight = v27;

  return v40;
}

- (float)_thresholdPixelStripIn:(float *)in withImageLenth:(int64_t)lenth thresholdValue:(float)value startingPtr:(float *)ptr withThresholdLength:(int64_t)length
{
  __B = value;
  __C = 1.0;
  v7 = &in[lenth];
  if (v7 <= ptr)
  {
    return 0;
  }

  if (ptr >= in)
  {
    inCopy = ptr;
  }

  else
  {
    inCopy = in;
  }

  v9 = v7 - inCopy;
  if (v9 >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = v9;
  }

  v11 = &inCopy[lengthCopy];
  vDSP_vthrsc(inCopy, 1, &__B, &__C, inCopy, 1, lengthCopy);
  vDSP_vthres(inCopy, 1, &__C, inCopy, 1, lengthCopy);
  return v11;
}

- (void)_drawThresholdedBitmapForTestForPageBitmap:(CGContext *)bitmap withPixels:(float *)pixels
{
  Width = CGBitmapContextGetWidth(bitmap);
  Height = CGBitmapContextGetHeight(bitmap);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(bitmap);
  BytesPerRow = CGBitmapContextGetBytesPerRow(bitmap);
  ColorSpace = CGBitmapContextGetColorSpace(bitmap);
  BitmapInfo = CGBitmapContextGetBitmapInfo(bitmap);
  v12 = CGBitmapContextCreate(pixels, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  Image = CGBitmapContextCreateImage(v12);
  stringByExpandingTildeInPath = [@"~/Desktop/testImage.pdf" stringByExpandingTildeInPath];
  [stringByExpandingTildeInPath cStringUsingEncoding:4];
  CGImageWriteToFile();

  CGImageRelease(Image);

  CGContextRelease(v12);
}

- (float)_shiftScanAwayFromEdgeInPixels:(float *)pixels
{
  __C = 0.0;
  vDSP_sve(pixels, 1, &__C, 8uLL);
  v6 = 0.0;
  v4 = pixels + 8;
  vDSP_sve(pixels + 8, 1, &v6, 8uLL);
  if (v6 < 6.0)
  {
    return pixels - 9;
  }

  if (__C >= 6.0)
  {
    return 0;
  }

  return v4;
}

- (id)_snappedFormFieldForField:(id)field
{
  fieldCopy = field;
  v4 = fieldCopy;
  if (fieldCopy)
  {
    [fieldCopy rect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    baseline = [v4 baseline];

    if (!baseline)
    {
LABEL_5:
      v27 = v4;
      goto LABEL_10;
    }

    baseline2 = [v4 baseline];
    [baseline2 rect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    rect = v6;
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v23 = v8;
    v24 = v12;
    MinX = CGRectGetMinX(v35);
    v36.origin.x = v16;
    v36.origin.y = v18;
    v36.size.width = v20;
    v36.size.height = v22;
    if (MinX <= CGRectGetMinX(v36) + 20.0)
    {
      v28 = 4;
    }

    else
    {
      v37.origin.x = rect;
      v37.origin.y = v23;
      v37.size.width = v10;
      v37.size.height = v24;
      MaxX = CGRectGetMaxX(v37);
      v38.origin.x = v16;
      v38.origin.y = v18;
      v38.size.width = v20;
      v38.size.height = v22;
      if (MaxX < CGRectGetMaxX(v38) + -20.0)
      {
        goto LABEL_5;
      }

      v39.origin.x = v16;
      v39.origin.y = v18;
      v39.size.width = v20;
      v39.size.height = v22;
      v16 = CGRectGetMaxX(v39) - v10;
      v28 = 8;
    }

    page = [v4 page];
    flags = [v4 flags];
    baseline3 = [v4 baseline];
    v27 = [AKFormFeatureBox boxWithRect:page onPage:flags | v28 flags:baseline3 baseline:v16, v23, v10, v24];

    [v4 enclosingRegionRect];
    [v27 setEnclosingRegionRect:?];
  }

  else
  {
    v27 = 0;
  }

LABEL_10:

  return v27;
}

- (BOOL)_floatPixelBufferForCGContext:(CGContext *)context imageBuffer:(vImage_Buffer *)buffer
{
  Image = CGBitmapContextCreateImage(context);
  ColorSpace = CGBitmapContextGetColorSpace(context);
  BitmapInfo = CGBitmapContextGetBitmapInfo(context);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(context);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(context);
  Width = CGBitmapContextGetWidth(context);
  v12 = CGBitmapContextGetWidth(context);
  v26 = 0;
  v21[0] = BitsPerComponent;
  v21[1] = BitsPerPixel;
  v22 = ColorSpace;
  v23 = BitmapInfo;
  v24 = 0;
  v25 = 0;
  v13 = malloc_type_calloc(v12, 4 * Width, 0xB81B33D1uLL);
  memset(&src, 0, sizeof(src));
  v14 = MEMORY[0x245CAF380](&src, v21, 0, Image, 256);
  if (v14)
  {
    NSLog(&cfstr_InBufferCreati.isa, v14);
    free(v13);
    v15 = 0;
  }

  else
  {
    dest.data = v13;
    dest.height = src.height;
    dest.width = src.width;
    dest.rowBytes = 4 * src.width;
    v16 = vImageConvert_Planar8toPlanarF(&src, &dest, 1.0, 0.0, 0x100u);
    v15 = v16 == 0;
    if (v16)
    {
      NSLog(&cfstr_OutBufferConve.isa, v16);
    }

    else
    {
      v17 = *&dest.width;
      *&buffer->data = *&dest.data;
      *&buffer->width = v17;
    }
  }

  CGImageRelease(Image);
  return v15;
}

- (id)_checkboxAtPoint:(CGPoint)point onPage:(id)page pageBitmap:(CGContext *)bitmap
{
  y = point.y;
  x = point.x;
  v66 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  overlayView = [pageCopy overlayView];
  [overlayView bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  bitmapCopy = bitmap;
  if (!bitmap)
  {
    bitmapCopy = [objc_opt_class() _newBitmapInRect:pageCopy onPage:v12 scale:{v14, v16, v18, 1.0}];
    if (!bitmapCopy)
    {
      v23 = 0;
      goto LABEL_17;
    }
  }

  Width = CGBitmapContextGetWidth(bitmapCopy);
  Height = CGBitmapContextGetHeight(bitmapCopy);
  v22 = vcvtmd_s64_f64(x);
  if (v22 < 20)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    if ((Width - 20) > v22)
    {
      v24 = Height;
      v25 = floor(y);
      v26 = (Height - v25);
      if (v26 >= 20 && Height - 20 > v26)
      {
        *v52 = 0u;
        v53 = 0u;
        BitmapInfo = CGBitmapContextGetBitmapInfo(bitmapCopy);
        if ((BitmapInfo & 0x100) != 0)
        {
          Data = CGBitmapContextGetData(bitmapCopy);
          v29 = 1;
        }

        else
        {
          v29 = [(AKFormFeatureDetector *)self _floatPixelBufferForCGContext:bitmapCopy imageBuffer:v52];
          Data = v29 ? v52[0] : 0;
        }

        v23 = 0;
        if (v29)
        {
          if (Data)
          {
            v49 = BitmapInfo;
            v32 = Data[Width * v26 + v22] + -0.01;
            *&v32 = v32;
            v33 = &Data[Width * v26];
            v48 = Data;
            [(AKFormFeatureDetector *)self _thresholdPixelStripIn:Data withImageLenth:v24 * Width thresholdValue:&v33[-40 * Width] startingPtr:80 * Width withThresholdLength:v32];
            v34 = &v33[v22];
            vDSP_minvi(v34, -1, &__C, &__I, 0x15uLL);
            vDSP_minvi(v34, 1, &v63, &v59, 0x15uLL);
            vDSP_minvi(v34, -Width, &v64, &v60, 0x15uLL);
            vDSP_minvi(v34, Width, &v65, &v61, 0x15uLL);
            v51 = 0.0;
            vDSP_sve(&__C, 1, &v51, 4uLL);
            if (v51 != 0.0)
            {
              goto LABEL_31;
            }

            v23 = 0;
            v35 = ~__I;
            v36 = ~v60 / Width;
            __I = v35;
            v37 = v61 / Width;
            v60 = v36;
            v61 /= Width;
            v38 = v59 + v35;
            v39 = v49;
            if (v59 + v35 - 2 > 0x12 || (v40 = v37 + v36, v37 + v36 - 2 > 0x12) || (v40 - v38) > 2)
            {
LABEL_33:
              if ((v39 & 0x100) == 0)
              {
                free(v52[0]);
              }

              goto LABEL_14;
            }

            v41 = 0;
            v42 = v26 - v36;
            v47 = v22 - v35;
            v43 = &v48[v42 * Width + v22 - v35];
            v44 = 0.0;
            do
            {
              __A = 0.0;
              vDSP_sve(v43, 1, &__A, v38);
              v44 = v44 + __A;
              ++v41;
              v43 += Width;
            }

            while (v41 < v40);
            if (v38 * v40 == v44 && (v45 = &v48[(v42 - 1) * Width + v47], v46 = v45 - 1, v50 = 0.0, vDSP_sve(v45, 1, &__A, v38), vDSP_sve(&v46[Width + 1 + Width * v40], 1, &v55, v38), vDSP_sve(v46, Width, &v56, v40 + 2), vDSP_sve(&v46[v38 + 1], Width, &v57, v40 + 2), vDSP_sve(&__A, 1, &v50, 4uLL), v50 <= 0.0))
            {
              v23 = [AKFormFeatureCheckbox checkboxWithRect:pageCopy onPage:(v22 - __I), v25 - v61, v38, v40];
            }

            else
            {
LABEL_31:
              v23 = 0;
            }

            v39 = v49;
            goto LABEL_33;
          }
        }
      }
    }
  }

LABEL_14:
  if (!bitmap)
  {
    CGContextRelease(bitmapCopy);
  }

LABEL_17:

  return v23;
}

- ($F0CD3428A0DA0A278EE56C24FA6A9B79)_findVerticalEdgesAtPoint:(SEL)point extent:(CGPoint)extent onPage:(int64_t)page
{
  y = extent.y;
  x = extent.x;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v10 = page * 0.0 + 20.0;
  pageCopy = page;
  v12 = a6;
  v13 = round(x);
  v14 = [objc_opt_class() _newBitmapInRect:v12 onPage:v13 - v10 scale:{round(y), (pageCopy + v10 - 1), 1.0, 1.0}];

  if (v14)
  {
    *v23 = 0u;
    v24 = 0u;
    BitmapInfo = CGBitmapContextGetBitmapInfo(v14);
    if ((BitmapInfo & 0x100) != 0)
    {
      Data = CGBitmapContextGetData(v14);
    }

    else
    {
      v17 = [(AKFormFeatureDetector *)self _floatPixelBufferForCGContext:v14 imageBuffer:v23];
      if (v17)
      {
        Data = v23[0];
      }

      else
      {
        Data = 0;
      }

      if (!v17)
      {
LABEL_16:
        CGContextRelease(v14);
        return result;
      }
    }

    if (Data)
    {
      __I = 0;
      __C = 0;
      v20 = 0;
      v19 = &Data[4 * v10 - 4];
      vDSP_minvi(v19, -1, &__C + 1, &__I, v10);
      __I = -__I;
      vDSP_minvi(v19, 1, &__C, &v20, pageCopy);
      if (*(&__C + 1) < 0.25)
      {
        retstr->var0 = 1;
        retstr->var1 = v13 - __I;
      }

      if (*&__C < 0.25)
      {
        retstr->var2 = 1;
        retstr->var3 = v13 + v20;
      }

      if ((BitmapInfo & 0x100) == 0)
      {
        free(v23[0]);
      }
    }

    goto LABEL_16;
  }

  return result;
}

- (id)_lineAtPoint:(CGPoint)point onPage:(id)page useVerticalCenter:(BOOL)center
{
  centerCopy = center;
  y = point.y;
  x = point.x;
  v30 = *MEMORY[0x277D85DE8];
  pageCopy = page;
  if (centerCopy)
  {
    v10 = 8.0;
  }

  else
  {
    v10 = 16.0;
  }

  v11 = round(x);
  v12 = round(y);
  v13 = [objc_opt_class() _newBitmapInRect:pageCopy onPage:v11 + -8.0 scale:{v12 - v10, 16.0, 16.0, 4.0}];
  if (v13)
  {
    v14 = v13;
    Data = CGBitmapContextGetData(v13);
    v16 = 0;
    do
    {
      vDSP_sve(Data, 1, &__A[v16], 0x40uLL);
      Data += 64;
      ++v16;
    }

    while ((v16 * 4) != 256);
    v26 = 1065353216;
    __B = 16.0;
    v17 = 1;
    vDSP_vthrsc(__A, 1, &__B, &v26, __D, 1, 0x40uLL);
    v19 = 0;
    v20 = __D[0];
    do
    {
      v21 = __D[v17];
      if (v21 < v20 && v19 == 0)
      {
        v19 = 1;
        v18 = v17;
      }

      else if (v21 > v20 && v19 == 1)
      {
        [(AKFormFeatureDetector *)self _findExtentForLineTop:pageCopy lineBottom:v12 + 16.0 - v10 - vcvtd_n_f64_s32(v18 x:2uLL) onPage:v12 + 16.0 - v10 - vcvtd_n_f64_u32(v17, 2uLL), v11];
        v24 = [AKFormFeatureLine featureWithRect:pageCopy onPage:?];
        goto LABEL_22;
      }

      ++v17;
      v20 = v21;
    }

    while (v17 != 64);
    v24 = 0;
LABEL_22:
    CGContextRelease(v14);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_defaultFeatureForPoint:(CGPoint)point onPage:(id)page snapToVerticalEdges:(BOOL)edges
{
  y = point.y;
  x = point.x;
  pageCopy = page;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained wantsDefaultFeatures] && (objc_opt_respondsToSelector())
  {
    [WeakRetained defaultFeatureSizeForPage:pageCopy];
    v12 = v11;
    v14 = v13;
    if (edges)
    {
      [(AKFormFeatureDetector *)self _findVerticalEdgesAtPoint:v11 extent:pageCopy onPage:x, y];
      v15 = v22;
      v16 = v24 - v12;
      if (v23)
      {
        v17 = 11;
      }

      else
      {
        v16 = x + v12 * -0.0;
        v17 = 3;
      }

      if (v21)
      {
        v18 = 7;
      }

      else
      {
        v15 = v16;
        v18 = v17;
      }
    }

    else
    {
      v15 = x + v11 * -0.0;
      v18 = 3;
    }

    v19 = [AKFormFeatureBox boxWithRect:pageCopy onPage:v18 flags:0 baseline:v15, y + v14 * -0.5, v12, v14];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_boxOnLine:(id)line atPoint:(CGPoint)point
{
  lineCopy = line;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    page = [lineCopy page];
    [WeakRetained defaultFeatureSizeForPage:page];
    v9 = v8;
    [lineCopy rect];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    MinX = CGRectGetMinX(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v15 = [AKFormFeatureBox boxWithRect:page onPage:0 flags:lineCopy baseline:MinX, CGRectGetMaxY(v19), width, v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGRect)_findExtentForLineTop:(double)top lineBottom:(double)bottom x:(double)x onPage:(id)page
{
  pageCopy = page;
  v10 = pageCopy;
  MinX = *MEMORY[0x277CBF3A0];
  bottomCopy = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  if (pageCopy)
  {
    xCopy = x;
    v15 = top - bottom;
    v16 = top - bottom + 2.0;
    overlayView = [pageCopy overlayView];
    [overlayView bounds];
    v19 = v18;

    v20 = vcvtpd_u64_f64(v19);
    v21 = vcvtpd_u64_f64(v16 * 4.0);
    if (v21 && v20 != 0)
    {
      DeviceGray = CGColorSpaceCreateDeviceGray();
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(DeviceGray);
      v25 = [objc_opt_class() _newBitmapInRect:v10 onPage:0.0 scale:{0.0, v20, v21, 1.0}];
      if (v25)
      {
        v26 = NumberOfComponents * v20;
        v51.origin.x = 0.0;
        bottomCopy = bottom;
        v51.origin.y = bottom;
        v51.size.width = v19;
        v51.size.height = v16;
        MinX = CGRectGetMinX(v51);
        v52.origin.x = 0.0;
        v52.origin.y = bottom;
        v52.size.width = v19;
        v52.size.height = v16;
        MaxX = CGRectGetMaxX(v52);
        Data = CGBitmapContextGetData(v25);
        v29 = vcvtmd_u64_f64(xCopy);
        v14 = v15;
        v30 = vcvtpd_u64_f64(v15 * 4.0);
        if (v29 >= v20)
        {
LABEL_28:
          while (1)
          {
            v39 = 0;
            v40 = Data;
            v41 = 8;
            do
            {
              if (v40[v29] < 0xABu)
              {
                ++v39;
              }

              v40 += v26;
              --v41;
            }

            while (v41);
            if (v21 < 9)
            {
              v42 = 0;
            }

            else
            {
              v42 = 0;
              v43 = &Data[8 * v26];
              v44 = v21 - 8;
              do
              {
                if (v43[v29] > 0xDBu)
                {
                  ++v42;
                }

                v43 += v26;
                --v44;
              }

              while (v44);
            }

            if (v42 == v30 || v39 > 2)
            {
              break;
            }

            if (!--v29)
            {
              goto LABEL_46;
            }
          }

          MinX = v29 + 1.0;
        }

        else
        {
          v31 = v29;
          while (1)
          {
            v32 = 0;
            v33 = Data;
            v34 = 8;
            do
            {
              if (v33[v31] < 0xABu)
              {
                ++v32;
              }

              v33 += v26;
              --v34;
            }

            while (v34);
            if (v21 < 9)
            {
              v35 = 0;
            }

            else
            {
              v35 = 0;
              v36 = &Data[8 * v26];
              v37 = v21 - 8;
              do
              {
                if (v36[v31] > 0xDBu)
                {
                  ++v35;
                }

                v36 += v26;
                --v37;
              }

              while (v37);
            }

            if (v35 == v30 || v32 > 2)
            {
              break;
            }

            if (++v31 == v20)
            {
              goto LABEL_27;
            }
          }

          MaxX = v31;
LABEL_27:
          if (v29)
          {
            goto LABEL_28;
          }
        }

LABEL_46:
        v13 = MaxX - MinX;
      }

      if (DeviceGray)
      {
        CGColorSpaceRelease(DeviceGray);
      }

      if (v25)
      {
        CGContextRelease(v25);
      }
    }
  }

  v46 = MinX;
  v47 = bottomCopy;
  v48 = v13;
  v49 = v14;
  result.size.height = v49;
  result.size.width = v48;
  result.origin.y = v47;
  result.origin.x = v46;
  return result;
}

+ (CGContext)_newBitmapInRect:(CGRect)rect onPage:(id)page scale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pageCopy = page;
  controller = [pageCopy controller];
  delegate = [controller delegate];
  [pageCopy convertRectFromModelToOverlay:{x, y, width, height}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  pageIndex = [pageCopy pageIndex];

  v22 = [delegate newContentSnapshotPDFDataIncludingAdornments:0 atScale:pageIndex inRect:controller onOverlayAtPageIndex:scale forAnnotationController:{v14, v16, v18, v20}];
  v23 = v22;
  if (v22 && (v24 = CGDataProviderCreateWithCFData(v22)) != 0)
  {
    v25 = v24;
    v26 = CGPDFDocumentCreateWithProvider(v24);
    if (v26)
    {
      v27 = v26;
      v28 = [objc_opt_class() _newBitmapFromCGPDFDocument:v26];
      CGPDFDocumentRelease(v27);
    }

    else
    {
      v28 = 0;
    }

    CGDataProviderRelease(v25);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (CGContext)_newBitmapFromCGPDFDocument:(CGPDFDocument *)document
{
  if (!document)
  {
    return 0;
  }

  if (!CGPDFDocumentGetNumberOfPages(document))
  {
    return 0;
  }

  Page = CGPDFDocumentGetPage(document, 1uLL);
  if (!Page)
  {
    return 0;
  }

  v5 = Page;
  BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v10 = j__NSStringFromCGRect(BoxRect);
  NSLog(&cfstr_PageBounds.isa, v10);

  v11 = vcvtpd_u64_f64(width);
  v12 = vcvtpd_u64_f64(height);
  if (!v11 || v12 == 0)
  {
    return 0;
  }

  DeviceGray = CGColorSpaceCreateDeviceGray();
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(DeviceGray);
  v18 = CGBitmapContextCreate(0, v11, v12, 8uLL, NumberOfComponents * v11, DeviceGray, 0);
  v14 = v18;
  if (v18)
  {
    CGContextSetInterpolationQuality(v18, kCGInterpolationNone);
    CGContextSetShouldAntialias(v14, 0);
    CGContextSetAllowsAntialiasing(v14, 0);
    CGContextSetGrayFillColor(v14, 1.0, 1.0);
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    v20.size.width = ceil(width);
    v20.size.height = ceil(height);
    CGContextFillRect(v14, v20);
    CGContextSaveGState(v14);
    CGContextScaleCTM(v14, 1.0, 1.0);
    CGContextTranslateCTM(v14, -x, -y);
    CGContextDrawPDFPage(v14, v5);
    CGContextRestoreGState(v14);
  }

  if (DeviceGray)
  {
    CGColorSpaceRelease(DeviceGray);
  }

  return v14;
}

- (AKFormFeatureDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end