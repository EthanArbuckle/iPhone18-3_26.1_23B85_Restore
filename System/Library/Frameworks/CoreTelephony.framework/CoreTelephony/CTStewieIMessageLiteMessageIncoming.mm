@interface CTStewieIMessageLiteMessageIncoming
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieIMessageLiteMessageIncoming)initWithCoder:(id)a3;
- (CTStewieIMessageLiteMessageIncoming)initWithTimestamp:(id)a3 pendingTotalCount:(int64_t)a4 pendingCount:(int64_t)a5 myShortHandle:(id)a6 otherShortHandle:(id)a7 partNumber:(int64_t)a8 totalParts:(int64_t)a9 payload:(id)a10 isRelay:(BOOL)a11 error:(id *)a12;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieIMessageLiteMessageIncoming

- (CTStewieIMessageLiteMessageIncoming)initWithTimestamp:(id)a3 pendingTotalCount:(int64_t)a4 pendingCount:(int64_t)a5 myShortHandle:(id)a6 otherShortHandle:(id)a7 partNumber:(int64_t)a8 totalParts:(int64_t)a9 payload:(id)a10 isRelay:(BOOL)a11 error:(id *)a12
{
  v50[1] = *MEMORY[0x1E69E9840];
  v36 = a3;
  v18 = a6;
  v39 = a7;
  v38 = a10;
  {
    if (a12)
    {
      v24 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v50[0] = @"Invalid myShortHandle";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:{1, v36}];
      [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];
      *a12 = v22 = self;

      goto LABEL_18;
    }

LABEL_19:
    v23 = 0;
    v22 = self;
    goto LABEL_20;
  }

  {
    if (a12)
    {
      v26 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v48 = @"Invalid otherShortHandle";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:{1, v36}];
      [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];
      *a12 = v22 = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ((a8 - 1) >= 4)
  {
    if (a12)
    {
      v28 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"Invalid partNumber";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:{1, v36}];
      [v28 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v29];
      *a12 = v22 = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if ((a9 - 1) >= 4)
  {
    if (a12)
    {
      v30 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"Invalid totalParts";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:{1, v36}];
      [v30 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v31];
      *a12 = v22 = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (!v38)
  {
    if (a12)
    {
      v32 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Payload is missing";
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:{1, v36}];
      [v32 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v33];
      *a12 = v22 = self;

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v40.receiver = self;
  v40.super_class = CTStewieIMessageLiteMessageIncoming;
  v21 = [(CTStewieIMessageLiteMessageIncoming *)&v40 init:v36];
  v22 = v21;
  if (!v21)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_20;
  }

  objc_storeStrong(&v21->_timestamp, a3);
  v22->_pendingTotalCount = a4;
  v22->_pendingCount = a5;
  objc_storeStrong(&v22->_myShortHandle, a6);
  objc_storeStrong(&v22->_otherShortHandle, a7);
  v22->_partNumber = a8;
  v22->_totalParts = a9;
  objc_storeStrong(&v22->_payload, a10);
  v22->_isRelay = a11;
  v22 = v22;
  v23 = v22;
LABEL_20:

  v34 = *MEMORY[0x1E69E9840];
  return v23;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v4 appendFormat:@", pendingTotalCount=%ld", -[CTStewieIMessageLiteMessageIncoming pendingTotalCount](self, "pendingTotalCount")];
  [v4 appendFormat:@", pendingCount=%ld", -[CTStewieIMessageLiteMessageIncoming pendingCount](self, "pendingCount")];
  v5 = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  [v4 appendFormat:@", myShortHandle=%@", v5];

  v6 = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  [v4 appendFormat:@", otherShortHandle=%@", v6];

  [v4 appendFormat:@", partNumber=%ld", -[CTStewieIMessageLiteMessageIncoming partNumber](self, "partNumber")];
  [v4 appendFormat:@", totalParts=%ld", -[CTStewieIMessageLiteMessageIncoming totalParts](self, "totalParts")];
  v7 = [(CTStewieIMessageLiteMessageIncoming *)self payload];
  if (v7)
  {
    v2 = [(CTStewieIMessageLiteMessageIncoming *)self payload];
    v8 = [v2 length];
  }

  else
  {
    v8 = 0;
  }

  [v4 appendFormat:@", payload size=%lu", v8];
  if (v7)
  {
  }

  v9 = [(CTStewieIMessageLiteMessageIncoming *)self isRelay];
  v10 = "no";
  if (v9)
  {
    v10 = "yes";
  }

  [v4 appendFormat:@", isRelay=%s", v10];
  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToOther:(id)a3
{
  v6 = a3;
  v7 = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
  v8 = [v6 timestamp];
  if (v7 != v8)
  {
    v3 = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
    v4 = [v6 timestamp];
    if (![v3 isEqual:v4])
    {
      LOBYTE(v9) = 0;
LABEL_28:

      goto LABEL_29;
    }
  }

  v10 = [(CTStewieIMessageLiteMessageIncoming *)self pendingTotalCount];
  if (v10 != [v6 pendingTotalCount] || (v11 = -[CTStewieIMessageLiteMessageIncoming pendingCount](self, "pendingCount"), v11 != objc_msgSend(v6, "pendingCount")))
  {
    LOBYTE(v9) = 0;
    goto LABEL_27;
  }

  v12 = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  v13 = [v6 myShortHandle];
  if (v12 != v13)
  {
    v28 = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
    v26 = [v6 myShortHandle];
    if (![v28 isEqual:?])
    {
      LOBYTE(v9) = 0;
LABEL_25:

      goto LABEL_26;
    }
  }

  v29 = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  v14 = [v6 otherShortHandle];
  if (v29 == v14 || (-[CTStewieIMessageLiteMessageIncoming otherShortHandle](self, "otherShortHandle"), v27 = objc_claimAutoreleasedReturnValue(), [v6 otherShortHandle], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "isEqual:")))
  {
    v16 = [(CTStewieIMessageLiteMessageIncoming *)self partNumber];
    if (v16 != [v6 partNumber] || (v17 = -[CTStewieIMessageLiteMessageIncoming totalParts](self, "totalParts"), v17 != objc_msgSend(v6, "totalParts")))
    {
      LOBYTE(v9) = 0;
      goto LABEL_22;
    }

    v18 = [(CTStewieIMessageLiteMessageIncoming *)self payload];
    v24 = [v6 payload];
    if (v18 == v24 || (-[CTStewieIMessageLiteMessageIncoming payload](self, "payload"), v23 = objc_claimAutoreleasedReturnValue(), [v6 payload], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "isEqual:")))
    {
      v19 = [(CTStewieIMessageLiteMessageIncoming *)self isRelay];
      v9 = v19 ^ [v6 isRelay] ^ 1;
      v20 = v24;
      if (v18 == v24)
      {
LABEL_21:

LABEL_22:
        v15 = v29;
        if (v29 == v14)
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

    v20 = v24;
    goto LABEL_21;
  }

  LOBYTE(v9) = 0;
  v15 = v29;
LABEL_23:

LABEL_24:
  if (v12 != v13)
  {
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
  if (v7 != v8)
  {
    goto LABEL_28;
  }

LABEL_29:

  return v9;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteMessageIncoming *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
  v7 = [v6 copyWithZone:a3];
  [v5 setTimestamp:v7];

  [v5 setPendingTotalCount:{-[CTStewieIMessageLiteMessageIncoming pendingTotalCount](self, "pendingTotalCount")}];
  [v5 setPendingCount:{-[CTStewieIMessageLiteMessageIncoming pendingCount](self, "pendingCount")}];
  v8 = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  v9 = [v8 copyWithZone:a3];
  [v5 setMyShortHandle:v9];

  v10 = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  v11 = [v10 copyWithZone:a3];
  [v5 setOtherShortHandle:v11];

  [v5 setPartNumber:{-[CTStewieIMessageLiteMessageIncoming partNumber](self, "partNumber")}];
  [v5 setTotalParts:{-[CTStewieIMessageLiteMessageIncoming totalParts](self, "totalParts")}];
  v12 = [(CTStewieIMessageLiteMessageIncoming *)self payload];
  v13 = [v12 copyWithZone:a3];
  [v5 setPayload:v13];

  [v5 setIsRelay:{-[CTStewieIMessageLiteMessageIncoming isRelay](self, "isRelay")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(CTStewieIMessageLiteMessageIncoming *)self timestamp];
  [v8 encodeObject:v4 forKey:@"timestamp"];

  [v8 encodeInteger:-[CTStewieIMessageLiteMessageIncoming pendingTotalCount](self forKey:{"pendingTotalCount"), @"pendingTotalCount"}];
  [v8 encodeInteger:-[CTStewieIMessageLiteMessageIncoming pendingCount](self forKey:{"pendingCount"), @"pendingCount"}];
  v5 = [(CTStewieIMessageLiteMessageIncoming *)self myShortHandle];
  [v8 encodeObject:v5 forKey:@"myShortHandle"];

  v6 = [(CTStewieIMessageLiteMessageIncoming *)self otherShortHandle];
  [v8 encodeObject:v6 forKey:@"otherShortHandle"];

  [v8 encodeInteger:-[CTStewieIMessageLiteMessageIncoming partNumber](self forKey:{"partNumber"), @"partNumber"}];
  [v8 encodeInteger:-[CTStewieIMessageLiteMessageIncoming totalParts](self forKey:{"totalParts"), @"totalParts"}];
  v7 = [(CTStewieIMessageLiteMessageIncoming *)self payload];
  [v8 encodeObject:v7 forKey:@"payload"];

  [v8 encodeBool:-[CTStewieIMessageLiteMessageIncoming isRelay](self forKey:{"isRelay"), @"isRelay"}];
}

- (CTStewieIMessageLiteMessageIncoming)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v6 = [v4 decodeIntegerForKey:@"pendingTotalCount"];
  v7 = [v4 decodeIntegerForKey:@"pendingCount"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"myShortHandle"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherShortHandle"];
  v10 = [v4 decodeIntegerForKey:@"partNumber"];
  v11 = [v4 decodeIntegerForKey:@"totalParts"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  LOBYTE(v15) = [v4 decodeBoolForKey:@"isRelay"];
  v13 = [(CTStewieIMessageLiteMessageIncoming *)self initWithTimestamp:v5 pendingTotalCount:v6 pendingCount:v7 myShortHandle:v8 otherShortHandle:v9 partNumber:v10 totalParts:v11 payload:v12 isRelay:v15 error:0];

  return v13;
}

@end