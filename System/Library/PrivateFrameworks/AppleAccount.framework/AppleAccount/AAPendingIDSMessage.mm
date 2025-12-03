@interface AAPendingIDSMessage
- (id)initCustodianMessageFrom:(id)from data:(id)data sentToHandleUri:(id)uri;
- (id)initInheritanceMessageFrom:(id)from data:(id)data sentToHandleUri:(id)uri;
@end

@implementation AAPendingIDSMessage

- (id)initInheritanceMessageFrom:(id)from data:(id)data sentToHandleUri:(id)uri
{
  fromCopy = from;
  dataCopy = data;
  uriCopy = uri;
  v16.receiver = self;
  v16.super_class = AAPendingIDSMessage;
  v11 = [(AAPendingIDSMessage *)&v16 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] aa_handleForIDSDestination:fromCopy];
    senderHandle = v11->_senderHandle;
    v11->_senderHandle = v12;
    v14 = v12;

    objc_storeStrong(&v11->_sentToHandleUri, uri);
    objc_storeStrong(&v11->_data, data);

    v11->_type = 1;
  }

  return v11;
}

- (id)initCustodianMessageFrom:(id)from data:(id)data sentToHandleUri:(id)uri
{
  fromCopy = from;
  dataCopy = data;
  uriCopy = uri;
  v16.receiver = self;
  v16.super_class = AAPendingIDSMessage;
  v11 = [(AAPendingIDSMessage *)&v16 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] aa_handleForIDSDestination:fromCopy];
    senderHandle = v11->_senderHandle;
    v11->_senderHandle = v12;
    v14 = v12;

    objc_storeStrong(&v11->_sentToHandleUri, uri);
    objc_storeStrong(&v11->_data, data);

    v11->_type = 0;
  }

  return v11;
}

@end