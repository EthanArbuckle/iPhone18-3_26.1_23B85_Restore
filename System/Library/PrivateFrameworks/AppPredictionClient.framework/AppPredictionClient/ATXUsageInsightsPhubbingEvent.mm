@interface ATXUsageInsightsPhubbingEvent
- (ATXUsageInsightsPhubbingEvent)initWithCoder:(id)coder;
- (ATXUsageInsightsPhubbingEvent)initWithRelationshipType:(id)type startTime:(id)time endTime:(id)endTime duration:(double)duration appSessions:(id)sessions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUsageInsightsPhubbingEvent

- (ATXUsageInsightsPhubbingEvent)initWithRelationshipType:(id)type startTime:(id)time endTime:(id)endTime duration:(double)duration appSessions:(id)sessions
{
  typeCopy = type;
  timeCopy = time;
  endTimeCopy = endTime;
  sessionsCopy = sessions;
  v22.receiver = self;
  v22.super_class = ATXUsageInsightsPhubbingEvent;
  v16 = [(ATXUsageInsightsPhubbingEvent *)&v22 init];
  if (v16)
  {
    v17 = [typeCopy copy];
    relationshipType = v16->_relationshipType;
    v16->_relationshipType = v17;

    objc_storeStrong(&v16->_startTime, time);
    objc_storeStrong(&v16->_endTime, endTime);
    v16->_duration = duration;
    v19 = [sessionsCopy copy];
    appSessions = v16->_appSessions;
    v16->_appSessions = v19;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  relationshipType = [(ATXUsageInsightsPhubbingEvent *)self relationshipType];
  [coderCopy encodeObject:relationshipType forKey:@"relationshipType"];

  startTime = [(ATXUsageInsightsPhubbingEvent *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  endTime = [(ATXUsageInsightsPhubbingEvent *)self endTime];
  [coderCopy encodeObject:endTime forKey:@"endTime"];

  [(ATXUsageInsightsPhubbingEvent *)self duration];
  [coderCopy encodeDouble:@"duration" forKey:?];
  appSessions = [(ATXUsageInsightsPhubbingEvent *)self appSessions];
  [coderCopy encodeObject:appSessions forKey:@"appSessions"];
}

- (ATXUsageInsightsPhubbingEvent)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relationshipType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  [coderCopy decodeDoubleForKey:@"duration"];
  v9 = v8;
  v10 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"appSessions"];

  v14 = [(ATXUsageInsightsPhubbingEvent *)self initWithRelationshipType:v5 startTime:v6 endTime:v7 duration:v13 appSessions:v9];
  return v14;
}

@end