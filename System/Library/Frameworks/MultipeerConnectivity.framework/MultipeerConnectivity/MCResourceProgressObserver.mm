@interface MCResourceProgressObserver
- (MCResourceProgressObserver)initWithName:(id)name progress:(id)progress cancelHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation MCResourceProgressObserver

- (MCResourceProgressObserver)initWithName:(id)name progress:(id)progress cancelHandler:(id)handler
{
  v11.receiver = self;
  v11.super_class = MCResourceProgressObserver;
  v8 = [(MCResourceProgressObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCResourceProgressObserver *)v8 setName:name];
    [(MCResourceProgressObserver *)v9 setProgress:progress];
    v9->_cancelHandler = [handler copy];
    [(NSProgress *)v9->_progress addObserver:v9 forKeyPath:@"cancelled" options:1 context:0];
    [(NSProgress *)v9->_progress addObserver:v9 forKeyPath:@"completedUnitCount" options:1 context:0];
    v9->_progressObserversSet = 1;
  }

  return v9;
}

- (void)invalidate
{
  if (self->_progressObserversSet)
  {
    [(NSProgress *)[(MCResourceProgressObserver *)self progress] removeObserver:self forKeyPath:@"cancelled"];
    [(NSProgress *)[(MCResourceProgressObserver *)self progress] removeObserver:self forKeyPath:@"completedUnitCount"];
    self->_progressObserversSet = 0;
  }

  [(MCResourceProgressObserver *)self setCancelHandler:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"cancelled", object, change, context}])
  {
    if ([object isCancelled] && -[MCResourceProgressObserver cancelHandler](self, "cancelHandler"))
    {
      v9 = *([(MCResourceProgressObserver *)self cancelHandler]+ 16);

      v9();
    }
  }

  else if ([path isEqualToString:@"completedUnitCount"])
  {
    completedUnitCount = [object completedUnitCount];
    if (completedUnitCount == [object totalUnitCount])
    {

      [(MCResourceProgressObserver *)self invalidate];
    }
  }
}

- (void)dealloc
{
  self->_cancelHandler = 0;
  v3.receiver = self;
  v3.super_class = MCResourceProgressObserver;
  [(MCResourceProgressObserver *)&v3 dealloc];
}

@end