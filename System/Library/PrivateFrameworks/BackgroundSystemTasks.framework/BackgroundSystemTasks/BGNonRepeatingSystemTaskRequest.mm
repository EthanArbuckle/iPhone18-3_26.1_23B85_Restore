@interface BGNonRepeatingSystemTaskRequest
- (BGNonRepeatingSystemTaskRequest)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BGNonRepeatingSystemTaskRequest

- (BGNonRepeatingSystemTaskRequest)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = BGNonRepeatingSystemTaskRequest;
  return [(BGSystemTaskRequest *)&v4 initWithIdentifier:identifier];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BGNonRepeatingSystemTaskRequest;
  v4 = [(BGSystemTaskRequest *)&v6 copyWithZone:zone];
  [(BGNonRepeatingSystemTaskRequest *)self scheduleAfter];
  [v4 setScheduleAfter:?];
  [(BGNonRepeatingSystemTaskRequest *)self trySchedulingBefore];
  [v4 setTrySchedulingBefore:?];
  return v4;
}

@end