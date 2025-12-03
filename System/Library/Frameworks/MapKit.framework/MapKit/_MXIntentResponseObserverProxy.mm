@interface _MXIntentResponseObserverProxy
- (_MXIntentResponseObserver)observer;
- (_MXIntentResponseObserverProxy)initWithObserver:(id)observer;
- (void)didReceiveError:(id)error;
- (void)intentResponseDidUpdate:(id)update;
- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items;
@end

@implementation _MXIntentResponseObserverProxy

- (_MXIntentResponseObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)didReceiveError:(id)error
{
  errorCopy = error;
  observer = [(_MXIntentResponseObserverProxy *)self observer];
  [observer intentResponseDidUpdate:0 withSerializedCacheItems:0 error:errorCopy];
}

- (void)intentResponseDidUpdate:(id)update withSerializedCacheItems:(id)items
{
  itemsCopy = items;
  updateCopy = update;
  observer = [(_MXIntentResponseObserverProxy *)self observer];
  [observer intentResponseDidUpdate:updateCopy withSerializedCacheItems:itemsCopy error:0];
}

- (void)intentResponseDidUpdate:(id)update
{
  updateCopy = update;
  observer = [(_MXIntentResponseObserverProxy *)self observer];
  [observer intentResponseDidUpdate:updateCopy withSerializedCacheItems:0 error:0];
}

- (_MXIntentResponseObserverProxy)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = _MXIntentResponseObserverProxy;
  v5 = [(_MXIntentResponseObserverProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, observerCopy);
  }

  return v6;
}

@end