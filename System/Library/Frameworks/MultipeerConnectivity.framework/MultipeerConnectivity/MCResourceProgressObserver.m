@interface MCResourceProgressObserver
- (MCResourceProgressObserver)initWithName:(id)a3 progress:(id)a4 cancelHandler:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation MCResourceProgressObserver

- (MCResourceProgressObserver)initWithName:(id)a3 progress:(id)a4 cancelHandler:(id)a5
{
  v11.receiver = self;
  v11.super_class = MCResourceProgressObserver;
  v8 = [(MCResourceProgressObserver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MCResourceProgressObserver *)v8 setName:a3];
    [(MCResourceProgressObserver *)v9 setProgress:a4];
    v9->_cancelHandler = [a5 copy];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"cancelled", a4, a5, a6}])
  {
    if ([a4 isCancelled] && -[MCResourceProgressObserver cancelHandler](self, "cancelHandler"))
    {
      v9 = *([(MCResourceProgressObserver *)self cancelHandler]+ 16);

      v9();
    }
  }

  else if ([a3 isEqualToString:@"completedUnitCount"])
  {
    v10 = [a4 completedUnitCount];
    if (v10 == [a4 totalUnitCount])
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