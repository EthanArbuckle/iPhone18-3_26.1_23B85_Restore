@interface _MXExtensionVendorContext
- (id)_errorForVendor:(id)vendor requestDispatcher:(id)dispatcher;
- (void)handleRequest:(id)request requestDispatcher:(id)dispatcher completion:(id)completion;
- (void)startSendingUpdatesForRequest:(id)request requestDispatcher:(id)dispatcher toObserver:(id)observer;
- (void)stopSendingUpdatesForRequest:(id)request requestDispatcher:(id)dispatcher;
@end

@implementation _MXExtensionVendorContext

- (id)_errorForVendor:(id)vendor requestDispatcher:(id)dispatcher
{
  vendorCopy = vendor;
  dispatcherCopy = dispatcher;
  v7 = dispatcherCopy;
  if (!vendorCopy)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = 11;
LABEL_12:
    v9 = [v10 _errorWithExtensionServiceError:v11];
    goto LABEL_13;
  }

  if (!dispatcherCopy)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = 12;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = 13;
    goto LABEL_12;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_13;
  }

  serviceProtocol = [v7 serviceProtocol];
  if (serviceProtocol)
  {
    if ([vendorCopy conformsToProtocol:serviceProtocol])
    {

      goto LABEL_8;
    }

    v13 = 7;
  }

  else
  {
    v13 = 14;
  }

  v9 = [MEMORY[0x1E696ABC0] _errorWithExtensionServiceError:v13];

LABEL_13:

  return v9;
}

- (void)stopSendingUpdatesForRequest:(id)request requestDispatcher:(id)dispatcher
{
  requestCopy = request;
  dispatcherCopy = dispatcher;
  if (self->_observer)
  {
    _principalObject = [(_MXExtensionVendorContext *)self _principalObject];
    v8 = [(_MXExtensionVendorContext *)self _errorForVendor:_principalObject requestDispatcher:dispatcherCopy];
    observer = self->_observer;
    if (v8)
    {
      [(_MXExtensionResponseObserver *)observer receiveUpdatedResponse:0 error:v8];
    }

    else
    {
      self->_observer = 0;

      [dispatcherCopy stopSendingUpdatesForRequest:requestCopy vendor:_principalObject];
    }
  }
}

- (void)startSendingUpdatesForRequest:(id)request requestDispatcher:(id)dispatcher toObserver:(id)observer
{
  requestCopy = request;
  dispatcherCopy = dispatcher;
  observerCopy = observer;
  _principalObject = [(_MXExtensionVendorContext *)self _principalObject];
  v11 = [(_MXExtensionVendorContext *)self _errorForVendor:_principalObject requestDispatcher:dispatcherCopy];
  if (v11)
  {
    [observerCopy receiveUpdatedResponse:0 error:v11];
  }

  else
  {
    objc_storeStrong(&self->_observer, observer);
    [dispatcherCopy startSendingUpdatesForRequest:requestCopy vendor:_principalObject toObserver:observerCopy];
  }
}

- (void)handleRequest:(id)request requestDispatcher:(id)dispatcher completion:(id)completion
{
  requestCopy = request;
  dispatcherCopy = dispatcher;
  completionCopy = completion;
  _principalObject = [(_MXExtensionVendorContext *)self _principalObject];
  v11 = [(_MXExtensionVendorContext *)self _errorForVendor:_principalObject requestDispatcher:dispatcherCopy];
  if (v11)
  {
    completionCopy[2](completionCopy, 0, v11);
  }

  else
  {
    [dispatcherCopy dispatchRequest:requestCopy vendor:_principalObject completion:completionCopy];
  }
}

@end