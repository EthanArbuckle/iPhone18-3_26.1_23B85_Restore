@interface AXVisualElementGrouper
- (AXVisualElementGrouper)initWithHeuristics:(int64_t)a3;
- (id)_groupablesForItems:(id)a3;
@end

@implementation AXVisualElementGrouper

- (AXVisualElementGrouper)initWithHeuristics:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = AXVisualElementGrouper;
  v4 = [(AXElementGrouper *)&v9 initWithHeuristics:?];
  v5 = v4;
  if (v4)
  {
    v6 = a3 > 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = dbl_1BF7DE668[a3];
    [(AXVisualElementGrouper *)v4 setMaximumNeighbourDistance:dbl_1BF7DE650[a3]];
    [(AXVisualElementGrouper *)v5 setMaximumDistanceForAligningEdges:v7];
  }

  return v5;
}

- (id)_groupablesForItems:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v60 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
  if (!v6)
  {
    v14 = v60;
    goto LABEL_55;
  }

  v7 = v6;
  v8 = 0;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  v12 = *(MEMORY[0x1E695F050] + 16);
  v11 = *(MEMORY[0x1E695F050] + 24);
  v13 = *v85;
  v72 = v11;
  v73 = v12;
  v74 = y;
  v75 = *MEMORY[0x1E695F050];
  v14 = v60;
  do
  {
    v15 = 0;
    do
    {
      r1 = v12;
      if (*v85 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v84 + 1) + 8 * v15);
      [v16 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v92.origin.x = x;
      v92.origin.y = y;
      v92.size.width = v12;
      v92.size.height = v11;
      v111.origin.y = v74;
      v111.origin.x = v75;
      v111.size.height = v72;
      v111.size.width = v73;
      if (CGRectEqualToRect(v92, v111))
      {
        [v5 addObject:v16];
        v11 = v24;
        v12 = v22;
        y = v20;
        x = v18;
        goto LABEL_49;
      }

      v93.origin.x = v18;
      v65 = v20;
      v93.origin.y = v20;
      v93.size.width = v22;
      v93.size.height = v24;
      Height = CGRectGetHeight(v93);
      v26 = v18;
      v76 = v18;
      v27 = Height;
      v94.origin.x = v26;
      v94.origin.y = v20;
      v94.size.width = v22;
      v94.size.height = v24;
      Width = CGRectGetWidth(v94);
      if (v27 >= Width)
      {
        v29 = Width;
      }

      else
      {
        v29 = v27;
      }

      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = v12;
      v95.size.height = v11;
      v30 = CGRectGetHeight(v95);
      v96.origin.x = x;
      v96.origin.y = y;
      v96.size.width = v12;
      v96.size.height = v11;
      v31 = CGRectGetWidth(v96);
      if (v30 < v31)
      {
        v31 = v30;
      }

      v32 = (v29 + v31) * 0.5;
      [(AXVisualElementGrouper *)self maximumDistanceForAligningEdges];
      if (v33 >= v32)
      {
        v33 = v32;
      }

      v67 = v33;
      v97.origin.x = x;
      v97.origin.y = y;
      v97.size.width = v12;
      v97.size.height = v11;
      MinX = CGRectGetMinX(v97);
      v98.origin.x = v76;
      v98.origin.y = v65;
      v98.size.width = v22;
      v98.size.height = v24;
      v66 = vabdd_f64(MinX, CGRectGetMinX(v98));
      v99.origin.x = x;
      v99.origin.y = y;
      v99.size.width = v12;
      v99.size.height = v11;
      MaxX = CGRectGetMaxX(v99);
      v100.origin.x = v76;
      v100.origin.y = v65;
      v100.size.width = v22;
      v100.size.height = v24;
      v64 = vabdd_f64(MaxX, CGRectGetMaxX(v100));
      v101.origin.x = x;
      v101.origin.y = y;
      v101.size.width = v12;
      v101.size.height = v11;
      MinY = CGRectGetMinY(v101);
      v102.origin.x = v76;
      v102.origin.y = v65;
      v102.size.width = v22;
      v102.size.height = v24;
      v62 = v11;
      v63 = vabdd_f64(MinY, CGRectGetMinY(v102));
      v71 = x;
      v103.origin.x = x;
      v103.origin.y = y;
      v103.size.width = v12;
      v103.size.height = v11;
      MaxY = CGRectGetMaxY(v103);
      v104.origin.x = v76;
      v104.origin.y = v65;
      v104.size.width = v22;
      v104.size.height = v24;
      v35 = vabdd_f64(MaxY, CGRectGetMaxY(v104));
      v36 = v64 < v67 && v66 < v67;
      v37 = v35 < v67 && v63 < v67;
      if ([v16 isGroup])
      {
        v38 = v71;
        v39 = v76;
        if (![v16 canBeGroupedWithOtherGroupables] || !v36 && !v37)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v38 = v71;
        v39 = v76;
        if (!v36 && !v37)
        {
          goto LABEL_46;
        }
      }

      if (v8 != 2 && v37)
      {
        [(AXVisualElementGrouper *)self maximumNeighbourDistance];
        if (v41 >= v22 + v22)
        {
          v42 = v22 + v22;
        }

        else
        {
          v42 = v41;
        }

        v105.origin.x = v38;
        v105.origin.y = y;
        v105.size.height = v62;
        v105.size.width = r1;
        v112.origin.x = v39;
        v112.origin.y = v65;
        v112.size.width = v22;
        v112.size.height = v24;
        v106 = CGRectUnion(v105, v112);
        v43 = vabdd_f64(v106.size.width, r1);
        v44 = v22 + v42;
      }

      else
      {
        if (v8 == 1 || !v36)
        {
LABEL_46:
          if ([v5 count])
          {
            [v60 addObject:v5];
          }

          v48 = [MEMORY[0x1E695DF70] arrayWithObject:v16];

          v8 = 0;
          v5 = v48;
          v11 = v24;
          v12 = v22;
          y = v65;
          x = v39;
          goto LABEL_49;
        }

        [(AXVisualElementGrouper *)self maximumNeighbourDistance];
        if (v46 >= v24 + v24)
        {
          v47 = v24 + v24;
        }

        else
        {
          v47 = v46;
        }

        v107.origin.x = v38;
        v107.origin.y = y;
        v107.size.width = r1;
        v107.size.height = v11;
        v113.origin.x = v39;
        v113.origin.y = v65;
        v113.size.width = v22;
        v113.size.height = v24;
        v108 = CGRectUnion(v107, v113);
        v43 = vabdd_f64(v108.size.height, v11);
        v44 = v24 + v47;
      }

      if (v43 >= v44)
      {
        goto LABEL_46;
      }

      v109.origin.x = v38;
      v109.origin.y = y;
      v109.size.height = v62;
      v109.size.width = r1;
      v114.origin.x = v39;
      v114.origin.y = v65;
      v114.size.width = v22;
      v114.size.height = v24;
      v110 = CGRectUnion(v109, v114);
      x = v110.origin.x;
      y = v110.origin.y;
      v12 = v110.size.width;
      v11 = v110.size.height;
      [v5 addObject:v16];
      if (!v8)
      {
        if (!v36 || v37)
        {
          v8 = v37 && !v36;
        }

        else
        {
          v8 = 2;
        }
      }

LABEL_49:
      ++v15;
    }

    while (v7 != v15);
    v49 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
    v7 = v49;
  }

  while (v49);
LABEL_55:

  if ([v5 count])
  {
    [v14 addObject:v5];
  }

  if ([v14 count] == 1)
  {
    v50 = [v14 lastObject];
    v83.receiver = self;
    v83.super_class = AXVisualElementGrouper;
    v51 = [(AXElementGrouper *)&v83 _groupablesForItems:v50];
  }

  else
  {
    v51 = [MEMORY[0x1E695DF70] array];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v50 = v14;
    v52 = [v50 countByEnumeratingWithState:&v79 objects:v88 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v80;
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v80 != v54)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v79 + 1) + 8 * i);
          if ([v56 count] == 1)
          {
            v57 = [v56 firstObject];
            [v51 addObject:v57];
          }

          else
          {
            v78.receiver = self;
            v78.super_class = AXVisualElementGrouper;
            v57 = [(AXElementGrouper *)&v78 _groupablesForItems:v56];
            v58 = [AXElementGroup groupWithElements:v57];
            [v58 setUserDefinedScanningBehaviorTraits:16];
            [v51 addObject:v58];
          }
        }

        v53 = [v50 countByEnumeratingWithState:&v79 objects:v88 count:16];
      }

      while (v53);
      v14 = v60;
    }
  }

  return v51;
}

@end