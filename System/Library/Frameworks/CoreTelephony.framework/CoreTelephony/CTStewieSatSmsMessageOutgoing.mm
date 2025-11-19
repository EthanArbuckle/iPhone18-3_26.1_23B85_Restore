@interface CTStewieSatSmsMessageOutgoing
+ (double)estimatedSendTimeForTextPayload:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOther:(id)a3;
- (CTStewieSatSmsMessageOutgoing)initWithCoder:(id)a3;
- (CTStewieSatSmsMessageOutgoing)initWithContext:(id)a3 destinationPhoneNumber:(id)a4 codecID:(int64_t)a5 textPayload:(id)a6 notifyDowngrade:(BOOL)a7 error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieSatSmsMessageOutgoing

- (CTStewieSatSmsMessageOutgoing)initWithContext:(id)a3 destinationPhoneNumber:(id)a4 codecID:(int64_t)a5 textPayload:(id)a6 notifyDowngrade:(BOOL)a7 error:(id *)p_isa
{
  v45[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  if (v15)
  {
    if (v16 && [(_anonymous_namespace_ *)v16 length])
    {
      {
        if (a5 < 0x10)
        {
          if (v17 && [v17 length])
          {
            if ([v17 length] < 0x8F)
            {
              v33.receiver = self;
              v33.super_class = CTStewieSatSmsMessageOutgoing;
              v32 = [(CTStewieSatSmsMessageOutgoing *)&v33 init];
              p_isa = &v32->super.isa;
              if (v32)
              {
                objc_storeStrong(&v32->_context, a3);
                objc_storeStrong(p_isa + 3, a4);
                p_isa[4] = a5;
                objc_storeStrong(p_isa + 5, a6);
                *(p_isa + 8) = a7;
                self = p_isa;
                p_isa = &self->super.isa;
              }

              else
              {
                self = 0;
              }
            }

            else if (p_isa)
            {
              v26 = MEMORY[0x1E696ABC0];
              v34 = *MEMORY[0x1E696A578];
              v35 = @"textPayload is too big";
              v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
              *p_isa = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];

              goto LABEL_21;
            }
          }

          else if (p_isa)
          {
            v28 = MEMORY[0x1E696ABC0];
            v36 = *MEMORY[0x1E696A578];
            v37 = @"textPayload is missing";
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
            *p_isa = [v28 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v29];

            goto LABEL_21;
          }
        }

        else if (p_isa)
        {
          v18 = MEMORY[0x1E696ABC0];
          v38 = *MEMORY[0x1E696A578];
          v39 = @"Invalid codecID";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          *p_isa = [v18 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v19];

LABEL_21:
          p_isa = 0;
        }
      }

      else if (p_isa)
      {
        v24 = MEMORY[0x1E696ABC0];
        v40 = *MEMORY[0x1E696A578];
        v41 = @"destinationPhoneNumber is invalid";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        *p_isa = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];

        goto LABEL_21;
      }
    }

    else if (p_isa)
    {
      v20 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v43 = @"destinationPhoneNumber is missing";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      *p_isa = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];

      goto LABEL_21;
    }
  }

  else if (p_isa)
  {
    v22 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    v45[0] = @"Context is missing";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    *p_isa = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];

    goto LABEL_21;
  }

  v30 = *MEMORY[0x1E69E9840];
  return p_isa;
}

+ (double)estimatedSendTimeForTextPayload:(id)a3
{
  v3 = a3;
  v4 = v3;
  EstimatedSendTimeOverStewieInSeconds = 0.0;
  if (v3)
  {
    v6 = [v3 lengthOfBytesUsingEncoding:4];
    if (v6)
    {
      EstimatedSendTimeOverStewieInSeconds = getEstimatedSendTimeOverStewieInSeconds(v6 + 22);
    }
  }

  return EstimatedSendTimeOverStewieInSeconds;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTStewieSatSmsMessageOutgoing *)self context];
  [v3 appendFormat:@", context=%@", v4];

  v5 = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  [v3 appendFormat:@", destinationPhoneNumber=%@", v5];

  [v3 appendFormat:@", codecID=%ld", -[CTStewieSatSmsMessageOutgoing codecID](self, "codecID")];
  v6 = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
  [v3 appendFormat:@", textPayload size=%lu", objc_msgSend(v6, "length")];

  v7 = [(CTStewieSatSmsMessageOutgoing *)self notifyDowngrade];
  v8 = "no";
  if (v7)
  {
    v8 = "yes";
  }

  [v3 appendFormat:@", notifyDowngrade=%s", v8];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToOther:(id)a3
{
  v6 = a3;
  v7 = [(CTStewieSatSmsMessageOutgoing *)self context];
  v8 = [v6 context];
  if (v7 != v8)
  {
    v20 = [(CTStewieSatSmsMessageOutgoing *)self context];
    v18 = [v6 context];
    if (![v20 isEqual:?])
    {
      LOBYTE(v9) = 0;
LABEL_18:

      goto LABEL_19;
    }
  }

  v10 = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  v11 = [v6 destinationPhoneNumber];
  if (v10 == v11 || (-[CTStewieSatSmsMessageOutgoing destinationPhoneNumber](self, "destinationPhoneNumber"), v19 = objc_claimAutoreleasedReturnValue(), [v6 destinationPhoneNumber], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "isEqual:", v4)))
  {
    v12 = [(CTStewieSatSmsMessageOutgoing *)self codecID];
    if (v12 != [v6 codecID])
    {
      LOBYTE(v9) = 0;
      goto LABEL_15;
    }

    v13 = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
    v14 = [v6 textPayload];
    if (v13 == v14 || (-[CTStewieSatSmsMessageOutgoing textPayload](self, "textPayload"), v17 = objc_claimAutoreleasedReturnValue(), [v6 textPayload], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "isEqual:", v3)))
    {
      v15 = [(CTStewieSatSmsMessageOutgoing *)self notifyDowngrade];
      v9 = v15 ^ [v6 notifyDowngrade] ^ 1;
      if (v13 == v14)
      {
LABEL_14:

LABEL_15:
        if (v10 == v11)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    goto LABEL_14;
  }

  LOBYTE(v9) = 0;
LABEL_16:

LABEL_17:
  if (v7 != v8)
  {
    goto LABEL_18;
  }

LABEL_19:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieSatSmsMessageOutgoing *)self isEqualToOther:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(CTStewieSatSmsMessageOutgoing *)self context];
  v7 = [v6 copyWithZone:a3];
  [v5 setContext:v7];

  v8 = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  v9 = [v8 copyWithZone:a3];
  [v5 setDestinationPhoneNumber:v9];

  [v5 setCodecID:{-[CTStewieSatSmsMessageOutgoing codecID](self, "codecID")}];
  v10 = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
  v11 = [v10 copyWithZone:a3];
  [v5 setTextPayload:v11];

  [v5 setNotifyDowngrade:{-[CTStewieSatSmsMessageOutgoing notifyDowngrade](self, "notifyDowngrade")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CTStewieSatSmsMessageOutgoing *)self context];
  [v7 encodeObject:v4 forKey:@"context"];

  v5 = [(CTStewieSatSmsMessageOutgoing *)self destinationPhoneNumber];
  [v7 encodeObject:v5 forKey:@"phoneNumber"];

  [v7 encodeInteger:-[CTStewieSatSmsMessageOutgoing codecID](self forKey:{"codecID"), @"codecID"}];
  v6 = [(CTStewieSatSmsMessageOutgoing *)self textPayload];
  [v7 encodeObject:v6 forKey:@"textPayload"];

  [v7 encodeBool:-[CTStewieSatSmsMessageOutgoing notifyDowngrade](self forKey:{"notifyDowngrade"), @"notifyDowngrade"}];
}

- (CTStewieSatSmsMessageOutgoing)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
  v7 = [v4 decodeIntegerForKey:@"codecID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textPayload"];
  v9 = -[CTStewieSatSmsMessageOutgoing initWithContext:destinationPhoneNumber:codecID:textPayload:notifyDowngrade:error:](self, "initWithContext:destinationPhoneNumber:codecID:textPayload:notifyDowngrade:error:", v5, v6, v7, v8, [v4 decodeBoolForKey:@"notifyDowngrade"], 0);

  return v9;
}

@end