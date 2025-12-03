@interface SendMessageContext
- (SendMessageContext)initWithChat:(id)chat withIMDAccount:(id)account withIDSAccount:(id)sAccount withCallerURI:(id)i serviceSession:(id)session withIDSService:(id)service withParticipantURIs:(id)is withOriginalParticipantURIs:(id)self0;
@end

@implementation SendMessageContext

- (SendMessageContext)initWithChat:(id)chat withIMDAccount:(id)account withIDSAccount:(id)sAccount withCallerURI:(id)i serviceSession:(id)session withIDSService:(id)service withParticipantURIs:(id)is withOriginalParticipantURIs:(id)self0
{
  chatCopy = chat;
  accountCopy = account;
  sAccountCopy = sAccount;
  iCopy = i;
  sessionCopy = session;
  serviceCopy = service;
  isCopy = is;
  rIsCopy = rIs;
  v43.receiver = self;
  v43.super_class = SendMessageContext;
  v22 = [(SendMessageContext *)&v43 init];
  chat = v22->_chat;
  v22->_chat = chatCopy;
  v24 = chatCopy;

  imdAccount = v22->_imdAccount;
  v22->_imdAccount = accountCopy;
  v26 = accountCopy;

  idsAccount = v22->_idsAccount;
  v22->_idsAccount = sAccountCopy;
  v28 = sAccountCopy;

  fromURI = v22->_fromURI;
  v22->_fromURI = iCopy;
  v30 = iCopy;

  serviceSession = v22->_serviceSession;
  v22->_serviceSession = sessionCopy;
  v32 = sessionCopy;

  idsService = v22->_idsService;
  v22->_idsService = serviceCopy;
  v34 = serviceCopy;

  participantURIs = v22->_participantURIs;
  v22->_participantURIs = isCopy;
  v36 = isCopy;

  originalParticipantURIs = v22->_originalParticipantURIs;
  v22->_originalParticipantURIs = rIsCopy;
  v38 = rIsCopy;

  sendDuration = v22->_sendDuration;
  v22->_sendDuration = &off_1196A8;

  return v22;
}

@end