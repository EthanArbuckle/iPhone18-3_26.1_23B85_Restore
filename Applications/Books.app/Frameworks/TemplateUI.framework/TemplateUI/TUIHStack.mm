@interface TUIHStack
- (CGSize)layoutSize;
- (TUIHStack)initWithLayout:(id)a3;
- (TUIHStack)initWithLayout:(id)a3 children:(id)a4;
- (TUILayout)layout;
- (void)computeLayoutWithOrigin:(CGPoint)a3;
@end

@implementation TUIHStack

- (TUIHStack)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUIHStack;
  v5 = [(TUIHStack *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, v4);
    *&v6->_specifiedWidth.value = TUILengthNull;
    *&v6->_specifiedWidth._flags = TUILengthNull;
    *&v6->_computedHeight = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  return v6;
}

- (TUIHStack)initWithLayout:(id)a3 children:(id)a4
{
  v6 = a4;
  v7 = [(TUIHStack *)self initWithLayout:a3];
  if (v7)
  {
    v8 = [v6 copy];
    children = v7->_children;
    v7->_children = v8;
  }

  return v7;
}

- (void)computeLayoutWithOrigin:(CGPoint)a3
{
  computedWidth = self->_computedWidth;
  [(TUIGuideLayoutController *)self->_guideLayoutController reset];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v5 = [(TUIHStack *)self children];
  v6 = [v5 countByEnumeratingWithState:&v133 objects:v142 count:16];
  if (v6)
  {
    v7 = v6;
    v112 = 0;
    v8 = *v134;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v134 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v133 + 1) + 8 * i);
        [v11 setFlexedWidth:NAN];
        [v11 setFlexedHeight:self->_computedHeight];
        [v11 setContainingMaxWidth:self->_containingMaxWidth];
        [v11 validateLayout];
        [v11 computedTransformedSize];
        v13 = v12;
        v14 = [v11 computedWidth];
        v16 = v15;
        if ((v15 & 0x8000000000000) != 0 || !self->_prefersEqualWidth && ([v11 box], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hcompressed"), v17, v18))
        {
          v19 = v112;
          if (!v112)
          {
            if (self->_prefersEqualWidth)
            {
              if (self->_useStrictEqualWidth)
              {
                v20 = +[TUIFlexibleLayoutController newStrictEqualWidthController];
              }

              else
              {
                v20 = +[TUIFlexibleLayoutController newEqualWidthController];
              }
            }

            else
            {
              v20 = +[TUIFlexibleLayoutController newWidthController];
            }

            v19 = v20;
          }

          v21 = [v11 box];
          v112 = v19;
          [v19 addLayout:v11 length:v14 compressed:{v16, objc_msgSend(v21, "hcompressed")}];
        }

        v9 = v9 + v13;
      }

      v7 = [v5 countByEnumeratingWithState:&v133 objects:v142 count:16];
    }

    while (v7);

    if (v112)
    {
      if (v9 != computedWidth || self->_prefersEqualWidth)
      {
        v22 = [(TUIHStack *)self specifiedWidth];
        if (computedWidth <= -3.40282347e38)
        {
          v24 = 4286578687;
        }

        else
        {
          v24 = 2139095039;
          if (computedWidth < 3.40282347e38)
          {
            *&v25 = computedWidth;
            v24 = v25;
          }
        }

        [v112 computeWithMeasured:v24 | v22 & 0xFFFFFFFF00000000 desired:{v23 & 0xFFE8FFFFFFFFFFFFLL, v9}];
        [v112 adjustedNaturalLengthWithMeasured:v9 computed:computedWidth];
        v129 = 0u;
        v130 = 0u;
        v109 = v26;
        v131 = 0u;
        v132 = 0u;
        v5 = [v112 layouts];
        v27 = [v5 countByEnumeratingWithState:&v129 objects:v141 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v130;
          do
          {
            for (j = 0; j != v28; j = j + 1)
            {
              if (*v130 != v29)
              {
                objc_enumerationMutation(v5);
              }

              v31 = *(*(&v129 + 1) + 8 * j);
              if (([v31 hidden] & 1) == 0)
              {
                [v112 adjustedLengthForLayout:v31];
                [v31 setFlexedWidth:?];
                [v31 validateLayout];
              }
            }

            v28 = [v5 countByEnumeratingWithState:&v129 objects:v141 count:16];
          }

          while (v28);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v112 = 0;
    }

    v109 = computedWidth;
    goto LABEL_40;
  }

  v112 = 0;
  v109 = computedWidth;
LABEL_39:

LABEL_40:
  guideLayoutController = self->_guideLayoutController;
  v33 = [TUIGuideSpec contentWithEdge:2];
  v110 = [(TUIGuideLayoutController *)guideLayoutController guideForSpec:v33];

  v34 = self->_guideLayoutController;
  v35 = [TUIGuideSpec contentWithEdge:3];
  v36 = [(TUIGuideLayoutController *)v34 guideForSpec:v35];

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v37 = [(TUIHStack *)self children];
  v38 = [v37 countByEnumeratingWithState:&v125 objects:v140 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v126;
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    do
    {
      for (k = 0; k != v39; k = k + 1)
      {
        if (*v126 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v45 = *(*(&v125 + 1) + 8 * k);
        if (([v45 hidden] & 1) == 0)
        {
          [v45 computedTransformedSize];
          v48 = v47;
          if (self->_guideLayoutController)
          {
            v49 = [v45 effectiveGuideTop];
            v50 = [v45 effectiveGuideBottom];
            if (v49)
            {
              [(TUIGuideLayoutController *)self->_guideLayoutController addEdgeFrom:v110 to:v49 length:0, 0xB00007F7FFFFFLL];
            }

            if (v50)
            {
              [(TUIGuideLayoutController *)self->_guideLayoutController addEdgeFrom:v50 to:v36 length:0, 0xB00007F7FFFFFLL];
            }
          }

          else
          {
            v51 = v46;
            [v45 computedHeightAbovePivot];
            v42 = fmax(v52, v42);
            v41 = fmax(v51 - v52, v41);
          }

          v43 = v43 + v48;
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v125 objects:v140 count:16];
    }

    while (v39);
  }

  else
  {
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
  }

  v53 = self->_guideLayoutController;
  if (!v53)
  {
    v61 = 0;
    v55 = v41 + v42;
LABEL_69:
    if (v41 == 0.0)
    {
      [(TUIHStack *)self specifiedHeight];
      if ((HIWORD(v62) & 7) - 5 <= 1u)
      {
        [(TUIHStack *)self specifiedHeight];
        if ((v63 & 0x8000000000000) != 0)
        {
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v64 = [(TUIHStack *)self children];
          v65 = [v64 countByEnumeratingWithState:&v117 objects:v138 count:16];
          if (v65)
          {
            v66 = v65;
            v67 = *v118;
            do
            {
              for (m = 0; m != v66; m = m + 1)
              {
                if (*v118 != v67)
                {
                  objc_enumerationMutation(v64);
                }

                v69 = *(*(&v117 + 1) + 8 * m);
                [v69 setFlexedHeight:v55];
                [v69 validateLayout];
              }

              v66 = [v64 countByEnumeratingWithState:&v117 objects:v138 count:16];
            }

            while (v66);
          }
        }
      }

      v61 = self->_guideLayoutController;
    }

    goto LABEL_81;
  }

  [(TUIGuideLayoutController *)v53 solve];
  [(TUIGuideLayoutController *)self->_guideLayoutController computeLength];
  v55 = v54;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v56 = [(TUIHStack *)self children];
  v57 = [v56 countByEnumeratingWithState:&v121 objects:v139 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v122;
    do
    {
      for (n = 0; n != v58; n = n + 1)
      {
        if (*v122 != v59)
        {
          objc_enumerationMutation(v56);
        }

        [*(*(&v121 + 1) + 8 * n) validateLayout];
      }

      v58 = [v56 countByEnumeratingWithState:&v121 objects:v139 count:16];
    }

    while (v58);
  }

  v61 = self->_guideLayoutController;
  if (!v61)
  {
    goto LABEL_69;
  }

LABEL_81:
  if (!v61)
  {
    LODWORD(v70) = [(TUIHStack *)self specifiedHeight];
    v71 = COERCE_FLOAT([(TUIHStack *)self specifiedHeight]);
    [(TUIHStack *)self specifiedHeight];
    if ((v72 & 0x8000000000000) != 0)
    {
      LODWORD(v73) = [(TUIHStack *)self specifiedHeight]>> 32;
      v74 = fmax(fmin(v71, v55), COERCE_FLOAT([(TUIHStack *)self specifiedHeight]>> 32));
      [(TUIHStack *)self specifiedHeight];
      LODWORD(v76) = v75;
      [(TUIHStack *)self specifiedHeight];
      v55 = fmin(fmax(v74, v55), v77);
    }

    else
    {
      v55 = v71;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_layout);
  v79 = [WeakRetained computedLayoutDirection];

  if (v79 == &dword_0 + 2)
  {
    v80 = computedWidth;
  }

  else
  {
    v80 = 0.0;
  }

  v81 = objc_loadWeakRetained(&self->_layout);
  v82 = [v81 layoutAncestor];
  v83 = [v82 isHorizontallyAligningChildren];

  if ((v83 & 1) == 0)
  {
    v84 = objc_loadWeakRetained(&self->_layout);
    v85 = [v84 box];
    v86 = [v85 halign];

    if (v86 == &dword_0 + 3)
    {
      if (v79 == &dword_0 + 2)
      {
        v80 = v43;
      }

      else
      {
        v80 = computedWidth - v43;
      }
    }

    else if (v86 == &dword_0 + 2)
    {
      if (v79 == &dword_0 + 2)
      {
        v80 = v43 + (computedWidth - v43) * 0.5;
      }

      else
      {
        v80 = (computedWidth - v43) * 0.5;
      }
    }
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v87 = [(TUIHStack *)self children];
  v88 = [v87 countByEnumeratingWithState:&v113 objects:v137 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v114;
    do
    {
      for (ii = 0; ii != v89; ii = ii + 1)
      {
        if (*v114 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v92 = *(*(&v113 + 1) + 8 * ii);
        if (([v92 hidden] & 1) == 0)
        {
          [v92 computedTransformedSize];
          v94 = v93;
          v96 = v95;
          [v92 computedHeightAbovePivot];
          v98 = v97;
          if (v79 == &dword_0 + 2)
          {
            v99 = v80 - v94;
          }

          else
          {
            v99 = v80;
          }

          if (!self->_guideLayoutController)
          {
            goto LABEL_112;
          }

          v100 = [v92 effectiveGuideTop];
          v101 = [v92 effectiveGuideBottom];
          v102 = v101;
          if (v100)
          {
            [v100 guideOffset];
            v104 = v103;
            goto LABEL_111;
          }

          if (v101)
          {
            [v101 guideOffset];
            v104 = v105 - v96;
LABEL_111:
          }

          else
          {
LABEL_112:
            v106 = [v92 box];
            v107 = [v106 valign];

            if (v107 < 2)
            {
              v104 = v42 - v98;
            }

            else
            {
              v108 = v55 - v96;
              if (v107 == &dword_4)
              {
                v108 = (v55 - v96) * 0.5;
              }

              if (v107 == (&dword_0 + 2))
              {
                v104 = 0.0;
              }

              else
              {
                v104 = v108;
              }
            }
          }

          [v92 setComputedOrigin:{a3.x + v99, a3.y + v104}];
          if (v79 == &dword_0 + 2)
          {
            v80 = v80 - v94;
          }

          else
          {
            v80 = v80 + v94;
          }

          continue;
        }
      }

      v89 = [v87 countByEnumeratingWithState:&v113 objects:v137 count:16];
    }

    while (v89);
  }

  *&self->_specifiedHeight.priority = v109;
  self->_layoutSize.width = v55;
}

- (TUILayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (CGSize)layoutSize
{
  v2 = *&self->_specifiedHeight.priority;
  width = self->_layoutSize.width;
  result.height = width;
  result.width = v2;
  return result;
}

@end