@interface EKDayOccurrenceViewIterator
- (EKDayOccurrenceViewIterator)initWithOccurrenceViews:(id)views selectedEvent:(id)event;
- (id)_occurrenceViewAtIndex:(int64_t)index;
- (id)next;
- (id)previous;
- (int64_t)_nextIndexFromCurrentIndex:(int64_t)index forward:(BOOL)forward;
- (int64_t)_selectedCopyOccurrenceViewIndexInOccurrenceViews:(id)views selectedIndex:(int64_t)index;
- (int64_t)_selectedOccurrenceViewIndexInOccurrenceViews:(id)views selectedEvent:(id)event;
- (void)_prepareOccurrenceViewsForIteration:(id)iteration selectedEvent:(id)event result:(id)result;
- (void)_separateOccurrenceViews:(id)views result:(id)result;
@end

@implementation EKDayOccurrenceViewIterator

- (EKDayOccurrenceViewIterator)initWithOccurrenceViews:(id)views selectedEvent:(id)event
{
  viewsCopy = views;
  eventCopy = event;
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
    [(EKDayOccurrenceViewIterator *)v12 _prepareOccurrenceViewsForIteration:viewsCopy selectedEvent:eventCopy result:v11];
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
  currentIndex = [(EKDayOccurrenceViewIterator *)self currentIndex];

  return [(EKDayOccurrenceViewIterator *)self _occurrenceViewAtIndex:currentIndex];
}

- (id)previous
{
  [(EKDayOccurrenceViewIterator *)self setCurrentIndex:[(EKDayOccurrenceViewIterator *)self _nextIndexFromCurrentIndex:[(EKDayOccurrenceViewIterator *)self currentIndex] forward:0]];
  currentIndex = [(EKDayOccurrenceViewIterator *)self currentIndex];

  return [(EKDayOccurrenceViewIterator *)self _occurrenceViewAtIndex:currentIndex];
}

- (id)_occurrenceViewAtIndex:(int64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    occurrenceViews = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
    v3 = [occurrenceViews objectAtIndexedSubscript:index];
  }

  return v3;
}

- (int64_t)_nextIndexFromCurrentIndex:(int64_t)index forward:(BOOL)forward
{
  forwardCopy = forward;
  occurrenceViews = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
  v8 = [occurrenceViews count];

  if (!v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (!forwardCopy)
  {
    occurrenceViews2 = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
    v10 = [occurrenceViews2 count] - 1;

    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = -1;
      goto LABEL_11;
    }

    return v10;
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
    v12 = 1;
LABEL_11:
    v13 = v12 + index;
    if (v13 >= 0)
    {
      occurrenceViews3 = [(EKDayOccurrenceViewIterator *)self occurrenceViews];
      if (v13 < [occurrenceViews3 count])
      {
        v10 = v13;
      }
    }

    return v10;
  }

  return [(EKDayOccurrenceViewIterator *)self firstTimedOccurrenceIndex];
}

- (void)_prepareOccurrenceViewsForIteration:(id)iteration selectedEvent:(id)event result:(id)result
{
  eventCopy = event;
  resultCopy = result;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__EKDayOccurrenceViewIterator__prepareOccurrenceViewsForIteration_selectedEvent_result___block_invoke;
  v12[3] = &unk_1E8440848;
  v12[4] = self;
  v13 = eventCopy;
  v14 = resultCopy;
  v10 = resultCopy;
  v11 = eventCopy;
  [(EKDayOccurrenceViewIterator *)self _separateOccurrenceViews:iteration result:v12];
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

- (void)_separateOccurrenceViews:(id)views result:(id)result
{
  v23 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  resultCopy = result;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = viewsCopy;
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
          v15 = array;
        }

        else
        {
          v15 = array2;
        }

        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = [array copy];
  v17 = [array2 copy];
  resultCopy[2](resultCopy, v16, v17);
}

- (int64_t)_selectedOccurrenceViewIndexInOccurrenceViews:(id)views selectedEvent:(id)event
{
  eventCopy = event;
  v6 = eventCopy;
  if (eventCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __91__EKDayOccurrenceViewIterator__selectedOccurrenceViewIndexInOccurrenceViews_selectedEvent___block_invoke;
    v9[3] = &unk_1E8440870;
    v10 = eventCopy;
    v7 = [views indexOfObjectPassingTest:v9];
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

- (int64_t)_selectedCopyOccurrenceViewIndexInOccurrenceViews:(id)views selectedIndex:(int64_t)index
{
  viewsCopy = views;
  v6 = viewsCopy;
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (index != 0x7FFFFFFFFFFFFFFFLL && index >= -1)
  {
    v8 = index + 1;
    if (v8 < [viewsCopy count])
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