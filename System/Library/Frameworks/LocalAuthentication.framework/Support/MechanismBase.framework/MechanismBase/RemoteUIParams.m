@interface RemoteUIParams
- (RemoteUIParams)initWithMechanism:(id)a3 hostedRemoteController:(int64_t)a4;
- (id)description;
@end

@implementation RemoteUIParams

- (RemoteUIParams)initWithMechanism:(id)a3 hostedRemoteController:(int64_t)a4
{
  v7 = a3;
  v21.receiver = self;
  v21.super_class = RemoteUIParams;
  v8 = [(RemoteUIParams *)&v21 init];
  if (v8)
  {
    v9 = [v7 request];
    evaluationRequest = v8->_evaluationRequest;
    v8->_evaluationRequest = v9;

    v8->_hostedRemoteController = a4;
    objc_storeStrong(&v8->_uiMechanism, a3);
    v11 = objc_alloc(MEMORY[0x277D24110]);
    v12 = [v7 request];
    v13 = [v11 initWithIdentifier:4 evaluationRequest:v12];
    uiRequest = v8->_uiRequest;
    v8->_uiRequest = v13;

    v15 = MEMORY[0x277CCACA8];
    v16 = [(RemoteUIParams *)v8 requestID];
    v17 = [(RemoteUIParams *)v8 uiMechanism];
    v18 = [v15 stringWithFormat:@"%u-%u-%li", v16, objc_msgSend(v17, "instanceId"), -[RemoteUIParams hostedRemoteController](v8, "hostedRemoteController")];
    identifier = v8->_identifier;
    v8->_identifier = v18;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(RemoteUIParams *)self identifier];
  v5 = [(RemoteUIParams *)self forSoftwareUpdate];
  v6 = [(RemoteUIParams *)self forSiri];
  v7 = [(RemoteUIParams *)self userId];
  v8 = [v3 stringWithFormat:@"<RemoteUIParams ID:%@, SU: %d, Siri: %d, uid: %@, pid: %u, lsai: %d>", v4, v5, v6, v7, -[RemoteUIParams pid](self, "pid"), -[RemoteUIParams lsApplicationIdentity](self, "lsApplicationIdentity")];

  return v8;
}

@end