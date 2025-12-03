@interface TUIStatsFeedEntryCollector
- (TUIStatsFeedEntryCollector)initWithMode:(unint64_t)mode uid:(id)uid;
- (void)updateWithPass:(id)pass;
@end

@implementation TUIStatsFeedEntryCollector

- (TUIStatsFeedEntryCollector)initWithMode:(unint64_t)mode uid:(id)uid
{
  uidCopy = uid;
  v14.receiver = self;
  v14.super_class = TUIStatsFeedEntryCollector;
  v7 = [(TUIStatsFeedEntryCollector *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = mode;
    v9 = [uidCopy copy];
    uid = v8->_uid;
    v8->_uid = v9;

    v8->_eventCount[28] = 0;
    *&v8->_eventCount[24] = 0u;
    *&v8->_eventCount[26] = 0u;
    *&v8->_eventCount[20] = 0u;
    *&v8->_eventCount[22] = 0u;
    *&v8->_eventCount[16] = 0u;
    *&v8->_eventCount[18] = 0u;
    *&v8->_eventCount[12] = 0u;
    *&v8->_eventCount[14] = 0u;
    *&v8->_eventCount[8] = 0u;
    *&v8->_eventCount[10] = 0u;
    *&v8->_eventCount[4] = 0u;
    *&v8->_eventCount[6] = 0u;
    *v8->_eventCount = 0u;
    *&v8->_eventCount[2] = 0u;
    *v8->_elapsedTime = 0u;
    *&v8->_elapsedTime[2] = 0u;
    v8->_elapsedTime[4] = 0.0;
    if ((v8->_mode & 2) != 0)
    {
      v11 = objc_opt_new();
      passes = v8->_passes;
      v8->_passes = v11;
    }
  }

  return v8;
}

- (void)updateWithPass:(id)pass
{
  passCopy = pass;
  mode = self->_mode;
  v10 = passCopy;
  if ((mode & 4) != 0)
  {
    for (i = 0; i != 5; ++i)
    {
      [passCopy elapsedTimeForPhase:i];
      passCopy = v10;
      self->_elapsedTime[i] = v7 + self->_elapsedTime[i];
    }

    mode = self->_mode;
    if ((mode & 8) == 0)
    {
LABEL_3:
      if ((mode & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((mode & 8) == 0)
  {
    goto LABEL_3;
  }

  for (j = 0; j != 29; ++j)
  {
    v9 = [passCopy countForEvent:j];
    passCopy = v10;
    self->_eventCount[j] += v9;
  }

  if ((self->_mode & 2) != 0)
  {
LABEL_4:
    [(NSMutableArray *)self->_passes addObject:v10];
    passCopy = v10;
  }

LABEL_5:
}

@end