@interface _EXQueryObserver
- (NSArray)extensions;
- (_EXQueryObserver)initWithQueries:(id)a3 delegate:(id)a4;
- (_EXQueryObserverDelegate)internalDelegate;
- (void)queryControllerDidUpdate:(id)a3 difference:(id)a4;
@end

@implementation _EXQueryObserver

- (_EXQueryObserver)initWithQueries:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = _EXQueryObserver;
  v7 = [(_EXQueryController *)&v11 initWithQueries:a3];
  v8 = v7;
  if (v7)
  {
    v10.receiver = v7;
    v10.super_class = _EXQueryObserver;
    [(_EXQueryController *)&v10 setDelegate:v7];
    [(_EXQueryObserver *)v8 setInternalDelegate:v6];
  }

  return v8;
}

- (void)queryControllerDidUpdate:(id)a3 difference:(id)a4
{
  v5 = [(_EXQueryObserver *)self internalDelegate:a3];
  [v5 observerDidUpdate:self];
}

- (NSArray)extensions
{
  v4.receiver = self;
  v4.super_class = _EXQueryObserver;
  v2 = [(_EXQueryController *)&v4 extensions];

  return v2;
}

- (_EXQueryObserverDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

@end