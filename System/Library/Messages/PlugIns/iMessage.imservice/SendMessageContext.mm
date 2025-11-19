@interface SendMessageContext
- (SendMessageContext)initWithChat:(id)a3 withIMDAccount:(id)a4 withIDSAccount:(id)a5 withCallerURI:(id)a6 serviceSession:(id)a7 withIDSService:(id)a8 withParticipantURIs:(id)a9 withOriginalParticipantURIs:(id)a10;
@end

@implementation SendMessageContext

- (SendMessageContext)initWithChat:(id)a3 withIMDAccount:(id)a4 withIDSAccount:(id)a5 withCallerURI:(id)a6 serviceSession:(id)a7 withIDSService:(id)a8 withParticipantURIs:(id)a9 withOriginalParticipantURIs:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v42 = a10;
  v43.receiver = self;
  v43.super_class = SendMessageContext;
  v22 = [(SendMessageContext *)&v43 init];
  chat = v22->_chat;
  v22->_chat = v15;
  v24 = v15;

  imdAccount = v22->_imdAccount;
  v22->_imdAccount = v16;
  v26 = v16;

  idsAccount = v22->_idsAccount;
  v22->_idsAccount = v17;
  v28 = v17;

  fromURI = v22->_fromURI;
  v22->_fromURI = v18;
  v30 = v18;

  serviceSession = v22->_serviceSession;
  v22->_serviceSession = v19;
  v32 = v19;

  idsService = v22->_idsService;
  v22->_idsService = v20;
  v34 = v20;

  participantURIs = v22->_participantURIs;
  v22->_participantURIs = v21;
  v36 = v21;

  originalParticipantURIs = v22->_originalParticipantURIs;
  v22->_originalParticipantURIs = v42;
  v38 = v42;

  sendDuration = v22->_sendDuration;
  v22->_sendDuration = &off_1196A8;

  return v22;
}

@end