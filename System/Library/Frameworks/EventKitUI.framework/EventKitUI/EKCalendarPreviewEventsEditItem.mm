@interface EKCalendarPreviewEventsEditItem
- (EKCalendarPreviewEventsEditItem)initWithPreviewSummary:(id)a3;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)chooseEventsForPreview:(id)a3 count:(unint64_t)a4;
- (id)headerTitle;
- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4;
@end

@implementation EKCalendarPreviewEventsEditItem

- (EKCalendarPreviewEventsEditItem)initWithPreviewSummary:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = EKCalendarPreviewEventsEditItem;
  v6 = [(EKCalendarPreviewEventsEditItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewSummary, a3);
    v8 = [EKICSPreviewController alloc];
    v9 = [(DAESubscribedCalendarSummary *)v7->_previewSummary data];
    v10 = [(EKICSPreviewController *)v8 initWithData:v9 eventStore:0];
    previewController = v7->_previewController;
    v7->_previewController = v10;

    [(EKICSPreviewController *)v7->_previewController setShowListViewForOneEvent:1];
  }

  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  v49[4] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69DD028]);
  [v4 setAccessibilityIdentifier:@"calendar-preview-cell"];
  v5 = [(EKICSPreviewController *)self->_previewController model];
  v6 = [v5 allEvents];

  v7 = [v6 count];
  if (v7)
  {
    v45 = v7;
    v46 = v6;
    v44 = [(EKCalendarPreviewEventsEditItem *)self chooseEventsForPreview:v6 count:2];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __57__EKCalendarPreviewEventsEditItem_cellForSubitemAtIndex___block_invoke;
    v48[3] = &unk_1E8441C48;
    v48[4] = self;
    v8 = [v44 CalMap:v48];
    previewEventViews = self->_previewEventViews;
    self->_previewEventViews = v8;

    v10 = [objc_alloc(MEMORY[0x1E69DCF90]) initWithArrangedSubviews:self->_previewEventViews];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAxis:1];
    [v10 setDirectionalLayoutMargins:{10.0, 20.0, 10.0, 10.0}];
    [v10 setLayoutMarginsRelativeArrangement:1];
    [v10 setSpacing:6.0];
    v11 = [v4 contentView];
    [v11 addSubview:v10];

    v36 = MEMORY[0x1E696ACD8];
    v42 = [v10 leadingAnchor];
    v43 = [v4 contentView];
    v41 = [v43 leadingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v49[0] = v40;
    v38 = [v10 trailingAnchor];
    v39 = [v4 contentView];
    v37 = [v39 trailingAnchor];
    v35 = [v38 constraintEqualToAnchor:v37];
    v49[1] = v35;
    v12 = [v10 topAnchor];
    v13 = [v4 contentView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    v49[2] = v15;
    v16 = [v10 bottomAnchor];
    v47 = v4;
    v17 = [v4 contentView];
    v18 = [v17 bottomAnchor];
    v19 = [v16 constraintEqualToAnchor:v18];
    v49[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v36 activateConstraints:v20];

    v21 = v45 - [v44 count];
    if (v21 >= 1)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v23 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v22 setTextColor:v23];

      v24 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      [v22 setFont:v24];

      v25 = MEMORY[0x1E696AEC0];
      v26 = EventKitUIBundle();
      v27 = [v26 localizedStringForKey:@"x_more_events_dotdotdot" value:&stru_1F4EF6790 table:0];
      v28 = [v25 localizedStringWithFormat:v27, v21];
      [v22 setText:v28];

      [v22 setAccessibilityIdentifier:@"calendar-preview-more-events-text"];
      [v10 addArrangedSubview:v22];
    }

    v4 = v47;
    [v47 setAccessoryType:1];

    v6 = v46;
  }

  else
  {
    v29 = [v4 defaultContentConfiguration];
    v30 = EventKitUIBundle();
    v31 = [v30 localizedStringForKey:@"No Events" value:&stru_1F4EF6790 table:0];
    [v29 setText:v31];

    v32 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v33 = [v29 textProperties];
    [v33 setColor:v32];

    [v4 setContentConfiguration:v29];
  }

  return v4;
}

EKCalendarPreviewEventView *__57__EKCalendarPreviewEventsEditItem_cellForSubitemAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[EKCalendarPreviewEventView alloc] initWithEvent:v3 calendar:*(*(a1 + 32) + 16)];

  return v4;
}

- (id)chooseEventsForPreview:(id)a3 count:(unint64_t)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = [v13 nextOccurrenceOrDetachmentAfter:v6];
        if (!v14)
        {
          v14 = v13;
        }

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  [v7 sortUsingComparator:&__block_literal_global_47];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__EKCalendarPreviewEventsEditItem_chooseEventsForPreview_count___block_invoke_2;
  v21[3] = &unk_1E8441C90;
  v22 = v6;
  v15 = v6;
  v16 = [v7 indexOfObjectPassingTest:v21];
  v17 = [v7 count];
  v18 = v17;
  if (v17 < a4)
  {
    a4 = v17;
  }

  if (v16 == 0x7FFFFFFFFFFFFFFFLL || [v7 count] - v16 < a4)
  {
    v16 = v18 - a4;
  }

  v19 = [v7 subarrayWithRange:{v16, a4}];

  return v19;
}

uint64_t __64__EKCalendarPreviewEventsEditItem_chooseEventsForPreview_count___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __64__EKCalendarPreviewEventsEditItem_chooseEventsForPreview_count___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 startDate];
  v4 = [v3 CalIsAfterDate:*(a1 + 32)];

  return v4;
}

- (id)headerTitle
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Preview" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)calendarEditor:(id)a3 didSelectSubitem:(unint64_t)a4
{
  v8 = [(EKICSPreviewController *)self->_previewController viewController:a3];
  [v8 setOverrideCalendarColor:{-[EKCalendar CGColor](self->super._calendar, "CGColor")}];
  v5 = [(EKCalendarEditItem *)self delegate];
  v6 = [v5 owningNavigationController];
  v7 = [(EKICSPreviewController *)self->_previewController viewController];
  [v6 pushViewController:v7 animated:1];
}

@end