@interface SFAnalyticsEvent
- (id)initFromRow:(id)row;
@end

@implementation SFAnalyticsEvent

- (id)initFromRow:(id)row
{
  rowCopy = row;
  v14.receiver = self;
  v14.super_class = SFAnalyticsEvent;
  v5 = [(SFAnalyticsEvent *)&v14 init];
  if (v5)
  {
    v6 = deserializedRecordFromRow(rowCopy);
    record = v5->_record;
    v5->_record = v6;

    if (!v5->_record)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = [rowCopy indexForColumnName:@"timestamp"];
    v9 = MEMORY[0x1E696AD98];
    [rowCopy doubleAtIndex:v8];
    v10 = [v9 numberWithDouble:?];
    timestamp = v5->_timestamp;
    v5->_timestamp = v10;
  }

  v12 = v5;
LABEL_6:

  return v12;
}

@end