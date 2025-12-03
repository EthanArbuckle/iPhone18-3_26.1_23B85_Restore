@interface AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl
- (AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl)initWithID:(id)d outputDevice:(id)device authorizationTokenType:(id)type;
- (void)cancel;
- (void)dealloc;
- (void)enterTerminalStatus:(int64_t)status error:(id)error;
- (void)respondWithAuthorizationToken:(id)token completionHandler:(id)handler;
@end

@implementation AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl;
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)&v3 dealloc];
}

- (void)respondWithAuthorizationToken:(id)token completionHandler:(id)handler
{
  self->_completionHandler = [handler copy];
  parentAuthorizationSessionImpl = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self parentAuthorizationSessionImpl];

  [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)parentAuthorizationSessionImpl outputDeviceAuthorizationRequestImpl:self didRespondWithAuthorizationToken:token];
}

- (void)cancel
{
  [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self enterTerminalStatus:4 error:0];
  parentAuthorizationSessionImpl = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)self parentAuthorizationSessionImpl];

  [(AVFigEndpointUIAgentOutputDeviceAuthorizationSessionImpl *)parentAuthorizationSessionImpl outputDeviceAuthorizationRequestImplDidCancel:self];
}

- (void)enterTerminalStatus:(int64_t)status error:(id)error
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, status, error);

    self->_completionHandler = 0;
  }
}

- (AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl)initWithID:(id)d outputDevice:(id)device authorizationTokenType:(id)type
{
  v11.receiver = self;
  v11.super_class = AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl;
  v8 = [(AVFigEndpointUIAgentOutputDeviceAuthorizationRequestImpl *)&v11 init];
  if (v8)
  {
    v8->_uniqueID = [d copy];
    v8->_outputDevice = device;
    v8->_tokenType = type;
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end