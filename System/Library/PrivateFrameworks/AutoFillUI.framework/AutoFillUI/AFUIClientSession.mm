@interface AFUIClientSession
- (AFUIClientSession)init;
- (id)_presenter;
- (void)_configureNSXPCConnection:(id)a3 withMachName:(id)a4;
- (void)_initializeBSServiceConnection;
- (void)dealloc;
- (void)displayForDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5;
- (void)documentStateChanged:(id)a3;
- (void)hide;
@end

@implementation AFUIClientSession

- (AFUIClientSession)init
{
  v5.receiver = self;
  v5.super_class = AFUIClientSession;
  v2 = [(AFUIClientSession *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AFUIClientSession *)v2 _initializeBSServiceConnection];
  }

  return v3;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = AFUIClientSession;
  [(AFUIClientSession *)&v4 dealloc];
}

- (void)displayForDocumentTraits:(id)a3 documentState:(id)a4 textOperationsHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AFUIClientSession *)self _presenter];
  [v11 displayForDocumentTraits:v10 documentState:v9 textOperationsHandler:v8];
}

- (void)documentStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(AFUIClientSession *)self _presenter];
  [v5 documentStateChanged:v4];
}

- (void)hide
{
  v2 = [(AFUIClientSession *)self _presenter];
  [v2 hide];
}

- (void)_initializeBSServiceConnection
{
  v6 = [MEMORY[0x1E698F498] endpointForMachName:@"com.apple.inputservice.input-ui-host" service:@"com.apple.inputservice.AutoFillUI" instance:0];
  v3 = [MEMORY[0x1E698F490] NSXPCConnectionWithEndpoint:v6 configurator:&__block_literal_global_0];
  [(AFUIClientSession *)self _configureNSXPCConnection:v3 withMachName:@"com.apple.inputservice.input-ui-host"];
  connection = self->_connection;
  self->_connection = v3;
  v5 = v3;

  [(NSXPCConnection *)self->_connection activate];
}

void __51__AFUIClientSession__initializeBSServiceConnection__block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C7560];
  v3 = a2;
  v4 = [v2 attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setPerMessageAssertionAttributes:v5];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_configureNSXPCConnection:(id)a3 withMachName:(id)a4
{
  v4 = MEMORY[0x1E696B0D0];
  v5 = a3;
  v6 = [v4 interfaceWithProtocol:&unk_1F4EAF8E8];
  [v5 setRemoteObjectInterface:v6];
}

- (id)_presenter
{
  v2 = [(AFUIClientSession *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

@end