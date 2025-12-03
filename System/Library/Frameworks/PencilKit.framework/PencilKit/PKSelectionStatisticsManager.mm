@interface PKSelectionStatisticsManager
+ (id)sharedStatisticsManager;
- (void)_endSelectionSession;
- (void)_recordSelectionSession:(id)session;
- (void)logEndSelectionSessionIfNecessary;
- (void)logScrollEventWithContentOffset:(CGPoint)offset;
- (void)logSelectionAction:(int64_t)action;
- (void)recordDidMakeSelectionWithType:(int64_t)type;
- (void)recordLassoSelectionEventWithContentType:(int64_t)type;
- (void)recordSmartSelectionEventWithType:(int64_t)type contentType:(int64_t)contentType gestureInvoked:(int64_t)invoked;
@end

@implementation PKSelectionStatisticsManager

+ (id)sharedStatisticsManager
{
  if (_MergedGlobals_169 != -1)
  {
    dispatch_once(&_MergedGlobals_169, &__block_literal_global_89);
  }

  v3 = qword_1ED6A5548;

  return v3;
}

void __55__PKSelectionStatisticsManager_sharedStatisticsManager__block_invoke()
{
  v0 = objc_alloc_init(PKSelectionStatisticsManager);
  v1 = qword_1ED6A5548;
  qword_1ED6A5548 = v0;
}

- (void)recordDidMakeSelectionWithType:(int64_t)type
{
  v3 = @"smartSelection";
  if (!type)
  {
    v3 = @"lasso";
  }

  v4 = v3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.selectionType"];
  v7 = v4;
  v6 = v4;
  AnalyticsSendEventLazy();
}

id __63__PKSelectionStatisticsManager_recordDidMakeSelectionWithType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"selectionType";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordLassoSelectionEventWithContentType:(int64_t)type
{
  if (self->_selectionSession)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__endSelectionSession object:0];
  }

  else
  {
    v5 = objc_alloc_init(PKSelectionStatisticsSession);
    selectionSession = self->_selectionSession;
    self->_selectionSession = v5;
  }

  [(PKSelectionStatisticsSession *)self->_selectionSession logGesture:6 selectionType:0 contentType:type];
  [(PKSelectionStatisticsManager *)self performSelector:sel__endSelectionSession withObject:0 afterDelay:180.0];
  v7 = PKAnalyticsStringForContentType(type);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.lassoSelection"];
  v10 = v7;
  v9 = v7;
  AnalyticsSendEventLazy();
}

id __73__PKSelectionStatisticsManager_recordLassoSelectionEventWithContentType___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = @"lassoSelectionContents";
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)recordSmartSelectionEventWithType:(int64_t)type contentType:(int64_t)contentType gestureInvoked:(int64_t)invoked
{
  if (self->_selectionSession)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__endSelectionSession object:0];
  }

  else
  {
    v9 = objc_alloc_init(PKSelectionStatisticsSession);
    selectionSession = self->_selectionSession;
    self->_selectionSession = v9;
  }

  [(PKSelectionStatisticsSession *)self->_selectionSession logGesture:invoked selectionType:type contentType:contentType];
  [(PKSelectionStatisticsManager *)self performSelector:sel__endSelectionSession withObject:0 afterDelay:180.0];
  v11 = PKAnalyticsStringForSelectionType(type);
  v12 = PKAnalyticsStringForContentType(contentType);
  v13 = PKAnalyticsStringForSelectionGesture(invoked);
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.smartSelection"];
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  AnalyticsSendEventLazy();
}

id __93__PKSelectionStatisticsManager_recordSmartSelectionEventWithType_contentType_gestureInvoked___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4[0] = @"smartSelectionLevel";
  v4[1] = @"smartSelectionContents";
  v5 = v1;
  v4[2] = @"gestureInvoked";
  v6 = *(a1 + 48);
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

- (void)logSelectionAction:(int64_t)action
{
  if (self->_selectionSession)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__endSelectionSession object:0];
    selectionSession = self->_selectionSession;

    [(PKSelectionStatisticsSession *)selectionSession logSelectionAction:action];
  }

  else
  {
    v6 = objc_alloc_init(PKSelectionStatisticsSession);
    v7 = self->_selectionSession;
    self->_selectionSession = v6;

    [(PKSelectionStatisticsSession *)self->_selectionSession logSelectionAction:action];

    [(PKSelectionStatisticsManager *)self performSelector:sel__endSelectionSession withObject:0 afterDelay:180.0];
  }
}

- (void)logScrollEventWithContentOffset:(CGPoint)offset
{
  x = self->_lastContentOffset.x;
  y = self->_lastContentOffset.y;
  self->_lastContentOffset = offset;
  selectionSession = self->_selectionSession;
  if (selectionSession)
  {
    if (sqrt((offset.y - y) * (offset.y - y) + (offset.x - x) * (offset.x - x)) > 1000.0)
    {
      lastActionTaken = [(PKSelectionStatisticsSession *)selectionSession lastActionTaken];
      v8 = [lastActionTaken isEqualToString:@"selectionActionTypeNone"];

      if (v8)
      {

        [(PKSelectionStatisticsManager *)self _endSelectionSession];
      }
    }
  }
}

- (void)logEndSelectionSessionIfNecessary
{
  if (self->_selectionSession)
  {
    [(PKSelectionStatisticsManager *)self _endSelectionSession];
  }
}

- (void)_endSelectionSession
{
  if (self->_selectionSession)
  {
    [(PKSelectionStatisticsManager *)self _recordSelectionSession:?];
    selectionSession = self->_selectionSession;
    self->_selectionSession = 0;
  }
}

- (void)_recordSelectionSession:(id)session
{
  v19[7] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v4 = PKAnalyticsStringForSelectionType([sessionCopy lastSelectionType]);
  v5 = PKAnalyticsStringForContentType([sessionCopy lastContentType]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19[0] = &unk_1F47C1790;
  v18[0] = @"sessionCount";
  v18[1] = @"timeSpentEditingSelection";
  v7 = MEMORY[0x1E696AD98];
  [sessionCopy timeSpentSelecting];
  v8 = [v7 numberWithDouble:?];
  v19[1] = v8;
  v19[2] = v4;
  v18[2] = @"selectionType";
  v18[3] = @"selectionContents";
  v19[3] = v5;
  v18[4] = @"selectionEditCount";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(sessionCopy, "selectionGestureCount")}];
  v19[4] = v9;
  v18[5] = @"selectionActionType";
  lastSignificantActionTaken = [sessionCopy lastSignificantActionTaken];
  v19[5] = lastSignificantActionTaken;
  v18[6] = @"deselected";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(sessionCopy, "numberOfTimesSelectionWasClearedInASession")}];
  v19[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:7];

  [dictionary addEntriesFromDictionary:v12];
  selectionGestureDictionary = [sessionCopy selectionGestureDictionary];
  [dictionary addEntriesFromDictionary:selectionGestureDictionary];

  selectionActionDictionary = [sessionCopy selectionActionDictionary];

  [dictionary addEntriesFromDictionary:selectionActionDictionary];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"selection.session"];
  v17 = dictionary;
  v16 = dictionary;
  AnalyticsSendEventLazy();
}

@end