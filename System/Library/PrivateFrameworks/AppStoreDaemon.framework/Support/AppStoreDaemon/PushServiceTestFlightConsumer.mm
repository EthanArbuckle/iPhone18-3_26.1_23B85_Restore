@interface PushServiceTestFlightConsumer
- (void)pushConnection:(id)a3 didReceiveRawMessage:(id)a4;
- (void)pushConnection:(id)a3 didReceiveToken:(id)a4 forTopic:(unint64_t)a5;
- (void)testFlightServiceHost:(id)a3 didUpdateExtensionStatus:(int64_t)a4;
@end

@implementation PushServiceTestFlightConsumer

- (void)pushConnection:(id)a3 didReceiveRawMessage:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100341128;
  v8[3] = &unk_10051B570;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

- (void)pushConnection:(id)a3 didReceiveToken:(id)a4 forTopic:(unint64_t)a5
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003414DC;
  v9[3] = &unk_10051B570;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, v9);
}

- (void)testFlightServiceHost:(id)a3 didUpdateExtensionStatus:(int64_t)a4
{
  if (self)
  {
    v5 = sub_1003E541C(self->_testFlightServiceHost) == 1;
    if (self->_isEnabled != v5)
    {
      self->_isEnabled = v5;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);

      if (WeakRetained)
      {
        callbackQueue = self->_callbackQueue;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1003417BC;
        v9[3] = &unk_10051C8F8;
        v9[4] = self;
        v10 = v5;
        dispatch_async(callbackQueue, v9);
      }

      if (self->_isEnabled)
      {
        sub_10034118C(self);
      }

      else
      {
        unsentPushToken = self->_unsentPushToken;
        self->_unsentPushToken = 0;
      }
    }
  }
}

@end