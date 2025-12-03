@interface AllowedTransfer
- (AllowedTransfer)initWithReceiverAuditTokenData:(id)data sender:(id)sender;
- (AllowedTransfer)initWithSender:(id)sender;
- (AllowedTransfer)initWithServerToken:(id)token sender:(id)sender;
- (BOOL)isReceiver:(id)receiver allowedToConnectWithServerToken:(id)token senderAuditTokenData:(id)data;
- (id)description;
@end

@implementation AllowedTransfer

- (AllowedTransfer)initWithReceiverAuditTokenData:(id)data sender:(id)sender
{
  dataCopy = data;
  v8 = [(AllowedTransfer *)self initWithSender:sender];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_receiverAuditTokenData, data);
  }

  return v9;
}

- (AllowedTransfer)initWithServerToken:(id)token sender:(id)sender
{
  tokenCopy = token;
  v8 = [(AllowedTransfer *)self initWithSender:sender];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serverToken, token);
  }

  return v9;
}

- (AllowedTransfer)initWithSender:(id)sender
{
  senderCopy = sender;
  v9.receiver = self;
  v9.super_class = AllowedTransfer;
  v6 = [(AllowedTransfer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sender, sender);
  }

  return v7;
}

- (id)description
{
  if (self->_receiverAuditTokenData)
  {
    v3 = [(Caller *)self->_sender pid];
    auditTokenData = [(Caller *)self->_sender auditTokenData];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<AllowedTransfer SPID: %d SAT: %x RAT: %x>", v3, [auditTokenData hash], -[NSData hash](self->_receiverAuditTokenData, "hash"));
    v6 = LABEL_5:;

    goto LABEL_6;
  }

  if (self->_serverToken)
  {
    v5 = [(Caller *)self->_sender pid];
    auditTokenData = [(Caller *)self->_sender auditTokenData];
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<AllowedTransfer SPID: %d SAT: %x ST: %x>", v5, [auditTokenData hash], -[NSData hash](self->_serverToken, "hash"));
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = AllowedTransfer;
  v6 = [(AllowedTransfer *)&v8 description];
LABEL_6:

  return v6;
}

- (BOOL)isReceiver:(id)receiver allowedToConnectWithServerToken:(id)token senderAuditTokenData:(id)data
{
  receiverCopy = receiver;
  tokenCopy = token;
  if (![(Caller *)self->_sender isEqualToAuditTokenData:data])
  {
    goto LABEL_7;
  }

  if (!self->_receiverAuditTokenData)
  {
    if (self->_serverToken)
    {
      v10 = [tokenCopy isEqualToData:?];
      goto LABEL_6;
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v10 = [receiverCopy isEqualToAuditTokenData:?];
LABEL_6:
  v11 = v10;
LABEL_8:

  return v11;
}

@end