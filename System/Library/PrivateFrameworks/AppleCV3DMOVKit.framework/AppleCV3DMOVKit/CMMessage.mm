@interface CMMessage
- (CMMessage)initWithCoder:(id)coder;
- (CMMessage)initWithMessageType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMMessage

- (CMMessage)initWithMessageType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = CMMessage;
  result = [(CMMessage *)&v5 init];
  if (result)
  {
    result->_messageType = type;
  }

  return result;
}

- (CMMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CMMessage;
  v5 = [(CMMessage *)&v21 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v5->_messageType = [coderCopy decodeIntegerForKey:@"cmd"];
    v7 = [coderCopy decodeObjectForKey:@"pd"];
    fromPeerDisplayName = v5->_fromPeerDisplayName;
    v5->_fromPeerDisplayName = v7;

    v9 = [coderCopy decodeObjectForKey:@"pds"];
    toPeerDisplays = v5->_toPeerDisplays;
    v5->_toPeerDisplays = v9;

    [coderCopy decodeDoubleForKey:@"t"];
    v5->_timestamp = v11;
    v5->_cmDataType = [coderCopy decodeIntegerForKey:@"cmType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cmData"];
    cmData = v5->_cmData;
    v5->_cmData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cmAddData"];
    cmAdditionalData = v5->_cmAdditionalData;
    v5->_cmAdditionalData = v14;

    v16 = [coderCopy decodeObjectForKey:@"sid"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v16;

    v18 = [coderCopy decodeObjectForKey:@"mlt"];
    movLowestTimestamp = v5->_movLowestTimestamp;
    v5->_movLowestTimestamp = v18;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInteger:self->_messageType forKey:@"cmd"];
  [coderCopy encodeObject:self->_fromPeerDisplayName forKey:@"pd"];
  [coderCopy encodeObject:self->_toPeerDisplays forKey:@"pds"];
  [coderCopy encodeDouble:@"t" forKey:self->_timestamp];
  [coderCopy encodeInteger:self->_cmDataType forKey:@"cmType"];
  [coderCopy encodeObject:self->_cmData forKey:@"cmData"];
  [coderCopy encodeObject:self->_cmAdditionalData forKey:@"cmAddData"];
  [coderCopy encodeObject:self->_sessionID forKey:@"sid"];
  [coderCopy encodeObject:self->_movLowestTimestamp forKey:@"mlt"];
  objc_autoreleasePoolPop(v4);
}

- (id)description
{
  messageType = self->_messageType;
  if (messageType == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"SessionID: %@ %@", self->_sessionID, self->_movLowestTimestamp];
    goto LABEL_5;
  }

  if (!messageType)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"DataType: %ld", self->_cmDataType, v7];
    v4 = LABEL_5:;
    goto LABEL_7;
  }

  v4 = &stru_28521B010;
LABEL_7:
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"CMMessage: %lu %.6lf: %@", self->_messageType, *&self->_timestamp, v4];

  return v5;
}

@end