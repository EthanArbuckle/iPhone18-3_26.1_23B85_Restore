@interface AVCustomStackLayout
- (AVCustomStackLayout)initWithLayoutRowHeads:(id)heads;
- (double)_heightForRow:(unint64_t)row startingFrom:(id)from inBoundingSize:(CGSize)size;
- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)row;
- (id)_flexibleWidthMapForLayoutItemsBeginningWithLayoutItem:(id)item endingWithItem:(id)withItem withAvailableSize:(CGSize)size;
- (id)_lastVisibleLayoutItemAttributesFrom:(id)from;
- (id)itemsThatFitSize:(CGSize)size;
- (id)layoutFramesInBoundingSize:(CGSize)size;
- (id)prioritizedSizeThatFitsSize:(CGSize)size;
- (void)setRowSpacing:(double)spacing afterRow:(unint64_t)row;
@end

@implementation AVCustomStackLayout

- (double)_heightForRow:(unint64_t)row startingFrom:(id)from inBoundingSize:(CGSize)size
{
  height = size.height;
  fromCopy = from;
  v9 = fromCopy;
  v10 = 0.0;
  if (fromCopy)
  {
    v11 = fromCopy;
    do
    {
      if (([v11 isCollapsedOrExcluded] & 1) == 0)
      {
        [v11 minimumSize];
        if (v10 >= v12)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v13 >= height)
        {
          v10 = height;
        }

        else
        {
          v10 = v13;
        }
      }

      nextAttributesInLayoutOrder = [v11 nextAttributesInLayoutOrder];

      v11 = nextAttributesInLayoutOrder;
    }

    while (nextAttributesInLayoutOrder);
  }

  rowHeads = [(AVCustomStackLayout *)self rowHeads];
  v16 = [rowHeads count] - 1;

  if (v16 != row)
  {
    height = v10;
  }

  return height;
}

- (id)_lastVisibleLayoutItemAttributesFrom:(id)from
{
  fromCopy = from;
  v4 = fromCopy;
  v5 = 0;
  if (fromCopy)
  {
    v6 = fromCopy;
    do
    {
      if (([v6 isCollapsedOrExcluded] & 1) == 0)
      {
        v7 = v6;

        v5 = v7;
      }

      nextAttributesInLayoutOrder = [v6 nextAttributesInLayoutOrder];

      v6 = nextAttributesInLayoutOrder;
    }

    while (nextAttributesInLayoutOrder);
  }

  return v5;
}

- (id)_flexibleWidthMapForLayoutItemsBeginningWithLayoutItem:(id)item endingWithItem:(id)withItem withAvailableSize:(CGSize)size
{
  width = size.width;
  itemCopy = item;
  withItemCopy = withItem;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v11 = itemCopy;
  v12 = v11;
  if (v11)
  {
    v13 = 0.0;
    v14 = 0.0;
    v15 = v11;
    do
    {
      if (![v15 hasFlexibleContentSize] || objc_msgSend(array, "count") || (objc_msgSend(v15, "isCollapsedOrExcluded") & 1) != 0)
      {
        if ([v15 hasFlexibleContentSize] && objc_msgSend(array, "count") && (objc_msgSend(v15, "isCollapsedOrExcluded") & 1) == 0)
        {
          if (v15 != withItemCopy)
          {
            [v15 trailingInterItemSpace];
            width = width - v18;
          }

          width = width - v13;
          v13 = 0.0;
        }

        else if (([v15 hasFlexibleContentSize] & 1) == 0 && (objc_msgSend(v15, "isCollapsedOrExcluded") & 1) == 0)
        {
          [v15 minimumSize];
          v13 = v13 + v16;
          if (v15 != withItemCopy)
          {
            [v15 trailingInterItemSpace];
            v13 = v13 + v17;
          }
        }
      }

      else
      {
        nextAttributesInLayoutOrder = [v15 nextAttributesInLayoutOrder];
        if (nextAttributesInLayoutOrder)
        {
          [v15 trailingInterItemSpace];
          v21 = v20;
        }

        else
        {
          v21 = 0.0;
        }

        v14 = v13;
        v13 = v21;
      }

      if ([v15 hasFlexibleContentSize] && (objc_msgSend(v15, "isCollapsedOrExcluded") & 1) == 0)
      {
        [array addObject:v15];
      }

      nextAttributesInLayoutOrder2 = [v15 nextAttributesInLayoutOrder];

      v15 = nextAttributesInLayoutOrder2;
    }

    while (nextAttributesInLayoutOrder2);
  }

  else
  {
    v14 = 0.0;
    v13 = 0.0;
  }

  if ([array count] < 2)
  {
    v23 = width - v13;
  }

  else
  {
    v23 = width / [array count];
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __111__AVCustomStackLayout__flexibleWidthMapForLayoutItemsBeginningWithLayoutItem_endingWithItem_withAvailableSize___block_invoke;
  v29[3] = &unk_1E7208FF0;
  v24 = dictionary;
  v32 = v23;
  v33 = v14;
  v30 = v24;
  v31 = array;
  v34 = v13;
  v25 = array;
  [v25 enumerateObjectsUsingBlock:v29];
  v26 = v31;
  v27 = v24;

  return v24;
}

void __111__AVCustomStackLayout__flexibleWidthMapForLayoutItemsBeginningWithLayoutItem_endingWithItem_withAvailableSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (a3)
  {
    v5 = [*(a1 + 40) count] - 1;
    v6 = MEMORY[0x1E696AD98];
    v7 = *(a1 + 48);
    if (v5 != a3)
    {
      goto LABEL_6;
    }

    v8 = *(a1 + 64);
  }

  else
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
  }

  v7 = v7 - v8;
LABEL_6:
  v9 = [v6 numberWithDouble:v7];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v10];
}

- (double)layoutHeightThatFitsRowsStartingWithRow:(unint64_t)row
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  rowHeads = [(AVCustomStackLayout *)self rowHeads];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__AVCustomStackLayout_layoutHeightThatFitsRowsStartingWithRow___block_invoke;
  v8[3] = &unk_1E7208FC8;
  v8[5] = &v9;
  v8[6] = row;
  v8[4] = self;
  [rowHeads enumerateObjectsUsingBlock:v8];

  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __63__AVCustomStackLayout_layoutHeightThatFitsRowsStartingWithRow___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 48) <= a3)
  {
    v6 = [a2 firstAttributesInLayoutOrder];
    if (v6)
    {
      v7 = v6;
      v8 = 0.0;
      do
      {
        if (([v7 isCollapsedOrExcluded] & 1) == 0)
        {
          [v7 minimumSize];
          if (v8 < v9)
          {
            v8 = v9;
          }
        }

        v10 = [v7 nextAttributesInLayoutOrder];

        v7 = v10;
      }

      while (v10);
    }

    else
    {
      v8 = 0.0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v8 + *(*(*(a1 + 40) + 8) + 24);
    v13 = [*(a1 + 32) rowSpacing];
    v11 = [v13 objectAtIndexedSubscript:a3];
    [v11 floatValue];
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v12;
  }
}

- (void)setRowSpacing:(double)spacing afterRow:(unint64_t)row
{
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:spacing];
  rowSpacing = [(AVCustomStackLayout *)self rowSpacing];
  [rowSpacing setObject:v7 atIndexedSubscript:row];
}

- (id)prioritizedSizeThatFitsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(AVCustomStackLayout *)self itemsThatFitSize:?];
  v7 = objc_alloc_init(AVPrioritizedSize);
  rowHeads = [(AVCustomStackLayout *)self rowHeads];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__AVCustomStackLayout_prioritizedSizeThatFitsSize___block_invoke;
  v14[3] = &unk_1E7208FA0;
  v17 = width;
  v18 = height;
  v14[4] = self;
  v15 = v6;
  v9 = v7;
  v16 = v9;
  v10 = v6;
  [rowHeads enumerateObjectsUsingBlock:v14];

  v11 = v16;
  v12 = v9;

  return v9;
}

void __51__AVCustomStackLayout_prioritizedSizeThatFitsSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstAttributesInLayoutOrder];
  v4 = [*(a1 + 32) _lastVisibleLayoutItemAttributesFrom:v3];
  v5 = [*(a1 + 32) _flexibleWidthMapForLayoutItemsBeginningWithLayoutItem:v3 endingWithItem:v4 withAvailableSize:{*(a1 + 56), *(a1 + 64)}];
  v21 = v3;
  if (v21)
  {
    v6 = v21;
    do
    {
      if ([*(a1 + 40) containsObject:v6])
      {
        v7 = [v5 objectForKeyedSubscript:v6];
        [v7 doubleValue];
        v9 = v8;

        [v6 minimumSize];
        v11 = v10;
        if ([v6 hasFlexibleContentSize])
        {
          [v6 minimumSize];
          v11 = v9 >= v12 ? v9 : v12;
          [v6 maximumSize];
          if (v13 > 0.0)
          {
            [v6 maximumSize];
            if (v11 >= v14)
            {
              v11 = v14;
            }
          }
        }

        v15 = [*(a1 + 40) lastObject];
        if (v6 == v15)
        {
          v16 = 0.0;
        }

        else
        {
          [v6 trailingInterItemSpace];
        }

        v17 = v11 + v16;

        v18 = *(a1 + 48);
        [v6 minimumSize];
        [v18 addSize:objc_msgSend(v6 withPriority:{"displayPriority"), v17, v19}];
      }

      v20 = [v6 nextAttributesInLayoutOrder];

      v6 = v20;
    }

    while (v20);
  }
}

- (id)itemsThatFitSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  rowHeads = [(AVCustomStackLayout *)self rowHeads];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__AVCustomStackLayout_itemsThatFitSize___block_invoke;
  v11[3] = &unk_1E7208F78;
  v13 = width;
  v14 = height;
  v12 = orderedSet;
  v8 = orderedSet;
  [rowHeads enumerateObjectsUsingBlock:v11];

  array = [v8 array];

  return array;
}

void __40__AVCustomStackLayout_itemsThatFitSize___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  v7 = [a2 firstAttributesInPriorityOrder];
  if (!v7)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v40 = v7;
  v11 = v7;
  do
  {
    v12 = [v11 canSubstituteOtherAttributes];
    if ([v11 canOnlyAppearInControlOverflowMenu])
    {
      v9 |= [v11 isIncluded];
    }

    if ([v11 canOverflowToAuxiliaryMenu])
    {
      v10 |= [v11 isIncluded];
    }

    v8 |= v12;
    v13 = [v11 nextAttributesInLayoutOrder];

    v11 = v13;
  }

  while (v13);
  v14 = v8 & (v9 | v10);
  v15 = v40;
  while ((*a4 & 1) == 0)
  {
    v41 = v15;
    if ([v15 canSubstituteOtherAttributes] & v14)
    {
      v16 = 0;
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ([v41 canSubstituteOtherAttributes])
    {
      v16 = 1;
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = [v41 isIncluded] ^ 1;
      if ((v14 & 1) == 0)
      {
LABEL_15:
        v17 = 0;
        goto LABEL_19;
      }
    }

    if ([v41 canOverflowToAuxiliaryMenu])
    {
      goto LABEL_30;
    }

    v17 = [v41 canOnlyAppearInControlOverflowMenu];
LABEL_19:
    if (((v16 | v17) & 1) == 0 && ([*(a1 + 32) containsObject:v41] & 1) == 0 && (objc_msgSend(v41, "canOnlyAppearInControlOverflowMenu") & 1) == 0)
    {
      [v41 minimumSize];
      v19 = v18;
      [v41 trailingInterItemSpace];
      v21 = v19 + v20;
      v22 = [v41 displayPartnerAttributes];

      if (v22)
      {
        v23 = [v41 displayPartnerAttributes];
        [v23 minimumSize];
        v25 = v24;

        v26 = [v41 displayPartnerAttributes];
        [v26 trailingInterItemSpace];
        v21 = v21 + v25 + v27;
      }

      else
      {
        v25 = 0.0;
      }

      v28 = v21 + -0.00000011920929;
      if (v21 + -0.00000011920929 > v6)
      {
        v33 = [v41 displayPartnerAttributes];
        if (v33 && (v34 = v33, [v41 trailingInterItemSpace], v36 = v25 + v19 + v35, v34, v36 <= v6))
        {
          [*(a1 + 32) addObject:v41];
          v38 = *(a1 + 32);
          v39 = [v41 displayPartnerAttributes];
          [v38 addObject:v39];
        }

        else
        {
          v37 = [v41 displayPartnerAttributes];

          if (!v37 && v19 <= v6)
          {
            [*(a1 + 32) addObject:v41];
          }
        }

        *a4 = 1;
        v15 = v41;
        break;
      }

      [*(a1 + 32) addObject:{v41, v28}];
      v29 = [v41 displayPartnerAttributes];

      if (v29)
      {
        v30 = *(a1 + 32);
        v31 = [v41 displayPartnerAttributes];
        [v30 addObject:v31];
      }

      v6 = v6 - v21;
    }

LABEL_30:
    v32 = [v41 nextAttributesInPriorityOrder];

    v15 = v32;
    if (!v32)
    {
      break;
    }
  }
}

- (id)layoutFramesInBoundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  array = [MEMORY[0x1E695DF70] array];
  rowHeads = [(AVCustomStackLayout *)self rowHeads];
  v8 = [rowHeads count];

  rowHeads2 = [(AVCustomStackLayout *)self rowHeads];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__AVCustomStackLayout_layoutFramesInBoundingSize___block_invoke;
  v14[3] = &unk_1E7208F50;
  v18 = width;
  v19 = height;
  v14[4] = self;
  v16 = v21;
  v20 = v8;
  v17 = v22;
  v10 = array;
  v15 = v10;
  [rowHeads2 enumerateObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v10;

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);

  return v12;
}

void __50__AVCustomStackLayout_layoutFramesInBoundingSize___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 firstAttributesInLayoutOrder];
  [*(a1 + 32) _heightForRow:a3 startingFrom:v5 inBoundingSize:{*(a1 + 64), *(a1 + 72) - *(*(*(a1 + 48) + 8) + 24)}];
  v7 = v6;
  *(*(*(a1 + 48) + 8) + 24) = v6 + *(*(*(a1 + 48) + 8) + 24);
  v8 = [*(a1 + 32) rowSpacing];
  v9 = [v8 objectAtIndexedSubscript:a3];
  [v9 floatValue];
  v37 = v10;

  v11 = [*(a1 + 32) _lastVisibleLayoutItemAttributesFrom:v5];
  v12 = [*(a1 + 32) _flexibleWidthMapForLayoutItemsBeginningWithLayoutItem:v5 endingWithItem:v11 withAvailableSize:{*(a1 + 64), *(a1 + 72)}];
  v38 = v5;
  if (v38)
  {
    v13 = 0.0;
    v14 = 0.0;
    v15 = v38;
    do
    {
      v16 = [v12 objectForKeyedSubscript:v15];
      [v16 doubleValue];
      v18 = v17;

      [v15 trailingInterItemSpace];
      v20 = v19;
      [v15 minimumSize];
      v22 = v21;
      if ([v15 hasFlexibleContentSize])
      {
        [v15 minimumSize];
        v22 = v18 >= v23 ? v18 : v23;
        [v15 maximumSize];
        if (v24 > 0.0)
        {
          [v15 maximumSize];
          if (v22 >= v25)
          {
            v22 = v25;
          }
        }
      }

      v26 = v7;
      if (*(a1 + 80) == 1)
      {
        [v15 minimumSize];
        v26 = v27;
      }

      v28 = *(*(*(a1 + 56) + 8) + 24);
      [v15 minimumSize];
      if (*(a1 + 80) == 1)
      {
        v30 = (v7 + v28) * 0.5 - v29 * 0.5;
      }

      else
      {
        v30 = *(*(*(a1 + 56) + 8) + 24);
      }

      v31 = [v15 isCollapsedOrExcluded];
      v32 = v20 + v22;
      if (v15 == v11)
      {
        v32 = v22;
      }

      v33 = v14 + v13;
      if (!v31)
      {
        v14 = v32;
        v13 = v33;
      }

      v34 = *(a1 + 40);
      v35 = [MEMORY[0x1E696B098] valueWithRect:{v13, v30, v22, v26}];
      [v34 addObject:v35];

      v36 = [v15 nextAttributesInLayoutOrder];

      v15 = v36;
    }

    while (v36);
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v37;
  *(*(*(a1 + 56) + 8) + 24) = v7 + v37 + *(*(*(a1 + 56) + 8) + 24);
}

- (AVCustomStackLayout)initWithLayoutRowHeads:(id)heads
{
  headsCopy = heads;
  v12.receiver = self;
  v12.super_class = AVCustomStackLayout;
  v5 = [(AVCustomStackLayout *)&v12 init];
  if (v5)
  {
    v6 = [headsCopy copy];
    rowHeads = v5->_rowHeads;
    v5->_rowHeads = v6;

    v8 = [headsCopy count];
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
    rowSpacing = v5->_rowSpacing;
    v5->_rowSpacing = v9;

    for (; v8; --v8)
    {
      [(NSMutableArray *)v5->_rowSpacing addObject:&unk_1EFF12BC0];
    }
  }

  return v5;
}

@end