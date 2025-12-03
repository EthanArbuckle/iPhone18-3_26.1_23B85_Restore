@interface EKEventProposedTimeDetailItem
- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width;
- (id)attendeeForIndex:(unint64_t)index;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index;
- (void)reset;
- (void)setCellPosition:(int)position;
@end

@implementation EKEventProposedTimeDetailItem

- (void)reset
{
  allKeys = [(NSMutableDictionary *)self->_cellForAttendee allKeys];
  v4 = [allKeys count];

  if (v4)
  {
    self->_visibilityChanged = 1;
  }

  cellForAttendee = self->_cellForAttendee;

  [(NSMutableDictionary *)cellForAttendee removeAllObjects];
}

- (BOOL)configureWithEvent:(id)event calendar:(id)calendar preview:(BOOL)preview
{
  v27 = *MEMORY[0x1E69E9840];
  self->_visibilityChanged = 0;
  obj = objc_opt_new();
  organizer = [(EKEvent *)self->super._event organizer];
  if (!organizer || (v7 = organizer, -[EKEvent organizer](self->super._event, "organizer"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isCurrentUser], v8, v7, !v9))
  {
    v19 = 0;
    goto LABEL_17;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  attendees = [(EKEvent *)self->super._event attendees];
  v11 = [attendees countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = *v23;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v23 != v13)
      {
        objc_enumerationMutation(attendees);
      }

      v15 = *(*(&v22 + 1) + 8 * i);
      v16 = [v15 proposedStartDateForEvent:self->super._event];
      if (v16)
      {
        startDate = [(EKEvent *)self->super._event startDate];
        if (([v16 isEqualToDate:startDate] & 1) == 0)
        {
          proposedStartDateStatus = [v15 proposedStartDateStatus];

          if (proposedStartDateStatus == 3)
          {
            goto LABEL_13;
          }

          startDate = [objc_alloc(MEMORY[0x1E6966998]) initWithParticipant:v15 forEvent:self->super._event];
          [obj addObject:startDate];
        }
      }

LABEL_13:
    }

    v12 = [attendees countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v12);
LABEL_15:

  objc_storeStrong(&self->_attendeesWithProposedTimes, obj);
  v19 = [(NSArray *)self->_attendeesWithProposedTimes count]!= 0;
LABEL_17:

  return v19;
}

- (void)setCellPosition:(int)position
{
  v3.receiver = self;
  v3.super_class = EKEventProposedTimeDetailItem;
  [(EKEventDetailItem *)&v3 setCellPosition:*&position];
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width
{
  v5 = [(EKEventProposedTimeDetailItem *)self cellForSubitemAtIndex:index];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  [v5 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v6, v7}];
  v9 = v8;

  return v9;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if (!self->_cellForAttendee)
  {
    v5 = objc_opt_new();
    cellForAttendee = self->_cellForAttendee;
    self->_cellForAttendee = v5;
  }

  v7 = [(EKEventProposedTimeDetailItem *)self attendeeForIndex:index];
  v8 = v7;
  if (v7)
  {
    v9 = self->_cellForAttendee;
    v10 = [v7 URL];
    v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];

    if (!v11)
    {
      v11 = [[EKEventDetailProposedTimeCell alloc] initWithEvent:self->super._event andAttendee:v8];
      [(EKEventDetailProposedTimeCell *)v11 update];
      v12 = self->_cellForAttendee;
      v13 = [v8 URL];
      [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

      self->_visibilityChanged = 1;
    }

    if (index)
    {
      v14 = 0;
    }

    else
    {
      v14 = 3;
    }

    [(EKEventDetailProposedTimeCell *)v11 setShowsTopSeparator:index != 0];
    if ([(NSArray *)self->_attendeesWithProposedTimes count]- 1 == index)
    {
      v15 = v14 | 0xC;
    }

    else
    {
      v15 = v14;
    }

    [(EKEventDetailProposedTimeCell *)v11 setRoundedCorners:v15];
  }

  else
  {
    v16 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "No attendee found for proposed time detail item.  We shouldn't be drawn, but tableview thinks we want to display, returning empty cell", v18, 2u);
    }

    v11 = objc_opt_new();
  }

  return v11;
}

- (id)attendeeForIndex:(unint64_t)index
{
  if ([(EKEventProposedTimeDetailItem *)self numberOfSubitems]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_attendeesWithProposedTimes objectAtIndexedSubscript:index];
  }

  return v5;
}

- (id)detailViewControllerWithFrame:(CGRect)frame forSubitemAtIndex:(unint64_t)index
{
  v6 = [(EKEventProposedTimeDetailItem *)self attendeeForIndex:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = [[EKUIProposedTimeEventViewController alloc] initWithProposedTimeAttendee:v6];
  [(EKUIProposedTimeEventViewController *)v7 setEvent:self->super._event];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__EKEventProposedTimeDetailItem_detailViewControllerWithFrame_forSubitemAtIndex___block_invoke;
  v9[3] = &unk_1E843F690;
  v9[4] = self;
  v9[5] = index;
  [(EKUIProposedTimeEventViewController *)v7 setCompletionBlock:v9];

  return v7;
}

@end