@interface BGRepeatingSystemTaskRequest
- (BGRepeatingSystemTaskRequest)initWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setInterval:(double)a3;
- (void)setMinDurationBetweenInstances:(double)a3;
@end

@implementation BGRepeatingSystemTaskRequest

- (BGRepeatingSystemTaskRequest)initWithIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = BGRepeatingSystemTaskRequest;
  return [(BGSystemTaskRequest *)&v4 initWithIdentifier:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = BGRepeatingSystemTaskRequest;
  v4 = [(BGSystemTaskRequest *)&v6 copyWithZone:a3];
  [(BGRepeatingSystemTaskRequest *)self interval];
  [v4 setInterval:?];
  [(BGRepeatingSystemTaskRequest *)self minDurationBetweenInstances];
  [v4 setMinDurationBetweenInstances:?];
  return v4;
}

- (void)setInterval:(double)a3
{
  self->_interval = a3;
  [(BGRepeatingSystemTaskRequest *)self minDurationBetweenInstances];
  if (v5 <= 0.0 || ([(BGRepeatingSystemTaskRequest *)self minDurationBetweenInstances], v6 >= a3))
  {

    [(BGRepeatingSystemTaskRequest *)self setMinDurationBetweenInstances:a3 * 0.8];
  }
}

- (void)setMinDurationBetweenInstances:(double)a3
{
  if (a3 <= 0.0 || (v4 = a3, [(BGRepeatingSystemTaskRequest *)self interval], v5 > 0.0) && ([(BGRepeatingSystemTaskRequest *)self interval], v6 <= v4))
  {
    [(BGRepeatingSystemTaskRequest *)self interval];
    v4 = v7 * 0.8;
  }

  self->_minDurationBetweenInstances = v4;
}

@end