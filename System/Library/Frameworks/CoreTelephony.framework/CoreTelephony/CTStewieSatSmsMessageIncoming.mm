@interface CTStewieSatSmsMessageIncoming
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOther:(id)other;
- (CTStewieSatSmsMessageIncoming)initWithCoder:(id)coder;
- (CTStewieSatSmsMessageIncoming)initWithContext:(id)context timestamp:(id)timestamp pendingTotalCount:(int64_t)count pendingCount:(int64_t)pendingCount sourcePhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload uniqueID:(id)self0 error:(id *)self1;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieSatSmsMessageIncoming

- (CTStewieSatSmsMessageIncoming)initWithContext:(id)context timestamp:(id)timestamp pendingTotalCount:(int64_t)count pendingCount:(int64_t)pendingCount sourcePhoneNumber:(id)number codecID:(int64_t)d textPayload:(id)payload uniqueID:(id)self0 error:(id *)self1
{
  v68[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  timestampCopy = timestamp;
  numberCopy = number;
  payloadCopy = payload;
  iDCopy = iD;
  v44 = contextCopy;
  v45 = timestampCopy;
  if (contextCopy)
  {
    if (timestampCopy)
    {
      selfCopy4 = self;
      if (pendingCount < 0)
      {
        v19 = numberCopy;
        if (error)
        {
          v26 = MEMORY[0x1E696ABC0];
          v63 = *MEMORY[0x1E696A578];
          v64 = @"Invalid pendingCount";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          *error = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];
        }

        goto LABEL_36;
      }

      v19 = numberCopy;
      if (count < 0)
      {
        if (error)
        {
          v31 = MEMORY[0x1E696ABC0];
          v61 = *MEMORY[0x1E696A578];
          v62 = @"Invalid pendingTotalCount";
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          *error = [v31 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v32];
        }

        goto LABEL_36;
      }

      if (!numberCopy || ![numberCopy length])
      {
        if (error)
        {
          v29 = MEMORY[0x1E696ABC0];
          v59 = *MEMORY[0x1E696A578];
          v60 = @"sourcePhoneNumber is missing";
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          *error = [v29 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v30];
        }

        goto LABEL_36;
      }

      {
        if (error)
        {
          v33 = MEMORY[0x1E696ABC0];
          v57 = *MEMORY[0x1E696A578];
          v58 = @"sourcePhoneNumber is invalid";
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          *error = [v33 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v34];
        }

        goto LABEL_36;
      }

      if (d >= 0x10)
      {
        if (error)
        {
          v20 = MEMORY[0x1E696ABC0];
          v55 = *MEMORY[0x1E696A578];
          v56 = @"Invalid codecID";
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          *error = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];
        }

        goto LABEL_36;
      }

      if (!payloadCopy || ![payloadCopy length])
      {
        if (error)
        {
          v37 = MEMORY[0x1E696ABC0];
          v53 = *MEMORY[0x1E696A578];
          v54 = @"textPayload is missing";
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          *error = [v37 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v38];
        }

        goto LABEL_36;
      }

      if (!iDCopy || ![iDCopy length])
      {
        if (error)
        {
          v39 = MEMORY[0x1E696ABC0];
          v51 = *MEMORY[0x1E696A578];
          v52 = @"uniqueID is missing";
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *error = [v39 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v40];
        }

        goto LABEL_36;
      }

      v50.receiver = self;
      v50.super_class = CTStewieSatSmsMessageIncoming;
      v35 = [(CTStewieSatSmsMessageIncoming *)&v50 init];
      v36 = v35;
      if (v35)
      {
        objc_storeStrong(&v35->_context, context);
        objc_storeStrong(&v36->_timestamp, timestamp);
        v36->_pendingTotalCount = count;
        v36->_pendingCount = pendingCount;
        objc_storeStrong(&v36->_sourcePhoneNumber, number);
        v36->_codecID = d;
        objc_storeStrong(&v36->_textPayload, payload);
        objc_storeStrong(&v36->_uniqueID, iD);
        selfCopy4 = v36;
        v28 = selfCopy4;
        goto LABEL_37;
      }

      selfCopy4 = 0;
LABEL_36:
      v28 = 0;
      goto LABEL_37;
    }

    selfCopy4 = self;
    if (error)
    {
      v24 = MEMORY[0x1E696ABC0];
      v65 = *MEMORY[0x1E696A578];
      v66 = @"timestamp is missing";
      v19 = numberCopy;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      *error = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];

      goto LABEL_36;
    }

    v28 = 0;
    v19 = numberCopy;
  }

  else
  {
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A578];
      v68[0] = @"Context is missing";
      v19 = numberCopy;
      selfCopy4 = self;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      *error = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];

      goto LABEL_36;
    }

    v28 = 0;
    v19 = numberCopy;
    selfCopy4 = self;
  }

LABEL_37:

  v41 = *MEMORY[0x1E69E9840];
  return v28;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  context = [(CTStewieSatSmsMessageIncoming *)self context];
  [v3 appendFormat:@", context=%@", context];

  timestamp = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  [v3 appendFormat:@", timestamp=%@", timestamp];

  [v3 appendFormat:@", pendingTotalCount=%ld", -[CTStewieSatSmsMessageIncoming pendingTotalCount](self, "pendingTotalCount")];
  [v3 appendFormat:@", pendingCount=%ld", -[CTStewieSatSmsMessageIncoming pendingCount](self, "pendingCount")];
  sourcePhoneNumber = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  [v3 appendFormat:@", sourcePhoneNumber=%@", sourcePhoneNumber];

  [v3 appendFormat:@", codecID=%ld", -[CTStewieSatSmsMessageIncoming codecID](self, "codecID")];
  textPayload = [(CTStewieSatSmsMessageIncoming *)self textPayload];
  [v3 appendFormat:@", textPayload size=%lu", objc_msgSend(textPayload, "length")];

  uniqueID = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
  [v3 appendFormat:@", uniqueID=%@", uniqueID];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)other
{
  otherCopy = other;
  context = [(CTStewieSatSmsMessageIncoming *)self context];
  context2 = [otherCopy context];
  if (context != context2)
  {
    context3 = [(CTStewieSatSmsMessageIncoming *)self context];
    context4 = [otherCopy context];
    if (![context3 isEqual:context4])
    {
      v10 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  timestamp = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  timestamp2 = [otherCopy timestamp];
  if (timestamp != timestamp2)
  {
    timestamp3 = [(CTStewieSatSmsMessageIncoming *)self timestamp];
    timestamp4 = [otherCopy timestamp];
    if (![timestamp3 isEqual:timestamp4])
    {
      v10 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  pendingTotalCount = [(CTStewieSatSmsMessageIncoming *)self pendingTotalCount];
  if (pendingTotalCount != [otherCopy pendingTotalCount] || (v14 = -[CTStewieSatSmsMessageIncoming pendingCount](self, "pendingCount"), v14 != objc_msgSend(otherCopy, "pendingCount")))
  {
    v10 = 0;
    if (timestamp == timestamp2)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  sourcePhoneNumber = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  [otherCopy sourcePhoneNumber];
  v32 = v31 = timestamp4;
  if (sourcePhoneNumber == v32 || (-[CTStewieSatSmsMessageIncoming sourcePhoneNumber](self, "sourcePhoneNumber"), v30 = objc_claimAutoreleasedReturnValue(), [otherCopy sourcePhoneNumber], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "isEqual:")))
  {
    codecID = [(CTStewieSatSmsMessageIncoming *)self codecID];
    if (codecID != [otherCopy codecID])
    {
      v10 = 0;
      goto LABEL_28;
    }

    textPayload = [(CTStewieSatSmsMessageIncoming *)self textPayload];
    textPayload2 = [otherCopy textPayload];
    if (textPayload == textPayload2 || (-[CTStewieSatSmsMessageIncoming textPayload](self, "textPayload"), v27 = objc_claimAutoreleasedReturnValue(), [otherCopy textPayload], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "isEqual:")))
    {
      uniqueID = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
      uniqueID2 = [otherCopy uniqueID];
      if (uniqueID == uniqueID2)
      {

        v10 = 1;
      }

      else
      {
        v23 = uniqueID2;
        uniqueID3 = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
        uniqueID4 = [otherCopy uniqueID];
        v10 = [uniqueID3 isEqual:uniqueID4];
      }

      v20 = textPayload2;
      if (textPayload == textPayload2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v10 = 0;
      v20 = textPayload2;
    }

LABEL_27:
LABEL_28:
    v16 = v32;
    v15 = sourcePhoneNumber;
    if (sourcePhoneNumber == v32)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v10 = 0;
  v16 = v32;
  v15 = sourcePhoneNumber;
LABEL_29:

LABEL_30:
  timestamp4 = v31;
  if (timestamp != timestamp2)
  {
    goto LABEL_13;
  }

LABEL_14:

  if (context != context2)
  {
    goto LABEL_15;
  }

LABEL_16:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieSatSmsMessageIncoming *)self isEqualToOther:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  context = [(CTStewieSatSmsMessageIncoming *)self context];
  v7 = [context copyWithZone:zone];
  [v5 setContext:v7];

  timestamp = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  v9 = [timestamp copyWithZone:zone];
  [v5 setTimestamp:v9];

  [v5 setPendingTotalCount:{-[CTStewieSatSmsMessageIncoming pendingTotalCount](self, "pendingTotalCount")}];
  [v5 setPendingCount:{-[CTStewieSatSmsMessageIncoming pendingCount](self, "pendingCount")}];
  sourcePhoneNumber = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  v11 = [sourcePhoneNumber copyWithZone:zone];
  [v5 setSourcePhoneNumber:v11];

  [v5 setCodecID:{-[CTStewieSatSmsMessageIncoming codecID](self, "codecID")}];
  textPayload = [(CTStewieSatSmsMessageIncoming *)self textPayload];
  v13 = [textPayload copyWithZone:zone];
  [v5 setTextPayload:v13];

  uniqueID = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
  v15 = [uniqueID copyWithZone:zone];
  [v5 setUniqueID:v15];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  context = [(CTStewieSatSmsMessageIncoming *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  timestamp = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  [coderCopy encodeInteger:-[CTStewieSatSmsMessageIncoming pendingTotalCount](self forKey:{"pendingTotalCount"), @"pendingTotalCount"}];
  [coderCopy encodeInteger:-[CTStewieSatSmsMessageIncoming pendingCount](self forKey:{"pendingCount"), @"pendingCount"}];
  sourcePhoneNumber = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  [coderCopy encodeObject:sourcePhoneNumber forKey:@"phoneNumber"];

  [coderCopy encodeInteger:-[CTStewieSatSmsMessageIncoming codecID](self forKey:{"codecID"), @"codecID"}];
  textPayload = [(CTStewieSatSmsMessageIncoming *)self textPayload];
  [coderCopy encodeObject:textPayload forKey:@"textPayload"];

  uniqueID = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];
}

- (CTStewieSatSmsMessageIncoming)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v7 = [coderCopy decodeIntegerForKey:@"pendingTotalCount"];
  v8 = [coderCopy decodeIntegerForKey:@"pendingCount"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v10 = [coderCopy decodeIntegerForKey:@"codecID"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textPayload"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  v13 = [(CTStewieSatSmsMessageIncoming *)self initWithContext:v5 timestamp:v6 pendingTotalCount:v7 pendingCount:v8 sourcePhoneNumber:v9 codecID:v10 textPayload:v11 uniqueID:v12 error:0];

  return v13;
}

@end