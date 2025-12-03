@interface AVGlassLayoutView
- (AVGlassLayoutView)initWithFrame:(CGRect)frame;
- (BOOL)hasVisibleArrangedSubview;
- (BOOL)isCollapsedOrExcluded;
- (CGSize)extrinsicContentSize;
- (NSString)debugDescription;
- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)row;
- (id)_includedItemsFromSubviews:(id)subviews inStackLayout:(id)layout thatFitSize:(CGSize)size;
- (id)prioritizedSizeThatFitsSize:(CGSize)size;
- (void)_applyShapeStyle;
- (void)_insertArrangedSubview:(id)subview atIndex:(unint64_t)index;
- (void)_removeArrangedSubview:(id)subview;
- (void)_updateStackLayoutIfNeeded;
- (void)layoutSubviews;
- (void)reevaluateHiddenStateOfAllItems;
- (void)setArrangedSubviews:(id)subviews;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setContentLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setDebugIdentifier:(id)identifier;
- (void)setHasFullScreenAppearance:(BOOL)appearance;
- (void)setIncluded:(BOOL)included;
- (void)setNeedsLayout;
- (void)setRowSpacing:(double)spacing afterRow:(unint64_t)row;
- (void)setShapeStyle:(unint64_t)style;
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

- (void)setHasFullScreenAppearance:(BOOL)appearance
{
  if (self->_hasFullScreenAppearance != appearance)
  {
    self->_hasFullScreenAppearance = appearance;
    [(AVGlassBackedView *)self setSubdued:!appearance];
  }
}

- (void)setIncluded:(BOOL)included
{
  if (self->_included != included)
  {
    self->_included = included;
    [(UIView *)self avkit_reevaluateHiddenStateOfItem:self];
  }
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    self->_collapsed = collapsed;
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

- (id)_includedItemsFromSubviews:(id)subviews inStackLayout:(id)layout thatFitSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v69 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  layoutCopy = layout;
  v10 = [layoutCopy itemsThatFitSize:{width, height}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v11 = subviewsCopy;
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

        layoutAttributes = [*(*(&v61 + 1) + 8 * i) layoutAttributes];
        if ([layoutAttributes canSubstituteOtherAttributes])
        {
          v44 = v14;
          v47 = layoutCopy;

          array = [MEMORY[0x1E695DF70] array];
          array2 = [MEMORY[0x1E695DF70] array];
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

                layoutAttributes2 = [*(*(&v56 + 1) + 8 * j) layoutAttributes];
                if (([v10 containsObject:layoutAttributes2] & 1) == 0 && objc_msgSend(layoutAttributes2, "isIncluded"))
                {
                  [array addObject:layoutAttributes2];
                }

                if ([v10 containsObject:layoutAttributes2] && objc_msgSend(layoutAttributes2, "isIncluded") && objc_msgSend(layoutAttributes2, "canOverflowToAuxiliaryMenu"))
                {
                  [array2 addObject:layoutAttributes2];
                }

                if ([layoutAttributes2 canSubstituteOtherAttributes])
                {
                  v28 = layoutAttributes2;

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

          array3 = [MEMORY[0x1E695DF70] array];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v18 = array;
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
                  [array3 addObject:v34];
                }
              }

              v31 = [v18 countByEnumeratingWithState:&v52 objects:v66 count:16];
            }

            while (v31);
          }

          v35 = ([array3 count] != 0) | v44;
          if (v35)
          {
            v45 = v35;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v36 = array2;
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
          layoutCopy = v47;
          v42 = [v47 itemsThatFitSize:{width, height}];

          v10 = v42;
          v11 = v46;
          goto LABEL_54;
        }

        if ([layoutAttributes canOnlyAppearInControlOverflowMenu])
        {
          v14 |= [layoutAttributes isIncluded];
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

- (void)_removeArrangedSubview:(id)subview
{
  subviewCopy = subview;
  flattenedArrangedSubviewsInLayoutOrder = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v5 = [flattenedArrangedSubviewsInLayoutOrder indexOfObject:subviewCopy];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    flattenedArrangedSubviewsInLayoutOrder2 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    [flattenedArrangedSubviewsInLayoutOrder2 removeObjectAtIndex:v5];

    [subviewCopy removeFromSuperview];
    [(AVGlassLayoutView *)self setStackLayoutNeedsUpdate:1];
    [(AVGlassLayoutView *)self setNeedsLayout];
  }
}

- (void)_insertArrangedSubview:(id)subview atIndex:(unint64_t)index
{
  subviewCopy = subview;
  flattenedArrangedSubviewsInLayoutOrder = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  [flattenedArrangedSubviewsInLayoutOrder insertObject:subviewCopy atIndex:index];

  [(AVGlassLayoutView *)self insertSubview:subviewCopy atIndex:index];
  [(AVGlassLayoutView *)self setStackLayoutNeedsUpdate:1];

  [(AVGlassLayoutView *)self setNeedsLayout];
}

- (void)_applyShapeStyle
{
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  traitCollection = [avkit_mainScreen traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  shapeStyle = [(AVGlassLayoutView *)self shapeStyle];
  switch(shapeStyle)
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
      if (userInterfaceIdiom == 5)
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
  layer = [(AVGlassLayoutView *)self layer];
  [layer setCornerRadius:v10];

  layer2 = [(AVGlassLayoutView *)self layer];
  [layer2 setMaskedCorners:15];

  layer3 = [(AVGlassLayoutView *)self layer];
  [layer3 setCornerCurve:*v13];
}

- (void)_updateStackLayoutIfNeeded
{
  v45 = *MEMORY[0x1E69E9840];
  if ([(AVGlassLayoutView *)self stackLayoutNeedsUpdate])
  {
    v3 = MEMORY[0x1E695DF70];
    arrangedSubviews = [(AVGlassLayoutView *)self arrangedSubviews];
    v26 = [v3 arrayWithCapacity:{objc_msgSend(arrangedSubviews, "count")}];

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
          firstObject = [v9 firstObject];
          layoutAttributes = [firstObject layoutAttributes];

          for (i = 1; i < [v7 count]; ++i)
          {
            v13 = [v9 objectAtIndexedSubscript:i];
            layoutAttributes2 = [v13 layoutAttributes];
            [layoutAttributes setNextAttributesInPriorityOrder:layoutAttributes2];

            layoutAttributes3 = [v13 layoutAttributes];

            layoutAttributes = layoutAttributes3;
          }

          [layoutAttributes setNextAttributesInPriorityOrder:0];
          v16 = [AVLayoutViewRowHead alloc];
          v17 = v35[5];
          firstObject2 = [v9 firstObject];
          layoutAttributes4 = [firstObject2 layoutAttributes];
          v20 = [(AVLayoutViewRowHead *)v16 initWithFirstAttributesInLayoutOrder:v17 firstAttributesInPriorityOrder:layoutAttributes4];

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

    debugIdentifier = [(AVGlassLayoutView *)self debugIdentifier];
    currentStackLayout = [(AVGlassLayoutView *)self currentStackLayout];
    [currentStackLayout setDebugIdentifier:debugIdentifier];

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
  debugIdentifier = [(AVGlassLayoutView *)self debugIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p> - %@", v4, self, debugIdentifier];

  return v6;
}

- (void)reevaluateHiddenStateOfAllItems
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  flattenedArrangedSubviewsInLayoutOrder = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v3 = [flattenedArrangedSubviewsInLayoutOrder countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(flattenedArrangedSubviewsInLayoutOrder);
        }

        [*(*(&v7 + 1) + 8 * v6) avkit_reevaluateHiddenStateOfItem:*(*(&v7 + 1) + 8 * v6)];
        ++v6;
      }

      while (v4 != v6);
      v4 = [flattenedArrangedSubviewsInLayoutOrder countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setDebugIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_debugIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_debugIdentifier, identifier);
    currentStackLayout = [(AVGlassLayoutView *)self currentStackLayout];
    [currentStackLayout setDebugIdentifier:identifierCopy];
  }
}

- (void)setRowSpacing:(double)spacing afterRow:(unint64_t)row
{
  currentStackLayout = [(AVGlassLayoutView *)self currentStackLayout];
  [currentStackLayout setRowSpacing:row afterRow:spacing];
}

- (BOOL)hasVisibleArrangedSubview
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  flattenedArrangedSubviewsInLayoutOrder = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v3 = [flattenedArrangedSubviewsInLayoutOrder countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(flattenedArrangedSubviewsInLayoutOrder);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 _isInAWindow] && !objc_msgSend(v6, "avkit_isCompletelyTransparent"))
        {
          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [flattenedArrangedSubviewsInLayoutOrder countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)setContentLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  [(AVGlassLayoutView *)self setDirectionalLayoutMargins:margins.top, margins.leading, margins.bottom, margins.trailing];

  [(AVGlassLayoutView *)self setNeedsLayout];
}

- (void)setShapeStyle:(unint64_t)style
{
  if (self->_shapeStyle != style)
  {
    self->_shapeStyle = style;
    [(AVGlassLayoutView *)self _applyShapeStyle];
  }
}

- (void)setArrangedSubviews:(id)subviews
{
  v43 = *MEMORY[0x1E69E9840];
  subviewsCopy = subviews;
  objc_storeStrong(&self->_arrangedSubviews, subviews);
  v6 = MEMORY[0x1E695DFD8];
  flattenedArrangedSubviewsInLayoutOrder = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
  v8 = [v6 setWithArray:flattenedArrangedSubviewsInLayoutOrder];

  v25 = v8;
  selfCopy = self;
  if ([(AVGlassLayoutView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v9 = 2 * ([(AVGlassLayoutView *)self semanticContentAttribute]!= 1);
  }

  else
  {
    v9 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = subviewsCopy;
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
        v36 = array;
        [v16 enumerateObjectsWithOptions:v9 usingBlock:v35];
      }

      v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v13);
  }

  v17 = [MEMORY[0x1E695DFD8] setWithArray:array];
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
          [(AVGlassLayoutView *)selfCopy _removeArrangedSubview:v23];
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
  v30 = selfCopy;
  v24 = v18;
  [array enumerateObjectsUsingBlock:v28];
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

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)row
{
  currentStackLayout = [(AVGlassLayoutView *)self currentStackLayout];
  [currentStackLayout layoutHeightThatFitsRowsStartingWithRow:row];
  v7 = v6;
  [(AVGlassLayoutView *)self contentLayoutMargins];
  v9 = v7 + v8;

  return v9;
}

- (id)prioritizedSizeThatFitsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(AVGlassLayoutView *)self _updateStackLayoutIfNeeded];
  currentStackLayout = [(AVGlassLayoutView *)self currentStackLayout];
  v7 = [currentStackLayout prioritizedSizeThatFitsSize:{width, height}];

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
    flattenedArrangedSubviewsInLayoutOrder = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    currentStackLayout = [(AVGlassLayoutView *)self currentStackLayout];
    v19 = [(AVGlassLayoutView *)self _includedItemsFromSubviews:flattenedArrangedSubviewsInLayoutOrder inStackLayout:currentStackLayout thatFitSize:v15, v16];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    flattenedArrangedSubviewsInLayoutOrder2 = [(AVGlassLayoutView *)self flattenedArrangedSubviewsInLayoutOrder];
    v21 = [flattenedArrangedSubviewsInLayoutOrder2 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(flattenedArrangedSubviewsInLayoutOrder2);
          }

          v25 = *(*(&v30 + 1) + 8 * i);
          layoutAttributes = [v25 layoutAttributes];
          [layoutAttributes setCollapsed:{objc_msgSend(v19, "containsObject:", layoutAttributes) ^ 1}];
          [v25 layoutAttributesDidChange];
        }

        v22 = [flattenedArrangedSubviewsInLayoutOrder2 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v22);
    }

    currentStackLayout2 = [(AVGlassLayoutView *)self currentStackLayout];
    v28 = [currentStackLayout2 layoutFramesInBoundingSize:{v15, v16}];

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

- (AVGlassLayoutView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = AVGlassLayoutView;
  v3 = [(AVGlassBackedView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_collapsed = 0;
    v3->_included = 1;
    array = [MEMORY[0x1E695DF70] array];
    flattenedArrangedSubviewsInLayoutOrder = v4->_flattenedArrangedSubviewsInLayoutOrder;
    v4->_flattenedArrangedSubviewsInLayoutOrder = array;

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