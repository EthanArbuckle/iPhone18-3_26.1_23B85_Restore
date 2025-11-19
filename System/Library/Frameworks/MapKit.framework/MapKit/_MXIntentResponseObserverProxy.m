@interface _MXIntentResponseObserverProxy
- (_MXIntentResponseObserver)observer;
- (_MXIntentResponseObserverProxy)initWithObserver:(id)a3;
- (void)didReceiveError:(id)a3;
- (void)intentResponseDidUpdate:(id)a3;
- (void)intentResponseDidUpdate:(id)a3 withSerializedCacheItems:(id)a4;
@end

@implementation _MXIntentResponseObserverProxy

- (_MXIntentResponseObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)didReceiveError:(id)a3
{
  v4 = a3;
  v5 = [(_MXIntentResponseObserverProxy *)self observer];
  [v5 intentResponseDidUpdate:0 withSerializedCacheItems:0 error:v4];
}

- (void)intentResponseDidUpdate:(id)a3 withSerializedCacheItems:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_MXIntentResponseObserverProxy *)self observer];
  [v8 intentResponseDidUpdate:v7 withSerializedCacheItems:v6 error:0];
}

- (void)intentResponseDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(_MXIntentResponseObserverProxy *)self observer];
  [v5 intentResponseDidUpdate:v4 withSerializedCacheItems:0 error:0];
}

- (_MXIntentResponseObserverProxy)initWithObserver:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MXIntentResponseObserverProxy;
  v5 = [(_MXIntentResponseObserverProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_observer, v4);
  }

  return v6;
}

@end