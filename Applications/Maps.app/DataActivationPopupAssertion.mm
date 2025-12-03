@interface DataActivationPopupAssertion
- (id)initAndTakeAssertion:(BOOL)assertion;
- (void)_releaseAssertion;
- (void)_takeAssertion;
- (void)dealloc;
@end

@implementation DataActivationPopupAssertion

- (void)_releaseAssertion
{
  dataActivationPopupAssertion = self->_dataActivationPopupAssertion;
  if (dataActivationPopupAssertion)
  {
    CFRelease(dataActivationPopupAssertion);
    self->_dataActivationPopupAssertion = 0;
  }

  telephonyServerConnection = self->_telephonyServerConnection;
  if (telephonyServerConnection)
  {
    CFRelease(telephonyServerConnection);
    self->_telephonyServerConnection = 0;
  }
}

- (void)_takeAssertion
{
  if (self->_active)
  {
    if (self->_telephonyServerConnection || (v3 = _CTServerConnectionCreateOnTargetQueue(), (self->_telephonyServerConnection = v3) != 0))
    {
      if (!self->_dataActivationPopupAssertion)
      {
        v4 = _CTServerConnectionDataActivationPopupAssertionCreate();
        if (v4)
        {
          NSLog(@"Failed to create data activation popup assertion: %i, %i", v4, HIDWORD(v4));
        }
      }
    }
  }
}

- (void)dealloc
{
  [(DataActivationPopupAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = DataActivationPopupAssertion;
  [(DataActivationPopupAssertion *)&v3 dealloc];
}

- (id)initAndTakeAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  v8.receiver = self;
  v8.super_class = DataActivationPopupAssertion;
  v4 = [(DataActivationPopupAssertion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_active = 1;
    if (assertionCopy)
    {
      [(DataActivationPopupAssertion *)v4 _takeAssertion];
    }

    v6 = v5;
  }

  return v5;
}

@end