@interface SFAnalyticsEvent
- (id)initFromRow:(id)a3;
@end

@implementation SFAnalyticsEvent

- (id)initFromRow:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFAnalyticsEvent;
  v5 = [(SFAnalyticsEvent *)&v14 init];
  if (v5)
  {
    v6 = deserializedRecordFromRow(v4);
    record = v5->_record;
    v5->_record = v6;

    if (!v5->_record)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = [v4 indexForColumnName:@"timestamp"];
    v9 = MEMORY[0x1E696AD98];
    [v4 doubleAtIndex:v8];
    v10 = [v9 numberWithDouble:?];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;
  }

  v12 = v5;
LABEL_6:

  return v12;
}

@end