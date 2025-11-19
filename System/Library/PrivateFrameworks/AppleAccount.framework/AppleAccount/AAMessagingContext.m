@interface AAMessagingContext
- (AAMessagingContext)initWithContext:(id)a3;
@end

@implementation AAMessagingContext

- (AAMessagingContext)initWithContext:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = AAMessagingContext;
  v6 = [(AAMessagingContext *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v7->_expectsPeerResponse = [(IDSMessageContext *)v7->_context expectsPeerResponse];
    v8 = [(IDSMessageContext *)v7->_context outgoingResponseIdentifier];
    outgoingResponseIdentifier = v7->_outgoingResponseIdentifier;
    v7->_outgoingResponseIdentifier = v8;

    v10 = [(IDSMessageContext *)v7->_context senderCorrelationIdentifier];
    senderCorrelationIdentifier = v7->_senderCorrelationIdentifier;
    v7->_senderCorrelationIdentifier = v10;

    v12 = [(IDSMessageContext *)v7->_context incomingResponseIdentifier];
    incomingResponseIdentifier = v7->_incomingResponseIdentifier;
    v7->_incomingResponseIdentifier = v12;

    v14 = [(IDSMessageContext *)v7->_context fromID];

    if (v14)
    {
      v15 = [AAMessagingDestination alloc];
      v16 = [(IDSMessageContext *)v7->_context fromID];
      v17 = [(AAMessagingDestination *)v15 initWithHandle:v16];
      fromID = v7->_fromID;
      v7->_fromID = v17;

      v19 = [AAMessagingDestination alloc];
      v20 = [(IDSMessageContext *)v7->_context toID];
      v21 = [(AAMessagingDestination *)v19 initWithHandle:v20];
      toID = v7->_toID;
      v7->_toID = v21;
    }
  }

  return v7;
}

@end