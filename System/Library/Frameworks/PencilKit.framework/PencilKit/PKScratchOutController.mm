@interface PKScratchOutController
- (_BYTE)nonTextStrokeIntersectionBetweenAllStrokes:(void *)a3 textStrokesToDelete:(void *)a4 textStrokesToKeep:;
- (id)intersectedStrokesFilteredByCoverageThresholdForStroke:(void *)a3 intersectedStrokes:;
- (id)intersectedStrokesForStroke:(void *)a3 attachment:(void *)a4 drawing:;
@end

@implementation PKScratchOutController

- (id)intersectedStrokesForStroke:(void *)a3 attachment:(void *)a4 drawing:
{
  v86 = *MEMORY[0x1E69E9840];
  v73 = a2;
  v7 = a3;
  v74 = a4;
  v71 = v7;
  if (a1)
  {
    v8 = [v7 strokeSpatialCache];
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 24);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = [v11 mutableCopy];

    v13 = MEMORY[0x1E695DFA0];
    v72 = v12;
    v14 = v73;
    [v14 _bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [MEMORY[0x1E695DF70] array];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v24 = v72;
    v25 = [v24 countByEnumeratingWithState:&v79 objects:buf count:16];
    if (v25)
    {
      v26 = *v80;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v80 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v79 + 1) + 8 * i);
          [v28 _bounds];
          v89.origin.x = v16;
          v89.origin.y = v18;
          v89.size.width = v20;
          v89.size.height = v22;
          if (CGRectIntersectsRect(v88, v89))
          {
            [v23 addObject:v28];
          }
        }

        v25 = [v24 countByEnumeratingWithState:&v79 objects:buf count:16];
      }

      while (v25);
    }

    v29 = [v13 orderedSetWithArray:v23];

    v30 = [MEMORY[0x1E695DFA8] set];
    v31 = [v14 path];
    v32 = [v31 pointAtIndex:0];
    [v32 location];
    v34 = v33;
    v36 = v35;

    v37 = _PKSignpostLog();
    v38 = os_signpost_id_generate(v37);

    v39 = _PKSignpostLog();
    v40 = v39;
    spid = v38;
    v70 = v38 - 1;
    if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "intersectedStrokesForStroke", "", buf, 2u);
    }

    v41 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v41, OS_LOG_TYPE_INFO, "BEGIN intersectedStrokesForStroke", buf, 2u);
    }

    v42 = [v14 path];
    v43 = [v42 _pointsCount];

    if (v43)
    {
      v44 = 0;
      while (1)
      {
        v45 = [v14 path];
        v46 = [v45 pointAtIndex:v44];
        [v46 location];
        v48 = v47;
        v50 = v49;

        v51 = [v29 array];
        v52 = [v74 strokesIntersectedByPoint:v51 prevPoint:v48 onscreenVisibleStrokes:{v50, v34, v36}];

        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v53 = v52;
        v54 = [v53 countByEnumeratingWithState:&v75 objects:v83 count:16];
        if (v54)
        {
          v55 = *v76;
          do
          {
            for (j = 0; j != v54; ++j)
            {
              if (*v76 != v55)
              {
                objc_enumerationMutation(v53);
              }

              [v29 removeObject:*(*(&v75 + 1) + 8 * j)];
            }

            v54 = [v53 countByEnumeratingWithState:&v75 objects:v83 count:16];
          }

          while (v54);
        }

        v57 = [v53 set];
        [v30 unionSet:v57];

        if ([v30 count] >= 0x1F5 && objc_msgSend(v14, "_pointsCount") > 0x1F4)
        {
          break;
        }

        if ([v30 count] >= 0x3E9)
        {
          break;
        }

        ++v44;
        v34 = v48;
        v36 = v50;
        if (v44 == v43)
        {
          goto LABEL_31;
        }
      }

      v63 = _PKSignpostLog();
      v64 = v63;
      if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v64, OS_SIGNPOST_INTERVAL_END, spid, "intersectedStrokesForStroke", "", buf, 2u);
      }

      v65 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v65, OS_LOG_TYPE_INFO, "END intersectedStrokesForStroke", buf, 2u);
      }

      v66 = os_log_create("com.apple.pencilkit", "Actions");
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        v67 = [v30 count];
        *buf = 134217984;
        v85 = v67;
        _os_log_impl(&dword_1C7CCA000, v66, OS_LOG_TYPE_DEFAULT, "Scratch Out intersected %lu strokes, cancelling due to too many.", buf, 0xCu);
      }

      v62 = [MEMORY[0x1E695DFD8] set];
    }

    else
    {
LABEL_31:
      v58 = _PKSignpostLog();
      v59 = v58;
      if (v70 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v59, OS_SIGNPOST_INTERVAL_END, spid, "intersectedStrokesForStroke", "", buf, 2u);
      }

      v60 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v60, OS_LOG_TYPE_INFO, "END intersectedStrokesForStroke", buf, 2u);
      }

      if (![v30 count])
      {
        v61 = os_log_create("com.apple.pencilkit", "Actions");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C7CCA000, v61, OS_LOG_TYPE_DEFAULT, "Scratch Out intersected 0 strokes.", buf, 2u);
        }
      }

      v62 = v30;
    }
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

- (_BYTE)nonTextStrokeIntersectionBetweenAllStrokes:(void *)a3 textStrokesToDelete:(void *)a4 textStrokesToKeep:
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    v10 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    [MEMORY[0x1E695DFA8] setWithSet:v18];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v11 = v20 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = 0;
      v14 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v13 += [v9 containsObject:*(*(&v19 + 1) + 8 * i)];
        }

        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
      v16 = v13;
    }

    else
    {
      v16 = 0.0;
    }

    a1[8] = [v11 count] * 0.7 <= v16;
    [v11 minusSet:v10];
    [v11 unionSet:v9];
    a1 = [v11 allObjects];
  }

  return a1;
}

- (id)intersectedStrokesFilteredByCoverageThresholdForStroke:(void *)a3 intersectedStrokes:
{
  v71 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v42 = a3;
  if (a1)
  {
    v5 = _PKSignpostLog();
    v6 = os_signpost_id_generate(v5);

    v7 = _PKSignpostLog();
    v8 = v7;
    spid = v6;
    v41 = v6 - 1;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "intersectedStrokesFilteredByCoverage", "", buf, 2u);
    }

    v9 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_INFO, "BEGIN intersectedStrokesFilteredByCoverage", buf, 2u);
    }

    v44 = [MEMORY[0x1E695DF70] array];
    v10 = objc_alloc_init(PKAveragePointGenerator);
    [(PKAveragePointGenerator *)v10 addStroke:v43];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    *buf = 0u;
    *lineWidth = 0u;
    v11 = [v43 path];
    v12 = [v11 _newPathRepresentation];
    maskPath = CGPathCreateCopyByStrokingPath(v12, 0, lineWidth[1], kCGLineCapRound, kCGLineJoinRound, 0.0);

    if (maskPath)
    {
      [(PKAveragePointGenerator *)v10 reset];
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = v42;
      v13 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
      if (v13)
      {
        v47 = *v61;
        do
        {
          v48 = v13;
          for (i = 0; i != v48; ++i)
          {
            if (*v61 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v60 + 1) + 8 * i);
            [(PKAveragePointGenerator *)v10 addStroke:v14];
            [(PKAveragePointGenerator *)v10 currentStrokePoint];
            v66 = *&transform.tx;
            v67 = v57;
            v68 = v58;
            v69 = v59;
            *buf = *&transform.a;
            *lineWidth = *&transform.c;
            memset(&transform, 0, sizeof(transform));
            if (v14)
            {
              [v14 transform];
            }

            v15 = [v14 path];
            v16 = [v15 _newPathRepresentation];

            v17 = CGPathCreateCopyByStrokingPath(v16, &transform, lineWidth[1], kCGLineCapRound, kCGLineJoinRound, 0.0);
            CopyByFlattening = CGPathCreateCopyByFlattening(v17, 1.0);
            v19 = CopyByFlattening;
            if (CopyByFlattening)
            {
              __p = 0;
              v54 = 0;
              v55 = 0;
              PKPointsFromPath(CopyByFlattening, &__p, 6.0, 0.0);
              v20 = __100__PKScratchOutController_intersectedStrokesFilteredByCoverageThresholdForStroke_intersectedStrokes___block_invoke(__p, v54);
              CopyByIntersectingPath = CGPathCreateCopyByIntersectingPath(v17, maskPath, 1);
              SeparateComponents = CGPathCreateSeparateComponents(CopyByIntersectingPath, 1);
              v23 = SeparateComponents;
              v24 = 0.0;
              if (SeparateComponents)
              {
                Count = CFArrayGetCount(SeparateComponents);
                if (Count >= 1)
                {
                  for (j = 0; j != Count; ++j)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v23, j);
                    v50 = 0;
                    v51 = 0;
                    v52 = 0;
                    PKPointsFromPath(ValueAtIndex, &v50, 6.0, 0.0);
                    v28 = v10;
                    v29 = v50;
                    v30 = __100__PKScratchOutController_intersectedStrokesFilteredByCoverageThresholdForStroke_intersectedStrokes___block_invoke(v50, v51);
                    if (v29)
                    {
                      v51 = v29;
                      operator delete(v29);
                    }

                    v24 = v24 + v30;
                    v10 = v28;
                  }
                }
              }

              CFRelease(v23);
              if (v24 / v20 > 0.03)
              {
                [v44 addObject:{v14, v24 / v20}];
              }

              CGPathRelease(v16);
              CGPathRelease(v17);
              CGPathRelease(v19);
              CGPathRelease(CopyByIntersectingPath);
              [(PKAveragePointGenerator *)v10 reset];
              if (__p)
              {
                v54 = __p;
                operator delete(__p);
              }
            }

            else
            {
              CGPathRelease(v16);
              CGPathRelease(v17);
              CGPathRelease(0);
            }
          }

          v13 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
        }

        while (v13);
      }

      CGPathRelease(maskPath);
      v31 = _PKSignpostLog();
      v32 = v31;
      if (v41 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        LOWORD(transform.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v32, OS_SIGNPOST_INTERVAL_END, spid, "intersectedStrokesFilteredByCoverage", "", &transform, 2u);
      }

      v33 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        LOWORD(transform.a) = 0;
        _os_log_impl(&dword_1C7CCA000, v33, OS_LOG_TYPE_INFO, "END intersectedStrokesFilteredByCoverage", &transform, 2u);
      }

      v34 = [v44 copy];
    }

    else
    {
      v35 = os_log_create("com.apple.pencilkit", "Actions");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(transform.a) = 0;
        _os_log_impl(&dword_1C7CCA000, v35, OS_LOG_TYPE_DEFAULT, "Could not generate a stroking path for scratch out stroke.", &transform, 2u);
      }

      v36 = _PKSignpostLog();
      v37 = v36;
      if (v41 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v36))
      {
        LOWORD(transform.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C7CCA000, v37, OS_SIGNPOST_INTERVAL_END, v6, "intersectedStrokesFilteredByCoverage", "", &transform, 2u);
      }

      v38 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        LOWORD(transform.a) = 0;
        _os_log_impl(&dword_1C7CCA000, v38, OS_LOG_TYPE_INFO, "END intersectedStrokesFilteredByCoverage", &transform, 2u);
      }

      v34 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

double __100__PKScratchOutController_intersectedStrokesFilteredByCoverageThresholdForStroke_intersectedStrokes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 < 1)
  {
    result = 0.0;
  }

  else
  {
    v4 = *(a2 - 16);
    v3 = *(a2 - 8);
    v5 = (a1 + 8);
    v6 = 0.0;
    do
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v6 = v6 + v8 * v3 - *v5 * v4;
      v5 += 2;
      v4 = v8;
      v3 = v7;
      --v2;
    }

    while (v2);
    result = v6 * 0.5;
  }

  if (result < 0.0)
  {
    return -result;
  }

  return result;
}

@end