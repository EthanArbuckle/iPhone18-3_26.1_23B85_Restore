@interface EKUIAvailabilityRowView
- (CGRect)frameForSpanView:(id)view;
- (EKUIAvailabilityRowView)initWithParticipant:(id)participant;
- (NSArray)spans;
- (double)convertDateIntoOffset:(id)offset;
- (void)addToSpans:(id)spans;
- (void)completedLoad;
- (void)setFrame:(CGRect)frame;
- (void)startLoadForDate:(id)date;
- (void)updateSpanViews;
@end

@implementation EKUIAvailabilityRowView

- (EKUIAvailabilityRowView)initWithParticipant:(id)participant
{
  participantCopy = participant;
  v14.receiver = self;
  v14.super_class = EKUIAvailabilityRowView;
  v6 = [(EKUIAvailabilityRowView *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participant, participant);
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(EKUIAvailabilityRowView *)v7 setBackgroundColor:clearColor];

    v9 = objc_opt_new();
    spanViews = v7->_spanViews;
    v7->_spanViews = v9;

    v11 = objc_opt_new();
    spans = v7->_spans;
    v7->_spans = v11;
  }

  return v7;
}

- (void)startLoadForDate:(id)date
{
  v17 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  objc_storeStrong(&self->_startOfDay, date);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_spanViews;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableArray *)selfCopy->_spans removeAllObjects];
  spans = selfCopy->_spans;
  selfCopy->_spans = 0;

  objc_sync_exit(selfCopy);
}

- (void)completedLoad
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_spans)
  {
    v3 = [(NSDate *)selfCopy->_startOfDay dateByAddingTimeInterval:86399.0];
    v4 = [objc_alloc(MEMORY[0x1E6966980]) initWithStartDate:selfCopy->_startOfDay endDate:v3 type:0];
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
    spans = selfCopy->_spans;
    selfCopy->_spans = v5;
  }

  objc_sync_exit(selfCopy);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EKUIAvailabilityRowView_completedLoad__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = selfCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (NSArray)spans
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:selfCopy->_spans];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addToSpans:(id)spans
{
  spansCopy = spans;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = spansCopy;
  spans = selfCopy->_spans;
  if (!spans)
  {
    v7 = objc_opt_new();
    v8 = selfCopy->_spans;
    selfCopy->_spans = v7;

    spans = selfCopy->_spans;
    v5 = spansCopy;
  }

  [(NSMutableArray *)spans addObjectsFromArray:v5];
  [(NSMutableArray *)selfCopy->_spans sortUsingComparator:&__block_literal_global_18];
  objc_sync_exit(selfCopy);
}

uint64_t __38__EKUIAvailabilityRowView_addToSpans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)updateSpanViews
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = self->_spanViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v41 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v5);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [(EKUIAvailabilityRowView *)self spans];
  v8 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v36 = *v38;
    do
    {
      for (j = 0; j != v9; ++j)
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * j);
        if ([v11 type] == 1 || objc_msgSend(v11, "type") == 5)
        {
          v12 = objc_opt_new();
          startDate = [v11 startDate];
          [v12 setStartDate:startDate];

          endDate = [v11 endDate];
          [v12 setEndDate:endDate];

          [v12 setInset:1];
          [(EKUIAvailabilityRowView *)self frameForSpanView:v12];
          [v12 setFrame:?];
          systemGray2Color = [MEMORY[0x1E69DC888] systemGray2Color];
          v16 = [systemGray2Color colorWithAlphaComponent:0.3];
          cGColor = [v16 CGColor];
          layer = [v12 layer];
          [layer setBackgroundColor:cGColor];

          systemGray2Color2 = [MEMORY[0x1E69DC888] systemGray2Color];
          cGColor2 = [systemGray2Color2 CGColor];
          layer2 = [v12 layer];
          [layer2 setBorderColor:cGColor2];

          layer3 = [v12 layer];
          [layer3 setBorderWidth:1.5];

          +[EKUIAvailabilityRowView cornerRadius];
          v24 = v23;
          layer4 = [v12 layer];
          [layer4 setCornerRadius:v24];

          layer5 = [v12 layer];
          [layer5 setMasksToBounds:1];

          [(NSMutableArray *)self->_spanViews addObject:v12];
          [(EKUIAvailabilityRowView *)self addSubview:v12];
        }

        if ([MEMORY[0x1E6966988] showTypeAsUnavailable:{objc_msgSend(v11, "type")}])
        {
          v27 = objc_opt_new();
          startDate2 = [v11 startDate];
          [v27 setStartDate:startDate2];

          endDate2 = [v11 endDate];
          [v27 setEndDate:endDate2];

          [(EKUIAvailabilityRowView *)self frameForSpanView:v27];
          [v27 setFrame:?];
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          systemGray2Color3 = [MEMORY[0x1E69DC888] systemGray2Color];
          v32 = [systemGray2Color3 colorWithAlphaComponent:0.3];
          v33 = CUIKCreateStripedUIImage();

          v34 = [MEMORY[0x1E69DC888] colorWithPatternImage:v33];
          [v27 setBackgroundColor:v34];

          [(NSMutableArray *)self->_spanViews addObject:v27];
          [(EKUIAvailabilityRowView *)self addSubview:v27];
          [(EKUIAvailabilityRowView *)self sendSubviewToBack:v27];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v9);
  }

  [(EKUIAvailabilityRowView *)self setNeedsDisplay];
}

- (CGRect)frameForSpanView:(id)view
{
  viewCopy = view;
  v5 = 0.0;
  if ([viewCopy inset])
  {
    +[EKUIAvailabilityRowView padInset];
    v5 = v6;
  }

  startDate = [viewCopy startDate];
  [(EKUIAvailabilityRowView *)self convertDateIntoOffset:startDate];
  v9 = v8;

  endDate = [viewCopy endDate];

  [(EKUIAvailabilityRowView *)self convertDateIntoOffset:endDate];
  v12 = v11;

  if (CalTimeDirectionIsLeftToRight())
  {
    v13 = v12 - v9;
  }

  else
  {
    v13 = v9 - v12;
  }

  if (!CalTimeDirectionIsLeftToRight())
  {
    v9 = v12;
  }

  [(EKUIAvailabilityRowView *)self frame];
  v15 = v14 + v5 * -2.0;
  v16 = v9;
  v17 = v5;
  v18 = v13;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = EKUIAvailabilityRowView;
  [(EKUIAvailabilityRowView *)&v14 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_spanViews;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [(EKUIAvailabilityRowView *)self frameForSpanView:v9, v10];
        [v9 setFrame:?];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (double)convertDateIntoOffset:(id)offset
{
  [offset timeIntervalSinceDate:self->_startOfDay];
  v5 = v4;
  [(EKUIAvailabilityRowView *)self frame];
  v7 = v6;
  v8 = v5 / 86400.0 * v6;
  IsLeftToRight = CalTimeDirectionIsLeftToRight();
  result = v7 - v8;
  if (IsLeftToRight)
  {
    return v8;
  }

  return result;
}

@end