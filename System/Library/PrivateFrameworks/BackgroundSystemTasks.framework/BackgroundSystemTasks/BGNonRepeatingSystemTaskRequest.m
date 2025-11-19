@interface BGNonRepeatingSystemTaskRequest
- (BGNonRepeatingSystemTaskRequest)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BGNonRepeatingSystemTaskRequest

- (BGNonRepeatingSystemTaskRequest)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = BGNonRepeatingSystemTaskRequest;
  return [(BGSystemTaskRequest *)&v4 initWithIdentifier:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = BGNonRepeatingSystemTaskRequest;
  v4 = [(BGSystemTaskRequest *)&v6 copyWithZone:a3];
  [(BGNonRepeatingSystemTaskRequest *)self scheduleAfter];
  [v4 setScheduleAfter:?];
  [(BGNonRepeatingSystemTaskRequest *)self trySchedulingBefore];
  [v4 setTrySchedulingBefore:?];
  return v4;
}

@end