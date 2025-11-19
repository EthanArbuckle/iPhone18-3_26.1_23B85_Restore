@interface MCSessionPeerState
- (MCSessionPeerState)initWithPeer:(id)a3;
- (id)description;
- (unsigned)newStreamID;
- (unsigned)newStreamOpenRequestID;
- (void)dealloc;
@end

@implementation MCSessionPeerState

- (MCSessionPeerState)initWithPeer:(id)a3
{
  v6.receiver = self;
  v6.super_class = MCSessionPeerState;
  v4 = [(MCSessionPeerState *)&v6 init];
  if (v4)
  {
    v4->_peerID = [a3 copy];
    v4->_state = 0;
    v4->_certificateDecision = 0;
    v4->_incomingStreams = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4->_outgoingStreams = objc_alloc_init(MEMORY[0x277CBEB38]);
    v4->_outgoingStreamRequests = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCSessionPeerState;
  [(MCSessionPeerState *)&v3 dealloc];
}

- (unsigned)newStreamID
{
  objc_sync_enter(self);
  newStreamID = self->_newStreamID;
  self->_newStreamID = newStreamID + 1;
  objc_sync_exit(self);
  return newStreamID & 0x7FFFFFFF;
}

- (unsigned)newStreamOpenRequestID
{
  objc_sync_enter(self);
  newStreamOpenRequestID = self->_newStreamOpenRequestID;
  self->_newStreamOpenRequestID = newStreamOpenRequestID + 1;
  objc_sync_exit(self);
  return newStreamOpenRequestID & 0x7FFFFFFF;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MCPeerID *)[(MCSessionPeerState *)self peerID] displayNameAndPID];
  v5 = [MCSession stringForSessionState:[(MCSessionPeerState *)self state]];
  v6 = [(MCSessionPeerState *)self certificateDecision];
  if (v6 > 3)
  {
    v7 = @"?";
  }

  else
  {
    v7 = *(&off_278B44108 + v6);
  }

  if ([(MCSessionPeerState *)self connectPeerCalled])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  return [v3 stringWithFormat:@"Peer:%@ State:%@ CertDecision:%@ ConnectPeerCalled:%s OstreamRequests:%d Ostreams:%d Istreams:%d.", v4, v5, v7, v8, -[NSMutableDictionary count](-[MCSessionPeerState outgoingStreamRequests](self, "outgoingStreamRequests"), "count"), -[NSMutableDictionary count](-[MCSessionPeerState outgoingStreams](self, "outgoingStreams"), "count"), -[NSMutableDictionary count](-[MCSessionPeerState incomingStreams](self, "incomingStreams"), "count")];
}

@end