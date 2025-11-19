@interface HSObserverStage
- (HSObserverStage)initWithName:(id)a3 handler:(id)a4;
- (void)handleConsume:(id)a3;
@end

@implementation HSObserverStage

- (HSObserverStage)initWithName:(id)a3 handler:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
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
    objc_storeStrong(&v10->_name, a3);
    v12 = objc_retainBlock(v9);
    handler = v11->_handler;
    v11->_handler = v12;

    v14 = v11;
  }

  return v11;
}

- (void)handleConsume:(id)a3
{
  v4 = a3;
  (*(self->_handler + 2))();
  v5.receiver = self;
  v5.super_class = HSObserverStage;
  [(HSStage *)&v5 handleConsume:v4];
}

@end