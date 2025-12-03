@interface EKDayViewContentItem
- (BOOL)isEqual:(id)equal;
- (CGRect)stagedFrame;
- (CGRect)unPinnedViewFrame;
- (EKCalendarDate)startDateIncludingTravelTime;
- (EKDayViewContentItem)initWithEventIndex:(unint64_t)index sizeClass:(int64_t)class;
- (NSDate)end;
- (NSDate)start;
- (NSDate)startWithTravelTime;
- (NSString)description;
- (NSString)eventIdentifier;
- (double)enoughHeightForOneLine;
- (double)travelTimeHeight;
- (double)viewMaxNaturalTextHeight;
- (void)_requestPayloadAnimated:(BOOL)animated drawSynchronously:(BOOL)synchronously;
- (void)_updateWithPayload:(id)payload;
- (void)setBackgroundChangedCallback:(id)callback;
- (void)setBottomPinningProximity:(double)proximity;
- (void)setEvent:(id)event;
- (void)setEvents:(id)events;
- (void)setStagedFrame:(CGRect)frame;
- (void)setTopPinningProximity:(double)proximity;
- (void)setTravelTimeHeight:(double)height;
- (void)setView:(id)view;
- (void)setVisibleHeight:(double)height;
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
  startDateIncludingTravelTime = [(EKDayViewContentItem *)self startDateIncludingTravelTime];
  date = [startDateIncludingTravelTime date];

  return date;
}

- (EKCalendarDate)startDateIncludingTravelTime
{
  v3 = MEMORY[0x1E69930C8];
  startDate = [(EKDayViewContentItem *)self startDate];
  [startDate absoluteTime];
  v6 = v5;
  [(EKDayViewContentItem *)self travelTime];
  v8 = v6 - v7;
  startDate2 = [(EKDayViewContentItem *)self startDate];
  timeZone = [startDate2 timeZone];
  v11 = [v3 calendarDateWithAbsoluteTime:timeZone timeZone:v8];

  return v11;
}

- (double)viewMaxNaturalTextHeight
{
  if ([(EKDayViewContentItem *)self isLoadingAsync]|| ([(EKDayViewContentItem *)self view], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    event = [(EKDayViewContentItem *)self event];
    [EKDayOccurrenceView minNaturalTextHeightForEvent:event usingSmallText:[(EKDayViewContentItem *)self usesSmallText] sizeClass:self->_sizeClass];
    v6 = v7 + self->_travelTimeHeight;
  }

  else
  {
    event = [(EKDayViewContentItem *)self view];
    [event viewMaxNaturalTextHeight];
    v6 = v5;
  }

  return v6;
}

- (NSDate)end
{
  endDate = [(EKDayViewContentItem *)self endDate];
  date = [endDate date];

  return date;
}

- (double)travelTimeHeight
{
  if ([(EKDayViewContentItem *)self isLoadingAsync])
  {
    return self->_travelTimeHeight;
  }

  view = [(EKDayViewContentItem *)self view];
  if (view)
  {
    view2 = [(EKDayViewContentItem *)self view];
    [view2 travelTimeSubviewHeightInPoints];
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

- (EKDayViewContentItem)initWithEventIndex:(unint64_t)index sizeClass:(int64_t)class
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
    *(v6 + 19) = index;
    *(v6 + 24) = v9;
    *(v6 + 9) = 0x7FEFFFFFFFFFFFFFLL;
    *(v6 + 12) = class;
    *(v6 + 13) = -1;
    v10 = objc_alloc_init(MEMORY[0x1E6993428]);
    currentState = v7->_currentState;
    v7->_currentState = v10;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  v21 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)setEvent:(id)event
{
  v8[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  objc_storeStrong(&self->_event, event);
  if (eventCopy)
  {
    v8[0] = eventCopy;
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

- (void)setEvents:(id)events
{
  v4 = [events sortedArrayUsingFunction:MEMORY[0x1E69932D8] context:0];
  events = self->_events;
  self->_events = v4;

  firstObject = [(NSArray *)self->_events firstObject];
  event = self->_event;
  self->_event = firstObject;
}

- (NSString)description
{
  v12.receiver = self;
  v12.super_class = EKDayViewContentItem;
  v3 = [(EKDayViewContentItem *)&v12 description];
  v4 = MEMORY[0x1E696AEC0];
  event = [(EKDayViewContentItem *)self event];
  title = [event title];
  startDate = [(EKDayViewContentItem *)self startDate];
  endDate = [(EKDayViewContentItem *)self endDate];
  [(EKDayViewContentItem *)self travelTime];
  v9 = CUIKDisplayStringForTravelTimeUsingShortFormat();
  v10 = [v4 stringWithFormat:@"%@ title: [%@], start date: [%@], end date: [%@], travelTime: [%@]", v3, title, startDate, endDate, v9];

  return v10;
}

- (void)setTopPinningProximity:(double)proximity
{
  self->_topPinningProximity = proximity;
  if (![(EKDayViewContentItem *)self isLoadingAsync])
  {
    view = [(EKDayViewContentItem *)self view];

    if (view)
    {
      topPinningProximity = self->_topPinningProximity;
      view2 = [(EKDayViewContentItem *)self view];
      [view2 setTopPinningProximity:topPinningProximity];
    }
  }
}

- (void)setBottomPinningProximity:(double)proximity
{
  self->_bottomPinningProximity = proximity;
  if (![(EKDayViewContentItem *)self isLoadingAsync])
  {
    view = [(EKDayViewContentItem *)self view];

    if (view)
    {
      view2 = [(EKDayViewContentItem *)self view];
      [view2 setBottomPinningProximity:proximity];
    }
  }
}

- (void)setView:(id)view
{
  viewCopy = view;
  backgroundViewForEventIndicator = [(EKDayOccurrenceView *)self->_view backgroundViewForEventIndicator];
  image = [backgroundViewForEventIndicator image];

  view = self->_view;
  if (view)
  {
    [(EKDayOccurrenceView *)view setBackgroundChangedCallback:0];
  }

  objc_storeStrong(&self->_view, view);
  if (viewCopy)
  {
    [viewCopy setTopPinningProximity:self->_topPinningProximity];
    [viewCopy setBottomPinningProximity:self->_bottomPinningProximity];
    if (!CGRectIsEmpty(self->_stagedFrame))
    {
      [viewCopy setFrame:{self->_stagedFrame.origin.x, self->_stagedFrame.origin.y, self->_stagedFrame.size.width, self->_stagedFrame.size.height}];
    }

    [viewCopy setVisibleHeight:self->_visibleHeight];
    [viewCopy setTravelTimeSubviewHeightInPoints:self->_travelTimeHeight];
    if (self->_stagedPayload)
    {
      v8 = objc_alloc(MEMORY[0x1E6993428]);
      currentState = [(EKDayViewContentItem *)self currentState];
      v10 = [v8 initWithState:currentState];
      [viewCopy setCurrentImageState:v10];

      [viewCopy forceUpdateContentWithPayload:self->_stagedPayload];
      stagedPayload = self->_stagedPayload;
      self->_stagedPayload = 0;
    }

    else if (self->_synchronouslyRenderContentOnNextDisplay)
    {
      v12 = objc_alloc(MEMORY[0x1E6993428]);
      currentState2 = [(EKDayViewContentItem *)self currentState];
      v14 = [v12 initWithState:currentState2];
      [viewCopy setCurrentImageState:v14];

      [viewCopy synchronouslyRenderContentOnNextDisplay];
    }

    self->_synchronouslyRenderContentOnNextDisplay = 0;
    [(EKDayViewContentItem *)self updateViewBackgroundChangedCallback];
    backgroundViewForEventIndicator2 = [(EKDayOccurrenceView *)self->_view backgroundViewForEventIndicator];
    image2 = [backgroundViewForEventIndicator2 image];

    if (self->_backgroundChangedCallback && image | image2 && ([image isEqual:image2] & 1) == 0)
    {
      (*(self->_backgroundChangedCallback + 2))();
    }
  }
}

- (void)setBackgroundChangedCallback:(id)callback
{
  v4 = _Block_copy(callback);
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
    currentState = [(EKDayViewContentItem *)self currentState];
    v5 = [v3 initWithState:currentState];
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
  startDate = [(EKDayViewContentItem *)self startDate];
  date = [startDate date];

  return date;
}

- (NSString)eventIdentifier
{
  event = [(EKDayViewContentItem *)self event];
  eventIdentifier = [event eventIdentifier];

  return eventIdentifier;
}

- (double)enoughHeightForOneLine
{
  events = [(EKDayViewContentItem *)self events];
  [EKDayOccurrenceView enoughHeightForOneLineForEvents:events usingSmallText:[(EKDayViewContentItem *)self usesSmallText] sizeClass:self->_sizeClass];
  v5 = v4;

  currentState = [(EKDayViewContentItem *)self currentState];
  reminderStackDepth = [currentState reminderStackDepth];

  return v5 + (reminderStackDepth - 1) * 2.0;
}

- (void)setStagedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(EKDayViewContentItem *)self resetVisibleHeight];
  self->_stagedFrame.origin.x = x;
  self->_stagedFrame.origin.y = y;
  self->_stagedFrame.size.width = width;
  self->_stagedFrame.size.height = height;
  view = [(EKDayViewContentItem *)self view];
  isLoadingAsync = [(EKDayViewContentItem *)self isLoadingAsync];
  v9 = view;
  if (!isLoadingAsync && view)
  {
    [view setFrame:{x, y, width, height}];
    v9 = view;
  }
}

- (void)setVisibleHeight:(double)height
{
  if (!self->_visibleHeightLocked && self->_visibleHeight != height)
  {
    self->_visibleHeight = height;
    self->_visibleHeightLocked = 1;
    if (![(EKDayViewContentItem *)self isLoadingAsync])
    {
      view = [(EKDayViewContentItem *)self view];

      if (view)
      {
        view2 = [(EKDayViewContentItem *)self view];
        [view2 setVisibleHeight:height];
      }
    }
  }
}

- (void)setTravelTimeHeight:(double)height
{
  if ([(EKDayViewContentItem *)self isLoadingAsync]|| ([(EKDayViewContentItem *)self view], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_travelTimeHeight = height;
  }

  else
  {
    view = [(EKDayViewContentItem *)self view];
    [view setTravelTimeSubviewHeightInPoints:height];
  }
}

- (void)_requestPayloadAnimated:(BOOL)animated drawSynchronously:(BOOL)synchronously
{
  if (synchronously)
  {

    [(EKDayViewContentItem *)self synchronouslyRenderContentOnNextDisplay];
  }

  else
  {
    animatedCopy = animated;
    mEMORY[0x1E6993430] = [MEMORY[0x1E6993430] sharedProvider];
    v7 = mEMORY[0x1E6993430];
    if ((self->_currentRequestId & 0x8000000000000000) == 0)
    {
      [mEMORY[0x1E6993430] cancelRequest:?];
      self->_currentRequestId = -1;
    }

    currentState = [(EKDayViewContentItem *)self currentState];
    [currentState travelTime];
    v9 = 3;
    if (v10 > 0.0)
    {
      v9 = 7;
    }

    if (animatedCopy)
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
    v12 = [v7 requestPayloadForState:currentState requestOptions:v11 resultHandler:v13];
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

- (void)_updateWithPayload:(id)payload
{
  payloadCopy = payload;
  requestOptions = [payloadCopy requestOptions];
  currentRequestId = self->_currentRequestId;
  requestId = [payloadCopy requestId];
  if ((requestOptions & 0x10) != 0 || currentRequestId == requestId)
  {
    view = [(EKDayViewContentItem *)self view];
    if (view)
    {
      v9 = objc_alloc(MEMORY[0x1E6993428]);
      currentState = [(EKDayViewContentItem *)self currentState];
      v11 = [v9 initWithState:currentState];
      [view setCurrentImageState:v11];

      [view forceUpdateContentWithPayload:payloadCopy];
    }

    else
    {
      objc_storeStrong(&self->_stagedPayload, payload);
    }

    self->_currentRequestId = -1;
  }
}

- (void)stopRendering
{
  if ((self->_currentRequestId & 0x8000000000000000) == 0)
  {
    mEMORY[0x1E6993430] = [MEMORY[0x1E6993430] sharedProvider];
    [mEMORY[0x1E6993430] cancelRequest:self->_currentRequestId];

    self->_currentRequestId = -1;
  }

  view = self->_view;
  if (view)
  {

    [(EKDayOccurrenceView *)view stopRendering];
  }
}

@end