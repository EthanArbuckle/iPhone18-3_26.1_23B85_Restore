@interface EKEventGestureController
+ (id)_captureImageOfOccurrenceView:(id)a3 withFrameOfOpaqueContent:(CGRect)a4;
- (BOOL)__timedDelegateBeginEditingSessionAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)_beginEditingSessionAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)_beginNewDragFromOffStateWithPoint:(CGPoint)a3;
- (BOOL)_calendarCanAcceptManagedData:(id)a3;
- (BOOL)_flingOrCancelDraggingViewIfNeeded;
- (BOOL)_isPointInCancelRegion:(CGPoint)a3;
- (BOOL)_setDraggingState:(int)a3 withPoint:(CGPoint)a4 event:(id)a5 context:(id)a6;
- (BOOL)canProposeNewTime:(id)a3;
- (BOOL)dragGestureInProgress;
- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)splitMultiDays;
- (CGPoint)_computeOriginAtTouchPoint:(CGPoint)a3 forDate:(double)a4 isAllDay:(BOOL)a5 allowXOffset:(BOOL)a6 allowFloorAtRegionBottom:(BOOL)a7;
- (CGPoint)_estimateFinalDropOriginForTimedDelegate;
- (CGPoint)firstTouchPoint;
- (CGPoint)latestTouchPoint;
- (CGPoint)touchOffset;
- (CGRect)_calculateFrameForDraggingViewIncludingTravelTime:(BOOL)a3;
- (EKCalendarDate)occurrenceDate;
- (EKEventGestureController)initWithView:(id)a3;
- (EKEventGestureControllerDelegate)delegate;
- (EKEventGestureControllerUntimedDelegate)untimedDelegate;
- (double)_Debug_HoursSinceStartOfDay:(double)a3;
- (double)_alignedYOriginForAllDayOccurrence:(id)a3 atPoint:(CGPoint)a4 floorAtAllDayRegionBottom:(BOOL)a5;
- (double)_allDayBottomPadding;
- (double)_cancelRegionMargin;
- (double)_capOccurrenceViewYOrigin:(double)a3 ignoreTopInsets:(BOOL)a4;
- (double)_computeHeightForOccurrenceViewOfDuration:(double)a3 event:(id)a4 allDay:(BOOL)a5;
- (double)_computeWidthForOccurrenceView;
- (double)_minimumDuration;
- (double)defaultDurationForEvent:(id)a3;
- (id)_acceptedExternalTypes;
- (id)_acceptedFileExternalTypes;
- (id)_acceptedTypes;
- (id)_captureImageOfDraggingView;
- (id)_clippingPathForDraggingView;
- (id)_createNewEventIfNeededAtPoint:(CGPoint)a3;
- (id)_createTemporaryView:(id)a3 animated:(BOOL)a4;
- (id)_debugStringForDraggingState:(int)a3;
- (id)_eventToUseAtInteractionStart:(CGPoint)a3 outOccurrenceView:(id *)a4;
- (id)_findFirstCalendar:(id)a3;
- (id)_findLocalDragItemInSession:(id)a3;
- (id)_getEventUsingDropSession:(id)a3;
- (id)_viewForTracking;
- (id)currentlySelectedOccurrenceViewSource;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5;
- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (id)originalStartDateForEvent:(id)a3 includingTravel:(BOOL)a4;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (int64_t)_occurrenceDateIndexWithEvent:(id)a3 occurrenceDate:(id)a4;
- (unint64_t)_dropOperationGivenDropSession:(id)a3;
- (void)_adjustNewEventDates:(id)a3 withPoint:(CGPoint)a4;
- (void)_animateInNewEvent;
- (void)_cancel;
- (void)_cleanUpAllStateWithTouchPoint:(CGPoint)a3 commit:(BOOL)a4;
- (void)_cleanUpForcedStart;
- (void)_commit;
- (void)_commitUntimed;
- (void)_createAndSetUpDraggingViewWithTouchPoint:(CGPoint)a3 event:(id)a4 ignoreOffsets:(BOOL)a5 showEditMenu:(BOOL)a6;
- (void)_disableSystemPreviewForDrag:(id)a3;
- (void)_dismissCurrentICSPreviewControllerAnimated:(BOOL)a3;
- (void)_dragFailedToStart;
- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3;
- (void)_enableSystemPreviewForDrag:(id)a3;
- (void)_extractFileFromSession:(id)a3;
- (void)_handleImportingICSData:(id)a3 intoEventStore:(id)a4;
- (void)_handleLongPressResponseForOldAPI:(id)a3;
- (void)_handleShowingEventWithUniqueId:(id)a3 date:(id)a4 eventStore:(id)a5;
- (void)_installScrollTimer;
- (void)_longPress:(id)a3;
- (void)_manageFeedbackForStateChangeFrom:(int)a3 to:(int)a4;
- (void)_multiSelect:(id)a3;
- (void)_presentICSPreviewControllerIfNeeded;
- (void)_removeScrollTimer;
- (void)_returnDraggingViewToLastCommittedPositionFromTouchPoint:(CGPoint)a3;
- (void)_scrollTimerFired:(id)a3;
- (void)_setEventCalendar:(id)a3 useManagedCalendar:(BOOL)a4;
- (void)_setLocalDraggingViewHidden:(BOOL)a3;
- (void)_setToLocalDraggingImageForDrag:(id)a3;
- (void)_setToSystemDraggingImageForDrag:(id)a3;
- (void)_setTouchOffsetsFromPoint:(CGPoint)a3 fixedToCenter:(BOOL)a4;
- (void)_setUpAfterForcedStartFromPoint:(CGPoint)a3;
- (void)_setUpInitialTouchPointsWithPoint:(CGPoint)a3;
- (void)_setupEvent:(id)a3 withImportData:(id)a4;
- (void)_tapGesture:(id)a3;
- (void)_update;
- (void)_updateFlingToCancelParameters;
- (void)_updateHorizontalDragLockForPoint:(CGPoint)a3;
- (void)_updatePositionOfEditingMenuForView:(id)a3;
- (void)_updateSnappingTypeForCurrentDrag;
- (void)_writeDraggingChangesToOccurrenceWithTouchPoint:(CGPoint)a3;
- (void)attemptDisplayReviewPrompt;
- (void)dealloc;
- (void)didCrossDragBoundary:(int)a3;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4;
- (void)endForcedStart:(BOOL)a3;
- (void)endForcedStartAndUndim;
- (void)forceStartWithOccurrence:(id)a3 occurrenceDate:(id)a4 shouldUpdateViewSource:(BOOL)a5 shouldUpdateOrigin:(BOOL)a6 shouldPresentEditMenu:(BOOL)a7;
- (void)icsPreviewControllerImportDidFail:(id)a3;
- (void)icsPreviewControllerImportDidImportEvents:(id)a3;
- (void)icsPreviewControllerWantsDismissal:(id)a3;
- (void)invalidate;
- (void)liftUpOccurrenceForEditingEvent:(id)a3;
- (void)promptUserForProposeNewTime:(id)a3 forEvent:(id)a4 whenFinished:(id)a5;
- (void)promptUserForRecurrenceActionOnOccurrence:(id)a3 whenFinished:(id)a4;
- (void)removeDraggedOccurrence;
- (void)setCommitBlocked:(BOOL)a3;
- (void)updateDraggingOccurrenceForced:(BOOL)a3 animated:(BOOL)a4;
- (void)updateDraggingOccurrenceFrame;
- (void)updateDraggingOccurrenceFrameFromSource;
- (void)updateDraggingOccurrenceOrigin;
@end

@implementation EKEventGestureController

- (BOOL)dragGestureInProgress
{
  if ((self->_pendingDraggingState & 0xFFFFFFFD) != 0)
  {
    return (self->_currentDraggingState < 5u) & (0x1Au >> self->_currentDraggingState);
  }

  else
  {
    return 0;
  }
}

- (EKEventGestureController)initWithView:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = EKEventGestureController;
  v5 = [(EKEventGestureController *)&v23 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_targetView, v4);
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v6 action:sel__tapGesture_];
    tapGestureRecognizer = v6->_tapGestureRecognizer;
    v6->_tapGestureRecognizer = v7;

    [(UITapGestureRecognizer *)v6->_tapGestureRecognizer setCancelsTouchesInView:0];
    [v4 addGestureRecognizer:v6->_tapGestureRecognizer];
    v9 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v6 action:sel__longPress_];
    draggingGestureRecognizer = v6->_draggingGestureRecognizer;
    v6->_draggingGestureRecognizer = v9;

    [(UILongPressGestureRecognizer *)v6->_draggingGestureRecognizer setDelaysTouchesBegan:0];
    [(UILongPressGestureRecognizer *)v6->_draggingGestureRecognizer setDelegate:v6];
    [v4 addGestureRecognizer:v6->_draggingGestureRecognizer];
    v11 = [objc_alloc(MEMORY[0x1E69DC9B8]) initWithDelegate:v6];
    dropInteraction = v6->_dropInteraction;
    v6->_dropInteraction = v11;

    [v4 addInteraction:v6->_dropInteraction];
    v13 = [objc_alloc(MEMORY[0x1E69DC988]) initWithDelegate:v6];
    dragInteraction = v6->_dragInteraction;
    v6->_dragInteraction = v13;

    [(UIDragInteraction *)v6->_dragInteraction setEnabled:1];
    [v4 addInteraction:v6->_dragInteraction];
    v6->_currentDropDataOwnerCache = 0;
    [(UIDragInteraction *)v6->_dragInteraction _setPointerLiftDelay:0.25];
    [(UIDragInteraction *)v6->_dragInteraction _setAllowsPointerDragBeforeLiftDelay:0];
    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v6 action:sel__multiSelect_];
    multiSelectGestureRecognizer = v6->_multiSelectGestureRecognizer;
    v6->_multiSelectGestureRecognizer = v15;

    [(UITapGestureRecognizer *)v6->_multiSelectGestureRecognizer setAllowedTouchTypes:&unk_1F4F32308];
    [(UITapGestureRecognizer *)v6->_multiSelectGestureRecognizer setDelegate:v6];
    [v4 addGestureRecognizer:v6->_multiSelectGestureRecognizer];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[EKEventGestureController hash](v6, "hash")}];
    v19 = [v17 stringWithFormat:@"%@", v18];
    v20 = [v19 substringToIndex:4];
    sessionIdentifierForDebug = v6->_sessionIdentifierForDebug;
    v6->_sessionIdentifierForDebug = v20;

    *&v6->_pendingDraggingState = -1;
    v6->_snappingTypeForCurrentDrag = 0;
  }

  return v6;
}

- (void)dealloc
{
  dragSnappingFeedback = self->_dragSnappingFeedback;
  if (dragSnappingFeedback)
  {
    [(_UIDragSnappingFeedbackGenerator *)dragSnappingFeedback userInteractionEnded];
    v4 = self->_dragSnappingFeedback;
    self->_dragSnappingFeedback = 0;
  }

  [(EKEventGestureController *)self _removeScrollTimer];
  [(EKEventGestureController *)self removeDraggedOccurrence];
  v5.receiver = self;
  v5.super_class = EKEventGestureController;
  [(EKEventGestureController *)&v5 dealloc];
}

- (void)invalidate
{
  if (self->_draggingView)
  {
    [(EKEventGestureController *)self _cancel];
  }

  [(EKEventGestureController *)self _removeScrollTimer];
  v3 = [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer view];
  [v3 removeGestureRecognizer:self->_draggingGestureRecognizer];

  [(EKEventGestureController *)self setDelegate:0];
  [(EKEventGestureController *)self setUntimedDelegate:0];
  [(EKEventGestureController *)self setEvent:0];
  v4 = [(UIDropInteraction *)self->_dropInteraction view];
  [v4 removeInteraction:self->_dropInteraction];

  dropInteraction = self->_dropInteraction;
  self->_dropInteraction = 0;

  v6 = [(UIDragInteraction *)self->_dragInteraction view];
  [v6 removeInteraction:self->_dragInteraction];

  dragInteraction = self->_dragInteraction;
  self->_dragInteraction = 0;
}

- (void)updateDraggingOccurrenceForced:(BOOL)a3 animated:(BOOL)a4
{
  draggingView = self->_draggingView;
  if (draggingView)
  {
    v6 = a4;
    v26 = [(EKDayOccurrenceView *)draggingView occurrence];
    if (a3 || [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer state]!= 3 && [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer state]!= 5 && [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer state])
    {
      if ((-[UILongPressGestureRecognizer state](self->_draggingGestureRecognizer, "state") == 1 || -[UILongPressGestureRecognizer state](self->_draggingGestureRecognizer, "state") == 2 || -[EKEventGestureController dragGestureInProgress](self, "dragGestureInProgress")) && (-[EKDayOccurrenceView superview](self->_draggingView, "superview"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_loadWeakRetained(&self->_delegate), [v9 occurrenceViewSuperviewForEventGestureController:self], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v8 == v10))
      {
        [(EKEventGestureController *)self _update];
      }

      else
      {
        [(EKEventGestureController *)self _calculateFrameForDraggingViewIncludingTravelTime:1];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = [(EKEvent *)self->_event changingAllDayPropertyIsAllowed];
        if (v19)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained eventGestureController:self adjustDraggingView:self->_draggingView forAllDay:{objc_msgSend(v26, "isAllDay")}];
        }

        if (v6)
        {
          -[EKDayOccurrenceView animateToFrame:isAllDay:beginFromCurrentState:whenFinished:](self->_draggingView, "animateToFrame:isAllDay:beginFromCurrentState:whenFinished:", [v26 isAllDay], 0, 0, v12, v14, v16, v18);
        }

        else
        {
          [(EKDayOccurrenceView *)self->_draggingView setFrame:v12, v14, v16, v18];
          if (v19)
          {
            -[EKDayOccurrenceView setAllDay:](self->_draggingView, "setAllDay:", [v26 isAllDay]);
            [(EKDayOccurrenceView *)self->_draggingView requestContentIfNeeded:16 completion:0];
          }

          -[EKDayOccurrenceView setDrawsResizeHandles:](self->_draggingView, "setDrawsResizeHandles:", [v26 isAllDay] ^ 1);
        }

        v21 = objc_loadWeakRetained(&self->_delegate);
        v22 = [(EKDayOccurrenceView *)self->_draggingView occurrence];
        v23 = [v26 startDate];
        [v23 timeIntervalSinceReferenceDate];
        [v21 eventGestureController:self didCommitOccurrence:v22 toDate:objc_msgSend(v26 isAllDay:"isAllDay") span:{0, v24}];

        if ([(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer state]!= 1)
        {
          v25 = objc_loadWeakRetained(&self->_delegate);
          [v25 eventGestureController:self addViewToScroller:self->_draggingView isAllDay:{objc_msgSend(v26, "isAllDay")}];
        }
      }
    }
  }
}

- (CGRect)_calculateFrameForDraggingViewIncludingTravelTime:(BOOL)a3
{
  draggingView = self->_draggingView;
  if (draggingView)
  {
    v6 = [(EKDayOccurrenceView *)draggingView occurrence];
    v7 = v6;
    if (a3)
    {
      [v6 startDateIncludingTravel];
    }

    else
    {
      [v6 startDate];
    }
    v12 = ;
    [v12 timeIntervalSinceReferenceDate];
    v14 = v13;
    if ([(EKEventGestureController *)self splitMultiDays]|| self->_touchOffsetDays >= 1)
    {
      [(EKCalendarDate *)self->_currentDay absoluteTime];
      v14 = v15;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained eventGestureController:self pointAtDate:objc_msgSend(v7 isAllDay:{"isAllDay"), v14}];
    v18 = v17;
    v20 = v19;

    [v7 durationIncludingTravel];
    v22 = fmin(v21, 86400.0);
    if (([v7 isAllDay] & 1) == 0)
    {
      touchOffsetDays = self->_touchOffsetDays;
      if (touchOffsetDays >= 1 && touchOffsetDays + 1 == [v7 daySpan])
      {
        v24 = MEMORY[0x1E69930C8];
        v25 = [v7 endDateUnadjustedForLegacyClients];
        v26 = [v7 timeZone];
        v27 = [v24 calendarDateWithDate:v25 timeZone:v26];

        [v27 absoluteTime];
        v29 = v28;
        v30 = [v27 calendarDateForDay];
        [v30 absoluteTime];
        v22 = v29 - v31;
      }
    }

    [(EKEventGestureController *)self _computeWidthForOccurrenceView];
    v10 = v32;
    -[EKEventGestureController _computeHeightForOccurrenceViewOfDuration:event:allDay:](self, "_computeHeightForOccurrenceViewOfDuration:event:allDay:", v7, [v7 isAllDay], v22);
    v11 = v33;
    -[EKEventGestureController _computeOriginAtTouchPoint:forDate:isAllDay:allowXOffset:allowFloorAtRegionBottom:](self, "_computeOriginAtTouchPoint:forDate:isAllDay:allowXOffset:allowFloorAtRegionBottom:", [v7 isAllDay], 0, 1, v18, v20, v14);
    v8 = v34;
    v9 = v35;
    v36 = objc_loadWeakRetained(&self->_delegate);
    v37 = [v36 occurrenceViewSuperviewForEventGestureController:self];

    v38 = [(EKDayOccurrenceView *)self->_draggingView superview];

    if (v38 != v37)
    {
      v39 = [(EKDayOccurrenceView *)self->_draggingView superview];
      [v37 convertRect:v39 toView:{v8, v9, v10, v11}];
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
  }

  v44 = v8;
  v45 = v9;
  v46 = v10;
  v47 = v11;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

- (void)updateDraggingOccurrenceFrame
{
  if (self->_draggingView)
  {
    [(EKEventGestureController *)self _calculateFrameForDraggingViewIncludingTravelTime:1];
    [(EKDayOccurrenceView *)self->_draggingView setFrame:?];
    draggingView = self->_draggingView;
    v4 = [(EKEvent *)self->_event isAllDay]^ 1;

    [(EKDayOccurrenceView *)draggingView setDrawsResizeHandles:v4];
  }
}

- (void)removeDraggedOccurrence
{
  draggingView = self->_draggingView;
  if (draggingView)
  {
    [(EKDayOccurrenceView *)draggingView removeFromSuperview];
    [(EKEventGestureController *)self _hideEditingMenuForView:self->_draggingView];
    v4 = self->_draggingView;
    self->_draggingView = 0;
  }

  [(EKEventGestureController *)self setEvent:0];
}

- (void)promptUserForRecurrenceActionOnOccurrence:(id)a3 whenFinished:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EKEventGestureController *)self delegate];

  if (v8)
  {
    v9 = [(EKEventGestureController *)self delegate];
    v10 = [v9 currentPresentationController];
LABEL_5:
    v11 = v10;

    goto LABEL_6;
  }

  v11 = [(EKEventGestureController *)self untimedDelegate];

  if (v11)
  {
    v9 = [(EKEventGestureController *)self untimedDelegate];
    v10 = [v9 eventGestureControllerCurrentPresentationController:self];
    goto LABEL_5;
  }

LABEL_6:
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__EKEventGestureController_promptUserForRecurrenceActionOnOccurrence_whenFinished___block_invoke;
  v15[3] = &unk_1E8442B40;
  v15[4] = self;
  v16 = v7;
  v12 = v7;
  v13 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:2 viewController:v11 barButtonItem:0 forEvent:v6 withCompletionHandler:v15];
  recurrenceAlertController = self->_recurrenceAlertController;
  self->_recurrenceAlertController = v13;
}

void __83__EKEventGestureController_promptUserForRecurrenceActionOnOccurrence_whenFinished___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 <= 3 || (a2 - 4) >= 2)
  {
    (*(*(a1 + 40) + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 272);
    *(v3 + 272) = 0;
  }
}

- (void)promptUserForProposeNewTime:(id)a3 forEvent:(id)a4 whenFinished:(id)a5
{
  v32 = a5;
  v7 = a4;
  v8 = a3;
  v35 = [v7 organizer];
  v33 = [MEMORY[0x1E6966A88] participantForSortingWithEKParticipant:v35];
  v9 = EventKitUIBundle();
  v10 = [v9 localizedStringForKey:@"Propose a new time?" value:&stru_1F4EF6790 table:0];

  v11 = MEMORY[0x1E696AEC0];
  v12 = EventKitUIBundle();
  v13 = [v12 localizedStringForKey:@"Ask %@ to move “%@” to %@ at %@" value:&stru_1F4EF6790 table:0];
  v14 = [v33 displayName];
  v15 = [v7 title];

  v16 = [v8 localizedRelativeDateStringShortened:0 lowercase:1];
  v17 = [v8 timeStringAlwaysIncludeMinutes:0];

  v18 = [v11 localizedStringWithFormat:v13, v14, v15, v16, v17];

  v19 = EventKitUIBundle();
  v20 = [v19 localizedStringForKey:@"Cancel - prompt user for propose new time" value:@"Cancel" table:0];

  v21 = EventKitUIBundle();
  v22 = [v21 localizedStringForKey:@"Send" value:&stru_1F4EF6790 table:0];

  v23 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v18 preferredStyle:1];
  v24 = MEMORY[0x1E69DC648];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __78__EKEventGestureController_promptUserForProposeNewTime_forEvent_whenFinished___block_invoke;
  v38[3] = &unk_1E8442288;
  v25 = v32;
  v39 = v25;
  v26 = [v24 actionWithTitle:v20 style:1 handler:v38];
  [v23 addAction:v26];

  v27 = MEMORY[0x1E69DC648];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __78__EKEventGestureController_promptUserForProposeNewTime_forEvent_whenFinished___block_invoke_2;
  v36[3] = &unk_1E8442288;
  v37 = v25;
  v28 = v25;
  v29 = [v27 actionWithTitle:v22 style:0 handler:v36];
  [v23 addAction:v29];

  v30 = [(EKEventGestureController *)self delegate];
  v31 = [v30 currentPresentationController];
  [v31 presentViewController:v23 animated:1 completion:0];
}

uint64_t __78__EKEventGestureController_promptUserForProposeNewTime_forEvent_whenFinished___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

uint64_t __78__EKEventGestureController_promptUserForProposeNewTime_forEvent_whenFinished___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  multiSelectGestureRecognizer = self->_multiSelectGestureRecognizer;
  v6 = multiSelectGestureRecognizer != v4 || ([(UITapGestureRecognizer *)multiSelectGestureRecognizer modifierFlags]& 0x120000) != 0;

  return v6;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (![a3 state])
  {
    p_untimedDelegate = &self->_untimedDelegate;
    WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

    if (WeakRetained || (p_untimedDelegate = &self->_delegate, v10 = objc_loadWeakRetained(&self->_delegate), v10, v10))
    {
      v11 = objc_loadWeakRetained(p_untimedDelegate);
      v12 = [v11 touchTrackingViewForEventGestureController:self];

      if (v12)
      {
        [v12 bounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [v6 locationInView:v12];
        v57.x = v21;
        v57.y = v22;
        v60.origin.x = v14;
        v60.origin.y = v16;
        v60.size.width = v18;
        v60.size.height = v20;
        if (!CGRectContainsPoint(v60, v57))
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    if (!self->_forcedStart)
    {
      goto LABEL_21;
    }

    [(EKDayOccurrenceView *)self->_draggingView bounds];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v6 locationInView:self->_draggingView];
    v58.x = v31;
    v58.y = v32;
    v61.origin.x = v24;
    v61.origin.y = v26;
    v61.size.width = v28;
    v61.size.height = v30;
    v33 = CGRectContainsPoint(v61, v58);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v34 = [(EKDayOccurrenceView *)self->_draggingView arrayOfResizeHandles];
    v35 = [v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v52;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v52 != v37)
          {
            objc_enumerationMutation(v34);
          }

          if (v33)
          {
            v33 = 1;
          }

          else
          {
            v39 = *(*(&v51 + 1) + 8 * i);
            [v39 bounds];
            v41 = v40;
            v43 = v42;
            v45 = v44;
            v47 = v46;
            [v6 locationInView:v39];
            v59.x = v48;
            v59.y = v49;
            v62.origin.x = v41;
            v62.origin.y = v43;
            v62.size.width = v45;
            v62.size.height = v47;
            v33 = CGRectContainsPoint(v62, v59);
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v36);
    }

    if (v33)
    {
LABEL_21:
      v7 = 1;
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:
    v7 = 0;
    goto LABEL_23;
  }

  v7 = 1;
LABEL_24:

  return v7;
}

- (void)updateDraggingOccurrenceOrigin
{
  [(EKEventGestureController *)self _calculateFrameForDraggingViewIncludingTravelTime:1];
  v4 = v3;
  v6 = v5;
  v7 = [(EKEventGestureController *)self draggingView];
  [v7 frame];
  v9 = v8;
  v11 = v10;

  draggingView = self->_draggingView;

  [(EKDayOccurrenceView *)draggingView setFrame:v4, v6, v9, v11];
}

- (void)updateDraggingOccurrenceFrameFromSource
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(EKEventGestureController *)self draggingViewSource];
  v5 = [v4 occurrence];
  v6 = [(EKEventGestureController *)self draggingViewSource];
  v7 = [v6 occurrenceDate];
  v27 = [WeakRetained eventGestureController:self occurrenceViewForOccurrence:v5 occurrenceDate:v7];

  v8 = v27;
  if (v27)
  {
    [(EKEventGestureController *)self setDraggingViewSource:v27];
    v9 = [(EKEventGestureController *)self draggingViewSource];
    [v9 frame];
    v11 = v10;
    v13 = v12;

    v14 = [(EKEventGestureController *)self draggingViewSource];
    v15 = [v14 superview];
    v16 = [(EKEventGestureController *)self draggingViewSource];
    [v16 frame];
    v18 = v17;
    v20 = v19;
    v21 = [(EKDayOccurrenceView *)self->_draggingView superview];
    [v15 convertPoint:v21 toView:{v18, v20}];
    v23 = v22;
    v25 = v24;

    v26 = [(EKEventGestureController *)self draggingView];
    [v26 setFrame:{v23, v25, v11, v13}];

    v8 = v27;
  }
}

- (int64_t)_occurrenceDateIndexWithEvent:(id)a3 occurrenceDate:(id)a4
{
  v5 = a4;
  v6 = [a3 startCalendarDate];
  v7 = [v5 differenceInDays:v6];

  return v7;
}

- (void)forceStartWithOccurrence:(id)a3 occurrenceDate:(id)a4 shouldUpdateViewSource:(BOOL)a5 shouldUpdateOrigin:(BOOL)a6 shouldPresentEditMenu:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  if (!self->_isDragging && ![(EKEventGestureController *)self dragGestureInProgress]&& !self->_forcedStart)
  {
    v15 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __132__EKEventGestureController_forceStartWithOccurrence_occurrenceDate_shouldUpdateViewSource_shouldUpdateOrigin_shouldPresentEditMenu___block_invoke;
    v16[3] = &unk_1E8442B68;
    v20 = a2;
    v17 = v13;
    v18 = self;
    v19 = v14;
    v21 = a5;
    v22 = a7;
    v23 = a6;
    [v15 performWithoutAnimation:v16];
  }
}

void __132__EKEventGestureController_forceStartWithOccurrence_occurrenceDate_shouldUpdateViewSource_shouldUpdateOrigin_shouldPresentEditMenu___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    __132__EKEventGestureController_forceStartWithOccurrence_occurrenceDate_shouldUpdateViewSource_shouldUpdateOrigin_shouldPresentEditMenu___block_invoke_cold_1(a1);
  }

  *(*(a1 + 40) + 264) = 1;
  v2 = *(a1 + 40);
  if (*(v2 + 45) == 1 && *(v2 + 56))
  {
    v3 = [*(v2 + 56) isHidden];
    v2 = *(a1 + 40);
  }

  else
  {
    v3 = 0;
  }

  [v2 removeDraggedOccurrence];
  [*(a1 + 40) setEvent:*(a1 + 32)];
  *(*(a1 + 40) + 72) = [*(a1 + 40) _occurrenceDateIndexWithEvent:*(a1 + 32) occurrenceDate:*(a1 + 48)];
  [*(*(a1 + 40) + 8) setMinimumPressDuration:0.0];
  v4 = [*(a1 + 40) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 40) delegate];
    v6 = [v5 eventGestureController:*(a1 + 40) shouldAllowShortLiftDelay:*(a1 + 32)];

    if ((v6 & 1) == 0)
    {
      v7 = 0.25;
      _UIDragInteractionDefaultLiftDelay();
      goto LABEL_12;
    }
  }

  else
  {
  }

  v7 = 0.04;
  v8 = 0.04;
LABEL_12:
  [*(*(a1 + 40) + 304) _setLiftDelay:v8];
  [*(*(a1 + 40) + 304) _setPointerLiftDelay:v7];
  v9 = [*(a1 + 32) startCalendarDate];
  v10 = [v9 calendarDateByAddingDays:*(*(a1 + 40) + 176)];
  v62 = [v10 calendarDateForDay];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 344));
  v12 = *(a1 + 40);
  [v62 absoluteTime];
  [WeakRetained eventGestureController:v12 pointAtDate:objc_msgSend(*(a1 + 32) isAllDay:{"isAllDay"), v13}];
  v15 = v14;
  v17 = v16;

  v18 = objc_loadWeakRetained((*(a1 + 40) + 344));
  [v18 timedRegionOriginForEventGestureController:*(a1 + 40)];
  v20 = v19;

  v21 = [*(a1 + 32) isAllDay];
  if (v17 >= v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (!v22)
  {
    v17 = v20;
  }

  if (*(a1 + 64) == 1)
  {
    v23 = objc_loadWeakRetained((*(a1 + 40) + 344));
    v24 = [v23 eventGestureController:*(a1 + 40) occurrenceViewForOccurrence:*(a1 + 32) occurrenceDate:*(a1 + 48)];
    [*(a1 + 40) setDraggingViewSource:v24];
  }

  v25 = *(a1 + 40);
  *(v25 + 88) = v15;
  *(v25 + 96) = v17;
  *(*(a1 + 40) + 217) = 1;
  v26 = objc_loadWeakRetained((*(a1 + 40) + 336));

  v27 = *(a1 + 40);
  if (v26)
  {
    v28 = objc_loadWeakRetained((v27 + 336));
    v29 = [v28 eventGestureController:*(a1 + 40) setUpAtPoint:0 withOccurrence:0 forceNewEvent:{v15, v17}];
    v30 = *(a1 + 40);
    v31 = *(v30 + 64);
    *(v30 + 64) = v29;
  }

  else
  {
    v35 = objc_loadWeakRetained((v27 + 344));

    if (v35)
    {
      v36 = [*(a1 + 40) _createTemporaryView:*(a1 + 32) animated:1];
      v37 = *(a1 + 40);
      v38 = *(v37 + 56);
      *(v37 + 56) = v36;

      if (*(a1 + 65) == 1)
      {
        [*(a1 + 40) _updatePositionOfEditingMenuForView:*(*(a1 + 40) + 56)];
      }

      if (v3)
      {
        [*(a1 + 40) _setLocalDraggingViewHidden:1];
      }

      if (([*(a1 + 32) isNew] & 1) == 0)
      {
        v39 = [*(a1 + 40) draggingViewSource];

        if (v39)
        {
          v40 = [*(a1 + 40) draggingViewSource];
          [v40 travelTimeSubviewHeightInPoints];
          [*(*(a1 + 40) + 56) setTravelTimeSubviewHeightInPoints:?];

          v41 = [*(a1 + 40) draggingViewSource];
          [v41 frame];
          IsEmpty = CGRectIsEmpty(v64);

          if (!IsEmpty)
          {
            [*(*(a1 + 40) + 56) frame];
            v44 = v43;
            v46 = v45;
            v47 = [*(a1 + 40) draggingViewSource];
            [v47 frame];

            v48 = [*(a1 + 40) draggingViewSource];
            v49 = [v48 superview];
            v50 = [*(a1 + 40) draggingViewSource];
            [v50 frame];
            v52 = v51;
            v54 = v53;
            v55 = [*(*(a1 + 40) + 56) superview];
            [v49 convertPoint:v55 toView:{v52, v54}];
            v57 = v56;

            if (*(a1 + 66))
            {
              v46 = v57;
            }

            [*(a1 + 40) _computeWidthForOccurrenceView];
            v59 = v58;
            [*(a1 + 32) durationIncludingTravel];
            [*(a1 + 40) _computeHeightForOccurrenceViewOfDuration:*(*(a1 + 40) + 64) event:objc_msgSend(*(*(a1 + 40) + 64) allDay:{"isAllDay"), fmin(v60, 86400.0)}];
            [*(*(a1 + 40) + 56) setFrame:{v44, v46, v59, v61}];
          }
        }
      }
    }
  }

  v32 = *(a1 + 40);
  if (*(v32 + 202) != 1 || !*(v32 + 176))
  {
    if (!v3 || (v33 = [*(v32 + 56) isHidden], v32 = *(a1 + 40), (v33 & 1) == 0))
    {
      [*(v32 + 56) setDrawsResizeHandles:1];
      v32 = *(a1 + 40);
    }
  }

  v34 = objc_loadWeakRetained((v32 + 344));
  [v34 eventGestureController:*(a1 + 40) addViewToScroller:*(*(a1 + 40) + 56) isAllDay:{objc_msgSend(*(a1 + 32), "isAllDay")}];
}

- (void)endForcedStartAndUndim
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained eventGestureController:self didCancelEditingOccurrence:self->_event fadedOut:1];

  [(EKEventGestureController *)self endForcedStart:0];
}

- (void)endForcedStart:(BOOL)a3
{
  if ((a3 || [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer state]!= 1 && [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer state]!= 2) && (self->_forcedStart || self->_currentDraggingState || self->_pendingDraggingState != 3))
  {
    [(EKEventGestureController *)self _cleanUpForcedStart];
    [(EKEventGestureController *)self removeDraggedOccurrence];
    v4 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);

    [(EKEventGestureController *)self _setDraggingState:0 withPoint:0 event:v4, v5];
  }
}

- (void)liftUpOccurrenceForEditingEvent:(id)a3
{
  v4 = a3;
  if ((self->_currentDraggingState | 2) == 2)
  {
    v5 = v4;
    [(EKEventGestureController *)self forceStartWithOccurrence:v4 occurrenceDate:0 shouldUpdateViewSource:0 shouldUpdateOrigin:0 shouldPresentEditMenu:0];
    v4 = v5;
    self->_currentDraggingState = 2;
  }
}

- (void)_cleanUpForcedStart
{
  self->_dragInitiationLocked = 1;
  if (self->_forcedStart)
  {
    self->_forcedStart = 0;
    [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer setMinimumPressDuration:0.4];
    _UIDragInteractionDefaultLiftDelay();
    [(UIDragInteraction *)self->_dragInteraction _setLiftDelay:?];
    [(UIDragInteraction *)self->_dragInteraction _setPointerLiftDelay:0.25];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKEventGestureController__cleanUpForcedStart__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  self->_touchOffsetDays = 0;
  self->_commitOffsetDays = 0;
}

- (void)_tapGesture:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained touchTrackingViewForEventGestureController:self];
  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = [v11 eventGestureController:self occurrenceViewAtPoint:0 ignoreSelectedCopyView:{v8, v10}];

  if (([v12 isAllDay] & 1) == 0)
  {
    v13 = objc_alloc(MEMORY[0x1E69DD250]);
    [v12 frameOfOpaqueContent];
    v14 = [v13 initWithFrame:?];
    v15 = [v14 layer];
    [v15 setCornerRadius:4.0];

    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
    [v14 setBackgroundColor:v16];

    [v14 setUserInteractionEnabled:0];
    [v12 insertSubview:v14 atIndex:0];
    v17 = MEMORY[0x1E69DD250];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __40__EKEventGestureController__tapGesture___block_invoke;
    v21[3] = &unk_1E843EC60;
    v22 = v14;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __40__EKEventGestureController__tapGesture___block_invoke_2;
    v19[3] = &unk_1E843EC10;
    v20 = v22;
    v18 = v22;
    [v17 animateWithDuration:2 delay:v21 usingSpringWithDamping:v19 initialSpringVelocity:0.5 options:0.5 animations:1.0 completion:0.0];
  }
}

void __40__EKEventGestureController__tapGesture___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] clearColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

- (void)_multiSelect:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_untimedDelegate);
    v7 = [(EKEventGestureController *)self _viewForTracking];
    [v4 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v21 = [v6 eventGestureController:self eventToStartInteractionWithAtPoint:{v9, v11}];

    v12 = v21;
    if (!v21)
    {
      goto LABEL_6;
    }

    v13 = objc_loadWeakRetained(&self->_untimedDelegate);
    [v13 eventGestureController:self toggleSelectionOfEvent:v21];
  }

  else
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = [v14 touchTrackingViewForEventGestureController:self];
    [v4 locationInView:v15];
    v17 = v16;
    v19 = v18;

    v21 = [v14 eventGestureController:self occurrenceViewAtPoint:0 ignoreSelectedCopyView:{v17, v19}];

    v13 = [(EKEventGestureController *)self delegate];
    v20 = [v21 occurrence];
    [v13 eventGestureController:self didSingleTapOccurrence:v20 shouldExtendSelection:1];
  }

  v12 = v21;
LABEL_6:
}

- (void)_longPress:(id)a3
{
  v18 = a3;
  if (![(EKEventGestureController *)self _shouldUseSystemAPIForDrag]|| self->_currentDraggingState == 2 && (v4 = objc_loadWeakRetained(&self->_delegate), v4, v4))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->_delegate), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      v10 = [v9 eventGestureControllerShouldAllowLongPress:self];

      if ((v10 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = objc_loadWeakRetained(&self->_untimedDelegate);

      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->_untimedDelegate);
        v13 = [v12 eventGestureControllerShouldAllowLongPress:self];

        if (!v13)
        {
          goto LABEL_20;
        }
      }
    }

    v14 = [(EKEventGestureController *)self _viewForTracking];
    if ([v18 state] == 1 && (v15 = objc_loadWeakRetained(&self->_delegate)) != 0 && (currentDraggingState = self->_currentDraggingState, v15, currentDraggingState == 2))
    {
      [v18 locationInView:self->_draggingView];
      v17 = [(EKDayOccurrenceView *)self->_draggingView dragTypeFromPoint:?]& 0xFFFFFFFD;
      [v18 locationInView:v14];
      if (v17)
      {
        [(EKEventGestureController *)self _setTouchOffsetsFromPoint:0 fixedToCenter:?];
      }

      else
      {
        [(EKEventGestureController *)self _setDraggingState:3 withPoint:0 event:?];
        [(EKEventGestureController *)self _updateFlingToCancelParameters];
        self->_waitingForDragToInitialize = 0;
      }
    }

    else if (![(EKEventGestureController *)self _shouldUseSystemAPIForDrag]&& (self->_currentDraggingState & 0xFFFFFFFE) == 2)
    {
      [(EKEventGestureController *)self _handleLongPressResponseForOldAPI:v18];
    }
  }

LABEL_20:
}

- (void)_handleLongPressResponseForOldAPI:(id)a3
{
  v15 = a3;
  v4 = [(EKEventGestureController *)self _viewForTracking];
  [v15 locationInView:v4];
  v6 = v5;
  v8 = v7;
  v9 = [v15 state];
  if ((v9 - 4) < 2)
  {
    [(EKEventGestureController *)self _setDraggingState:4 withPoint:self->_event event:v6, v8];
    goto LABEL_7;
  }

  if (v9 == 3)
  {
LABEL_7:
    [(EKEventGestureController *)self _setDraggingState:2 withPoint:self->_event event:v6, v8];
    goto LABEL_8;
  }

  if (v9 == 2)
  {
    [(EKEventGestureController *)self _installScrollTimer];
    self->_previousTouchPoint = self->_latestTouchPoint;
    [v15 locationInView:v4];
    self->_latestTouchPoint.x = v10;
    self->_latestTouchPoint.y = v11;
    WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

    if (WeakRetained)
    {
      v13 = objc_loadWeakRetained(&self->_untimedDelegate);
      [v13 eventGestureController:self updateToPoint:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
    }

    else
    {
      v14 = objc_loadWeakRetained(&self->_delegate);

      if (v14)
      {
        [(EKEventGestureController *)self _update];
      }
    }
  }

LABEL_8:
  [(EKEventGestureController *)self _updateFlingToCancelParameters];
}

- (void)_commitUntimed
{
  if ([(EKEventGestureController *)self commitBlocked])
  {
    self->_needsCommit = 1;
  }

  else
  {
    self->_needsCommit = 0;
    WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);
    [WeakRetained eventGestureController:self commitToPoint:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
  }
}

- (void)setCommitBlocked:(BOOL)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_commitBlocked != a3)
  {
    self->_commitBlocked = a3;
    if (!a3 && self->_needsCommit)
    {
      WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

      if (WeakRetained)
      {

        [(EKEventGestureController *)self _commitUntimed];
      }

      else
      {
        v5 = objc_loadWeakRetained(&self->_delegate);

        if (v5)
        {
          v6 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
          {
            draggingView = self->_draggingView;
            event = self->_event;
            v9 = v6;
            v10 = objc_loadWeakRetained(&self->_delegate);
            v15 = 138412802;
            v16 = draggingView;
            v17 = 2112;
            v18 = event;
            v19 = 2112;
            v20 = v10;
            _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_INFO, "Delaying event gesture commit: view = %@ event = %@ delegate = %@", &v15, 0x20u);
          }

          v11 = kEKUILogHandle;
          if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
          {
            v12 = MEMORY[0x1E696AF00];
            v13 = v11;
            v14 = [v12 callStackSymbols];
            v15 = 138412290;
            v16 = v14;
            _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_INFO, "Callstack: %@", &v15, 0xCu);
          }

          [(EKEventGestureController *)self performSelectorOnMainThread:sel__commit withObject:0 waitUntilDone:0];
        }
      }
    }
  }
}

- (void)_installScrollTimer
{
  if (![(EKEventGestureController *)self _shouldUseSystemAPIForDrag]&& !self->_scrollTimer)
  {
    self->_timeSinceEnteredPageMargin = -1.0;
    v3 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:self target:sel__scrollTimerFired_ selector:0 userInfo:1 repeats:0.0333333333];
    scrollTimer = self->_scrollTimer;
    self->_scrollTimer = v3;

    v5 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v5 addTimer:self->_scrollTimer forMode:*MEMORY[0x1E695D918]];

    self->_firstContactOfDraggingViewTop = -1.0;
    self->_hasStartedScrolling = 0;
  }
}

- (void)_removeScrollTimer
{
  [(NSTimer *)self->_scrollTimer invalidate];
  scrollTimer = self->_scrollTimer;
  self->_scrollTimer = 0;

  self->_timeSinceEnteredPageMargin = 0.0;
  self->_consecutivePageTurnCount = 0;
}

- (void)_scrollTimerFired:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {
    v79 = objc_loadWeakRetained(&self->_untimedDelegate);
    [v79 eventGestureControllerScrollTimerFired:self];
    goto LABEL_68;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 pageChangeMarginsForEventGestureController:self];
    v9 = v8;
    v75 = v10;
  }

  else
  {
    v9 = 44.0;
    v75 = 0x4046000000000000;
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  v79 = [v11 touchTrackingViewForEventGestureController:self];

  y = self->_firstTouchPoint.y;
  v78 = self->_latestTouchPoint.y;
  v12 = self->_latestTouchPoint.x - self->_firstTouchPoint.x;
  v13 = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 horizontalOffsetForPagingForEventGestureController:self];
    v17 = v16;

    v18 = v17 > 0.0 && fabs(v12) > v17;
  }

  else
  {
    v18 = 0;
    v17 = 0.0;
  }

  x = self->_latestTouchPoint.x;
  v20 = objc_loadWeakRetained(&self->_delegate);
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 eventGestureController:self convertXForMargin:x];
    x = v23;
  }

  [v79 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = objc_loadWeakRetained(&self->_delegate);
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    v34 = objc_loadWeakRetained(&self->_delegate);
    [v34 marginFrameForEventGestureController:self];
    v25 = v35;
    v27 = v36;
    v29 = v37;
    v31 = v38;
  }

  if (v9 <= 0.0)
  {
    v39 = 1;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  else if (x >= v9)
  {
    v81.origin.x = v25;
    v81.origin.y = v27;
    v81.size.width = v29;
    v81.size.height = v31;
    v39 = x <= CGRectGetMaxX(v81) - v76;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v39 = 0;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  v40 = fabs(v12) <= 6.0 || v39;
  if (v40)
  {
    self->_timeSinceEnteredPageMargin = -1.0;
    self->_consecutivePageTurnCount = 0;
    v41 = -1.0;
    goto LABEL_30;
  }

LABEL_27:
  timeSinceEnteredPageMargin = self->_timeSinceEnteredPageMargin;
  if (timeSinceEnteredPageMargin == -1.0)
  {
    self->_timeSinceEnteredPageMargin = 0.8;
    v41 = 0.8;
  }

  else
  {
    v41 = timeSinceEnteredPageMargin + 0.0333333333;
    self->_timeSinceEnteredPageMargin = v41;
  }

LABEL_30:
  currentDragType = self->_currentDragType;
  if (currentDragType != 1 || (v41 <= 0.8 || (consecutivePageTurnCount = self->_consecutivePageTurnCount, consecutivePageTurnCount > 1 || v39)) && (v41 <= 0.6 || (consecutivePageTurnCount = self->_consecutivePageTurnCount, consecutivePageTurnCount < 2 || v39)))
  {
    v45 = 0;
    v46 = 0;
  }

  else
  {
    v47 = v12 < 0.0 - v17 && v18;
    v46 = x < v9 || v47;
    v45 = v46 ^ 1;
    self->_timeSinceEnteredPageMargin = 0.0;
    self->_consecutivePageTurnCount = consecutivePageTurnCount + 1;
  }

  if (self->_hasStartedScrolling || (v48 = (v78 - y) * (v78 - y) + v12 * v12, sqrtf(v48) >= 3.0))
  {
    if (currentDragType == 2)
    {
      v56 = objc_loadWeakRetained(&self->_delegate);
      v57 = [(EKEvent *)self->_event startDate];
      [v57 timeIntervalSinceReferenceDate];
      [v56 eventGestureController:self pointAtDate:-[EKEvent isAllDay](self->_event isAllDay:{"isAllDay"), v58}];
      v60 = v59;

      v55 = self->_latestTouchPoint.y <= v60;
    }

    else if (currentDragType)
    {
      v55 = 0;
    }

    else
    {
      v50 = objc_loadWeakRetained(&self->_delegate);
      v51 = [(EKEvent *)self->_event endDateUnadjustedForLegacyClients];
      [v51 timeIntervalSinceReferenceDate];
      [v50 eventGestureController:self pointAtDate:-[EKEvent isAllDay](self->_event isAllDay:{"isAllDay"), v52}];
      v54 = v53;

      v55 = self->_latestTouchPoint.y >= v54;
    }

    v61 = objc_loadWeakRetained(&self->_delegate);
    v62 = [v61 eventGestureController:self isAllDayAtPoint:-[EKDayOccurrenceView isAllDay](self->_draggingView requireInsistence:{"isAllDay") ^ 1, self->_latestTouchPoint.x, self->_latestTouchPoint.y}];

    v49 = !v55;
    if (!v55 && v62)
    {
      v49 = self->_currentDragType != 1;
    }
  }

  else
  {
    v49 = 0;
  }

  if (((v46 | v45) & 1) != 0 || v49)
  {
    v63 = self->_latestTouchPoint.y;
    if (self->_currentDragType == 1 && self->_previousTouchPoint.y > v63)
    {
      v64 = objc_loadWeakRetained(&self->_delegate);
      v65 = [v64 touchTrackingViewForEventGestureController:self];

      v66 = [(EKDayOccurrenceView *)self->_draggingView superview];
      [(EKDayOccurrenceView *)self->_draggingView frame];
      [v66 convertRect:v65 toView:?];
      v63 = v67;

      v68 = objc_loadWeakRetained(&self->_delegate);
      [v68 timedRegionOriginForEventGestureController:self];
      v70 = v69;

      if (v63 < v70)
      {
        firstContactOfDraggingViewTop = self->_firstContactOfDraggingViewTop;
        if (firstContactOfDraggingViewTop < 0.0)
        {
          firstContactOfDraggingViewTop = v70;
          if (self->_previousTouchPoint.y >= self->_touchOffset.y)
          {
            firstContactOfDraggingViewTop = self->_latestTouchPoint.y;
          }

          self->_firstContactOfDraggingViewTop = firstContactOfDraggingViewTop;
        }

        v63 = v70 + self->_latestTouchPoint.y - firstContactOfDraggingViewTop;
      }

      v72 = self->_latestTouchPoint.x;
    }

    else
    {
      v72 = self->_latestTouchPoint.x;
    }

    v73 = objc_loadWeakRetained(&self->_delegate);
    v74 = [v73 didScrollWhenEventGestureController:self scrollTimerFiredToMoveLeft:v46 right:v45 vertically:v49 towardPoint:{v72, v63}];

    if (v74)
    {
      self->_hasStartedScrolling = 1;
      [(EKEventGestureController *)self _update];
    }
  }

LABEL_68:
}

- (id)currentlySelectedOccurrenceViewSource
{
  if (self->_currentDraggingState == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(EKEventGestureController *)self draggingViewSource];
  }

  return v4;
}

- (BOOL)_setDraggingState:(int)a3 withPoint:(CGPoint)a4 event:(id)a5 context:(id)a6
{
  y = a4.y;
  x = a4.x;
  v9 = *&a3;
  v43 = *MEMORY[0x1E69E9840];
  v11 = a5;
  v12 = a6;
  currentDraggingState = self->_currentDraggingState;
  if (currentDraggingState == v9)
  {
    v14 = 1;
    goto LABEL_54;
  }

  if (self->_pendingDraggingState != -1)
  {
    v14 = 0;
    self->_queuedDraggingState = v9;
    goto LABEL_54;
  }

  self->_pendingDraggingState = v9;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (!currentDraggingState || currentDraggingState == 2)
        {
          self->_waitingForDragToInitialize = 1;
          if ([(EKEventGestureController *)self _beginNewDragFromOffStateWithPoint:x, y])
          {
            goto LABEL_48;
          }
        }

        else if (currentDraggingState == 4)
        {
          [(EKEventGestureController *)self _resumePreviousDrag];
          goto LABEL_48;
        }
      }

      else if (v9 == 4 && currentDraggingState == 3)
      {
        [(EKEventGestureController *)self _suspendCurrentDrag];
        goto LABEL_48;
      }

LABEL_37:
      v26 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v27 = self->_currentDraggingState;
        v28 = v26;
        v29 = [(EKEventGestureController *)self _debugStringForDraggingState:v27];
        v30 = [(EKEventGestureController *)self _debugStringForDraggingState:v9];
        v39 = 138412546;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_ERROR, "Dragging state transition requested, but refused: [%@] -> [%@]", &v39, 0x16u);
      }

      v14 = 0;
      goto LABEL_52;
    }

    if (currentDraggingState > 2)
    {
      if (currentDraggingState != 3)
      {
        if (currentDraggingState == 4)
        {
          [(EKEventGestureController *)self _returnDraggingViewToLastCommittedPositionFromTouchPoint:x, y];
          goto LABEL_48;
        }

        goto LABEL_37;
      }
    }

    else if (currentDraggingState)
    {
      if (currentDraggingState != 1)
      {
        goto LABEL_37;
      }

      [(EKEventGestureController *)self _beginEditingSessionAtPoint:v11 withEvent:x, y];
    }

    else
    {
      [(EKEventGestureController *)self _beginEditingSessionAtPoint:v11 withEvent:x, y];
      if (!self->_draggingView)
      {
        WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

        if (WeakRetained)
        {
          v32 = objc_loadWeakRetained(&self->_untimedDelegate);
          v33 = [v32 eventGestureController:self setUpAtPoint:v11 withOccurrence:0 forceNewEvent:{x, y}];
          event = self->_event;
          self->_event = v33;
        }

        else
        {
          v36 = objc_loadWeakRetained(&self->_delegate);

          if (v36)
          {
            [(EKEventGestureController *)self _createAndSetUpDraggingViewWithTouchPoint:v11 event:1 ignoreOffsets:1 showEditMenu:x, y];
          }
        }
      }
    }

    [(EKEventGestureController *)self _writeDraggingChangesToOccurrenceWithTouchPoint:x, y];
    goto LABEL_48;
  }

  if (v9)
  {
    if (v9 == 1 && !currentDraggingState)
    {
      [(EKEventGestureController *)self _setUpInitialTouchPointsWithPoint:x, y];
      v15 = objc_loadWeakRetained(&self->_untimedDelegate);

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_untimedDelegate);
        v17 = [v16 eventGestureController:self setUpAtPoint:v11 withOccurrence:1 forceNewEvent:{x, y}];
        v18 = self->_event;
        self->_event = v17;

        v19 = [(EKEvent *)self->_event isNew];
        if (v12 && v19 && [v12 isManaged])
        {
          [(EKEventGestureController *)self _setEventCalendar:self->_event useManagedCalendar:1];
          v20 = objc_loadWeakRetained(&self->_untimedDelegate);
          [v20 eventGestureControllerRequestsUpdateOfDraggingView:self];
        }
      }

      else
      {
        v35 = objc_loadWeakRetained(&self->_delegate);

        if (v35)
        {
          [(EKEventGestureController *)self _createAndSetUpDraggingViewWithTouchPoint:v11 event:1 ignoreOffsets:0 showEditMenu:x, y];
        }
      }

      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (self->_forcedStart)
  {
    [(EKEventGestureController *)self _cleanUpForcedStart];
    currentDraggingState = self->_currentDraggingState;
  }

  [(EKEventGestureController *)self _cleanUpAllStateWithTouchPoint:0 commit:x, y];
  if ((currentDraggingState - 1) >= 2)
  {
    [(EKEventGestureController *)self _manageDraggingViewInteractivityForStateChangeFrom:self->_currentDraggingState to:0];
    v21 = kEKUILogHandle;
    v14 = 0;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v22 = self->_currentDraggingState;
      v23 = v21;
      v24 = [(EKEventGestureController *)self _debugStringForDraggingState:v22];
      v25 = [(EKEventGestureController *)self _debugStringForDraggingState:0];
      v39 = 138412546;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&dword_1D3400000, v23, OS_LOG_TYPE_ERROR, "Invalid dragging state transition requested, but executed anyway: [%@] -> [%@]", &v39, 0x16u);

      v14 = 0;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (!self->_dragInteractionCancellingWithoutDragging)
  {
    [(EKEventGestureController *)self _manageFeedbackForStateChangeFrom:self->_currentDraggingState to:v9];
  }

  [(EKEventGestureController *)self _manageDraggingViewInteractivityForStateChangeFrom:self->_currentDraggingState to:v9];
  v14 = 1;
LABEL_51:
  self->_currentDraggingState = v9;
LABEL_52:
  self->_pendingDraggingState = -1;
  queuedDraggingState = self->_queuedDraggingState;
  if (queuedDraggingState != -1)
  {
    self->_queuedDraggingState = -1;
    v14 = [(EKEventGestureController *)self _setDraggingState:queuedDraggingState withPoint:v11 event:x, y];
  }

LABEL_54:

  return v14;
}

- (id)_debugStringForDraggingState:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Dragging state UNKNOWN (%d)", *&a3];
  }

  else
  {
    v4 = off_1E8442DF8[a3];
  }

  return v4;
}

- (void)_manageFeedbackForStateChangeFrom:(int)a3 to:(int)a4
{
  if ((a3 & 0xFFFFFFFD) != 0 || a4 != 3)
  {
    if ((a3 & 0xFFFFFFFD) == 1 && a4 == 2)
    {
      [(_UIDragSnappingFeedbackGenerator *)self->_dragSnappingFeedback draggedObjectLanded];
      [(_UIDragSnappingFeedbackGenerator *)self->_dragSnappingFeedback userInteractionEnded];
      dragSnappingFeedback = self->_dragSnappingFeedback;
      self->_dragSnappingFeedback = 0;
    }
  }

  else
  {
    v5 = self->_dragSnappingFeedback;
    if (v5)
    {
      [(_UIDragSnappingFeedbackGenerator *)v5 userInteractionEnded];
      v6 = self->_dragSnappingFeedback;
      self->_dragSnappingFeedback = 0;
    }

    v7 = [objc_alloc(MEMORY[0x1E69DD488]) initWithView:self->_draggingView];
    v8 = self->_dragSnappingFeedback;
    self->_dragSnappingFeedback = v7;

    [(_UIDragSnappingFeedbackGenerator *)self->_dragSnappingFeedback userInteractionStarted];
    v9 = self->_dragSnappingFeedback;

    [(_UIDragSnappingFeedbackGenerator *)v9 draggedObjectLifted];
  }
}

- (void)didCrossDragBoundary:(int)a3
{
  if (a3 == 2)
  {
    [(_UIDragSnappingFeedbackGenerator *)self->_dragSnappingFeedback dropTargetUpdated];
  }
}

- (BOOL)_beginNewDragFromOffStateWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(EKEventGestureController *)self _setUpInitialTouchPointsWithPoint:?];
  if (!self->_forcedStart)
  {
    WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

    if (WeakRetained)
    {
      v6 = 1;
      self->_currentDragType = 1;
      v8 = objc_loadWeakRetained(&self->_untimedDelegate);
      v9 = [v8 eventGestureController:self setUpAtPoint:0 withOccurrence:0 forceNewEvent:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
      event = self->_event;
      self->_event = v9;
    }

    else
    {
      v11 = objc_loadWeakRetained(&self->_delegate);

      if (!v11)
      {
        goto LABEL_3;
      }

      v8 = [(EKEventGestureController *)self _createNewEventIfNeededAtPoint:x, y];
      [(EKEventGestureController *)self _createAndSetUpDraggingViewWithTouchPoint:v8 event:0 ignoreOffsets:1 showEditMenu:x, y];
      v6 = [(EKEventGestureController *)self _beginEditingSessionAtPoint:v8 withEvent:x, y];
    }

    goto LABEL_9;
  }

  [(EKEventGestureController *)self _setUpAfterForcedStartFromPoint:self->_latestTouchPoint.x, self->_latestTouchPoint.y];
LABEL_3:
  v6 = 1;
LABEL_9:
  [(EKEventGestureController *)self _updateFlingToCancelParameters];
  return v6;
}

- (void)_setUpInitialTouchPointsWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_firstTouchTime = CFAbsoluteTimeGetCurrent();
  self->_latestTouchPoint.x = x;
  self->_latestTouchPoint.y = y;
  latestTouchPoint = self->_latestTouchPoint;
  self->_previousTouchPoint = latestTouchPoint;
  self->_firstTouchPoint = latestTouchPoint;
  self->_dragLockDisabled = ![(EKEventGestureController *)self usesHorizontalDragLocking];
  self->_isDragging = 1;

  [(EKEventGestureController *)self _updateSnappingTypeForCurrentDrag];
}

- (void)_cleanUpAllStateWithTouchPoint:(CGPoint)a3 commit:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  [(EKEventGestureController *)self _removeScrollTimer];
  self->_isDragging = 0;
  self->_latestTouchPoint.x = x;
  self->_latestTouchPoint.y = y;
  self->_needToSetSystemDragPreview = 0;
  self->_snappingTypeForCurrentDrag = 0;
  event = self->_event;
  self->_event = 0;

  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);
  if (!v4)
  {
    if (WeakRetained)
    {
      v10 = objc_loadWeakRetained(&self->_untimedDelegate);
      [v10 eventGestureControllerCancelled:self];
    }

    else
    {
      v12 = objc_loadWeakRetained(&self->_delegate);

      if (!v12)
      {
        goto LABEL_12;
      }

      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = objc_opt_respondsToSelector();

      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }

      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 eventGestureControllerDidEndDragSession:self];
    }

    goto LABEL_12;
  }

  if (WeakRetained)
  {
    [(EKEventGestureController *)self _commitUntimed];
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_delegate);

    if (v11)
    {
      [(EKEventGestureController *)self _commit];
    }
  }

LABEL_12:

  [(EKEventGestureController *)self removeDraggedOccurrence];
}

- (id)_createNewEventIfNeededAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained eventGestureController:self occurrenceViewAtPoint:1 ignoreSelectedCopyView:{x, y}];
  [(EKEventGestureController *)self setDraggingViewSource:v7];

  event = self->_event;
  if (event)
  {
    goto LABEL_4;
  }

  v9 = [(EKEventGestureController *)self draggingViewSource];

  if (v9)
  {
    event = self->_event;
LABEL_4:
    self->_isNewEvent = [(EKEvent *)event isNew];
    v10 = self->_event;
    goto LABEL_5;
  }

  v12 = objc_loadWeakRetained(&self->_delegate);
  v10 = [v12 createEventForEventGestureController:self];

  v13 = objc_loadWeakRetained(&self->_delegate);
  -[EKEvent setAllDay:](v10, "setAllDay:", [v13 eventGestureController:self isAllDayAtPoint:0 requireInsistence:{self->_firstTouchPoint.x, self->_firstTouchPoint.y}]);

  [(EKEventGestureController *)self _adjustNewEventDates:v10 withPoint:x, y];
  self->_isNewEvent = [(EKEvent *)v10 isNew];
LABEL_5:

  return v10;
}

- (void)_adjustNewEventDates:(id)a3 withPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = 1.0;
  if (([v7 isAllDay] & 1) == 0)
  {
    v9 = [MEMORY[0x1E6992FB0] shared];
    [v9 defaultEventDuration];
    v8 = v10;
  }

  -[EKEventGestureController _computeHeightForOccurrenceViewOfDuration:event:allDay:](self, "_computeHeightForOccurrenceViewOfDuration:event:allDay:", v7, [v7 isAllDay], v8);
  v12 = y + v11 * -0.5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v7 isAllDay])
  {
    v14 = y;
  }

  else
  {
    v14 = v12;
  }

  [WeakRetained eventGestureController:self dateAtPoint:{x, v14}];
  v16 = v15;

  v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v16];
  [v7 setStartDate:v18];
  v17 = [v18 dateByAddingTimeInterval:v8];
  [v7 setEndDateUnadjustedForLegacyClients:v17];
}

- (void)_createAndSetUpDraggingViewWithTouchPoint:(CGPoint)a3 event:(id)a4 ignoreOffsets:(BOOL)a5 showEditMenu:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  y = a3.y;
  x = a3.x;
  v45 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained eventGestureController:self occurrenceViewAtPoint:1 ignoreSelectedCopyView:{x, y}];
  if (v45)
  {

    if (v12)
    {
      [(EKEventGestureController *)self setDraggingViewSource:v12];
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->_delegate);
      v14 = [v13 eventGestureController:self occurrenceViewForOccurrence:v45 occurrenceDate:0];
      [(EKEventGestureController *)self setDraggingViewSource:v14];
    }
  }

  else
  {
    [(EKEventGestureController *)self setDraggingViewSource:v12];

    v12 = [(EKEventGestureController *)self draggingViewSource];
    v45 = [v12 occurrence];
  }

  if (!self->_draggingView)
  {
    v15 = [(EKEventGestureController *)self _createTemporaryView:v45 animated:0];
    draggingView = self->_draggingView;
    self->_draggingView = v15;

    if (v6)
    {
      [(EKEventGestureController *)self _updatePositionOfEditingMenuForView:self->_draggingView];
    }
  }

  [(EKEventGestureController *)self _setTouchOffsetsFromPoint:v7 fixedToCenter:x, y];
  v17 = [(EKEventGestureController *)self draggingViewSource];
  v18 = [v17 occurrence];

  if (v18)
  {
    v19 = [(EKEventGestureController *)self draggingViewSource];
    [v19 travelTimeSubviewHeightInPoints];
    [(EKDayOccurrenceView *)self->_draggingView setTravelTimeSubviewHeightInPoints:?];

    [(EKDayOccurrenceView *)self->_draggingView frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [(EKEventGestureController *)self draggingViewSource];
    [v26 frame];
    v28 = v27;

    if (self->_pendingDraggingState != 1)
    {
      v29 = [(EKEventGestureController *)self draggingViewSource];
      v30 = [v29 superview];
      v31 = [(EKEventGestureController *)self draggingViewSource];
      [v31 frame];
      v33 = v32;
      v35 = v34;
      v36 = [(EKDayOccurrenceView *)self->_draggingView superview];
      [v30 convertPoint:v36 toView:{v33, v35}];
      v23 = v37;
    }

LABEL_16:
    [(EKDayOccurrenceView *)self->_draggingView setFrame:v21, v23, v25, v28];
    goto LABEL_17;
  }

  if (([v45 isAllDay] & 1) == 0)
  {
    [v45 travelTime];
    if (v38 > 0.01)
    {
      [v45 travelTime];
      [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:0 event:0 allDay:?];
      [(EKDayOccurrenceView *)self->_draggingView setTravelTimeSubviewHeightInPoints:?];
    }

    [v45 duration];
    [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:0 event:0 allDay:?];
    v40 = v39;
    [(EKDayOccurrenceView *)self->_draggingView frame];
    v21 = v41;
    v23 = v42;
    v25 = v43;
    [(EKDayOccurrenceView *)self->_draggingView travelTimeSubviewHeightInPoints];
    v28 = v40 + v44;
    goto LABEL_16;
  }

LABEL_17:
  [(EKEventGestureController *)self _animateInNewEvent];
  if (!self->_isNewEvent && (!self->_isMultiDayTimedEvent || !self->_touchOffsetDays))
  {
    [(EKDayOccurrenceView *)self->_draggingView setDrawsResizeHandles:1];
  }
}

- (BOOL)_beginEditingSessionAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (!self->_currentDraggingState)
  {
    [(EKEventGestureController *)self _setUpInitialTouchPointsWithPoint:x, y];
  }

  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {
    if (self->_currentDraggingState != 1)
    {
      v9 = objc_loadWeakRetained(&self->_untimedDelegate);
      v10 = [v9 eventGestureController:self setUpAtPoint:v7 withOccurrence:0 forceNewEvent:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
      event = self->_event;
      self->_event = v10;
    }

    v12 = 1;
  }

  else
  {
    v13 = objc_loadWeakRetained(&self->_delegate);

    if (v13)
    {
      v12 = [(EKEventGestureController *)self __timedDelegateBeginEditingSessionAtPoint:v7 withEvent:self->_latestTouchPoint.x, self->_latestTouchPoint.y];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)canProposeNewTime:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 allowsProposedTimeModifications])
  {
    if ([v3 serverSupportedProposeNewTime])
    {
      v4 = 1;
    }

    else
    {
      v5 = [v3 organizer];
      v8[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
      v4 = [EKUIEmailCompositionManager canShowViewControllerForEvent:v3 withParticipantRecipients:v6];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)__timedDelegateBeginEditingSessionAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  self->_currentDragType = 1;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained eventGestureController:self occurrenceViewAtPoint:1 ignoreSelectedCopyView:{x, y}];
  if (v7)
  {

    if (v9)
    {
      [(EKEventGestureController *)self setDraggingViewSource:v9];
    }

    else
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = [v10 eventGestureController:self occurrenceViewForOccurrence:v7 occurrenceDate:0];
      [(EKEventGestureController *)self setDraggingViewSource:v11];
    }
  }

  else
  {
    [(EKEventGestureController *)self setDraggingViewSource:v9];

    v9 = WeakRetained;
  }

  v12 = [(EKEventGestureController *)self draggingViewSource];
  v13 = [v12 occurrence];

  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = [(EKEventGestureController *)self canProposeNewTime:v13];
  v15 = [v13 isEditable] | v14;
  if (![v13 isReminderIntegrationEvent])
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    if (v7 || (-[EKEventGestureController draggingViewSource](self, "draggingViewSource"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7) && (-[EKEventGestureController draggingViewSource](self, "draggingViewSource"), v19 = objc_claimAutoreleasedReturnValue(), [v19 occurrence], v7 = objc_claimAutoreleasedReturnValue(), v19, v7))
    {
      if (![v7 isNew])
      {
LABEL_31:
        [(EKEventGestureController *)self setEvent:v7];
        v33 = objc_loadWeakRetained(&self->_delegate);
        v34 = [v7 startDate];
        [v34 timeIntervalSinceReferenceDate];
        [v33 eventGestureController:self didSetUpAtDate:-[EKDayOccurrenceView isAllDay](self->_draggingView isAllDay:{"isAllDay"), v35}];

        v17 = 1;
        goto LABEL_32;
      }

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v20 = [(EKEventGestureController *)self draggingViewSource];
    if (v20)
    {
      v21 = [(EKEventGestureController *)self draggingViewSource];
      v22 = [v21 occurrence];
      self->_isNewEvent = v22 == 0;
    }

    else
    {
      self->_isNewEvent = 1;
    }

    if (v18)
    {
      v23 = [(EKEventGestureController *)self draggingViewSource];
      v24 = v23 == 0;
    }

    else
    {
      v24 = 0;
    }

    v25 = [(EKEventGestureController *)self draggingViewSource];

    if (v24)
    {
      v26 = objc_loadWeakRetained(&self->_delegate);
      v27 = [v26 createEventForEventGestureController:self];

      v28 = objc_loadWeakRetained(&self->_delegate);
      [v27 setAllDay:{objc_msgSend(v28, "eventGestureController:isAllDayAtPoint:requireInsistence:", self, 0, self->_firstTouchPoint.x, self->_firstTouchPoint.y)}];

      v7 = v27;
    }

    if (!v25)
    {
      [(EKEventGestureController *)self _adjustNewEventDates:v7 withPoint:x, y];
      if (self->_currentDraggingState != 1)
      {
        currentDay = self->_currentDay;
        v30 = [v7 startCalendarDate];
        v31 = [(EKCalendarDate *)currentDay differenceInDays:v30];

        if ([(EKEventGestureController *)self splitMultiDays])
        {
          self->_touchOffsetDays = 0;
          p_commitOffsetDays = &self->_commitOffsetDays;
        }

        else
        {
          p_commitOffsetDays = &self->_touchOffsetDays;
        }

        *p_commitOffsetDays = v31;
      }
    }

    goto LABEL_31;
  }

  if ([v13 CUIK_reminderShouldBeEditable] & v15)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = [(EKEventGestureController *)self draggingViewSource];
  CalPlopViewWithScaleFactorAndCompletion(v16, 0, 1.0);

  [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer setState:4];
  [(EKEventGestureController *)self _cleanUpAllStateWithTouchPoint:0 commit:x, y];
  v17 = 0;
LABEL_32:

  return v17;
}

- (void)_writeDraggingChangesToOccurrenceWithTouchPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(EKEventGestureController *)self _removeScrollTimer];
  self->_isDragging = 0;
  self->_latestTouchPoint.x = x;
  self->_latestTouchPoint.y = y;
  self->_needToSetSystemDragPreview = 0;
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {

    [(EKEventGestureController *)self _commitUntimed];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_delegate);

    if (v7)
    {

      [(EKEventGestureController *)self _commit];
    }
  }
}

- (void)_returnDraggingViewToLastCommittedPositionFromTouchPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(EKEventGestureController *)self _removeScrollTimer];
  self->_isDragging = 0;
  self->_latestTouchPoint.x = x;
  self->_latestTouchPoint.y = y;
  self->_needToSetSystemDragPreview = 0;
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_untimedDelegate);
    [v8 eventGestureControllerCancelled:self];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_delegate);

    if (v7)
    {

      [(EKEventGestureController *)self _cancel];
    }
  }
}

- (void)_dragFailedToStart
{
  x = self->_latestTouchPoint.x;
  y = self->_latestTouchPoint.y;
  if (self->_currentDraggingState)
  {
    [(EKEventGestureController *)self _setDraggingState:0 withPoint:0 event:x, y];
  }

  else
  {
    [(EKEventGestureController *)self _cleanUpAllStateWithTouchPoint:0 commit:x, y];
  }

  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_untimedDelegate);
    [v8 eventGestureControllerDragFailed:self];
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 cleanUpAfterGestureFailureForEventGestureController:self];
  }
}

- (id)_viewForTracking
{
  p_untimedDelegate = &self->_untimedDelegate;
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained || (p_untimedDelegate = &self->_delegate, v5 = objc_loadWeakRetained(&self->_delegate), v5, v5))
  {
    v6 = objc_loadWeakRetained(p_untimedDelegate);
    v7 = [v6 touchTrackingViewForEventGestureController:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateFlingToCancelParameters
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = sqrt((self->_latestTouchPoint.y - self->_previousTouchPoint.y) * (self->_latestTouchPoint.y - self->_previousTouchPoint.y) + (self->_latestTouchPoint.x - self->_previousTouchPoint.x) * (self->_latestTouchPoint.x - self->_previousTouchPoint.x)) / (Current - self->_previousTouchTime);
  self->_previousTouchTime = Current;
  self->_previousTouchVelocity = v4;
}

- (void)_setEventCalendar:(id)a3 useManagedCalendar:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v4)
  {
    v8 = [v6 eventStore];
    v9 = [v8 defaultCalendarForNewEvents];
    v10 = [v9 isManaged];

    if (v10)
    {
      v11 = [v8 defaultCalendarForNewEvents];
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E695DF70] array];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = [v8 calendarsForEntityType:{0, 0}];
      v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v19 + 1) + 8 * i);
            if ([(EKEventGestureController *)self _calendarCanAcceptManagedData:v18])
            {
              [v12 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v15);
      }

      v11 = [(EKEventGestureController *)self _findFirstCalendar:v12];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    [v7 setCalendar:v11];
LABEL_16:
  }
}

- (id)_findFirstCalendar:(id)a3
{
  v3 = [a3 sortedArrayUsingFunction:MEMORY[0x1E69932D0] context:0];
  v4 = [v3 firstObject];

  return v4;
}

- (BOOL)_calendarCanAcceptManagedData:(id)a3
{
  v3 = a3;
  if ([v3 isManaged] && objc_msgSend(v3, "allowsContentModifications"))
  {
    v4 = [v3 isSubscribed] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)_acceptedTypes
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:@"com.apple.eventkit.internal"];
  v4 = [(EKEventGestureController *)self _acceptedExternalTypes];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (id)_acceptedExternalTypes
{
  v3 = [(EKEventGestureController *)self _acceptedNonFileExternalTypes];
  v4 = [(EKEventGestureController *)self _acceptedFileExternalTypes];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)_acceptedFileExternalTypes
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [*MEMORY[0x1E6982D60] identifier];
  v6[0] = v2;
  v3 = [*MEMORY[0x1E6982F30] identifier];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (id)_getEventUsingDropSession:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 items];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 localObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v6 = [v9 localObject];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [(EKEventGestureController *)self _acceptedExternalTypes];
  v13 = [v4 hasItemsConformingToTypeIdentifiers:v12];

  if (!v6 && v13)
  {
    v14 = [(EKEventGestureController *)self delegate];

    if (v14)
    {
      v15 = [(EKEventGestureController *)self _viewForTracking];
      [v4 locationInView:v15];
      v17 = v16;
      v19 = v18;

      v20 = [(EKEventGestureController *)self delegate];
      v6 = [v20 createEventForEventGestureController:self];

      [(EKEventGestureController *)self _adjustNewEventDates:v6 withPoint:v17, v19];
      if ([EventImportData isSessionManaged:v4])
      {
        [(EKEventGestureController *)self _setEventCalendar:v6 useManagedCalendar:1];
      }
    }

    else
    {
      v6 = 0;
    }

    self->_isNewEvent = 1;
  }

  return v6;
}

- (unint64_t)_dropOperationGivenDropSession:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 items];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) localObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {

          v14 = 3;
          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(EKEventGestureController *)self _acceptedExternalTypes];
  v13 = [v4 hasItemsConformingToTypeIdentifiers:v12];

  if (v13)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

LABEL_13:

  return v14;
}

- (void)_setupEvent:(id)a3 withImportData:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v6 title];
  [v12 setTitle:v7];

  v8 = [v6 URL];
  [v12 setURL:v8];

  v9 = [v6 notes];
  [v12 setNotes:v9];

  -[EKEventGestureController _setEventCalendar:useManagedCalendar:](self, "_setEventCalendar:useManagedCalendar:", v12, [v6 prefersManagedCalendar]);
  v10 = [v6 structuredLocation];

  if (v10)
  {
    v11 = [v6 structuredLocation];
    [v12 setStructuredLocation:v11];
  }
}

- (void)_handleShowingEventWithUniqueId:(id)a3 date:(id)a4 eventStore:(id)a5
{
  v13 = [a5 eventWithUniqueId:a3 occurrenceDate:a4];
  if (v13)
  {
    p_untimedDelegate = &self->_untimedDelegate;
    WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

    if (WeakRetained || (p_untimedDelegate = &self->_delegate, (v9 = objc_loadWeakRetained(&self->_delegate)) != 0) && (v10 = v9, v11 = objc_loadWeakRetained(&self->_delegate), v12 = objc_opt_respondsToSelector(), v11, v10, (v12 & 1) != 0))
    {
      v8 = objc_loadWeakRetained(p_untimedDelegate);
      [v8 eventGestureController:self requestsShowEvent:v13];
    }
  }
}

- (void)_handleImportingICSData:(id)a3 intoEventStore:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [[EKICSPreviewController alloc] initWithData:v6 eventStore:v9];

  [(EKICSPreviewController *)v7 setAllowsImport:1];
  [(EKICSPreviewController *)v7 setPreviewDelegate:self];
  [(EKICSPreviewController *)v7 setCancelButtonWithTarget:self action:sel__icsPreviewControllerCancelButtonPressed];
  v8 = [(EKICSPreviewController *)v7 singleExistingEventUniqueID];
  if (v8)
  {
    [(EKEventGestureController *)self _handleShowingEventWithUniqueId:v8 date:0 eventStore:v9];
  }

  else
  {
    objc_storeStrong(&self->_currentICSPreviewController, v7);
    [(EKEventGestureController *)self _presentICSPreviewControllerIfNeeded];
  }
}

- (void)_presentICSPreviewControllerIfNeeded
{
  currentICSPreviewController = self->_currentICSPreviewController;
  if (currentICSPreviewController)
  {
    v4 = [(EKICSPreviewController *)currentICSPreviewController viewController];
    v5 = [v4 view];
    v6 = [v5 superview];

    if (!v6)
    {
      p_untimedDelegate = &self->_untimedDelegate;
      WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

      if (WeakRetained || (p_untimedDelegate = &self->_delegate, v9 = objc_loadWeakRetained(&self->_delegate), v9, v9))
      {
        v11 = objc_loadWeakRetained(p_untimedDelegate);
        v10 = [(EKICSPreviewController *)self->_currentICSPreviewController viewController];
        [v11 eventGestureController:self requestsPresentationOfViewController:v10];
      }
    }
  }
}

- (void)icsPreviewControllerWantsDismissal:(id)a3
{
  if (self->_currentICSPreviewController == a3)
  {
    [(EKEventGestureController *)self _dismissCurrentICSPreviewControllerAnimated:1];
  }
}

- (void)icsPreviewControllerImportDidFail:(id)a3
{
  if (self->_currentICSPreviewController == a3)
  {
    [(EKEventGestureController *)self _dismissCurrentICSPreviewControllerAnimated:1];
  }
}

- (void)icsPreviewControllerImportDidImportEvents:(id)a3
{
  if (self->_currentICSPreviewController == a3)
  {
    [(EKEventGestureController *)self _dismissCurrentICSPreviewControllerAnimated:1];
  }
}

- (void)_dismissCurrentICSPreviewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKICSPreviewController *)self->_currentICSPreviewController viewController];
  v6 = [v5 presentingViewController];
  [v6 dismissViewControllerAnimated:v3 completion:0];

  currentICSPreviewController = self->_currentICSPreviewController;
  self->_currentICSPreviewController = 0;
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

- (BOOL)dropInteraction:(id)a3 canHandleSession:(id)a4
{
  v5 = a4;
  v6 = [(EKEventGestureController *)self _acceptedTypes];
  v7 = [v5 hasItemsConformingToTypeIdentifiers:v6];

  return v7;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v6 = a3;
  v7 = a4;
  self->_waitingForDragToInitialize = 0;
  currentDraggingState = self->_currentDraggingState;
  if (currentDraggingState == 4)
  {
    v16 = [(EKEventGestureController *)self _viewForTracking];
    [v7 locationInView:v16];
    [(EKEventGestureController *)self _setDraggingState:3 withPoint:self->_event event:?];
    [(EKEventGestureController *)self _updateFlingToCancelParameters];
  }

  else if (!currentDraggingState)
  {
    if (([(EKEventGestureController *)self _dropOperationGivenDropSession:v7]& 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = [(EKEventGestureController *)self _getEventUsingDropSession:v7];
      v10 = [(EKEventGestureController *)self _viewForTracking];
      [v7 locationInView:v10];
      v12 = v11;
      v14 = v13;
      objc_storeStrong(&self->_event, v9);
      if ([EventImportData isSessionManaged:v7])
      {
        v15 = objc_alloc_init(DraggingContext);
        [(DraggingContext *)v15 setIsManaged:1];
      }

      else
      {
        v15 = 0;
      }

      [(EKEventGestureController *)self _setDraggingState:1 withPoint:v9 event:v15 context:v12, v14];
      [(EKEventGestureController *)self _updateFlingToCancelParameters];
      v20 = [(EKEventGestureController *)self _dropSessionRequiresExternalDataExtraction:v7];

      if (v20)
      {
        v17 = self;
        v18 = 1;
        goto LABEL_8;
      }
    }

    else
    {
      v19 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "Received view:draggingEntered:, but no event data available to be extracted. Not starting drag.", v21, 2u);
      }
    }
  }

  [(EKEventGestureController *)self _disableSystemPreviewForDrag:v7];
  v17 = self;
  v18 = 0;
LABEL_8:
  [(EKEventGestureController *)v17 _setLocalDraggingViewHidden:v18];
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((self->_currentDraggingState | 2) == 3)
  {
    v8 = [(EKEventGestureController *)self _viewForTracking];
    [v7 locationInView:v8];
    v10 = v9;
    v12 = v11;
    [(EKEventGestureController *)self _installScrollTimer];
    self->_previousTouchPoint = self->_latestTouchPoint;
    self->_latestTouchPoint.x = v10;
    self->_latestTouchPoint.y = v12;
    WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

    if (WeakRetained)
    {
      v14 = objc_loadWeakRetained(&self->_untimedDelegate);
      [v14 eventGestureController:self updateToPoint:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_delegate);

      if (v20)
      {
        [(EKEventGestureController *)self _update];
      }
    }

    [(EKEventGestureController *)self _updateFlingToCancelParameters];
    if (self->_isNewEvent)
    {
      v19 = [(EKEventGestureController *)self _dropOperationGivenDropSession:v7];

      if (v19 != 3)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if ([v7 allowsMoveOperation])
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v15 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      currentDraggingState = self->_currentDraggingState;
      v17 = v15;
      v18 = [(EKEventGestureController *)self _debugStringForDraggingState:currentDraggingState];
      v23 = 138412290;
      v24 = v18;
      _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, "Received unexpected call to view:draggingUpdated: while in state: %@", &v23, 0xCu);
    }

    v19 = 1;
  }

LABEL_16:
  if (self->_currentDraggingState == 3)
  {
    [(EKEventGestureController *)self _setToSystemDraggingImageForDrag:v7];
  }

  v21 = [objc_alloc(MEMORY[0x1E69DC9C0]) initWithDropOperation:v19];
  [v21 setPrefersFullSizePreview:1];
  [v21 setPrecise:0];

  return v21;
}

- (void)dropInteraction:(id)a3 sessionDidExit:(id)a4
{
  v6 = a4;
  v5 = [(EKEventGestureController *)self _viewForTracking];
  [v6 locationInView:v5];
  [(EKEventGestureController *)self _setDraggingState:4 * (self->_currentDraggingState != 1) withPoint:0 event:?];
  [(EKEventGestureController *)self _updateFlingToCancelParameters];
  [(EKEventGestureController *)self _enableSystemPreviewForDrag:v6];
  [(EKEventGestureController *)self _setLocalDraggingViewHidden:1];
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = a4;
  v6 = [(EKEventGestureController *)self _viewForTracking];
  [v5 locationInView:v6];
  self->_latestTouchPoint.x = v7;
  self->_latestTouchPoint.y = v8;
  if (self->_currentDraggingState != 1)
  {
LABEL_9:
    [(EKEventGestureController *)self _setDraggingState:2 withPoint:self->_event event:self->_latestTouchPoint.x, self->_latestTouchPoint.y];
    [(EKEventGestureController *)self _updateFlingToCancelParameters];
    goto LABEL_10;
  }

  v9 = [(EKEventGestureController *)self _dropSessionRequiresExternalDataExtraction:v5];
  event = self->_event;
  if (!v9)
  {
    if (!event)
    {
      v15 = [(EKEventGestureController *)self _getEventUsingDropSession:v5];
      v16 = self->_event;
      self->_event = v15;
    }

    goto LABEL_9;
  }

  if (!event)
  {
    v11 = [(EKEventGestureController *)self _getEventUsingDropSession:v5];
    v12 = self->_event;
    self->_event = v11;
  }

  v13 = [(EKEventGestureController *)self _acceptedNonFileExternalTypes];
  v14 = [v5 hasItemsConformingToTypeIdentifiers:v13];

  if (v14)
  {
    self->_dragCompletionPending = 1;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__EKEventGestureController_dropInteraction_performDrop___block_invoke;
    v19[3] = &unk_1E8442B90;
    v19[4] = self;
    [EventImportData extractEventImportDataFromDropSession:v5 completionBlock:v19];
  }

  else
  {
    v17 = [(EKEventGestureController *)self _acceptedFileExternalTypes];
    v18 = [v5 hasItemsConformingToTypeIdentifiers:v17];

    if (v18)
    {
      [(EKEventGestureController *)self _extractFileFromSession:v5];
    }
  }

LABEL_10:
}

void __56__EKEventGestureController_dropInteraction_performDrop___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__EKEventGestureController_dropInteraction_performDrop___block_invoke_2;
  v5[3] = &unk_1E843EFB8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __56__EKEventGestureController_dropInteraction_performDrop___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 44) = 0;
  v2 = *(a1 + 32);
  if (*(v2 + 288))
  {
    [v2 _dismissCurrentICSPreviewControllerAnimated:0];
    v2 = *(a1 + 32);
  }

  v13 = [*(v2 + 64) eventStore];
  v3 = *(a1 + 40);
  if (v3)
  {
    if ([v3 requestedAction] == 2)
    {
      [*(a1 + 32) _setDraggingState:0 withPoint:*(*(a1 + 32) + 64) event:{*(*(a1 + 32) + 112), *(*(a1 + 32) + 120)}];
      v4 = [*(a1 + 40) uniqueId];

      if (v4)
      {
        v5 = *(a1 + 32);
        v6 = [*(a1 + 40) uniqueId];
        v7 = [*(a1 + 40) startDate];
        [v5 _handleShowingEventWithUniqueId:v6 date:v7 eventStore:v13];
      }
    }

    else
    {
      v8 = [*(a1 + 40) requestedAction];
      v9 = *(a1 + 32);
      if (v8 == 1)
      {
        [v9 _setDraggingState:0 withPoint:*(v9 + 64) event:{*(v9 + 112), *(v9 + 120)}];
        v10 = [*(a1 + 40) icsData];

        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = [*(a1 + 40) icsData];
          [v11 _handleImportingICSData:v12 intoEventStore:v13];
        }
      }

      else
      {
        [v9 _setupEvent:*(v9 + 64) withImportData:*(a1 + 40)];
        [*(a1 + 32) _setDraggingState:2 withPoint:*(*(a1 + 32) + 64) event:{*(*(a1 + 32) + 112), *(*(a1 + 32) + 120)}];
        [*(a1 + 32) _updateFlingToCancelParameters];
      }
    }
  }

  else
  {
    [*(a1 + 32) _setDraggingState:0 withPoint:0 event:{*(*(a1 + 32) + 112), *(*(a1 + 32) + 120)}];
  }
}

- (void)_extractFileFromSession:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_dragCompletionPending = 1;
  v25 = self;
  v30 = [(EKEventGestureController *)self _acceptedFileExternalTypes];
  v28 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v4;
  obj = [v4 items];
  v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v31)
  {
    v29 = *v42;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v42 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v41 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v8 = v30;
        v9 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v38;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v38 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v37 + 1) + 8 * j);
              v14 = [v7 itemProvider];
              v15 = [v14 hasItemConformingToTypeIdentifier:v13];

              if (v15)
              {
                [v28 addObject:v7];
                [v5 addObject:v13];
                goto LABEL_16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_16:
      }

      v31 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v31);
  }

  v16 = dispatch_group_create();
  v17 = v28;
  v18 = v5;
  if ([v28 count])
  {
    v19 = 0;
    do
    {
      v20 = [v17 objectAtIndexedSubscript:v19];
      v21 = [v18 objectAtIndexedSubscript:v19];
      dispatch_group_enter(v16);
      v22 = [v20 itemProvider];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __52__EKEventGestureController__extractFileFromSession___block_invoke;
      v34[3] = &unk_1E8442BB8;
      v34[4] = v25;
      v35 = v21;
      v36 = v16;
      v23 = v21;
      v24 = [v22 loadFileRepresentationForTypeIdentifier:v23 completionHandler:v34];

      v17 = v28;
      ++v19;
    }

    while (v19 < [v28 count]);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EKEventGestureController__extractFileFromSession___block_invoke_137;
  block[3] = &unk_1E84407B0;
  block[4] = v25;
  v33 = 0;
  dispatch_group_notify(v16, MEMORY[0x1E69E96A0], block);
}

void __52__EKEventGestureController__extractFileFromSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x1E6966960]) initWithFilepath:v5];
    [*(*(a1 + 32) + 64) addAttachment:v7];
  }

  else
  {
    v8 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "Unable to load file representation for type identifier [%{public}@]: %@", &v10, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __52__EKEventGestureController__extractFileFromSession___block_invoke_137(uint64_t a1)
{
  *(*(a1 + 32) + 44) = 0;
  [*(a1 + 32) _setEventCalendar:*(*(a1 + 32) + 64) useManagedCalendar:*(a1 + 40)];
  [*(a1 + 32) _setDraggingState:2 withPoint:*(*(a1 + 32) + 64) event:{*(*(a1 + 32) + 112), *(*(a1 + 32) + 120)}];
  v2 = *(a1 + 32);

  return [v2 _updateFlingToCancelParameters];
}

- (void)dropInteraction:(id)a3 item:(id)a4 willAnimateDropWithAnimator:(id)a5
{
  self->_dropAnimationInProgress = 1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __77__EKEventGestureController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke;
  v5[3] = &unk_1E843F4F8;
  v5[4] = self;
  [a5 addCompletion:{v5, a4}];
}

- (id)dropInteraction:(id)a3 previewForDroppingItem:(id)a4 withDefault:(id)a5
{
  v7 = a5;
  if ([EventImportData itemContainsCalendarICSData:a4])
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = [(EKEventGestureController *)self _captureImageOfDraggingView];
  v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {
    v12 = objc_loadWeakRetained(&self->_untimedDelegate);
    v13 = [v12 eventGestureControllerGetCurrentDraggingView:self];

    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = self->_draggingView;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  if (v10)
  {
    v14 = [(EKDayOccurrenceView *)v13 superview];
    v15 = objc_loadWeakRetained(&self->_untimedDelegate);

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_untimedDelegate);
      [v16 eventGestureController:self finalFrameAfterCommitAtPoint:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v25 = [(EKEventGestureController *)self _viewForTracking];
      [v14 convertRect:v25 fromView:{v18, v20, v22, v24}];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
    }

    else
    {
      [(EKDayOccurrenceView *)v13 frame];
      v31 = v34;
      v33 = v35;
      [(EKEventGestureController *)self _estimateFinalDropOriginForTimedDelegate];
      v27 = v36;
      v29 = v37;
    }

    v38 = [objc_alloc(MEMORY[0x1E69DC9A8]) initWithContainer:v14 center:{v27 + v31 * 0.5, v29 + v33 * 0.5}];
    v39 = objc_alloc(MEMORY[0x1E69DD068]);
    v40 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
    v8 = [v39 initWithView:v10 parameters:v40 target:v38];

    goto LABEL_13;
  }

LABEL_10:
  v8 = v7;
LABEL_13:

LABEL_14:

  return v8;
}

- (CGPoint)_estimateFinalDropOriginForTimedDelegate
{
  v3 = 88;
  if (self->_currentDragType == 1)
  {
    v3 = 112;
  }

  v4 = *(&self->super.isa + v3);
  v5 = self->_latestTouchPoint.y - self->_touchOffset.y;
  [(EKDayOccurrenceView *)self->_draggingView travelTimeSubviewHeightInPoints];
  v7 = v5 + v6;
  if (self->_currentDragType == 1 && !self->_dragLockDisabled && self->_horizontalDragLocked)
  {
    [(EKDayOccurrenceView *)self->_draggingView frame];
    v9 = v8;
    [(EKDayOccurrenceView *)self->_draggingView travelTimeSubviewHeightInPoints];
    v7 = v9 + v10;
  }

  [(EKEventGestureController *)self _capOccurrenceViewYOrigin:v7];
  v12 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = [WeakRetained eventGestureController:self isAllDayAtPoint:-[EKDayOccurrenceView isAllDay](self->_draggingView requireInsistence:{"isAllDay") ^ 1, self->_latestTouchPoint.x, self->_latestTouchPoint.y}];

  v15 = objc_loadWeakRetained(&self->_delegate);
  [v15 eventGestureController:self dateAtPoint:{v4, v12}];
  v17 = v16;

  [(EKEvent *)self->_event travelTime];
  v19 = CalSnapDateTo15MinuteOr5MinuteInterval(self->_event, [(EKEventGestureController *)self currentDragSnappingType], v17 - v18);
  x = self->_latestTouchPoint.x;
  y = self->_latestTouchPoint.y;

  [(EKEventGestureController *)self _computeOriginAtTouchPoint:v14 forDate:0 isAllDay:1 allowXOffset:x allowFloorAtRegionBottom:y, v19];
  result.y = v23;
  result.x = v22;
  return result;
}

- (void)dropInteraction:(id)a3 sessionDidEnd:(id)a4
{
  v13 = a3;
  v6 = a4;
  self->_currentDropDataOwnerCache = 0;
  if (!self->_dragCompletionPending)
  {
    currentDraggingState = self->_currentDraggingState;
    if (currentDraggingState == 1)
    {
LABEL_5:
      v8 = [(EKEventGestureController *)self _viewForTracking];
      [v6 locationInView:v8];
      v10 = v9;
      v12 = v11;
      [(EKEventGestureController *)self _updateFlingToCancelParameters];
      [(EKEventGestureController *)self _setDraggingState:0 withPoint:self->_event event:v10, v12];

      goto LABEL_7;
    }

    if (currentDraggingState != 4)
    {
      if (currentDraggingState != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }

    [(EKEventGestureController *)self _setDraggingState:0 withPoint:self->_event event:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

LABEL_7:
}

- (int64_t)_dropInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  result = self->_currentDropDataOwnerCache;
  if (!result)
  {
    v6 = objc_alloc_init(MEMORY[0x1E6966A18]);
    self->_currentDropDataOwnerCache = 1;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 calendarsForEntityType:{0, 0}];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ([(EKEventGestureController *)self _calendarCanAcceptManagedData:*(*(&v12 + 1) + 8 * i)])
          {
            self->_currentDropDataOwnerCache = 3;
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    return self->_currentDropDataOwnerCache;
  }

  return result;
}

- (void)_disableSystemPreviewForDrag:(id)a3
{
  v3 = [(EKEventGestureController *)self _findLocalDragItemInSession:a3];
  [v3 setPreviewProvider:&__block_literal_global_68];
}

- (void)_enableSystemPreviewForDrag:(id)a3
{
  v3 = [(EKEventGestureController *)self _findLocalDragItemInSession:a3];
  [v3 setPreviewProvider:0];
}

- (void)_setToSystemDraggingImageForDrag:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = v4;
  if (self->_needToSetSystemDragPreview)
  {
    v6 = [v4 localDragSession];

    v7 = [(EKEventGestureController *)self _findLocalDragItemInSession:v6];
    v8 = self->_event;
    if (v8 || ([v7 localObject], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) != 0) && (objc_msgSend(v7, "localObject"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v21 = 0;
      v10 = [EKDayOccurrenceView viewForExternalDragOperationFromEvent:v8 visiblePath:&v21];
      v11 = v21;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __61__EKEventGestureController__setToSystemDraggingImageForDrag___block_invoke;
      v18[3] = &unk_1E8442C00;
      v19 = v11;
      v20 = v10;
      v12 = v10;
      v13 = v11;
      [v7 setPreviewProvider:v18];
    }

    else
    {
      v16 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "Unable to create preview for dragging info: EKEvent was not found or generated", v17, 2u);
      }

      [v7 setPreviewProvider:0];
    }

    self->_needToSetSystemDragPreview = 0;
  }
}

id __61__EKEventGestureController__setToSystemDraggingImageForDrag___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  [v2 setVisiblePath:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:*(a1 + 40) parameters:v2];

  return v3;
}

- (void)_setLocalDraggingViewHidden:(BOOL)a3
{
  v3 = a3;
  draggingView = self->_draggingView;
  if (draggingView)
  {
    [(EKDayOccurrenceView *)draggingView setHidden:a3];
    [(EKDayOccurrenceView *)self->_draggingView setDrawsResizeHandles:v3 ^ 1];
  }

  v6 = [(EKEventGestureController *)self untimedDelegate];

  if (v6)
  {
    v7 = [(EKEventGestureController *)self untimedDelegate];
    [v7 eventGestureController:self setDraggingViewHidden:v3];
  }
}

- (void)_setToLocalDraggingImageForDrag:(id)a3
{
  v4 = a3;
  if (self->_currentDragType == 1 || (WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate), WeakRetained, WeakRetained))
  {
    v6 = [(EKEventGestureController *)self _findLocalDragItemInSession:v4];
    v7 = [(EKEventGestureController *)self _captureImageOfDraggingView];
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    v9 = [(EKEventGestureController *)self _clippingPathForDraggingView];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__EKEventGestureController__setToLocalDraggingImageForDrag___block_invoke;
    v12[3] = &unk_1E8442C00;
    v13 = v9;
    v14 = v8;
    v10 = v8;
    v11 = v9;
    [v6 setPreviewProvider:v12];
  }
}

id __60__EKEventGestureController__setToLocalDraggingImageForDrag___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  [v2 setVisiblePath:*(a1 + 32)];
  v3 = [objc_alloc(MEMORY[0x1E69DC998]) initWithView:*(a1 + 40) parameters:v2];

  return v3;
}

- (id)_captureImageOfDraggingView
{
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_untimedDelegate);
    v5 = [v4 eventGestureControllerGetCurrentDraggingView:self];

    v6 = objc_opt_class();
    [v5 bounds];
    v7 = [v6 _captureImageOfOccurrenceView:v5 withFrameOfOpaqueContent:?];
  }

  else
  {
    [(EKDayOccurrenceView *)self->_draggingView frameOfOpaqueContent];
    v7 = [objc_opt_class() _captureImageOfOccurrenceView:self->_draggingView withFrameOfOpaqueContent:{v8, v9, v10, v11}];
  }

  return v7;
}

- (id)_clippingPathForDraggingView
{
  draggingView = self->_draggingView;
  if (draggingView)
  {
    [draggingView frameOfOpaqueContent];
    draggingView = [MEMORY[0x1E69DC728] bezierPathWithRect:?];
    v2 = vars8;
  }

  return draggingView;
}

+ (id)_captureImageOfOccurrenceView:(id)a3 withFrameOfOpaqueContent:(CGRect)a4
{
  v4 = a3;
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v9 = [v4 isHidden];
  [v4 setNeedsDisplay];
  [v4 setHidden:0];
  [v4 layoutIfNeeded];
  v10 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v6, v8}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __83__EKEventGestureController__captureImageOfOccurrenceView_withFrameOfOpaqueContent___block_invoke;
  v14[3] = &unk_1E8442C28;
  v15 = v4;
  v11 = v4;
  v12 = [v10 imageWithActions:v14];
  [v11 setHidden:v9];

  return v12;
}

void __83__EKEventGestureController__captureImageOfOccurrenceView_withFrameOfOpaqueContent___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

- (id)_findLocalDragItemInSession:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a3 items];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 localObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v9 localObject];
          v13 = [(EKDayOccurrenceView *)self->_draggingView occurrence];
          v14 = [(EKDayOccurrenceView *)self->_draggingView occurrence];

          if (!v14)
          {
            v15 = self->_event;

            v13 = v15;
          }

          if (([v12 isEqual:v13] & 1) != 0 || !v13)
          {
            v16 = v9;

            goto LABEL_16;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)_eventToUseAtInteractionStart:(CGPoint)a3 outOccurrenceView:(id *)a4
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    if (self->_currentDraggingState == 2 && (draggingView = self->_draggingView) != 0 && self->_event)
    {
      v10 = draggingView;
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 eventGestureController:self occurrenceViewAtPoint:0 ignoreSelectedCopyView:{x, y}];

    if (!v10 || (-[EKDayOccurrenceView occurrence](v10, "occurrence"), v13 = objc_claimAutoreleasedReturnValue(), [v12 occurrence], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v15))
    {
      if (!v12)
      {
        v18 = [(EKEventGestureController *)self _createNewEventIfNeededAtPoint:x, y];
        goto LABEL_19;
      }

      v16 = [v12 occurrences];
      v17 = [v16 count];

      if (v17 < 2)
      {
        v20 = v12;
        *a4 = v12;
        v18 = [v20 occurrence];
        if (self->_currentDraggingState != 2)
        {
          goto LABEL_19;
        }

        v21 = [(EKEventGestureController *)self _viewForTracking];
        [v12 convertPoint:v21 fromView:{x, y}];
        v23 = v22;
        v25 = v24;

        if (([v12 dragTypeFromPoint:{v23, v25}] & 0xFFFFFFFD) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        CalPlopViewWithScaleFactorAndCompletion(v12, 0, 1.0);
      }
    }

    v18 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v19 = objc_loadWeakRetained(&self->_untimedDelegate);

  if (!v19)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v10 = objc_loadWeakRetained(&self->_untimedDelegate);
  v18 = [(EKDayOccurrenceView *)v10 eventGestureController:self eventToStartInteractionWithAtPoint:x, y];
LABEL_20:

LABEL_21:

  return v18;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a4;
  if ([(EKEventGestureController *)self dragGestureInProgress]|| self->_dragInitiationLocked)
  {
    goto LABEL_3;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = [v12 eventGestureControllerShouldAllowLongPress:self];

      if (v13)
      {
        goto LABEL_13;
      }

LABEL_3:
      v6 = MEMORY[0x1E695E0F0];
      goto LABEL_4;
    }
  }

  v14 = objc_loadWeakRetained(&self->_untimedDelegate);

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_untimedDelegate);
    v16 = [v15 eventGestureControllerShouldAllowLongPress:self];

    if (!v16)
    {
      goto LABEL_3;
    }
  }

LABEL_13:
  v17 = [(EKEventGestureController *)self _viewForTracking];
  [v5 locationInView:v17];
  v19 = v18;
  v21 = v20;

  [(EKEventGestureController *)self _setUpInitialTouchPointsWithPoint:v19, v21];
  v72[0] = 0;
  v22 = [(EKEventGestureController *)self _eventToUseAtInteractionStart:v72 outOccurrenceView:v19, v21];
  v23 = v72[0];
  if (!v22)
  {
    goto LABEL_46;
  }

  if ([v22 isNew])
  {
    goto LABEL_15;
  }

  v28 = [(EKEventGestureController *)self canProposeNewTime:v22];
  v29 = [v22 isEditable] | v28;
  if (![v22 isReminderIntegrationEvent])
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_15:
    v24 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    [v24 registerDataRepresentationForTypeIdentifier:@"com.apple.eventkit.internal" visibility:3 loadHandler:&__block_literal_global_153];
    v25 = objc_loadWeakRetained(&self->_delegate);
    v26 = objc_loadWeakRetained(&self->_untimedDelegate);
    v27 = v26;
    if (v25)
    {
      v26 = v25;
    }

    else if (!v26)
    {
LABEL_22:
      if (([v22 isNew] & 1) == 0)
      {
        v30 = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_2;
        aBlock[3] = &unk_1E8442C70;
        v31 = v30;
        v71 = v31;
        v32 = _Block_copy(aBlock);
        [v24 registerDataRepresentationForTypeIdentifier:@"com.apple.calendar.ics" visibility:0 loadHandler:v32];
        [v24 registerDataRepresentationForTypeIdentifier:@"com.apple.ical.ics" visibility:0 loadHandler:v32];
        v33 = v27;
        v34 = *MEMORY[0x1E69DEB60];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_3;
        v68[3] = &unk_1E8442C70;
        v69 = v31;
        v35 = v31;
        v36 = v34;
        v27 = v33;
        [v24 registerDataRepresentationForTypeIdentifier:v36 visibility:0 loadHandler:v68];
      }

      if (([v22 isNew] & 1) == 0)
      {
        v37 = [v22 title];
        v38 = [v37 length];

        if (v38)
        {
          v39 = [MEMORY[0x1E69933E0] sharedGenerator];
          v40 = [v39 textRepresentationForEvent:v22 withTextFormat:0 showURI:0];

          v41 = [*MEMORY[0x1E6983060] identifier];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_4;
          v66[3] = &unk_1E8442C70;
          v42 = v40;
          v67 = v42;
          [v24 registerDataRepresentationForTypeIdentifier:v41 visibility:0 loadHandler:v66];

          v43 = [*MEMORY[0x1E6983058] identifier];
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_5;
          v64[3] = &unk_1E8442C70;
          v65 = v42;
          v44 = v42;
          [v24 registerDataRepresentationForTypeIdentifier:v43 visibility:0 loadHandler:v64];
        }
      }

LABEL_27:
      v45 = [v22 title];
      v46 = [v45 length];

      if (v46)
      {
        v47 = [v22 title];
      }

      else
      {
        if (![v22 isNew])
        {
          goto LABEL_32;
        }

        v47 = +[EKEventEditor defaultTitleForCalendarItem];
      }

      v48 = v47;
      [v24 setSuggestedName:v47];

LABEL_32:
      v49 = [objc_alloc(MEMORY[0x1E69DC990]) initWithItemProvider:v24];
      [v49 setLocalObject:v22];
      if ([v22 isNew] & 1) == 0 && (objc_msgSend(v22, "calendar"), (v50 = objc_claimAutoreleasedReturnValue()) != 0) && (v51 = v50, objc_msgSend(v22, "calendar"), v63 = v24, v52 = v23, v53 = v25, v54 = v27, v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "isManaged"), v55, v27 = v54, v25 = v53, v23 = v52, v24 = v63, v51, (v56))
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      [v49 set_managementState:v57];
      objc_storeStrong(&self->_event, v22);
      v58 = [v23 occurrenceDate];
      self->_occurrenceDateIndex = [(EKEventGestureController *)self _occurrenceDateIndexWithEvent:v22 occurrenceDate:v58];

      v6 = [MEMORY[0x1E695DEC8] arrayWithObject:v49];

      goto LABEL_38;
    }

    if ([v26 provideExternalRepresentationsForEvent:v22 withProvider:v24])
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  if ([v22 CUIK_reminderShouldBeEditable] & v29)
  {
    goto LABEL_15;
  }

LABEL_40:
  v59 = objc_loadWeakRetained(&self->_delegate);

  if (!v59)
  {
    v62 = objc_loadWeakRetained(&self->_untimedDelegate);

    if (v62)
    {
      v24 = objc_loadWeakRetained(&self->_untimedDelegate);
      [v24 eventGestureController:self requestedCancellationAnimationAtPoint:v22 withOccurrence:{v19, v21}];
      goto LABEL_45;
    }

LABEL_46:
    v6 = MEMORY[0x1E695E0F0];
    goto LABEL_47;
  }

  v60 = objc_loadWeakRetained(&self->_delegate);
  v61 = [v23 occurrenceDate];
  v24 = [v60 eventGestureController:self occurrenceViewForOccurrence:v22 occurrenceDate:v61];

  if (!v24)
  {
    goto LABEL_46;
  }

  [(EKEventGestureController *)self _updatePositionOfEditingMenuForView:v24];
LABEL_45:
  v6 = MEMORY[0x1E695E0F0];
LABEL_38:

LABEL_47:
LABEL_4:

  return v6;
}

id __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AE38];
  v3 = a2;
  v4 = [v2 progressWithTotalUnitCount:1];
  [v4 setCompletedUnitCount:1];
  (*(v3 + 2))(v3, 0, 0);

  return v4;
}

id __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE38];
  v4 = a2;
  v5 = [v3 progressWithTotalUnitCount:1];
  [v5 setCompletedUnitCount:1];
  v6 = [*(a1 + 32) exportToICS];
  v4[2](v4, v6, 0);

  return v5;
}

id __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696B090];
  v4 = a2;
  v5 = [[v3 alloc] initWithActivityType:@"com.apple.calendar.continuity.event_selection"];
  v6 = [objc_alloc(MEMORY[0x1E69934B8]) initWithEvent:*(a1 + 32) view:0];
  [v6 updateActivity:v5];
  v7 = [v5 loadDataWithTypeIdentifier:*MEMORY[0x1E69DEB60] forItemProviderCompletionHandler:v4];

  return v7;
}

id __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE38];
  v4 = a2;
  v5 = [v3 progressWithTotalUnitCount:1];
  [v5 setCompletedUnitCount:1];
  v6 = [*(a1 + 32) dataUsingEncoding:4];
  v4[2](v4, v6, 0);

  return v5;
}

id __69__EKEventGestureController_dragInteraction_itemsForBeginningSession___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE38];
  v4 = a2;
  v5 = [v3 progressWithTotalUnitCount:1];
  [v5 setCompletedUnitCount:1];
  v6 = [*(a1 + 32) dataUsingEncoding:10];
  v4[2](v4, v6, 0);

  return v5;
}

- (EKCalendarDate)occurrenceDate
{
  v3 = [(EKEvent *)self->_event startCalendarDate];
  v4 = [v3 calendarDateByAddingDays:self->_occurrenceDateIndex];

  return v4;
}

- (id)dragInteraction:(id)a3 previewForLiftingItem:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_draggingView || ![(EKEventGestureController *)self _isTouchFromDragSessionInResizeHandles:v10])
  {
    v11 = [(EKEventGestureController *)self _viewForTracking];
    [v10 locationInView:v11];
    [(EKEventGestureController *)self _setDraggingState:3 withPoint:0 event:?];
    [(EKEventGestureController *)self _updateFlingToCancelParameters];
  }

  self->_needToSetSystemDragPreview = 1;

  return 0;
}

- (void)_dragInteractionDidCancelLiftWithoutDragging:(id)a3
{
  v4 = a3;
  if (self->_waitingForDragToInitialize)
  {
    v7 = v4;
    if (!self->_draggingView || self->_currentDragType == 1 || (-[EKEventGestureController _viewForTracking](self, "_viewForTracking"), v5 = objc_claimAutoreleasedReturnValue(), [v5 convertPoint:self->_draggingView toView:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}], v6 = -[EKDayOccurrenceView dragTypeFromPoint:](self->_draggingView, "dragTypeFromPoint:") & 0xFFFFFFFD, v5, v4 = v7, v6))
    {
      if (self->_currentDraggingState == 3)
      {
        [(EKEventGestureController *)self _setLocalDraggingViewHidden:0];
        self->_dragInteractionCancellingWithoutDragging = 1;
        [(EKEventGestureController *)self _setDraggingState:2 withPoint:self->_event event:self->_latestTouchPoint.x, self->_latestTouchPoint.y];
        self->_dragInteractionCancellingWithoutDragging = 0;
      }

      else
      {
        [(EKEventGestureController *)self _dragFailedToStart];
      }

      v4 = v7;
    }

    self->_waitingForDragToInitialize = 0;
  }
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v8 = a3;
  v7 = a4;
  if (self->_waitingForDragToInitialize && (!self->_draggingView || ![(EKEventGestureController *)self _isTouchFromDragSessionInResizeHandles:v7]))
  {
    [(EKEventGestureController *)self _setLocalDraggingViewHidden:0];
    [(EKEventGestureController *)self _setDraggingState:2 withPoint:0 event:self->_latestTouchPoint.x, self->_latestTouchPoint.y];
  }
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v4 = [(EKEventGestureController *)self _findLocalDragItemInSession:a4];
  v5 = [v4 localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = [v4 localObject];
  v8 = [v7 calendar];
  if (!v8)
  {

    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v7 calendar];
  v11 = [v10 isManaged];

  if ((v11 & 1) == 0)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  v12 = 2;
LABEL_7:

  return v12;
}

- (id)originalStartDateForEvent:(id)a3 includingTravel:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EKEventGestureController *)self draggingViewSource];
  v8 = [v7 isProposedTime];

  if (v8)
  {
    v9 = [v6 proposedStartDate];
  }

  else
  {
    if (v4)
    {
      [v6 startDateIncludingTravel];
    }

    else
    {
      [v6 startDate];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (BOOL)splitMultiDays
{
  if (![(EKEvent *)self->_event isAllDay])
  {
    return 0;
  }

  v3 = [(EKEventGestureController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(EKEventGestureController *)self delegate];
    v5 = [v4 eventGestureControllerShouldSplitMultiDayAllDayEvents:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_createTemporaryView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(EKEventGestureController *)self originalStartDateForEvent:v6 includingTravel:1];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [v6 isAllDay];
  v11 = MEMORY[0x1E69930C8];
  v12 = [v6 eventStore];
  v13 = [v12 timeZone];
  v14 = [v11 calendarDateWithAbsoluteTime:v13 timeZone:v9];
  v15 = [v14 calendarDateForDay];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained eventGestureController:self dateAtPoint:{self->_firstTouchPoint.x, self->_firstTouchPoint.y}];
  v18 = v17;

  v19 = MEMORY[0x1E69930C8];
  v20 = [v6 eventStore];
  v21 = [v20 timeZone];
  v22 = [v19 calendarDateWithAbsoluteTime:v21 timeZone:v18];
  v23 = [v22 calendarDateForDay];
  currentDay = self->_currentDay;
  self->_currentDay = v23;

  if (self->_currentDraggingState == 1 || self->_pendingDraggingState == 1)
  {
    self->_touchOffsetDays = 0;
    self->_commitOffsetDays = 0;
    v9 = v18;
  }

  else if (-[EKEventGestureController splitMultiDays](self, "splitMultiDays") && [v6 isAllDay])
  {
    v58 = objc_loadWeakRetained(&self->_delegate);
    [v58 eventGestureController:self dateAtPoint:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
    v60 = v59;

    v61 = MEMORY[0x1E69930C8];
    v62 = [v6 eventStore];
    v63 = [v62 timeZone];
    v64 = [v61 calendarDateWithAbsoluteTime:v63 timeZone:v60];
    v65 = [v64 calendarDateForDay];

    [v65 absoluteTime];
    v9 = v66;
    self->_touchOffsetDays = 0;
    self->_commitOffsetDays = [v65 differenceInDays:v15];
  }

  else
  {
    self->_touchOffsetDays = [(EKCalendarDate *)self->_currentDay differenceInDays:v15];
    self->_commitOffsetDays = 0;
    if ([(EKEvent *)self->_event isAllDay])
    {
      [(EKCalendarDate *)self->_currentDay absoluteTime];
      v9 = v67;
    }
  }

  v25 = objc_loadWeakRetained(&self->_delegate);
  [v25 eventGestureController:self pointAtDate:objc_msgSend(v6 isAllDay:{"isAllDay"), v9}];
  v27 = v26;
  v29 = v28;

  [v6 durationIncludingTravel];
  v31 = fmin(v30, 86400.0);
  if (([v6 isAllDay] & 1) == 0)
  {
    touchOffsetDays = self->_touchOffsetDays;
    if (touchOffsetDays >= 1 && touchOffsetDays + 1 == [v6 daySpan])
    {
      v33 = MEMORY[0x1E69930C8];
      v34 = [v6 endDateUnadjustedForLegacyClients];
      v35 = [v6 timeZone];
      v36 = [v33 calendarDateWithDate:v34 timeZone:v35];

      [v36 absoluteTime];
      v38 = v37;
      v39 = [v36 calendarDateForDay];
      [v39 absoluteTime];
      v31 = v38 - v40;
    }
  }

  v41 = objc_loadWeakRetained(&self->_delegate);
  v42 = [v41 createOccurrenceViewForEventGestureController:self];

  [v42 setSelected:1];
  v43 = [(EKEventGestureController *)self draggingViewSource];
  [v42 setIsProposedTime:{objc_msgSend(v43, "isProposedTime")}];

  [v42 setOccurrence:v6];
  v44 = [(EKEventGestureController *)self draggingViewSource];
  v45 = [v44 occurrenceDate];
  v46 = [v6 startCalendarDate];
  [v42 setOccurrenceDateIndex:{objc_msgSend(v45, "differenceInDays:", v46)}];

  [v42 setPointerInteractionDisabled:1];
  [(EKDayOccurrenceView *)self->_draggingViewSource margin];
  [v42 setMargin:?];
  [(EKDayOccurrenceView *)self->_draggingViewSource padding];
  [v42 setPadding:?];
  [(EKEventGestureController *)self _computeWidthForOccurrenceView];
  [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:self->_event event:v10 allDay:v31];
  [(EKEventGestureController *)self _computeOriginAtTouchPoint:v10 forDate:0 isAllDay:1 allowXOffset:v27 allowFloorAtRegionBottom:v29, v9];
  [v42 setFrame:?];
  v47 = objc_loadWeakRetained(&self->_delegate);
  v48 = [v47 occurrenceViewSuperviewForEventGestureController:self];

  [v48 addSubview:v42];
  [v42 setAllDay:v10];
  [v42 setHasPrecedingDuration:{-[EKDayOccurrenceView hasPrecedingDuration](self->_draggingViewSource, "hasPrecedingDuration")}];
  [v42 setHasTrailingDuration:{-[EKDayOccurrenceView hasTrailingDuration](self->_draggingViewSource, "hasTrailingDuration")}];
  [v42 setMultiAllDayRoundCorners:1];
  v49 = DraggedEventShadowColor();
  v50 = [v42 layer];
  [v50 setShadowColor:v49];

  v51 = [v42 layer];
  LODWORD(v52) = 1043878380;
  [v51 setShadowOpacity:v52];

  v53 = [v42 layer];
  [v53 setShadowRadius:10.0];

  v54 = [v42 layer];
  [v54 setShadowOffset:{0.0, 9.0}];

  v55 = objc_loadWeakRetained(&self->_delegate);
  v56 = [(EKEventGestureController *)self event];
  [v55 eventGestureController:self adjustDraggingView:v42 forAllDay:{objc_msgSend(v56, "isAllDay")}];

  [v42 requestContentIfNeeded:16 completion:0];
  if (v4)
  {
    [(EKEventGestureController *)self _animateInNewEvent];
  }

  else
  {
    [(EKEventGestureController *)self setCommitBlocked:0];
  }

  return v42;
}

- (void)_updatePositionOfEditingMenuForView:(id)a3
{
  if (!self->_isNewEvent)
  {
    [a3 presentEditingMenuFromGestureController:self];
  }
}

- (void)_animateInNewEvent
{
  [(EKDayOccurrenceView *)self->_draggingView frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(EKEventGestureController *)self setCommitBlocked:1];
  if (self->_isNewEvent && !self->_forcedStart)
  {
    draggingView = self->_draggingView;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__EKEventGestureController__animateInNewEvent__block_invoke;
    v14[3] = &unk_1E843EC60;
    v14[4] = self;
    CalPopViewIn(draggingView, v14);
  }

  else
  {
    v11 = self->_draggingView;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__EKEventGestureController__animateInNewEvent__block_invoke_2;
    v13[3] = &unk_1E843EC60;
    v13[4] = self;
    CalScaleViewIn(v11, v13, v4, v6, v8, v10);
  }
}

- (void)_setTouchOffsetsFromPoint:(CGPoint)a3 fixedToCenter:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v34 = [(EKDayOccurrenceView *)self->_draggingView occurrence];
  v8 = [(EKDayOccurrenceView *)self->_draggingView occurrenceDate];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained touchTrackingViewForEventGestureController:self];

  [v10 convertPoint:self->_draggingView toView:{x, y}];
  if (v4)
  {
    [(EKDayOccurrenceView *)self->_draggingView bounds];
    v14 = v13 * 0.5;
    [(EKDayOccurrenceView *)self->_draggingView bounds];
    v16 = v15 * 0.5;
  }

  else
  {
    v14 = v11;
    v16 = v12;
  }

  [(EKDayOccurrenceView *)self->_draggingView margin];
  v18 = v14 + v17;
  [(EKDayOccurrenceView *)self->_draggingView margin];
  v20 = v16 + v19;
  self->_currentDragType = [(EKDayOccurrenceView *)self->_draggingView dragTypeFromPoint:v18, v20];
  self->_touchOffset.x = v18;
  self->_touchOffset.y = v20;
  v21 = [v34 startCalendarDate];
  v22 = [v21 calendarDateForDay];

  if (v4)
  {
    v23 = 0;
  }

  else
  {
    if ([(EKEventGestureController *)self splitMultiDays])
    {
      v23 = [v8 differenceInDays:v22];
      self->_touchOffsetDays = 0;
      v24 = 184;
      goto LABEL_10;
    }

    v23 = [(EKCalendarDate *)self->_currentDay differenceInDays:v22];
  }

  v24 = 176;
LABEL_10:
  *(&self->super.isa + v24) = v23;
  v25 = objc_loadWeakRetained(&self->_delegate);
  [v25 eventGestureController:self dateAtPoint:{self->_firstTouchPoint.x, self->_firstTouchPoint.y}];
  self->_dateAtFirstTouchPoint = v26;

  v27 = MEMORY[0x1E69930C8];
  v28 = [v34 endDateUnadjustedForLegacyClients];
  v29 = [v34 eventStore];
  v30 = [v29 timeZone];
  v31 = [v27 calendarDateWithDate:v28 timeZone:v30];
  v32 = [v31 calendarDateForDay];

  if ([v34 isAllDay])
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = [v22 isEqual:v32] ^ 1;
  }

  self->_isMultiDayTimedEvent = v33;
  [(EKEventGestureController *)self _updateSnappingTypeForCurrentDrag];
}

- (void)_setUpAfterForcedStartFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_draggingView = &self->_draggingView;
  draggingView = self->_draggingView;
  if (!draggingView || !self->_event)
  {
    [(EKEventGestureController *)a2 _setUpAfterForcedStartFromPoint:p_draggingView, &v25];
    draggingView = v25;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained occurrenceViewSuperviewForEventGestureController:self];
  CalSwitchViewToSuperview(draggingView, v9);

  [(EKEventGestureController *)self _setTouchOffsetsFromPoint:0 fixedToCenter:x, y];
  self->_isNewEvent = [(EKEvent *)self->_event isNew];
  if (self->_currentDragType != 1)
  {
    v10 = objc_opt_class();
    [(EKDayOccurrenceView *)*p_draggingView bounds];
    [v10 contentStretchRectForFrame:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(EKDayOccurrenceView *)*p_draggingView layer];
    [v19 setContentsCenter:{v12, v14, v16, v18}];
  }

  if (!self->_isMultiDayTimedEvent || !self->_touchOffsetDays)
  {
    [(EKDayOccurrenceView *)*p_draggingView setDrawsResizeHandles:1];
  }

  event = self->_event;
  if (self->_currentDragType == 2)
  {
    [(EKEvent *)event endDateUnadjustedForLegacyClients];
  }

  else
  {
    [(EKEvent *)event startDateIncludingTravel];
  }
  v21 = ;
  [v21 timeIntervalSinceReferenceDate];
  v23 = v22;

  v24 = objc_loadWeakRetained(&self->_delegate);
  [v24 eventGestureController:self didSetUpAtDate:-[EKDayOccurrenceView isAllDay](self->_draggingView isAllDay:{"isAllDay"), v23}];
}

- (double)_minimumDuration
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(WeakRetained);

  result = 1800.0;
  if (IsRegularInViewHierarchy)
  {
    return 900.0;
  }

  return result;
}

- (void)_update
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CalendarEventGestures.m" lineNumber:2849 description:{@"Gesture controller tried to update, but with no view to drag"}];
}

- (void)_commit
{
  if ([(EKEventGestureController *)self _flingOrCancelDraggingViewIfNeeded])
  {
    v129 = [(EKCalendarDate *)self->_currentDay timeZone];
    v4 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:v129 timeZone:self->_dateAtFirstTouchPoint];
    v5 = [v4 calendarDateForDay];
    currentDay = self->_currentDay;
    self->_currentDay = v5;

    [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer setState:3];
LABEL_3:

    return;
  }

  if (self->_draggingView)
  {
    if ([(EKEventGestureController *)self commitBlocked])
    {
      self->_needsCommit = 1;
      return;
    }

    self->_needsCommit = 0;
    if (self->_currentDraggingState != 3 && CFAbsoluteTimeGetCurrent() - self->_firstTouchTime < 0.2)
    {
      [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer setState:0];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      draggingView = self->_draggingView;
      v62 = [(EKEventGestureController *)self event];
      [WeakRetained eventGestureController:self addViewToScroller:draggingView isAllDay:{objc_msgSend(v62, "isAllDay")}];

      v129 = objc_loadWeakRetained(&self->_delegate);
      v63 = [(EKEventGestureController *)self event];
      [v129 eventGestureController:self didSingleTapOccurrence:v63 shouldExtendSelection:0];

      goto LABEL_3;
    }

    v8 = [(EKDayOccurrenceView *)self->_draggingView occurrence];
    v9 = 88;
    if (self->_currentDragType == 1)
    {
      v9 = 112;
    }

    v10 = *(&self->super.isa + v9);
    v11 = self->_latestTouchPoint.y - self->_touchOffset.y;
    [(EKDayOccurrenceView *)self->_draggingView travelTimeSubviewHeightInPoints];
    v13 = v11 + v12;
    v17 = self->_currentDragType == 1 && (self->_dragLockDisabled || !self->_horizontalDragLocked || ([(EKDayOccurrenceView *)self->_draggingView frame], v15 = v14, [(EKDayOccurrenceView *)self->_draggingView travelTimeSubviewHeightInPoints], v13 = v15 + v16, self->_currentDragType == 1)) && !self->_dragLockDisabled;
    [(EKEventGestureController *)self _capOccurrenceViewYOrigin:v17 ignoreTopInsets:v13];
    v19 = v18;
    v20 = objc_loadWeakRetained(&self->_delegate);
    v21 = [v20 eventGestureController:self isAllDayAtPoint:-[EKDayOccurrenceView isAllDay](self->_draggingView requireInsistence:{"isAllDay") ^ 1, self->_latestTouchPoint.x, self->_latestTouchPoint.y}];

    if (v21)
    {
      v22 = self->_currentDragType == 1;
    }

    else
    {
      v22 = 0;
    }

    v23 = objc_loadWeakRetained(&self->_delegate);
    [v23 eventGestureController:self dateAtPoint:{v10, v19}];
    v25 = v24;

    [(EKEvent *)self->_event travelTime];
    v27 = v26;
    touchOffsetDays = self->_touchOffsetDays;
    if (touchOffsetDays <= 0 && self->_commitOffsetDays < 1)
    {
      v33 = v25;
      v46 = v25;
      if (v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v22)
      {
        v29 = -(LODWORD(self->_commitOffsetDays) + touchOffsetDays);
        v146 = 0;
        v145 = 0;
        v147 = 0;
        v30 = [v8 eventStore];
        v31 = [v30 timeZone];
        v143 = 0;
        v144 = v29;
        CalAbsoluteTimeAddGregorianUnits();
        v33 = v32;

LABEL_29:
        v34 = MEMORY[0x1E69930C8];
        v35 = [v8 eventStore];
        v36 = [v35 timeZone];
        v37 = [v34 calendarDateWithAbsoluteTime:v36 timeZone:v33];
        v38 = [v37 calendarDateForDay];
        [v38 absoluteTime];
        v40 = v39;

        goto LABEL_32;
      }

      v41 = objc_loadWeakRetained(&self->_delegate);
      [v41 eventGestureController:self dateAtPoint:{self->_latestTouchPoint.x, self->_latestTouchPoint.y}];
      v43 = v42;

      v44 = [v8 startDate];
      [v44 timeIntervalSinceReferenceDate];
      v46 = v45 + v43 - self->_dateAtFirstTouchPoint;
    }

    v40 = CalSnapDateTo15MinuteOr5MinuteInterval(v8, [(EKEventGestureController *)self currentDragSnappingType], v46);
LABEL_32:
    [v8 duration];
    v48 = v47;
    v49 = [v8 endDateUnadjustedForLegacyClients];
    [v49 timeIntervalSinceReferenceDate];
    v51 = v50;

    currentDragType = self->_currentDragType;
    if (currentDragType)
    {
      if (currentDragType == 1)
      {
        v53 = v25 - v27;
        if (v22 | (([v8 isAllDay] & 1) == 0))
        {
          v54 = [v8 isAllDay];
          v55 = 86399.0;
          if (!v22)
          {
            v55 = v48;
          }

          if (!v54)
          {
            v48 = v55;
          }
        }

        else
        {
          [(EKEventGestureController *)self defaultDurationForEvent:v8];
          v48 = v78;
        }

        v58 = v40;
      }

      else
      {
        [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:0 event:0 allDay:fmin(v48, 86400.0)];
        v65 = round(v64);
        v66 = self->_latestTouchPoint.y - self->_touchOffset.y;
        [(EKDayOccurrenceView *)self->_draggingView travelTimeSubviewHeightInPoints];
        v68 = v65 + v66 + v67;
        v69 = objc_loadWeakRetained(&self->_delegate);
        [v69 eventGestureController:self dateAtPoint:{self->_firstTouchPoint.x, v68}];
        v71 = v70;

        v72 = CalSnapDateTo15MinuteOr5MinuteInterval(v8, [(EKEventGestureController *)self currentDragSnappingType], v71);
        if (v72 > v40)
        {
          v48 = v48 + v72 - v51;
          [(EKEventGestureController *)self _minimumDuration];
          if (v48 < v73)
          {
            [(EKEventGestureController *)self _minimumDuration];
            v48 = v74;
          }
        }

        v75 = [v8 startDate];
        [v75 timeIntervalSinceReferenceDate];
        v58 = v76;

        [(EKEvent *)self->_event travelTime];
        v53 = v58 - v77;
      }
    }

    else
    {
      [(EKEventGestureController *)self _minimumDuration];
      v57 = v51 - v56;
      if (v40 <= v57)
      {
        v58 = v40;
      }

      else
      {
        v58 = v57;
      }

      [(EKEvent *)self->_event travelTime];
      v53 = v58 - v59;
      v48 = v51 - v58;
      v40 = v58;
    }

    if (self->_currentDragType != 1)
    {
      v79 = objc_opt_class();
      [(EKDayOccurrenceView *)self->_draggingView bounds];
      [v79 contentStretchRectForFrame:?];
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;
      v88 = [(EKDayOccurrenceView *)self->_draggingView layer];
      [v88 setContentsCenter:{v81, v83, v85, v87}];

      [(EKDayOccurrenceView *)self->_draggingView setNeedsDisplay];
    }

    v89 = fmin(v48, 86400.0);
    if (![(EKEvent *)self->_event isAllDay])
    {
      v90 = self->_touchOffsetDays;
      if (v90 >= 1 && v90 + 1 == [v8 daySpan])
      {
        v91 = MEMORY[0x1E69930C8];
        v92 = [(EKEvent *)self->_event endDateUnadjustedForLegacyClients];
        v93 = [(EKEvent *)self->_event timeZone];
        v94 = [v91 calendarDateWithDate:v92 timeZone:v93];

        [v94 absoluteTime];
        v96 = v95;
        v97 = [v94 calendarDateForDay];
        [v97 absoluteTime];
        v89 = v96 - v98;
      }
    }

    [(EKEventGestureController *)self _computeWidthForOccurrenceView];
    v100 = v99;
    [v8 travelTime];
    v101 = 0.0;
    if (v102 > 0.0)
    {
      [(EKEvent *)self->_event travelTime];
      [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:v8 event:v22 allDay:?];
      v101 = v103;
    }

    [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:v8 event:v22 allDay:v89];
    v105 = v104;
    [(EKDayOccurrenceView *)self->_draggingViewSource enoughHeightForOneLine];
    if (v105 >= v106)
    {
      v107 = v105;
    }

    else
    {
      v107 = v106;
    }

    [(EKEventGestureController *)self _computeOriginAtTouchPoint:v22 forDate:0 isAllDay:1 allowXOffset:self->_latestTouchPoint.x allowFloorAtRegionBottom:self->_latestTouchPoint.y, CalSnapDateTo15MinuteOr5MinuteInterval(self->_event, [(EKEventGestureController *)self currentDragSnappingType], v53)];
    v109 = v108;
    v111 = v110;
    v112 = [(EKEventGestureController *)self draggingViewSource];
    [v112 travelTimeSubviewHeightInPoints];
    [(EKDayOccurrenceView *)self->_draggingView setTravelTimeSubviewHeightInPoints:?];

    [v8 setAllDay:v22];
    v113 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v58];
    v114 = [v8 startDate];
    if ([v113 isEqualToDate:v114])
    {

      v115 = [(EKEventGestureController *)self draggingViewSource];
      -[EKDayOccurrenceView setIsProposedTime:](self->_draggingView, "setIsProposedTime:", [v115 isProposedTime]);

      [(EKDayOccurrenceView *)self->_draggingView requestContentIfNeeded:16 completion:0];
    }

    else
    {
      v116 = [v8 isEditable];

      v117 = [(EKEventGestureController *)self draggingViewSource];
      -[EKDayOccurrenceView setIsProposedTime:](self->_draggingView, "setIsProposedTime:", [v117 isProposedTime] & 1u | ((v116 & 1) == 0));

      [(EKDayOccurrenceView *)self->_draggingView requestContentIfNeeded:16 completion:0];
      if ((v116 & 1) == 0)
      {
        v128 = [v8 serverSupportedProposeNewTime];
        v139[0] = MEMORY[0x1E69E9820];
        v139[1] = 3221225472;
        v139[2] = __35__EKEventGestureController__commit__block_invoke;
        v139[3] = &unk_1E8442CC0;
        v139[4] = self;
        v140 = v8;
        v141 = v113;
        v142 = v128;
        [(EKEventGestureController *)self promptUserForProposeNewTime:v141 forEvent:v8 whenFinished:v139];

        goto LABEL_67;
      }
    }

    v118 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v58];
    [v8 setStartDate:v118];

    v119 = [v8 startDate];
    v120 = [v119 dateByAddingTimeInterval:v48];
    [v8 setEndDateUnadjustedForLegacyClients:v120];

    v121 = self->_dragSnappingFeedback;
    dragSnappingFeedback = self->_dragSnappingFeedback;
    self->_dragSnappingFeedback = 0;

    v123 = !self->_dragInteractionCancellingWithoutDragging;
    forcedStart = self->_forcedStart;
    v125 = MEMORY[0x1E69DD250];
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = __35__EKEventGestureController__commit__block_invoke_184;
    v138[3] = &unk_1E8441260;
    v138[5] = v109;
    v138[6] = v111;
    v138[7] = v100;
    *&v138[8] = v101 + v107;
    v138[4] = self;
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __35__EKEventGestureController__commit__block_invoke_2;
    v130[3] = &unk_1E8442D10;
    v135 = v123;
    v131 = v121;
    v132 = self;
    v133 = v8;
    v136 = forcedStart;
    v134 = v40;
    v137 = v22;
    v126 = v8;
    v127 = v121;
    [v125 animateWithDuration:4 delay:v138 options:v130 animations:0.1 completion:0.0];

LABEL_67:
    return;
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"CalendarEventGestures.m" lineNumber:3028 description:{@"Gesture controller tried to commit, but with no view to drag. Cancelling instead."}];

  [(EKEventGestureController *)self _cancel];
}

void __35__EKEventGestureController__commit__block_invoke(uint64_t a1, char a2)
{
  v47 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 344));
  [WeakRetained eventGestureController:*(a1 + 32) didCancelEditingOccurrence:*(a1 + 40) fadedOut:1];

  [*(a1 + 32) removeDraggedOccurrence];
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) setEvent:0];
    if ([*(a1 + 40) participationStatus] != 2 && objc_msgSend(*(a1 + 40), "participationStatus") != 4)
    {
      [*(a1 + 40) setInvitationStatus:0];
      [*(a1 + 40) setParticipationStatus:4];
    }

    [*(a1 + 40) setProposedStartDate:*(a1 + 48)];
    v5 = [*(a1 + 32) delegate];
    v6 = [v5 editorForEventGestureController:*(a1 + 32)];

    if (*(a1 + 56) == 1)
    {
      v7 = MEMORY[0x1E6993410];
      v9 = *(a1 + 40);
      v8 = (a1 + 40);
      v10 = [v9 responseComment];
      v11 = [*v8 proposedStartDate];
      v12 = [*v8 timeZone];
      v13 = [v7 comment:v10 withInsertedAutoCommentForDate:v11 timeZone:v12];
      [*v8 setResponseComment:v13];

      v14 = *v8;
      v43 = 0;
      LOBYTE(v8) = [v6 saveEvent:v14 span:0 error:&v43];
      v15 = v43;
      if ((v8 & 1) == 0)
      {
        v16 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v15;
          _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "Failed to save proposed time with response comment: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v17 = EventKitUIBundle();
      v15 = [v17 localizedStringForKey:@"NEW TIME PROPOSAL:" value:&stru_1F4EF6790 table:0];

      v18 = MEMORY[0x1E696AEC0];
      v19 = EventKitUIBundle();
      v20 = [v19 localizedStringForKey:@"Can we move this event to <b>%@</b>?" value:&stru_1F4EF6790 table:0];
      v21 = MEMORY[0x1E6992F68];
      v22 = *(a1 + 48);
      v23 = [*(a1 + 40) timeZone];
      v24 = [v21 longStringForDateAndTime:v22 inTimeZone:v23];
      v25 = [v18 localizedStringWithFormat:v20, v24];

      v26 = [EKUIEmailCompositionManager alloc];
      v27 = *(a1 + 40);
      v28 = [v27 organizer];
      v44 = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
      v30 = [(EKUIEmailCompositionManager *)v26 initWithEvent:v27 participantRecipients:v29 subjectPrefix:v15 bodyPrefix:v25];
      [*(a1 + 32) setMessageSendingManager:v30];

      v31 = [*(a1 + 32) messageSendingManager];
      objc_initWeak(buf, v31);

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __35__EKEventGestureController__commit__block_invoke_182;
      v39[3] = &unk_1E8442C98;
      objc_copyWeak(&v42, buf);
      v40 = *(a1 + 40);
      v41 = v6;
      v32 = [*(a1 + 32) messageSendingManager];
      [v32 setMessageSendingComplete:v39];

      v33 = [*(a1 + 32) messageSendingManager];
      v34 = [v33 viewController];
      [v34 setModalPresentationStyle:2];

      v35 = [*(a1 + 32) delegate];
      v36 = [v35 currentPresentationController];
      v37 = [*(a1 + 32) messageSendingManager];
      v38 = [v37 viewController];
      [v36 presentViewController:v38 animated:1 completion:0];

      objc_destroyWeak(&v42);
      objc_destroyWeak(buf);
    }
  }
}

void __35__EKEventGestureController__commit__block_invoke_182(uint64_t a1, char a2)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v13 = 0;
      v7 = [v5 saveEvent:v6 span:0 error:&v13];
      v8 = v13;
      if ((v7 & 1) == 0)
      {
        v9 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v15 = v8;
          _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "Failed to save proposed time: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v10 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, "Failed to send email", buf, 2u);
      }

      [*(a1 + 32) rollback];
    }

    v11 = [WeakRetained viewController];
    v12 = [v11 presentingViewController];
    [v12 dismissViewControllerAnimated:1 completion:0];
  }
}

void __35__EKEventGestureController__commit__block_invoke_184(double *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = a1[8];
  v6 = [*(*(a1 + 4) + 56) superview];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 4) + 344));
    v8 = [WeakRetained occurrenceViewSuperviewForEventGestureController:*(a1 + 4)];

    v9 = [*(*(a1 + 4) + 56) superview];
    [v9 convertRect:v8 fromView:{a1[5], a1[6], a1[7], a1[8]}];
    v2 = v10;
    v3 = v11;
    v4 = v12;
    v5 = v13;
  }

  v14 = *(*(a1 + 4) + 56);
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  v21[0] = *MEMORY[0x1E695EFD0];
  v21[1] = v15;
  v21[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v14 setTransform:v21];
  [*(*(a1 + 4) + 56) setFrame:{v2, v3, v4, v5}];
  v16 = *(a1 + 4);
  if ((*(v16 + 264) & 1) == 0)
  {
    v17 = *MEMORY[0x1E695F060];
    v18 = *(MEMORY[0x1E695F060] + 8);
    v19 = [*(v16 + 56) layer];
    [v19 setShadowOffset:{v17, v18}];

    v20 = [*(*(a1 + 4) + 56) layer];
    [v20 setShadowRadius:0.0];
  }
}

void __35__EKEventGestureController__commit__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) draggedObjectLanded];
  }

  [*(a1 + 32) userInteractionEnded];
  v2 = *(a1 + 40);
  if ((*(v2 + 200) & 1) == 0)
  {
    if ([*(a1 + 48) hasChanges])
    {
      v2 = *(a1 + 40);
    }

    else
    {
      v2 = *(a1 + 40);
      if ((*(a1 + 65) & 1) == 0)
      {
LABEL_24:

        [v2 _cancel];
        return;
      }
    }
  }

  WeakRetained = objc_loadWeakRetained((v2 + 344));
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((*(a1 + 40) + 344));
    v6 = [v5 eventEditorPopoverActiveWhileDraggingForEventGestureController:*(a1 + 40)] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  if ([*(a1 + 48) hasRecurrenceRules] && objc_msgSend(*(a1 + 48), "isAllDayDirty"))
  {
    [*(a1 + 48) rollback];
    [*(a1 + 40) updateDraggingOccurrenceForced:1 animated:0];
LABEL_23:
    v2 = *(a1 + 40);
    goto LABEL_24;
  }

  v7 = [*(a1 + 48) singleRecurrenceRule];
  v8 = (v7 != 0) & v6;

  v9 = *(a1 + 40);
  if (v8 == 1)
  {
    v10 = *(a1 + 48);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __35__EKEventGestureController__commit__block_invoke_3;
    v21[3] = &unk_1E8442CE8;
    v11 = v10;
    v12 = *(a1 + 40);
    v22 = v11;
    v23 = v12;
    v24 = *(a1 + 56);
    v25 = *(a1 + 66);
    [v9 promptUserForRecurrenceActionOnOccurrence:v11 whenFinished:v21];

    return;
  }

  *(v9 + 88) = v9[7];
  v13 = objc_loadWeakRetained((*(a1 + 40) + 344));
  v14 = [v13 eventGestureController:*(a1 + 40) didCommitOccurrence:*(a1 + 48) toDate:*(a1 + 66) isAllDay:0 span:*(a1 + 56)];

  v15 = objc_loadWeakRetained((*(a1 + 40) + 344));
  [v15 eventGestureController:*(a1 + 40) addViewToScroller:*(*(a1 + 40) + 56) isAllDay:{objc_msgSend(*(a1 + 48), "isAllDay")}];

  v16 = *(a1 + 40);
  if (*(v16 + 202) != 1 || !*(v16 + 176))
  {
    IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(*(v16 + 56));
    v18 = *(a1 + 40);
    if (!IsCompactInViewHierarchy || (*(v18 + 200) & 1) == 0)
    {
      v19 = [*(v18 + 56) isHidden];
      v20 = *(a1 + 40);
      if (!v19 || (*(v20 + 45) & 1) == 0)
      {
        [*(v20 + 56) setDrawsResizeHandles:1];
      }
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }
}

void __35__EKEventGestureController__commit__block_invoke_3(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    if (a3 && [*(a1 + 32) hasRecurrenceRules] && objc_msgSend(*(a1 + 32), "isMainOccurrence"))
    {
      v5 = [*(a1 + 32) recurrenceRules];
      v6 = [v5 firstObject];

      v7 = [v6 recurrenceEnd];
      v8 = [v7 endDate];

      if (v8)
      {
        v9 = [*(a1 + 32) committedValueForKey:@"startDate"];
        [v9 timeIntervalSinceReferenceDate];
        v11 = v10;

        v12 = [*(a1 + 32) startDate];
        [v12 timeIntervalSinceReferenceDate];
        v14 = v13;

        v15 = [v8 dateByAddingTimeInterval:v14 - v11];
        v16 = [MEMORY[0x1E6966AB8] recurrenceEndWithEndDate:v15];
        [v6 setRecurrenceEnd:v16];
      }
    }

    *(*(a1 + 40) + 88) = *(*(a1 + 40) + 112);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 344));
    v18 = [WeakRetained eventGestureController:*(a1 + 40) didCommitOccurrence:*(a1 + 32) toDate:*(a1 + 56) isAllDay:a3 span:*(a1 + 48)];

    v19 = objc_loadWeakRetained((*(a1 + 40) + 344));
    [v19 eventGestureController:*(a1 + 40) addViewToScroller:*(*(a1 + 40) + 56) isAllDay:{objc_msgSend(*(a1 + 32), "isAllDay")}];

    v20 = *(a1 + 40);
    if (*(v20 + 202) == 1 && *(v20 + 176))
    {
      if (v18)
      {
        return;
      }
    }

    else
    {
      [*(v20 + 56) setDrawsResizeHandles:1];
      if (v18)
      {
        return;
      }
    }
  }

  [*(a1 + 32) rollback];
  [*(a1 + 40) updateDraggingOccurrenceForced:1 animated:0];
  v21 = *(a1 + 40);

  [v21 _cancel];
}

- (void)_cancel
{
  v9 = self->_event;
  [(EKDayOccurrenceView *)self->_draggingView alpha];
  v4 = v3;
  if (v3 == 0.0)
  {
    v5 = [(EKEventGestureController *)self event];
    v6 = [v5 isNew];

    if (v6)
    {
      [(EKEventGestureController *)self removeDraggedOccurrence];
    }

    [(EKEventGestureController *)self setEvent:0];
  }

  else if (self->_draggingView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained eventGestureController:self addViewToScroller:self->_draggingView isAllDay:{-[EKEvent isAllDay](v9, "isAllDay")}];
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  [v8 eventGestureController:self didCancelEditingOccurrence:v9 fadedOut:v4 == 0.0];
}

- (BOOL)_flingOrCancelDraggingViewIfNeeded
{
  v3 = self->_latestTouchPoint.x - self->_previousTouchPoint.x;
  v4 = self->_latestTouchPoint.y - self->_previousTouchPoint.y;
  v5 = sqrt(v4 * v4 + v3 * v3);
  v6 = v5 * 0.7 / (CFAbsoluteTimeGetCurrent() - self->_previousTouchTime) + self->_previousTouchVelocity * 0.3;
  if (v6 <= 6000.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 6000.0;
  }

  v8 = [(EKEventGestureController *)self _isPointInCancelRegion:self->_latestTouchPoint.x, self->_latestTouchPoint.y];
  v9 = v8;
  if (v7 <= 1000.0)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else if (self->_currentDragType != 1 && !v8)
  {
    return 0;
  }

  v11 = [(EKDayOccurrenceView *)self->_draggingView occurrence];
  [(EKEvent *)self->_event duration];
  v13 = v12;
  v14 = MEMORY[0x1E69930C8];
  dateAtFirstTouchPoint = self->_dateAtFirstTouchPoint;
  v16 = [v11 eventStore];
  v17 = [v16 timeZone];
  v18 = [v14 calendarDateWithAbsoluteTime:v17 timeZone:dateAtFirstTouchPoint];

  if (self->_touchOffsetDays <= 0)
  {
    v19 = [v11 startDate];
    [v19 timeIntervalSinceReferenceDate];
  }

  else
  {
    v19 = [v18 calendarDateForDay];
    [v19 absoluteTime];
  }

  v21 = v20;
  v22 = fmin(v13, 86400.0);

  -[EKEventGestureController _computeOriginAtTouchPoint:forDate:isAllDay:allowXOffset:allowFloorAtRegionBottom:](self, "_computeOriginAtTouchPoint:forDate:isAllDay:allowXOffset:allowFloorAtRegionBottom:", [v11 isAllDay], 0, 0, self->_firstTouchPoint.x, self->_firstTouchPoint.y, v21);
  v24 = v23;
  v26 = v25;
  if (self->_currentDragType == 1)
  {
    v27 = acos(v3 / v5);
    v122 = 0;
    v123 = &v122;
    v124 = 0x4010000000;
    v125 = "";
    v126 = 0u;
    v127 = 0u;
    [(EKDayOccurrenceView *)self->_draggingView frame];
    *&v126 = v28;
    *(&v126 + 1) = v29;
    *&v127 = v30;
    *(&v127 + 1) = v31;
    v32 = v7 / 20.0;
    v33 = __sincos_stret(v27);
    v34 = v123;
    v35 = v123[5];
    v36 = -1.0;
    if (v4 > 0.0)
    {
      v36 = 1.0;
    }

    v123[4] = v123[4] + v32 * v33.__cosval;
    v34[5] = v35 + v33.__sinval * v32 * v36;
    v37 = MEMORY[0x1E69930C8];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained eventGestureController:self dateAtPoint:{self->_firstTouchPoint.x, self->_firstTouchPoint.y}];
    v40 = v39;
    v41 = [v11 eventStore];
    v42 = [v41 timeZone];
    v43 = [v37 calendarDateWithAbsoluteTime:v42 timeZone:v40];

    v44 = [v18 calendarDateForDay];
    v45 = [v43 calendarDateForDay];
    v46 = [v44 isEqual:v45];

    v47 = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v45) = objc_opt_respondsToSelector();

    if (v45)
    {
      v48 = objc_loadWeakRetained(&self->_delegate);
      v49 = [v48 eventGestureController:self shouldFadeOccurrenceAfterFling:v11];
    }

    else if (v46)
    {
      if ([v11 isNew])
      {
        v49 = !self->_forcedStart;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 1;
    }

    v56 = self->_dragSnappingFeedback;
    dragSnappingFeedback = self->_dragSnappingFeedback;
    self->_dragSnappingFeedback = 0;

    if (v49)
    {
      [(EKDayOccurrenceView *)self->_draggingView setDrawsResizeHandles:0];
      v58 = MEMORY[0x1E69DD250];
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_2;
      v121[3] = &unk_1E8441178;
      v121[4] = self;
      v121[5] = &v122;
      v119[0] = MEMORY[0x1E69E9820];
      v119[1] = 3221225472;
      v119[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_3;
      v119[3] = &unk_1E8440658;
      v119[4] = self;
      v120 = v56;
      [v58 animateWithDuration:0x20000 delay:v121 options:v119 animations:0.16 completion:0.0];
      v59 = &v120;
    }

    else
    {
      v60 = v123;
      v61 = v123[4];
      v100 = v123[5];
      v62 = sqrt((v100 - v26) * (v100 - v26) + (v61 - v24) * (v61 - v24));
      v63 = acos((v61 - v24) / v62);
      v102 = *(v60 + 6);
      v101 = *(v60 + 7);
      v64 = __sincos_stret(v63);
      if (v100 - v26 <= 0.0)
      {
        v65 = -1.0;
      }

      else
      {
        v65 = 1.0;
      }

      if (![(EKEvent *)self->_event isAllDay])
      {
        touchOffsetDays = self->_touchOffsetDays;
        if (touchOffsetDays >= 1 && touchOffsetDays + 1 == [v11 daySpan])
        {
          v67 = MEMORY[0x1E69930C8];
          v68 = [(EKEvent *)self->_event endDateUnadjustedForLegacyClients];
          v69 = [(EKEvent *)self->_event timeZone];
          v70 = [v67 calendarDateWithDate:v68 timeZone:v69];

          [v70 absoluteTime];
          v72 = v71;
          v73 = [v70 calendarDateForDay];
          [v73 absoluteTime];
          v22 = v72 - v74;
        }
      }

      -[EKEventGestureController _computeHeightForOccurrenceViewOfDuration:event:allDay:](self, "_computeHeightForOccurrenceViewOfDuration:event:allDay:", v11, [v11 isAllDay], v22);
      v76 = v75;
      v77 = v123;
      v78 = v123[5] + v62 * -0.2 * v64.__sinval * v65;
      v123[4] = v123[4] + v62 * -0.2 * v64.__cosval;
      v77[5] = v78;
      v79 = objc_loadWeakRetained(&self->_delegate);
      v80 = objc_opt_respondsToSelector();
      v81 = v62 * -1.08;
      v99 = v61 + v81 * v64.__cosval;

      if ((v80 & 1) != 0 && (v82 = objc_loadWeakRetained(&self->_delegate), [v82 pageChangeMarginsForEventGestureController:self], v84 = v83, v86 = v85, v82, fabs(v84) < 2.22044605e-16))
      {
        v88 = v101;
        v87 = v102;
        v89 = v100;
        v90 = v99;
        if (fabs(v86) < 2.22044605e-16)
        {
          v123[4] = v24;
          v90 = v24;
        }
      }

      else
      {
        v88 = v101;
        v87 = v102;
        v89 = v100;
        v90 = v99;
      }

      v91 = v89 + v81 * v64.__sinval * v65;
      if (v9)
      {
        *&v92 = v87;
        *(&v92 + 1) = v88;
        v88 = v76;
        v93 = *(MEMORY[0x1E695F058] + 16);
        v76 = *(MEMORY[0x1E695F058] + 24);
        *&v95 = v90;
        v90 = v24;
        v24 = *MEMORY[0x1E695F058];
        v94 = *(MEMORY[0x1E695F058] + 8);
        *(&v95 + 1) = v89 + v81 * v64.__sinval * v65;
        v96 = 0x3FBEB851EB851EB8;
        v97 = 0.192;
      }

      else
      {
        v95 = *(v123 + 2);
        v92 = *(v123 + 3);
        v96 = 0x3FC89374BC6A7EFALL;
        v97 = 0.16;
        v94 = v26;
        v93 = v87;
        v26 = v91;
      }

      v98 = MEMORY[0x1E69DD250];
      v116[0] = MEMORY[0x1E69E9820];
      v116[1] = 3221225472;
      v116[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_4;
      v116[3] = &unk_1E8441260;
      v116[4] = self;
      v117 = v95;
      v118 = v92;
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v103[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_5;
      v103[3] = &unk_1E8442D60;
      v103[4] = self;
      v106 = v96;
      v107 = v90;
      v108 = v26;
      v109 = v87;
      v110 = v88;
      v115 = v9;
      v104 = v11;
      v111 = v24;
      v112 = v94;
      v113 = v93;
      v114 = v76;
      v105 = v56;
      [v98 animateWithDuration:0x20000 delay:v116 options:v103 animations:v97 completion:0.0];
      v59 = &v104;
    }

    _Block_object_dispose(&v122, 8);
  }

  else
  {
    [(EKDayOccurrenceView *)self->_draggingView frame];
    v51 = v50;
    -[EKEventGestureController _computeHeightForOccurrenceViewOfDuration:event:allDay:](self, "_computeHeightForOccurrenceViewOfDuration:event:allDay:", v11, [v11 isAllDay], v22);
    v53 = v52;
    draggingView = self->_draggingView;
    v55 = [v11 isAllDay];
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke;
    v128[3] = &unk_1E843EC60;
    v128[4] = self;
    [(EKDayOccurrenceView *)draggingView animateToFrame:v55 isAllDay:0 beginFromCurrentState:v128 whenFinished:v24, v26, v51, v53];
  }

  return 1;
}

uint64_t __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  v2 = *(*(a1 + 32) + 56);

  return [v2 setAlpha:0.0];
}

uint64_t __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _cancel];
  [*(a1 + 40) draggedObjectLanded];
  v2 = *(a1 + 40);

  return [v2 userInteractionEnded];
}

void __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v3 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v4 = *(a1 + 80);
  v14 = *(a1 + 64);
  v12[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_6;
  v12[3] = &unk_1E8441260;
  v13 = *(a1 + 32);
  v15 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_7;
  v6[3] = &unk_1E8442D38;
  v11 = *(a1 + 128);
  v6[4] = v13;
  v7 = *(a1 + 40);
  v5 = *(a1 + 112);
  v9 = *(a1 + 96);
  v10 = v5;
  v8 = *(a1 + 48);
  [v2 animateWithDuration:0 delay:v12 options:v6 animations:v3 completion:0.0];
}

void __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    if (*(v3 + 202) != 1 || !*(v3 + 176))
    {
      [*(v3 + 56) setDrawsResizeHandles:1];
      v3 = *(a1 + 32);
    }

    [v3 _cancel];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((v3 + 344));
    [WeakRetained eventGestureController:*(a1 + 32) adjustDraggingView:*(*(a1 + 32) + 56) forAllDay:{objc_msgSend(*(a1 + 40), "isAllDay")}];

    v5 = *(*(a1 + 32) + 56);
    v6 = [*(a1 + 40) isAllDay];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_8;
    v7[3] = &unk_1E843EFB8;
    v7[4] = *(a1 + 32);
    v8 = *(a1 + 48);
    [v5 animateToFrame:v6 isAllDay:0 beginFromCurrentState:v7 whenFinished:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  }
}

uint64_t __62__EKEventGestureController__flingOrCancelDraggingViewIfNeeded__block_invoke_8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 202) != 1 || !*(v2 + 176))
  {
    [*(v2 + 56) setDrawsResizeHandles:1];
    v2 = *(a1 + 32);
  }

  [v2 _cancel];
  [*(a1 + 40) draggedObjectLanded];
  v3 = *(a1 + 40);

  return [v3 userInteractionEnded];
}

- (double)_allDayBottomPadding
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(WeakRetained);

  result = 3.0;
  if (IsRegularInViewHierarchy)
  {
    return 4.0;
  }

  return result;
}

- (double)_alignedYOriginForAllDayOccurrence:(id)a3 atPoint:(CGPoint)a4 floorAtAllDayRegionBottom:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained eventGestureController:self yPositionPerhapsMatchingAllDayOccurrence:v9 atPoint:{x, y}];
  v12 = v11;

  if (v5)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 timedRegionOriginForEventGestureController:self];
    v15 = v14;

    [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:v9 event:1 allDay:3600.0];
    v17 = v16;
    v18 = v12 + v16;
    [(EKEventGestureController *)self _allDayBottomPadding];
    if (v18 + v19 >= v15)
    {
      [(EKEventGestureController *)self _allDayBottomPadding];
      v12 = v15 - v17 - v20;
    }
  }

  return v12;
}

- (double)_capOccurrenceViewYOrigin:(double)a3 ignoreTopInsets:(BOOL)a4
{
  if (!a4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 trackingAreaMinimumYPosition];
      v10 = v9;

      if (v10 > a3)
      {
        a3 = v10;
      }
    }
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = [v11 touchTrackingViewForEventGestureController:self];

  [(EKEventGestureController *)self _minimumDuration];
  [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:0 event:0 allDay:?];
  v14 = v13;
  [v12 frame];
  v16 = round(v15 - v14);
  if (a3 >= v16)
  {
    a3 = v16;
  }

  return a3;
}

- (void)_updateHorizontalDragLockForPoint:(CGPoint)a3
{
  y = self->_firstTouchPoint.y;
  if (vabdd_f64(a3.y, y) <= 20.0)
  {
    if (!self->_dragLockDisabled)
    {
      self->_horizontalDragLocked = atan(fabs((a3.y - y) / (a3.x - self->_firstTouchPoint.x))) < 0.174532925;
    }
  }

  else
  {
    *&self->_horizontalDragLocked = 256;
  }
}

- (double)_computeWidthForOccurrenceView
{
  if ([(EKEvent *)self->_event isAllDay]&& ![(EKEventGestureController *)self splitMultiDays])
  {
    v3 = [(EKEvent *)self->_event daySpan];
  }

  else
  {
    v3 = 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained eventGestureController:self widthForOccurrenceViewOfDays:v3];
  v6 = v5;

  [(EKDayOccurrenceView *)self->_draggingView margin];
  v8 = v6 - v7;
  [(EKDayOccurrenceView *)self->_draggingView margin];
  return v8 - v9;
}

- (double)_computeHeightForOccurrenceViewOfDuration:(double)a3 event:(id)a4 allDay:(BOOL)a5
{
  v5 = a5;
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = v8;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [WeakRetained eventGestureController:self occurrenceViewForOccurrence:v9 occurrenceDate:0];

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 eventGestureController:self heightForAllDayOccurrenceView:v11];
    v14 = v13;
  }

  else
  {
    if (![v8 isIntegrationEvent])
    {
      v17 = objc_loadWeakRetained(&self->_delegate);
      [v17 eventGestureController:self heightForOccurrenceViewOfDuration:a3];
      v19 = v18;

      [(EKDayOccurrenceView *)self->_draggingView margin];
      v21 = v19 - v20;
      [(EKDayOccurrenceView *)self->_draggingView margin];
      v14 = v21 - v22;
      goto LABEL_7;
    }

    v24[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v15 = objc_loadWeakRetained(&self->_targetView);
    [EKDayOccurrenceView enoughHeightForOneLineForEvents:v11 usingSmallText:0 sizeClass:EKUIWidthSizeClassForViewHierarchy(v15)];
    v14 = v16;
  }

LABEL_7:
  return v14;
}

- (double)defaultDurationForEvent:(id)a3
{
  v3 = [a3 allowsNonzeroDuration];
  result = 3600.0;
  if (!v3)
  {
    return 0.0;
  }

  return result;
}

- (CGPoint)_computeOriginAtTouchPoint:(CGPoint)a3 forDate:(double)a4 isAllDay:(BOOL)a5 allowXOffset:(BOOL)a6 allowFloorAtRegionBottom:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained occurrenceViewSuperviewForEventGestureController:self];

  v16 = objc_loadWeakRetained(&self->_delegate);
  v17 = [v16 touchTrackingViewForEventGestureController:self];

  v18 = objc_loadWeakRetained(&self->_delegate);
  v19 = 1;
  [v18 eventGestureController:self widthForOccurrenceViewOfDays:1];
  v21 = v20;

  v22 = objc_loadWeakRetained(&self->_delegate);
  [v22 eventGestureController:self pointAtDate:v9 isAllDay:a4];
  v25 = CalRoundPointToScreenScale(v23, v24);
  v27 = v26;

  v28 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v29 = objc_loadWeakRetained(&self->_delegate);
    v30 = [v29 moreThanOneDayVisibleForEventGestureController:self];

    v19 = v30 ^ 1;
  }

  v31 = [(EKDayOccurrenceView *)self->_draggingView occurrence];
  if (v9)
  {
    [(EKEventGestureController *)self _alignedYOriginForAllDayOccurrence:self->_event atPoint:v7 floorAtAllDayRegionBottom:x, y];
    v27 = v32;
    if (v8 && !(v19 & 1 | (([v31 isAllDay] & 1) == 0)))
    {
      touchOffsetDays = self->_touchOffsetDays;
    }

    else
    {
      v33 = self->_touchOffsetDays;
      if ((v33 < 1) | v19 & 1)
      {
        goto LABEL_20;
      }

      touchOffsetDays = v33;
    }

    v47 = v21 * touchOffsetDays;
    IsLeftToRight = CalTimeDirectionIsLeftToRight();
    v49 = 1.0;
    if (IsLeftToRight)
    {
      v49 = -1.0;
    }

    v25 = v25 + v47 * v49;
  }

  else
  {
    [(EKEventGestureController *)self _updateHorizontalDragLockForPoint:self->_latestTouchPoint.x, self->_latestTouchPoint.y];
    if (self->_horizontalDragLocked && !self->_dragLockDisabled)
    {
      v27 = self->_firstTouchPoint.y - self->_touchOffset.y;
    }

    if (v7)
    {
      [(EKEventGestureController *)self _capOccurrenceViewYOrigin:1 ignoreTopInsets:v27];
      v27 = v35;
    }

    if (self->_touchOffsetDays >= 1 && ([v31 isAllDay] & 1) == 0)
    {
      v36 = objc_loadWeakRetained(&self->_delegate);
      [v36 eventGestureController:self dateAtPoint:{x, y}];
      v38 = v37;

      v39 = MEMORY[0x1E69930C8];
      v40 = [(EKEvent *)self->_event eventStore];
      v41 = [v40 timeZone];
      v42 = [v39 calendarDateWithAbsoluteTime:v41 timeZone:v38];
      v43 = [v42 calendarDateForDay];

      v44 = objc_loadWeakRetained(&self->_delegate);
      [v43 absoluteTime];
      [v44 eventGestureController:self pointAtDate:0 isAllDay:?];
      v25 = CalRoundPointToScreenScale(v45, v46);
    }
  }

LABEL_20:
  if ([(EKEventGestureController *)self _isPointInCancelRegion:x, y]&& self->_currentDragType == 1)
  {
    if (self->_draggingView && [(UILongPressGestureRecognizer *)self->_draggingGestureRecognizer state])
    {
      v50 = self->_touchOffset.y;
      v51 = objc_loadWeakRetained(&self->_delegate);
      v52 = [v51 eventGestureController:self isAllDayAtPoint:-[EKDayOccurrenceView isAllDay](self->_draggingView requireInsistence:{"isAllDay") ^ 1, self->_firstTouchPoint.x, self->_firstTouchPoint.y}];

      if (v52 != v9)
      {
        [(EKEvent *)self->_event duration];
        v54 = fmin(v53, 86400.0);
        if (![(EKEvent *)self->_event isAllDay])
        {
          v55 = self->_touchOffsetDays;
          if (v55 >= 1 && v55 + 1 == [(EKEvent *)self->_event daySpan])
          {
            v56 = MEMORY[0x1E69930C8];
            v57 = [(EKEvent *)self->_event endDateUnadjustedForLegacyClients];
            v58 = [(EKEvent *)self->_event timeZone];
            v59 = [v56 calendarDateWithDate:v57 timeZone:v58];

            [v59 absoluteTime];
            v61 = v60;
            v62 = [v59 calendarDateForDay];
            [v62 absoluteTime];
            v54 = v61 - v63;
          }
        }

        [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:self->_event event:v52 allDay:fmin(v54, 86400.0)];
        v65 = v64;
        if (v52)
        {
          [(EKEventGestureController *)self defaultDurationForEvent:self->_event];
        }

        else
        {
          [(EKEvent *)self->_event duration];
        }

        [(EKEventGestureController *)self _computeHeightForOccurrenceViewOfDuration:self->_event event:v9 allDay:?];
        v50 = v50 * (v67 / v65);
      }

      v27 = y - v50;
    }

    v66 = 1;
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v66 = 0;
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  v68 = objc_loadWeakRetained(&self->_delegate);
  v69 = objc_opt_respondsToSelector();

  v70 = (v66 & v69) == 1 && [(EKEventGestureController *)self usesXDragOffsetInCancelRegion];
  if (((v69 ^ 1 | v70) & 1) == 0)
  {
    v79 = objc_loadWeakRetained(&self->_delegate);
    [v79 computeXDragOffsetForEventGestureController:self currentX:x startX:self->_firstTouchPoint.x];
    v81 = v80;
    v82 = CalTimeDirectionIsLeftToRight();
    v83 = -1.0;
    if (v82)
    {
      v83 = 1.0;
    }

    v25 = v25 + v81 * v83;

    if (!v9)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v25 = x - self->_touchOffset.x;
LABEL_42:
  if (!v9)
  {
LABEL_43:
    [(EKDayOccurrenceView *)self->_draggingView margin];
    v25 = v25 + v71;
    [(EKDayOccurrenceView *)self->_draggingView margin];
    v27 = v27 + v72;
  }

LABEL_44:
  [v17 convertPoint:v15 toView:{v25, v27}];
  v74 = v73;
  v76 = v75;

  v77 = v74;
  v78 = v76;
  result.y = v78;
  result.x = v77;
  return result;
}

- (double)_cancelRegionMargin
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(WeakRetained);

  result = 5.0;
  if (IsRegularInViewHierarchy)
  {
    return 4.0;
  }

  return result;
}

- (BOOL)_isPointInCancelRegion:(CGPoint)a3
{
  y = a3.y;
  v4 = self;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained touchTrackingViewForEventGestureController:v4];

  [v6 frame];
  v8 = v7;
  [(EKEventGestureController *)v4 _cancelRegionMargin];
  LOBYTE(v4) = y > v9 + v8;

  return v4;
}

- (double)_Debug_HoursSinceStartOfDay:(double)a3
{
  v4 = MEMORY[0x1E69930C8];
  v5 = [(EKEvent *)self->_event eventStore];
  v6 = [v5 timeZone];
  v7 = [v4 calendarDateWithAbsoluteTime:v6 timeZone:a3];
  v8 = [v7 calendarDateForDay];
  [v8 absoluteTime];
  v10 = (a3 - v9) / 3600.0;

  return v10;
}

- (void)_updateSnappingTypeForCurrentDrag
{
  self->_snappingTypeForCurrentDrag = 0;
  v3 = [MEMORY[0x1E6992FB0] shared];
  [v3 defaultEventDuration];
  v5 = v4;

  if (fabs(v5 + -3300.0) >= 2.22044605e-16 && fabs(v5 + -3000.0) >= 2.22044605e-16)
  {
    if (fabs(v5 + -1500.0) >= 2.22044605e-16)
    {
      return;
    }

    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if (self->_currentDragType == 2)
  {
    v6 = 3;
  }

  self->_snappingTypeForCurrentDrag = v6;
}

- (EKEventGestureControllerUntimedDelegate)untimedDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_untimedDelegate);

  return WeakRetained;
}

- (EKEventGestureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)firstTouchPoint
{
  x = self->_firstTouchPoint.x;
  y = self->_firstTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)latestTouchPoint
{
  x = self->_latestTouchPoint.x;
  y = self->_latestTouchPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)touchOffset
{
  x = self->_touchOffset.x;
  y = self->_touchOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

void __132__EKEventGestureController_forceStartWithOccurrence_occurrenceDate_shouldUpdateViewSource_shouldUpdateOrigin_shouldPresentEditMenu___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"CalendarEventGestures.m" lineNumber:582 description:@"Attempted to force start a drag with a nil occurrence"];
}

- (void)_setUpAfterForcedStartFromPoint:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"CalendarEventGestures.m" lineNumber:2820 description:{@"Gesture controller tried to set up after a forced start, but with no view and/or event to drag"}];

  *a4 = *a3;
}

@end