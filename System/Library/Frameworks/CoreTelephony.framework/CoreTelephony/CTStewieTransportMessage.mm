@interface CTStewieTransportMessage
+ (id)allowedSetOfClasses;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransportMessage:(id)a3;
- (CTStewieTransportMessage)init;
- (CTStewieTransportMessage)initWithCoder:(id)a3;
- (CTStewieTransportMessage)initWithMsgId:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieTransportMessage

- (CTStewieTransportMessage)init
{
  v10.receiver = self;
  v10.super_class = CTStewieTransportMessage;
  v2 = [(CTStewieTransportMessage *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    msgId = v2->_msgId;
    v2->_msgId = v4;

    data = v2->_data;
    v2->_data = 0;

    metadata = v2->_metadata;
    v2->_metadata = 0;

    v8 = v2;
  }

  return v2;
}

- (CTStewieTransportMessage)initWithMsgId:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CTStewieTransportMessage;
  v6 = [(CTStewieTransportMessage *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_msgId, a3);
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
  v5 = [(CTStewieTransportMessage *)self msgId];
  [v4 appendFormat:@", msgId=%@", v5];

  v6 = [(CTStewieTransportMessage *)self data];
  if (v6)
  {
    v2 = [(CTStewieTransportMessage *)self data];
    v7 = [v2 length];
  }

  else
  {
    v7 = 0;
  }

  [v4 appendFormat:@", data length=%lu", v7];
  if (v6)
  {
  }

  v8 = [(CTStewieTransportMessage *)self metadata];
  [v4 appendFormat:@", metadata=%@", v8];

  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToTransportMessage:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieTransportMessage *)self msgId];
  v6 = [v4 msgId];
  if (v5 != v6)
  {
    v19 = [(CTStewieTransportMessage *)self msgId];
    v17 = [v4 msgId];
    if (![v19 isEqual:?])
    {
      v7 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v8 = [(CTStewieTransportMessage *)self data];
  v9 = [v4 data];
  if (v8 != v9)
  {
    v18 = [(CTStewieTransportMessage *)self data];
    v16 = [v4 data];
    if (![v18 isEqual:?])
    {
      v7 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v10 = [(CTStewieTransportMessage *)self metadata];
  v11 = [v4 metadata];
  v12 = v11;
  if (v10 == v11)
  {

    v7 = 1;
  }

  else
  {
    v13 = [(CTStewieTransportMessage *)self metadata];
    v14 = [v4 metadata];
    v7 = [v13 isEqual:v14];
  }

  if (v8 != v9)
  {
    goto LABEL_11;
  }

LABEL_12:

  if (v5 != v6)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieTransportMessage *)self isEqualToTransportMessage:v4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieTransportMessage *)self msgId];
  v7 = [v6 copyWithZone:a3];
  [v5 setMsgId:v7];

  v8 = [(CTStewieTransportMessage *)self data];
  v9 = [v8 copyWithZone:a3];
  [v5 setData:v9];

  v10 = [(CTStewieTransportMessage *)self metadata];
  v11 = [v10 copyWithZone:a3];
  [v5 setMetadata:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CTStewieTransportMessage *)self msgId];
  [v7 encodeObject:v4 forKey:@"msgId"];

  v5 = [(CTStewieTransportMessage *)self data];
  [v7 encodeObject:v5 forKey:@"data"];

  v6 = [(CTStewieTransportMessage *)self metadata];
  [v7 encodeObject:v6 forKey:@"metadata"];
}

- (CTStewieTransportMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CTStewieTransportMessage;
  v5 = [(CTStewieTransportMessage *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"msgId"];
    msgId = v5->_msgId;
    v5->_msgId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v10 setWithObjects:{v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v17;

    v19 = v5;
  }

  return v5;
}

@end