@interface RemoteUIParams
- (RemoteUIParams)initWithMechanism:(id)mechanism hostedRemoteController:(int64_t)controller;
- (id)description;
@end

@implementation RemoteUIParams

- (RemoteUIParams)initWithMechanism:(id)mechanism hostedRemoteController:(int64_t)controller
{
  mechanismCopy = mechanism;
  v21.receiver = self;
  v21.super_class = RemoteUIParams;
  v8 = [(RemoteUIParams *)&v21 init];
  if (v8)
  {
    request = [mechanismCopy request];
    evaluationRequest = v8->_evaluationRequest;
    v8->_evaluationRequest = request;

    v8->_hostedRemoteController = controller;
    objc_storeStrong(&v8->_uiMechanism, mechanism);
    v11 = objc_alloc(MEMORY[0x277D24110]);
    request2 = [mechanismCopy request];
    v13 = [v11 initWithIdentifier:4 evaluationRequest:request2];
    uiRequest = v8->_uiRequest;
    v8->_uiRequest = v13;

    v15 = MEMORY[0x277CCACA8];
    requestID = [(RemoteUIParams *)v8 requestID];
    uiMechanism = [(RemoteUIParams *)v8 uiMechanism];
    v18 = [v15 stringWithFormat:@"%u-%u-%li", requestID, objc_msgSend(uiMechanism, "instanceId"), -[RemoteUIParams hostedRemoteController](v8, "hostedRemoteController")];
    identifier = v8->_identifier;
    v8->_identifier = v18;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(RemoteUIParams *)self identifier];
  forSoftwareUpdate = [(RemoteUIParams *)self forSoftwareUpdate];
  forSiri = [(RemoteUIParams *)self forSiri];
  userId = [(RemoteUIParams *)self userId];
  v8 = [v3 stringWithFormat:@"<RemoteUIParams ID:%@, SU: %d, Siri: %d, uid: %@, pid: %u, lsai: %d>", identifier, forSoftwareUpdate, forSiri, userId, -[RemoteUIParams pid](self, "pid"), -[RemoteUIParams lsApplicationIdentity](self, "lsApplicationIdentity")];

  return v8;
}

@end