@interface EKUIAvailabilityRowView
- (CGRect)frameForSpanView:(id)a3;
- (EKUIAvailabilityRowView)initWithParticipant:(id)a3;
- (NSArray)spans;
- (double)convertDateIntoOffset:(id)a3;
- (void)addToSpans:(id)a3;
- (void)completedLoad;
- (void)setFrame:(CGRect)a3;
- (void)startLoadForDate:(id)a3;
- (void)updateSpanViews;
@end

@implementation EKUIAvailabilityRowView

- (EKUIAvailabilityRowView)initWithParticipant:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = EKUIAvailabilityRowView;
  v6 = [(EKUIAvailabilityRowView *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_participant, a3);
    v8 = [MEMORY[0x1E69DC888] clearColor];
    [(EKUIAvailabilityRowView *)v7 setBackgroundColor:v8];

    v9 = objc_opt_new();
    spanViews = v7->_spanViews;
    v7->_spanViews = v9;

    v11 = objc_opt_new();
    spans = v7->_spans;
    v7->_spans = v11;
  }

  return v7;
}

- (void)startLoadForDate:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_startOfDay, a3);
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

  v10 = self;
  objc_sync_enter(v10);
  [(NSMutableArray *)v10->_spans removeAllObjects];
  spans = v10->_spans;
  v10->_spans = 0;

  objc_sync_exit(v10);
}

- (void)completedLoad
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_spans)
  {
    v3 = [(NSDate *)v2->_startOfDay dateByAddingTimeInterval:86399.0];
    v4 = [objc_alloc(MEMORY[0x1E6966980]) initWithStartDate:v2->_startOfDay endDate:v3 type:0];
    v5 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
    spans = v2->_spans;
    v2->_spans = v5;
  }

  objc_sync_exit(v2);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__EKUIAvailabilityRowView_completedLoad__block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (NSArray)spans
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x1E695DEC8] arrayWithArray:v2->_spans];
  objc_sync_exit(v2);

  return v3;
}

- (void)addToSpans:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v9;
  spans = v4->_spans;
  if (!spans)
  {
    v7 = objc_opt_new();
    v8 = v4->_spans;
    v4->_spans = v7;

    spans = v4->_spans;
    v5 = v9;
  }

  [(NSMutableArray *)spans addObjectsFromArray:v5];
  [(NSMutableArray *)v4->_spans sortUsingComparator:&__block_literal_global_18];
  objc_sync_exit(v4);
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
          v13 = [v11 startDate];
          [v12 setStartDate:v13];

          v14 = [v11 endDate];
          [v12 setEndDate:v14];

          [v12 setInset:1];
          [(EKUIAvailabilityRowView *)self frameForSpanView:v12];
          [v12 setFrame:?];
          v15 = [MEMORY[0x1E69DC888] systemGray2Color];
          v16 = [v15 colorWithAlphaComponent:0.3];
          v17 = [v16 CGColor];
          v18 = [v12 layer];
          [v18 setBackgroundColor:v17];

          v19 = [MEMORY[0x1E69DC888] systemGray2Color];
          v20 = [v19 CGColor];
          v21 = [v12 layer];
          [v21 setBorderColor:v20];

          v22 = [v12 layer];
          [v22 setBorderWidth:1.5];

          +[EKUIAvailabilityRowView cornerRadius];
          v24 = v23;
          v25 = [v12 layer];
          [v25 setCornerRadius:v24];

          v26 = [v12 layer];
          [v26 setMasksToBounds:1];

          [(NSMutableArray *)self->_spanViews addObject:v12];
          [(EKUIAvailabilityRowView *)self addSubview:v12];
        }

        if ([MEMORY[0x1E6966988] showTypeAsUnavailable:{objc_msgSend(v11, "type")}])
        {
          v27 = objc_opt_new();
          v28 = [v11 startDate];
          [v27 setStartDate:v28];

          v29 = [v11 endDate];
          [v27 setEndDate:v29];

          [(EKUIAvailabilityRowView *)self frameForSpanView:v27];
          [v27 setFrame:?];
          v30 = [MEMORY[0x1E69DC888] clearColor];
          v31 = [MEMORY[0x1E69DC888] systemGray2Color];
          v32 = [v31 colorWithAlphaComponent:0.3];
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

- (CGRect)frameForSpanView:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ([v4 inset])
  {
    +[EKUIAvailabilityRowView padInset];
    v5 = v6;
  }

  v7 = [v4 startDate];
  [(EKUIAvailabilityRowView *)self convertDateIntoOffset:v7];
  v9 = v8;

  v10 = [v4 endDate];

  [(EKUIAvailabilityRowView *)self convertDateIntoOffset:v10];
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

- (void)setFrame:(CGRect)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = EKUIAvailabilityRowView;
  [(EKUIAvailabilityRowView *)&v14 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (double)convertDateIntoOffset:(id)a3
{
  [a3 timeIntervalSinceDate:self->_startOfDay];
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