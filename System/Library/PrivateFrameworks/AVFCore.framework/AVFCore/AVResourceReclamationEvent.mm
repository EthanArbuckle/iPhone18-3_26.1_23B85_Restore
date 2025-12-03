@interface AVResourceReclamationEvent
- (AVResourceReclamationEvent)initWithEventIdentifier:(id)identifier;
- (BOOL)happenedAfter:(id)after;
- (BOOL)happenedBefore:(id)before;
- (BOOL)isEqual:(id)equal;
- (void)dealloc;
@end

@implementation AVResourceReclamationEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVResourceReclamationEvent;
  [(AVResourceReclamationEvent *)&v3 dealloc];
}

- (AVResourceReclamationEvent)initWithEventIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = AVResourceReclamationEvent;
  v4 = [(AVResourceReclamationEvent *)&v6 init];
  if (v4)
  {
    v4->_eventIdentifier = [identifier copy];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  eventIdentifier = self->_eventIdentifier;
  v6 = *(equal + 1);

  return [(NSNumber *)eventIdentifier isEqual:v6];
}

- (BOOL)happenedAfter:(id)after
{
  if (!after)
  {
    return 1;
  }

  unsignedLongLongValue = [(NSNumber *)self->_eventIdentifier unsignedLongLongValue];
  return unsignedLongLongValue > [objc_msgSend(after "eventIdentifier")];
}

- (BOOL)happenedBefore:(id)before
{
  if (!before)
  {
    return 0;
  }

  unsignedLongLongValue = [(NSNumber *)self->_eventIdentifier unsignedLongLongValue];
  return unsignedLongLongValue < [objc_msgSend(before "eventIdentifier")];
}

@end