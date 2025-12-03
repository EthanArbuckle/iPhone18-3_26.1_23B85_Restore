@interface AVEventManagerAction
+ (id)actionWithBlock:(id)block event:(id)event;
+ (id)actionWithTarget:(id)target selector:(SEL)selector event:(id)event;
- (AVEventManagerAction)initWithEvent:(id)event;
- (BOOL)isEqual:(id)equal;
@end

@implementation AVEventManagerAction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  event = self->_event;
  if (event == equalCopy->_event)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSString *)event isEqualToString:?];
  }

LABEL_7:

  return v6;
}

- (AVEventManagerAction)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = AVEventManagerAction;
  v6 = [(AVEventManagerAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

+ (id)actionWithTarget:(id)target selector:(SEL)selector event:(id)event
{
  eventCopy = event;
  targetCopy = target;
  v9 = [[AVEventManagerSelectorAction alloc] initWithTarget:targetCopy selector:selector event:eventCopy];

  return v9;
}

+ (id)actionWithBlock:(id)block event:(id)event
{
  eventCopy = event;
  blockCopy = block;
  v7 = [[AVEventManagerBlockAction alloc] initWithBlock:blockCopy event:eventCopy];

  return v7;
}

@end