@interface LPEvent
- (BOOL)_childrenAreComplete;
- (BOOL)isComplete;
- (LPEvent)initWithType:(int64_t)type subtitle:(id)subtitle;
- (LPEvent)parent;
- (double)duration;
- (id)childWithType:(int64_t)type subtitle:(id)subtitle;
- (void)didCompleteWithErrorCode:(int64_t)code;
- (void)didCompleteWithStatus:(int64_t)status;
@end

@implementation LPEvent

- (LPEvent)initWithType:(int64_t)type subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v15.receiver = self;
  v15.super_class = LPEvent;
  v8 = [(LPEvent *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    objc_sync_enter(v10);
    v10->_type = type;
    objc_storeStrong(&v10->_subtitle, subtitle);
    v10->_startTime = CACurrentMediaTime();
    v10->_status = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    children = v10->_children;
    v10->_children = v11;

    v10->_specialization = 0;
    objc_sync_exit(v10);

    v13 = v10;
  }

  return v9;
}

- (id)childWithType:(int64_t)type subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [[LPEvent alloc] initWithType:type subtitle:subtitleCopy];
  [(NSMutableArray *)selfCopy->_children addObject:v8];
  objc_storeWeak(&v8->_parent, selfCopy);
  objc_sync_exit(selfCopy);

  return v8;
}

- (void)didCompleteWithErrorCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1AE9C63D8[code - 1];
  }

  [(LPEvent *)self didCompleteWithStatus:v3];
}

- (void)didCompleteWithStatus:(int64_t)status
{
  obj = self;
  objc_sync_enter(obj);
  obj->_status = status;
  obj->_endTime = CACurrentMediaTime();
  [LPStatistics recordEvent:?];
  objc_sync_exit(obj);
}

- (BOOL)_childrenAreComplete
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = selfCopy->_children;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if (([*(*(&v9 + 1) + 8 * i) isComplete] & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  objc_sync_exit(selfCopy);
  return v7;
}

- (BOOL)isComplete
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_status)
  {
    _childrenAreComplete = [(LPEvent *)selfCopy _childrenAreComplete];
  }

  else
  {
    _childrenAreComplete = 0;
  }

  objc_sync_exit(selfCopy);

  return _childrenAreComplete;
}

- (double)duration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_endTime - selfCopy->_startTime;
  objc_sync_exit(selfCopy);

  return v3;
}

- (LPEvent)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end