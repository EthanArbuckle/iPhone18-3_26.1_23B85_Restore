@interface EKDayViewContentItem
- (BOOL)isEqual:(id)a3;
- (CGRect)stagedFrame;
- (CGRect)unPinnedViewFrame;
- (EKCalendarDate)startDateIncludingTravelTime;
- (EKDayViewContentItem)initWithEventIndex:(unint64_t)a3 sizeClass:(int64_t)a4;
- (NSDate)end;
- (NSDate)start;
- (NSDate)startWithTravelTime;
- (NSString)description;
- (NSString)eventIdentifier;
- (double)enoughHeightForOneLine;
- (double)travelTimeHeight;
- (double)viewMaxNaturalTextHeight;
- (void)_requestPayloadAnimated:(BOOL)a3 drawSynchronously:(BOOL)a4;
- (void)_updateWithPayload:(id)a3;
- (void)setBackgroundChangedCallback:(id)a3;
- (void)setBottomPinningProximity:(double)a3;
- (void)setEvent:(id)a3;
- (void)setEvents:(id)a3;
- (void)setStagedFrame:(CGRect)a3;
- (void)setTopPinningProximity:(double)a3;
- (void)setTravelTimeHeight:(double)a3;
- (void)setView:(id)a3;
- (void)setVisibleHeight:(double)a3;
- (void)stopRendering;
- (void)synchronouslyRenderContentOnNextDisplay;
- (void)updateViewBackgroundChangedCallback;
@end

@implementation EKDayViewContentItem

- (CGRect)stagedFrame
{
  x = self->_stagedFrame.origin.x;
  y = self->_stagedFrame.origin.y;
  width = self->_stagedFrame.size.width;
  height = self->_stagedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSDate)startWithTravelTime
{
  v2 = [(EKDayViewContentItem *)self startDateIncludingTravelTime];
  v3 = [v2 date];

  return v3;
}

- (EKCalendarDate)startDateIncludingTravelTime
{
  v3 = MEMORY[0x1E69930C8];
  v4 = [(EKDayViewContentItem *)self startDate];
  [v4 absoluteTime];
  v6 = v5;
  [(EKDayViewContentItem *)self travelTime];
  v8 = v6 - v7;
  v9 = [(EKDayViewContentItem *)self startDate];
  v10 = [v9 timeZone];
  v11 = [v3 calendarDateWithAbsoluteTime:v10 timeZone:v8];

  return v11;
}

- (double)viewMaxNaturalTextHeight
{
  if ([(EKDayViewContentItem *)self isLoadingAsync]|| ([(EKDayViewContentItem *)self view], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v4 = [(EKDayViewContentItem *)self event];
    [EKDayOccurrenceView minNaturalTextHeightForEvent:v4 usingSmallText:[(EKDayViewContentItem *)self usesSmallText] sizeClass:self->_sizeClass];
    v6 = v7 + self->_travelTimeHeight;
  }

  else
  {
    v4 = [(EKDayViewContentItem *)self view];
    [v4 viewMaxNaturalTextHeight];
    v6 = v5;
  }

  return v6;
}

- (NSDate)end
{
  v2 = [(EKDayViewContentItem *)self endDate];
  v3 = [v2 date];

  return v3;
}

- (double)travelTimeHeight
{
  if ([(EKDayViewContentItem *)self isLoadingAsync])
  {
    return self->_travelTimeHeight;
  }

  v4 = [(EKDayViewContentItem *)self view];
  if (v4)
  {
    v5 = [(EKDayViewContentItem *)self view];
    [v5 travelTimeSubviewHeightInPoints];
    travelTimeHeight = v6;
  }

  else
  {
    travelTimeHeight = self->_travelTimeHeight;
  }

  return travelTimeHeight;
}

- (CGRect)unPinnedViewFrame
{
  x = self->_unPinnedViewFrame.origin.x;
  y = self->_unPinnedViewFrame.origin.y;
  width = self->_unPinnedViewFrame.size.width;
  height = self->_unPinnedViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (EKDayViewContentItem)initWithEventIndex:(unint64_t)a3 sizeClass:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = EKDayViewContentItem;
  v6 = [(EKDayViewContentItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v8 = *(MEMORY[0x1E695F050] + 16);
    *(v6 + 40) = *MEMORY[0x1E695F050];
    *(v6 + 56) = v8;
    v9 = *(MEMORY[0x1E695F058] + 16);
    *(v6 + 8) = *MEMORY[0x1E695F058];
    *(v6 + 19) = a3;
    *(v6 + 24) = v9;
    *(v6 + 9) = 0x7FEFFFFFFFFFFFFFLL;
    *(v6 + 12) = a4;
    *(v6 + 13) = -1;
    v10 = objc_alloc_init(MEMORY[0x1E6993428]);
    currentState = v7->_currentState;
    v7->_currentState = v10;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_eventIndex == v5->_eventIndex && (v6 = [(NSArray *)self->_events count], v6 == [(NSArray *)v5->_events count]))
      {
        if ([(NSArray *)self->_events count]< 2)
        {
          event = self->_event;
          if (event | v5->_event)
          {
            v13 = [(EKEvent *)event isEqual:?];
          }

          else
          {
            v13 = 1;
          }
        }

        else
        {
          v7 = [MEMORY[0x1E695DFD8] setWithArray:self->_events];
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v8 = v5->_events;
          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v17;
            while (2)
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v17 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                if (![v7 containsObject:{*(*(&v16 + 1) + 8 * i), v16}])
                {
                  v13 = 0;
                  goto LABEL_23;
                }
              }

              v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          v13 = 1;
LABEL_23:
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (void)setEvent:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_event, a3);
  if (v5)
  {
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    events = self->_events;
    self->_events = v6;
  }

  else
  {
    events = self->_events;
    self->_events = MEMORY[0x1E695E0F0];
  }
}

- (void)setEvents:(id)a3
{
  v4 = [a3 sortedArrayUsingFunction:MEMORY[0x1E69932D8] context:0];
  events = self->_events;
  self->_events = v4;

  v6 = [(NSArray *)self->_events firstObject];
  event = self->_event;
  self->_event = v6;
}

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = EKDayViewContentItem;
  v3 = [(EKDayViewContentItem *)&v12 description];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(EKDayViewContentItem *)self event];
  v6 = [v5 title];
  v7 = [(EKDayViewContentItem *)self startDate];
  v8 = [(EKDayViewContentItem *)self endDate];
  [(EKDayViewContentItem *)self travelTime];
  v9 = CUIKDisplayStringForTravelTimeUsingShortFormat();
  v10 = [v4 stringWithFormat:@"%@ title: [%@], start date: [%@], end date: [%@], travelTime: [%@]", v3, v6, v7, v8, v9];

  return v10;
}

- (void)setTopPinningProximity:(double)a3
{
  self->_topPinningProximity = a3;
  if (![(EKDayViewContentItem *)self isLoadingAsync])
  {
    v4 = [(EKDayViewContentItem *)self view];

    if (v4)
    {
      topPinningProximity = self->_topPinningProximity;
      v6 = [(EKDayViewContentItem *)self view];
      [v6 setTopPinningProximity:topPinningProximity];
    }
  }
}

- (void)setBottomPinningProximity:(double)a3
{
  self->_bottomPinningProximity = a3;
  if (![(EKDayViewContentItem *)self isLoadingAsync])
  {
    v5 = [(EKDayViewContentItem *)self view];

    if (v5)
    {
      v6 = [(EKDayViewContentItem *)self view];
      [v6 setBottomPinningProximity:a3];
    }
  }
}

- (void)setView:(id)a3
{
  v17 = a3;
  v5 = [(EKDayOccurrenceView *)self->_view backgroundViewForEventIndicator];
  v6 = [v5 image];

  view = self->_view;
  if (view)
  {
    [(EKDayOccurrenceView *)view setBackgroundChangedCallback:0];
  }

  objc_storeStrong(&self->_view, a3);
  if (v17)
  {
    [v17 setTopPinningProximity:self->_topPinningProximity];
    [v17 setBottomPinningProximity:self->_bottomPinningProximity];
    if (!CGRectIsEmpty(self->_stagedFrame))
    {
      [v17 setFrame:{self->_stagedFrame.origin.x, self->_stagedFrame.origin.y, self->_stagedFrame.size.width, self->_stagedFrame.size.height}];
    }

    [v17 setVisibleHeight:self->_visibleHeight];
    [v17 setTravelTimeSubviewHeightInPoints:self->_travelTimeHeight];
    if (self->_stagedPayload)
    {
      v8 = objc_alloc(MEMORY[0x1E6993428]);
      v9 = [(EKDayViewContentItem *)self currentState];
      v10 = [v8 initWithState:v9];
      [v17 setCurrentImageState:v10];

      [v17 forceUpdateContentWithPayload:self->_stagedPayload];
      stagedPayload = self->_stagedPayload;
      self->_stagedPayload = 0;
    }

    else if (self->_synchronouslyRenderContentOnNextDisplay)
    {
      v12 = objc_alloc(MEMORY[0x1E6993428]);
      v13 = [(EKDayViewContentItem *)self currentState];
      v14 = [v12 initWithState:v13];
      [v17 setCurrentImageState:v14];

      [v17 synchronouslyRenderContentOnNextDisplay];
    }

    self->_synchronouslyRenderContentOnNextDisplay = 0;
    [(EKDayViewContentItem *)self updateViewBackgroundChangedCallback];
    v15 = [(EKDayOccurrenceView *)self->_view backgroundViewForEventIndicator];
    v16 = [v15 image];

    if (self->_backgroundChangedCallback && v6 | v16 && ([v6 isEqual:v16] & 1) == 0)
    {
      (*(self->_backgroundChangedCallback + 2))();
    }
  }
}

- (void)setBackgroundChangedCallback:(id)a3
{
  v4 = _Block_copy(a3);
  backgroundChangedCallback = self->_backgroundChangedCallback;
  self->_backgroundChangedCallback = v4;

  [(EKDayViewContentItem *)self updateViewBackgroundChangedCallback];
}

- (void)updateViewBackgroundChangedCallback
{
  if (self->_view)
  {
    objc_initWeak(&location, self);
    if (self->_backgroundChangedCallback)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __59__EKDayViewContentItem_updateViewBackgroundChangedCallback__block_invoke;
      v3[3] = &unk_1E843ECC0;
      objc_copyWeak(&v4, &location);
      [(EKDayOccurrenceView *)self->_view setBackgroundChangedCallback:v3];
      objc_destroyWeak(&v4);
    }

    else
    {
      [(EKDayOccurrenceView *)self->_view setBackgroundChangedCallback:0];
    }

    objc_destroyWeak(&location);
  }
}

void __59__EKDayViewContentItem_updateViewBackgroundChangedCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = _Block_copy(WeakRetained[26]);
    v3 = v2;
    if (v2)
    {
      (*(v2 + 2))(v2, v4);
    }

    WeakRetained = v4;
  }
}

- (void)synchronouslyRenderContentOnNextDisplay
{
  if (self->_view)
  {
    v3 = objc_alloc(MEMORY[0x1E6993428]);
    v4 = [(EKDayViewContentItem *)self currentState];
    v5 = [v3 initWithState:v4];
    [(EKDayOccurrenceView *)self->_view setCurrentImageState:v5];

    view = self->_view;

    [(EKDayOccurrenceView *)view synchronouslyRenderContentOnNextDisplay];
  }

  else
  {
    self->_synchronouslyRenderContentOnNextDisplay = 1;
  }
}

- (NSDate)start
{
  v2 = [(EKDayViewContentItem *)self startDate];
  v3 = [v2 date];

  return v3;
}

- (NSString)eventIdentifier
{
  v2 = [(EKDayViewContentItem *)self event];
  v3 = [v2 eventIdentifier];

  return v3;
}

- (double)enoughHeightForOneLine
{
  v3 = [(EKDayViewContentItem *)self events];
  [EKDayOccurrenceView enoughHeightForOneLineForEvents:v3 usingSmallText:[(EKDayViewContentItem *)self usesSmallText] sizeClass:self->_sizeClass];
  v5 = v4;

  v6 = [(EKDayViewContentItem *)self currentState];
  v7 = [v6 reminderStackDepth];

  return v5 + (v7 - 1) * 2.0;
}

- (void)setStagedFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(EKDayViewContentItem *)self resetVisibleHeight];
  self->_stagedFrame.origin.x = x;
  self->_stagedFrame.origin.y = y;
  self->_stagedFrame.size.width = width;
  self->_stagedFrame.size.height = height;
  v10 = [(EKDayViewContentItem *)self view];
  v8 = [(EKDayViewContentItem *)self isLoadingAsync];
  v9 = v10;
  if (!v8 && v10)
  {
    [v10 setFrame:{x, y, width, height}];
    v9 = v10;
  }
}

- (void)setVisibleHeight:(double)a3
{
  if (!self->_visibleHeightLocked && self->_visibleHeight != a3)
  {
    self->_visibleHeight = a3;
    self->_visibleHeightLocked = 1;
    if (![(EKDayViewContentItem *)self isLoadingAsync])
    {
      v5 = [(EKDayViewContentItem *)self view];

      if (v5)
      {
        v6 = [(EKDayViewContentItem *)self view];
        [v6 setVisibleHeight:a3];
      }
    }
  }
}

- (void)setTravelTimeHeight:(double)a3
{
  if ([(EKDayViewContentItem *)self isLoadingAsync]|| ([(EKDayViewContentItem *)self view], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_travelTimeHeight = a3;
  }

  else
  {
    v6 = [(EKDayViewContentItem *)self view];
    [v6 setTravelTimeSubviewHeightInPoints:a3];
  }
}

- (void)_requestPayloadAnimated:(BOOL)a3 drawSynchronously:(BOOL)a4
{
  if (a4)
  {

    [(EKDayViewContentItem *)self synchronouslyRenderContentOnNextDisplay];
  }

  else
  {
    v5 = a3;
    v6 = [MEMORY[0x1E6993430] sharedProvider];
    v7 = v6;
    if ((self->_currentRequestId & 0x8000000000000000) == 0)
    {
      [v6 cancelRequest:?];
      self->_currentRequestId = -1;
    }

    v8 = [(EKDayViewContentItem *)self currentState];
    [v8 travelTime];
    v9 = 3;
    if (v10 > 0.0)
    {
      v9 = 7;
    }

    if (v5)
    {
      v11 = v9 | 8;
    }

    else
    {
      v11 = v9;
    }

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __66__EKDayViewContentItem__requestPayloadAnimated_drawSynchronously___block_invoke;
    v13[3] = &unk_1E843ECE8;
    objc_copyWeak(&v14, &location);
    v12 = [v7 requestPayloadForState:v8 requestOptions:v11 resultHandler:v13];
    if ((v12 & 0x8000000000000000) == 0)
    {
      self->_currentRequestId = v12;
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __66__EKDayViewContentItem__requestPayloadAnimated_drawSynchronously___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWithPayload:v3];
}

- (void)_updateWithPayload:(id)a3
{
  v12 = a3;
  v5 = [v12 requestOptions];
  currentRequestId = self->_currentRequestId;
  v7 = [v12 requestId];
  if ((v5 & 0x10) != 0 || currentRequestId == v7)
  {
    v8 = [(EKDayViewContentItem *)self view];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E6993428]);
      v10 = [(EKDayViewContentItem *)self currentState];
      v11 = [v9 initWithState:v10];
      [v8 setCurrentImageState:v11];

      [v8 forceUpdateContentWithPayload:v12];
    }

    else
    {
      objc_storeStrong(&self->_stagedPayload, a3);
    }

    self->_currentRequestId = -1;
  }
}

- (void)stopRendering
{
  if ((self->_currentRequestId & 0x8000000000000000) == 0)
  {
    v3 = [MEMORY[0x1E6993430] sharedProvider];
    [v3 cancelRequest:self->_currentRequestId];

    self->_currentRequestId = -1;
  }

  view = self->_view;
  if (view)
  {

    [(EKDayOccurrenceView *)view stopRendering];
  }
}

@end