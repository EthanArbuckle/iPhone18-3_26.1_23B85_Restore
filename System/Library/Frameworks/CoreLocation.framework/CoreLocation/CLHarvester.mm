@interface CLHarvester
- (id)currentStateDictionary;
- (void)connect;
- (void)dealloc;
- (void)submitSample:(id)sample;
@end

@implementation CLHarvester

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHarvester;
  [(CLHarvester *)&v3 dealloc];
}

- (void)connect
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.locationd.harvester" options:4096];
  self->_connection = v3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0EAD240];
    [v4 setClass:NSClassFromString(&cfstr_Clppoiharvest.isa) forSelector:sel_submitSample_ argumentIndex:0 ofReply:0];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    [v4 setClasses:objc_msgSend(v5 forSelector:"setWithObjects:" argumentIndex:v6 ofReply:{v7, v8, objc_opt_class(), 0), sel_fetchStateWithReply_, 0, 1}];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v4];
    connection = self->_connection;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B9DBD1C;
    v10[3] = &unk_1E753CC90;
    v10[4] = self;
    [(NSXPCConnection *)connection setInvalidationHandler:v10];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&unk_1F0E6E768];
    [(NSXPCConnection *)self->_connection resume];
  }
}

- (void)submitSample:(id)sample
{
  connection = self->_connection;
  if (!connection)
  {
    [(CLHarvester *)self connect];
    connection = self->_connection;
  }

  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];

  MEMORY[0x1EEE66B58](remoteObjectProxy, sel_submitSample_);
}

- (id)currentStateDictionary
{
  connection = self->_connection;
  if (!connection)
  {
    [(CLHarvester *)self connect];
    connection = self->_connection;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_19B9DC1D8;
  v12 = sub_19B9DC1E8;
  v13 = 0;
  v4 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&unk_1F0E6E788];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9DC398;
  v7[3] = &unk_1E753E5B8;
  v7[4] = &v8;
  [v4 fetchStateWithReply:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

@end