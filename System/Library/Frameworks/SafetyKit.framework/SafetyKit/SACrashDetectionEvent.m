@interface SACrashDetectionEvent
+ (double)crashDetectionEventTimeout;
- (SACrashDetectionEvent)initWithCoder:(id)a3;
- (SACrashDetectionEvent)initWithTimeOfDetection:(id)a3 timeOfResolution:(id)a4 response:(int64_t)a5 location:(id)a6;
- (SACrashDetectionEvent)initWithTimeOfDetection:(id)a3 timeOfResolution:(id)a4 response:(int64_t)a5 location:(id)a6 isNotified:(BOOL)a7;
- (double)elapsed;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SACrashDetectionEvent

- (SACrashDetectionEvent)initWithTimeOfDetection:(id)a3 timeOfResolution:(id)a4 response:(int64_t)a5 location:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = SACrashDetectionEvent;
  v14 = [(SACrashDetectionEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_date, a3);
    objc_storeStrong(&v15->_timeOfResolution, a4);
    v15->_response = a5;
    objc_storeStrong(&v15->_location, a6);
    v15->_isNotified = 0;
  }

  return v15;
}

- (SACrashDetectionEvent)initWithTimeOfDetection:(id)a3 timeOfResolution:(id)a4 response:(int64_t)a5 location:(id)a6 isNotified:(BOOL)a7
{
  result = [(SACrashDetectionEvent *)self initWithTimeOfDetection:a3 timeOfResolution:a4 response:a5 location:a6];
  if (result)
  {
    result->_isNotified = a7;
  }

  return result;
}

- (SACrashDetectionEvent)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 alloc];
  [v5 decodeDoubleForKey:@"kSACrashDetectionEventTimeOfDetection"];
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  v8 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v5 decodeDoubleForKey:@"kSACrashDetectionEventTimeOfResolution"];
  v9 = [v8 initWithTimeIntervalSinceReferenceDate:?];
  v10 = [v5 decodeIntegerForKey:@"kSACrashDetectionEventResponse"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"kSACrashDetectionEventLocation"];
  v12 = [v5 decodeBoolForKey:@"kSACrashDetectionEventIsNotified"];

  v13 = [(SACrashDetectionEvent *)self initWithTimeOfDetection:v7 timeOfResolution:v9 response:v10 location:v11 isNotified:v12];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  date = self->_date;
  response = self->_response;
  location = self->_location;
  timeOfResolution = self->_timeOfResolution;
  isNotified = self->_isNotified;

  return [v4 initWithTimeOfDetection:date timeOfResolution:timeOfResolution response:response location:location isNotified:isNotified];
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [(NSDate *)date timeIntervalSinceReferenceDate];
  [v5 encodeDouble:@"kSACrashDetectionEventTimeOfDetection" forKey:?];
  [(NSDate *)self->_timeOfResolution timeIntervalSinceReferenceDate];
  [v5 encodeDouble:@"kSACrashDetectionEventTimeOfResolution" forKey:?];
  [v5 encodeInteger:self->_response forKey:@"kSACrashDetectionEventResponse"];
  [v5 encodeObject:self->_location forKey:@"kSACrashDetectionEventLocation"];
  [v5 encodeBool:self->_isNotified forKey:@"kSACrashDetectionEventIsNotified"];
}

- (double)elapsed
{
  v2 = [(SACrashDetectionEvent *)self date];
  [v2 timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SACrashDetectionEvent *)self date];
  v5 = [(SACrashDetectionEvent *)self response];
  v6 = [(SACrashDetectionEvent *)self location];
  v7 = [v3 stringWithFormat:@"SACrashDetectionEvent - date: %@, response: %ld, location: %@, notified: %d", v4, v5, v6, -[SACrashDetectionEvent isNotified](self, "isNotified")];

  return v7;
}

+ (double)crashDetectionEventTimeout
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 valueForKey:@"SACrashDetectionEventTimeout"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

@end