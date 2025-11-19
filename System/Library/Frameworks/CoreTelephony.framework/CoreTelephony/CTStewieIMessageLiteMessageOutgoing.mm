@interface CTStewieIMessageLiteMessageOutgoing
+ (double)estimatedSendTimeForPayload:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieIMessageLiteMessageOutgoing)initWithCoder:(id)a3;
- (CTStewieIMessageLiteMessageOutgoing)initWithMyShortHandle:(id)a3 otherShortHandle:(id)a4 partNumber:(int64_t)a5 totalParts:(int64_t)a6 payload:(id)a7 isRelay:(BOOL)a8 error:(id *)a9;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieIMessageLiteMessageOutgoing

- (CTStewieIMessageLiteMessageOutgoing)initWithMyShortHandle:(id)a3 otherShortHandle:(id)a4 partNumber:(int64_t)a5 totalParts:(int64_t)a6 payload:(id)a7 isRelay:(BOOL)a8 error:(id *)a9
{
  v50[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v37 = a7;
  {
    if (a9)
    {
      v22 = MEMORY[0x1E696ABC0];
      v49 = *MEMORY[0x1E696A578];
      v50[0] = @"Invalid myShortHandle";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      *a9 = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];
    }

    goto LABEL_22;
  }

  {
    if (a9)
    {
      v24 = MEMORY[0x1E696ABC0];
      v47 = *MEMORY[0x1E696A578];
      v48 = @"Invalid otherShortHandle";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      *a9 = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];
    }

    goto LABEL_22;
  }

  if ((a5 - 1) >= 4)
  {
    if (a9)
    {
      v26 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"Invalid partNumber";
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a9 = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];
    }

    goto LABEL_22;
  }

  if ((a6 - 1) >= 4)
  {
    if (a9)
    {
      v28 = MEMORY[0x1E696ABC0];
      v43 = *MEMORY[0x1E696A578];
      v44 = @"Invalid totalParts";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *a9 = [v28 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v29];
    }

    goto LABEL_22;
  }

  if (!v37)
  {
    if (a9)
    {
      v30 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42 = @"Payload is missing";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *a9 = [v30 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v31];
    }

    goto LABEL_22;
  }

  if ([v37 length] >= 0x94)
  {
    if (a9)
    {
      v20 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A578];
      v40 = @"Payload is too big";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *a9 = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];
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
    v34 = 0;
    goto LABEL_23;
  }

  objc_storeStrong(&v32->_myShortHandle, a3);
  objc_storeStrong(&v33->_otherShortHandle, a4);
  v33->_partNumber = a5;
  v33->_totalParts = a6;
  objc_storeStrong(&v33->_payload, a7);
  v33->_isRelay = a8;
  self = v33;
  v34 = self;
LABEL_23:

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

+ (double)estimatedSendTimeForPayload:(id)a3
{
  v3 = a3;
  v4 = v3;
  EstimatedSendTimeOverStewieInSeconds = 0.0;
  if (v3 && [v3 length])
  {
    EstimatedSendTimeOverStewieInSeconds = getEstimatedSendTimeOverStewieInSeconds([v4 length] + 17);
  }

  return EstimatedSendTimeOverStewieInSeconds;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v5 = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  [v4 appendFormat:@", myShortHandle=%@", v5];

  v6 = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  [v4 appendFormat:@", otherShortHandle=%@", v6];

  [v4 appendFormat:@", partNumber=%ld", -[CTStewieIMessageLiteMessageOutgoing partNumber](self, "partNumber")];
  [v4 appendFormat:@", totalParts=%ld", -[CTStewieIMessageLiteMessageOutgoing totalParts](self, "totalParts")];
  v7 = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
  if (v7)
  {
    v2 = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
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

  v9 = [(CTStewieIMessageLiteMessageOutgoing *)self isRelay];
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
  v7 = a3;
  v8 = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  v9 = [v7 myShortHandle];
  if (v8 != v9)
  {
    v21 = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
    v3 = [v7 myShortHandle];
    if (![v21 isEqual:v3])
    {
      LOBYTE(v10) = 0;
LABEL_16:

      goto LABEL_17;
    }
  }

  v11 = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  v12 = [v7 otherShortHandle];
  if (v11 == v12 || (-[CTStewieIMessageLiteMessageOutgoing otherShortHandle](self, "otherShortHandle"), v4 = objc_claimAutoreleasedReturnValue(), [v7 otherShortHandle], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "isEqual:", v5)))
  {
    v13 = [(CTStewieIMessageLiteMessageOutgoing *)self partNumber];
    if (v13 != [v7 partNumber] || (v14 = -[CTStewieIMessageLiteMessageOutgoing totalParts](self, "totalParts"), v14 != objc_msgSend(v7, "totalParts")))
    {
      LOBYTE(v10) = 0;
      goto LABEL_13;
    }

    v20 = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
    v19 = [v7 payload];
    if (v20 == v19 || (-[CTStewieIMessageLiteMessageOutgoing payload](self, "payload"), v18 = objc_claimAutoreleasedReturnValue(), [v7 payload], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "isEqual:")))
    {
      v16 = [(CTStewieIMessageLiteMessageOutgoing *)self isRelay];
      v10 = v16 ^ [v7 isRelay] ^ 1;
      if (v20 == v19)
      {

LABEL_13:
        if (v11 == v12)
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
  if (v8 != v9)
  {
    goto LABEL_16;
  }

LABEL_17:

  return v10;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieIMessageLiteMessageOutgoing *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  v7 = [v6 copyWithZone:a3];
  [v5 setMyShortHandle:v7];

  v8 = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  v9 = [v8 copyWithZone:a3];
  [v5 setOtherShortHandle:v9];

  [v5 setPartNumber:{-[CTStewieIMessageLiteMessageOutgoing partNumber](self, "partNumber")}];
  [v5 setTotalParts:{-[CTStewieIMessageLiteMessageOutgoing totalParts](self, "totalParts")}];
  v10 = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
  v11 = [v10 copyWithZone:a3];
  [v5 setPayload:v11];

  [v5 setIsRelay:{-[CTStewieIMessageLiteMessageOutgoing isRelay](self, "isRelay")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CTStewieIMessageLiteMessageOutgoing *)self myShortHandle];
  [v7 encodeObject:v4 forKey:@"myShortHandle"];

  v5 = [(CTStewieIMessageLiteMessageOutgoing *)self otherShortHandle];
  [v7 encodeObject:v5 forKey:@"otherShortHandle"];

  [v7 encodeInteger:-[CTStewieIMessageLiteMessageOutgoing partNumber](self forKey:{"partNumber"), @"partNumber"}];
  [v7 encodeInteger:-[CTStewieIMessageLiteMessageOutgoing totalParts](self forKey:{"totalParts"), @"totalParts"}];
  v6 = [(CTStewieIMessageLiteMessageOutgoing *)self payload];
  [v7 encodeObject:v6 forKey:@"payload"];

  [v7 encodeBool:-[CTStewieIMessageLiteMessageOutgoing isRelay](self forKey:{"isRelay"), @"isRelay"}];
}

- (CTStewieIMessageLiteMessageOutgoing)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"myShortHandle"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherShortHandle"];
  v7 = [v4 decodeIntegerForKey:@"partNumber"];
  v8 = [v4 decodeIntegerForKey:@"totalParts"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
  v10 = -[CTStewieIMessageLiteMessageOutgoing initWithMyShortHandle:otherShortHandle:partNumber:totalParts:payload:isRelay:error:](self, "initWithMyShortHandle:otherShortHandle:partNumber:totalParts:payload:isRelay:error:", v5, v6, v7, v8, v9, [v4 decodeBoolForKey:@"isRelay"], 0);

  return v10;
}

@end