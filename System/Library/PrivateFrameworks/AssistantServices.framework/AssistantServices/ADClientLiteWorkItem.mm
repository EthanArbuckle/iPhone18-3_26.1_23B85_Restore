@interface ADClientLiteWorkItem
- (ADClientLiteWorkItem)initWithWork:(id)work timeout:(id)timeout;
- (id)timeout;
- (id)workItem;
@end

@implementation ADClientLiteWorkItem

- (id)timeout
{
  v2 = objc_retainBlock(self->_timeout);

  return v2;
}

- (id)workItem
{
  v2 = objc_retainBlock(self->_workItem);

  return v2;
}

- (ADClientLiteWorkItem)initWithWork:(id)work timeout:(id)timeout
{
  workCopy = work;
  timeoutCopy = timeout;
  v14.receiver = self;
  v14.super_class = ADClientLiteWorkItem;
  v8 = [(ADClientLiteWorkItem *)&v14 init];
  if (v8)
  {
    v9 = objc_retainBlock(workCopy);
    workItem = v8->_workItem;
    v8->_workItem = v9;

    v11 = objc_retainBlock(timeoutCopy);
    timeout = v8->_timeout;
    v8->_timeout = v11;
  }

  return v8;
}

@end