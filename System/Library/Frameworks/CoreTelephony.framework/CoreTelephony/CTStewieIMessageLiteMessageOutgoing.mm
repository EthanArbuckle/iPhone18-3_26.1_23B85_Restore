@interface CTStewieIMessageLiteMessageOutgoing
+ (double)estimatedSendTimeForPayload:(id)payload;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieIMessageLiteMessageOutgoing)initWithCoder:(id)coder;
- (CTStewieIMessageLiteMessageOutgoing)initWithMyShortHandle:(id)handle otherShortHandle:(id)shortHandle partNumber:(int64_t)number totalParts:(int64_t)parts payload:(id)payload isRelay:(BOOL)relay error:(id *)error;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieIMessageLiteMessageOutgoing

- (CTStewieIMessageLiteMessageOutgoing)initWithMyShortHandle:(id)handle otherShortHandle:(id)shortHandle partNumber:(int64_t)number totalParts:(int64_t)parts payload:(id)payload isRelay:(BOOL)relay error:(id *)error
{
  v50[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  shortHandleCopy = shortHandle;
  payloadCopy = payload;
  {
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v50[0] = @"Invalid myShortHandle";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      *error = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];
    }

    goto LABEL_22;
  }

  {
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v48 = @"Invalid otherShortHandle";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *error = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];
    }

    goto LABEL_22;
  }

  if ((number - 1) >= 4)
  {
    if (error)
    {
      v26 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"Invalid partNumber";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *error = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];
    }

    goto LABEL_22;
  }

  if ((parts - 1) >= 4)
  {
    if (error)
    {
      v28 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"Invalid totalParts";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *error = [v28 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v29];
    }

    goto LABEL_22;
  }

  if (!payloadCopy)
  {
    if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Payload is missing";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *error = [v30 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v31];
    }

    goto LABEL_22;
  }

  if ([payloadCopy length] >= 0x94)
  {
    if (error)
    {
      v20 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40 = @"Payload is too big";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *error = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];
    }

    goto LABEL_22;
  }

  v38.receiver = self;
  v38.super_class = CTStewieIMessageLiteMessageOutgoing;
  v32 = [(CTStewieIMessageLiteMessageOutgoing *)&v38 init];
  v33 = v32;
  if (!v32)
  {
    self = 0;
LABEL_22:
    selfCopy = 0;
    goto LABEL_23;
  }

  objc_storeStrong(&v32->_myShortHandle, handle);
  objc_storeStrong(&v33->_otherShortHandle, shortHandle);
  v33->_partNumber = number;
  v33->_totalParts = parts;
  objc_storeStrong(&v33->_payload, payload);
  v33->_isRelay = relay;
  self = v33;
  selfCopy = self;
LABEL_23:

  v35 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (double)estimatedSendTimeForPayload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  EstimatedSendTimeOverStewieInSeconds = 0.0;
  if (payloadCopy && [payloadCopy length])
  {
    EstimatedSendTimeOverStewieInSeconds = getEstimatedSendTimeOverStewieInSeconds([v4 length] + 17);
  }

  return EstimatedSendTimeOverStewieInSeconds;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  myShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  [v4 appendFormat:@", myShortHandle=%@", myShortHandle];

  otherShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  [v4 appendFormat:@", otherShortHandle=%@", otherShortHandle];

  [v4 appendFormat:@", partNumber=%ld", -[CTStewieIMessageLiteMessageOutgoing partNumber](self, "partNumber")];
  [v4 appendFormat:@", totalParts=%ld", -[CTStewieIMessageLiteMessageOutgoing totalParts](self, "totalParts")];
  payload = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
  if (payload)
  {
    payload2 = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
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

  isRelay = [(CTStewieIMessageLiteMessageOutgoing *)self isRelay];
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
  myShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  myShortHandle2 = [otherCopy myShortHandle];
  if (myShortHandle != myShortHandle2)
  {
    myShortHandle3 = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
    myShortHandle4 = [otherCopy myShortHandle];
    if (![myShortHandle3 isEqual:myShortHandle4])
    {
      LOBYTE(v10) = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  otherShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  otherShortHandle2 = [otherCopy otherShortHandle];
  if (otherShortHandle == otherShortHandle2 || (-[CTStewieIMessageLiteMessageOutgoing otherShortHandle](self, "otherShortHandle"), v4 = objc_claimAutoreleasedReturnValue(), [otherCopy otherShortHandle], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqual:", v5)))
  {
    partNumber = [(CTStewieIMessageLiteMessageOutgoing *)self partNumber];
    if (partNumber != [otherCopy partNumber] || (v14 = -[CTStewieIMessageLiteMessageOutgoing totalParts](self, "totalParts"), v14 != objc_msgSend(otherCopy, "totalParts")))
    {
      LOBYTE(v10) = 0;
      goto LABEL_13;
    }

    payload = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
    payload2 = [otherCopy payload];
    if (payload == payload2 || (-[CTStewieIMessageLiteMessageOutgoing payload](self, "payload"), v18 = objc_claimAutoreleasedReturnValue(), [otherCopy payload], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "isEqual:")))
    {
      isRelay = [(CTStewieIMessageLiteMessageOutgoing *)self isRelay];
      v10 = isRelay ^ [otherCopy isRelay] ^ 1;
      if (payload == payload2)
      {

LABEL_13:
        if (otherShortHandle == otherShortHandle2)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    goto LABEL_13;
  }

  LOBYTE(v10) = 0;
LABEL_14:

LABEL_15:
  if (myShortHandle != myShortHandle2)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v10;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteMessageOutgoing *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  myShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  v7 = [myShortHandle copyWithZone:zone];
  [v5 setMyShortHandle:v7];

  otherShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  v9 = [otherShortHandle copyWithZone:zone];
  [v5 setOtherShortHandle:v9];

  [v5 setPartNumber:{-[CTStewieIMessageLiteMessageOutgoing partNumber](self, "partNumber")}];
  [v5 setTotalParts:{-[CTStewieIMessageLiteMessageOutgoing totalParts](self, "totalParts")}];
  payload = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
  v11 = [payload copyWithZone:zone];
  [v5 setPayload:v11];

  [v5 setIsRelay:{-[CTStewieIMessageLiteMessageOutgoing isRelay](self, "isRelay")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  myShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  [coderCopy encodeObject:myShortHandle forKey:@"myShortHandle"];

  otherShortHandle = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  [coderCopy encodeObject:otherShortHandle forKey:@"otherShortHandle"];

  [coderCopy encodeInteger:-[CTStewieIMessageLiteMessageOutgoing partNumber](self forKey:{"partNumber"), @"partNumber"}];
  [coderCopy encodeInteger:-[CTStewieIMessageLiteMessageOutgoing totalParts](self forKey:{"totalParts"), @"totalParts"}];
  payload = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
  [coderCopy encodeObject:payload forKey:@"payload"];

  [coderCopy encodeBool:-[CTStewieIMessageLiteMessageOutgoing isRelay](self forKey:{"isRelay"), @"isRelay"}];
}

- (CTStewieIMessageLiteMessageOutgoing)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"myShortHandle"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherShortHandle"];
  v7 = [coderCopy decodeIntegerForKey:@"partNumber"];
  v8 = [coderCopy decodeIntegerForKey:@"totalParts"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v10 = -[CTStewieIMessageLiteMessageOutgoing initWithMyShortHandle:otherShortHandle:partNumber:totalParts:payload:isRelay:error:](self, "initWithMyShortHandle:otherShortHandle:partNumber:totalParts:payload:isRelay:error:", v5, v6, v7, v8, v9, [coderCopy decodeBoolForKey:@"isRelay"], 0);

  return v10;
}

@end