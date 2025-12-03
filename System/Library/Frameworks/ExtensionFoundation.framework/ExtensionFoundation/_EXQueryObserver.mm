@interface _EXQueryObserver
- (NSArray)extensions;
- (_EXQueryObserver)initWithQueries:(id)queries delegate:(id)delegate;
- (_EXQueryObserverDelegate)internalDelegate;
- (void)queryControllerDidUpdate:(id)update difference:(id)difference;
@end

@implementation _EXQueryObserver

- (_EXQueryObserver)initWithQueries:(id)queries delegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _EXQueryObserver;
  v7 = [(_EXQueryController *)&v11 initWithQueries:queries];
  v8 = v7;
  if (v7)
  {
    v10.receiver = v7;
    v10.super_class = _EXQueryObserver;
    [(_EXQueryController *)&v10 setDelegate:v7];
    [(_EXQueryObserver *)v8 setInternalDelegate:delegateCopy];
  }

  return v8;
}

- (void)queryControllerDidUpdate:(id)update difference:(id)difference
{
  v5 = [(_EXQueryObserver *)self internalDelegate:update];
  [v5 observerDidUpdate:self];
}

- (NSArray)extensions
{
  v4.receiver = self;
  v4.super_class = _EXQueryObserver;
  extensions = [(_EXQueryController *)&v4 extensions];

  return extensions;
}

- (_EXQueryObserverDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

@end