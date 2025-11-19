@interface _GCIPCRemoteIncomingConnection
- (_GCIPCProcess)process;
- (_GCIPCRemoteIncomingConnection)initWithConnection:(id)a3;
- (_GCIPCRemoteIncomingConnection)initWithConnection:(id)a3 fromProcess:(id)a4;
@end

@implementation _GCIPCRemoteIncomingConnection

- (_GCIPCRemoteIncomingConnection)initWithConnection:(id)a3 fromProcess:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    [v7 auditToken];
    if (v9)
    {
LABEL_3:
      [v9 auditToken];
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v17 = 0u;
  v18 = 0u;
LABEL_6:
  if (v19 != v17 || *(&v19 + 1) != *(&v17 + 1) || v20 != v18 || *(&v20 + 1) != *(&v18 + 1))
  {
    [(_GCIPCRemoteIncomingConnection *)a2 initWithConnection:v7 fromProcess:v9];
  }

  v16.receiver = self;
  v16.super_class = _GCIPCRemoteIncomingConnection;
  v13 = [(GCIPCRemoteIncomingConnection *)&v16 initWithConnection:v7];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_process, v9);
  }

  return v14;
}

- (_GCIPCRemoteIncomingConnection)initWithConnection:(id)a3
{
  [(_GCIPCRemoteIncomingConnection *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCIPCProcess)process
{
  WeakRetained = objc_loadWeakRetained(&self->_process);

  return WeakRetained;
}

- (void)initWithConnection:(uint64_t)a3 fromProcess:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"GCIPCIncomingConnection+GameController.m" lineNumber:23 description:{@"Connection %@ is not from process %@.", a3, a4}];
}

@end