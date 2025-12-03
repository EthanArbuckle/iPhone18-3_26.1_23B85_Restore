@interface ARRemoteSensor
- (ARRemoteSensor)initWithListenerEndpoint:(id)endpoint;
- (ARRemoteSensor)initWithServerConnection:(id)connection;
- (ARRemoteSensor)initWithServiceName:(id)name;
- (ARSensorDelegate)delegate;
- (unint64_t)providedDataTypes;
- (void)dealloc;
- (void)sensorDidFailWithError:(id)error;
- (void)sensorDidOutputSensorData:(id)data;
- (void)sensorDidPause;
- (void)sensorDidRestart;
- (void)sensorDidStart;
- (void)start;
- (void)stop;
@end

@implementation ARRemoteSensor

- (ARRemoteSensor)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [[ARServerConnection alloc] initWithListenerEndpoint:endpointCopy];

  v6 = [(ARRemoteSensor *)self initWithServerConnection:v5];
  return v6;
}

- (ARRemoteSensor)initWithServerConnection:(id)connection
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = ARRemoteSensor;
  v6 = [(ARRemoteSensor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverConnection, connection);
    [(ARServerConnection *)v7->_serverConnection setDelegate:v7];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4276460];
    [(ARServerConnection *)v7->_serverConnection setExportedInterface:v8];

    [(ARServerConnection *)v7->_serverConnection setExportedObject:v7];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F427D0E0];
    [(ARServerConnection *)v7->_serverConnection setRemoteObjectInterface:v9];

    v7->_running = 0;
  }

  return v7;
}

- (ARRemoteSensor)initWithServiceName:(id)name
{
  nameCopy = name;
  v5 = [[ARServerConnection alloc] initWithServiceName:nameCopy];

  v6 = [(ARRemoteSensor *)self initWithServerConnection:v5];
  return v6;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogSensor_12();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = ARRemoteSensor;
  [(ARRemoteSensor *)&v6 dealloc];
}

- (void)sensorDidFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(ARRemoteSensor *)self delegate];
  [delegate sensor:self didFailWithError:errorCopy];
}

- (void)sensorDidOutputSensorData:(id)data
{
  dataCopy = data;
  delegate = [(ARRemoteSensor *)self delegate];
  [delegate sensor:self didOutputSensorData:dataCopy];
}

- (void)sensorDidPause
{
  delegate = [(ARRemoteSensor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ARRemoteSensor *)self delegate];
    [delegate2 sensorDidPause:self];
  }
}

- (void)sensorDidRestart
{
  delegate = [(ARRemoteSensor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ARRemoteSensor *)self delegate];
    [delegate2 sensorDidRestart:self];
  }
}

- (void)sensorDidStart
{
  delegate = [(ARRemoteSensor *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(ARRemoteSensor *)self delegate];
    [delegate2 sensorDidStart:self];
  }
}

- (unint64_t)providedDataTypes
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  serverConnection = self->_serverConnection;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__ARRemoteSensor_providedDataTypes__block_invoke;
  v7[3] = &unk_1E817E818;
  v7[4] = self;
  v3 = [(ARServerConnection *)serverConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__ARRemoteSensor_providedDataTypes__block_invoke_66;
  v6[3] = &unk_1E817E7F0;
  v6[4] = &v8;
  [v3 providedDataTypesWithReply:v6];
  v4 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v4;
}

void __35__ARRemoteSensor_providedDataTypes__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_12();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (void)start
{
  if (![(ARRemoteSensor *)self isRunning])
  {
    [(ARRemoteSensor *)self setRunning:1];
    serverConnection = self->_serverConnection;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __23__ARRemoteSensor_start__block_invoke;
    v5[3] = &unk_1E817E818;
    v5[4] = self;
    v4 = [(ARServerConnection *)serverConnection synchronousRemoteObjectProxyWithErrorHandler:v5];
    [v4 start];
  }
}

void __23__ARRemoteSensor_start__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_12();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (void)stop
{
  if ([(ARRemoteSensor *)self isRunning])
  {
    [(ARRemoteSensor *)self setRunning:0];
    serverConnection = self->_serverConnection;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __22__ARRemoteSensor_stop__block_invoke;
    v5[3] = &unk_1E817E818;
    v5[4] = self;
    v4 = [(ARServerConnection *)serverConnection synchronousRemoteObjectProxyWithErrorHandler:v5];
    [v4 stop];
  }
}

void __22__ARRemoteSensor_stop__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _ARLogSensor_12();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Failed to send data to service - error: %@", &v8, 0x20u);
  }
}

- (ARSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end