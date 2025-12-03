@interface TUIGridBoxLayout
- (TUIGridBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (void)computeLayout;
- (void)onChildInvalidate:(id)invalidate;
- (void)onChildrenUpdated;
@end

@implementation TUIGridBoxLayout

- (TUIGridBoxLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v11.receiver = self;
  v11.super_class = TUIGridBoxLayout;
  v5 = [(TUILayout *)&v11 initWithModel:model parent:parent controller:controller];
  v6 = v5;
  if (v5)
  {
    [(TUILayout *)v5 specifiedWidth];
    if ((v7 & 0x6000000000000) == 0x2000000000000)
    {
      [(TUILayout *)v6 setSpecifiedWidthComputeInherited:1];
    }

    v8 = objc_alloc_init(TUIGuideLayoutController);
    guideLayoutController = v6->_guideLayoutController;
    v6->_guideLayoutController = v8;
  }

  return v6;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  v5 = [(TUILayout *)self box];
  [v5 insets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = fmax(v4 - v9 - v13, 1.0);
  v15 = [(TUILayout *)self box];
  [v15 spacing];
  v17 = v16;

  v18 = [(TUILayout *)self box];
  columns = [v18 columns];

  if (columns <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = columns;
  }

  v21 = (v14 + v17) / v20 - v17;
  computedLayoutDirection = [(TUILayout *)self computedLayoutDirection];
  v130 = v4;
  v126 = v11;
  v22 = 0;
  if (computedLayoutDirection == 2)
  {
    v23 = v4 - v13;
    v24 = v23;
    do
    {
      guideLayoutController = self->_guideLayoutController;
      v26 = [TUIGuideSpec columnWithIndex:v22 edge:0];
      v27 = [(TUIGuideLayoutController *)guideLayoutController guideForSpec:v26 withOffset:v24];

      v28 = v24 - v21;
      v29 = self->_guideLayoutController;
      v30 = [TUIGuideSpec columnWithIndex:v22 edge:1];
      v31 = [(TUIGuideLayoutController *)v29 guideForSpec:v30 withOffset:v28];

      v24 = v28 - v17;
      ++v22;
    }

    while (v20 != v22);
    v32 = 0.0;
    v33 = v9;
    v34 = v130;
  }

  else
  {
    v35 = v9;
    do
    {
      v36 = self->_guideLayoutController;
      v37 = [TUIGuideSpec columnWithIndex:v22 edge:0];
      v38 = [(TUIGuideLayoutController *)v36 guideForSpec:v37 withOffset:v35];

      v39 = v21 + v35;
      v40 = self->_guideLayoutController;
      v41 = [TUIGuideSpec columnWithIndex:v22 edge:1];
      v42 = [(TUIGuideLayoutController *)v40 guideForSpec:v41 withOffset:v39];

      v35 = v17 + v39;
      ++v22;
    }

    while (v20 != v22);
    v32 = v130;
    v33 = v130 - v13;
    v34 = 0.0;
    v23 = v9;
  }

  [(TUIGuideLayoutController *)self->_guideLayoutController reset];
  v43 = self->_guideLayoutController;
  v44 = [TUIGuideSpec gridWithEdge:2];
  v129 = [(TUIGuideLayoutController *)v43 guideForSpec:v44];

  v45 = self->_guideLayoutController;
  v46 = [TUIGuideSpec gridWithEdge:3];
  v128 = [(TUIGuideLayoutController *)v45 guideForSpec:v46];

  v47 = self->_guideLayoutController;
  v48 = [TUIGuideSpec contentWithEdge:2];
  v132 = [(TUIGuideLayoutController *)v47 guideForSpec:v48];

  v49 = self->_guideLayoutController;
  v50 = [TUIGuideSpec contentWithEdge:3];
  v131 = [(TUIGuideLayoutController *)v49 guideForSpec:v50];

  v51 = self->_guideLayoutController;
  v52 = [TUIGuideSpec gridWithEdge:0];
  v53 = [(TUIGuideLayoutController *)v51 guideForSpec:v52 withOffset:v34];

  v54 = self->_guideLayoutController;
  v55 = [TUIGuideSpec gridWithEdge:1];
  v56 = [(TUIGuideLayoutController *)v54 guideForSpec:v55 withOffset:v32];

  v57 = self->_guideLayoutController;
  v58 = [TUIGuideSpec contentWithEdge:0];
  v59 = [(TUIGuideLayoutController *)v57 guideForSpec:v58 withOffset:v23];

  v60 = self->_guideLayoutController;
  v61 = [TUIGuideSpec contentWithEdge:1];
  v62 = [(TUIGuideLayoutController *)v60 guideForSpec:v61 withOffset:v33];

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  children = [(TUILayout *)self children];
  v64 = [children countByEnumeratingWithState:&v137 objects:v142 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v138;
    do
    {
      for (i = 0; i != v65; i = i + 1)
      {
        if (*v138 != v66)
        {
          objc_enumerationMutation(children);
        }

        v68 = *(*(&v137 + 1) + 8 * i);
        effectiveGuideLeading = [v68 effectiveGuideLeading];
        v70 = v14;
        if (effectiveGuideLeading)
        {
          v71 = effectiveGuideLeading;
          effectiveGuideTrailing = [v68 effectiveGuideTrailing];

          v70 = v14;
          if (effectiveGuideTrailing)
          {
            effectiveGuideTrailing2 = [v68 effectiveGuideTrailing];
            [effectiveGuideTrailing2 guideOffset];
            v75 = v74;
            effectiveGuideLeading2 = [v68 effectiveGuideLeading];
            [effectiveGuideLeading2 guideOffset];
            v70 = vabdd_f64(v75, v77);
          }
        }

        [v68 setContainingWidth:v70];
        [(TUILayout *)self containingHeight];
        [v68 setContainingHeight:?];
        [v68 setFlexedHeight:NAN];
        [v68 validateLayout];
        effectiveGuideTop = [v68 effectiveGuideTop];
        v79 = effectiveGuideTop;
        v80 = v132;
        if (effectiveGuideTop)
        {
          v80 = effectiveGuideTop;
        }

        v81 = v80;

        effectiveGuideBottom = [v68 effectiveGuideBottom];
        v83 = effectiveGuideBottom;
        v84 = v131;
        if (effectiveGuideBottom)
        {
          v84 = effectiveGuideBottom;
        }

        v85 = v84;

        v86 = self->_guideLayoutController;
        computedHeight = [v68 computedHeight];
        [(TUIGuideLayoutController *)v86 addEdgeFrom:v81 to:v85 length:computedHeight, v88];
      }

      v65 = [children countByEnumeratingWithState:&v137 objects:v142 count:16];
    }

    while (v65);
  }

  v89 = 0x7FC00000FF7FFFFFLL;

  v90 = 0x7FC00000FF7FFFFFLL;
  if (v7 > -3.40282347e38)
  {
    if (v7 < 3.40282347e38)
    {
      *&v91 = v7;
      v90 = v91 | 0x7FC0000000000000;
    }

    else
    {
      v90 = 0x7FC000007F7FFFFFLL;
    }
  }

  [(TUIGuideLayoutController *)self->_guideLayoutController addEdgeFrom:v129 to:v132 length:v90, 2143289344];
  if (v126 > -3.40282347e38)
  {
    if (v126 < 3.40282347e38)
    {
      *&v92 = v126;
      v89 = v92 | 0x7FC0000000000000;
    }

    else
    {
      v89 = 0x7FC000007F7FFFFFLL;
    }
  }

  [(TUIGuideLayoutController *)self->_guideLayoutController addEdgeFrom:v131 to:v128 length:v89, 2143289344];
  [(TUIGuideLayoutController *)self->_guideLayoutController solve];
  [(TUIGuideLayoutController *)self->_guideLayoutController computeLength];
  v94 = v93;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  children2 = [(TUILayout *)self children];
  v96 = [children2 countByEnumeratingWithState:&v133 objects:v141 count:16];
  if (v96)
  {
    v97 = v96;
    v98 = *v134;
    do
    {
      for (j = 0; j != v97; j = j + 1)
      {
        if (*v134 != v98)
        {
          objc_enumerationMutation(children2);
        }

        v100 = *(*(&v133 + 1) + 8 * j);
        [v100 computedTransformedSize];
        v102 = v101;
        v104 = v103;
        effectiveGuideLeading3 = [v100 effectiveGuideLeading];

        if (effectiveGuideLeading3)
        {
          effectiveGuideLeading4 = [v100 effectiveGuideLeading];
          [effectiveGuideLeading4 guideOffset];
          if (computedLayoutDirection == 2)
          {
            v108 = v107 - v102;
          }

          else
          {
            v108 = v107;
          }
        }

        else
        {
          effectiveGuideTrailing3 = [v100 effectiveGuideTrailing];

          v108 = v9;
          if (!effectiveGuideTrailing3)
          {
            goto LABEL_47;
          }

          effectiveGuideLeading4 = [v100 effectiveGuideTrailing];
          [effectiveGuideLeading4 guideOffset];
          if (computedLayoutDirection == 2)
          {
            v108 = v110;
          }

          else
          {
            v108 = v110 - v102;
          }
        }

LABEL_47:
        effectiveGuideTop2 = [v100 effectiveGuideTop];

        if (effectiveGuideTop2)
        {
          effectiveGuideTop3 = [v100 effectiveGuideTop];
          [effectiveGuideTop3 guideOffset];
          v114 = v113;
        }

        else
        {
          effectiveGuideBottom2 = [v100 effectiveGuideBottom];

          v114 = v7;
          if (!effectiveGuideBottom2)
          {
            goto LABEL_52;
          }

          effectiveGuideTop3 = [v100 effectiveGuideBottom];
          [effectiveGuideTop3 guideOffset];
          v114 = v116 - v104;
        }

LABEL_52:
        effectiveGuideTop4 = [v100 effectiveGuideTop];
        if (effectiveGuideTop4)
        {
          v118 = effectiveGuideTop4;
          effectiveGuideBottom3 = [v100 effectiveGuideBottom];

          v120 = v104;
          if (effectiveGuideBottom3)
          {
            effectiveGuideBottom4 = [v100 effectiveGuideBottom];
            [effectiveGuideBottom4 guideOffset];
            v123 = v122;
            effectiveGuideTop5 = [v100 effectiveGuideTop];
            [effectiveGuideTop5 guideOffset];
            v120 = fmax(v123 - v125, 0.0);
          }
        }

        else
        {
          v120 = v104;
        }

        if (v104 != v120)
        {
          [v100 setFlexedHeight:v120];
          [v100 validateLayout];
        }

        [v100 setComputedOrigin:{v108, v114}];
      }

      v97 = [children2 countByEnumeratingWithState:&v133 objects:v141 count:16];
    }

    while (v97);
  }

  [(TUILayout *)self setComputedNaturalSize:v130, v94];
}

- (void)onChildInvalidate:(id)invalidate
{
  v4.receiver = self;
  v4.super_class = TUIGridBoxLayout;
  invalidateCopy = invalidate;
  [(TUILayout *)&v4 onChildInvalidate:invalidateCopy];
  [invalidateCopy setFlexedHeight:{NAN, v4.receiver, v4.super_class}];
}

- (void)onChildrenUpdated
{
  v3.receiver = self;
  v3.super_class = TUIGridBoxLayout;
  [(TUILayout *)&v3 onChildrenUpdated];
  [(TUILayout *)self validateGuides];
}

@end