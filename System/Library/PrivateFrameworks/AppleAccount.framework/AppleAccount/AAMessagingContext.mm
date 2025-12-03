@interface AAMessagingContext
- (AAMessagingContext)initWithContext:(id)context;
@end

@implementation AAMessagingContext

- (AAMessagingContext)initWithContext:(id)context
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = AAMessagingContext;
  v6 = [(AAMessagingContext *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v7->_expectsPeerResponse = [(IDSMessageContext *)v7->_context expectsPeerResponse];
    outgoingResponseIdentifier = [(IDSMessageContext *)v7->_context outgoingResponseIdentifier];
    outgoingResponseIdentifier = v7->_outgoingResponseIdentifier;
    v7->_outgoingResponseIdentifier = outgoingResponseIdentifier;

    senderCorrelationIdentifier = [(IDSMessageContext *)v7->_context senderCorrelationIdentifier];
    senderCorrelationIdentifier = v7->_senderCorrelationIdentifier;
    v7->_senderCorrelationIdentifier = senderCorrelationIdentifier;

    incomingResponseIdentifier = [(IDSMessageContext *)v7->_context incomingResponseIdentifier];
    incomingResponseIdentifier = v7->_incomingResponseIdentifier;
    v7->_incomingResponseIdentifier = incomingResponseIdentifier;

    fromID = [(IDSMessageContext *)v7->_context fromID];

    if (fromID)
    {
      v15 = [AAMessagingDestination alloc];
      fromID2 = [(IDSMessageContext *)v7->_context fromID];
      v17 = [(AAMessagingDestination *)v15 initWithHandle:fromID2];
      fromID = v7->_fromID;
      v7->_fromID = v17;

      v19 = [AAMessagingDestination alloc];
      toID = [(IDSMessageContext *)v7->_context toID];
      v21 = [(AAMessagingDestination *)v19 initWithHandle:toID];
      toID = v7->_toID;
      v7->_toID = v21;
    }
  }

  return v7;
}

@end