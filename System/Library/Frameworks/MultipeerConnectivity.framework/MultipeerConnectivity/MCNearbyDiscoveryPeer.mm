@interface MCNearbyDiscoveryPeer
- (MCNearbyDiscoveryPeer)init;
- (MCNearbyDiscoveryPeer)initWithPeerID:(id)d;
- (id)description;
- (id)stringForState:(int)state;
- (void)attachConnection:(id)connection;
- (void)closeConnection;
- (void)dealloc;
- (void)flushDataBuffer;
- (void)invalidate;
- (void)sendData:(id)data withCompletionHandler:(id)handler;
@end

@implementation MCNearbyDiscoveryPeer

- (MCNearbyDiscoveryPeer)init
{
  v3.receiver = self;
  v3.super_class = MCNearbyDiscoveryPeer;
  [(MCNearbyDiscoveryPeer *)&v3 doesNotRecognizeSelector:a2];
  return 0;
}

- (MCNearbyDiscoveryPeer)initWithPeerID:(id)d
{
  v6.receiver = self;
  v6.super_class = MCNearbyDiscoveryPeer;
  v4 = [(MCNearbyDiscoveryPeer *)&v6 init];
  if (v4)
  {
    v4->_peerID = [d copy];
    v4->_sendDataBuffer = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v4;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = mcdp_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating peer [%@].", buf, 0xCu);
  }

  [(MCNearbyDiscoveryPeer *)self flushDataBuffer];

  [(MCNearbyDiscoveryPeerConnection *)self->_connection invalidate];
  self->_connection = 0;
  [(MCNearbyDiscoveryPeerConnection *)self->_trialConnection invalidate];

  self->_trialConnection = 0;
  v5.receiver = self;
  v5.super_class = MCNearbyDiscoveryPeer;
  [(MCNearbyDiscoveryPeer *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  peerID = [(MCNearbyDiscoveryPeer *)self peerID];

  return [(MCPeerID *)peerID displayNameAndPID];
}

- (void)attachConnection:(id)connection
{
  [(MCNearbyDiscoveryPeer *)self setConnection:?];
  if ([(MCNearbyDiscoveryPeer *)self trialConnection]!= connection)
  {
    [(MCNearbyDiscoveryPeerConnection *)[(MCNearbyDiscoveryPeer *)self trialConnection] invalidate];
  }

  [(MCNearbyDiscoveryPeer *)self setTrialConnection:0];
}

- (void)closeConnection
{
  [(MCNearbyDiscoveryPeerConnection *)[(MCNearbyDiscoveryPeer *)self connection] invalidate];

  [(MCNearbyDiscoveryPeer *)self setConnection:0];
}

- (void)invalidate
{
  [(MCNearbyDiscoveryPeerConnection *)self->_connection invalidate];
  trialConnection = self->_trialConnection;

  [(MCNearbyDiscoveryPeerConnection *)trialConnection invalidate];
}

- (id)stringForState:(int)state
{
  v12 = *MEMORY[0x277D85DE8];
  if (state >= 3)
  {
    v6 = mcdp_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      selfCopy = self;
      v10 = 1024;
      stateCopy = state;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Peer [%@] unrecognized state [%d].", &v8, 0x12u);
    }

    result = @"unknown";
  }

  else
  {
    result = off_278B447F8[state];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)sendData:(id)data withCompletionHandler:(id)handler
{
  if (self->_state == 2)
  {
    connection = self->_connection;

    [(MCNearbyDiscoveryPeerConnection *)connection sendData:data withCompletionHandler:handler];
  }

  else
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{data, @"NSNearbyDiscoveryPeerSendDataKey", handler, @"NSNearbyDiscoveryPeerSendCompletionHandlerKey", 0}];
    sendDataBuffer = self->_sendDataBuffer;

    [(NSMutableArray *)sendDataBuffer addObject:v6];
  }
}

- (void)flushDataBuffer
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_state == 2)
  {
    v3 = mcdp_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableArray *)self->_sendDataBuffer count];
      *buf = 138412546;
      selfCopy2 = self;
      v32 = 1024;
      v33 = v4;
      _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Peer [%@] relaying buffered data (%d sendData calls) to the peer connection object).", buf, 0x12u);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    sendDataBuffer = self->_sendDataBuffer;
    v6 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(sendDataBuffer);
          }

          -[MCNearbyDiscoveryPeerConnection sendData:withCompletionHandler:](self->_connection, "sendData:withCompletionHandler:", [*(*(&v24 + 1) + 8 * i) objectForKey:@"NSNearbyDiscoveryPeerSendDataKey"], objc_msgSend(*(*(&v24 + 1) + 8 * i), "objectForKey:", @"NSNearbyDiscoveryPeerSendCompletionHandlerKey"));
        }

        v7 = [(NSMutableArray *)sendDataBuffer countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }
  }

  else if ([(NSMutableArray *)self->_sendDataBuffer count])
  {
    v10 = mcdp_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSMutableArray *)self->_sendDataBuffer count];
      *buf = 138412546;
      selfCopy2 = self;
      v32 = 1024;
      v33 = v11;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Peer [%@] failed to send [%d] messages.", buf, 0x12u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = self->_sendDataBuffer;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      v16 = *MEMORY[0x277CCA450];
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = [*(*(&v20 + 1) + 8 * j) objectForKey:@"NSNearbyDiscoveryPeerSendCompletionHandlerKey"];
          if (v18)
          {
            (*(v18 + 16))(v18, [MEMORY[0x277CCA9B8] errorWithDomain:@"NSNearbyDiscoveryPeer" code:-1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Peer doesn't have a connection object", v16)}]);
          }
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v14);
    }
  }

  [(NSMutableArray *)self->_sendDataBuffer removeAllObjects];
  v19 = *MEMORY[0x277D85DE8];
}

@end