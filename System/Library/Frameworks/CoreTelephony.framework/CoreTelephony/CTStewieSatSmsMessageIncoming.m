@interface CTStewieSatSmsMessageIncoming
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieSatSmsMessageIncoming)initWithCoder:(id)a3;
- (CTStewieSatSmsMessageIncoming)initWithContext:(id)a3 timestamp:(id)a4 pendingTotalCount:(int64_t)a5 pendingCount:(int64_t)a6 sourcePhoneNumber:(id)a7 codecID:(int64_t)a8 textPayload:(id)a9 uniqueID:(id)a10 error:(id *)a11;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieSatSmsMessageIncoming

- (CTStewieSatSmsMessageIncoming)initWithContext:(id)a3 timestamp:(id)a4 pendingTotalCount:(int64_t)a5 pendingCount:(int64_t)a6 sourcePhoneNumber:(id)a7 codecID:(int64_t)a8 textPayload:(id)a9 uniqueID:(id)a10 error:(id *)a11
{
  v68[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v46 = a7;
  v49 = a9;
  v48 = a10;
  v44 = v16;
  v45 = v17;
  if (v16)
  {
    if (v17)
    {
      v18 = self;
      if (a6 < 0)
      {
        v19 = v46;
        if (a11)
        {
          v26 = MEMORY[0x1E696ABC0];
          v63 = *MEMORY[0x1E696A578];
          v64 = @"Invalid pendingCount";
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          *a11 = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];
        }

        goto LABEL_36;
      }

      v19 = v46;
      if (a5 < 0)
      {
        if (a11)
        {
          v31 = MEMORY[0x1E696ABC0];
          v61 = *MEMORY[0x1E696A578];
          v62 = @"Invalid pendingTotalCount";
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          *a11 = [v31 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v32];
        }

        goto LABEL_36;
      }

      if (!v46 || ![v46 length])
      {
        if (a11)
        {
          v29 = MEMORY[0x1E696ABC0];
          v59 = *MEMORY[0x1E696A578];
          v60 = @"sourcePhoneNumber is missing";
          v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          *a11 = [v29 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v30];
        }

        goto LABEL_36;
      }

      {
        if (a11)
        {
          v33 = MEMORY[0x1E696ABC0];
          v57 = *MEMORY[0x1E696A578];
          v58 = @"sourcePhoneNumber is invalid";
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          *a11 = [v33 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v34];
        }

        goto LABEL_36;
      }

      if (a8 >= 0x10)
      {
        if (a11)
        {
          v20 = MEMORY[0x1E696ABC0];
          v55 = *MEMORY[0x1E696A578];
          v56 = @"Invalid codecID";
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          *a11 = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];
        }

        goto LABEL_36;
      }

      if (!v49 || ![v49 length])
      {
        if (a11)
        {
          v37 = MEMORY[0x1E696ABC0];
          v53 = *MEMORY[0x1E696A578];
          v54 = @"textPayload is missing";
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          *a11 = [v37 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v38];
        }

        goto LABEL_36;
      }

      if (!v48 || ![v48 length])
      {
        if (a11)
        {
          v39 = MEMORY[0x1E696ABC0];
          v51 = *MEMORY[0x1E696A578];
          v52 = @"uniqueID is missing";
          v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *a11 = [v39 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v40];
        }

        goto LABEL_36;
      }

      v50.receiver = self;
      v50.super_class = CTStewieSatSmsMessageIncoming;
      v35 = [(CTStewieSatSmsMessageIncoming *)&v50 init];
      v36 = v35;
      if (v35)
      {
        objc_storeStrong(&v35->_context, a3);
        objc_storeStrong(&v36->_timestamp, a4);
        v36->_pendingTotalCount = a5;
        v36->_pendingCount = a6;
        objc_storeStrong(&v36->_sourcePhoneNumber, a7);
        v36->_codecID = a8;
        objc_storeStrong(&v36->_textPayload, a9);
        objc_storeStrong(&v36->_uniqueID, a10);
        v18 = v36;
        v28 = v18;
        goto LABEL_37;
      }

      v18 = 0;
LABEL_36:
      v28 = 0;
      goto LABEL_37;
    }

    v18 = self;
    if (a11)
    {
      v24 = MEMORY[0x1E696ABC0];
      v65 = *MEMORY[0x1E696A578];
      v66 = @"timestamp is missing";
      v19 = v46;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      *a11 = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];

      goto LABEL_36;
    }

    v28 = 0;
    v19 = v46;
  }

  else
  {
    if (a11)
    {
      v22 = MEMORY[0x1E696ABC0];
      v67 = *MEMORY[0x1E696A578];
      v68[0] = @"Context is missing";
      v19 = v46;
      v18 = self;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
      *a11 = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];

      goto LABEL_36;
    }

    v28 = 0;
    v19 = v46;
    v18 = self;
  }

LABEL_37:

  v41 = *MEMORY[0x1E69E9840];
  return v28;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTStewieSatSmsMessageIncoming *)self context];
  [v3 appendFormat:@", context=%@", v4];

  v5 = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  [v3 appendFormat:@", timestamp=%@", v5];

  [v3 appendFormat:@", pendingTotalCount=%ld", -[CTStewieSatSmsMessageIncoming pendingTotalCount](self, "pendingTotalCount")];
  [v3 appendFormat:@", pendingCount=%ld", -[CTStewieSatSmsMessageIncoming pendingCount](self, "pendingCount")];
  v6 = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  [v3 appendFormat:@", sourcePhoneNumber=%@", v6];

  [v3 appendFormat:@", codecID=%ld", -[CTStewieSatSmsMessageIncoming codecID](self, "codecID")];
  v7 = [(CTStewieSatSmsMessageIncoming *)self textPayload];
  [v3 appendFormat:@", textPayload size=%lu", objc_msgSend(v7, "length")];

  v8 = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
  [v3 appendFormat:@", uniqueID=%@", v8];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)a3
{
  v7 = a3;
  v8 = [(CTStewieSatSmsMessageIncoming *)self context];
  v9 = [v7 context];
  if (v8 != v9)
  {
    v3 = [(CTStewieSatSmsMessageIncoming *)self context];
    v4 = [v7 context];
    if (![v3 isEqual:v4])
    {
      v10 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  v11 = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  v12 = [v7 timestamp];
  if (v11 != v12)
  {
    v34 = [(CTStewieSatSmsMessageIncoming *)self timestamp];
    v5 = [v7 timestamp];
    if (![v34 isEqual:v5])
    {
      v10 = 0;
LABEL_13:

      goto LABEL_14;
    }
  }

  v13 = [(CTStewieSatSmsMessageIncoming *)self pendingTotalCount];
  if (v13 != [v7 pendingTotalCount] || (v14 = -[CTStewieSatSmsMessageIncoming pendingCount](self, "pendingCount"), v14 != objc_msgSend(v7, "pendingCount")))
  {
    v10 = 0;
    if (v11 == v12)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v33 = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  [v7 sourcePhoneNumber];
  v32 = v31 = v5;
  if (v33 == v32 || (-[CTStewieSatSmsMessageIncoming sourcePhoneNumber](self, "sourcePhoneNumber"), v30 = objc_claimAutoreleasedReturnValue(), [v7 sourcePhoneNumber], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "isEqual:")))
  {
    v18 = [(CTStewieSatSmsMessageIncoming *)self codecID];
    if (v18 != [v7 codecID])
    {
      v10 = 0;
      goto LABEL_28;
    }

    v19 = [(CTStewieSatSmsMessageIncoming *)self textPayload];
    v28 = [v7 textPayload];
    if (v19 == v28 || (-[CTStewieSatSmsMessageIncoming textPayload](self, "textPayload"), v27 = objc_claimAutoreleasedReturnValue(), [v7 textPayload], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "isEqual:")))
    {
      v26 = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
      v21 = [v7 uniqueID];
      if (v26 == v21)
      {

        v10 = 1;
      }

      else
      {
        v23 = v21;
        v24 = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
        v22 = [v7 uniqueID];
        v10 = [v24 isEqual:v22];
      }

      v20 = v28;
      if (v19 == v28)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v10 = 0;
      v20 = v28;
    }

LABEL_27:
LABEL_28:
    v16 = v32;
    v15 = v33;
    if (v33 == v32)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v10 = 0;
  v16 = v32;
  v15 = v33;
LABEL_29:

LABEL_30:
  v5 = v31;
  if (v11 != v12)
  {
    goto LABEL_13;
  }

LABEL_14:

  if (v8 != v9)
  {
    goto LABEL_15;
  }

LABEL_16:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieSatSmsMessageIncoming *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieSatSmsMessageIncoming *)self context];
  v7 = [v6 copyWithZone:a3];
  [v5 setContext:v7];

  v8 = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  v9 = [v8 copyWithZone:a3];
  [v5 setTimestamp:v9];

  [v5 setPendingTotalCount:{-[CTStewieSatSmsMessageIncoming pendingTotalCount](self, "pendingTotalCount")}];
  [v5 setPendingCount:{-[CTStewieSatSmsMessageIncoming pendingCount](self, "pendingCount")}];
  v10 = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  v11 = [v10 copyWithZone:a3];
  [v5 setSourcePhoneNumber:v11];

  [v5 setCodecID:{-[CTStewieSatSmsMessageIncoming codecID](self, "codecID")}];
  v12 = [(CTStewieSatSmsMessageIncoming *)self textPayload];
  v13 = [v12 copyWithZone:a3];
  [v5 setTextPayload:v13];

  v14 = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
  v15 = [v14 copyWithZone:a3];
  [v5 setUniqueID:v15];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(CTStewieSatSmsMessageIncoming *)self context];
  [v9 encodeObject:v4 forKey:@"context"];

  v5 = [(CTStewieSatSmsMessageIncoming *)self timestamp];
  [v9 encodeObject:v5 forKey:@"timestamp"];

  [v9 encodeInteger:-[CTStewieSatSmsMessageIncoming pendingTotalCount](self forKey:{"pendingTotalCount"), @"pendingTotalCount"}];
  [v9 encodeInteger:-[CTStewieSatSmsMessageIncoming pendingCount](self forKey:{"pendingCount"), @"pendingCount"}];
  v6 = [(CTStewieSatSmsMessageIncoming *)self sourcePhoneNumber];
  [v9 encodeObject:v6 forKey:@"phoneNumber"];

  [v9 encodeInteger:-[CTStewieSatSmsMessageIncoming codecID](self forKey:{"codecID"), @"codecID"}];
  v7 = [(CTStewieSatSmsMessageIncoming *)self textPayload];
  [v9 encodeObject:v7 forKey:@"textPayload"];

  v8 = [(CTStewieSatSmsMessageIncoming *)self uniqueID];
  [v9 encodeObject:v8 forKey:@"uniqueID"];
}

- (CTStewieSatSmsMessageIncoming)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v7 = [v4 decodeIntegerForKey:@"pendingTotalCount"];
  v8 = [v4 decodeIntegerForKey:@"pendingCount"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v10 = [v4 decodeIntegerForKey:@"codecID"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textPayload"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  v13 = [(CTStewieSatSmsMessageIncoming *)self initWithContext:v5 timestamp:v6 pendingTotalCount:v7 pendingCount:v8 sourcePhoneNumber:v9 codecID:v10 textPayload:v11 uniqueID:v12 error:0];

  return v13;
}

@end