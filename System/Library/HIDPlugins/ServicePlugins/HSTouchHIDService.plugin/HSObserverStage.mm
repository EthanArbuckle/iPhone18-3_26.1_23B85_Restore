@interface HSObserverStage
- (HSObserverStage)initWithName:(id)name handler:(id)handler;
- (void)handleConsume:(id)consume;
@end

@implementation HSObserverStage

- (HSObserverStage)initWithName:(id)name handler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HSObserverStage.mm" lineNumber:9 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v17.receiver = self;
  v17.super_class = HSObserverStage;
  v10 = [(HSStage *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v12 = objc_retainBlock(handlerCopy);
    handler = v11->_handler;
    v11->_handler = v12;

    v14 = v11;
  }

  return v11;
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  (*(self->_handler + 2))();
  v5.receiver = self;
  v5.super_class = HSObserverStage;
  [(HSStage *)&v5 handleConsume:consumeCopy];
}

@end