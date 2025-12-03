@interface CTStewieIMessageLiteMessageIncoming
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieIMessageLiteMessageIncoming)initWithCoder:(id)coder;
- (CTStewieIMessageLiteMessageIncoming)initWithTimestamp:(id)timestamp pendingTotalCount:(int64_t)count pendingCount:(int64_t)pendingCount myShortHandle:(id)handle otherShortHandle:(id)shortHandle partNumber:(int64_t)number totalParts:(int64_t)parts payload:(id)self0 isRelay:(BOOL)self1 error:(id *)self2;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieIMessageLiteMessageIncoming

- (CTStewieIMessageLiteMessageIncoming)initWithTimestamp:(id)timestamp pendingTotalCount:(int64_t)count pendingCount:(int64_t)pendingCount myShortHandle:(id)handle otherShortHandle:(id)shortHandle partNumber:(int64_t)number totalParts:(int64_t)parts payload:(id)self0 isRelay:(BOOL)self1 error:(id *)self2
{
  v50[1] = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  handleCopy = handle;
  shortHandleCopy = shortHandle;
  payloadCopy = payload;
  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v50[0] = @"Invalid myShortHandle";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:{1, timestampCopy}];
      [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];
      *error = selfCopy = self;

      goto LABEL_18;
    }

LABEL_19:
    v23 = 0;
    selfCopy = self;
    goto LABEL_20;
  }

  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v48 = @"Invalid otherShortHandle";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:{1, timestampCopy}];
      [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];
      *error = selfCopy = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ((number - 1) >= 4)
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"Invalid partNumber";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:{1, timestampCopy}];
      [v28 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v29];
      *error = selfCopy = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ((parts - 1) >= 4)
  {
    if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"Invalid totalParts";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:{1, timestampCopy}];
      [v30 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v31];
      *error = selfCopy = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!payloadCopy)
  {
    if (error)
    {
      v32 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Payload is missing";
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:{1, timestampCopy}];
      [v32 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v33];
      *error = selfCopy = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v40.receiver = self;
  v40.super_class = CTStewieIMessageLiteMessageIncoming;
  v21 = [(CTStewieIMessageLiteMessageIncoming *)&v40 init:timestampCopy];
  selfCopy = v21;
  if (!v21)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_20;
  }

  objc_storeStrong(&v21->_timestamp, timestamp);
  selfCopy->_pendingTotalCount = count;
  selfCopy->_pendingCount = pendingCount;
  objc_storeStrong(&selfCopy->_myShortHandle, handle);
  objc_storeStrong(&selfCopy->_otherShortHandle, shortHandle);
  selfCopy->_partNumber = number;
  selfCopy->_totalParts = parts;
  objc_storeStrong(&selfCopy->_payload, payload);
  selfCopy->_isRelay = relay;
  selfCopy = selfCopy;
  v23 = selfCopy;
LABEL_20:

  v34 = *MEMORY[0x1E69E9840];
  return v23;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v4 appendFormat:@", pendingTotalCount=%ld", -[CTStewieIMessageLiteMessageIncoming pendingTotalCount](self, "pendingTotalCount")];
  [v4 appendFormat:@", pendingCount=%ld", -[CTStewieIMessageLiteMessageIncoming pendingCount](self, "pendingCount")];
  myShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  [v4 appendFormat:@", myShortHandle=%@", myShortHandle];

  otherShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  [v4 appendFormat:@", otherShortHandle=%@", otherShortHandle];

  [v4 appendFormat:@", partNumber=%ld", -[CTStewieIMessageLiteMessageIncoming partNumber](self, "partNumber")];
  [v4 appendFormat:@", totalParts=%ld", -[CTStewieIMessageLiteMessageIncoming totalParts](self, "totalParts")];
  payload = [(CTStewieIMessageLiteMessageIncoming *)self payload];
  if (payload)
  {
    payload2 = [(CTStewieIMessageLiteMessageIncoming *)self payload];
    v8 = [payload2 length];
  }

  else
  {
    v8 = 0;
  }

  [v4 appendFormat:@", payload size=%lu", v8];
  if (payload)
  {
  }

  isRelay = [(CTStewieIMessageLiteMessageIncoming *)self isRelay];
  v10 = "no";
  if (isRelay)
  {
    v10 = "yes";
  }

  [v4 appendFormat:@", isRelay=%s", v10];
  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  timestamp = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
  timestamp2 = [otherCopy timestamp];
  if (timestamp != timestamp2)
  {
    timestamp3 = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
    timestamp4 = [otherCopy timestamp];
    if (![timestamp3 isEqual:timestamp4])
    {
      LOBYTE(v9) = 0;
LABEL_28:

      goto LABEL_29;
    }
  }

  pendingTotalCount = [(CTStewieIMessageLiteMessageIncoming *)self pendingTotalCount];
  if (pendingTotalCount != [otherCopy pendingTotalCount] || (v11 = -[CTStewieIMessageLiteMessageIncoming pendingCount](self, "pendingCount"), v11 != objc_msgSend(otherCopy, "pendingCount")))
  {
    LOBYTE(v9) = 0;
    goto LABEL_27;
  }

  myShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  myShortHandle2 = [otherCopy myShortHandle];
  if (myShortHandle != myShortHandle2)
  {
    myShortHandle3 = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
    myShortHandle4 = [otherCopy myShortHandle];
    if (![myShortHandle3 isEqual:?])
    {
      LOBYTE(v9) = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  otherShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  otherShortHandle2 = [otherCopy otherShortHandle];
  if (otherShortHandle == otherShortHandle2 || (-[CTStewieIMessageLiteMessageIncoming otherShortHandle](self, "otherShortHandle"), v27 = objc_claimAutoreleasedReturnValue(), [otherCopy otherShortHandle], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "isEqual:")))
  {
    partNumber = [(CTStewieIMessageLiteMessageIncoming *)self partNumber];
    if (partNumber != [otherCopy partNumber] || (v17 = -[CTStewieIMessageLiteMessageIncoming totalParts](self, "totalParts"), v17 != objc_msgSend(otherCopy, "totalParts")))
    {
      LOBYTE(v9) = 0;
      goto LABEL_22;
    }

    payload = [(CTStewieIMessageLiteMessageIncoming *)self payload];
    payload2 = [otherCopy payload];
    if (payload == payload2 || (-[CTStewieIMessageLiteMessageIncoming payload](self, "payload"), v23 = objc_claimAutoreleasedReturnValue(), [otherCopy payload], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "isEqual:")))
    {
      isRelay = [(CTStewieIMessageLiteMessageIncoming *)self isRelay];
      v9 = isRelay ^ [otherCopy isRelay] ^ 1;
      v20 = payload2;
      if (payload == payload2)
      {
LABEL_21:

LABEL_22:
        v15 = otherShortHandle;
        if (otherShortHandle == otherShortHandle2)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    v20 = payload2;
    goto LABEL_21;
  }

  LOBYTE(v9) = 0;
  v15 = otherShortHandle;
LABEL_23:

LABEL_24:
  if (myShortHandle != myShortHandle2)
  {
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
  if (timestamp != timestamp2)
  {
    goto LABEL_28;
  }

LABEL_29:

  return v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteMessageIncoming *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  timestamp = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
  v7 = [timestamp copyWithZone:zone];
  [v5 setTimestamp:v7];

  [v5 setPendingTotalCount:{-[CTStewieIMessageLiteMessageIncoming pendingTotalCount](self, "pendingTotalCount")}];
  [v5 setPendingCount:{-[CTStewieIMessageLiteMessageIncoming pendingCount](self, "pendingCount")}];
  myShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  v9 = [myShortHandle copyWithZone:zone];
  [v5 setMyShortHandle:v9];

  otherShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  v11 = [otherShortHandle copyWithZone:zone];
  [v5 setOtherShortHandle:v11];

  [v5 setPartNumber:{-[CTStewieIMessageLiteMessageIncoming partNumber](self, "partNumber")}];
  [v5 setTotalParts:{-[CTStewieIMessageLiteMessageIncoming totalParts](self, "totalParts")}];
  payload = [(CTStewieIMessageLiteMessageIncoming *)self payload];
  v13 = [payload copyWithZone:zone];
  [v5 setPayload:v13];

  [v5 setIsRelay:{-[CTStewieIMessageLiteMessageIncoming isRelay](self, "isRelay")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timestamp = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  [coderCopy encodeInteger:-[CTStewieIMessageLiteMessageIncoming pendingTotalCount](self forKey:{"pendingTotalCount"), @"pendingTotalCount"}];
  [coderCopy encodeInteger:-[CTStewieIMessageLiteMessageIncoming pendingCount](self forKey:{"pendingCount"), @"pendingCount"}];
  myShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  [coderCopy encodeObject:myShortHandle forKey:@"myShortHandle"];

  otherShortHandle = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  [coderCopy encodeObject:otherShortHandle forKey:@"otherShortHandle"];

  [coderCopy encodeInteger:-[CTStewieIMessageLiteMessageIncoming partNumber](self forKey:{"partNumber"), @"partNumber"}];
  [coderCopy encodeInteger:-[CTStewieIMessageLiteMessageIncoming totalParts](self forKey:{"totalParts"), @"totalParts"}];
  payload = [(CTStewieIMessageLiteMessageIncoming *)self payload];
  [coderCopy encodeObject:payload forKey:@"payload"];

  [coderCopy encodeBool:-[CTStewieIMessageLiteMessageIncoming isRelay](self forKey:{"isRelay"), @"isRelay"}];
}

- (CTStewieIMessageLiteMessageIncoming)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v6 = [coderCopy decodeIntegerForKey:@"pendingTotalCount"];
  v7 = [coderCopy decodeIntegerForKey:@"pendingCount"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"myShortHandle"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherShortHandle"];
  v10 = [coderCopy decodeIntegerForKey:@"partNumber"];
  v11 = [coderCopy decodeIntegerForKey:@"totalParts"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  LOBYTE(v15) = [coderCopy decodeBoolForKey:@"isRelay"];
  v13 = [(CTStewieIMessageLiteMessageIncoming *)self initWithTimestamp:v5 pendingTotalCount:v6 pendingCount:v7 myShortHandle:v8 otherShortHandle:v9 partNumber:v10 totalParts:v11 payload:v12 isRelay:v15 error:0];

  return v13;
}

@end