@interface EKEventSuggestedLocationDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_promptForSpanWithSourceView:(id)view completionBlock:(id)block;
- (void)_saveEventWithSpan:(int64_t)span;
- (void)didTapAddSuggestedLocationCell:(id)cell disambiguatedLocation:(id)location;
- (void)didTapDismissSuggestedLocationCell:(id)cell;
- (void)reset;
@end

@implementation EKEventSuggestedLocationDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  if (MEMORY[0x1D38B98D0](self, a2, event, calendar, preview))
  {
    preferredLocation = [(EKEvent *)self->super._event preferredLocation];
    if ([preferredLocation isStructured] && objc_msgSend(preferredLocation, "isPrediction"))
    {
      delegate = [(EKEventDetailItem *)self delegate];
      v8 = [delegate minimalMode] ^ 1;
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKEventDetailSuggestedLocationCell alloc] initWithInlineStyle:0];
    v6 = self->_cell;
    self->_cell = v5;

    [(EKEventDetailSuggestedLocationCell *)self->_cell setEvent:self->super._event];
    [(EKEventDetailSuggestedLocationCell *)self->_cell setDelegate:self];
    [(EKEventDetailSuggestedLocationCell *)self->_cell setAccessibilityIdentifier:@"event-details-suggested-location-cell"];
    cell = self->_cell;
  }

  return cell;
}

- (void)_promptForSpanWithSourceView:(id)view completionBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  if (([(EKEvent *)self->super._event isOrWasPartOfRecurringSeries]& 1) != 0)
  {
    window = [(EKEventDetailSuggestedLocationCell *)self->_cell window];
    rootViewController = [window rootViewController];

    presentedViewController = [rootViewController presentedViewController];

    if (presentedViewController)
    {
      do
      {
        presentedViewController2 = [rootViewController presentedViewController];

        v11PresentedViewController = [presentedViewController2 presentedViewController];

        rootViewController = presentedViewController2;
      }

      while (v11PresentedViewController);
    }

    else
    {
      presentedViewController2 = rootViewController;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__11;
    v40 = __Block_byref_object_dispose__11;
    v41 = 0;
    [viewCopy bannerPopoverSourceRect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    bannerView = [viewCopy bannerView];
    [viewCopy convertRect:bannerView fromView:{v14, v16, v18, v20}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    event = self->super._event;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __83__EKEventSuggestedLocationDetailItem__promptForSpanWithSourceView_completionBlock___block_invoke;
    v33[3] = &unk_1E8441210;
    v34 = blockCopy;
    v35 = &v36;
    v31 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:presentedViewController2 sourceView:viewCopy sourceRect:event forEvent:v33 withCompletionHandler:v23, v25, v27, v29];
    v32 = v37[5];
    v37[5] = v31;

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0);
  }
}

void __83__EKEventSuggestedLocationDetailItem__promptForSpanWithSourceView_completionBlock___block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 <= 2)
  {
    (*(*(a1 + 32) + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)didTapAddSuggestedLocationCell:(id)cell disambiguatedLocation:(id)location
{
  locationCopy = location;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__EKEventSuggestedLocationDetailItem_didTapAddSuggestedLocationCell_disambiguatedLocation___block_invoke;
  v8[3] = &unk_1E8441238;
  v8[4] = self;
  v9 = locationCopy;
  v7 = locationCopy;
  [(EKEventSuggestedLocationDetailItem *)self _promptForSpanWithSourceView:cell completionBlock:v8];
}

void __91__EKEventSuggestedLocationDetailItem_didTapAddSuggestedLocationCell_disambiguatedLocation___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [*(*(a1 + 32) + 16) locationsWithoutPrediction];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:*(*(&v18 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 40) title];
  v11 = [*(a1 + 40) address];
  v12 = [v10 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [*(a1 + 40) title];
    [v4 addObject:v13];
  }

  v14 = [MEMORY[0x1E6966A08] _locationStringForLocations:v4];
  [*(a1 + 40) setTitle:v14];

  *(*(a1 + 32) + 88) = 1;
  v15 = MEMORY[0x1E6966B10];
  v16 = [*(*(a1 + 32) + 16) preferredLocation];
  v17 = [v16 predictedLOI];
  [v15 userInteractionWithPredictedLocationOfInterest:v17 interaction:7];

  [*(*(a1 + 32) + 16) confirmPredictedLocation:*(a1 + 40)];
  [*(a1 + 32) _saveEventWithSpan:a2];
}

- (void)didTapDismissSuggestedLocationCell:(id)cell
{
  self->_visibilityChanged = 1;
  v4 = MEMORY[0x1E6966B10];
  preferredLocation = [(EKEvent *)self->super._event preferredLocation];
  predictedLOI = [preferredLocation predictedLOI];
  [v4 userInteractionWithPredictedLocationOfInterest:predictedLOI interaction:8];

  [(EKEvent *)self->super._event rejectPredictedLocation];

  [(EKEventSuggestedLocationDetailItem *)self _saveEventWithSpan:4];
}

- (void)_saveEventWithSpan:(int64_t)span
{
  v18 = *MEMORY[0x1E69E9840];
  eKUI_editor = [(UIResponder *)self->_cell EKUI_editor];
  event = self->super._event;
  v13 = 0;
  v7 = [eKUI_editor saveEvent:event span:span error:&v13];
  v8 = v13;
  if ((v7 & 1) == 0)
  {
    v9 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = self->super._event;
      v11 = v9;
      title = [(EKEvent *)v10 title];
      *buf = 138412546;
      v15 = title;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Error saving event %@ from the buttons detail item: %@", buf, 0x16u);
    }
  }

  [(EKEventDetailItem *)self notifySubitemDidSave:0];
}

@end