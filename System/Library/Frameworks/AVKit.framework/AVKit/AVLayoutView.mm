@interface AVLayoutView
- (AVLayoutView)initWithFrame:(CGRect)a3;
- (BOOL)hasVisibleArrangedSubview;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (NSString)debugDescription;
- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)a3;
- (id)_includedItemsFromSubviews:(id)a3 inStackLayout:(id)a4 thatFitSize:(CGSize)a5;
- (id)backgroundColor;
- (id)prioritizedSizeThatFitsSize:(CGSize)a3;
- (void)_applyShapeStyle;
- (void)_insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4;
- (void)_removeArrangedSubview:(id)a3;
- (void)_updateStackLayoutIfNeeded;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateOfAllItems;
- (void)setArrangedSubviews:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setCollapsed:(BOOL)a3;
- (void)setContentLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setDebugIdentifier:(id)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setPrefersLowQualityEffects:(BOOL)a3;
- (void)setRowSpacing:(double)a3 afterRow:(unint64_t)a4;
- (void)setShapeStyle:(unint64_t)a3;
@end

@implementation AVLayoutView

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setIncluded:(BOOL)a3
{
  if (self->_included != a3)
  {
    self->_included = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed != a3)
  {
    self->_collapsed = a3;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (BOOL)isCollapsedOrExcluded
{
  if ([(AVLayoutView *)self isCollapsed]|| ![(AVLayoutView *)self isIncluded])
  {
    return 1;
  }

  return [(AVLayoutView *)self isRemoved];
}

- (id)_includedItemsFromSubviews:(id)a3 inStackLayout:(id)a4 thatFitSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v86 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 itemsThatFitSize:{width, height}];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v76 objects:v85 count:16];
  if (v12)
  {
    v13 = v12;
    v54 = v9;
    v14 = 0;
    v15 = *v77;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v77 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v76 + 1) + 8 * i) layoutAttributes];
        if ([v17 canSubstituteOtherAttributes])
        {

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v19 = v10;
          v20 = [v19 countByEnumeratingWithState:&v71 objects:v84 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v72;
            while (1)
            {
              if (*v72 != v22)
              {
                objc_enumerationMutation(v19);
              }

              if (!--v21)
              {
                v21 = [v19 countByEnumeratingWithState:&v71 objects:v84 count:16];
                if (!v21)
                {
                  break;
                }
              }
            }
          }

          v51 = v14;

          v23 = [MEMORY[0x1E695DF70] array];
          v24 = [MEMORY[0x1E695DF70] array];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v53 = v11;
          v25 = v11;
          v26 = [v25 countByEnumeratingWithState:&v67 objects:v83 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = 0;
            v29 = *v68;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v68 != v29)
                {
                  objc_enumerationMutation(v25);
                }

                v31 = [*(*(&v67 + 1) + 8 * j) layoutAttributes];
                if (([v19 containsObject:v31] & 1) == 0 && objc_msgSend(v31, "isIncluded"))
                {
                  [v23 addObject:v31];
                }

                if ([v19 containsObject:v31] && objc_msgSend(v31, "isIncluded") && objc_msgSend(v31, "canOverflowToAuxiliaryMenu"))
                {
                  [v24 addObject:v31];
                }

                if ([v31 canSubstituteOtherAttributes])
                {
                  v32 = v31;

                  v28 = v32;
                }
              }

              v27 = [v25 countByEnumeratingWithState:&v67 objects:v83 count:16];
            }

            while (v27);
          }

          else
          {
            v28 = 0;
          }

          v33 = [MEMORY[0x1E695DF70] array];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v18 = v23;
          v34 = [v18 countByEnumeratingWithState:&v63 objects:v82 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v64;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v64 != v36)
                {
                  objc_enumerationMutation(v18);
                }

                v38 = *(*(&v63 + 1) + 8 * k);
                if ([v38 canOverflowToAuxiliaryMenu])
                {
                  [v33 addObject:v38];
                }
              }

              v35 = [v18 countByEnumeratingWithState:&v63 objects:v82 count:16];
            }

            while (v35);
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v39 = v33;
          v40 = [v39 countByEnumeratingWithState:&v59 objects:v81 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v60;
            while (1)
            {
              if (*v60 != v42)
              {
                objc_enumerationMutation(v39);
              }

              if (!--v41)
              {
                v41 = [v39 countByEnumeratingWithState:&v59 objects:v81 count:16];
                if (!v41)
                {
                  break;
                }
              }
            }
          }

          v43 = ([v39 count] != 0) | v51;
          if (v43)
          {
            v52 = v43;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v44 = v24;
            v45 = [v44 countByEnumeratingWithState:&v55 objects:v80 count:16];
            if (v45)
            {
              v46 = v45;
              v47 = *v56;
              do
              {
                for (m = 0; m != v46; ++m)
                {
                  if (*v56 != v47)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v49 = *(*(&v55 + 1) + 8 * m);
                  if ([v49 displayPriority] <= 1)
                  {
                    [v49 setIncluded:0];
                  }
                }

                v46 = [v44 countByEnumeratingWithState:&v55 objects:v80 count:16];
              }

              while (v46);
            }

            v43 = v52;
          }

          [v28 setIncluded:v43 & 1];
          v9 = v54;
          v10 = [v54 itemsThatFitSize:{width, height}];

          v11 = v53;
          goto LABEL_66;
        }

        if ([v17 canOnlyAppearInControlOverflowMenu])
        {
          v14 |= [v17 isIncluded];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    if ((v14 & 1) == 0)
    {
      v9 = v54;
      goto LABEL_67;
    }

    v18 = _AVLog();
    v9 = v54;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v18, OS_LOG_TYPE_ERROR, "Has control that can only overflow, but no layout views can substitute others.", buf, 2u);
    }
  }

  else
  {
    v18 = v11;
  }

LABEL_66:

LABEL_67:

  return v10;
}

- (void)_removeArrangedSubview:(id)a3
{
  v7 = a3;
  v4 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v5 = [v4 indexOfObject:v7];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    [v6 removeObjectAtIndex:v5];

    [v7 removeFromSuperview];
    [(AVLayoutView *)self setStackLayoutNeedsUpdate:1];
    [(AVLayoutView *)self setNeedsLayout];
  }
}

- (void)_insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  [v7 insertObject:v6 atIndex:a4];

  [(AVLayoutView *)self insertSubview:v6 atIndex:a4 + 1];
  [(AVLayoutView *)self setStackLayoutNeedsUpdate:1];

  [(AVLayoutView *)self setNeedsLayout];
}

- (void)_applyShapeStyle
{
  v3 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = [(AVLayoutView *)self shapeStyle];
  if (v6 == 1)
  {
    [(AVLayoutView *)self bounds];
    Width = CGRectGetWidth(v34);
    [(AVLayoutView *)self bounds];
    Height = CGRectGetHeight(v35);
    v11 = 0;
    if (Width >= Height)
    {
      Height = Width;
    }

    v10 = Height * 0.5;
  }

  else if (v6)
  {
    v11 = 0;
    v10 = 0.0;
  }

  else
  {
    if (v5 == 5)
    {
      v7 = 0.77;
    }

    else
    {
      v7 = 1.0;
    }

    [(AVLayoutView *)self bounds];
    v8 = CGRectGetHeight(v33) <= v7 * 40.0;
    v9 = 8.0;
    if (!v8)
    {
      v9 = 16.0;
    }

    v10 = v7 * v9;
    v11 = 1;
  }

  v14 = [(AVLayoutView *)self backdropLayerView];
  v15 = [v14 layer];
  [v15 setCornerRadius:v10];

  v16 = [(AVLayoutView *)self backdropLayerView];
  v17 = [v16 layer];
  [v17 setMaskedCorners:15];

  v18 = [(AVLayoutView *)self backdropLayerView];
  v19 = [v18 layer];
  v20 = v19;
  v21 = MEMORY[0x1E69796E8];
  if (!v11)
  {
    v21 = MEMORY[0x1E69796E0];
  }

  [v19 setCornerCurve:*v21];

  if ([(AVLayoutView *)self effectiveUserInterfaceLayoutDirection])
  {
    v22 = 10;
  }

  else
  {
    v22 = 5;
  }

  v23 = [(AVLayoutView *)self secondaryMaterialOverlayView];
  [v23 frame];
  v25 = v24;
  v27 = v26;
  [(AVLayoutView *)self frame];
  if (v27 == v29 && v25 == v28)
  {
    v22 = 15;
  }

  v31 = [(AVLayoutView *)self secondaryMaterialOverlayView];
  [v31 _setCornerRadius:v11 continuous:v22 maskedCorners:v10];
}

- (void)_updateStackLayoutIfNeeded
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(AVLayoutView *)self stackLayoutNeedsUpdate])
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = [(AVLayoutView *)self arrangedSubviews];
    v26 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(AVLayoutView *)self arrangedSubviews];
    v5 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v5)
    {
      v25 = *v41;
      do
      {
        v6 = 0;
        do
        {
          if (*v41 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v40 + 1) + 8 * v6);
          v34 = 0;
          v35 = &v34;
          v36 = 0x3032000000;
          v37 = __Block_byref_object_copy__33301;
          v38 = __Block_byref_object_dispose__33302;
          v39 = 0;
          v28 = 0;
          v29 = &v28;
          v30 = 0x3032000000;
          v31 = __Block_byref_object_copy__33301;
          v32 = __Block_byref_object_dispose__33302;
          v33 = 0;
          if ([(AVLayoutView *)self effectiveUserInterfaceLayoutDirection]== 1)
          {
            v8 = 2 * ([(AVLayoutView *)self semanticContentAttribute]!= 1);
          }

          else
          {
            v8 = 0;
          }

          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __42__AVLayoutView__updateStackLayoutIfNeeded__block_invoke;
          v27[3] = &unk_1E7209F48;
          v27[4] = &v28;
          v27[5] = &v34;
          [v7 enumerateObjectsWithOptions:v8 usingBlock:v27];
          [v29[5] setNextAttributesInLayoutOrder:0];
          v9 = [v7 sortedArrayUsingComparator:&__block_literal_global_33303];
          v10 = [v9 firstObject];
          v11 = [v10 layoutAttributes];

          for (i = 1; i < [v7 count]; ++i)
          {
            v13 = [v9 objectAtIndexedSubscript:i];
            v14 = [v13 layoutAttributes];
            [v11 setNextAttributesInPriorityOrder:v14];

            v15 = [v13 layoutAttributes];

            v11 = v15;
          }

          [v11 setNextAttributesInPriorityOrder:0];
          v16 = [AVLayoutViewRowHead alloc];
          v17 = v35[5];
          v18 = [v9 firstObject];
          v19 = [v18 layoutAttributes];
          v20 = [(AVLayoutViewRowHead *)v16 initWithFirstAttributesInLayoutOrder:v17 firstAttributesInPriorityOrder:v19];

          [v26 addObject:v20];
          _Block_object_dispose(&v28, 8);

          _Block_object_dispose(&v34, 8);
          ++v6;
        }

        while (v6 != v5);
        v5 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v5);
    }

    v21 = [[AVCustomStackLayout alloc] initWithLayoutRowHeads:v26];
    [(AVLayoutView *)self setCurrentStackLayout:v21];

    v22 = [(AVLayoutView *)self debugIdentifier];
    v23 = [(AVLayoutView *)self currentStackLayout];
    [v23 setDebugIdentifier:v22];

    [(AVLayoutView *)self setStackLayoutNeedsUpdate:0];
  }
}

void __42__AVLayoutView__updateStackLayoutIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  v5 = [v4 layoutAttributes];
  v6 = v5;
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) setNextAttributesInLayoutOrder:v5];
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;
    v6 = v8;
  }

  v9 = [v4 layoutAttributes];

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __42__AVLayoutView__updateStackLayoutIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 layoutAttributes];
  v7 = [v6 displayPriority];
  v8 = [v5 layoutAttributes];
  v9 = [v8 displayPriority];

  if (v7 <= v9)
  {
    v11 = [v4 layoutAttributes];
    v12 = [v11 displayPriority];
    v13 = [v5 layoutAttributes];
    v10 = v12 < [v13 displayPriority];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AVLayoutView *)self debugIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p> - %@", v4, self, v5];

  return v6;
}

- (void)reevaluateHiddenStateOfAllItems
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) avkit_reevaluateHiddenStateOfItem:*(*(&v7 + 1) + 8 * v6)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setDebugIdentifier:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_debugIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_debugIdentifier, a3);
    v5 = [(AVLayoutView *)self currentStackLayout];
    [v5 setDebugIdentifier:v6];
  }
}

- (void)setRowSpacing:(double)a3 afterRow:(unint64_t)a4
{
  v6 = [(AVLayoutView *)self currentStackLayout];
  [v6 setRowSpacing:a4 afterRow:a3];
}

- (BOOL)hasVisibleArrangedSubview
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 _isInAWindow] && !objc_msgSend(v6, "avkit_isCompletelyTransparent"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (void)setContentLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  [(AVLayoutView *)self setDirectionalLayoutMargins:a3.top, a3.leading, a3.bottom, a3.trailing];

  [(AVLayoutView *)self setNeedsLayout];
}

- (void)setShapeStyle:(unint64_t)a3
{
  if (self->_shapeStyle != a3)
  {
    self->_shapeStyle = a3;
    [(AVLayoutView *)self _applyShapeStyle];
  }
}

- (void)setPrefersLowQualityEffects:(BOOL)a3
{
  if (self->_prefersLowQualityEffects != a3)
  {
    v4 = a3;
    self->_prefersLowQualityEffects = a3;
    v6 = [(AVLayoutView *)self backdropLayerView];
    [v6 setForceLowQualityEffect:v4];

    v7 = [(AVLayoutView *)self backdropLayerView];
    [v7 updateActiveBackdropEffectIfGroupLeader];
  }
}

- (void)setArrangedSubviews:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_arrangedSubviews, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v8 = [v6 setWithArray:v7];

  v25 = v8;
  v27 = self;
  if ([(AVLayoutView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v9 = 2 * ([(AVLayoutView *)self semanticContentAttribute]!= 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __36__AVLayoutView_setArrangedSubviews___block_invoke;
        v35[3] = &unk_1E7209EF8;
        v36 = v10;
        [v16 enumerateObjectsWithOptions:v9 usingBlock:v35];
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  v17 = [MEMORY[0x1E695DFD8] setWithArray:v10];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v26;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        if (([v17 containsObject:v23] & 1) == 0)
        {
          [(AVLayoutView *)v27 _removeArrangedSubview:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v20);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __36__AVLayoutView_setArrangedSubviews___block_invoke_2;
  v28[3] = &unk_1E7209F20;
  v29 = v18;
  v30 = v27;
  v24 = v18;
  [v10 enumerateObjectsUsingBlock:v28];
}

void __36__AVLayoutView_setArrangedSubviews___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) containsObject:?];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 flattenedArrangedSubviewsInLayoutOrder];
    v8 = [v7 indexOfObject:v9];

    if (v8 == a3)
    {
      goto LABEL_5;
    }

    [*(a1 + 40) _removeArrangedSubview:v9];
    v6 = *(a1 + 40);
  }

  [v6 _insertArrangedSubview:v9 atIndex:a3];
LABEL_5:
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(AVLayoutView *)self backdropLayerView];
  [v5 setCustomBackgroundColor:v4];
}

- (id)backgroundColor
{
  v2 = [(AVLayoutView *)self backdropLayerView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = AVLayoutView;
  [(AVLayoutView *)&v3 setNeedsLayout];
  [(AVLayoutView *)self setLayoutDirty:1];
}

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)a3
{
  v5 = [(AVLayoutView *)self currentStackLayout];
  [v5 layoutHeightThatFitsRowsStartingWithRow:a3];
  v7 = v6;
  [(AVLayoutView *)self contentLayoutMargins];
  v9 = v7 + v8;

  return v9;
}

- (id)prioritizedSizeThatFitsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AVLayoutView *)self _updateStackLayoutIfNeeded];
  v6 = [(AVLayoutView *)self currentStackLayout];
  v7 = [v6 prioritizedSizeThatFitsSize:{width, height}];

  return v7;
}

- (void)layoutSubviews
{
  v51 = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = AVLayoutView;
  [(AVView *)&v49 layoutSubviews];
  v3 = [(AVLayoutView *)self backdropLayerView];
  [(AVLayoutView *)self bounds];
  [v3 setFrame:?];

  if ([(AVLayoutView *)self isLayoutDirty])
  {
    [(AVLayoutView *)self _updateStackLayoutIfNeeded];
    [(AVLayoutView *)self frame];
    v5 = v4;
    v7 = v6;
    [(AVLayoutView *)self contentLayoutMargins];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(AVLayoutView *)self effectiveUserInterfaceLayoutDirection];
    v16 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    v17 = [(AVLayoutView *)self currentStackLayout];
    v18 = v5 - (v15 + v11);
    v19 = v7 - (v9 + v13);
    v20 = [(AVLayoutView *)self _includedItemsFromSubviews:v16 inStackLayout:v17 thatFitSize:v18, v19];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v21 = [(AVLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v22)
    {
      v23 = *v46;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v45 + 1) + 8 * i);
          v26 = [v25 layoutAttributes];
          [v26 setCollapsed:{objc_msgSend(v20, "containsObject:", v26) ^ 1}];
          [v25 layoutAttributesDidChange];
        }

        v22 = [v21 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v22);
    }

    v41 = 0;
    v42 = &v41;
    v43 = 0x2020000000;
    v44 = 0;
    v27 = [(AVLayoutView *)self currentStackLayout];
    v28 = [v27 layoutFramesInBoundingSize:{v18, v19}];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __30__AVLayoutView_layoutSubviews__block_invoke;
    v40[3] = &unk_1E7209ED0;
    v40[4] = self;
    v40[5] = &v41;
    [v28 enumerateObjectsUsingBlock:v40];
    if ((v42[3] & 1) == 0)
    {
      v29 = [v28 firstObject];
      [v29 CGRectValue];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = [(AVLayoutView *)self secondaryMaterialOverlayView];
      [v38 setFrame:{v31, v33, v35, v37}];

      v39 = [(AVLayoutView *)self secondaryMaterialOverlayView];
      [v39 setHidden:1];
    }

    [(AVLayoutView *)self setLayoutDirty:0];

    _Block_object_dispose(&v41, 8);
  }

  [(AVLayoutView *)self _applyShapeStyle];
}

void __30__AVLayoutView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) flattenedArrangedSubviewsInLayoutOrder];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [*(a1 + 32) flattenedArrangedSubviewsInLayoutOrder];
    v9 = [v8 objectAtIndexedSubscript:a3];

    [v5 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [*(a1 + 32) contentLayoutMargins];
    v19 = v11 + v18;
    [*(a1 + 32) contentLayoutMargins];
    v21 = v13 + v20;
    [v9 frame];
    v40.origin.x = v19;
    v40.origin.y = v21;
    v40.size.width = v15;
    v40.size.height = v17;
    if (!CGRectEqualToRect(v38, v40))
    {
      [v9 setFrame:{v19, v21, v15, v17}];
    }

    v22 = [v9 layoutAttributes];
    if ([v22 prefersSecondaryMaterialOverlay])
    {
      v23 = [v9 layoutAttributes];
      if ([v23 isCollapsedOrExcluded])
      {
      }

      else
      {
        v27 = *(*(*(a1 + 40) + 8) + 24);

        if (v27)
        {
          goto LABEL_8;
        }

        *(*(*(a1 + 40) + 8) + 24) = 1;
        v28 = [*(a1 + 32) secondaryMaterialOverlayView];
        [v28 setHidden:0];

        v29 = [*(a1 + 32) secondaryMaterialOverlayView];
        [v29 frame];
        v41.origin.x = v19;
        v41.origin.y = v21;
        v41.size.width = v15;
        v41.size.height = v17;
        v30 = CGRectEqualToRect(v39, v41);

        if (v30)
        {
          goto LABEL_8;
        }

        v22 = [*(a1 + 32) secondaryMaterialOverlayView];
        [v22 setFrame:{v19, v21, v15, v17}];
      }
    }

LABEL_8:
    goto LABEL_12;
  }

  v24 = _AVLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [*(a1 + 32) debugIdentifier];
    v26 = [*(a1 + 32) flattenedArrangedSubviewsInLayoutOrder];
    v31 = 138412802;
    v32 = v25;
    v33 = 2048;
    v34 = [v26 count];
    v35 = 2048;
    v36 = a3;
    _os_log_impl(&dword_18B49C000, v24, OS_LOG_TYPE_DEFAULT, "%@ - Computed more frames than we have arranged subviews. Number of arranged subviews: %ld -- current frame index: %ld", &v31, 0x20u);
  }

LABEL_12:
}

- (AVLayoutView)initWithFrame:(CGRect)a3
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = AVLayoutView;
  v3 = [(AVView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_collapsed = 0;
    v3->_included = 1;
    v5 = [MEMORY[0x1E695DF70] array];
    flattenedArrangedSubviewsInLayoutOrder = v4->_flattenedArrangedSubviewsInLayoutOrder;
    v4->_flattenedArrangedSubviewsInLayoutOrder = v5;

    v7 = objc_alloc_init(AVCustomStackLayout);
    currentStackLayout = v4->_currentStackLayout;
    v4->_currentStackLayout = v7;

    [(AVView *)v4 setHasBackdropView:1];
    v9 = [AVCABackdropLayerView alloc];
    [(AVLayoutView *)v4 bounds];
    v10 = [(AVCABackdropLayerView *)v9 initWithFrame:?];
    backdropLayerView = v4->_backdropLayerView;
    v4->_backdropLayerView = v10;

    v12 = [(AVCABackdropLayerView *)v4->_backdropLayerView layer];
    [v12 setMasksToBounds:1];

    [(AVLayoutView *)v4 addSubview:v4->_backdropLayerView];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    [(UIVisualEffectView *)v13 setUserInteractionEnabled:0];
    v14 = MEMORY[0x1E69DD290];
    v15 = [MEMORY[0x1E69DC888] blackColor];
    v16 = [v14 effectCompositingColor:v15 withMode:23 alpha:0.06];
    v23[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(UIVisualEffectView *)v13 setBackgroundEffects:v17];

    secondaryMaterialOverlayView = v4->_secondaryMaterialOverlayView;
    v4->_secondaryMaterialOverlayView = v13;
    v19 = v13;

    [(UIVisualEffectView *)v4->_secondaryMaterialOverlayView setHidden:1];
    v20 = [(AVLayoutView *)v4 secondaryMaterialOverlayView];
    [(AVLayoutView *)v4 addSubview:v20];

    [(AVLayoutView *)v4 setInsetsLayoutMarginsFromSafeArea:0];
    [(AVLayoutView *)v4 setClipsToBounds:1];
  }

  return v4;
}

@end