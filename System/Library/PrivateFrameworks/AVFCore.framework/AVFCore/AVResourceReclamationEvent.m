@interface AVResourceReclamationEvent
- (AVResourceReclamationEvent)initWithEventIdentifier:(id)a3;
- (BOOL)happenedAfter:(id)a3;
- (BOOL)happenedBefore:(id)a3;
- (BOOL)isEqual:(id)a3;
- (void)dealloc;
@end

@implementation AVResourceReclamationEvent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVResourceReclamationEvent;
  [(AVResourceReclamationEvent *)&v3 dealloc];
}

- (AVResourceReclamationEvent)initWithEventIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVResourceReclamationEvent;
  v4 = [(AVResourceReclamationEvent *)&v6 init];
  if (v4)
  {
    v4->_eventIdentifier = [a3 copy];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  eventIdentifier = self->_eventIdentifier;
  v6 = *(a3 + 1);

  return [(NSNumber *)eventIdentifier isEqual:v6];
}

- (BOOL)happenedAfter:(id)a3
{
  if (!a3)
  {
    return 1;
  }

  v4 = [(NSNumber *)self->_eventIdentifier unsignedLongLongValue];
  return v4 > [objc_msgSend(a3 "eventIdentifier")];
}

- (BOOL)happenedBefore:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [(NSNumber *)self->_eventIdentifier unsignedLongLongValue];
  return v4 < [objc_msgSend(a3 "eventIdentifier")];
}

@end