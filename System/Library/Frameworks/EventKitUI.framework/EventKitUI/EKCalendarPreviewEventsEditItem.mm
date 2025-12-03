@interface EKCalendarPreviewEventsEditItem
- (EKCalendarPreviewEventsEditItem)initWithPreviewSummary:(id)summary;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)chooseEventsForPreview:(id)preview count:(unint64_t)count;
- (id)headerTitle;
- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem;
@end

@implementation EKCalendarPreviewEventsEditItem

- (EKCalendarPreviewEventsEditItem)initWithPreviewSummary:(id)summary
{
  summaryCopy = summary;
  v13.receiver = self;
  v13.super_class = EKCalendarPreviewEventsEditItem;
  v6 = [(EKCalendarPreviewEventsEditItem *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewSummary, summary);
    v8 = [EKICSPreviewController alloc];
    data = [(DAESubscribedCalendarSummary *)v7->_previewSummary data];
    v10 = [(EKICSPreviewController *)v8 initWithData:data eventStore:0];
    previewController = v7->_previewController;
    v7->_previewController = v10;

    [(EKICSPreviewController *)v7->_previewController setShowListViewForOneEvent:1];
  }

  return v7;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  v49[4] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69DD028]);
  [v4 setAccessibilityIdentifier:@"calendar-preview-cell"];
  model = [(EKICSPreviewController *)self->_previewController model];
  allEvents = [model allEvents];

  v7 = [allEvents count];
  if (v7)
  {
    v45 = v7;
    v46 = allEvents;
    v44 = [(EKCalendarPreviewEventsEditItem *)self chooseEventsForPreview:allEvents count:2];
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
    contentView = [v4 contentView];
    [contentView addSubview:v10];

    v36 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v10 leadingAnchor];
    contentView2 = [v4 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v49[0] = v40;
    trailingAnchor = [v10 trailingAnchor];
    contentView3 = [v4 contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v49[1] = v35;
    topAnchor = [v10 topAnchor];
    contentView4 = [v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v49[2] = v15;
    bottomAnchor = [v10 bottomAnchor];
    v47 = v4;
    contentView5 = [v4 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v49[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v36 activateConstraints:v20];

    v21 = v45 - [v44 count];
    if (v21 >= 1)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v22 setTextColor:secondaryLabelColor];

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

    allEvents = v46;
  }

  else
  {
    defaultContentConfiguration = [v4 defaultContentConfiguration];
    v30 = EventKitUIBundle();
    v31 = [v30 localizedStringForKey:@"No Events" value:&stru_1F4EF6790 table:0];
    [defaultContentConfiguration setText:v31];

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    textProperties = [defaultContentConfiguration textProperties];
    [textProperties setColor:secondaryLabelColor2];

    [v4 setContentConfiguration:defaultContentConfiguration];
  }

  return v4;
}

EKCalendarPreviewEventView *__57__EKCalendarPreviewEventsEditItem_cellForSubitemAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[EKCalendarPreviewEventView alloc] initWithEvent:v3 calendar:*(*(a1 + 32) + 16)];

  return v4;
}

- (id)chooseEventsForPreview:(id)preview count:(unint64_t)count
{
  v28 = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  date = [MEMORY[0x1E695DF00] date];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(previewCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = previewCopy;
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
        v14 = [v13 nextOccurrenceOrDetachmentAfter:date];
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
  v22 = date;
  v15 = date;
  v16 = [v7 indexOfObjectPassingTest:v21];
  v17 = [v7 count];
  v18 = v17;
  if (v17 < count)
  {
    count = v17;
  }

  if (v16 == 0x7FFFFFFFFFFFFFFFLL || [v7 count] - v16 < count)
  {
    v16 = v18 - count;
  }

  v19 = [v7 subarrayWithRange:{v16, count}];

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

- (void)calendarEditor:(id)editor didSelectSubitem:(unint64_t)subitem
{
  v8 = [(EKICSPreviewController *)self->_previewController viewController:editor];
  [v8 setOverrideCalendarColor:{-[EKCalendar CGColor](self->super._calendar, "CGColor")}];
  delegate = [(EKCalendarEditItem *)self delegate];
  owningNavigationController = [delegate owningNavigationController];
  viewController = [(EKICSPreviewController *)self->_previewController viewController];
  [owningNavigationController pushViewController:viewController animated:1];
}

@end