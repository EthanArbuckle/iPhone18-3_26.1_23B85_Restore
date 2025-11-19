@interface TUIGridBoxLayout
- (TUIGridBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5;
- (void)computeLayout;
- (void)onChildInvalidate:(id)a3;
- (void)onChildrenUpdated;
@end

@implementation TUIGridBoxLayout

- (TUIGridBoxLayout)initWithModel:(id)a3 parent:(id)a4 controller:(id)a5
{
  v11.receiver = self;
  v11.super_class = TUIGridBoxLayout;
  v5 = [(TUILayout *)&v11 initWithModel:a3 parent:a4 controller:a5];
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
  v19 = [v18 columns];

  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = (v14 + v17) / v20 - v17;
  v127 = [(TUILayout *)self computedLayoutDirection];
  v130 = v4;
  v126 = v11;
  v22 = 0;
  if (v127 == 2)
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
  v63 = [(TUILayout *)self children];
  v64 = [v63 countByEnumeratingWithState:&v137 objects:v142 count:16];
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
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v137 + 1) + 8 * i);
        v69 = [v68 effectiveGuideLeading];
        v70 = v14;
        if (v69)
        {
          v71 = v69;
          v72 = [v68 effectiveGuideTrailing];

          v70 = v14;
          if (v72)
          {
            v73 = [v68 effectiveGuideTrailing];
            [v73 guideOffset];
            v75 = v74;
            v76 = [v68 effectiveGuideLeading];
            [v76 guideOffset];
            v70 = vabdd_f64(v75, v77);
          }
        }

        [v68 setContainingWidth:v70];
        [(TUILayout *)self containingHeight];
        [v68 setContainingHeight:?];
        [v68 setFlexedHeight:NAN];
        [v68 validateLayout];
        v78 = [v68 effectiveGuideTop];
        v79 = v78;
        v80 = v132;
        if (v78)
        {
          v80 = v78;
        }

        v81 = v80;

        v82 = [v68 effectiveGuideBottom];
        v83 = v82;
        v84 = v131;
        if (v82)
        {
          v84 = v82;
        }

        v85 = v84;

        v86 = self->_guideLayoutController;
        v87 = [v68 computedHeight];
        [(TUIGuideLayoutController *)v86 addEdgeFrom:v81 to:v85 length:v87, v88];
      }

      v65 = [v63 countByEnumeratingWithState:&v137 objects:v142 count:16];
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
  v95 = [(TUILayout *)self children];
  v96 = [v95 countByEnumeratingWithState:&v133 objects:v141 count:16];
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
          objc_enumerationMutation(v95);
        }

        v100 = *(*(&v133 + 1) + 8 * j);
        [v100 computedTransformedSize];
        v102 = v101;
        v104 = v103;
        v105 = [v100 effectiveGuideLeading];

        if (v105)
        {
          v106 = [v100 effectiveGuideLeading];
          [v106 guideOffset];
          if (v127 == 2)
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
          v109 = [v100 effectiveGuideTrailing];

          v108 = v9;
          if (!v109)
          {
            goto LABEL_47;
          }

          v106 = [v100 effectiveGuideTrailing];
          [v106 guideOffset];
          if (v127 == 2)
          {
            v108 = v110;
          }

          else
          {
            v108 = v110 - v102;
          }
        }

LABEL_47:
        v111 = [v100 effectiveGuideTop];

        if (v111)
        {
          v112 = [v100 effectiveGuideTop];
          [v112 guideOffset];
          v114 = v113;
        }

        else
        {
          v115 = [v100 effectiveGuideBottom];

          v114 = v7;
          if (!v115)
          {
            goto LABEL_52;
          }

          v112 = [v100 effectiveGuideBottom];
          [v112 guideOffset];
          v114 = v116 - v104;
        }

LABEL_52:
        v117 = [v100 effectiveGuideTop];
        if (v117)
        {
          v118 = v117;
          v119 = [v100 effectiveGuideBottom];

          v120 = v104;
          if (v119)
          {
            v121 = [v100 effectiveGuideBottom];
            [v121 guideOffset];
            v123 = v122;
            v124 = [v100 effectiveGuideTop];
            [v124 guideOffset];
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

      v97 = [v95 countByEnumeratingWithState:&v133 objects:v141 count:16];
    }

    while (v97);
  }

  [(TUILayout *)self setComputedNaturalSize:v130, v94];
}

- (void)onChildInvalidate:(id)a3
{
  v4.receiver = self;
  v4.super_class = TUIGridBoxLayout;
  v3 = a3;
  [(TUILayout *)&v4 onChildInvalidate:v3];
  [v3 setFlexedHeight:{NAN, v4.receiver, v4.super_class}];
}

- (void)onChildrenUpdated
{
  v3.receiver = self;
  v3.super_class = TUIGridBoxLayout;
  [(TUILayout *)&v3 onChildrenUpdated];
  [(TUILayout *)self validateGuides];
}

@end