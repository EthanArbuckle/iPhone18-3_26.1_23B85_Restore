@interface AVGlassLayoutView
- (AVGlassLayoutView)initWithFrame:(CGRect)a3;
- (BOOL)hasVisibleArrangedSubview;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (NSString)debugDescription;
- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)a3;
- (id)_includedItemsFromSubviews:(id)a3 inStackLayout:(id)a4 thatFitSize:(CGSize)a5;
- (id)prioritizedSizeThatFitsSize:(CGSize)a3;
- (void)_applyShapeStyle;
- (void)_insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4;
- (void)_removeArrangedSubview:(id)a3;
- (void)_updateStackLayoutIfNeeded;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateOfAllItems;
- (void)setArrangedSubviews:(id)a3;
- (void)setCollapsed:(BOOL)a3;
- (void)setContentLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)setDebugIdentifier:(id)a3;
- (void)setHasFullScreenAppearance:(BOOL)a3;
- (void)setIncluded:(BOOL)a3;
- (void)setNeedsLayout;
- (void)setRowSpacing:(double)a3 afterRow:(unint64_t)a4;
- (void)setShapeStyle:(unint64_t)a3;
@end

@implementation AVGlassLayoutView

- (CGSize)extrinsicContentSize
{
  width = self->_extrinsicContentSize.width;
  height = self->_extrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setHasFullScreenAppearance:(BOOL)a3
{
  if (self->_hasFullScreenAppearance != a3)
  {
    self->_hasFullScreenAppearance = a3;
    [(AVGlassBackedView *)self setSubdued:!a3];
  }
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
  if ([(AVGlassLayoutView *)self isCollapsed]|| ![(AVGlassLayoutView *)self isIncluded])
  {
    return 1;
  }

  return [(AVGlassLayoutView *)self isRemoved];
}

- (id)_includedItemsFromSubviews:(id)a3 inStackLayout:(id)a4 thatFitSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 itemsThatFitSize:{width, height}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v62;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v62 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(*(&v61 + 1) + 8 * i) layoutAttributes];
        if ([v17 canSubstituteOtherAttributes])
        {
          v44 = v14;
          v47 = v9;

          v19 = [MEMORY[0x1E695DF70] array];
          v20 = [MEMORY[0x1E695DF70] array];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v46 = v11;
          v21 = v11;
          v22 = [v21 countByEnumeratingWithState:&v56 objects:v67 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = 0;
            v25 = *v57;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v57 != v25)
                {
                  objc_enumerationMutation(v21);
                }

                v27 = [*(*(&v56 + 1) + 8 * j) layoutAttributes];
                if (([v10 containsObject:v27] & 1) == 0 && objc_msgSend(v27, "isIncluded"))
                {
                  [v19 addObject:v27];
                }

                if ([v10 containsObject:v27] && objc_msgSend(v27, "isIncluded") && objc_msgSend(v27, "canOverflowToAuxiliaryMenu"))
                {
                  [v20 addObject:v27];
                }

                if ([v27 canSubstituteOtherAttributes])
                {
                  v28 = v27;

                  v24 = v28;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v56 objects:v67 count:16];
            }

            while (v23);
          }

          else
          {
            v24 = 0;
          }

          v29 = [MEMORY[0x1E695DF70] array];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v18 = v19;
          v30 = [v18 countByEnumeratingWithState:&v52 objects:v66 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v53;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v53 != v32)
                {
                  objc_enumerationMutation(v18);
                }

                v34 = *(*(&v52 + 1) + 8 * k);
                if ([v34 canOverflowToAuxiliaryMenu])
                {
                  [v29 addObject:v34];
                }
              }

              v31 = [v18 countByEnumeratingWithState:&v52 objects:v66 count:16];
            }

            while (v31);
          }

          v35 = ([v29 count] != 0) | v44;
          if (v35)
          {
            v45 = v35;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v36 = v20;
            v37 = [v36 countByEnumeratingWithState:&v48 objects:v65 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v49;
              do
              {
                for (m = 0; m != v38; ++m)
                {
                  if (*v49 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v48 + 1) + 8 * m);
                  if ([v41 displayPriority] <= 1)
                  {
                    [v41 setIncluded:0];
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v48 objects:v65 count:16];
              }

              while (v38);
            }

            v35 = v45;
          }

          [v24 setIncluded:v35 & 1];
          v9 = v47;
          v42 = [v47 itemsThatFitSize:{width, height}];

          v10 = v42;
          v11 = v46;
          goto LABEL_54;
        }

        if ([v17 canOnlyAppearInControlOverflowMenu])
        {
          v14 |= [v17 isIncluded];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    if (v14)
    {
      v18 = _AVLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18B49C000, v18, OS_LOG_TYPE_ERROR, "Has control that can only overflow, but no layout views can substitute others.", buf, 2u);
      }

      goto LABEL_54;
    }
  }

  else
  {
    v18 = v11;
LABEL_54:
  }

  return v10;
}

- (void)_removeArrangedSubview:(id)a3
{
  v7 = a3;
  v4 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v5 = [v4 indexOfObject:v7];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    [v6 removeObjectAtIndex:v5];

    [v7 removeFromSuperview];
    [(AVGlassLayoutView *)self setStackLayoutNeedsUpdate:1];
    [(AVGlassLayoutView *)self setNeedsLayout];
  }
}

- (void)_insertArrangedSubview:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  [v7 insertObject:v6 atIndex:a4];

  [(AVGlassLayoutView *)self insertSubview:v6 atIndex:a4];
  [(AVGlassLayoutView *)self setStackLayoutNeedsUpdate:1];

  [(AVGlassLayoutView *)self setNeedsLayout];
}

- (void)_applyShapeStyle
{
  v3 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = [(AVGlassLayoutView *)self shapeStyle];
  switch(v6)
  {
    case 3uLL:
      [(AVGlassLayoutView *)self bounds];
      v10 = CGRectGetHeight(v21) * 0.5;
LABEL_14:
      v13 = MEMORY[0x1E69796E8];
      goto LABEL_17;
    case 1uLL:
      [(AVGlassLayoutView *)self bounds];
      Width = CGRectGetWidth(v19);
      [(AVGlassLayoutView *)self bounds];
      Height = CGRectGetHeight(v20);
      if (Width >= Height)
      {
        Height = Width;
      }

      v10 = Height * 0.5;
      break;
    case 0uLL:
      if (v5 == 5)
      {
        v7 = 0.77;
      }

      else
      {
        v7 = 1.0;
      }

      [(AVGlassLayoutView *)self bounds];
      v8 = CGRectGetHeight(v18) <= v7 * 40.0;
      v9 = 8.0;
      if (!v8)
      {
        v9 = 16.0;
      }

      v10 = v7 * v9;
      goto LABEL_14;
    default:
      v10 = 0.0;
      break;
  }

  v13 = MEMORY[0x1E69796E0];
LABEL_17:
  v14 = [(AVGlassLayoutView *)self layer];
  [v14 setCornerRadius:v10];

  v15 = [(AVGlassLayoutView *)self layer];
  [v15 setMaskedCorners:15];

  v16 = [(AVGlassLayoutView *)self layer];
  [v16 setCornerCurve:*v13];
}

- (void)_updateStackLayoutIfNeeded
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(AVGlassLayoutView *)self stackLayoutNeedsUpdate])
  {
    v3 = MEMORY[0x1E695DF70];
    v4 = [(AVGlassLayoutView *)self arrangedSubviews];
    v26 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(AVGlassLayoutView *)self arrangedSubviews];
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
          v37 = __Block_byref_object_copy__12021;
          v38 = __Block_byref_object_dispose__12022;
          v39 = 0;
          v28 = 0;
          v29 = &v28;
          v30 = 0x3032000000;
          v31 = __Block_byref_object_copy__12021;
          v32 = __Block_byref_object_dispose__12022;
          v33 = 0;
          if ([(AVGlassLayoutView *)self effectiveUserInterfaceLayoutDirection]== 1)
          {
            v8 = 2 * ([(AVGlassLayoutView *)self semanticContentAttribute]!= 1);
          }

          else
          {
            v8 = 0;
          }

          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __47__AVGlassLayoutView__updateStackLayoutIfNeeded__block_invoke;
          v27[3] = &unk_1E7209F48;
          v27[4] = &v28;
          v27[5] = &v34;
          [v7 enumerateObjectsWithOptions:v8 usingBlock:v27];
          [v29[5] setNextAttributesInLayoutOrder:0];
          v9 = [v7 sortedArrayUsingComparator:&__block_literal_global_12023];
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
    [(AVGlassLayoutView *)self setCurrentStackLayout:v21];

    v22 = [(AVGlassLayoutView *)self debugIdentifier];
    v23 = [(AVGlassLayoutView *)self currentStackLayout];
    [v23 setDebugIdentifier:v22];

    [(AVGlassLayoutView *)self setStackLayoutNeedsUpdate:0];
  }
}

void __47__AVGlassLayoutView__updateStackLayoutIfNeeded__block_invoke(uint64_t a1, void *a2)
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

uint64_t __47__AVGlassLayoutView__updateStackLayoutIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  v5 = [(AVGlassLayoutView *)self debugIdentifier];
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
  v2 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
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
    v5 = [(AVGlassLayoutView *)self currentStackLayout];
    [v5 setDebugIdentifier:v6];
  }
}

- (void)setRowSpacing:(double)a3 afterRow:(unint64_t)a4
{
  v6 = [(AVGlassLayoutView *)self currentStackLayout];
  [v6 setRowSpacing:a4 afterRow:a3];
}

- (BOOL)hasVisibleArrangedSubview
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
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
  [(AVGlassLayoutView *)self setDirectionalLayoutMargins:a3.top, a3.leading, a3.bottom, a3.trailing];

  [(AVGlassLayoutView *)self setNeedsLayout];
}

- (void)setShapeStyle:(unint64_t)a3
{
  if (self->_shapeStyle != a3)
  {
    self->_shapeStyle = a3;
    [(AVGlassLayoutView *)self _applyShapeStyle];
  }
}

- (void)setArrangedSubviews:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_arrangedSubviews, a3);
  v6 = MEMORY[0x1E695DFD8];
  v7 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v8 = [v6 setWithArray:v7];

  v25 = v8;
  v27 = self;
  if ([(AVGlassLayoutView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v9 = 2 * ([(AVGlassLayoutView *)self semanticContentAttribute]!= 1);
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
        v35[2] = __41__AVGlassLayoutView_setArrangedSubviews___block_invoke;
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
          [(AVGlassLayoutView *)v27 _removeArrangedSubview:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v20);
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __41__AVGlassLayoutView_setArrangedSubviews___block_invoke_2;
  v28[3] = &unk_1E7209F20;
  v29 = v18;
  v30 = v27;
  v24 = v18;
  [v10 enumerateObjectsUsingBlock:v28];
}

void __41__AVGlassLayoutView_setArrangedSubviews___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = AVGlassLayoutView;
  [(AVGlassLayoutView *)&v3 setNeedsLayout];
  [(AVGlassLayoutView *)self setLayoutDirty:1];
}

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)a3
{
  v5 = [(AVGlassLayoutView *)self currentStackLayout];
  [v5 layoutHeightThatFitsRowsStartingWithRow:a3];
  v7 = v6;
  [(AVGlassLayoutView *)self contentLayoutMargins];
  v9 = v7 + v8;

  return v9;
}

- (id)prioritizedSizeThatFitsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AVGlassLayoutView *)self _updateStackLayoutIfNeeded];
  v6 = [(AVGlassLayoutView *)self currentStackLayout];
  v7 = [v6 prioritizedSizeThatFitsSize:{width, height}];

  return v7;
}

- (void)layoutSubviews
{
  v36 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = AVGlassLayoutView;
  [(AVView *)&v34 layoutSubviews];
  if ([(AVGlassLayoutView *)self isLayoutDirty])
  {
    [(AVGlassLayoutView *)self _updateStackLayoutIfNeeded];
    [(AVGlassLayoutView *)self frame];
    v4 = v3;
    v6 = v5;
    [(AVGlassLayoutView *)self contentLayoutMargins];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(AVGlassLayoutView *)self effectiveUserInterfaceLayoutDirection];
    v15 = v4 - (v14 + v10);
    v16 = v6 - (v8 + v12);
    v17 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    v18 = [(AVGlassLayoutView *)self currentStackLayout];
    v19 = [(AVGlassLayoutView *)self _includedItemsFromSubviews:v17 inStackLayout:v18 thatFitSize:v15, v16];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v30 + 1) + 8 * i);
          v26 = [v25 layoutAttributes];
          [v26 setCollapsed:{objc_msgSend(v19, "containsObject:", v26) ^ 1}];
          [v25 layoutAttributesDidChange];
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v22);
    }

    v27 = [(AVGlassLayoutView *)self currentStackLayout];
    v28 = [v27 layoutFramesInBoundingSize:{v15, v16}];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __35__AVGlassLayoutView_layoutSubviews__block_invoke;
    v29[3] = &unk_1E7208218;
    v29[4] = self;
    [v28 enumerateObjectsUsingBlock:v29];
    [(AVGlassLayoutView *)self setLayoutDirty:0];
  }

  [(AVGlassLayoutView *)self _applyShapeStyle];
}

void __35__AVGlassLayoutView_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) flattenedArrangedSubviewsInLayoutOrder];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v22 = _AVLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [*(a1 + 32) debugIdentifier];
      v24 = [*(a1 + 32) flattenedArrangedSubviewsInLayoutOrder];
      v25 = 138412802;
      v26 = v23;
      v27 = 2048;
      v28 = [v24 count];
      v29 = 2048;
      v30 = a3;
      _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%@ - Computed more frames than we have arranged subviews. Number of arranged subviews: %ld -- current frame index: %ld", &v25, 0x20u);
    }
  }

  else
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
    v33.origin.x = v19;
    v33.origin.y = v21;
    v33.size.width = v15;
    v33.size.height = v17;
    if (!CGRectEqualToRect(v32, v33))
    {
      [v9 setFrame:{v19, v21, v15, v17}];
    }
  }
}

- (AVGlassLayoutView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = AVGlassLayoutView;
  v3 = [(AVGlassBackedView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    [(AVView *)v4 setHasBackdropView:0];
    [(AVGlassBackedView *)v4 setBackgroundMaterialized:1];
    [(AVGlassLayoutView *)v4 setInsetsLayoutMarginsFromSafeArea:0];
    [(AVGlassLayoutView *)v4 setClipsToBounds:1];
  }

  return v4;
}

@end