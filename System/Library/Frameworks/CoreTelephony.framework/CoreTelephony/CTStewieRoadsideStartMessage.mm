@interface CTStewieRoadsideStartMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoadsideStartMessage:(id)a3;
- (CTStewieRoadsideStartMessage)initWithCoder:(id)a3;
- (CTStewieRoadsideStartMessage)initWithDictionary:(id)a3 error:(id *)a4;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieRoadsideStartMessage

- (CTStewieRoadsideStartMessage)initWithDictionary:(id)a3 error:(id *)a4
{
  v48[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 valueForKey:@"conversationID"];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 integerValue];
      if (v10 < 0x100)
      {
        v11 = [v7 valueForKey:@"providerId"];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 integerValue];
          if (v13 < 0x8000)
          {
            v14 = [v7 valueForKey:@"isPayPerUse"];
            if (!v14)
            {
              if (!a4)
              {
                v20 = 0;
                goto LABEL_35;
              }

              v27 = MEMORY[0x1E696ABC0];
              v37 = *MEMORY[0x1E696A578];
              v38 = @"isPayPerUseNum is missing";
              v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
              [v27 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v16];
              *a4 = v20 = 0;
              goto LABEL_34;
            }

            v15 = [v7 valueForKey:@"phoneNumber"];
            v16 = v15;
            if (v15)
            {
              if ([(_anonymous_namespace_ *)v15 length])
              {
                {
                  if (a4)
                  {
                    v17 = MEMORY[0x1E696ABC0];
                    v35 = *MEMORY[0x1E696A578];
                    v36 = @"phoneNumber is invalid. Phone number can only contain digits and must be of length <= 15";
                    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
                    *a4 = [v17 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v18];
                  }

                  goto LABEL_33;
                }
              }

              else
              {

                v16 = 0;
              }
            }

            v34.receiver = self;
            v34.super_class = CTStewieRoadsideStartMessage;
            v28 = [(CTStewieRoadsideStartMessage *)&v34 init];
            v29 = v28;
            if (v28)
            {
              v28->_conversationID = v10;
              v28->_providerId = v13;
              v28->_isPayPerUse = [v14 BOOLValue];
              v30 = [v7 valueForKey:@"serializedQuestionnaireAnswers"];
              serializedQuestionnaireAnswers = v29->_serializedQuestionnaireAnswers;
              v29->_serializedQuestionnaireAnswers = v30;

              objc_storeStrong(&v29->_phoneNumber, v16);
              self = v29;
              v20 = self;
LABEL_34:

              goto LABEL_35;
            }

            self = 0;
LABEL_33:
            v20 = 0;
            goto LABEL_34;
          }

          if (a4)
          {
            v26 = MEMORY[0x1E696ABC0];
            v39 = *MEMORY[0x1E696A578];
            v40 = @"providerId is invalid";
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            v25 = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v14];
            goto LABEL_25;
          }
        }

        else if (a4)
        {
          v24 = MEMORY[0x1E696ABC0];
          v41 = *MEMORY[0x1E696A578];
          v42 = @"providerIdNum is missing";
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v25 = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v14];
LABEL_25:
          v20 = 0;
          *a4 = v25;
LABEL_35:

          goto LABEL_36;
        }

        v20 = 0;
LABEL_36:

        goto LABEL_37;
      }

      if (a4)
      {
        v23 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A578];
        v44 = @"conversationID is invalid";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v22 = [v23 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];
        goto LABEL_18;
      }
    }

    else if (a4)
    {
      v21 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"conversationID is missing";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v22 = [v21 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];
LABEL_18:
      v20 = 0;
      *a4 = v22;
      goto LABEL_36;
    }

    v20 = 0;
LABEL_37:

    goto LABEL_38;
  }

  if (a4)
  {
    v19 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"Empty dictionary";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    [v19 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];
    *a4 = v20 = 0;
    goto LABEL_37;
  }

  v20 = 0;
LABEL_38:

  v32 = *MEMORY[0x1E69E9840];
  return v20;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v4 appendFormat:@", conversationID=%ld", -[CTStewieRoadsideStartMessage conversationID](self, "conversationID")];
  [v4 appendFormat:@", providerId=%ld", -[CTStewieRoadsideStartMessage providerId](self, "providerId")];
  v5 = [(CTStewieRoadsideStartMessage *)self isPayPerUse];
  v6 = "no";
  if (v5)
  {
    v6 = "yes";
  }

  [v4 appendFormat:@", isPayPerUse=%s", v6];
  v7 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  if (v7)
  {
    v2 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
    v8 = [v2 length];
  }

  else
  {
    v8 = 0;
  }

  [v4 appendFormat:@", serializedQuestionnaireAnswers length=%lu", v8];
  if (v7)
  {
  }

  v9 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  if (v9)
  {
    v2 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
    v10 = [v2 length];
  }

  else
  {
    v10 = 0;
  }

  [v4 appendFormat:@", phoneNumber length=%lu", v10];
  if (v9)
  {
  }

  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToRoadsideStartMessage:(id)a3
{
  v6 = a3;
  v7 = [(CTStewieRoadsideStartMessage *)self conversationID];
  if (v7 == [v6 conversationID])
  {
    v8 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
    v9 = [v6 serializedQuestionnaireAnswers];
    if (v8 == v9 || (-[CTStewieRoadsideStartMessage serializedQuestionnaireAnswers](self, "serializedQuestionnaireAnswers"), v3 = objc_claimAutoreleasedReturnValue(), [v6 serializedQuestionnaireAnswers], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(CTStewieRoadsideStartMessage *)self isPayPerUse];
      if (v11 == [v6 isPayPerUse] && (v12 = -[CTStewieRoadsideStartMessage providerId](self, "providerId"), v12 == objc_msgSend(v6, "providerId")))
      {
        v13 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
        v14 = [v6 phoneNumber];
        v15 = v14;
        if (v13 == v14)
        {

          v10 = 1;
        }

        else
        {
          v16 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
          v17 = [v6 phoneNumber];
          v10 = [v16 isEqualToString:v17];
        }
      }

      else
      {
        v10 = 0;
      }

      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_13:
    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieRoadsideStartMessage *)self isEqualToRoadsideStartMessage:v4];
  }

  return v5;
}

- (double)estimatedSendTime
{
  v3 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  v4 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  if (v4)
  {
    v5 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
    v6 = [v5 length];
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 18;
  }

  else
  {
    v7 = 12;
  }

  return getEstimatedSendTimeOverStewieInSeconds(v6 + v7);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setConversationID:{-[CTStewieRoadsideStartMessage conversationID](self, "conversationID")}];
  [v5 setProviderId:{-[CTStewieRoadsideStartMessage providerId](self, "providerId")}];
  [v5 setIsPayPerUse:{-[CTStewieRoadsideStartMessage isPayPerUse](self, "isPayPerUse")}];
  v6 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  v7 = [v6 copyWithZone:a3];
  [v5 setSerializedQuestionnaireAnswers:v7];

  v8 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  v9 = [v8 copyWithZone:a3];
  [v5 setPhoneNumber:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInteger:-[CTStewieRoadsideStartMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  [v6 encodeInteger:-[CTStewieRoadsideStartMessage providerId](self forKey:{"providerId"), @"providerId"}];
  [v6 encodeBool:-[CTStewieRoadsideStartMessage isPayPerUse](self forKey:{"isPayPerUse"), @"isPayPerUse"}];
  v4 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  [v6 encodeObject:v4 forKey:@"serializedQuestionnaireAnswers"];

  v5 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  [v6 encodeObject:v5 forKey:@"phoneNumber"];
}

- (CTStewieRoadsideStartMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CTStewieRoadsideStartMessage;
  v5 = [(CTStewieRoadsideStartMessage *)&v10 init];
  if (v5)
  {
    -[CTStewieRoadsideStartMessage setConversationID:](v5, "setConversationID:", [v4 decodeIntegerForKey:@"conversationID"]);
    -[CTStewieRoadsideStartMessage setProviderId:](v5, "setProviderId:", [v4 decodeIntegerForKey:@"providerId"]);
    -[CTStewieRoadsideStartMessage setIsPayPerUse:](v5, "setIsPayPerUse:", [v4 decodeBoolForKey:@"isPayPerUse"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedQuestionnaireAnswers"];
    [(CTStewieRoadsideStartMessage *)v5 setSerializedQuestionnaireAnswers:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    [(CTStewieRoadsideStartMessage *)v5 setPhoneNumber:v7];

    v8 = v5;
  }

  return v5;
}

@end