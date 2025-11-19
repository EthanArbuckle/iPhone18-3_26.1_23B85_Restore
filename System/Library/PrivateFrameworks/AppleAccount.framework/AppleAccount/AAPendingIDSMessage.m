@interface AAPendingIDSMessage
- (id)initCustodianMessageFrom:(id)a3 data:(id)a4 sentToHandleUri:(id)a5;
- (id)initInheritanceMessageFrom:(id)a3 data:(id)a4 sentToHandleUri:(id)a5;
@end

@implementation AAPendingIDSMessage

- (id)initInheritanceMessageFrom:(id)a3 data:(id)a4 sentToHandleUri:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AAPendingIDSMessage;
  v11 = [(AAPendingIDSMessage *)&v16 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] aa_handleForIDSDestination:v8];
    senderHandle = v11->_senderHandle;
    v11->_senderHandle = v12;
    v14 = v12;

    objc_storeStrong(&v11->_sentToHandleUri, a5);
    objc_storeStrong(&v11->_data, a4);

    v11->_type = 1;
  }

  return v11;
}

- (id)initCustodianMessageFrom:(id)a3 data:(id)a4 sentToHandleUri:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = AAPendingIDSMessage;
  v11 = [(AAPendingIDSMessage *)&v16 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] aa_handleForIDSDestination:v8];
    senderHandle = v11->_senderHandle;
    v11->_senderHandle = v12;
    v14 = v12;

    objc_storeStrong(&v11->_sentToHandleUri, a5);
    objc_storeStrong(&v11->_data, a4);

    v11->_type = 0;
  }

  return v11;
}

@end