@interface ATXUsageInsightsPhubbingEvent
- (ATXUsageInsightsPhubbingEvent)initWithCoder:(id)a3;
- (ATXUsageInsightsPhubbingEvent)initWithRelationshipType:(id)a3 startTime:(id)a4 endTime:(id)a5 duration:(double)a6 appSessions:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUsageInsightsPhubbingEvent

- (ATXUsageInsightsPhubbingEvent)initWithRelationshipType:(id)a3 startTime:(id)a4 endTime:(id)a5 duration:(double)a6 appSessions:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = ATXUsageInsightsPhubbingEvent;
  v16 = [(ATXUsageInsightsPhubbingEvent *)&v22 init];
  if (v16)
  {
    v17 = [v12 copy];
    relationshipType = v16->_relationshipType;
    v16->_relationshipType = v17;

    objc_storeStrong(&v16->_startTime, a4);
    objc_storeStrong(&v16->_endTime, a5);
    v16->_duration = a6;
    v19 = [v15 copy];
    appSessions = v16->_appSessions;
    v16->_appSessions = v19;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUsageInsightsPhubbingEvent *)self relationshipType];
  [v4 encodeObject:v5 forKey:@"relationshipType"];

  v6 = [(ATXUsageInsightsPhubbingEvent *)self startTime];
  [v4 encodeObject:v6 forKey:@"startTime"];

  v7 = [(ATXUsageInsightsPhubbingEvent *)self endTime];
  [v4 encodeObject:v7 forKey:@"endTime"];

  [(ATXUsageInsightsPhubbingEvent *)self duration];
  [v4 encodeDouble:@"duration" forKey:?];
  v8 = [(ATXUsageInsightsPhubbingEvent *)self appSessions];
  [v4 encodeObject:v8 forKey:@"appSessions"];
}

- (ATXUsageInsightsPhubbingEvent)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relationshipType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endTime"];
  [v4 decodeDoubleForKey:@"duration"];
  v9 = v8;
  v10 = MEMORY[0x1E695DFD8];
  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"appSessions"];

  v14 = [(ATXUsageInsightsPhubbingEvent *)self initWithRelationshipType:v5 startTime:v6 endTime:v7 duration:v13 appSessions:v9];
  return v14;
}

@end