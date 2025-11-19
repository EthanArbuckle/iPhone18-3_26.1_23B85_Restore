@interface CRLImmutableBrushStrokeStorage
+ (unint64_t)p_totalSectionCountWithPaths:(id)a3;
- (CRLImmutableBrushStrokeStorage)initWithImage:(id)a3 paths:(id)a4 bounds:(id)a5 textureIndices:(id)a6 options:(id)a7 lineEnds:(id)a8;
- (id)deepCopy;
@end

@implementation CRLImmutableBrushStrokeStorage

- (CRLImmutableBrushStrokeStorage)initWithImage:(id)a3 paths:(id)a4 bounds:(id)a5 textureIndices:(id)a6 options:(id)a7 lineEnds:(id)a8
{
  v23 = a3;
  v15 = a4;
  v22 = a5;
  v21 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CRLImmutableBrushStrokeStorage;
  v18 = [(CRLImmutableBrushStrokeStorage *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_image, a3);
    objc_storeStrong(&v19->_paths, a4);
    objc_storeStrong(&v19->_bounds, a5);
    objc_storeStrong(&v19->_textureIndices, a6);
    objc_storeStrong(&v19->_options, a7);
    objc_storeStrong(&v19->_lineEnds, a8);
    v19->_totalSectionCount = [CRLImmutableBrushStrokeStorage p_totalSectionCountWithPaths:v15];
  }

  return v19;
}

+ (unint64_t)p_totalSectionCountWithPaths:(id)a3
{
  v3 = a3;
  v4 = [v3 allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v3 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        v7 += [v10 count];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)deepCopy
{
  v3 = [(CRLImmutableBrushStrokeStorage *)self image];
  v84 = [v3 copy];

  v90 = +[NSMutableDictionary dictionary];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v99 = self;
  v4 = [(CRLImmutableBrushStrokeStorage *)self paths];
  v5 = [v4 allKeys];

  obj = v5;
  v91 = [v5 countByEnumeratingWithState:&v128 objects:v139 count:16];
  if (v91)
  {
    v88 = *v129;
    do
    {
      v6 = 0;
      do
      {
        if (*v129 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v95 = v6;
        v7 = *(*(&v128 + 1) + 8 * v6);
        v8 = +[NSMutableArray array];
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v9 = [(CRLImmutableBrushStrokeStorage *)v99 paths];
        v93 = v7;
        v10 = [v9 objectForKeyedSubscript:v7];

        v11 = [v10 countByEnumeratingWithState:&v124 objects:v138 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v125;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v125 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v124 + 1) + 8 * i);
              v16 = [CRLBrushStrokeStorageBezierPathContainer alloc];
              v17 = [v15 originalPath];
              v18 = [v17 copy];
              v19 = [v15 pathWithPossibleSmoothing];
              v20 = [v19 copy];
              v21 = [(CRLBrushStrokeStorageBezierPathContainer *)v16 initWithOriginalPath:v18 pathWithPossibleSmoothing:v20];
              [v8 addObject:v21];
            }

            v12 = [v10 countByEnumeratingWithState:&v124 objects:v138 count:16];
          }

          while (v12);
        }

        [v90 setObject:v8 forKeyedSubscript:v93];
        v6 = v95 + 1;
      }

      while (v95 + 1 != v91);
      v91 = [obj countByEnumeratingWithState:&v128 objects:v139 count:16];
    }

    while (v91);
  }

  v94 = +[NSMutableDictionary dictionary];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v22 = [(CRLImmutableBrushStrokeStorage *)v99 bounds];
  v23 = [v22 allKeys];

  v96 = v23;
  v24 = [v23 countByEnumeratingWithState:&v120 objects:v137 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v121;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v121 != v26)
        {
          objc_enumerationMutation(v96);
        }

        v28 = *(*(&v120 + 1) + 8 * j);
        v29 = +[NSMutableArray array];
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v30 = [(CRLImmutableBrushStrokeStorage *)v99 bounds];
        v31 = [v30 objectForKeyedSubscript:v28];

        v32 = [v31 countByEnumeratingWithState:&v116 objects:v136 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v117;
          do
          {
            for (k = 0; k != v33; k = k + 1)
            {
              if (*v117 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v116 + 1) + 8 * k) copy];
              [v29 addObject:v36];
            }

            v33 = [v31 countByEnumeratingWithState:&v116 objects:v136 count:16];
          }

          while (v33);
        }

        [v94 setObject:v29 forKeyedSubscript:v28];
      }

      v25 = [v96 countByEnumeratingWithState:&v120 objects:v137 count:16];
    }

    while (v25);
  }

  v92 = +[NSMutableDictionary dictionary];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v37 = [(CRLImmutableBrushStrokeStorage *)v99 textureIndices];
  v38 = [v37 allKeys];

  v97 = v38;
  v39 = [v38 countByEnumeratingWithState:&v112 objects:v135 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v113;
    do
    {
      for (m = 0; m != v40; m = m + 1)
      {
        if (*v113 != v41)
        {
          objc_enumerationMutation(v97);
        }

        v43 = *(*(&v112 + 1) + 8 * m);
        v44 = +[NSMutableArray array];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v45 = [(CRLImmutableBrushStrokeStorage *)v99 textureIndices];
        v46 = [v45 objectForKeyedSubscript:v43];

        v47 = [v46 countByEnumeratingWithState:&v108 objects:v134 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v109;
          do
          {
            for (n = 0; n != v48; n = n + 1)
            {
              if (*v109 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = [*(*(&v108 + 1) + 8 * n) copy];
              [v44 addObject:v51];
            }

            v48 = [v46 countByEnumeratingWithState:&v108 objects:v134 count:16];
          }

          while (v48);
        }

        [v92 setObject:v44 forKeyedSubscript:v43];
      }

      v40 = [v97 countByEnumeratingWithState:&v112 objects:v135 count:16];
    }

    while (v40);
  }

  v52 = +[NSMutableDictionary dictionary];
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v53 = [(CRLImmutableBrushStrokeStorage *)v99 options];
  v54 = [v53 allKeys];

  v55 = [v54 countByEnumeratingWithState:&v104 objects:v133 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v105;
    do
    {
      for (ii = 0; ii != v56; ii = ii + 1)
      {
        if (*v105 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v104 + 1) + 8 * ii);
        v60 = [(CRLImmutableBrushStrokeStorage *)v99 options];
        v61 = [v60 objectForKeyedSubscript:v59];

        v62 = [v61 copy];
        [v52 setObject:v62 forKeyedSubscript:v59];
      }

      v56 = [v54 countByEnumeratingWithState:&v104 objects:v133 count:16];
    }

    while (v56);
  }

  v83 = v52;

  v89 = +[NSMutableDictionary dictionary];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v63 = [(CRLImmutableBrushStrokeStorage *)v99 lineEnds];
  v64 = [v63 allKeys];

  v85 = v64;
  v98 = [v64 countByEnumeratingWithState:&v100 objects:v132 count:16];
  if (v98)
  {
    obja = *v101;
    do
    {
      for (jj = 0; jj != v98; jj = jj + 1)
      {
        if (*v101 != obja)
        {
          objc_enumerationMutation(v85);
        }

        v66 = *(*(&v100 + 1) + 8 * jj);
        v67 = [(CRLImmutableBrushStrokeStorage *)v99 lineEnds];
        v68 = [v67 objectForKeyedSubscript:v66];

        v69 = [CRLLineEnd alloc];
        v70 = [v68 path];
        v71 = [v70 copy];
        v72 = [v68 wrapPath];
        v73 = [v72 copy];
        [v68 endPoint];
        v75 = v74;
        v77 = v76;
        v78 = [v68 isFilled];
        v79 = [v68 identifier];
        v80 = -[CRLLineEnd initWithBezierPath:wrapPath:endPoint:isFilled:identifier:lineJoin:](v69, "initWithBezierPath:wrapPath:endPoint:isFilled:identifier:lineJoin:", v71, v73, v78, v79, [v68 lineJoin], v75, v77);
        [v89 setObject:v80 forKeyedSubscript:v66];
      }

      v98 = [v85 countByEnumeratingWithState:&v100 objects:v132 count:16];
    }

    while (v98);
  }

  v81 = [[CRLImmutableBrushStrokeStorage alloc] initWithImage:v84 paths:v90 bounds:v94 textureIndices:v92 options:v83 lineEnds:v89];

  return v81;
}

@end