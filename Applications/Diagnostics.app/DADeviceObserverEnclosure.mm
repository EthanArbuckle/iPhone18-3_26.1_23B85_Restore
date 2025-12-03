@interface DADeviceObserverEnclosure
- (DADeviceObserverEnclosure)initWithObserver:(id)observer delegate:(id)delegate;
- (DADeviceObserverEnclosureDelegate)delegate;
- (void)begin;
- (void)end;
- (void)oneshotWithHandler:(id)handler;
@end

@implementation DADeviceObserverEnclosure

- (DADeviceObserverEnclosure)initWithObserver:(id)observer delegate:(id)delegate
{
  observerCopy = observer;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = DADeviceObserverEnclosure;
  v9 = [(DADeviceObserverEnclosure *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_observer, observer);
    v11 = +[NSSet set];
    devices = v10->_devices;
    v10->_devices = v11;

    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (void)begin
{
  identifier = [(DADeviceObserverEnclosure *)self identifier];

  if (!identifier)
  {
    objc_initWeak(&location, self);
    observer = [(DADeviceObserverEnclosure *)self observer];
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_10001D164;
    v9 = &unk_1001BD310;
    objc_copyWeak(&v10, &location);
    v5 = [observer beginDiscoveringDevicesWithHandler:&v6];
    [(DADeviceObserverEnclosure *)self setIdentifier:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)end
{
  identifier = [(DADeviceObserverEnclosure *)self identifier];

  if (identifier)
  {
    observer = [(DADeviceObserverEnclosure *)self observer];
    identifier2 = [(DADeviceObserverEnclosure *)self identifier];
    [observer endDiscoveringDevicesWithIdentifier:identifier2];

    [(DADeviceObserverEnclosure *)self setIdentifier:0];
  }
}

- (void)oneshotWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  observer = [(DADeviceObserverEnclosure *)self observer];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D3F0;
  v7[3] = &unk_1001BD338;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [observer discoverAllDevicesWithCompletionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (DADeviceObserverEnclosureDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end