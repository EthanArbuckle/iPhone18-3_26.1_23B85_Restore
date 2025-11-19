@interface AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl
- (AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl)initWithID:(id)a3 outputDevice:(id)a4 authorizationTokenType:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)enterTerminalStatus:(int64_t)a3 error:(id)a4;
- (void)respondWithAuthorizationToken:(id)a3 completionHandler:(id)a4;
@end

@implementation AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl;
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)&v3 dealloc];
}

- (void)respondWithAuthorizationToken:(id)a3 completionHandler:(id)a4
{
  self->_completionHandler = [a4 copy];
  v6 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self parentAuthorizationSessionImpl];

  [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)v6 outputDeviceAuthorizationRequestImpl:self didRespondWithAuthorizationToken:a3];
}

- (void)cancel
{
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self enterTerminalStatus:4 error:0];
  v3 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self parentAuthorizationSessionImpl];

  [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)v3 outputDeviceAuthorizationRequestImplDidCancel:self];
}

- (void)enterTerminalStatus:(int64_t)a3 error:(id)a4
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a3, a4);

    self->_completionHandler = 0;
  }
}

- (AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl)initWithID:(id)a3 outputDevice:(id)a4 authorizationTokenType:(id)a5
{
  v11.receiver = self;
  v11.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl;
  v8 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)&v11 init];
  if (v8)
  {
    v8->_uniqueID = [a3 copy];
    v8->_outputDevice = a4;
    v8->_tokenType = a5;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end