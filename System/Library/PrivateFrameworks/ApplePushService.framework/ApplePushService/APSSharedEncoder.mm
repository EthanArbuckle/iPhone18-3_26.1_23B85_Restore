@interface APSSharedEncoder
- (APSSharedCoderDelegate)delegate;
- (APSSharedEncoder)initWithMaxTableSize:(unint64_t)a3 shouldUsePack:(BOOL)a4 direction:(int)a5;
- (id)copyMessageData;
- (void)appendBinaryPropertyListItem:(unsigned __int8)a3 data:(id)a4 isIndexable:(BOOL)a5;
- (void)appendItem:(unsigned __int8)a3 data:(id)a4 isIndexable:(BOOL)a5;
- (void)appendItem:(unsigned __int8)a3 string:(id)a4 isIndexable:(BOOL)a5;
- (void)dealloc;
@end

@implementation APSSharedEncoder

- (id)copyMessageData
{
  v11 = 0x10000;
  v3 = [[NSMutableData alloc] initWithLength:0x10000];
  v4 = [(APSSharedEncoder *)self usingPack];
  courierMessage = self->_courierMessage;
  v6 = v3;
  if (v4)
  {
    if (!uaps::CourierMessage::encodePacked(courierMessage, [v3 mutableBytes], &v11, self->_packState))
    {
      goto LABEL_8;
    }
  }

  else if (!uaps::CourierMessage::encodeSerialized(courierMessage, [v3 mutableBytes], &v11, self->_serialState))
  {
LABEL_8:
    v9 = [(APSSharedEncoder *)self delegate];
    [v9 sharedCoderEncounteredParsingFailure:self];

    v8 = 0;
    goto LABEL_9;
  }

  [v3 setLength:v11];
  v7 = self->_courierMessage;
  if (v7)
  {
    (*(v7->var0 + 1))(v7);
  }

  self->_courierMessage = 0;
  v8 = v3;
LABEL_9:

  return v8;
}

- (APSSharedEncoder)initWithMaxTableSize:(unint64_t)a3 shouldUsePack:(BOOL)a4 direction:(int)a5
{
  v9.receiver = self;
  v9.super_class = APSSharedEncoder;
  v7 = [(APSSharedEncoder *)&v9 init];
  if (v7)
  {
    v7->_maxTableSize = a3;
    v7->_usingPack = a4;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  keyTable = self->_keyTable;
  if (keyTable)
  {
    (*(keyTable->var0 + 1))(keyTable, a2);
  }

  valueTable = self->_valueTable;
  if (valueTable)
  {
    (*(valueTable->var0 + 1))(valueTable, a2);
  }

  if (self->_packState)
  {
    operator delete();
  }

  if (self->_serialState)
  {
    operator delete();
  }

  courierMessage = self->_courierMessage;
  if (courierMessage)
  {
    (*(courierMessage->var0 + 1))(courierMessage, a2);
  }

  v6.receiver = self;
  v6.super_class = APSSharedEncoder;
  [(APSSharedEncoder *)&v6 dealloc];
}

- (void)appendItem:(unsigned __int8)a3 data:(id)a4 isIndexable:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  courierMessage = self->_courierMessage;
  v10 = v8;
  uaps::CourierMessage::addData(courierMessage, v6, [v10 bytes], objc_msgSend(v10, "length"), v5);
}

- (void)appendItem:(unsigned __int8)a3 string:(id)a4 isIndexable:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  courierMessage = self->_courierMessage;
  v10 = v8;
  uaps::CourierMessage::addString(courierMessage, v6, [v10 cStringUsingEncoding:4], objc_msgSend(v10, "length"), v5);
}

- (void)appendBinaryPropertyListItem:(unsigned __int8)a3 data:(id)a4 isIndexable:(BOOL)a5
{
  v5 = a3;
  v7 = a4;
  courierMessage = self->_courierMessage;
  v9 = v7;
  uaps::CourierMessage::addBinaryPropertyList(courierMessage, v5, [v9 bytes], objc_msgSend(v9, "length"));
}

- (APSSharedCoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end