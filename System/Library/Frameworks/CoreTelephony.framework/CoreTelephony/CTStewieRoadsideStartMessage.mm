@interface CTStewieRoadsideStartMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoadsideStartMessage:(id)message;
- (CTStewieRoadsideStartMessage)initWithCoder:(id)coder;
- (CTStewieRoadsideStartMessage)initWithDictionary:(id)dictionary error:(id *)error;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieRoadsideStartMessage

- (CTStewieRoadsideStartMessage)initWithDictionary:(id)dictionary error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v8 = [dictionaryCopy valueForKey:@"conversationID"];
    v9 = v8;
    if (v8)
    {
      integerValue = [v8 integerValue];
      if (integerValue < 0x100)
      {
        v11 = [v7 valueForKey:@"providerId"];
        v12 = v11;
        if (v11)
        {
          integerValue2 = [v11 integerValue];
          if (integerValue2 < 0x8000)
          {
            v14 = [v7 valueForKey:@"isPayPerUse"];
            if (!v14)
            {
              if (!error)
              {
                selfCopy = 0;
                goto LABEL_35;
              }

              v27 = MEMORY[0x1E696ABC0];
              v37 = *MEMORY[0x1E696A578];
              v38 = @"isPayPerUseNum is missing";
              v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
              [v27 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v16];
              *error = selfCopy = 0;
              goto LABEL_34;
            }

            v15 = [v7 valueForKey:@"phoneNumber"];
            v16 = v15;
            if (v15)
            {
              if ([(_anonymous_namespace_ *)v15 length])
              {
                {
                  if (error)
                  {
                    v17 = MEMORY[0x1E696ABC0];
                    v35 = *MEMORY[0x1E696A578];
                    v36 = @"phoneNumber is invalid. Phone number can only contain digits and must be of length <= 15";
                    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
                    *error = [v17 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v18];
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
              v28->_conversationID = integerValue;
              v28->_providerId = integerValue2;
              v28->_isPayPerUse = [v14 BOOLValue];
              v30 = [v7 valueForKey:@"serializedQuestionnaireAnswers"];
              serializedQuestionnaireAnswers = v29->_serializedQuestionnaireAnswers;
              v29->_serializedQuestionnaireAnswers = v30;

              objc_storeStrong(&v29->_phoneNumber, v16);
              self = v29;
              selfCopy = self;
LABEL_34:

              goto LABEL_35;
            }

            self = 0;
LABEL_33:
            selfCopy = 0;
            goto LABEL_34;
          }

          if (error)
          {
            v26 = MEMORY[0x1E696ABC0];
            v39 = *MEMORY[0x1E696A578];
            v40 = @"providerId is invalid";
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
            v25 = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v14];
            goto LABEL_25;
          }
        }

        else if (error)
        {
          v24 = MEMORY[0x1E696ABC0];
          v41 = *MEMORY[0x1E696A578];
          v42 = @"providerIdNum is missing";
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          v25 = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v14];
LABEL_25:
          selfCopy = 0;
          *error = v25;
LABEL_35:

          goto LABEL_36;
        }

        selfCopy = 0;
LABEL_36:

        goto LABEL_37;
      }

      if (error)
      {
        v23 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A578];
        v44 = @"conversationID is invalid";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        v22 = [v23 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];
        goto LABEL_18;
      }
    }

    else if (error)
    {
      v21 = MEMORY[0x1E696ABC0];
      v45 = *MEMORY[0x1E696A578];
      v46 = @"conversationID is missing";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v22 = [v21 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];
LABEL_18:
      selfCopy = 0;
      *error = v22;
      goto LABEL_36;
    }

    selfCopy = 0;
LABEL_37:

    goto LABEL_38;
  }

  if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v47 = *MEMORY[0x1E696A578];
    v48[0] = @"Empty dictionary";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    [v19 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];
    *error = selfCopy = 0;
    goto LABEL_37;
  }

  selfCopy = 0;
LABEL_38:

  v32 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v4 appendFormat:@", conversationID=%ld", -[CTStewieRoadsideStartMessage conversationID](self, "conversationID")];
  [v4 appendFormat:@", providerId=%ld", -[CTStewieRoadsideStartMessage providerId](self, "providerId")];
  isPayPerUse = [(CTStewieRoadsideStartMessage *)self isPayPerUse];
  v6 = "no";
  if (isPayPerUse)
  {
    v6 = "yes";
  }

  [v4 appendFormat:@", isPayPerUse=%s", v6];
  serializedQuestionnaireAnswers = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  if (serializedQuestionnaireAnswers)
  {
    serializedQuestionnaireAnswers2 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
    v8 = [serializedQuestionnaireAnswers2 length];
  }

  else
  {
    v8 = 0;
  }

  [v4 appendFormat:@", serializedQuestionnaireAnswers length=%lu", v8];
  if (serializedQuestionnaireAnswers)
  {
  }

  phoneNumber = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  if (phoneNumber)
  {
    serializedQuestionnaireAnswers2 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
    v10 = [serializedQuestionnaireAnswers2 length];
  }

  else
  {
    v10 = 0;
  }

  [v4 appendFormat:@", phoneNumber length=%lu", v10];
  if (phoneNumber)
  {
  }

  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToRoadsideStartMessage:(id)message
{
  messageCopy = message;
  conversationID = [(CTStewieRoadsideStartMessage *)self conversationID];
  if (conversationID == [messageCopy conversationID])
  {
    serializedQuestionnaireAnswers = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
    serializedQuestionnaireAnswers2 = [messageCopy serializedQuestionnaireAnswers];
    if (serializedQuestionnaireAnswers == serializedQuestionnaireAnswers2 || (-[CTStewieRoadsideStartMessage serializedQuestionnaireAnswers](self, "serializedQuestionnaireAnswers"), v3 = objc_claimAutoreleasedReturnValue(), [messageCopy serializedQuestionnaireAnswers], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      isPayPerUse = [(CTStewieRoadsideStartMessage *)self isPayPerUse];
      if (isPayPerUse == [messageCopy isPayPerUse] && (v12 = -[CTStewieRoadsideStartMessage providerId](self, "providerId"), v12 == objc_msgSend(messageCopy, "providerId")))
      {
        phoneNumber = [(CTStewieRoadsideStartMessage *)self phoneNumber];
        phoneNumber2 = [messageCopy phoneNumber];
        v15 = phoneNumber2;
        if (phoneNumber == phoneNumber2)
        {

          v10 = 1;
        }

        else
        {
          phoneNumber3 = [(CTStewieRoadsideStartMessage *)self phoneNumber];
          phoneNumber4 = [messageCopy phoneNumber];
          v10 = [phoneNumber3 isEqualToString:phoneNumber4];
        }
      }

      else
      {
        v10 = 0;
      }

      if (serializedQuestionnaireAnswers == serializedQuestionnaireAnswers2)
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieRoadsideStartMessage *)self isEqualToRoadsideStartMessage:equalCopy];
  }

  return v5;
}

- (double)estimatedSendTime
{
  phoneNumber = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  serializedQuestionnaireAnswers = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  if (serializedQuestionnaireAnswers)
  {
    serializedQuestionnaireAnswers2 = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
    v6 = [serializedQuestionnaireAnswers2 length];
  }

  else
  {
    v6 = 0;
  }

  if (phoneNumber)
  {
    v7 = 18;
  }

  else
  {
    v7 = 12;
  }

  return getEstimatedSendTimeOverStewieInSeconds(v6 + v7);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setConversationID:{-[CTStewieRoadsideStartMessage conversationID](self, "conversationID")}];
  [v5 setProviderId:{-[CTStewieRoadsideStartMessage providerId](self, "providerId")}];
  [v5 setIsPayPerUse:{-[CTStewieRoadsideStartMessage isPayPerUse](self, "isPayPerUse")}];
  serializedQuestionnaireAnswers = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  v7 = [serializedQuestionnaireAnswers copyWithZone:zone];
  [v5 setSerializedQuestionnaireAnswers:v7];

  phoneNumber = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  v9 = [phoneNumber copyWithZone:zone];
  [v5 setPhoneNumber:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieRoadsideStartMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  [coderCopy encodeInteger:-[CTStewieRoadsideStartMessage providerId](self forKey:{"providerId"), @"providerId"}];
  [coderCopy encodeBool:-[CTStewieRoadsideStartMessage isPayPerUse](self forKey:{"isPayPerUse"), @"isPayPerUse"}];
  serializedQuestionnaireAnswers = [(CTStewieRoadsideStartMessage *)self serializedQuestionnaireAnswers];
  [coderCopy encodeObject:serializedQuestionnaireAnswers forKey:@"serializedQuestionnaireAnswers"];

  phoneNumber = [(CTStewieRoadsideStartMessage *)self phoneNumber];
  [coderCopy encodeObject:phoneNumber forKey:@"phoneNumber"];
}

- (CTStewieRoadsideStartMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CTStewieRoadsideStartMessage;
  v5 = [(CTStewieRoadsideStartMessage *)&v10 init];
  if (v5)
  {
    -[CTStewieRoadsideStartMessage setConversationID:](v5, "setConversationID:", [coderCopy decodeIntegerForKey:@"conversationID"]);
    -[CTStewieRoadsideStartMessage setProviderId:](v5, "setProviderId:", [coderCopy decodeIntegerForKey:@"providerId"]);
    -[CTStewieRoadsideStartMessage setIsPayPerUse:](v5, "setIsPayPerUse:", [coderCopy decodeBoolForKey:@"isPayPerUse"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedQuestionnaireAnswers"];
    [(CTStewieRoadsideStartMessage *)v5 setSerializedQuestionnaireAnswers:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    [(CTStewieRoadsideStartMessage *)v5 setPhoneNumber:v7];

    v8 = v5;
  }

  return v5;
}

@end