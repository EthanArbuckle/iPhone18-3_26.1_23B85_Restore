@interface APSSharedEncoder
- (APSSharedCoderDelegate)delegate;
- (APSSharedEncoder)initWithMaxTableSize:(unint64_t)size shouldUsePack:(BOOL)pack direction:(int)direction;
- (id)copyMessageData;
- (void)appendBinaryPropertyListItem:(unsigned __int8)item data:(id)data isIndexable:(BOOL)indexable;
- (void)appendItem:(unsigned __int8)item data:(id)data isIndexable:(BOOL)indexable;
- (void)appendItem:(unsigned __int8)item string:(id)string isIndexable:(BOOL)indexable;
- (void)dealloc;
@end

@implementation APSSharedEncoder

- (id)copyMessageData
{
  v11 = 0x10000;
  v3 = [[NSMutableData alloc] initWithLength:0x10000];
  usingPack = [(APSSharedEncoder *)self usingPack];
  courierMessage = self->_courierMessage;
  v6 = v3;
  if (usingPack)
  {
    if (!uaps::CourierMessage::encodePacked(courierMessage, [v3 mutableBytes], &v11, self->_packState))
    {
      goto LABEL_8;
    }
  }

  else if (!uaps::CourierMessage::encodeSerialized(courierMessage, [v3 mutableBytes], &v11, self->_serialState))
  {
LABEL_8:
    delegate = [(APSSharedEncoder *)self delegate];
    [delegate sharedCoderEncounteredParsingFailure:self];

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

- (APSSharedEncoder)initWithMaxTableSize:(unint64_t)size shouldUsePack:(BOOL)pack direction:(int)direction
{
  v9.receiver = self;
  v9.super_class = APSSharedEncoder;
  v7 = [(APSSharedEncoder *)&v9 init];
  if (v7)
  {
    v7->_maxTableSize = size;
    v7->_usingPack = pack;
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

- (void)appendItem:(unsigned __int8)item data:(id)data isIndexable:(BOOL)indexable
{
  indexableCopy = indexable;
  itemCopy = item;
  dataCopy = data;
  courierMessage = self->_courierMessage;
  v10 = dataCopy;
  uaps::CourierMessage::addData(courierMessage, itemCopy, [v10 bytes], objc_msgSend(v10, "length"), indexableCopy);
}

- (void)appendItem:(unsigned __int8)item string:(id)string isIndexable:(BOOL)indexable
{
  indexableCopy = indexable;
  itemCopy = item;
  stringCopy = string;
  courierMessage = self->_courierMessage;
  v10 = stringCopy;
  uaps::CourierMessage::addString(courierMessage, itemCopy, [v10 cStringUsingEncoding:4], objc_msgSend(v10, "length"), indexableCopy);
}

- (void)appendBinaryPropertyListItem:(unsigned __int8)item data:(id)data isIndexable:(BOOL)indexable
{
  itemCopy = item;
  dataCopy = data;
  courierMessage = self->_courierMessage;
  v9 = dataCopy;
  uaps::CourierMessage::addBinaryPropertyList(courierMessage, itemCopy, [v9 bytes], objc_msgSend(v9, "length"));
}

- (APSSharedCoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end