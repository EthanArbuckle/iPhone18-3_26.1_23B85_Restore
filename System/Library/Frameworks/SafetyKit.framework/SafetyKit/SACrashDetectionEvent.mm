@interface SACrashDetectionEvent
+ (double)crashDetectionEventTimeout;
- (SACrashDetectionEvent)initWithCoder:(id)coder;
- (SACrashDetectionEvent)initWithTimeOfDetection:(id)detection timeOfResolution:(id)resolution response:(int64_t)response location:(id)location;
- (SACrashDetectionEvent)initWithTimeOfDetection:(id)detection timeOfResolution:(id)resolution response:(int64_t)response location:(id)location isNotified:(BOOL)notified;
- (double)elapsed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SACrashDetectionEvent

- (SACrashDetectionEvent)initWithTimeOfDetection:(id)detection timeOfResolution:(id)resolution response:(int64_t)response location:(id)location
{
  detectionCopy = detection;
  resolutionCopy = resolution;
  locationCopy = location;
  v17.receiver = self;
  v17.super_class = SACrashDetectionEvent;
  v14 = [(SACrashDetectionEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_date, detection);
    objc_storeStrong(&v15->_timeOfResolution, resolution);
    v15->_response = response;
    objc_storeStrong(&v15->_location, location);
    v15->_isNotified = 0;
  }

  return v15;
}

- (SACrashDetectionEvent)initWithTimeOfDetection:(id)detection timeOfResolution:(id)resolution response:(int64_t)response location:(id)location isNotified:(BOOL)notified
{
  result = [(SACrashDetectionEvent *)self initWithTimeOfDetection:detection timeOfResolution:resolution response:response location:location];
  if (result)
  {
    result->_isNotified = notified;
  }

  return result;
}

- (SACrashDetectionEvent)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAA8];
  coderCopy = coder;
  v6 = [v4 alloc];
  [coderCopy decodeDoubleForKey:@"kSACrashDetectionEventTimeOfDetection"];
  v7 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  v8 = objc_alloc(MEMORY[0x277CBEAA8]);
  [coderCopy decodeDoubleForKey:@"kSACrashDetectionEventTimeOfResolution"];
  v9 = [v8 initWithTimeIntervalSinceReferenceDate:?];
  v10 = [coderCopy decodeIntegerForKey:@"kSACrashDetectionEventResponse"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSACrashDetectionEventLocation"];
  v12 = [coderCopy decodeBoolForKey:@"kSACrashDetectionEventIsNotified"];

  v13 = [(SACrashDetectionEvent *)self initWithTimeOfDetection:v7 timeOfResolution:v9 response:v10 location:v11 isNotified:v12];
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  date = self->_date;
  response = self->_response;
  location = self->_location;
  timeOfResolution = self->_timeOfResolution;
  isNotified = self->_isNotified;

  return [v4 initWithTimeOfDetection:date timeOfResolution:timeOfResolution response:response location:location isNotified:isNotified];
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [(NSDate *)date timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"kSACrashDetectionEventTimeOfDetection" forKey:?];
  [(NSDate *)self->_timeOfResolution timeIntervalSinceReferenceDate];
  [coderCopy encodeDouble:@"kSACrashDetectionEventTimeOfResolution" forKey:?];
  [coderCopy encodeInteger:self->_response forKey:@"kSACrashDetectionEventResponse"];
  [coderCopy encodeObject:self->_location forKey:@"kSACrashDetectionEventLocation"];
  [coderCopy encodeBool:self->_isNotified forKey:@"kSACrashDetectionEventIsNotified"];
}

- (double)elapsed
{
  date = [(SACrashDetectionEvent *)self date];
  [date timeIntervalSinceNow];
  v4 = -v3;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  date = [(SACrashDetectionEvent *)self date];
  response = [(SACrashDetectionEvent *)self response];
  location = [(SACrashDetectionEvent *)self location];
  v7 = [v3 stringWithFormat:@"SACrashDetectionEvent - date: %@, response: %ld, location: %@, notified: %d", date, response, location, -[SACrashDetectionEvent isNotified](self, "isNotified")];

  return v7;
}

+ (double)crashDetectionEventTimeout
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults valueForKey:@"SACrashDetectionEventTimeout"];

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