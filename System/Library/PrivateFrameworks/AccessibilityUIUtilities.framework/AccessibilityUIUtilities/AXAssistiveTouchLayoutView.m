@interface AXAssistiveTouchLayoutView
+ (NSString)imageMaximumContentSizeCategory;
+ (NSString)labelMaximumContentSizeCategory;
+ (UIFont)labelFont;
+ (UITraitCollection)traitCollectionForImagePreferredContentSizeCategory;
+ (UITraitCollection)traitCollectionForLabelPreferredContentSizeCategory;
+ (double)_layoutViewSideLengthScaledFromDefaultLength:(double)a3 labelContentSizeCategory:(id)a4;
+ (double)defaultSideLength;
+ (double)layoutViewSideLengthScaledFromDefaultLength:(double)a3;
+ (id)_preferredContentSizeCategoryCappedByMinimumContentSizeCategory:(id)a3 maximumContentSizeCategory:(id)a4;
+ (id)_traitCollectionForMinimumContentSizeCategory:(id)a3 maximumContentSizeCategory:(id)a4;
+ (void)labelMaximumContentSizeCategory;
- (id)_setUpConstraintsForPreferredPositionsForItems:(id)a3 positions:(id)a4;
- (id)_setUpConstraintsToAlignItems:(id)a3 rows:(id)a4 columns:(id)a5;
- (id)_setUpConstraintsToAvoidCollisions:(id)a3 rows:(id)a4 columns:(id)a5 clockwiseOctagonalLocations:(id)a6;
- (void)_enableAutoLayoutForAllItems:(id)a3;
- (void)_enumerateListsOfLocations:(id)a3 items:(id)a4 withBlock:(id)a5;
- (void)centerItems:(id)a3 withView:(id)a4;
- (void)layoutItemsByLocation:(id)a3 hasBackButton:(BOOL)a4;
- (void)layoutItemsByLocation:(id)a3 positions:(id)a4 rows:(id)a5 columns:(id)a6 clockwiseOctagonalLocations:(id)a7 horizontallyCenteredLocation:(id)a8;
@end

@implementation AXAssistiveTouchLayoutView

+ (double)defaultSideLength
{
  IsPad = AXDeviceIsPad();
  result = 295.0;
  if (IsPad)
  {
    return 390.0;
  }

  return result;
}

+ (double)layoutViewSideLengthScaledFromDefaultLength:(double)a3
{
  v5 = [a1 labelMinimumContentSizeCategory];
  v6 = [a1 labelMaximumContentSizeCategory];
  v7 = [a1 _preferredContentSizeCategoryCappedByMinimumContentSizeCategory:v5 maximumContentSizeCategory:v6];
  [a1 _layoutViewSideLengthScaledFromDefaultLength:v7 labelContentSizeCategory:a3];
  v9 = v8;

  return v9;
}

+ (double)_layoutViewSideLengthScaledFromDefaultLength:(double)a3 labelContentSizeCategory:(id)a4
{
  v6 = a4;
  v7 = [a1 fontMetrics];
  v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];
  [v7 scaledValueForValue:v8 compatibleWithTraitCollection:a3];
  v10 = v9;

  v11 = [a1 _imageMaximumContentSizeCategoryIndependentOfLabel];
  v12 = UIContentSizeCategoryCompareToCategory(v6, v11);

  if (v12 == NSOrderedDescending)
  {
    v13 = [a1 fontMetrics];
    v14 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v11];
    [v13 scaledValueForValue:v14 compatibleWithTraitCollection:a3];
    v16 = v15;

    v10 = v16 + (v10 - v16) / 3.0;
  }

  return v10;
}

+ (NSString)labelMaximumContentSizeCategory
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69DDC90];
  AXDeviceGetMainScreenBounds();
  Width = CGRectGetWidth(v33);
  if (Width > 0.0)
  {
    v5 = Width;
    [a1 minimumOuterPadding];
    v7 = labelMaximumContentSizeCategory_cachedMaximumContentSizeCategory;
    if (!labelMaximumContentSizeCategory_cachedMaximumContentSizeCategory)
    {
      v8 = v6;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = *MEMORY[0x1E69DDC70];
      v10 = *MEMORY[0x1E69DDC60];
      v29[0] = *MEMORY[0x1E69DDC70];
      v29[1] = v10;
      v11 = *MEMORY[0x1E69DDC50];
      v29[2] = *MEMORY[0x1E69DDC58];
      v29[3] = v11;
      v12 = *MEMORY[0x1E69DDC38];
      v29[4] = *MEMORY[0x1E69DDC40];
      v29[5] = v12;
      v13 = *MEMORY[0x1E69DDC28];
      v29[6] = *MEMORY[0x1E69DDC30];
      v29[7] = v13;
      v29[8] = *MEMORY[0x1E69DDC20];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:{9, 0}];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = v5 + v8 * -2.0;
        v18 = *v26;
LABEL_5:
        v19 = 0;
        while (1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          [a1 defaultSideLength];
          [a1 _layoutViewSideLengthScaledFromDefaultLength:v20 labelContentSizeCategory:?];
          if (v21 > v17)
          {
            break;
          }

          objc_storeStrong(&labelMaximumContentSizeCategory_cachedMaximumContentSizeCategory, v20);
          if (v16 == ++v19)
          {
            v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
            if (v16)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v7 = labelMaximumContentSizeCategory_cachedMaximumContentSizeCategory;
      if (!labelMaximumContentSizeCategory_cachedMaximumContentSizeCategory)
      {
        v22 = ASTLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[(AXAssistiveTouchLayoutView *)v22];
        }

        objc_storeStrong(&labelMaximumContentSizeCategory_cachedMaximumContentSizeCategory, v9);
        v7 = labelMaximumContentSizeCategory_cachedMaximumContentSizeCategory;
      }
    }

    v23 = v7;

    v3 = v23;
  }

  return v3;
}

+ (NSString)imageMaximumContentSizeCategory
{
  v3 = [a1 labelMaximumContentSizeCategory];
  v4 = [a1 _imageMaximumContentSizeCategoryIndependentOfLabel];
  v5 = AXUIContentSizeCategoryMin(v3, v4);

  return v5;
}

+ (id)_preferredContentSizeCategoryCappedByMinimumContentSizeCategory:(id)a3 maximumContentSizeCategory:(id)a4
{
  v5 = MEMORY[0x1E69DC668];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedApplication];
  v9 = [v8 preferredContentSizeCategory];

  v10 = AXUIContentSizeCategoryMax(v9, v7);

  v11 = AXUIContentSizeCategoryMin(v10, v6);

  return v11;
}

+ (id)_traitCollectionForMinimumContentSizeCategory:(id)a3 maximumContentSizeCategory:(id)a4
{
  v4 = MEMORY[0x1E69DD1B8];
  v5 = [a1 _preferredContentSizeCategoryCappedByMinimumContentSizeCategory:a3 maximumContentSizeCategory:a4];
  v6 = [v4 traitCollectionWithPreferredContentSizeCategory:v5];

  return v6;
}

+ (UITraitCollection)traitCollectionForLabelPreferredContentSizeCategory
{
  v3 = [a1 labelMinimumContentSizeCategory];
  v4 = [a1 labelMaximumContentSizeCategory];
  v5 = [a1 _traitCollectionForMinimumContentSizeCategory:v3 maximumContentSizeCategory:v4];

  return v5;
}

+ (UITraitCollection)traitCollectionForImagePreferredContentSizeCategory
{
  v3 = [a1 imageMinimumContentSizeCategory];
  v4 = [a1 imageMaximumContentSizeCategory];
  v5 = [a1 _traitCollectionForMinimumContentSizeCategory:v3 maximumContentSizeCategory:v4];

  return v5;
}

+ (UIFont)labelFont
{
  IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
  v4 = MEMORY[0x1E69DB878];
  IsPad = AXDeviceIsPad();
  v6 = 14.0;
  if (IsPad)
  {
    v6 = 16.0;
  }

  if (IsBoldTextEnabled)
  {
    [v4 systemFontOfSize:v6];
  }

  else
  {
    [v4 _lightSystemFontOfSize:v6];
  }
  v7 = ;
  v8 = [a1 fontMetrics];
  v9 = [a1 traitCollectionForLabelPreferredContentSizeCategory];
  v10 = [v8 scaledFontForFont:v7 compatibleWithTraitCollection:v9];

  return v10;
}

- (void)layoutItemsByLocation:(id)a3 hasBackButton:(BOOL)a4
{
  v45 = a4;
  v77 = *MEMORY[0x1E69E9840];
  v56 = a3;
  [v56 count];
  v5 = AXAssistiveTouchNamedLayout();
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v7 = AXAssistiveTouchLocationsForLayout();
  v8 = [v7 countByEnumeratingWithState:&v59 objects:v76 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v60;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v59 + 1) + 8 * i);
        v13 = MEMORY[0x1E696B098];
        AXAssitiveTouchPosition();
        v14 = [v13 valueWithCGPoint:?];
        [v6 setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v59 objects:v76 count:16];
    }

    while (v9);
  }

  v58 = v5 - 3;
  v15 = *MEMORY[0x1E69894A0];
  v57 = *MEMORY[0x1E69894A8];
  v16 = *MEMORY[0x1E69894A8];
  v74[0] = *MEMORY[0x1E69894A0];
  v74[1] = v16;
  v75 = *MEMORY[0x1E69894B0];
  v17 = v75;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
  v19 = v18;
  v55 = self;
  v48 = v17;
  if ((v5 - 5) > 1)
  {
    v21 = v15;
    v22 = v18;
  }

  else
  {
    v73[0] = v15;
    v73[1] = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];

    v21 = v15;
    v22 = v20;
  }

  v47 = *MEMORY[0x1E6989498];
  v72[0] = *MEMORY[0x1E6989488];
  v23 = v72[0];
  v72[1] = v47;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
  v26 = *MEMORY[0x1E6989478];
  v70[0] = *MEMORY[0x1E6989470];
  v25 = v70[0];
  v70[1] = v26;
  v71 = *MEMORY[0x1E6989480];
  v27 = v71;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
  v54 = v22;
  v69[0] = v22;
  v69[1] = v24;
  v50 = v24;
  v69[2] = v53;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
  v46 = v21;
  v68[0] = v21;
  v68[1] = v23;
  v68[2] = v25;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
  v67[0] = v57;
  v67[1] = v26;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v66[0] = v48;
  v66[1] = v47;
  v66[2] = v27;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
  v51 = v28;
  v65[0] = v28;
  v65[1] = v29;
  v65[2] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  v49 = v29;
  if (v58 <= 1)
  {
    v64 = v57;
    v32 = &v64;
    v33 = v47;
    v34 = v23;
    v35 = v23;
    v36 = v57;
    v37 = v56;
    v38 = v50;
LABEL_15:
    v32[1] = v36;
    v32[2] = v33;
    v32[3] = v47;
    v32[4] = v26;
    v32[5] = v26;
    v32[6] = v34;
    v32[7] = v35;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    v40 = v38;
    goto LABEL_17;
  }

  v34 = v23;
  if ((v5 - 5) <= 1)
  {
    v33 = v48;
    v63 = v57;
    v32 = &v63;
    v36 = v57;
    v37 = v56;
    v38 = v50;
    v35 = v46;
    goto LABEL_15;
  }

  v39 = 0;
  v37 = v56;
  v40 = v50;
LABEL_17:
  v41 = 0;
  if (v5 > 6)
  {
    if (v5 != 7)
    {
      if (v5 != 8)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    v43 = v26;
    v44 = v26;

    v41 = v44;
  }

  else
  {
    if (v58 < 4)
    {
LABEL_19:
      v41 = v57;
      goto LABEL_29;
    }

    if (v5 == 1)
    {
      v42 = *MEMORY[0x1E6989490];
      if (v45)
      {
        v42 = v26;
      }

      v41 = v42;
    }
  }

LABEL_29:
  [(AXAssistiveTouchLayoutView *)v55 layoutItemsByLocation:v37 positions:v6 rows:v52 columns:v31 clockwiseOctagonalLocations:v39 horizontallyCenteredLocation:v41];
}

- (void)layoutItemsByLocation:(id)a3 positions:(id)a4 rows:(id)a5 columns:(id)a6 clockwiseOctagonalLocations:(id)a7 horizontallyCenteredLocation:(id)a8
{
  v32 = a3;
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [v32 allValues];
  [(AXAssistiveTouchLayoutView *)self _enableAutoLayoutForAllItems:v19];

  v20 = [(AXAssistiveTouchLayoutView *)self itemConstraints];

  if (v20)
  {
    v21 = MEMORY[0x1E696ACD8];
    v22 = [(AXAssistiveTouchLayoutView *)self itemConstraints];
    [v21 deactivateConstraints:v22];

    [(AXAssistiveTouchLayoutView *)self setItemConstraints:0];
  }

  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [(AXAssistiveTouchLayoutView *)self _setUpConstraintsForPreferredPositionsForItems:v32 positions:v18];

  [v23 addObjectsFromArray:v24];
  v25 = [(AXAssistiveTouchLayoutView *)self _setUpConstraintsToAlignItems:v32 rows:v17 columns:v16];
  [v23 addObjectsFromArray:v25];

  v26 = [(AXAssistiveTouchLayoutView *)self _setUpConstraintsToAvoidCollisions:v32 rows:v17 columns:v16 clockwiseOctagonalLocations:v15];

  [v23 addObjectsFromArray:v26];
  if (v14)
  {
    v27 = [v32 objectForKeyedSubscript:v14];
    v28 = v27;
    if (v27)
    {
      v29 = [v27 centerXAnchor];
      v30 = [(AXAssistiveTouchLayoutView *)self centerXAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [v23 addObject:v31];
    }

    else
    {
      _AXAssert();
    }
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v23];
  [(AXAssistiveTouchLayoutView *)self setItemConstraints:v23];
}

- (id)_setUpConstraintsForPreferredPositionsForItems:(id)a3 positions:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v44 = a4;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v7 = [(AXAssistiveTouchLayoutView *)self positioningLayoutGuides];
  v8 = [v7 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v62;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v62 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AXAssistiveTouchLayoutView *)self removeLayoutGuide:*(*(&v61 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v9);
  }

  v12 = [MEMORY[0x1E695DF70] array];
  [(AXAssistiveTouchLayoutView *)self setPositioningLayoutGuides:v12];

  v43 = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v6;
  v45 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v45)
  {
    v41 = *v58;
    v42 = self;
    do
    {
      v13 = 0;
      do
      {
        if (*v58 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v13;
        v14 = *(*(&v57 + 1) + 8 * v13);
        v15 = objc_alloc_init(MEMORY[0x1E69DCC20]);
        [(AXAssistiveTouchLayoutView *)self addLayoutGuide:v15];
        v16 = [(AXAssistiveTouchLayoutView *)self positioningLayoutGuides];
        [v16 addObject:v15];

        v17 = [obj objectForKeyedSubscript:v14];
        v18 = [v44 objectForKeyedSubscript:v14];
        [v18 CGPointValue];
        v20 = v19;
        v22 = v21;

        v23 = [v15 widthAnchor];
        v24 = [(AXAssistiveTouchLayoutView *)self widthAnchor];
        v25 = [v23 constraintEqualToAnchor:v24 multiplier:v20];

        LODWORD(v26) = 1131937792;
        [v25 setPriority:v26];
        v27 = [v15 heightAnchor];
        v28 = [(AXAssistiveTouchLayoutView *)self heightAnchor];
        v29 = [v27 constraintEqualToAnchor:v28 multiplier:v22];

        v52 = v29;
        LODWORD(v30) = 1131937792;
        [v29 setPriority:v30];
        v55 = [v15 topAnchor];
        v54 = [(AXAssistiveTouchLayoutView *)self topAnchor];
        v53 = [v55 constraintEqualToAnchor:v54];
        v65[0] = v53;
        [v15 bottomAnchor];
        v50 = v49 = v17;
        v31 = v17;
        v51 = [v17 imageView];
        v48 = [v51 centerYAnchor];
        v47 = [v50 constraintEqualToAnchor:v48];
        v65[1] = v47;
        v65[2] = v29;
        v32 = [v15 leftAnchor];
        v33 = [(AXAssistiveTouchLayoutView *)self leftAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
        v65[3] = v34;
        v35 = [v15 rightAnchor];
        v36 = [v31 imageView];
        v37 = [v36 centerXAnchor];
        v38 = [v35 constraintEqualToAnchor:v37];
        v65[4] = v38;
        v65[5] = v25;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:6];
        [v43 addObjectsFromArray:v39];

        self = v42;
        v13 = v56 + 1;
      }

      while (v45 != v56 + 1);
      v45 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v45);
  }

  return v43;
}

- (void)_enumerateListsOfLocations:(id)a3 items:(id)a4 withBlock:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v7);
        }

        v24 = v10;
        v11 = *(*(&v29 + 1) + 8 * v10);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (!v13)
        {
          v15 = 0;
          goto LABEL_22;
        }

        v14 = v13;
        v15 = 0;
        v16 = *v26;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = [v8 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
            v19 = v18;
            if (v18)
            {
              v20 = v15 == 0;
            }

            else
            {
              v20 = 1;
            }

            if (v20)
            {
              if (!v18)
              {
                goto LABEL_18;
              }
            }

            else
            {
              v9[2](v9, v15, v18);
            }

            v21 = v19;

            v15 = v21;
LABEL_18:
          }

          v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v14);
LABEL_22:

        v10 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }
}

- (id)_setUpConstraintsToAlignItems:(id)a3 rows:(id)a4 columns:(id)a5
{
  v8 = MEMORY[0x1E695DF70];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 array];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__AXAssistiveTouchLayoutView__setUpConstraintsToAlignItems_rows_columns___block_invoke;
  v20[3] = &unk_1E812E6C8;
  v13 = v12;
  v21 = v13;
  [(AXAssistiveTouchLayoutView *)self _enumerateListsOfLocations:v10 items:v11 withBlock:v20];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__AXAssistiveTouchLayoutView__setUpConstraintsToAlignItems_rows_columns___block_invoke_2;
  v18[3] = &unk_1E812E6C8;
  v14 = v13;
  v19 = v14;
  [(AXAssistiveTouchLayoutView *)self _enumerateListsOfLocations:v9 items:v11 withBlock:v18];

  v15 = v19;
  v16 = v14;

  return v14;
}

void __73__AXAssistiveTouchLayoutView__setUpConstraintsToAlignItems_rows_columns___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v10 = [a3 imageView];
  v6 = [v10 centerYAnchor];
  v7 = [v5 imageView];

  v8 = [v7 centerYAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v4 addObject:v9];
}

void __73__AXAssistiveTouchLayoutView__setUpConstraintsToAlignItems_rows_columns___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v10 = [a3 imageView];
  v6 = [v10 centerXAnchor];
  v7 = [v5 imageView];

  v8 = [v7 centerXAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v4 addObject:v9];
}

- (id)_setUpConstraintsToAvoidCollisions:(id)a3 rows:(id)a4 columns:(id)a5 clockwiseOctagonalLocations:(id)a6
{
  v130 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v110 = a4;
  v109 = a5;
  v108 = a6;
  v11 = [MEMORY[0x1E695DF70] array];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v111 = v10;
  v12 = [v10 allValues];
  v13 = [v12 countByEnumeratingWithState:&v120 objects:v129 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v121;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v121 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v120 + 1) + 8 * i);
        v18 = [v17 leadingAnchor];
        v19 = [(AXAssistiveTouchLayoutView *)self leadingAnchor];
        v20 = [v18 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v19 multiplier:1.0];
        [v11 addObject:v20];

        v21 = [(AXAssistiveTouchLayoutView *)self trailingAnchor];
        v22 = [v17 trailingAnchor];
        v23 = [v21 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v22 multiplier:1.0];
        [v11 addObject:v23];
      }

      v14 = [v12 countByEnumeratingWithState:&v120 objects:v129 count:16];
    }

    while (v14);
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v24 = [v111 allValues];
  v25 = [v24 countByEnumeratingWithState:&v116 objects:v128 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v117;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v117 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v116 + 1) + 8 * j);
        v30 = [v29 topAnchor];
        v31 = [(AXAssistiveTouchLayoutView *)self topAnchor];
        v32 = [v30 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v31 multiplier:1.0];
        [v11 addObject:v32];

        v33 = [(AXAssistiveTouchLayoutView *)self bottomAnchor];
        v34 = [v29 bottomAnchor];
        v35 = [v33 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v34 multiplier:1.0];
        [v11 addObject:v35];
      }

      v26 = [v24 countByEnumeratingWithState:&v116 objects:v128 count:16];
    }

    while (v26);
  }

  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __106__AXAssistiveTouchLayoutView__setUpConstraintsToAvoidCollisions_rows_columns_clockwiseOctagonalLocations___block_invoke;
  v114[3] = &unk_1E812E6C8;
  v36 = v11;
  v115 = v36;
  [(AXAssistiveTouchLayoutView *)self _enumerateListsOfLocations:v110 items:v111 withBlock:v114];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __106__AXAssistiveTouchLayoutView__setUpConstraintsToAvoidCollisions_rows_columns_clockwiseOctagonalLocations___block_invoke_2;
  v112[3] = &unk_1E812E6C8;
  v37 = v36;
  v113 = v37;
  [(AXAssistiveTouchLayoutView *)self _enumerateListsOfLocations:v109 items:v111 withBlock:v112];
  v38 = v108;
  if (v108)
  {
    if ([v108 count] != 8)
    {
      _AXAssert();
    }

    v107 = v37;
    v39 = [v108 objectAtIndexedSubscript:0];
    v40 = [v111 objectForKeyedSubscript:v39];

    v41 = [v108 objectAtIndexedSubscript:1];
    v106 = [v111 objectForKeyedSubscript:v41];

    v42 = [v108 objectAtIndexedSubscript:2];
    v104 = [v111 objectForKeyedSubscript:v42];

    v43 = [v108 objectAtIndexedSubscript:3];
    v102 = [v111 objectForKeyedSubscript:v43];

    v44 = [v108 objectAtIndexedSubscript:4];
    v101 = [v111 objectForKeyedSubscript:v44];

    v45 = [v108 objectAtIndexedSubscript:5];
    v105 = [v111 objectForKeyedSubscript:v45];

    v46 = [v108 objectAtIndexedSubscript:6];
    v103 = [v111 objectForKeyedSubscript:v46];

    v47 = [v108 objectAtIndexedSubscript:7];
    v48 = v40;
    v49 = [v111 objectForKeyedSubscript:v47];

    v99 = v49;
    v100 = v48;
    if (v48 && v49)
    {
      v95 = [v48 label];
      v50 = [v95 leftAnchor];
      v51 = [v49 imageViewContainerView];
      v52 = [v51 rightAnchor];
      v53 = [v50 constraintGreaterThanOrEqualToAnchor:v52];
      v127[0] = v53;
      v54 = [v100 label];
      v55 = [v54 bottomAnchor];
      v56 = [v49 label];
      v57 = [v56 topAnchor];
      v58 = [v55 constraintLessThanOrEqualToAnchor:v57];
      v127[1] = v58;
      v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v127 count:2];
      [v107 addObjectsFromArray:v59];
    }

    if (v106 && v104)
    {
      v60 = [v106 label];
      v96 = [v60 rightAnchor];
      v61 = [v104 imageViewContainerView];
      v62 = [v61 leftAnchor];
      v63 = [v96 constraintLessThanOrEqualToAnchor:v62];
      v126[0] = v63;
      v64 = [v106 label];
      v65 = [v64 bottomAnchor];
      v66 = [v104 label];
      v67 = [v66 topAnchor];
      v68 = [v65 constraintLessThanOrEqualToAnchor:v67];
      v126[1] = v68;
      v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
      [v107 addObjectsFromArray:v69];
    }

    if (v105 && v103)
    {
      v70 = [v103 label];
      v97 = [v70 rightAnchor];
      v71 = [v105 imageViewContainerView];
      v72 = [v71 leftAnchor];
      v73 = [v97 constraintLessThanOrEqualToAnchor:v72];
      v125[0] = v73;
      v74 = [v103 label];
      v75 = [v74 bottomAnchor];
      v76 = [v105 label];
      v77 = [v76 topAnchor];
      v78 = [v75 constraintLessThanOrEqualToAnchor:v77];
      v125[1] = v78;
      v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
      [v107 addObjectsFromArray:v79];
    }

    v81 = v101;
    v80 = v102;
    if (v101 && v102)
    {
      v82 = [v102 label];
      v98 = [v82 leftAnchor];
      v83 = [v101 imageViewContainerView];
      v84 = [v83 rightAnchor];
      v85 = [v98 constraintGreaterThanOrEqualToAnchor:v84];
      v124[0] = v85;
      v86 = [v102 label];
      v87 = [v86 bottomAnchor];
      v88 = [v101 label];
      v89 = [v88 topAnchor];
      v90 = [v87 constraintLessThanOrEqualToAnchor:v89];
      v124[1] = v90;
      v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
      [v107 addObjectsFromArray:v91];

      v81 = v101;
      v80 = v102;
    }

    v37 = v107;
    v38 = v108;
  }

  v92 = v113;
  v93 = v37;

  return v37;
}

void __106__AXAssistiveTouchLayoutView__setUpConstraintsToAvoidCollisions_rows_columns_clockwiseOctagonalLocations___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = [a3 leftAnchor];
  v6 = [v5 rightAnchor];

  v7 = [v8 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v6 multiplier:1.0];
  [v4 addObject:v7];
}

void __106__AXAssistiveTouchLayoutView__setUpConstraintsToAvoidCollisions_rows_columns_clockwiseOctagonalLocations___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v6 topAnchor];
  v9 = [v7 bottomAnchor];
  v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9 constant:1.0];
  [v5 addObject:v10];

  v11 = [v6 topAnchor];

  v12 = [v7 label];

  v13 = [v12 lastBaselineAnchor];
  v15 = [v11 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v13 multiplier:1.0];

  LODWORD(v14) = 1131937792;
  [v15 setPriority:v14];
  [*(a1 + 32) addObject:v15];
}

- (void)centerItems:(id)a3 withView:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(AXAssistiveTouchLayoutView *)self _enableAutoLayoutForAllItems:v6];
  v8 = [(AXAssistiveTouchLayoutView *)self itemConstraints];

  if (v8)
  {
    v9 = MEMORY[0x1E696ACD8];
    v10 = [(AXAssistiveTouchLayoutView *)self itemConstraints];
    [v9 deactivateConstraints:v10];

    [(AXAssistiveTouchLayoutView *)self setItemConstraints:0];
  }

  v27 = self;
  v11 = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        v18 = [v17 window];

        if (v18)
        {
          v19 = [v17 centerXAnchor];
          v20 = [v7 centerXAnchor];
          v21 = [v19 constraintEqualToAnchor:v20];
          [v11 addObject:v21];

          v22 = [v17 centerYAnchor];
          v23 = [v7 centerYAnchor];
          v24 = [v22 constraintEqualToAnchor:v23];
          [v11 addObject:v24];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  [(AXAssistiveTouchLayoutView *)v27 setItemConstraints:v11];
  v25 = MEMORY[0x1E696ACD8];
  v26 = [(AXAssistiveTouchLayoutView *)v27 itemConstraints];
  [v25 activateConstraints:v26];
}

- (void)_enableAutoLayoutForAllItems:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        v9 = [v8 imageView];
        LODWORD(v10) = 1148846080;
        [v9 setContentCompressionResistancePriority:0 forAxis:v10];

        v11 = [v8 imageView];
        LODWORD(v12) = 1148846080;
        [v11 setContentCompressionResistancePriority:1 forAxis:v12];

        v13 = [v8 label];
        LODWORD(v14) = 1148846080;
        [v13 setContentCompressionResistancePriority:1 forAxis:v14];

        v15 = [v8 imageView];
        LODWORD(v16) = 1148846080;
        [v15 setContentHuggingPriority:0 forAxis:v16];

        v17 = [v8 imageView];
        LODWORD(v18) = 1148846080;
        [v17 setContentHuggingPriority:1 forAxis:v18];

        v19 = [v8 label];
        LODWORD(v20) = 1148846080;
        [v19 setContentHuggingPriority:0 forAxis:v20];

        v21 = [v8 label];
        LODWORD(v22) = 1148846080;
        [v21 setContentHuggingPriority:1 forAxis:v22];
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }
}

+ (void)labelMaximumContentSizeCategory
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&dword_1C0DFB000, log, OS_LOG_TYPE_ERROR, "Unable to find any content size category >= Large that would fit the AssistiveTouch menu. Device width: %f", &v2, 0xCu);
}

@end