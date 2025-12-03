@interface CTStewieTransportMessage
+ (id)allowedSetOfClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransportMessage:(id)message;
- (CTStewieTransportMessage)init;
- (CTStewieTransportMessage)initWithCoder:(id)coder;
- (CTStewieTransportMessage)initWithMsgId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieTransportMessage

- (CTStewieTransportMessage)init
{
  v10.receiver = self;
  v10.super_class = CTStewieTransportMessage;
  v2 = [(CTStewieTransportMessage *)&v10 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    msgId = v2->_msgId;
    v2->_msgId = uUIDString;

    data = v2->_data;
    v2->_data = 0;

    metadata = v2->_metadata;
    v2->_metadata = 0;

    v8 = v2;
  }

  return v2;
}

- (CTStewieTransportMessage)initWithMsgId:(id)id
{
  idCopy = id;
  v12.receiver = self;
  v12.super_class = CTStewieTransportMessage;
  v6 = [(CTStewieTransportMessage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_msgId, id);
    data = v7->_data;
    v7->_data = 0;

    metadata = v7->_metadata;
    v7->_metadata = 0;

    v10 = v7;
  }

  return v7;
}

- (id)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  msgId = [(CTStewieTransportMessage *)self msgId];
  [v4 appendFormat:@", msgId=%@", msgId];

  data = [(CTStewieTransportMessage *)self data];
  if (data)
  {
    data2 = [(CTStewieTransportMessage *)self data];
    v7 = [data2 length];
  }

  else
  {
    v7 = 0;
  }

  [v4 appendFormat:@", data length=%lu", v7];
  if (data)
  {
  }

  metadata = [(CTStewieTransportMessage *)self metadata];
  [v4 appendFormat:@", metadata=%@", metadata];

  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToTransportMessage:(id)message
{
  messageCopy = message;
  msgId = [(CTStewieTransportMessage *)self msgId];
  msgId2 = [messageCopy msgId];
  if (msgId != msgId2)
  {
    msgId3 = [(CTStewieTransportMessage *)self msgId];
    msgId4 = [messageCopy msgId];
    if (![msgId3 isEqual:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  data = [(CTStewieTransportMessage *)self data];
  data2 = [messageCopy data];
  if (data != data2)
  {
    data3 = [(CTStewieTransportMessage *)self data];
    data4 = [messageCopy data];
    if (![data3 isEqual:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  metadata = [(CTStewieTransportMessage *)self metadata];
  metadata2 = [messageCopy metadata];
  v12 = metadata2;
  if (metadata == metadata2)
  {

    v7 = 1;
  }

  else
  {
    metadata3 = [(CTStewieTransportMessage *)self metadata];
    metadata4 = [messageCopy metadata];
    v7 = [metadata3 isEqual:metadata4];
  }

  if (data != data2)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (msgId != msgId2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieTransportMessage *)self isEqualToTransportMessage:equalCopy];
  }

  return v5;
}

+ (id)allowedSetOfClasses
{
  v25 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v25 setWithObjects:{v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  msgId = [(CTStewieTransportMessage *)self msgId];
  v7 = [msgId copyWithZone:zone];
  [v5 setMsgId:v7];

  data = [(CTStewieTransportMessage *)self data];
  v9 = [data copyWithZone:zone];
  [v5 setData:v9];

  metadata = [(CTStewieTransportMessage *)self metadata];
  v11 = [metadata copyWithZone:zone];
  [v5 setMetadata:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  msgId = [(CTStewieTransportMessage *)self msgId];
  [coderCopy encodeObject:msgId forKey:@"msgId"];

  data = [(CTStewieTransportMessage *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  metadata = [(CTStewieTransportMessage *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (CTStewieTransportMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CTStewieTransportMessage;
  v5 = [(CTStewieTransportMessage *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"msgId"];
    msgId = v5->_msgId;
    v5->_msgId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v17;

    v19 = v5;
  }

  return v5;
}

@end