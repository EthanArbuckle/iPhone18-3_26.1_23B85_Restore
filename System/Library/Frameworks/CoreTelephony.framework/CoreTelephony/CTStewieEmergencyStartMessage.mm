@interface CTStewieEmergencyStartMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEmergencyStartMessage:(id)message;
- (CTStewieEmergencyStartMessage)initWithCoder:(id)coder;
- (CTStewieEmergencyStartMessage)initWithDictionary:(id)dictionary error:(id *)error;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieEmergencyStartMessage

- (CTStewieEmergencyStartMessage)initWithDictionary:(id)dictionary error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
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
        v11 = [v7 valueForKey:@"notifyOption"];
        if (!v11)
        {
          if (!error)
          {
            selfCopy = 0;
            goto LABEL_24;
          }

          v22 = MEMORY[0x1E696ABC0];
          v30 = *MEMORY[0x1E696A578];
          v31 = @"notifyOption is missing";
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];
          *error = selfCopy = 0;
          goto LABEL_23;
        }

        v12 = [v7 valueForKey:@"shareEED"];
        if (v12)
        {
          v27.receiver = self;
          v27.super_class = CTStewieEmergencyStartMessage;
          v13 = [(CTStewieEmergencyStartMessage *)&v27 init];
          v14 = v13;
          if (v13)
          {
            v13->_conversationID = integerValue;
            v15 = [v7 valueForKey:@"serializedQuestionnaireAnswers"];
            serializedQuestionnaireAnswers = v14->_serializedQuestionnaireAnswers;
            v14->_serializedQuestionnaireAnswers = v15;

            v14->_notifyOption = [v11 integerValue];
            v14->_shareEED = [v12 BOOLValue];
            self = v14;
            selfCopy = self;
LABEL_23:

            goto LABEL_24;
          }

          self = 0;
        }

        else if (error)
        {
          v23 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E696A578];
          v29 = @"shareEED is missing";
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          *error = [v23 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v24];
        }

        selfCopy = 0;
        goto LABEL_23;
      }

      if (error)
      {
        v21 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E696A578];
        v33 = @"conversationID is invalid";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v20 = [v21 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v11];
        goto LABEL_14;
      }
    }

    else if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v35 = @"conversationID is missing";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v20 = [v19 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v11];
LABEL_14:
      selfCopy = 0;
      *error = v20;
LABEL_24:

      goto LABEL_25;
    }

    selfCopy = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (error)
  {
    v18 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37[0] = @"Empty dictionary";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [v18 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];
    *error = selfCopy = 0;
    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_26:

  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v4 appendFormat:@", conversationID=%ld", -[CTStewieEmergencyStartMessage conversationID](self, "conversationID")];
  serializedQuestionnaireAnswers = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  if (serializedQuestionnaireAnswers)
  {
    serializedQuestionnaireAnswers2 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
    v6 = [serializedQuestionnaireAnswers2 length];
  }

  else
  {
    v6 = 0;
  }

  [v4 appendFormat:@", serializedQuestionnaireAnswers length=%lu", v6];
  if (serializedQuestionnaireAnswers)
  {
  }

  notifyOption = [(CTStewieEmergencyStartMessage *)self notifyOption];
  if (notifyOption > 3)
  {
    v8 = "???";
  }

  else
  {
    v8 = off_1E6A471A8[notifyOption];
  }

  [v4 appendFormat:@", notifyOption=%s", v8];
  shareEED = [(CTStewieEmergencyStartMessage *)self shareEED];
  v10 = "no";
  if (shareEED)
  {
    v10 = "yes";
  }

  [v4 appendFormat:@", shareEED=%s", v10];
  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToEmergencyStartMessage:(id)message
{
  messageCopy = message;
  conversationID = [(CTStewieEmergencyStartMessage *)self conversationID];
  if (conversationID == [messageCopy conversationID])
  {
    serializedQuestionnaireAnswers = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
    serializedQuestionnaireAnswers2 = [messageCopy serializedQuestionnaireAnswers];
    if (serializedQuestionnaireAnswers == serializedQuestionnaireAnswers2 || (-[CTStewieEmergencyStartMessage serializedQuestionnaireAnswers](self, "serializedQuestionnaireAnswers"), v3 = objc_claimAutoreleasedReturnValue(), [messageCopy serializedQuestionnaireAnswers], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      notifyOption = [(CTStewieEmergencyStartMessage *)self notifyOption];
      if (notifyOption == [messageCopy notifyOption])
      {
        shareEED = [(CTStewieEmergencyStartMessage *)self shareEED];
        v10 = shareEED ^ [messageCopy shareEED] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      if (serializedQuestionnaireAnswers == serializedQuestionnaireAnswers2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  LOBYTE(v10) = 0;
LABEL_12:

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieEmergencyStartMessage *)self isEqualToEmergencyStartMessage:equalCopy];
  }

  return v5;
}

- (double)estimatedSendTime
{
  serializedQuestionnaireAnswers = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  if (serializedQuestionnaireAnswers)
  {
    serializedQuestionnaireAnswers2 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
    v5 = [serializedQuestionnaireAnswers2 length];
  }

  else
  {
    v5 = 0;
  }

  shareEED = [(CTStewieEmergencyStartMessage *)self shareEED];
  if (serializedQuestionnaireAnswers)
  {
  }

  v7 = 16;
  if (!shareEED)
  {
    v7 = 0;
  }

  v8 = v5 + v7;

  return getEstimatedSendTimeOverStewieInSeconds(v8 + 12);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setConversationID:{-[CTStewieEmergencyStartMessage conversationID](self, "conversationID")}];
  serializedQuestionnaireAnswers = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  v7 = [serializedQuestionnaireAnswers copyWithZone:zone];
  [v5 setSerializedQuestionnaireAnswers:v7];

  [v5 setNotifyOption:{-[CTStewieEmergencyStartMessage notifyOption](self, "notifyOption")}];
  [v5 setShareEED:{-[CTStewieEmergencyStartMessage shareEED](self, "shareEED")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieEmergencyStartMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  serializedQuestionnaireAnswers = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  [coderCopy encodeObject:serializedQuestionnaireAnswers forKey:@"serializedQuestionnaireAnswers"];

  [coderCopy encodeInteger:-[CTStewieEmergencyStartMessage notifyOption](self forKey:{"notifyOption"), @"notifyOption"}];
  [coderCopy encodeBool:-[CTStewieEmergencyStartMessage shareEED](self forKey:{"shareEED"), @"shareEED"}];
}

- (CTStewieEmergencyStartMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTStewieEmergencyStartMessage;
  v5 = [(CTStewieEmergencyStartMessage *)&v9 init];
  if (v5)
  {
    -[CTStewieEmergencyStartMessage setConversationID:](v5, "setConversationID:", [coderCopy decodeIntegerForKey:@"conversationID"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serializedQuestionnaireAnswers"];
    [(CTStewieEmergencyStartMessage *)v5 setSerializedQuestionnaireAnswers:v6];

    -[CTStewieEmergencyStartMessage setNotifyOption:](v5, "setNotifyOption:", [coderCopy decodeIntegerForKey:@"notifyOption"]);
    -[CTStewieEmergencyStartMessage setShareEED:](v5, "setShareEED:", [coderCopy decodeBoolForKey:@"shareEED"]);
    v7 = v5;
  }

  return v5;
}

@end