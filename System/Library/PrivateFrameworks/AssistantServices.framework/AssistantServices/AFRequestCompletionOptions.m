@interface AFRequestCompletionOptions
- (AFRequestCompletionOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation AFRequestCompletionOptions

- (id)description
{
  v6.receiver = self;
  v6.super_class = AFRequestCompletionOptions;
  v3 = [(AFRequestCompletionOptions *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"triggerlessListeningOptions: %@", self->_triggerlessListeningOptions];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setTriggerlessListeningOptions:self->_triggerlessListeningOptions];
  return v4;
}

- (AFRequestCompletionOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AFRequestCompletionOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggerlessListeningOptions"];
    triggerlessListeningOptions = v5->_triggerlessListeningOptions;
    v5->_triggerlessListeningOptions = v6;
  }

  return v5;
}

@end