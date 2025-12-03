@interface CRLImmutableBrushStrokeStorage
+ (unint64_t)p_totalSectionCountWithPaths:(id)paths;
- (CRLImmutableBrushStrokeStorage)initWithImage:(id)image paths:(id)paths bounds:(id)bounds textureIndices:(id)indices options:(id)options lineEnds:(id)ends;
- (id)deepCopy;
@end

@implementation CRLImmutableBrushStrokeStorage

- (CRLImmutableBrushStrokeStorage)initWithImage:(id)image paths:(id)paths bounds:(id)bounds textureIndices:(id)indices options:(id)options lineEnds:(id)ends
{
  imageCopy = image;
  pathsCopy = paths;
  boundsCopy = bounds;
  indicesCopy = indices;
  optionsCopy = options;
  endsCopy = ends;
  v24.receiver = self;
  v24.super_class = CRLImmutableBrushStrokeStorage;
  v18 = [(CRLImmutableBrushStrokeStorage *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_image, image);
    objc_storeStrong(&v19->_paths, paths);
    objc_storeStrong(&v19->_bounds, bounds);
    objc_storeStrong(&v19->_textureIndices, indices);
    objc_storeStrong(&v19->_options, options);
    objc_storeStrong(&v19->_lineEnds, ends);
    v19->_totalSectionCount = [CRLImmutableBrushStrokeStorage p_totalSectionCountWithPaths:pathsCopy];
  }

  return v19;
}

+ (unint64_t)p_totalSectionCountWithPaths:(id)paths
{
  pathsCopy = paths;
  allKeys = [pathsCopy allKeys];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v10 = [pathsCopy objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        v7 += [v10 count];
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  image = [(CRLImmutableBrushStrokeStorage *)self image];
  v84 = [image copy];

  v90 = +[NSMutableDictionary dictionary];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  selfCopy = self;
  paths = [(CRLImmutableBrushStrokeStorage *)self paths];
  allKeys = [paths allKeys];

  obj = allKeys;
  v91 = [allKeys countByEnumeratingWithState:&v128 objects:v139 count:16];
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
        paths2 = [(CRLImmutableBrushStrokeStorage *)selfCopy paths];
        v93 = v7;
        v10 = [paths2 objectForKeyedSubscript:v7];

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
              originalPath = [v15 originalPath];
              v18 = [originalPath copy];
              pathWithPossibleSmoothing = [v15 pathWithPossibleSmoothing];
              v20 = [pathWithPossibleSmoothing copy];
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
  bounds = [(CRLImmutableBrushStrokeStorage *)selfCopy bounds];
  allKeys2 = [bounds allKeys];

  v96 = allKeys2;
  v24 = [allKeys2 countByEnumeratingWithState:&v120 objects:v137 count:16];
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
        bounds2 = [(CRLImmutableBrushStrokeStorage *)selfCopy bounds];
        v31 = [bounds2 objectForKeyedSubscript:v28];

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
  textureIndices = [(CRLImmutableBrushStrokeStorage *)selfCopy textureIndices];
  allKeys3 = [textureIndices allKeys];

  v97 = allKeys3;
  v39 = [allKeys3 countByEnumeratingWithState:&v112 objects:v135 count:16];
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
        textureIndices2 = [(CRLImmutableBrushStrokeStorage *)selfCopy textureIndices];
        v46 = [textureIndices2 objectForKeyedSubscript:v43];

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
  options = [(CRLImmutableBrushStrokeStorage *)selfCopy options];
  allKeys4 = [options allKeys];

  v55 = [allKeys4 countByEnumeratingWithState:&v104 objects:v133 count:16];
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
          objc_enumerationMutation(allKeys4);
        }

        v59 = *(*(&v104 + 1) + 8 * ii);
        options2 = [(CRLImmutableBrushStrokeStorage *)selfCopy options];
        v61 = [options2 objectForKeyedSubscript:v59];

        v62 = [v61 copy];
        [v52 setObject:v62 forKeyedSubscript:v59];
      }

      v56 = [allKeys4 countByEnumeratingWithState:&v104 objects:v133 count:16];
    }

    while (v56);
  }

  v83 = v52;

  v89 = +[NSMutableDictionary dictionary];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  lineEnds = [(CRLImmutableBrushStrokeStorage *)selfCopy lineEnds];
  allKeys5 = [lineEnds allKeys];

  v85 = allKeys5;
  v98 = [allKeys5 countByEnumeratingWithState:&v100 objects:v132 count:16];
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
        lineEnds2 = [(CRLImmutableBrushStrokeStorage *)selfCopy lineEnds];
        v68 = [lineEnds2 objectForKeyedSubscript:v66];

        v69 = [CRLLineEnd alloc];
        path = [v68 path];
        v71 = [path copy];
        wrapPath = [v68 wrapPath];
        v73 = [wrapPath copy];
        [v68 endPoint];
        v75 = v74;
        v77 = v76;
        isFilled = [v68 isFilled];
        identifier = [v68 identifier];
        v80 = -[CRLLineEnd initWithBezierPath:wrapPath:endPoint:isFilled:identifier:lineJoin:](v69, "initWithBezierPath:wrapPath:endPoint:isFilled:identifier:lineJoin:", v71, v73, isFilled, identifier, [v68 lineJoin], v75, v77);
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