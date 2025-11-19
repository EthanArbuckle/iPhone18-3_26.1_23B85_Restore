@interface PKSelectionStatisticsSession
- (NSDictionary)selectionActionDictionary;
- (NSDictionary)selectionGestureDictionary;
- (NSString)lastActionTaken;
- (NSString)lastSignificantActionTaken;
- (PKSelectionStatisticsSession)init;
- (int64_t)numberOfTimesSelectionWasClearedInASession;
- (void)logGesture:(int64_t)a3 selectionType:(int64_t)a4 contentType:(int64_t)a5;
- (void)logSelectionAction:(int64_t)a3;
@end

@implementation PKSelectionStatisticsSession

- (PKSelectionStatisticsSession)init
{
  v10.receiver = self;
  v10.super_class = PKSelectionStatisticsSession;
  v2 = [(PKSelectionStatisticsSession *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    startTime = v2->_startTime;
    v2->_startTime = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    selectionActions = v2->_selectionActions;
    v2->_selectionActions = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    selectionGestures = v2->_selectionGestures;
    v2->_selectionGestures = v7;
  }

  return v2;
}

- (void)logGesture:(int64_t)a3 selectionType:(int64_t)a4 contentType:(int64_t)a5
{
  ++self->_selectionGestureCount;
  self->_lastSelectionType = a4;
  self->_lastContentType = a5;
  v6 = PKAnalyticsStringForSelectionGesture(a3);
  [(NSMutableArray *)self->_selectionGestures addObject:v6];
}

- (void)logSelectionAction:(int64_t)a3
{
  if ((a3 - 1) > 9)
  {
    v3 = @"selectionActionTypeNone";
  }

  else
  {
    v3 = off_1E82DC5E8[a3 - 1];
  }

  [(NSMutableArray *)self->_selectionActions addObject:v3];
}

- (NSDictionary)selectionGestureDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_selectionGestures;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v3 valueForKey:{v9, v15}];

        if (v10)
        {
          v11 = [v3 valueForKey:v9];
          v12 = [v11 intValue];

          v13 = [MEMORY[0x1E696AD98] numberWithInteger:v12 + 1];
          [v3 setObject:v13 forKey:v9];
        }

        else
        {
          [v3 setObject:&unk_1F47C1790 forKey:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSDictionary)selectionActionDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_selectionActions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v3 valueForKey:{v9, v15}];

        if (v10)
        {
          v11 = [v3 valueForKey:v9];
          v12 = [v11 intValue];

          v13 = [MEMORY[0x1E696AD98] numberWithInteger:v12 + 1];
          [v3 setObject:v13 forKey:v9];
        }

        else
        {
          [v3 setObject:&unk_1F47C1790 forKey:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (int64_t)numberOfTimesSelectionWasClearedInASession
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_selectionActions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) isEqual:{@"selectionActionTypeNone", v9}];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)lastActionTaken
{
  if ([(NSMutableArray *)self->_selectionActions count])
  {
    v3 = [(NSMutableArray *)self->_selectionActions lastObject];
  }

  else
  {
    v3 = @"selectionActionTypeNone";
  }

  return v3;
}

- (NSString)lastSignificantActionTaken
{
  v3 = [(NSMutableArray *)self->_selectionActions count];
  v4 = @"selectionActionTypeNone";
  while (--v3 >= 0)
  {
    v5 = [(NSMutableArray *)self->_selectionActions objectAtIndexedSubscript:v3];
    v6 = [v5 isEqual:@"selectionActionTypeNone"];

    if ((v6 & 1) == 0)
    {
      v4 = [(NSMutableArray *)self->_selectionActions objectAtIndexedSubscript:v3];
      break;
    }
  }

  return v4;
}

@end