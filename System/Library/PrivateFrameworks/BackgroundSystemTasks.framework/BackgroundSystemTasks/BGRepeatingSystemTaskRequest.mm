@interface BGRepeatingSystemTaskRequest
- (BGRepeatingSystemTaskRequest)initWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setInterval:(double)interval;
- (void)setMinDurationBetweenInstances:(double)instances;
@end

@implementation BGRepeatingSystemTaskRequest

- (BGRepeatingSystemTaskRequest)initWithIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = BGRepeatingSystemTaskRequest;
  return [(BGSystemTaskRequest *)&v4 initWithIdentifier:identifier];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BGRepeatingSystemTaskRequest;
  v4 = [(BGSystemTaskRequest *)&v6 copyWithZone:zone];
  [(BGRepeatingSystemTaskRequest *)self interval];
  [v4 setInterval:?];
  [(BGRepeatingSystemTaskRequest *)self minDurationBetweenInstances];
  [v4 setMinDurationBetweenInstances:?];
  return v4;
}

- (void)setInterval:(double)interval
{
  self->_interval = interval;
  [(BGRepeatingSystemTaskRequest *)self minDurationBetweenInstances];
  if (v5 <= 0.0 || ([(BGRepeatingSystemTaskRequest *)self minDurationBetweenInstances], v6 >= interval))
  {

    [(BGRepeatingSystemTaskRequest *)self setMinDurationBetweenInstances:interval * 0.8];
  }
}

- (void)setMinDurationBetweenInstances:(double)instances
{
  if (instances <= 0.0 || (v4 = instances, [(BGRepeatingSystemTaskRequest *)self interval], v5 > 0.0) && ([(BGRepeatingSystemTaskRequest *)self interval], v6 <= v4))
  {
    [(BGRepeatingSystemTaskRequest *)self interval];
    v4 = v7 * 0.8;
  }

  self->_minDurationBetweenInstances = v4;
}

@end