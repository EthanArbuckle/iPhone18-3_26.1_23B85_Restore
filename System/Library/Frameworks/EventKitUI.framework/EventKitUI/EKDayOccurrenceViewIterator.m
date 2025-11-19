@interface EKDayOccurrenceViewIterator
- (EKDayOccurrenceViewIterator)initWithOccurrenceViews:(id)a3 selectedEvent:(id)a4;
- (id)_occurrenceViewAtIndex:(int64_t)a3;
- (id)next;
- (id)previous;
- (int64_t)_nextIndexFromCurrentIndex:(int64_t)a3 forward:(BOOL)a4;
- (int64_t)_selectedCopyOccurrenceViewIndexInOccurrenceViews:(id)a3 selectedIndex:(int64_t)a4;
- (int64_t)_selectedOccurrenceViewIndexInOccurrenceViews:(id)a3 selectedEvent:(id)a4;
- (void)_prepareOccurrenceViewsForIteration:(id)a3 selectedEvent:(id)a4 result:(id)a5;
- (void)_separateOccurrenceViews:(id)a3 result:(id)a4;
@end

@implementation EKDayOccurrenceViewIterator

- (EKDayOccurrenceViewIterator)initWithOccurrenceViews:(id)a3 selectedEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = EKDayOccurrenceViewIterator;
  v8 = [(EKDayOccurrenceViewIterator *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__EKDayOccurrenceViewIterator_initWithOccurrenceViews_selectedEvent___block_invoke;
    v11[3] = &unk_1E8440820;
    v12 = v8;
    [(EKDayOccurrenceViewIterator *)v12 _prepareOccurrenceViewsForIteration:v6 selectedEvent:v7 result:v11];
  }

  return v9;
}

uint64_t __69__EKDayOccurrenceViewIterator_initWithOccurrenceViews_selectedEvent___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [*(a1 + 32) setOccurrenceViews:a2];
  [*(a1 + 32) setCurrentIndex:a3];
  v7 = *(a1 + 32);

  return [v7 setFirstTimedOccurrenceIndex:a4];
}

- (id)next
{
  [(EKDayOccurrenceViewIterator *)self setCurrentIndex:[(EKDayOccurrenceViewIterator *)self _nextIndexFromCurrentIndex:[(EKDayOccurrenceViewIterator *)self currentIndex] forward:1]];
  v3 = [(EKDayOccurrenceViewIterator *)self currentIndex];

  return [(EKDayOccurrenceViewIterator *)self _occurrenceViewAtIndex:v3];
}

- (id)previous
{
  [(EKDayOccurrenceViewIterator *)self setCurrentIndex:[(EKDayOccurrenceViewIterator *)self _nextIndexFromCurrentIndex:[(EKDayOccurrenceViewIterator *)self currentIndex] forward:0]];
  v3 = [(EKDayOccurrenceViewIterator *)self currentIndex];

  return [(EKDayOccurrenceViewIterator *)self _occurrenceViewAtIndex:v3];
}

- (id)_occurrenceViewAtIndex:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
    v3 = [v5 objectAtIndexedSubscript:a3];
  }

  return v3;
}

- (int64_t)_nextIndexFromCurrentIndex:(int64_t)a3 forward:(BOOL)a4
{
  v4 = a4;
  v7 = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
  v8 = [v7 count];

  if (!v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    v11 = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
    v10 = [v11 count] - 1;

    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = -1;
      goto LABEL_11;
    }

    return v10;
  }

  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v12 = 1;
LABEL_11:
    v13 = v12 + a3;
    if (v13 >= 0)
    {
      v14 = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
      if (v13 < [v14 count])
      {
        v10 = v13;
      }
    }

    return v10;
  }

  return [(EKDayOccurrenceViewIterator *)self firstTimedOccurrenceIndex];
}

- (void)_prepareOccurrenceViewsForIteration:(id)a3 selectedEvent:(id)a4 result:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__EKDayOccurrenceViewIterator__prepareOccurrenceViewsForIteration_selectedEvent_result___block_invoke;
  v12[3] = &unk_1E8440848;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(EKDayOccurrenceViewIterator *)self _separateOccurrenceViews:a3 result:v12];
}

void __88__EKDayOccurrenceViewIterator__prepareOccurrenceViewsForIteration_selectedEvent_result___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 sortedArrayUsingSelector:sel_compareOccurrenceViewForTabOrdering_];
  v7 = [v5 sortedArrayUsingSelector:sel_compareOccurrenceViewForTabOrdering_];

  v8 = [v6 arrayByAddingObjectsFromArray:v7];
  v9 = [*(a1 + 32) _selectedCopyOccurrenceViewIndexInOccurrenceViews:v8 selectedIndex:{objc_msgSend(*(a1 + 32), "_selectedOccurrenceViewIndexInOccurrenceViews:selectedEvent:", v8, *(a1 + 40))}];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 objectAtIndexedSubscript:v9];
    v13[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v12 = [v8 arrayByExcludingObjectsInArray:v11];

    v8 = v12;
  }

  [*(a1 + 32) _firstTimedOccurrenceViewIndexInOccurrenceViews:v8];
  (*(*(a1 + 48) + 16))();
}

- (void)_separateOccurrenceViews:(id)a3 result:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 isAllDay])
        {
          v15 = v7;
        }

        else
        {
          v15 = v8;
        }

        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [v7 copy];
  v17 = [v8 copy];
  v6[2](v6, v16, v17);
}

- (int64_t)_selectedOccurrenceViewIndexInOccurrenceViews:(id)a3 selectedEvent:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__EKDayOccurrenceViewIterator__selectedOccurrenceViewIndexInOccurrenceViews_selectedEvent___block_invoke;
    v9[3] = &unk_1E8440870;
    v10 = v5;
    v7 = [a3 indexOfObjectPassingTest:v9];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

uint64_t __91__EKDayOccurrenceViewIterator__selectedOccurrenceViewIndexInOccurrenceViews_selectedEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 occurrence];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (int64_t)_selectedCopyOccurrenceViewIndexInOccurrenceViews:(id)a3 selectedIndex:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (a4 != 0x7FFFFFFFFFFFFFFFLL && a4 >= -1)
  {
    v8 = a4 + 1;
    if (v8 < [v5 count])
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      if ([v9 isSelectedCopyView])
      {
        v7 = v8;
      }
    }
  }

  return v7;
}

@end