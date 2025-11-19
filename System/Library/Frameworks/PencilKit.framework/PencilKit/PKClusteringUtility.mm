@interface PKClusteringUtility
+ (CGRect)constrainRect:(CGRect)result;
+ (double)arrayAverage:(id)a3;
+ (double)estimatedWordDistanceForStrokes:(id)a3 lineHeight:(double)a4;
+ (id)_clusteredStrokesWithInitialStrokes:(id)a3 selectionType:(int64_t)a4 visibleStrokes:(id)a5 approximateLineHeight:(double)a6 approximateLineCenter:(double)a7;
+ (id)_geometricBasedStrokeClusteringFromPoint:(CGPoint)a3 visibleStrokes:(id)a4 selectionType:(int64_t)a5 inputType:(int64_t)a6;
+ (id)horizontalDistanceBetweenStrokes:(id)a3 lineHeight:(double)a4;
+ (id)kMeansCluster:(int)a3 values:(id)a4 clusterError:(double)a5 maxIterations:(int)a6;
+ (void)_fetchIntersectedStrokesForGeometricBasedStrokeClusteringBetweenPoint:(CGPoint)a3 otherPoint:(CGPoint)a4 visibleStrokes:(id)a5 completion:(id)a6;
@end

@implementation PKClusteringUtility

+ (id)horizontalDistanceBetweenStrokes:(id)a3 lineHeight:(double)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v40 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v47;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v47 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v46 + 1) + 8 * i);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v12 = v6;
        v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
        v14 = v12;
        if (!v13)
        {
          goto LABEL_26;
        }

        v15 = v13;
        v16 = *v43;
        v17 = 1.79769313e308;
        v41 = 1.79769313e308;
        do
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v19 = *(*(&v42 + 1) + 8 * j);
            if (v11 != v19)
            {
              [v11 _bounds];
              MidY = CGRectGetMidY(v54);
              [v19 _bounds];
              if (vabdd_f64(CGRectGetMidY(v55), MidY) < a4)
              {
                [v19 _bounds];
                MidX = CGRectGetMidX(v56);
                [v11 _bounds];
                v22 = CGRectGetMidX(v57);
                [v11 _bounds];
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v30 = v29;
                [v19 _bounds];
                v35 = DKDDistanceToRectFromRect(v24, v26, v28, v30, v31, v32, v33, v34);
                if (MidX <= v22)
                {
                  v36 = v41;
                  if (v35 < v41)
                  {
                    v36 = v35;
                  }

                  v41 = v36;
                }

                else if (v35 < v17)
                {
                  v17 = v35;
                }
              }
            }
          }

          v15 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v15);

        if (v17 != 1.79769313e308)
        {
          v37 = [MEMORY[0x1E696AD98] numberWithDouble:v17];
          [v40 addObject:v37];
        }

        v38 = v41;
        if (v41 != 1.79769313e308)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithDouble:v41];
          [v40 addObject:v14];
LABEL_26:

          continue;
        }
      }

      v8 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:{16, v38}];
    }

    while (v8);
  }

  return v40;
}

+ (double)estimatedWordDistanceForStrokes:(id)a3 lineHeight:(double)a4
{
  v4 = [PKClusteringUtility horizontalDistanceBetweenStrokes:a3 lineHeight:a4];
  v5 = 7.0;
  if ([v4 count] >= 2)
  {
    v6 = [objc_opt_class() kMeansCluster:2 values:v4 clusterError:500 maxIterations:0.5];
    v7 = [MEMORY[0x1E695DF70] arrayWithArray:v6];
    [v7 sortUsingSelector:sel_compare_];
    v8 = [v7 objectAtIndexedSubscript:0];
    [v8 floatValue];
    v10 = v9;

    v11 = [v7 objectAtIndexedSubscript:1];
    [v11 floatValue];
    v13 = v12;

    v5 = (v10 + v13) * 0.5;
  }

  return v5;
}

+ (id)kMeansCluster:(int)a3 values:(id)a4 clusterError:(double)a5 maxIterations:(int)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if ([v8 count] >= a3)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E695DF70] array];
    v11 = a3;
    v52 = a3;
    if (a3 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = [MEMORY[0x1E695DF70] array];
        [v10 addObject:v13];

        v14 = [v8 objectAtIndexedSubscript:v12];
        [v9 setObject:v14 atIndexedSubscript:v12];

        ++v12;
      }

      while (a3 != v12);
    }

    v50 = 0;
    v15 = 0x1E696A000uLL;
    v47 = v10;
    v48 = v8;
    v16 = v10;
    while (1)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v8;
      v17 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
      v18 = v52;
      if (v17)
      {
        v19 = v17;
        v20 = *v54;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v54 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v53 + 1) + 8 * i);
            if (v18 < 1)
            {
              v31 = 0;
            }

            else
            {
              v23 = 0;
              v24 = 0;
              v25 = 1.79769313e308;
              do
              {
                [v22 floatValue];
                v27 = v26;
                v28 = [v9 objectAtIndexedSubscript:v23];
                [v28 floatValue];
                v30 = vabds_f32(v27, v29);

                if (v25 > v30)
                {
                  v24 = v23;
                  v25 = v30;
                }

                ++v23;
              }

              while (v11 != v23);
              v31 = v24;
              v18 = v52;
              v15 = 0x1E696A000;
            }

            v32 = [v16 objectAtIndexedSubscript:v31];
            [v32 addObject:v22];
          }

          v19 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        }

        while (v19);
      }

      if (v18 < 1)
      {
        v16 = v47;
        v8 = v48;
        goto LABEL_30;
      }

      v33 = v15;
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = [v16 objectAtIndexedSubscript:v34];
        [PKClusteringUtility arrayAverage:v36];
        v38 = v37;

        v39 = [v9 objectAtIndexedSubscript:v34];
        [v39 floatValue];
        v41 = vabdd_f64(v38, v40) < a5;

        v35 |= v41;
        v42 = [*(v33 + 3480) numberWithDouble:v38];
        [v9 replaceObjectAtIndex:v34 withObject:v42];

        ++v34;
      }

      while (v11 != v34);
      if ((v35 & (v50 < a6)) == 0)
      {
        break;
      }

      v43 = [MEMORY[0x1E695DF70] array];

      v44 = v52;
      do
      {
        v45 = [MEMORY[0x1E695DF70] array];
        [v43 addObject:v45];

        --v44;
      }

      while (v44);
      ++v50;
      v16 = v43;
      v8 = v48;
      v15 = 0x1E696A000;
    }

    v8 = v48;
LABEL_30:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (double)arrayAverage:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) floatValue];
          v8 = v8 + v10;
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = v8 / [v4 count];
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ (CGRect)constrainRect:(CGRect)result
{
  v3 = fmax(result.size.width, 10.0);
  v4 = fmax(result.size.height, 10.0);
  result.size.height = v4;
  result.size.width = v3;
  return result;
}

+ (void)_fetchIntersectedStrokesForGeometricBasedStrokeClusteringBetweenPoint:(CGPoint)a3 otherPoint:(CGPoint)a4 visibleStrokes:(id)a5 completion:(id)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v134 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  v107 = [MEMORY[0x1E695DFA0] orderedSet];
  if (v9 >= y)
  {
    v13 = y;
  }

  else
  {
    v13 = v9;
  }

  if (v9 >= y)
  {
    v14 = x;
  }

  else
  {
    v14 = v10;
  }

  v104 = v13;
  v105 = v14;
  if (v9 >= y)
  {
    v15 = v9;
  }

  else
  {
    v15 = y;
  }

  v103 = v15;
  v126 = 0u;
  v127 = 0u;
  if (v9 >= y)
  {
    v16 = v10;
  }

  else
  {
    v16 = x;
  }

  v106 = v16;
  v128 = 0uLL;
  v129 = 0uLL;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v126 objects:v133 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    if (v9 >= y)
    {
      v22 = v10;
    }

    else
    {
      v22 = x;
    }

    if (v9 >= y)
    {
      v23 = v9;
    }

    else
    {
      v23 = y;
    }

    v110 = v23;
    v112 = v22;
    if (v9 >= y)
    {
      v24 = x;
    }

    else
    {
      v24 = v10;
    }

    v108 = v24;
    if (v9 >= y)
    {
      v25 = y;
    }

    else
    {
      v25 = v9;
    }

    v26 = *v127;
    v27 = 1.79769313e308;
    v28 = 1.79769313e308;
    v29 = v107;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v127 != v26)
        {
          objc_enumerationMutation(v17);
        }

        v31 = *(*(&v126 + 1) + 8 * i);
        [v31 _bounds];
        v32 = v135.origin.x;
        v33 = v135.origin.y;
        width = v135.size.width;
        height = v135.size.height;
        MidX = CGRectGetMidX(v135);
        v136.origin.x = v32;
        v136.origin.y = v33;
        v136.size.width = width;
        v136.size.height = height;
        MidY = CGRectGetMidY(v136);
        v38 = sqrt((MidY - v25) * (MidY - v25) + (MidX - v108) * (MidX - v108));
        if (v38 < v28)
        {
          v39 = v31;

          v28 = v38;
          v21 = v39;
        }

        v40 = sqrt((MidY - v110) * (MidY - v110) + (MidX - v112) * (MidX - v112));
        if (v40 < v27)
        {
          v41 = v31;

          v27 = v40;
          v20 = v41;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v126 objects:v133 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v29 = v107;
  }

  if (!(v21 | v20))
  {
    v12[2](v12, v29);
    goto LABEL_81;
  }

  v102 = v12;
  if (v21 || !v20)
  {
    v43 = v105;
    v42 = v106;
    v45 = v103;
    v44 = v104;
    if (v20 || !v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v21 = v20;
    v43 = v105;
    v42 = v106;
    v45 = v103;
    v44 = v104;
  }

  v20 = v21;
  v21 = v20;
LABEL_46:
  v46 = [MEMORY[0x1E695DFA0] orderedSetWithObject:v21];
  v47 = [MEMORY[0x1E695DFA0] orderedSetWithObject:v20];
  [v21 _bounds];
  v49 = v48;
  [v21 _bounds];
  v111 = v46;
  v50 = [PKClusteringUtility _clusteredStrokesWithInitialStrokes:v46 selectionType:3 visibleStrokes:v17 approximateLineHeight:v49 approximateLineCenter:CGRectGetMidY(v137)];
  [v20 _bounds];
  v52 = v51;
  [v20 _bounds];
  v109 = v47;
  v53 = [PKClusteringUtility _clusteredStrokesWithInitialStrokes:v47 selectionType:3 visibleStrokes:v17 approximateLineHeight:v52 approximateLineCenter:CGRectGetMidY(v138)];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v113 = v17;
  v54 = v17;
  v55 = [v54 countByEnumeratingWithState:&v122 objects:v132 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v123;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v123 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v122 + 1) + 8 * j);
        [v59 _bounds];
        v60 = v139.origin.x;
        v61 = v139.origin.y;
        v62 = v139.size.width;
        v63 = v139.size.height;
        CGRectGetMidX(v139);
        v140.origin.x = v60;
        v140.origin.y = v61;
        v140.size.width = v62;
        v140.size.height = v63;
        v64 = CGRectGetMidY(v140);
        if (v64 > v44 && v64 < v45)
        {
          [v29 addObject:v59];
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v122 objects:v132 count:16];
    }

    while (v56);
  }

  [v29 minusOrderedSet:v50];
  v66 = v29;
  v67 = v53;
  [v66 minusOrderedSet:v53];
  v68 = [MEMORY[0x1E695DFA0] orderedSet];
  v69 = [MEMORY[0x1E695DFA0] orderedSet];
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v70 = v50;
  v71 = [v70 countByEnumeratingWithState:&v118 objects:v131 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v119;
    do
    {
      for (k = 0; k != v72; ++k)
      {
        if (*v119 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v118 + 1) + 8 * k);
        [v75 _bounds];
        if (v76 > v43)
        {
          [v68 addObject:v75];
        }
      }

      v72 = [v70 countByEnumeratingWithState:&v118 objects:v131 count:16];
    }

    while (v72);
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v77 = v67;
  v78 = [v77 countByEnumeratingWithState:&v114 objects:v130 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v115;
    do
    {
      for (m = 0; m != v79; ++m)
      {
        if (*v115 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v114 + 1) + 8 * m);
        [v82 _bounds];
        if (v83 < v42)
        {
          [v69 addObject:v82];
        }
      }

      v79 = [v77 countByEnumeratingWithState:&v114 objects:v130 count:16];
    }

    while (v79);
  }

  [PKDrawing _boundingBoxForStrokes:v68];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  [PKDrawing _boundingBoxForStrokes:v69];
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v141.origin.x = v85;
  v141.origin.y = v87;
  v141.size.width = v89;
  v141.size.height = v91;
  CGRectGetMidX(v141);
  v142.origin.x = v85;
  v142.origin.y = v87;
  v142.size.width = v89;
  v142.size.height = v91;
  v100 = CGRectGetMidY(v142);
  v143.origin.x = v93;
  v143.origin.y = v95;
  v143.size.width = v97;
  v143.size.height = v99;
  CGRectGetMidX(v143);
  v144.origin.x = v93;
  v144.origin.y = v95;
  v144.size.width = v97;
  v144.size.height = v99;
  if (vabdd_f64(v100, CGRectGetMidY(v144)) >= v91)
  {
    v29 = v107;
    [v107 unionOrderedSet:v68];
    v101 = v69;
    v12 = v102;
  }

  else
  {
    [v68 intersectOrderedSet:v69];
    v101 = v68;
    v12 = v102;
    v29 = v107;
  }

  [v29 unionOrderedSet:v101];
  v12[2](v12, v29);

  v17 = v113;
LABEL_81:
}

+ (id)_geometricBasedStrokeClusteringFromPoint:(CGPoint)a3 visibleStrokes:(id)a4 selectionType:(int64_t)a5 inputType:(int64_t)a6
{
  y = a3.y;
  x = a3.x;
  v50 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [MEMORY[0x1E695DFA0] orderedSet];
  v12 = [MEMORY[0x1E695DFA8] set];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v45;
    if (a6)
    {
      v17 = 10.0;
    }

    else
    {
      v17 = 20.0;
    }

    v18 = 0.0;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        if ([v21 intersectsPoint:x boundsOutset:y minimumStrokeThreshold:{v17, v17}])
        {
          [v11 addObject:v21];
          [v21 _bounds];
          v19 = v19 + v22;
          [v21 _bounds];
          v18 = v18 + CGRectGetMidY(v52);
          v23 = [v21 _groupID];

          if (v23)
          {
            v24 = [v21 _groupID];
            [v12 addObject:v24];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v15);
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
  }

  if ([v12 count])
  {
    v38 = v13;
    v39 = a5;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v13;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v40 + 1) + 8 * j);
          v31 = [v30 _groupID];
          if (v31)
          {
            v32 = v31;
            v33 = [v30 _groupID];
            v34 = [v12 containsObject:v33];

            if (v34)
            {
              [v11 addObject:v30];
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v27);
    }

    v13 = v38;
    a5 = v39;
  }

  if ([v11 count])
  {
    v35 = +[PKClusteringUtility _clusteredStrokesWithInitialStrokes:selectionType:visibleStrokes:approximateLineHeight:approximateLineCenter:](PKClusteringUtility, "_clusteredStrokesWithInitialStrokes:selectionType:visibleStrokes:approximateLineHeight:approximateLineCenter:", v11, a5, v13, v19 / [v11 count], v18 / objc_msgSend(v11, "count"));
  }

  else
  {
    v35 = v11;
  }

  v36 = v35;

  return v36;
}

+ (id)_clusteredStrokesWithInitialStrokes:(id)a3 selectionType:(int64_t)a4 visibleStrokes:(id)a5 approximateLineHeight:(double)a6 approximateLineCenter:(double)a7
{
  v85 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v67 = [MEMORY[0x1E695DFA0] orderedSetWithOrderedSet:v12];
  if (a4 != 1)
  {
    [PKClusteringUtility estimatedWordDistanceForStrokes:v13 lineHeight:a6];
    v15 = 3.0;
    v66 = v12;
    if (a4 == 3)
    {
      v16 = -50.0;
    }

    else if (a4 == 2)
    {
      v16 = -v14;
    }

    else
    {
      if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        a6 = a6 + a6;
      }

      else
      {
        a6 = 0.0;
      }

      if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v15 = -10.0;
      }

      else
      {
        v15 = *(MEMORY[0x1E695EFF8] + 8);
      }

      if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v16 = -50.0;
      }

      else
      {
        v16 = *MEMORY[0x1E695EFF8];
      }
    }

    v65 = a4;
    v68 = v13;
    while (1)
    {
      v17 = [MEMORY[0x1E695DFA0] orderedSet];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v18 = v67;
      v70 = [v18 countByEnumeratingWithState:&v78 objects:v84 count:16];
      if (v70)
      {
        v69 = *v79;
        do
        {
          v19 = 0;
          do
          {
            if (*v79 != v69)
            {
              objc_enumerationMutation(v18);
            }

            recta[0] = v19;
            v20 = *(*(&v78 + 1) + 8 * v19);
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            v21 = v13;
            v22 = [v21 countByEnumeratingWithState:&v74 objects:v83 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v75;
              do
              {
                for (i = 0; i != v23; ++i)
                {
                  if (*v75 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v74 + 1) + 8 * i);
                  if (([v18 containsObject:v26] & 1) == 0)
                  {
                    [v20 _bounds];
                    v88 = CGRectInset(v87, v16, v15);
                    [PKClusteringUtility constrainRect:v88.origin.x, v88.origin.y, v88.size.width, v88.size.height];
                    v28 = v27;
                    v30 = v29;
                    v32 = v31;
                    v34 = v33;
                    [v26 _bounds];
                    [a1 constrainRect:?];
                    v93.origin.x = v35;
                    v93.origin.y = v36;
                    v93.size.width = v37;
                    v93.size.height = v38;
                    v89.origin.x = v28;
                    v89.origin.y = v30;
                    v89.size.width = v32;
                    v89.size.height = v34;
                    v39 = CGRectIntersectsRect(v89, v93);
                    [v26 _bounds];
                    v40 = vabdd_f64(a7, CGRectGetMidY(v90));
                    if (v39 && v40 < a6)
                    {
                      [v17 addObject:{v26, v40}];
                    }
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v74 objects:v83 count:16];
              }

              while (v23);
            }

            v19 = recta[0] + 1;
            v13 = v68;
          }

          while (recta[0] + 1 != v70);
          v70 = [v18 countByEnumeratingWithState:&v78 objects:v84 count:16];
        }

        while (v70);
      }

      if (![v17 count])
      {
        break;
      }

      v42 = [v17 array];
      [v18 addObjectsFromArray:v42];
    }

    if (v65 == 5)
    {
      [v18 addObjectsFromArray:v13];
    }

    [PKDrawing _boundingBoxForStrokes:v18];
    recta[0] = v43;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    memset(&recta[1], 0, 32);
    v72 = 0u;
    v73 = 0u;
    v50 = v13;
    v51 = [v50 countByEnumeratingWithState:&recta[1] objects:v82 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *recta[3];
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*recta[3] != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(recta[2] + 8 * j);
          [v55 _bounds];
          v57 = v56;
          v59 = v58;
          v61 = v60;
          v63 = v62;
          *&v91.origin.x = recta[0];
          v91.origin.y = v45;
          v91.size.width = v47;
          v91.size.height = v49;
          v92 = CGRectInset(v91, -0.01, -0.01);
          v94.origin.x = v57;
          v94.origin.y = v59;
          v94.size.width = v61;
          v94.size.height = v63;
          if (CGRectContainsRect(v92, v94))
          {
            [v18 addObject:v55];
          }
        }

        v52 = [v50 countByEnumeratingWithState:&recta[1] objects:v82 count:16];
      }

      while (v52);
    }

    v12 = v66;
  }

  return v67;
}

@end