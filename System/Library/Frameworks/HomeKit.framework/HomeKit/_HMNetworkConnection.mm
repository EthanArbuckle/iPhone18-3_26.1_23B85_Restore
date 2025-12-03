@interface _HMNetworkConnection
- (_HMNetworkConnection)initWithEndpoint:(id)endpoint parameters:(id)parameters;
- (void)cancel;
- (void)receiveMessageWithCompletion:(id)completion;
- (void)sendData:(id)data context:(id)context isComplete:(BOOL)complete completion:(id)completion;
- (void)setPathChangedHandler:(id)handler;
- (void)setQueue:(id)queue;
- (void)setStateChangedHandler:(id)handler;
- (void)setViabilityChangedHandler:(id)handler;
- (void)start;
@end

@implementation _HMNetworkConnection

- (void)setQueue:(id)queue
{
  objc_storeStrong(&self->_queue, queue);
  queueCopy = queue;
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  nw_connection_set_queue(nwConnection, queueCopy);
}

- (void)setPathChangedHandler:(id)handler
{
  handlerCopy = handler;
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  v6 = nwConnection;
  if (handlerCopy)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46___HMNetworkConnection_setPathChangedHandler___block_invoke;
    handler[3] = &unk_1E754C200;
    v8 = handlerCopy;
    nw_connection_set_path_changed_handler(v6, handler);
  }

  else
  {
    nw_connection_set_path_changed_handler(nwConnection, 0);
  }
}

- (void)setViabilityChangedHandler:(id)handler
{
  handlerCopy = handler;
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  nw_connection_set_viability_changed_handler(nwConnection, handlerCopy);
}

- (void)setStateChangedHandler:(id)handler
{
  handlerCopy = handler;
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  nw_connection_set_state_changed_handler(nwConnection, handlerCopy);
}

- (void)receiveMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  nw_connection_receive_message(nwConnection, completionCopy);
}

- (void)sendData:(id)data context:(id)context isComplete:(BOOL)complete completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  dataCopy = data;
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  nw_connection_send(nwConnection, dataCopy, contextCopy, complete, completionCopy);
}

- (void)cancel
{
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  nw_connection_cancel(nwConnection);
}

- (void)start
{
  nwConnection = [(_HMNetworkConnection *)self nwConnection];
  nw_connection_start(nwConnection);
}

- (_HMNetworkConnection)initWithEndpoint:(id)endpoint parameters:(id)parameters
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = _HMNetworkConnection;
  v8 = [(_HMNetworkConnection *)&v12 init];
  if (v8)
  {
    v9 = nw_connection_create(endpointCopy, parametersCopy);
    nwConnection = v8->_nwConnection;
    v8->_nwConnection = v9;
  }

  return v8;
}

@end