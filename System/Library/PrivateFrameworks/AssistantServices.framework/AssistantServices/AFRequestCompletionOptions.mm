@interface AFRequestCompletionOptions
- (AFRequestCompletionOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setTriggerlessListeningOptions:self->_triggerlessListeningOptions];
  return v4;
}

- (AFRequestCompletionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AFRequestCompletionOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_triggerlessListeningOptions"];
    triggerlessListeningOptions = v5->_triggerlessListeningOptions;
    v5->_triggerlessListeningOptions = v6;
  }

  return v5;
}

@end