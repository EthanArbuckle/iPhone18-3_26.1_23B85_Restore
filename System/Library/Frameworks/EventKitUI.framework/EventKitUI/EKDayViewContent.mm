@interface EKDayViewContent
- (BOOL)_getBottomPinRegion:(double *)region dayIndex:(unint64_t *)index forPoint:(CGPoint)point;
- (BOOL)_layoutDayIfNeeded:(int64_t)needed;
- (BOOL)_layoutNeededForDay:(int64_t)day;
- (BOOL)_shouldAnnotateAppEntitiesForDayAtIndex:(unint64_t)index;
- (BOOL)containsVisibleOccurrenceViews;
- (BOOL)eventsIntersectRect:(CGRect)rect;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)itemIsEligibleForGrouping:(id)grouping;
- (CGPoint)pointForDate:(double)date;
- (CGRect)_occurrencePaddingBetweenDays:(CGRect)days;
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKDayViewContent)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation;
- (EKDayViewContent)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation backgroundColor:(id)color opaque:(BOOL)opaque isMiniPreviewInEventDetail:(BOOL)detail numberOfDaysToDisplay:(unint64_t)display;
- (EKDayViewContentDelegate)delegate;
- (UIEdgeInsets)insetsForInterfaceLayout:(UIEdgeInsets)layout;
- (UIEdgeInsets)occurrencePadding;
- (_NSRange)_dayRangeForEvent:(id)event useProposedTime:(BOOL)time;
- (_NSRange)_dayRangeForEventWithStartDate:(id)date endDate:(id)endDate;
- (double)_dayWidth;
- (double)dateForPoint:(CGPoint)point;
- (double)firstEventSecond;
- (id)allVisibleItems;
- (id)dayStarts;
- (id)groupItem:(id)item withItem:(id)withItem;
- (id)lastDisplayedSecond;
- (id)layoutParameters;
- (id)occurrenceViewForEvent:(id)event;
- (id)occurrenceViewForEvent:(id)event onDate:(double)date;
- (id)occurrenceViews;
- (id)presentationControllerForEditMenu;
- (id)selectedCopyViewForDayOccurrenceView:(id)view;
- (id)selectedEventsForEditMenu;
- (id)singleItemsByDay;
- (id)singleItemsForPreloadByDay;
- (id)visibleItemsByDay;
- (unint64_t)_dayIndexForAllIndex:(unint64_t)index;
- (void)_adjustViewsForPinning;
- (void)_computeDayStartsAndEnds;
- (void)_configureOccurrenceViewMarginAndPadding:(id)padding;
- (void)_layoutDay:(unint64_t)day isLoadingAsync:(BOOL)async;
- (void)_layoutDaysIfVisible;
- (void)_tapRecognized:(id)recognized;
- (void)_updateShouldAnnotateAppEntitiesByDay;
- (void)applyContentItem:(id)item toView:(id)view shouldAnnotate:(BOOL)annotate;
- (void)applyLoadedOccurrenceBatchStartingAtIndex:(int64_t)index batchSize:(int64_t)size fromArray:(id)array withStartDate:(id)date animated:(BOOL)animated reverse:(BOOL)reverse completion:(id)completion;
- (void)applyLoadedOccurrencesWithBatching:(BOOL)batching animated:(BOOL)animated reverse:(BOOL)reverse completion:(id)completion;
- (void)attemptDisplayReviewPrompt;
- (void)clearTemporaryViews;
- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source;
- (void)dealloc;
- (void)invalidateOccurrenceLayout;
- (void)layoutSubviews;
- (void)loadAndLayoutOccurrences:(id)occurrences reverse:(BOOL)reverse;
- (void)loadOccurrences:(id)occurrences;
- (void)movePreloadedItemsToVisible;
- (void)prepareForReuseIsReload:(BOOL)reload;
- (void)rectBecameVisible:(CGRect)visible;
- (void)saveTemporaryViews;
- (void)selectEvent:(id)event;
- (void)setAllowsOccurrenceSelection:(BOOL)selection;
- (void)setCalendar:(id)calendar;
- (void)setDarkensWeekends:(BOOL)weekends;
- (void)setDimmedOccurrence:(id)occurrence;
- (void)setFixedDayWidth:(double)width;
- (void)setNeedsDisplay;
- (void)setOccurrenceLayoutLeadingInset:(double)inset;
- (void)setOccurrenceLayoutTrailingInset:(double)inset;
- (void)setOccurrenceLocationColor:(id)color;
- (void)setOccurrencePadding:(UIEdgeInsets)padding;
- (void)setOccurrenceTextBackgroundColor:(id)color;
- (void)setOccurrenceTimeColor:(id)color;
- (void)setOccurrenceTitleColor:(id)color;
- (void)setOccurrences:(id)occurrences;
- (void)setOrientation:(int64_t)orientation;
- (void)setReduceLayoutProcessingForAnimation:(BOOL)animation;
- (void)setStartDateWithDateComponents:(id)components;
- (void)setTimeZone:(id)zone;
- (void)setUsesSmallText:(BOOL)text;
- (void)setViewsDimmed:(BOOL)dimmed forEvent:(id)event;
- (void)stopRenderingEvents;
- (void)updateCurrentLayoutParameters;
@end

@implementation EKDayViewContent

- (id)occurrenceViews
{
  v17 = *MEMORY[0x1E69E9840];
  occurrenceContainerView = [(EKDayGridView *)self->_grid occurrenceContainerView];
  subviews = [occurrenceContainerView subviews];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(subviews, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = subviews;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v12}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_computeDayStartsAndEnds
{
  obj = self;
  objc_sync_enter(obj);
  [(NSMutableArray *)obj->_dayStarts removeAllObjects];
  v2 = obj->_startDate;
  if (CalTimeDirectionIsLeftToRight())
  {
    v3 = 1;
  }

  else
  {
    v4 = [(EKCalendarDate *)v2 calendarDateByAddingDays:obj->_daysToDisplay - 1];

    v3 = -1;
    v2 = v4;
  }

  if (obj->_daysToDisplay)
  {
    v5 = 0;
    do
    {
      calendarDateForEndOfDay = [(EKCalendarDate *)v2 calendarDateForEndOfDay];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v2, @"startDate", calendarDateForEndOfDay, @"endDate", 0}];
      [(NSMutableArray *)obj->_dayStarts addObject:v7];
      v8 = [(EKCalendarDate *)v2 calendarDateByAddingDays:v3];

      ++v5;
      v2 = v8;
    }

    while (obj->_daysToDisplay > v5);
  }

  else
  {
    v8 = v2;
  }

  [(EKDayViewContent *)obj _updateShouldAnnotateAppEntitiesByDay];

  objc_sync_exit(obj);
}

- (void)_updateShouldAnnotateAppEntitiesByDay
{
  v27 = *MEMORY[0x1E69E9840];
  delegate = [(EKDayViewContent *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    shouldAnnotateAppEntitiesByDay = self->_shouldAnnotateAppEntitiesByDay;
    if (shouldAnnotateAppEntitiesByDay)
    {
      [(NSMutableArray *)shouldAnnotateAppEntitiesByDay removeAllObjects];
    }

    else
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_daysToDisplay];
      v7 = self->_shouldAnnotateAppEntitiesByDay;
      self->_shouldAnnotateAppEntitiesByDay = v6;
    }

    if (self->_daysToDisplay)
    {
      v8 = 0;
      do
      {
        if (v8 >= [(NSMutableArray *)self->_dayStarts count])
        {
          break;
        }

        v9 = [(NSMutableArray *)self->_dayStarts objectAtIndexedSubscript:v8];
        v10 = [v9 objectForKey:@"startDate"];

        delegate2 = [(EKDayViewContent *)self delegate];
        v12 = [delegate2 dayViewContentShouldAnnotateAppEntities:self onDayStarting:v10];

        v13 = self->_shouldAnnotateAppEntitiesByDay;
        v14 = [MEMORY[0x1E696AD98] numberWithBool:v12];
        [(NSMutableArray *)v13 addObject:v14];

        v15 = self->_itemsByDay;
        objc_sync_enter(v15);
        if (v8 < [(NSMutableArray *)self->_itemsByDay count])
        {
          v16 = [(NSMutableArray *)self->_itemsByDay objectAtIndexedSubscript:v8];
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v18)
          {
            v19 = *v23;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v23 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                view = [*(*(&v22 + 1) + 8 * i) view];
                [view setShouldAnnotateAppEntities:v12];
              }

              v18 = [v17 countByEnumeratingWithState:&v22 objects:v26 count:16];
            }

            while (v18);
          }
        }

        objc_sync_exit(v15);

        ++v8;
      }

      while (v8 != self->_daysToDisplay);
    }
  }
}

- (EKDayViewContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)allVisibleItems
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  visibleItemsByDay = [(EKDayViewContent *)self visibleItemsByDay];
  v5 = [visibleItemsByDay countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(visibleItemsByDay);
        }

        [v3 addObjectsFromArray:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [visibleItemsByDay countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)visibleItemsByDay
{
  v3 = self->_itemsByDay;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_itemsByDay copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)_adjustViewsForPinning
{
  v142 = *MEMORY[0x1E69E9840];
  p_latestVisibleRect = &self->_latestVisibleRect;
  if (!CGRectIsNull(self->_latestVisibleRect))
  {
    visibleItemsByDay = [(EKDayViewContent *)self visibleItemsByDay];

    if (visibleItemsByDay)
    {
      if ([(EKDayViewContent *)self _doOffscreenOccurrences])
      {
        self->_pinningValid = 1;
        v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [(EKDayViewContent *)self _dayWidth];
        v6 = v5;
        CalRoundToScreenScale(3.5);
        v8 = v7;
        CalRoundToScreenScale(3.5);
        v10 = v9;
        if (!self->_topStackViews && CalCanvasPocketEventIndicatorEnabled())
        {
          v11 = objc_opt_new();
          if (self->_daysToDisplay)
          {
            v12 = 0;
            do
            {
              v13 = objc_opt_new();
              [(EKDayViewContent *)self addSubview:v13];
              [v13 setFrame:{0.0, 0.0, v6, v8}];
              [(EKDayViewContent *)self bringSubviewToFront:v13];
              [(NSArray *)v11 addObject:v13];

              ++v12;
            }

            while (self->_daysToDisplay > v12);
          }

          topStackViews = self->_topStackViews;
          self->_topStackViews = v11;
        }

        visibleItemsByDay2 = [(EKDayViewContent *)self visibleItemsByDay];
        if (self->_daysToDisplay)
        {
          v15 = 0;
          v16 = v10 * 3.0;
          do
          {
            if (v15 >= [visibleItemsByDay2 count])
            {
              break;
            }

            v17 = v15;
            if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
            {
              v17 = self->_daysToDisplay + ~v15;
            }

            [(EKDayViewContent *)self frame];
            v19 = v18;
            if (CalCanvasPocketEventIndicatorEnabled())
            {
              v82 = [(NSArray *)self->_topStackViews objectAtIndex:v15];
              [v82 setFrame:{v6 * v17, p_latestVisibleRect->origin.y, v6, v8}];
            }

            else
            {
              v82 = 0;
            }

            v83 = [visibleItemsByDay2 objectAtIndex:v15];
            if ([v83 count])
            {
              v143.origin.y = 0.0;
              v143.origin.x = v6 * v17;
              v143.size.width = v6;
              v143.size.height = v19;
              if (CGRectIntersectsRect(v143, *p_latestVisibleRect))
              {
                v20 = v83;
                v21 = self->_itemsByDayByEndDate;
                objc_sync_enter(v21);
                v22 = [(NSMutableArray *)self->_itemsByDayByEndDate objectAtIndex:v15];
                objc_sync_exit(v21);

                v138 = 0u;
                v139 = 0u;
                v136 = 0u;
                v137 = 0u;
                v23 = v20;
                v24 = [v23 countByEnumeratingWithState:&v136 objects:v141 count:16];
                if (v24)
                {
                  v25 = *v137;
                  do
                  {
                    for (i = 0; i != v24; ++i)
                    {
                      if (*v137 != v25)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v27 = *(*(&v136 + 1) + 8 * i);
                      if ([v27 isPinned])
                      {
                        [v4 addObject:v27];
                      }
                    }

                    v24 = [v23 countByEnumeratingWithState:&v136 objects:v141 count:16];
                  }

                  while (v24);
                }

                MinY = CGRectGetMinY(*p_latestVisibleRect);
                MaxY = CGRectGetMaxY(*p_latestVisibleRect);
                CalRoundToScreenScale(0.5);
                v31 = v30;
                v132 = 0;
                v133 = &v132;
                v134 = 0x2020000000;
                v135 = 0;
                v128 = 0;
                v129 = &v128;
                v130 = 0x2020000000;
                v131 = 0;
                v124 = 0;
                v125 = &v124;
                v126 = 0x2020000000;
                v127 = 0;
                v120 = 0;
                v121 = &v120;
                v122 = 0x2020000000;
                v123 = 0;
                v119[0] = 0;
                v119[1] = v119;
                v119[2] = 0x2020000000;
                v119[3] = 0;
                v118[0] = 0;
                v118[1] = v118;
                v118[2] = 0x2020000000;
                v118[3] = 0;
                v108[0] = MEMORY[0x1E69E9820];
                v108[1] = 3221225472;
                v108[2] = __42__EKDayViewContent__adjustViewsForPinning__block_invoke_2;
                v108[3] = &unk_1E843EE10;
                v116 = MinY;
                v117 = v8;
                v113 = &v124;
                v114 = v119;
                v112 = &__block_literal_global_293;
                v79 = v76;
                v109 = v79;
                v32 = v22;
                v110 = v32;
                v115 = &v132;
                v33 = v4;
                v111 = v33;
                v78 = v32;
                [v32 enumerateObjectsWithOptions:0 usingBlock:v108];
                v34 = v133[3];
                v35 = [v79 count];
                [v79 removeObjectsInRange:{v34, v35 - v133[3]}];
                v98[0] = MEMORY[0x1E69E9820];
                v36 = MaxY - v31;
                v98[1] = 3221225472;
                v98[2] = __42__EKDayViewContent__adjustViewsForPinning__block_invoke_3;
                v98[3] = &unk_1E843EE10;
                v106 = MaxY - v31;
                v107 = v16;
                v104 = v118;
                v103 = &v120;
                v102 = &__block_literal_global_293;
                v37 = v75;
                v99 = v37;
                v38 = v23;
                v100 = v38;
                v105 = &v128;
                v39 = v33;
                v101 = v39;
                v77 = v38;
                [v38 enumerateObjectsWithOptions:2 usingBlock:v98];
                v40 = v129[3];
                v41 = [v37 count];
                [v37 removeObjectsInRange:{v40, v41 - v129[3]}];
                v42 = v125[3];
                if (v42 >= v8)
                {
                  v42 = v8;
                }

                self->_visiblePinnedStackHeightAbove[v15] = v42;
                v43 = v121[3];
                if (v43 >= v16)
                {
                  v43 = v16;
                }

                self->_visiblePinnedStackHeightBelow[v15] = v43;
                if ([v79 count])
                {
                  lastObject = [v79 lastObject];
                  v45 = [lastObject objectAtIndex:0];
                  [v45 unPinnedViewFrame];
                  v46 = CGRectGetMaxY(v144);
                }

                else
                {
                  v46 = 0.0;
                }

                if ([v37 count])
                {
                  lastObject2 = [v37 lastObject];
                  v48 = [lastObject2 objectAtIndex:0];
                  [v48 unPinnedViewFrame];
                  v49 = CGRectGetMinY(v145);
                }

                else
                {
                  v49 = 0.0;
                }

                v50 = v125[3];
                if (MinY + v50 > v8 + MinY)
                {
                  v51 = MinY + v50 - v46;
                  v52 = v50 - v8;
                  if (v51 < v52)
                  {
                    v52 = v51;
                  }

                  MinY = MinY - v52;
                }

                v53 = v121[3];
                if (v36 - v53 < v36 - v16)
                {
                  v54 = v49 + v53 - v36;
                  v55 = v53 - v16;
                  if (v54 < v55)
                  {
                    v55 = v54;
                  }

                  v36 = v36 + v55;
                }

                if (CalCanvasPocketEventIndicatorEnabled())
                {
                  lastObject3 = [v79 lastObject];
                  [v82 updateWithRows:lastObject3];
                }

                else
                {
                  v94 = 0;
                  v95 = &v94;
                  v96 = 0x2020000000;
                  CalRoundToScreenScale(3.5);
                  v97 = MinY + v57;
                  v91[0] = MEMORY[0x1E69E9820];
                  v91[1] = 3221225472;
                  v91[2] = __42__EKDayViewContent__adjustViewsForPinning__block_invoke_4;
                  v91[3] = &unk_1E843EE38;
                  v93 = &v94;
                  v91[4] = self;
                  v92 = v79;
                  [v92 enumerateObjectsUsingBlock:v91];

                  _Block_object_dispose(&v94, 8);
                }

                v94 = 0;
                v95 = &v94;
                v96 = 0x2020000000;
                CalRoundToScreenScale(3.5);
                v97 = v36 - v58;
                v88[0] = MEMORY[0x1E69E9820];
                v88[1] = 3221225472;
                v88[2] = __42__EKDayViewContent__adjustViewsForPinning__block_invoke_5;
                v88[3] = &unk_1E843EE38;
                v90 = &v94;
                v88[4] = self;
                v59 = v37;
                v89 = v59;
                [v59 enumerateObjectsUsingBlock:v88];
                v86 = 0u;
                v87 = 0u;
                v84 = 0u;
                v85 = 0u;
                v60 = v39;
                v61 = [v60 countByEnumeratingWithState:&v84 objects:v140 count:16];
                if (v61)
                {
                  v62 = *v85;
                  do
                  {
                    for (j = 0; j != v61; ++j)
                    {
                      if (*v85 != v62)
                      {
                        objc_enumerationMutation(v60);
                      }

                      v64 = *(*(&v84 + 1) + 8 * j);
                      view = [v64 view];
                      [view frame];
                      v67 = v66;
                      v69 = v68;
                      v71 = v70;

                      [v64 unPinnedViewFrame];
                      v73 = v72;
                      view2 = [v64 view];
                      [view2 setFrame:{v67, v73, v69, v71}];
                    }

                    v61 = [v60 countByEnumeratingWithState:&v84 objects:v140 count:16];
                  }

                  while (v61);
                }

                [v79 removeAllObjects];
                [v59 removeAllObjects];
                [v60 removeAllObjects];

                _Block_object_dispose(&v94, 8);
                _Block_object_dispose(v118, 8);
                _Block_object_dispose(v119, 8);
                _Block_object_dispose(&v120, 8);
                _Block_object_dispose(&v124, 8);
                _Block_object_dispose(&v128, 8);
                _Block_object_dispose(&v132, 8);
              }
            }

            else if (CalCanvasPocketEventIndicatorEnabled())
            {
              [v82 updateWithRows:0];
            }

            ++v15;
          }

          while (v15 < self->_daysToDisplay);
        }
      }
    }
  }
}

- (void)layoutSubviews
{
  [(EKDayViewContent *)self updateCurrentLayoutParameters];
  [(EKDayViewContent *)self _layoutDaysIfVisible];
  [(EKDayViewContent *)self rectBecameVisible:self->_latestVisibleRect.origin.x, self->_latestVisibleRect.origin.y, self->_latestVisibleRect.size.width, self->_latestVisibleRect.size.height];
  if (self->_darkensWeekends)
  {
    [(EKDayViewContent *)self _dayWidth];
    v4 = v3;
    v5 = self->_startDate;
    v6 = v5;
    if (self->_daysToDisplay)
    {
      v7 = 0;
      while (1)
      {
        dayOfWeek = [v6 dayOfWeek];
        if (dayOfWeek == 1)
        {
          break;
        }

        if (dayOfWeek == 7)
        {
          v9 = &OBJC_IVAR___EKDayViewContent__saturdayDarkeningView;
LABEL_8:
          [(EKDayGridView *)self->_grid bounds];
          [*(&self->super.super.super.isa + *v9) setFrame:{v4 * v7, 0.0, v4}];
        }

        v10 = [v6 calendarDateByAddingDays:1];

        v5 = v10;
        ++v7;
        v6 = v10;
        if (self->_daysToDisplay <= v7)
        {
          goto LABEL_12;
        }
      }

      v9 = &OBJC_IVAR___EKDayViewContent__sundayDarkeningView;
      goto LABEL_8;
    }

LABEL_12:
  }
}

- (void)_layoutDaysIfVisible
{
  if (![(EKDayViewContent *)self dataLoaded])
  {
    return;
  }

  daysToDisplay = self->_daysToDisplay;
  singleItemsByDay = [(EKDayViewContent *)self singleItemsByDay];
  v5 = [singleItemsByDay count];

  if (daysToDisplay >= v5)
  {
    daysToDisplay = v5;
  }

  if (!self->_waitingForSynchronousLayoutToReapplyViews)
  {
    if (!daysToDisplay)
    {
      return;
    }

    v6 = 0;
    while (![(EKDayViewContent *)self _layoutNeededForDay:v6])
    {
      if (daysToDisplay == ++v6)
      {
        return;
      }
    }

    [(EKDayViewContent *)self saveTemporaryViews];
  }

  if (self->_shouldLayoutInReverse)
  {
    v7 = daysToDisplay - 1;
    if ((daysToDisplay - 1) >= 0)
    {
      v8 = 0;
      do
      {
        v8 |= [(EKDayViewContent *)self _layoutDayIfNeeded:v7--];
      }

      while (v7 != -1);
      goto LABEL_21;
    }

LABEL_20:
    LOBYTE(v8) = 0;
    goto LABEL_21;
  }

  if (!daysToDisplay)
  {
    goto LABEL_20;
  }

  v9 = 0;
  v8 = 0;
  do
  {
    v8 |= [(EKDayViewContent *)self _layoutDayIfNeeded:v9++];
  }

  while (daysToDisplay != v9);
LABEL_21:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__EKDayViewContent__layoutDaysIfVisible__block_invoke;
  v13[3] = &unk_1E843EC60;
  v13[4] = self;
  [(EKDayViewContent *)self applyLoadedOccurrencesWithBatching:0 animated:0 reverse:0 completion:v13];
  [(EKDayViewContent *)self setShouldAnimateLayout:0];
  if (v8)
  {
    delegate = [(EKDayViewContent *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      delegate2 = [(EKDayViewContent *)self delegate];
      [delegate2 dayViewContentDidLayout:self];
    }
  }
}

- (id)dayStarts
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableArray *)selfCopy->_dayStarts copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (double)_dayWidth
{
  result = self->_fixedDayWidth;
  daysToDisplay = self->_daysToDisplay;
  if (result <= 0.0)
  {
    if (!daysToDisplay)
    {
      return 0.0;
    }

    [(EKDayGridView *)self->_grid widthForOccurrences];
    daysToDisplay = self->_daysToDisplay;
    result = (v5 / daysToDisplay);
  }

  if (daysToDisplay == 1 && self->_eventsFillGrid)
  {
    return result + 1.0;
  }

  return result;
}

uint64_t __42__EKDayViewContent__adjustViewsForPinning__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  [v22 unPinnedViewFrame];
  if (!CGRectIsNull(v24))
  {
    v5 = *(*(*(a1 + 64) + 8) + 24);
    if (v5 >= *(a1 + 96))
    {
      v5 = *(a1 + 96);
    }

    v6 = *(a1 + 88) + v5;
    [v22 unPinnedViewFrame];
    MaxY = CGRectGetMaxY(v25);
    CalRoundToScreenScale(3.5);
    v9 = v6 + v8;
    v10 = *(*(*(a1 + 72) + 8) + 24);
    if (v10 >= *(a1 + 96))
    {
      v10 = *(a1 + 96);
    }

    v11 = *(a1 + 88) + v10;
    [v22 unPinnedViewFrame];
    v12 = CGRectGetMaxY(v26);
    CalRoundToScreenScale(3.5);
    [v22 setTopPinningProximity:(v11 + v13 - v12 + 20.0) / 20.0];
    if ((*(*(a1 + 56) + 16))())
    {
      CalRoundToScreenScale(3.5);
      if (a3)
      {
        v15 = [*(a1 + 40) objectAtIndex:a3 - 1];
        [v22 unPinnedViewFrame];
        v16 = CGRectGetMaxY(v27);
        [v15 unPinnedViewFrame];
        v17 = v16 - CGRectGetMaxY(v28);
        CalRoundToScreenScale(3.5);
        if (v18 < v17)
        {
          v17 = v18;
        }
      }

      else
      {
        v17 = v14;
      }

      *(*(*(a1 + 72) + 8) + 24) = v17 + *(*(*(a1 + 72) + 8) + 24);
      if (MaxY < v9)
      {
        *(*(*(a1 + 64) + 8) + 24) = v17 + *(*(*(a1 + 64) + 8) + 24);
        v20 = [*(a1 + 32) count];
        v19 = v22;
        *(*(*(a1 + 80) + 8) + 24) = v20;
        goto LABEL_16;
      }
    }

    else
    {
      v19 = v22;
      if (MaxY < v9)
      {
LABEL_16:
        [*(a1 + 48) removeObject:v19];
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

uint64_t __42__EKDayViewContent__adjustViewsForPinning__block_invoke(uint64_t a1, void *a2, void *a3, char a4)
{
  v6 = a2;
  v7 = a3;
  v8 = [v7 lastObject];
  v9 = [v8 lastObject];
  v10 = v9;
  if (v9 && (([v9 unPinnedViewFrame], (a4 & 1) == 0) ? (MinY = CGRectGetMinY(*&v11), objc_msgSend(v6, "unPinnedViewFrame"), MaxY = CGRectGetMinY(v21)) : (MinY = CGRectGetMaxY(*&v11), objc_msgSend(v6, "unPinnedViewFrame"), MaxY = CGRectGetMaxY(v20)), MinY == MaxY))
  {
    v18 = 0;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF70] array];

    [v7 addObject:v17];
    v18 = 1;
    v8 = v17;
  }

  [v8 addObject:v6];

  return v18;
}

uint64_t __42__EKDayViewContent__adjustViewsForPinning__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a2;
  [v32 unPinnedViewFrame];
  if (!CGRectIsNull(v34))
  {
    v5 = *(*(*(a1 + 64) + 8) + 24);
    if (v5 >= *(a1 + 96))
    {
      v5 = *(a1 + 96);
    }

    v6 = *(a1 + 88) - v5;
    [v32 unPinnedViewFrame];
    MinY = CGRectGetMinY(v35);
    CalRoundToScreenScale(3.5);
    v9 = v6 - v8;
    v10 = *(*(*(a1 + 72) + 8) + 24);
    if (v10 >= *(a1 + 96))
    {
      v10 = *(a1 + 96);
    }

    v11 = *(a1 + 88) - v10;
    CalRoundToScreenScale(3.5);
    v13 = v11 - v12;
    [v32 unPinnedViewFrame];
    [v32 setBottomPinningProximity:(CGRectGetMinY(v36) - v13 + 20.0) / 20.0];
    if (!(*(*(a1 + 56) + 16))())
    {
      v30 = v32;
      if (MinY <= v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    CalRoundToScreenScale(3.5);
    v15 = v14;
    v16 = a3 + 1;
    if (v16 < [*(a1 + 40) count])
    {
      v17 = [*(a1 + 40) objectAtIndex:v16];
      v18 = v32;
      [v17 unPinnedViewFrame];
      v19 = CGRectGetMinY(v37);
      [v18 unPinnedViewFrame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v38.origin.x = v21;
      v38.origin.y = v23;
      v38.size.width = v25;
      v38.size.height = v27;
      v15 = v19 - CGRectGetMinY(v38);
      CalRoundToScreenScale(3.5);
      if (v28 < v15)
      {
        v15 = v28;
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = v15 + *(*(*(a1 + 72) + 8) + 24);
    if (MinY > v9)
    {
      *(*(*(a1 + 64) + 8) + 24) = v15 + *(*(*(a1 + 64) + 8) + 24);
      v29 = [*(a1 + 32) count];
      v30 = v32;
      *(*(*(a1 + 80) + 8) + 24) = v29;
LABEL_14:
      [*(a1 + 48) removeObject:v30];
    }
  }

LABEL_15:

  return MEMORY[0x1EEE66BE0]();
}

- (void)clearTemporaryViews
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_saveTemporaryViewsEntryCount - 1;
  selfCopy->_saveTemporaryViewsEntryCount = v3;
  if (!v3)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = selfCopy->_temporaryViewCacheByDay;
    v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v13 = *v19;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v18 + 1) + 8 * i);
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          allValues = [v6 allValues];
          v8 = [allValues countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v8)
          {
            v9 = *v15;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v15 != v9)
                {
                  objc_enumerationMutation(allValues);
                }

                v11 = *(*(&v14 + 1) + 8 * j);
                [v11 setHidden:1];
                [v11 setOccurrence:0];
                [(NSMutableArray *)selfCopy->_reusableViews addObject:v11];
              }

              v8 = [allValues countByEnumeratingWithState:&v14 objects:v22 count:16];
            }

            while (v8);
          }

          [v6 removeAllObjects];
        }

        v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v4);
    }
  }

  objc_sync_exit(selfCopy);
}

void __42__EKDayViewContent__adjustViewsForPinning__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 view];
        [v10 frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v19 = *(*(*(a1 + 48) + 8) + 24);
        v20 = [v9 view];
        if ([v20 isHidden])
        {
          v39.origin.x = v12;
          v39.origin.y = v19;
          v39.size.width = v16;
          v39.size.height = v18;
          v21 = CGRectIntersectsRect(v39, *(*(a1 + 32) + 544));

          if (!v21)
          {
            continue;
          }
        }

        else
        {
        }

        v40.origin.x = v12;
        v40.origin.y = v14;
        v40.size.width = v16;
        v40.size.height = v18;
        if (!CGRectIntersectsRect(v40, *(*(a1 + 32) + 544)))
        {
          v41.origin.x = v12;
          v41.origin.y = v19;
          v41.size.width = v16;
          v41.size.height = v18;
          if (!CGRectIntersectsRect(v41, *(*(a1 + 32) + 544)))
          {
            continue;
          }
        }

        v22 = [v9 view];
        [v22 setFrame:{v12, v19, v16, v18}];

        v23 = [v9 view];
        if ([v23 isHidden])
        {
          v42.origin.x = v12;
          v42.origin.y = v19;
          v42.size.width = v16;
          v42.size.height = v18;
          v24 = CGRectIntersectsRect(v42, *(*(a1 + 32) + 544));

          if (!v24)
          {
            continue;
          }

          v23 = [v9 view];
          [v23 setHidden:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  CalRoundToScreenScale(3.5);
  v26 = v25;
  if (a3 + 1 < [*(a1 + 40) count])
  {
    v27 = [v4 objectAtIndex:0];
    v28 = [*(a1 + 40) objectAtIndex:a3 + 1];
    v29 = [v28 objectAtIndex:0];

    [v27 unPinnedViewFrame];
    MinY = CGRectGetMinY(v43);
    [v29 unPinnedViewFrame];
    v31 = MinY - CGRectGetMinY(v44);
    if (v26 >= v31)
    {
      v26 = v31;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) - v26;
}

- (EKDayViewContent)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation backgroundColor:(id)color opaque:(BOOL)opaque isMiniPreviewInEventDetail:(BOOL)detail numberOfDaysToDisplay:(unint64_t)display
{
  detailCopy = detail;
  opaqueCopy = opaque;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  [EKDayTimeView defaultHeightForSizeClass:class orientation:orientation];
  v65.receiver = self;
  v65.super_class = EKDayViewContent;
  v20 = [(EKDayViewContent *)&v65 initWithFrame:x, y, width, v19];
  v21 = v20;
  if (v20)
  {
    v20->_layoutParametersLock._os_unfair_lock_opaque = 0;
    [(EKDayViewContent *)v20 setOpaque:opaqueCopy];
    [(EKDayViewContent *)v21 bounds];
    if (v22 < 0.0)
    {
      v23 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D3400000, v23, OS_LOG_TYPE_ERROR, "EKDayContentView initialized with negative width", buf, 2u);
      }
    }

    v24 = [EKDayGridView alloc];
    [(EKDayViewContent *)v21 bounds];
    v25 = [(EKDayGridView *)v24 initWithFrame:class sizeClass:colorCopy backgroundColor:opaqueCopy opaque:display numberOfDaysToDisplay:?];
    grid = v21->_grid;
    v21->_grid = v25;

    [(EKDayGridView *)v21->_grid setAutoresizingMask:18];
    [(EKDayViewContent *)v21 addSubview:v21->_grid];
    [(EKDayViewContent *)v21 setAllowsOccurrenceSelection:1];
    [(EKDayViewContent *)v21 setEventsFillGrid:0];
    v27 = CUIKCalendar();
    calendar = v21->_calendar;
    v21->_calendar = v27;

    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:display];
    dayStarts = v21->_dayStarts;
    v21->_dayStarts = v29;

    v21->_daysToDisplay = display;
    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:display];
    lastLayoutParametersForDay = v21->_lastLayoutParametersForDay;
    v21->_lastLayoutParametersForDay = v31;

    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:v21->_daysToDisplay];
    lastLayoutParametersForDayForPreload = v21->_lastLayoutParametersForDayForPreload;
    v21->_lastLayoutParametersForDayForPreload = v33;

    v35 = [EKDayViewContentLayoutParameters alloc];
    v36 = [(EKDayViewContentLayoutParameters *)v35 initWithBoundsSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    if ((v21->_daysToDisplay & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v37 = 0;
      do
      {
        [(NSMutableArray *)v21->_lastLayoutParametersForDay setObject:v36 atIndexedSubscript:v37];
        [(NSMutableArray *)v21->_lastLayoutParametersForDayForPreload setObject:v36 atIndexedSubscript:v37++];
      }

      while (v37 < 2 * v21->_daysToDisplay);
    }

    v21->_visiblePinnedStackHeightAbove = malloc_type_calloc(display, 8uLL, 0x100004000313F17uLL);
    v21->_visiblePinnedStackHeightBelow = malloc_type_calloc(display, 8uLL, 0x100004000313F17uLL);
    [(EKDayViewContent *)v21 setIsMiniPreviewInEventDetail:detailCopy];
    v38 = *(MEMORY[0x1E695F050] + 16);
    v21->_latestVisibleRect.origin = *MEMORY[0x1E695F050];
    v21->_latestVisibleRect.size = v38;
    v39 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v21 action:sel__tapRecognized_];
    [v39 setDelegate:v21];
    [(EKDayViewContent *)v21 addGestureRecognizer:v39];
    v21->_offscreenOccurrencePinningEnabled = 1;
    v40 = objc_opt_new();
    singleItemsForPreloadByDay = v21->_singleItemsForPreloadByDay;
    v21->_singleItemsForPreloadByDay = v40;

    v42 = objc_opt_new();
    displayItemsForPreloadByDay = v21->_displayItemsForPreloadByDay;
    v21->_displayItemsForPreloadByDay = v42;

    v44 = objc_opt_new();
    displayItemsForPreloadByDayByEndDate = v21->_displayItemsForPreloadByDayByEndDate;
    v21->_displayItemsForPreloadByDayByEndDate = v44;

    v46 = objc_opt_new();
    singleItemsByDay = v21->_singleItemsByDay;
    v21->_singleItemsByDay = v46;

    v48 = objc_opt_new();
    itemsByDay = v21->_itemsByDay;
    v21->_itemsByDay = v48;

    v50 = objc_opt_new();
    itemsByDayByEndDate = v21->_itemsByDayByEndDate;
    v21->_itemsByDayByEndDate = v50;

    v52 = objc_opt_new();
    reusableViews = v21->_reusableViews;
    v21->_reusableViews = v52;

    v21->_sizeClass = class;
    v21->_occurrenceLayoutLeadingInset = 0.0;
    v21->_occurrenceLayoutTrailingInset = 0.0;
    v54 = objc_opt_new();
    temporaryViewCacheByDay = v21->_temporaryViewCacheByDay;
    v21->_temporaryViewCacheByDay = v54;

    v56 = [MEMORY[0x1E695DF70] arrayWithCapacity:v21->_daysToDisplay];
    geometryDelegates = v21->_geometryDelegates;
    v21->_geometryDelegates = v56;

    v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:v21->_daysToDisplay];
    geometryDelegatesForPreload = v21->_geometryDelegatesForPreload;
    v21->_geometryDelegatesForPreload = v58;

    if (v21->_daysToDisplay)
    {
      v60 = 0;
      do
      {
        v61 = objc_alloc_init(EKDayViewContentGeometryDelegate);
        [(EKDayViewContentGeometryDelegate *)v61 setDayViewContent:v21];
        [(NSMutableArray *)v21->_geometryDelegates setObject:v61 atIndexedSubscript:v60];
        v62 = objc_alloc_init(EKDayViewContentGeometryDelegate);

        [(EKDayViewContentGeometryDelegate *)v62 setDayViewContent:v21];
        [(NSMutableArray *)v21->_geometryDelegatesForPreload setObject:v62 atIndexedSubscript:v60];

        ++v60;
      }

      while (v21->_daysToDisplay > v60);
    }
  }

  return v21;
}

- (EKDayViewContent)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  height = [(EKDayViewContent *)self initWithFrame:class sizeClass:orientation orientation:whiteColor backgroundColor:1 opaque:0 isMiniPreviewInEventDetail:1 numberOfDaysToDisplay:x, y, width, height];

  return height;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  free(self->_visiblePinnedStackHeightAbove);
  free(self->_visiblePinnedStackHeightBelow);
  v4.receiver = self;
  v4.super_class = EKDayViewContent;
  [(EKDayViewContent *)&v4 dealloc];
}

- (void)setOrientation:(int64_t)orientation
{
  v16 = *MEMORY[0x1E69E9840];
  [(EKDayGridView *)self->_grid setOrientation:?];
  v5 = orientation - 3;
  [(EKDayViewContent *)self setUsesSmallText:(orientation - 3) < 2];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  occurrenceViews = [(EKDayViewContent *)self occurrenceViews];
  v7 = [occurrenceViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(occurrenceViews);
        }

        [*(*(&v11 + 1) + 8 * v10++) setUsesSmallText:v5 < 2];
      }

      while (v8 != v10);
      v8 = [occurrenceViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [(EKDayViewContent *)self invalidateOccurrenceLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(EKDayGridView *)self->_grid sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)singleItemsByDay
{
  v3 = self->_singleItemsByDay;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_singleItemsByDay copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)singleItemsForPreloadByDay
{
  v3 = self->_singleItemsForPreloadByDay;
  objc_sync_enter(v3);
  v4 = [(NSMutableArray *)self->_singleItemsForPreloadByDay copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)selectEvent:(id)event
{
  eventCopy = event;
  if (self->_selectedEvent != eventCopy)
  {
    v6 = eventCopy;
    objc_storeStrong(&self->_selectedEvent, event);
    eventCopy = v6;
  }
}

- (void)setDimmedOccurrence:(id)occurrence
{
  occurrenceCopy = occurrence;
  dimmedOccurrence = self->_dimmedOccurrence;
  v7 = occurrenceCopy;
  if (dimmedOccurrence != occurrenceCopy)
  {
    if (dimmedOccurrence)
    {
      [(EKDayViewContent *)self setViewsDimmed:0 forEvent:?];
    }

    objc_storeStrong(&self->_dimmedOccurrence, occurrence);
    if (self->_dimmedOccurrence)
    {
      [(EKDayViewContent *)self setViewsDimmed:1 forEvent:?];
    }
  }
}

- (void)setAllowsOccurrenceSelection:(BOOL)selection
{
  if (self->_allowsOccurrenceSelection != selection)
  {
    selectionCopy = selection;
    self->_allowsOccurrenceSelection = selection;
    subviews = [(EKDayViewContent *)self subviews];
    v5 = [subviews count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [subviews objectAtIndex:i];
        if ([v8 tag] == 2423)
        {
          [v8 setUserInteractionEnabled:selectionCopy];
        }
      }
    }
  }
}

- (void)setFixedDayWidth:(double)width
{
  if (self->_fixedDayWidth != width)
  {
    self->_fixedDayWidth = width;
    grid = [(EKDayViewContent *)self grid];
    [grid setFixedDayWidth:width];

    [(EKDayViewContent *)self invalidateOccurrenceLayout];
  }
}

- (void)setUsesSmallText:(BOOL)text
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_usesSmallText != text)
  {
    self->_usesSmallText = text;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    occurrenceViews = [(EKDayViewContent *)self occurrenceViews];
    v5 = [occurrenceViews countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(occurrenceViews);
          }

          [*(*(&v9 + 1) + 8 * v8++) setUsesSmallText:self->_usesSmallText];
        }

        while (v6 != v8);
        v6 = [occurrenceViews countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setReduceLayoutProcessingForAnimation:(BOOL)animation
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_reduceLayoutProcessingForAnimation != animation)
  {
    animationCopy = animation;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    occurrenceViews = [(EKDayViewContent *)self occurrenceViews];
    v6 = [occurrenceViews countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(occurrenceViews);
          }

          [*(*(&v10 + 1) + 8 * v9++) setReduceLayoutProcessingForAnimation:animationCopy];
        }

        while (v7 != v9);
        v7 = [occurrenceViews countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    self->_reduceLayoutProcessingForAnimation = animationCopy;
  }
}

- (void)setCalendar:(id)calendar
{
  calendarCopy = calendar;
  v4 = [calendarCopy isEqual:self->_calendar];
  v5 = calendarCopy;
  if ((v4 & 1) == 0)
  {
    v6 = [calendarCopy copy];
    calendar = self->_calendar;
    self->_calendar = v6;

    selfCopy = self;
    objc_sync_enter(selfCopy);
    startDate = selfCopy->_startDate;
    timeZone = [(NSCalendar *)self->_calendar timeZone];
    v11 = [(EKCalendarDate *)startDate calendarDateInTimeZone:timeZone];
    v12 = selfCopy->_startDate;
    selfCopy->_startDate = v11;

    endDate = selfCopy->_endDate;
    timeZone2 = [(NSCalendar *)self->_calendar timeZone];
    v15 = [(EKCalendarDate *)endDate calendarDateInTimeZone:timeZone2];
    v16 = selfCopy->_endDate;
    selfCopy->_endDate = v15;

    objc_sync_exit(selfCopy);
    [(EKDayViewContent *)selfCopy _computeDayStartsAndEnds];
    v5 = calendarCopy;
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v5 = [zoneCopy isEqualToTimeZone:timeZone];

  if ((v5 & 1) == 0)
  {
    [(NSCalendar *)self->_calendar setTimeZone:zoneCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(EKCalendarDate *)selfCopy->_startDate calendarDateInTimeZone:zoneCopy];
    startDate = selfCopy->_startDate;
    selfCopy->_startDate = v7;

    v9 = [(EKCalendarDate *)selfCopy->_endDate calendarDateInTimeZone:zoneCopy];
    endDate = selfCopy->_endDate;
    selfCopy->_endDate = v9;

    objc_sync_exit(selfCopy);
    [(EKDayViewContent *)selfCopy _computeDayStartsAndEnds];
  }
}

- (void)setOccurrenceTitleColor:(id)color
{
  colorCopy = color;
  if (self->_occurrenceTitleColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_occurrenceTitleColor, color);
    [(EKDayViewContent *)self invalidateOccurrenceLayout];
    colorCopy = v6;
  }
}

- (void)setOccurrenceTimeColor:(id)color
{
  colorCopy = color;
  if (self->_occurrenceTimeColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_occurrenceTimeColor, color);
    [(EKDayViewContent *)self invalidateOccurrenceLayout];
    colorCopy = v6;
  }
}

- (void)setOccurrenceLocationColor:(id)color
{
  colorCopy = color;
  if (self->_occurrenceLocationColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_occurrenceLocationColor, color);
    [(EKDayViewContent *)self invalidateOccurrenceLayout];
    colorCopy = v6;
  }
}

- (void)setOccurrenceTextBackgroundColor:(id)color
{
  colorCopy = color;
  if (self->_occurrenceTextBackgroundColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_occurrenceTextBackgroundColor, color);
    [(EKDayViewContent *)self invalidateOccurrenceLayout];
    colorCopy = v6;
  }
}

- (void)setOccurrenceLayoutLeadingInset:(double)inset
{
  if (vabdd_f64(self->_occurrenceLayoutLeadingInset, inset) >= 2.22044605e-16)
  {
    self->_occurrenceLayoutLeadingInset = inset;
    [(EKDayViewContent *)self invalidateOccurrenceLayout];
  }
}

- (void)setOccurrenceLayoutTrailingInset:(double)inset
{
  if (vabdd_f64(self->_occurrenceLayoutTrailingInset, inset) >= 2.22044605e-16)
  {
    self->_occurrenceLayoutTrailingInset = inset;
    [(EKDayViewContent *)self invalidateOccurrenceLayout];
  }
}

- (UIEdgeInsets)insetsForInterfaceLayout:(UIEdgeInsets)layout
{
  right = layout.right;
  bottom = layout.bottom;
  left = layout.left;
  top = layout.top;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  if (IsLeftToRight)
  {
    v8 = left;
  }

  else
  {
    v8 = right;
  }

  if (IsLeftToRight)
  {
    v9 = right;
  }

  else
  {
    v9 = left;
  }

  v10 = top;
  v11 = bottom;
  result.right = v9;
  result.bottom = v11;
  result.left = v8;
  result.top = v10;
  return result;
}

- (void)setOccurrencePadding:(UIEdgeInsets)padding
{
  [(EKDayViewContent *)self insetsForInterfaceLayout:padding.top, padding.left, padding.bottom, padding.right];
  if (!self->_hasCustomOccurrencePadding || (v8.f64[0] = v4, v8.f64[1] = v5, v9.f64[0] = v6, v9.f64[1] = v7, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *&self->_occurrencePadding.top), vceqq_f64(v9, *&self->_occurrencePadding.bottom)))) & 1) == 0))
  {
    self->_occurrencePadding.top = v4;
    self->_occurrencePadding.left = v5;
    self->_occurrencePadding.bottom = v6;
    self->_occurrencePadding.right = v7;
    self->_hasCustomOccurrencePadding = 1;

    [(EKDayViewContent *)self invalidateOccurrenceLayout];
  }
}

- (void)setStartDateWithDateComponents:(id)components
{
  componentsCopy = components;
  if (([componentsCopy isEqual:self->_startDate] & 1) == 0)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = MEMORY[0x1E69930C8];
    timeZone = [(NSCalendar *)selfCopy->_calendar timeZone];
    v7 = [v5 calendarDateWithDateComponents:componentsCopy timeZone:timeZone];
    calendarDateForDay = [v7 calendarDateForDay];
    startDate = self->_startDate;
    self->_startDate = calendarDateForDay;

    v10 = self->_startDate;
    if (selfCopy->_daysToDisplay == 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = [(EKCalendarDate *)v10 calendarDateByAddingDays:LODWORD(selfCopy->_daysToDisplay) - 1];
    }

    endDate = selfCopy->_endDate;
    selfCopy->_endDate = v11;

    objc_sync_exit(selfCopy);
    [(EKDayViewContent *)selfCopy _computeDayStartsAndEnds];
    [(EKDayViewContent *)selfCopy invalidateOccurrenceLayout];
  }
}

- (void)rectBecameVisible:(CGRect)visible
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  v26 = *MEMORY[0x1E69E9840];
  p_latestVisibleRect = &self->_latestVisibleRect;
  if (CGFloatNearlyEqualToFloat())
  {
    v9 = CGFloatNearlyEqualToFloat() ^ 1;
  }

  else
  {
    v9 = 1;
  }

  p_latestVisibleRect->origin.x = x;
  p_latestVisibleRect->origin.y = y;
  p_latestVisibleRect->size.width = width;
  p_latestVisibleRect->size.height = height;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allVisibleItems = [(EKDayViewContent *)self allVisibleItems];
  v11 = [allVisibleItems countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(allVisibleItems);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        view = [v15 view];
        if (![view isHidden])
        {
          goto LABEL_13;
        }

        view2 = [v15 view];
        [view2 frame];
        IsEmpty = CGRectIsEmpty(v27);

        if (!IsEmpty)
        {
          view3 = [v15 view];
          [view3 frame];
          v29.origin.x = x;
          v29.origin.y = y;
          v29.size.width = width;
          v29.size.height = height;
          v20 = CGRectIntersectsRect(v28, v29);

          if (v20)
          {
            view = [v15 view];
            [view setHidden:0];
LABEL_13:

            continue;
          }
        }
      }

      v12 = [allVisibleItems countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  if ([(EKDayViewContent *)self offscreenOccurrencePinningEnabled]&& ((v9 & 1) != 0 || !self->_pinningValid))
  {
    [(EKDayViewContent *)self _adjustViewsForPinning];
  }
}

- (BOOL)containsVisibleOccurrenceViews
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  occurrenceViews = [(EKDayViewContent *)self occurrenceViews];
  v3 = [occurrenceViews countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(occurrenceViews);
        }

        if (![*(*(&v7 + 1) + 8 * i) isHidden])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [occurrenceViews countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)dayOccurrenceViewSelected:(id)selected source:(unint64_t)source
{
  selectedCopy = selected;
  v20 = selectedCopy;
  if (source == 1 && self->_sizeClass == 2 && (v7 = objc_loadWeakRetained(&self->_delegate), v8 = objc_opt_respondsToSelector(), v7, selectedCopy = v20, (v8 & 1) != 0))
  {
    isReminderStack = [v20 isReminderStack];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (isReminderStack)
    {
      occurrences = [v20 occurrences];
      [WeakRetained dayViewContent:self pointerDidTargetOccurrences:occurrences];
    }

    else
    {
      v18 = MEMORY[0x1E695DEC8];
      occurrences = [v20 occurrence];
      v19 = [v18 arrayWithObject:occurrences];
      [WeakRetained dayViewContent:self pointerDidTargetOccurrences:v19];
    }
  }

  else if ([selectedCopy isReminderStack] && (v12 = objc_loadWeakRetained(&self->_delegate), v13 = objc_opt_respondsToSelector(), v12, (v13 & 1) != 0))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    occurrences = [v20 occurrences];
    [WeakRetained dayViewContent:self didSelectEvents:occurrences userInitiated:{+[EKDayOccurrenceView isUserInitiated:](EKDayOccurrenceView, "isUserInitiated:", source)}];
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    occurrences = [v20 occurrence];
    v16 = [EKDayOccurrenceView isUserInitiated:source];
    occurrenceDate = [v20 occurrenceDate];
    [WeakRetained dayViewContent:self didSelectEvent:occurrences userInitiated:v16 dateSelected:occurrenceDate];
  }

LABEL_12:
}

- (id)presentationControllerForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  presentationControllerForEditMenu = [WeakRetained presentationControllerForEditMenu];

  return presentationControllerForEditMenu;
}

- (id)selectedEventsForEditMenu
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  selectedEventsForEditMenu = [WeakRetained selectedEventsForEditMenu];

  return selectedEventsForEditMenu;
}

- (id)selectedCopyViewForDayOccurrenceView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 dayViewContent:self selectedCopyViewForOccurrenceView:viewCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (BOOL)_shouldAnnotateAppEntitiesForDayAtIndex:(unint64_t)index
{
  shouldAnnotateAppEntitiesByDay = self->_shouldAnnotateAppEntitiesByDay;
  if (!shouldAnnotateAppEntitiesByDay)
  {
    [(EKDayViewContent *)self _updateShouldAnnotateAppEntitiesByDay];
    shouldAnnotateAppEntitiesByDay = self->_shouldAnnotateAppEntitiesByDay;
  }

  if ([(NSMutableArray *)shouldAnnotateAppEntitiesByDay count]<= index)
  {
    return 0;
  }

  v6 = [(NSMutableArray *)self->_shouldAnnotateAppEntitiesByDay objectAtIndexedSubscript:index];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setViewsDimmed:(BOOL)dimmed forEvent:(id)event
{
  dimmedCopy = dimmed;
  v22 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allVisibleItems = [(EKDayViewContent *)self allVisibleItems];
  v8 = [allVisibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allVisibleItems);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        view = [v12 view];
        occurrence = [view occurrence];
        v15 = [occurrence isEqual:eventCopy];

        if (v15)
        {
          view2 = [v12 view];
          [view2 setDimmed:dimmedCopy];
        }
      }

      v9 = [allVisibleItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (CGPoint)pointForDate:(double)date
{
  v5 = MEMORY[0x1E69930C8];
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v7 = [v5 calendarDateWithAbsoluteTime:timeZone timeZone:date];

  calendarDateForDay = [v7 calendarDateForDay];
  secondsFromGMT = [calendarDateForDay secondsFromGMT];
  secondsFromGMT2 = [v7 secondsFromGMT];
  [calendarDateForDay absoluteTime];
  [(EKDayGridView *)self->_grid positionOfSecond:(date - v11 - (secondsFromGMT - secondsFromGMT2))];
  v13 = v12;
  dayStarts = [(EKDayViewContent *)self dayStarts];
  v15 = [dayStarts objectAtIndex:0];
  v16 = [v15 objectForKey:@"startDate"];

  v17 = [v7 differenceInDays:v16];
  [(EKDayViewContent *)self _dayWidth];
  v19 = v18 * 0.5 + v18 * v17;
  if ((CalInterfaceIsLeftToRight() & 1) == 0)
  {
    [(EKDayGridView *)self->_grid widthForOccurrences];
    v19 = v20 - v19;
  }

  v21 = v19;
  v22 = v13;
  result.y = v22;
  result.x = v21;
  return result;
}

- (id)occurrenceViewForEvent:(id)event onDate:(double)date
{
  v29 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  occurrenceContainerView = [(EKDayGridView *)self->_grid occurrenceContainerView];
  subviews = [occurrenceContainerView subviews];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = subviews;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 tag] == 2423)
        {
          occurrences = [v15 occurrences];
          v17 = [occurrences containsObject:eventCopy];

          if (v17)
          {
            if (!v12)
            {
              v12 = v15;
            }

            if (date != 0.0)
            {
              [(EKDayViewContent *)self pointForDate:date];
              [(EKDayViewContent *)self convertPoint:v15 toView:?];
              v19 = v18;
              v21 = v20;
              [v15 bounds];
              v31.x = v19;
              v31.y = v21;
              if (CGRectContainsPoint(v32, v31))
              {
                v22 = v15;

                goto LABEL_18;
              }
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

  v12 = v12;
  v22 = v12;
LABEL_18:

  return v22;
}

- (id)occurrenceViewForEvent:(id)event
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (eventCopy)
  {
    occurrenceContainerView = [(EKDayGridView *)self->_grid occurrenceContainerView];
    subviews = [occurrenceContainerView subviews];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = subviews;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 tag] == 2423)
          {
            occurrences = [v11 occurrences];
            v13 = [occurrences containsObject:eventCopy];

            if (v13)
            {
              v8 = v11;
              goto LABEL_14;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setDarkensWeekends:(BOOL)weekends
{
  if (self->_darkensWeekends != weekends)
  {
    self->_darkensWeekends = weekends;
    if (weekends)
    {
      if (!self->_sundayDarkeningView)
      {
        v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
        sundayDarkeningView = self->_sundayDarkeningView;
        self->_sundayDarkeningView = v4;

        v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.05];
        [(UIView *)self->_sundayDarkeningView setBackgroundColor:v6];

        [(EKDayGridView *)self->_grid insertSubview:self->_sundayDarkeningView atIndex:0];
      }

      if (!self->_saturdayDarkeningView)
      {
        v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
        saturdayDarkeningView = self->_saturdayDarkeningView;
        self->_saturdayDarkeningView = v7;

        v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.05];
        [(UIView *)self->_saturdayDarkeningView setBackgroundColor:v9];

        [(EKDayGridView *)self->_grid insertSubview:self->_saturdayDarkeningView atIndex:0];
      }

      [(EKDayViewContent *)self setNeedsLayout];
    }

    else
    {
      [(UIView *)self->_saturdayDarkeningView removeFromSuperview];
      [(UIView *)self->_sundayDarkeningView removeFromSuperview];
      v10 = self->_saturdayDarkeningView;
      self->_saturdayDarkeningView = 0;

      v11 = self->_sundayDarkeningView;
      self->_sundayDarkeningView = 0;
    }
  }
}

- (double)dateForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(EKDayViewContent *)self _dayWidth];
  [(EKDayGridView *)self->_grid secondAtPosition:y];
  if (x >= 0.0)
  {
    CalTimeDirectionIsLeftToRight();
  }

  timeZone = [(NSCalendar *)self->_calendar timeZone];
  [(EKCalendarDate *)self->_startDate absoluteTime];
  CalAbsoluteTimeAddGregorianUnits();
  v8 = v7;
  if (timeZone)
  {
    CFRelease(timeZone);
  }

  return v8;
}

- (void)setNeedsDisplay
{
  [(EKDayViewContent *)self updateCurrentLayoutParameters];
  v3.receiver = self;
  v3.super_class = EKDayViewContent;
  [(EKDayViewContent *)&v3 setNeedsDisplay];
}

- (void)invalidateOccurrenceLayout
{
  v3 = [EKDayViewContentLayoutParameters alloc];
  v6 = [(EKDayViewContentLayoutParameters *)v3 initWithBoundsSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v4 = self->_lastLayoutParametersForDay;
  objc_sync_enter(v4);
  if ((self->_daysToDisplay & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = 0;
    do
    {
      [(NSMutableArray *)self->_lastLayoutParametersForDay setObject:v6 atIndexedSubscript:v5++];
    }

    while (v5 < 2 * self->_daysToDisplay);
  }

  objc_sync_exit(v4);

  [(EKDayViewContent *)self setNeedsLayout];
}

- (id)layoutParameters
{
  os_unfair_lock_lock(&self->_layoutParametersLock);
  v3 = self->_layoutParameters;
  os_unfair_lock_unlock(&self->_layoutParametersLock);

  return v3;
}

- (void)updateCurrentLayoutParameters
{
  os_unfair_lock_lock(&self->_layoutParametersLock);
  [(EKDayViewContent *)self bounds];
  v4 = v3;
  v6 = v5;
  [(EKDayViewContentLayoutParameters *)self->_layoutParameters boundsSize];
  if ((CGSizeNearlyEqualToSize() & 1) == 0)
  {
    v7 = [[EKDayViewContentLayoutParameters alloc] initWithBoundsSize:v4, v6];
    layoutParameters = self->_layoutParameters;
    self->_layoutParameters = v7;
  }

  os_unfair_lock_unlock(&self->_layoutParametersLock);
}

uint64_t __40__EKDayViewContent__layoutDaysIfVisible__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) clearTemporaryViews];
  *(*(a1 + 32) + 664) = 0;
  return result;
}

- (BOOL)_layoutNeededForDay:(int64_t)day
{
  layoutParameters = [(EKDayViewContent *)self layoutParameters];
  v6 = self->_lastLayoutParametersForDay;
  objc_sync_enter(v6);
  v7 = [(NSMutableArray *)self->_lastLayoutParametersForDay objectAtIndexedSubscript:day];
  v8 = [v7 isEqual:layoutParameters];

  objc_sync_exit(v6);
  if ((v8 & 1) != 0 || ([(EKDayViewContent *)self _dayWidth], v10 = v9, [(EKDayViewContent *)self frame], v15.origin.y = 0.0, v15.origin.x = v10 * day, v15.size.width = v10, !CGRectIntersectsRect(v15, self->_latestVisibleRect)))
  {
    v13 = 0;
  }

  else
  {
    singleItemsByDay = [(EKDayViewContent *)self singleItemsByDay];
    v12 = [singleItemsByDay objectAtIndex:day];

    v13 = [v12 count] != 0;
  }

  return v13;
}

- (BOOL)_layoutDayIfNeeded:(int64_t)needed
{
  v5 = [(EKDayViewContent *)self _layoutNeededForDay:?];
  if (v5)
  {
    [(EKDayViewContent *)self _layoutDay:needed isLoadingAsync:0];
  }

  return v5;
}

- (void)_layoutDay:(unint64_t)day isLoadingAsync:(BOOL)async
{
  asyncCopy = async;
  v72 = *MEMORY[0x1E69E9840];
  [(EKDayViewContent *)self _dayWidth];
  v7 = v6;
  v51 = asyncCopy;
  if (asyncCopy)
  {
    singleItemsForPreloadByDay = [(EKDayViewContent *)self singleItemsForPreloadByDay];
    v54 = [singleItemsForPreloadByDay objectAtIndex:day];

    v9 = v54;
    if (![v54 count])
    {
      goto LABEL_39;
    }

    [v54 enumerateObjectsUsingBlock:&__block_literal_global_1];
    v10 = &OBJC_IVAR___EKDayViewContent__geometryDelegatesForPreload;
  }

  else
  {
    singleItemsByDay = [(EKDayViewContent *)self singleItemsByDay];
    v54 = [singleItemsByDay objectAtIndex:day];

    v9 = v54;
    if (![v54 count])
    {
      goto LABEL_39;
    }

    v10 = &OBJC_IVAR___EKDayViewContent__geometryDelegates;
  }

  v12 = [(NSMutableArray *)self->_dayStarts objectAtIndexedSubscript:day];
  v50 = [v12 objectForKey:@"startDate"];

  v13 = [(NSMutableArray *)self->_dayStarts objectAtIndexedSubscript:day];
  v49 = [v13 objectForKey:@"endDate"];

  v53 = [*(&self->super.super.super.isa + *v10) objectAtIndexedSubscript:day];
  layoutParameters = [(EKDayViewContent *)self layoutParameters];
  v14 = *(MEMORY[0x1E695F058] + 8);
  [layoutParameters boundsSize];
  v16 = v15;
  v17 = 0.5;
  if (self->_daysToDisplay <= 1)
  {
    +[EKDayOccurrenceView barToBarGapWidth];
  }

  [v53 setFrame:{v7 * day + v17, v14, v7 - v17, v16}];
  v18 = objc_alloc(MEMORY[0x1E6993480]);
  date = [v50 date];
  date2 = [v49 date];
  v21 = CUIKCalendar();
  v22 = [v18 initWithOccurrences:v54 startOfDay:date endOfDay:date2 geometryDelegate:v53 screenUtilsDelegate:self calendar:v21];

  v47 = v22;
  v23 = [v22 groupOccurrences:self];
  v48 = [v23 sortedArrayUsingComparator:&__block_literal_global_279];
  if (v51)
  {
    v24 = self->_displayItemsForPreloadByDay;
    objc_sync_enter(v24);
    [(NSMutableArray *)self->_displayItemsForPreloadByDay setObject:v23 atIndexedSubscript:day];
    objc_sync_exit(v24);

    v25 = self->_displayItemsForPreloadByDayByEndDate;
    objc_sync_enter(v25);
    [(NSMutableArray *)self->_displayItemsForPreloadByDayByEndDate setObject:v48 atIndexedSubscript:day];
    objc_sync_exit(v25);

    [v22 applyLayoutToOccurrences];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v26 = v54;
    v27 = [v26 countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v27)
    {
      v28 = *v66;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v66 != v28)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v65 + 1) + 8 * i) setIsLoadingAsync:0];
        }

        v27 = [v26 countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v27);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v30 = v23;
    v31 = [v30 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v31)
    {
      v32 = *v62;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v62 != v32)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v61 + 1) + 8 * j) setIsLoadingAsync:0];
        }

        v31 = [v30 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v31);
    }
  }

  else
  {
    v34 = self->_itemsByDay;
    objc_sync_enter(v34);
    [(NSMutableArray *)self->_itemsByDay setObject:v23 atIndexedSubscript:day];
    objc_sync_exit(v34);

    v35 = self->_itemsByDayByEndDate;
    objc_sync_enter(v35);
    [(NSMutableArray *)self->_itemsByDayByEndDate setObject:v48 atIndexedSubscript:day];
    objc_sync_exit(v35);

    [v22 applyLayoutToOccurrences];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v37 = objc_loadWeakRetained(&self->_delegate);
    v38 = [v37 dayViewContentShouldDrawSynchronously:self];
  }

  else
  {
    v38 = 0;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v23;
  v39 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
  if (v39)
  {
    v40 = *v58;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v58 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v57 + 1) + 8 * k);
        v43 = objc_alloc(MEMORY[0x1E6993428]);
        v44 = [EKDayViewContentItemStateWrapper wrapperWithContentItem:v42 viewContent:self];
        v45 = [v43 initWithState:v44];
        [v42 setCurrentState:v45];

        [v42 _requestPayloadAnimated:-[EKDayViewContent shouldAnimateLayout](self drawSynchronously:{"shouldAnimateLayout"), v38}];
      }

      v39 = [obj countByEnumeratingWithState:&v57 objects:v69 count:16];
    }

    while (v39);
  }

  if (v51)
  {
    v46 = self->_lastLayoutParametersForDayForPreload;
    objc_sync_enter(v46);
    [(NSMutableArray *)self->_lastLayoutParametersForDayForPreload setObject:layoutParameters atIndexedSubscript:day];
  }

  else
  {
    v46 = self->_lastLayoutParametersForDay;
    objc_sync_enter(v46);
    [(NSMutableArray *)self->_lastLayoutParametersForDay setObject:layoutParameters atIndexedSubscript:day];
  }

  objc_sync_exit(v46);

  v9 = v54;
LABEL_39:
}

uint64_t __46__EKDayViewContent__layoutDay_isLoadingAsync___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 end];
  v7 = [v5 end];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 start];
    v10 = [v5 start];
    v8 = [v9 compare:v10];
  }

  return v8;
}

- (_NSRange)_dayRangeForEventWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = MEMORY[0x1E69930C8];
  timeZone = [(NSCalendar *)self->_calendar timeZone];
  v10 = [v8 calendarDateWithDate:dateCopy timeZone:timeZone];

  v11 = MEMORY[0x1E69930C8];
  timeZone2 = [(NSCalendar *)self->_calendar timeZone];
  v13 = [v11 calendarDateWithDate:endDateCopy timeZone:timeZone2];

  [v10 absoluteTime];
  v15 = v14;
  [(EKCalendarDate *)self->_startDate absoluteTime];
  if (v15 < v16)
  {
    v17 = self->_startDate;

    v10 = v17;
  }

  v18 = [v10 differenceInDays:self->_startDate];
  calendarDateForDay = [v10 calendarDateForDay];
  v20 = [v13 differenceInDays:calendarDateForDay];
  if (([dateCopy isEqualToDate:endDateCopy] & 1) == 0 && !objc_msgSend(v13, "hour") && !objc_msgSend(v13, "minute"))
  {
    v20 = (__PAIR128__(v20, [v13 second]) - 1) >> 64;
  }

  v21 = v20 + 1;
  v22 = v18;
  result.length = v21;
  result.location = v22;
  return result;
}

- (_NSRange)_dayRangeForEvent:(id)event useProposedTime:(BOOL)time
{
  timeCopy = time;
  eventCopy = event;
  v7 = eventCopy;
  if (timeCopy)
  {
    proposedStartDate = [eventCopy proposedStartDate];
    [v7 duration];
    startDate = [proposedStartDate dateByAddingTimeInterval:?];

    proposedStartDate2 = [v7 proposedStartDate];

    selfCopy2 = self;
    v12 = proposedStartDate2;
    v13 = startDate;
  }

  else
  {
    startDate = [eventCopy startDate];
    proposedStartDate2 = [v7 endDateUnadjustedForLegacyClients];

    selfCopy2 = self;
    v12 = startDate;
    v13 = proposedStartDate2;
  }

  v14 = [(EKDayViewContent *)selfCopy2 _dayRangeForEventWithStartDate:v12 endDate:v13];
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.length = v18;
  result.location = v17;
  return result;
}

- (double)firstEventSecond
{
  v2 = -1.0;
  if (self->_daysToDisplay == 1)
  {
    singleItemsByDay = [(EKDayViewContent *)self singleItemsByDay];
    v5 = [singleItemsByDay count];

    if (v5)
    {
      IsLeftToRight = CalTimeDirectionIsLeftToRight();
      singleItemsByDay2 = [(EKDayViewContent *)self singleItemsByDay];
      v8 = singleItemsByDay2;
      if (IsLeftToRight)
      {
        [singleItemsByDay2 firstObject];
      }

      else
      {
        [singleItemsByDay2 lastObject];
      }
      v9 = ;

      if (v9 && [v9 count])
      {
        v10 = [v9 objectAtIndex:0];
        startDate = [v10 startDate];
        [startDate absoluteTime];
        v13 = v12;
        [(EKCalendarDate *)self->_startDate absoluteTime];
        if (v13 < v14)
        {
          v15 = self->_startDate;

          startDate = v15;
        }

        v16 = 3600 * [startDate hour];
        v17 = v16 + 60 * [startDate minute];
        v2 = (v17 + [startDate second]);
      }
    }
  }

  return v2;
}

- (id)lastDisplayedSecond
{
  dayStarts = [(EKDayViewContent *)self dayStarts];

  if (!dayStarts)
  {
    [(EKDayViewContent *)self _computeDayStartsAndEnds];
  }

  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  dayStarts2 = [(EKDayViewContent *)self dayStarts];
  v6 = dayStarts2;
  if (IsLeftToRight)
  {
    [dayStarts2 lastObject];
  }

  else
  {
    [dayStarts2 firstObject];
  }
  v7 = ;
  v8 = [v7 objectForKey:@"endDate"];

  return v8;
}

- (void)_configureOccurrenceViewMarginAndPadding:(id)padding
{
  paddingCopy = padding;
  [objc_opt_class() defaultPadding];
  if (self->_usesSmallText)
  {
    CalRoundToScreenScale(0.5);
  }

  [paddingCopy setPadding:?];
}

- (unint64_t)_dayIndexForAllIndex:(unint64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = self->_itemsByDay;
  objc_sync_enter(v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_itemsByDay;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      v9 += v7;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v8 += [*(*(&v14 + 1) + 8 * v11) count];
        if (v8 > index)
        {
          v9 = v12;
          goto LABEL_12;
        }

        ++v12;
        ++v11;
      }

      while (v7 != v11);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:

  objc_sync_exit(v5);
  return v9;
}

- (void)applyLoadedOccurrenceBatchStartingAtIndex:(int64_t)index batchSize:(int64_t)size fromArray:(id)array withStartDate:(id)date animated:(BOOL)animated reverse:(BOOL)reverse completion:(id)completion
{
  animatedCopy = animated;
  v68 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  dateCopy = date;
  completionCopy = completion;
  v18 = [arrayCopy count];
  if ([(EKDayViewContent *)self dataLoaded])
  {
    v50 = arrayCopy;
    if (!dateCopy || (-[EKDayViewContent startDate](self, "startDate"), v19 = v18, v20 = reverse, v21 = size, v22 = animatedCopy, v23 = completionCopy, v24 = dateCopy, v25 = objc_claimAutoreleasedReturnValue(), v26 = [v24 isEqual:v25], v25, dateCopy = v24, completionCopy = v23, animatedCopy = v22, size = v21, reverse = v20, v18 = v19, arrayCopy = v50, (v26 & 1) != 0))
    {
      v49 = completionCopy;
      self->_shouldLayoutInReverse = reverse;
      v47 = animatedCopy;
      [(EKDayViewContent *)self setShouldAnimateLayout:animatedCopy];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __124__EKDayViewContent_applyLoadedOccurrenceBatchStartingAtIndex_batchSize_fromArray_withStartDate_animated_reverse_completion___block_invoke;
      aBlock[3] = &unk_1E843ED50;
      v27 = arrayCopy;
      v64 = v27;
      selfCopy = self;
      reverseCopy = reverse;
      v28 = _Block_copy(aBlock);
      if (reverse)
      {
        if (index < size)
        {
          v29 = -1;
        }

        else
        {
          v29 = index - size;
        }

        for (; index > v29; --index)
        {
          v28[2](v28, index);
        }

        if ((index & 0x8000000000000000) == 0)
        {
LABEL_11:
          v30 = dispatch_time(0, 0);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __124__EKDayViewContent_applyLoadedOccurrenceBatchStartingAtIndex_batchSize_fromArray_withStartDate_animated_reverse_completion___block_invoke_2;
          block[3] = &unk_1E843ED78;
          block[4] = self;
          indexCopy = index;
          sizeCopy = size;
          v52 = v27;
          v53 = dateCopy;
          v57 = v47;
          reverseCopy2 = reverse;
          completionCopy = v49;
          v54 = v49;
          dispatch_after(v30, MEMORY[0x1E69E96A0], block);

LABEL_32:
          self->_pinningValid = 0;

          goto LABEL_33;
        }
      }

      else
      {
        if (size + index >= v18)
        {
          v31 = v18;
        }

        else
        {
          v31 = size + index;
        }

        if (v31 > index)
        {
          do
          {
            v28[2](v28, index++);
          }

          while (v31 != index);
          index = v31;
        }

        if (index != v18)
        {
          goto LABEL_11;
        }
      }

      v46 = dateCopy;
      v48 = v28;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v32 = v27;
      v33 = [v32 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v60;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v60 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v59 + 1) + 8 * i);
            view = [v37 view];
            selectedCopy = [view selectedCopy];

            if (selectedCopy)
            {
              [selectedCopy requestContentIfNeeded:16 completion:0];
              occurrenceContainerView = [(EKDayGridView *)self->_grid occurrenceContainerView];
              [occurrenceContainerView bringSubviewToFront:selectedCopy];
            }

            view2 = [v37 view];
            selected = [view2 selected];

            if (selected)
            {
              v43 = objc_alloc(MEMORY[0x1E6993428]);
              v44 = [EKDayViewContentItemStateWrapper wrapperWithContentItem:v37 viewContent:self];
              v45 = [v43 initWithState:v44];
              [v37 setCurrentState:v45];

              [v37 _requestPayloadAnimated:-[EKDayViewContent shouldAnimateLayout](self drawSynchronously:{"shouldAnimateLayout"), 1}];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v34);
      }

      completionCopy = v49;
      v49[2](v49);
      arrayCopy = v50;
      dateCopy = v46;
      v28 = v48;
      goto LABEL_32;
    }
  }

  completionCopy[2](completionCopy);
LABEL_33:
}

void __124__EKDayViewContent_applyLoadedOccurrenceBatchStartingAtIndex_batchSize_fromArray_withStartDate_animated_reverse_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = [*(a1 + 40) _dayIndexForAllIndex:a2];
  if (v4 >= [*(*(a1 + 40) + 648) count])
  {
    v10 = 0;
  }

  else
  {
    v5 = [v24 event];
    v6 = [v5 calendarItemIdentifier];

    v7 = [*(*(a1 + 40) + 648) objectAtIndexedSubscript:v4];
    v8 = v7;
    if (v6 && ([v7 objectForKeyedSubscript:v6], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = *(a1 + 40);
      if (*(v11 + 656) == 1)
      {
        [v8 setObject:0 forKeyedSubscript:v6];
        v11 = *(a1 + 40);
      }

      [*(v11 + 624) removeObject:v10];
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = *(a1 + 40);
  objc_sync_enter(v12);
  if (!v10)
  {
    v10 = [*(*(a1 + 40) + 624) firstObject];
    [v10 prepareForReuse];
  }

  v13 = [*(a1 + 40) _shouldAnnotateAppEntitiesForDayAtIndex:v4];
  v14 = [v24 view];

  if (v14)
  {
    v15 = [v24 view];
    [v15 prepareForReuse];

    v16 = *(*(a1 + 40) + 624);
    v17 = [v24 view];
    [v16 removeObject:v17];

    v18 = *(a1 + 40);
    v19 = [v24 view];
    [v18 applyContentItem:v24 toView:v19 shouldAnnotate:v13];

    v20 = [v24 view];

    v10 = v20;
  }

  else
  {
    if (v10)
    {
      [*(*(a1 + 40) + 624) removeObject:v10];
    }

    else
    {
      v10 = [EKDayOccurrenceView occurrenceViewWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v21 = [*(*(a1 + 40) + 408) occurrenceContainerView];
      [v21 addSubview:v10];
    }

    [*(a1 + 40) applyContentItem:v24 toView:v10 shouldAnnotate:v13];
  }

  v22 = *(*(a1 + 40) + 408);
  if (*(a1 + 48) == 1)
  {
    v23 = [v22 occurrenceContainerView];
    [v23 sendSubviewToBack:v10];
  }

  else
  {
    v23 = [v22 occurrenceContainerView];
    [v23 bringSubviewToFront:v10];
  }

  objc_sync_exit(v12);
}

- (void)movePreloadedItemsToVisible
{
  v70 = *MEMORY[0x1E69E9840];
  v34 = self->_itemsByDay;
  objc_sync_enter(v34);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = self->_itemsByDay;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v3)
  {
    v43 = *v62;
    do
    {
      v44 = v3;
      for (i = 0; i != v44; ++i)
      {
        if (*v62 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v61 + 1) + 8 * i);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v57 objects:v68 count:16];
        if (v7)
        {
          v8 = *v58;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v58 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v57 + 1) + 8 * j);
              view = [v10 view];
              if (view)
              {
                reusableViews = self->_reusableViews;
                view2 = [v10 view];
                [(NSMutableArray *)reusableViews addObject:view2];
              }
            }

            v7 = [v6 countByEnumeratingWithState:&v57 objects:v68 count:16];
          }

          while (v7);
        }
      }

      v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v3);
  }

  [(NSMutableArray *)self->_itemsByDay removeAllObjects];
  objc_sync_exit(v34);

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = self->_singleItemsForPreloadByDay;
  objc_sync_enter(v35);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v15 = self->_singleItemsForPreloadByDay;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v16)
  {
    v17 = *v54;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v53 + 1) + 8 * k) copy];
        [v14 addObject:v19];
      }

      v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v16);
  }

  objc_sync_exit(v35);
  v36 = self->_singleItemsByDay;
  objc_sync_enter(v36);
  [(NSMutableArray *)self->_singleItemsByDay removeAllObjects];
  [(NSMutableArray *)self->_singleItemsByDay addObjectsFromArray:v14];
  objc_sync_exit(v36);

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = self->_displayItemsForPreloadByDay;
  objc_sync_enter(v37);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v21 = self->_displayItemsForPreloadByDay;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v22)
  {
    v23 = *v50;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [*(*(&v49 + 1) + 8 * m) copy];
        [v20 addObject:v25];
      }

      v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v22);
  }

  objc_sync_exit(v37);
  v38 = self->_itemsByDay;
  objc_sync_enter(v38);
  [(NSMutableArray *)self->_itemsByDay removeAllObjects];
  [(NSMutableArray *)self->_itemsByDay addObjectsFromArray:v20];
  objc_sync_exit(v38);

  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = self->_displayItemsForPreloadByDayByEndDate;
  objc_sync_enter(v39);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v27 = self->_displayItemsForPreloadByDayByEndDate;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v45 objects:v65 count:16];
  if (v28)
  {
    v29 = *v46;
    do
    {
      for (n = 0; n != v28; ++n)
      {
        if (*v46 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = [*(*(&v45 + 1) + 8 * n) copy];
        [v26 addObject:v31];
      }

      v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v45 objects:v65 count:16];
    }

    while (v28);
  }

  objc_sync_exit(v39);
  v40 = self->_itemsByDayByEndDate;
  objc_sync_enter(v40);
  [(NSMutableArray *)self->_itemsByDayByEndDate removeAllObjects];
  [(NSMutableArray *)self->_itemsByDayByEndDate addObjectsFromArray:v26];
  objc_sync_exit(v40);

  v32 = self->_lastLayoutParametersForDayForPreload;
  objc_sync_enter(v32);
  v33 = [(NSMutableArray *)self->_lastLayoutParametersForDayForPreload copy];
  objc_sync_exit(v32);

  v41 = self->_lastLayoutParametersForDay;
  objc_sync_enter(v41);
  [(NSMutableArray *)self->_lastLayoutParametersForDay removeAllObjects];
  [(NSMutableArray *)self->_lastLayoutParametersForDay addObjectsFromArray:v33];
  objc_sync_exit(v41);

  self->_pinningValid = 0;
}

- (void)applyLoadedOccurrencesWithBatching:(BOOL)batching animated:(BOOL)animated reverse:(BOOL)reverse completion:(id)completion
{
  reverseCopy = reverse;
  animatedCopy = animated;
  batchingCopy = batching;
  completionCopy = completion;
  if ([(EKDayViewContent *)self dataLoaded])
  {
    allVisibleItems = [(EKDayViewContent *)self allVisibleItems];
    v12 = allVisibleItems;
    if (batchingCopy)
    {
      v13 = 1;
      if (!reverseCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = [allVisibleItems count];
      if (!reverseCopy)
      {
LABEL_4:
        v14 = 0;
        if (!batchingCopy)
        {
LABEL_5:
          startDate = 0;
LABEL_11:
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __83__EKDayViewContent_applyLoadedOccurrencesWithBatching_animated_reverse_completion___block_invoke;
          v16[3] = &unk_1E843EDA0;
          v16[4] = self;
          v17 = completionCopy;
          [(EKDayViewContent *)self applyLoadedOccurrenceBatchStartingAtIndex:v14 batchSize:v13 fromArray:v12 withStartDate:startDate animated:animatedCopy reverse:reverseCopy completion:v16];

          goto LABEL_12;
        }

LABEL_10:
        startDate = [(EKDayViewContent *)self startDate];
        goto LABEL_11;
      }
    }

    v14 = [v12 count] - 1;
    if (!batchingCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_12:
}

void __83__EKDayViewContent_applyLoadedOccurrencesWithBatching_animated_reverse_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 624);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setHidden:{1, v9}];
        [v8 setOccurrence:0];
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (void)applyContentItem:(id)item toView:(id)view shouldAnnotate:(BOOL)annotate
{
  annotateCopy = annotate;
  viewCopy = view;
  itemCopy = item;
  event = [itemCopy event];
  [viewCopy setIsProposedTime:{objc_msgSend(itemCopy, "isProposedTime")}];
  events = [itemCopy events];
  [viewCopy setOccurrences:events];

  [itemCopy setView:viewCopy];
  [viewCopy setDelegate:self];
  [viewCopy setUsesSmallText:self->_usesSmallText];
  [viewCopy setUserInteractionEnabled:self->_allowsOccurrenceSelection];
  [viewCopy setTag:2423];
  [viewCopy setDelegate:self];
  [viewCopy setDimmed:{objc_msgSend(itemCopy, "isProposedTime")}];
  [viewCopy setHasPrecedingDuration:{objc_msgSend(itemCopy, "hasPrecedingDuration")}];
  [viewCopy setHasTrailingDuration:{objc_msgSend(itemCopy, "hasTrailingDuration")}];
  [viewCopy setMultiAllDayRoundCorners:1];
  [viewCopy setOccurrenceIsFirstVisibleDayOfEvent:{objc_msgSend(itemCopy, "occurrenceIsFirstVisibleDayOfEvent")}];
  occurrenceDateIndex = [itemCopy occurrenceDateIndex];

  [viewCopy setOccurrenceDateIndex:occurrenceDateIndex];
  [viewCopy setIsSelectedCopyView:0];
  [viewCopy setShouldAnnotateAppEntities:annotateCopy];
  [(EKDayViewContent *)self _configureOccurrenceViewMarginAndPadding:viewCopy];
  if (self->_hasCustomOccurrencePadding)
  {
    [(EKDayViewContent *)self occurrencePadding];
    [viewCopy setPadding:?];
  }

  if ([event isEqual:self->_dimmedOccurrence])
  {
    [viewCopy setDimmed:1];
  }
}

- (void)stopRenderingEvents
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = self->_itemsByDay;
  objc_sync_enter(v3);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_itemsByDay;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v10)
        {
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v13 + 1) + 8 * v12++) stopRendering];
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (void)prepareForReuseIsReload:(BOOL)reload
{
  [(EKDayViewContent *)self setDataLoaded:0];
  v5 = self->_singleItemsForPreloadByDay;
  objc_sync_enter(v5);
  [(NSMutableArray *)self->_singleItemsForPreloadByDay removeAllObjects];
  if (self->_daysToDisplay)
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E0F0];
    do
    {
      [(NSMutableArray *)self->_singleItemsForPreloadByDay addObject:v7];
      ++v6;
    }

    while (v6 < self->_daysToDisplay);
  }

  objc_sync_exit(v5);

  v8 = self->_displayItemsForPreloadByDay;
  objc_sync_enter(v8);
  [(NSMutableArray *)self->_displayItemsForPreloadByDay removeAllObjects];
  if (self->_daysToDisplay)
  {
    v9 = 0;
    v10 = MEMORY[0x1E695E0F0];
    do
    {
      [(NSMutableArray *)self->_displayItemsForPreloadByDay addObject:v10];
      ++v9;
    }

    while (v9 < self->_daysToDisplay);
  }

  objc_sync_exit(v8);

  v11 = self->_displayItemsForPreloadByDayByEndDate;
  objc_sync_enter(v11);
  [(NSMutableArray *)self->_displayItemsForPreloadByDayByEndDate removeAllObjects];
  if (self->_daysToDisplay)
  {
    v12 = 0;
    v13 = MEMORY[0x1E695E0F0];
    do
    {
      [(NSMutableArray *)self->_displayItemsForPreloadByDayByEndDate addObject:v13];
      ++v12;
    }

    while (v12 < self->_daysToDisplay);
  }

  objc_sync_exit(v11);

  if (!reload)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__EKDayViewContent_prepareForReuseIsReload___block_invoke;
    aBlock[3] = &unk_1E843EC60;
    aBlock[4] = self;
    v14 = _Block_copy(aBlock);
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v14[2](v14);
    }

    else
    {
      v15 = dispatch_group_create();
      dispatch_group_enter(v15);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __44__EKDayViewContent_prepareForReuseIsReload___block_invoke_2;
      block[3] = &unk_1E843EDA0;
      v19 = v15;
      v20 = v14;
      v16 = v15;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v17 = dispatch_time(0, 200000000);
      dispatch_group_wait(v16, v17);
    }
  }
}

void __44__EKDayViewContent_prepareForReuseIsReload___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 520);
  objc_sync_enter(v2);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(*(a1 + 32) + 520);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = *v14;
          do
          {
            v11 = 0;
            do
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [*(*(&v13 + 1) + 8 * v11) view];
              [v12 prepareForReuse];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v9);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
}

void __44__EKDayViewContent_prepareForReuseIsReload___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

- (void)loadOccurrences:(id)occurrences
{
  v57 = *MEMORY[0x1E69E9840];
  occurrencesCopy = occurrences;
  v43 = [occurrencesCopy count];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_daysToDisplay];
  if (self->_daysToDisplay)
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v4 addObject:v6];

      ++v5;
    }

    while (v5 < self->_daysToDisplay);
  }

  v35 = v4;
  if (v43)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__EKDayViewContent_loadOccurrences___block_invoke;
    aBlock[3] = &unk_1E843EDC8;
    aBlock[4] = self;
    obj = v4;
    v54 = obj;
    v41 = _Block_copy(aBlock);
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [occurrencesCopy objectAtIndex:{v8, v35}];
      isProposedTimeEvent = [v9 isProposedTimeEvent];
      v11 = MEMORY[0x1E6992F70];
      if (isProposedTimeEvent)
      {
        proposedStartDate = [v9 proposedStartDate];
        [v9 duration];
        v13 = [v11 rangeWithStartDate:proposedStartDate duration:?];
      }

      else
      {
        proposedStartDate = [v9 startDate];
        endDateUnadjustedForLegacyClients = [v9 endDateUnadjustedForLegacyClients];
        v13 = [v11 rangeWithStartDate:proposedStartDate endDate:endDateUnadjustedForLegacyClients];
      }

      endDate = [(EKDayViewContent *)self endDate];
      v16 = [endDate calendarDateByAddingDays:1];

      v17 = MEMORY[0x1E6992F70];
      startDate = [(EKDayViewContent *)self startDate];
      date = [startDate date];
      date2 = [v16 date];
      v21 = [v17 rangeWithStartDate:date endDate:date2];

      if (![v13 intersectsRange:v21])
      {
        goto LABEL_15;
      }

      if ([v9 isProposedTimeEvent])
      {
        goto LABEL_14;
      }

      eventStore = [v9 eventStore];
      if ([eventStore showDeclinedEvents])
      {
        break;
      }

      v23 = [v9 participationStatus] == 3;

      if (!v23)
      {
        goto LABEL_14;
      }

LABEL_15:

      if (v43 == ++v8)
      {
        v24 = self->_singleItemsForPreloadByDay;
        objc_sync_enter(v24);
        [(NSMutableArray *)self->_singleItemsForPreloadByDay removeAllObjects];
        [(NSMutableArray *)self->_singleItemsForPreloadByDay addObjectsFromArray:obj];
        objc_sync_exit(v24);

        goto LABEL_17;
      }
    }

LABEL_14:
    (*(v41 + 2))(v41, v9, v7++, [v9 isProposedTimeEvent]);
    goto LABEL_15;
  }

LABEL_17:
  if (self->_selectedEvent)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obja = v35;
    v44 = [obja countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v44)
    {
      v40 = 0;
      v42 = *v50;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v50 != v42)
          {
            objc_enumerationMutation(obja);
          }

          v26 = *(*(&v49 + 1) + 8 * i);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v27 = v26;
          v28 = [v27 countByEnumeratingWithState:&v45 objects:v55 count:16];
          if (v28)
          {
            v29 = *v46;
            while (2)
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v46 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                view = [*(*(&v45 + 1) + 8 * j) view];
                occurrence = [view occurrence];
                v33 = [occurrence isEqual:self->_selectedEvent];

                if (v33)
                {
                  v40 = 1;
                  goto LABEL_33;
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v45 objects:v55 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }
          }

LABEL_33:
        }

        v44 = [obja countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v44);

      if (v40)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    selectedEvent = self->_selectedEvent;
    self->_selectedEvent = 0;
  }

LABEL_39:
  [(EKDayViewContent *)self setDataLoaded:1, v35];
}

void __36__EKDayViewContent_loadOccurrences___block_invoke(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  v51 = a2;
  v50 = a4;
  v6 = [*(a1 + 32) _dayRangeForEvent:? useProposedTime:?];
  v8 = v6 + v7;
  v44 = 440;
  if (v6 + v7 >= *(*(a1 + 32) + 440))
  {
    v8 = *(*(a1 + 32) + 440);
  }

  v47 = v8;
  v48 = v6;
  if (v6 < v8)
  {
    v9 = v6;
    v45 = v8 - 1;
    v10 = ~v6;
    do
    {
      v11 = v9;
      if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
      {
        v11 = v10 + *(*(a1 + 32) + v44);
      }

      v12 = [[EKDayViewContentItem alloc] initWithEventIndex:a3 sizeClass:*(*(a1 + 32) + 632)];
      v49 = [*(a1 + 40) objectAtIndex:v11];
      [v49 addObject:v12];
      [(EKDayViewContentItem *)v12 setEvent:v51];
      if (v50)
      {
        v13 = [v51 endDateUnadjustedForLegacyClients];
        v14 = [v51 startDate];
        [v13 timeIntervalSinceDate:v14];
        v16 = v15;

        v17 = [v51 proposedStartDate];
        v18 = [v17 dateByAddingTimeInterval:v16];

        v19 = MEMORY[0x1E69930C8];
        v20 = [v51 proposedStartDate];
        v21 = [*(*(a1 + 32) + 696) timeZone];
        v22 = [v19 calendarDateWithDate:v20 timeZone:v21];
        [(EKDayViewContentItem *)v12 setStartDate:v22];

        v23 = MEMORY[0x1E69930C8];
      }

      else
      {
        v24 = MEMORY[0x1E69930C8];
        v25 = [v51 startDate];
        v26 = [*(*(a1 + 32) + 696) timeZone];
        v27 = [v24 calendarDateWithDate:v25 timeZone:v26];
        [(EKDayViewContentItem *)v12 setStartDate:v27];

        v23 = MEMORY[0x1E69930C8];
        v18 = [v51 endDateUnadjustedForLegacyClients];
      }

      v28 = [*(*(a1 + 32) + 696) timeZone];
      v29 = [v23 calendarDateWithDate:v18 timeZone:v28];
      [(EKDayViewContentItem *)v12 setEndDate:v29];

      [v51 travelTime];
      [(EKDayViewContentItem *)v12 setTravelTime:?];
      [(EKDayViewContentItem *)v12 setUsesSmallText:*(*(a1 + 32) + 671)];
      [(EKDayViewContentItem *)v12 setIsProposedTime:v50];
      v30 = *(a1 + 32);
      objc_sync_enter(v30);
      v31 = *(*(a1 + 32) + 680);
      v32 = *(*(a1 + 32) + 688);
      objc_sync_exit(v30);

      v33 = [v51 startCalendarDate];
      v34 = [v33 calendarDateForDay];

      -[EKDayViewContentItem setOccurrenceDateIndex:](v12, "setOccurrenceDateIndex:", [v31 differenceInDays:v34] + v9);
      if (v9 <= v48)
      {
        v35 = [(EKDayViewContentItem *)v12 startDate];
        [v35 absoluteTime];
        v37 = v36;
        [v31 absoluteTime];
        [(EKDayViewContentItem *)v12 setHasPrecedingDuration:v37 < v38];
      }

      else
      {
        [(EKDayViewContentItem *)v12 setHasPrecedingDuration:1];
      }

      if (v9 >= v45)
      {
        v39 = [(EKDayViewContentItem *)v12 endDate];
        [v39 absoluteTime];
        v41 = v40;
        v42 = [v32 calendarDateForEndOfDay];
        [v42 absoluteTime];
        [(EKDayViewContentItem *)v12 setHasTrailingDuration:v41 > v43 + 1.0];
      }

      else
      {
        [(EKDayViewContentItem *)v12 setHasTrailingDuration:1];
      }

      [(EKDayViewContentItem *)v12 setOccurrenceIsFirstVisibleDayOfEvent:[(EKDayViewContentItem *)v12 hasPrecedingDuration]^ 1];

      ++v9;
      --v10;
    }

    while (v47 != v9);
  }
}

- (void)loadAndLayoutOccurrences:(id)occurrences reverse:(BOOL)reverse
{
  [(EKDayViewContent *)self loadOccurrences:occurrences];
  daysToDisplay = self->_daysToDisplay;
  if (reverse)
  {
    v7 = daysToDisplay - 1;
    if ((daysToDisplay - 1) >= 0)
    {
      do
      {
        [(EKDayViewContent *)self _layoutDay:v7-- isLoadingAsync:1];
      }

      while (v7 != -1);
    }
  }

  else if (daysToDisplay)
  {
    v8 = 0;
    do
    {
      [(EKDayViewContent *)self _layoutDay:v8++ isLoadingAsync:1];
    }

    while (v8 < self->_daysToDisplay);
  }
}

- (void)setOccurrences:(id)occurrences
{
  occurrencesCopy = occurrences;
  if (!self->_waitingForSynchronousLayoutToReapplyViews)
  {
    [(EKDayViewContent *)self saveTemporaryViews];
    self->_waitingForSynchronousLayoutToReapplyViews = 1;
  }

  [(EKDayViewContent *)self prepareForReuseIsReload:1];
  [(EKDayViewContent *)self loadOccurrences:occurrencesCopy];
  [(EKDayViewContent *)self movePreloadedItemsToVisible];
  [(EKDayViewContent *)self invalidateOccurrenceLayout];
}

- (void)saveTemporaryViews
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_saveTemporaryViewsEntryCount;
  objc_sync_exit(selfCopy);

  obj = selfCopy->_itemsByDay;
  objc_sync_enter(obj);
  v3 = [(NSMutableArray *)selfCopy->_itemsByDay count];
  if (v3 >= 1)
  {
    v4 = 0;
    v17 = selfCopy;
    do
    {
      [(NSMutableArray *)selfCopy->_itemsByDay objectAtIndexedSubscript:v4];
      v6 = v5 = selfCopy;
      if (v4 >= [(NSMutableArray *)v5->_temporaryViewCacheByDay count])
      {
        v7 = objc_opt_new();
        [(NSMutableArray *)v17->_temporaryViewCacheByDay addObject:v7];
      }

      v8 = [(NSMutableArray *)v17->_temporaryViewCacheByDay objectAtIndexedSubscript:v4];
      v9 = [v6 count];
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v11 = [v6 objectAtIndexedSubscript:i];
          view = [v11 view];
          event = [v11 event];
          calendarItemIdentifier = [event calendarItemIdentifier];

          if (view)
          {
            if (calendarItemIdentifier)
            {
              v15 = [v8 objectForKeyedSubscript:calendarItemIdentifier];

              if (!v15)
              {
                [v8 setObject:view forKeyedSubscript:calendarItemIdentifier];
                [v11 setView:0];
              }
            }
          }
        }
      }

      ++v4;
      selfCopy = v17;
    }

    while (v4 != v3);
  }

  objc_sync_exit(obj);
}

void __42__EKDayViewContent__adjustViewsForPinning__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = [v9 view];
        [v10 frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        v19 = *(*(*(a1 + 48) + 8) + 24) - v18;
        v20 = [v9 view];
        if ([v20 isHidden])
        {
          v39.origin.x = v12;
          v39.origin.y = v19;
          v39.size.width = v16;
          v39.size.height = v18;
          v21 = CGRectIntersectsRect(v39, *(*(a1 + 32) + 544));

          if (!v21)
          {
            continue;
          }
        }

        else
        {
        }

        v40.origin.x = v12;
        v40.origin.y = v14;
        v40.size.width = v16;
        v40.size.height = v18;
        if (!CGRectIntersectsRect(v40, *(*(a1 + 32) + 544)))
        {
          v41.origin.x = v12;
          v41.origin.y = v19;
          v41.size.width = v16;
          v41.size.height = v18;
          if (!CGRectIntersectsRect(v41, *(*(a1 + 32) + 544)))
          {
            continue;
          }
        }

        v22 = [v9 view];
        [v22 setFrame:{v12, v19, v16, v18}];

        v23 = [v9 view];
        if ([v23 isHidden])
        {
          v42.origin.x = v12;
          v42.origin.y = v19;
          v42.size.width = v16;
          v42.size.height = v18;
          v24 = CGRectIntersectsRect(v42, *(*(a1 + 32) + 544));

          if (!v24)
          {
            continue;
          }

          v23 = [v9 view];
          [v23 setHidden:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  CalRoundToScreenScale(3.5);
  v26 = v25;
  if (a3 + 1 < [*(a1 + 40) count])
  {
    v27 = [v4 objectAtIndex:0];
    v28 = [*(a1 + 40) objectAtIndex:a3 + 1];
    v29 = [v28 objectAtIndex:0];

    [v29 unPinnedViewFrame];
    MaxY = CGRectGetMaxY(v43);
    [v27 unPinnedViewFrame];
    v31 = MaxY - CGRectGetMaxY(v44);
    if (v26 >= v31)
    {
      v26 = v31;
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v26 + *(*(*(a1 + 48) + 8) + 24);
}

- (BOOL)eventsIntersectRect:(CGRect)rect
{
  width = rect.size.width;
  r1 = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  v28 = *MEMORY[0x1E69E9840];
  [(EKDayViewContent *)self occurrenceViews];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = *v24;
    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v23 + 1) + 8 * i) frame];
        v31.origin.x = v12;
        v31.origin.y = v13;
        v31.size.width = v14;
        v16 = v15;
        v29.origin.x = x;
        v29.origin.y = y;
        v29.size.width = width;
        v29.size.height = r1;
        v31.size.height = v16;
        v30 = CGRectIntersection(v29, v31);
        height = v30.size.height;
        v32.origin.x = v7;
        v32.origin.y = v8;
        v32.size.width = v9;
        v32.size.height = v10;
        if (!CGRectEqualToRect(v30, v32))
        {
          v18 = v16 + -1.0;
          if (v16 + -1.0 > 1800.0)
          {
            v18 = 1800.0;
          }

          if (height > v18)
          {
            LOBYTE(v5) = 1;
            goto LABEL_14;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

- (BOOL)_getBottomPinRegion:(double *)region dayIndex:(unint64_t *)index forPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(EKDayViewContent *)self _dayWidth];
  v11 = (x / v10);
  MaxY = CGRectGetMaxY(self->_latestVisibleRect);
  visiblePinnedStackHeightBelow = self->_visiblePinnedStackHeightBelow;
  v14 = visiblePinnedStackHeightBelow[v11];
  v15 = MaxY - v14;
  if (index)
  {
    *index = v11;
  }

  v16 = v15 + -3.0;
  if (region)
  {
    *region = v16;
    v14 = visiblePinnedStackHeightBelow[v11];
  }

  return y >= v16 && v14 > 0.0;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  [touchCopy locationInView:self];
  if ([(EKDayViewContent *)self _getBottomPinRegion:0 dayIndex:0 forPoint:?])
  {
    v6 = 1;
  }

  else
  {
    view = [touchCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v6 = isKindOfClass ^ 1;
  }

  return v6 & 1;
}

- (void)_tapRecognized:(id)recognized
{
  v30 = *MEMORY[0x1E69E9840];
  [recognized locationInView:self];
  v5 = v4;
  v7 = v6;
  v27 = 0;
  v28 = 0.0;
  if (![(EKDayViewContent *)self _getBottomPinRegion:&v28 dayIndex:&v27 forPoint:?])
  {
    v10 = [(EKDayGridView *)self->_grid hitTest:0 withEvent:v5, v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v18 = objc_opt_respondsToSelector();

    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }

    v9 = objc_loadWeakRetained(&self->_delegate);
    [(EKDayViewContent *)self dateForPoint:v5, v7];
    [v9 dayViewContent:self didTapInEmptySpaceOnDay:?];
LABEL_19:

    goto LABEL_20;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  visibleItemsByDay = [(EKDayViewContent *)self visibleItemsByDay];
  v9 = [visibleItemsByDay objectAtIndex:v27];

  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *v24;
LABEL_4:
  v12 = 0;
  while (1)
  {
    if (*v24 != v11)
    {
      objc_enumerationMutation(v9);
    }

    v13 = *(*(&v23 + 1) + 8 * v12);
    view = [v13 view];
    [view frame];
    if (v15 >= v28)
    {
      break;
    }

LABEL_10:
    if (v10 == ++v12)
    {
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  isPinned = [v13 isPinned];

  if ((isPinned & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = v13;

  if (v10)
  {
    v19 = objc_loadWeakRetained(&self->_delegate);
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      view2 = [v10 view];
      occurrence = [view2 occurrence];
      [v9 dayViewContent:self didTapPinnedOccurrence:occurrence];

      goto LABEL_19;
    }
  }

LABEL_20:
}

- (BOOL)itemIsEligibleForGrouping:(id)grouping
{
  event = [grouping event];
  isReminderIntegrationEvent = [event isReminderIntegrationEvent];

  return isReminderIntegrationEvent;
}

- (id)groupItem:(id)item withItem:(id)withItem
{
  withItemCopy = withItem;
  itemCopy = item;
  events = [itemCopy events];
  events2 = [withItemCopy events];
  v10 = [events arrayByAddingObjectsFromArray:events2];
  eventIndex = [itemCopy eventIndex];
  eventIndex2 = [withItemCopy eventIndex];
  if (eventIndex >= eventIndex2)
  {
    eventIndex = eventIndex2;
  }

  v13 = [[EKDayViewContentItem alloc] initWithEventIndex:eventIndex sizeClass:self->_sizeClass];
  [(EKDayViewContentItem *)v13 setEvents:v10];
  -[EKDayViewContentItem setIsLoadingAsync:](v13, "setIsLoadingAsync:", [itemCopy isLoadingAsync]);
  -[EKDayViewContentItem setUsesSmallText:](v13, "setUsesSmallText:", [itemCopy usesSmallText]);
  view = [itemCopy view];
  [view setHidden:1];

  view2 = [withItemCopy view];
  [view2 setHidden:1];

  startDate = [itemCopy startDate];

  startDate2 = [withItemCopy startDate];

  date = [startDate date];
  date2 = [startDate2 date];
  v20 = [date isBeforeDate:date2];

  if (v20)
  {
    v21 = startDate;
  }

  else
  {
    v21 = startDate2;
  }

  v22 = v21;
  [(EKDayViewContentItem *)v13 setStartDate:v22];
  [(EKDayViewContentItem *)v13 setEndDate:v22];

  return v13;
}

- (CGRect)_occurrencePaddingBetweenDays:(CGRect)days
{
  height = days.size.height;
  width = days.size.width;
  y = days.origin.y;
  x = days.origin.x;
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  v9 = &OBJC_IVAR___EKDayViewContent__occurrenceLayoutTrailingInset;
  if (IsLeftToRight)
  {
    v10 = &OBJC_IVAR___EKDayViewContent__occurrenceLayoutLeadingInset;
  }

  else
  {
    v10 = &OBJC_IVAR___EKDayViewContent__occurrenceLayoutTrailingInset;
  }

  if (!IsLeftToRight)
  {
    v9 = &OBJC_IVAR___EKDayViewContent__occurrenceLayoutLeadingInset;
  }

  v11 = *(&self->super.super.super.isa + *v10) + 2.0;
  v12 = x + v11;
  v13 = y + 0.0;
  v14 = width - (*(&self->super.super.super.isa + *v9) + 2.0 + v11);
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UIEdgeInsets)occurrencePadding
{
  top = self->_occurrencePadding.top;
  left = self->_occurrencePadding.left;
  bottom = self->_occurrencePadding.bottom;
  right = self->_occurrencePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end