@interface CTStewieEmergencyStartMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEmergencyStartMessage:(id)a3;
- (CTStewieEmergencyStartMessage)initWithCoder:(id)a3;
- (CTStewieEmergencyStartMessage)initWithDictionary:(id)a3 error:(id *)a4;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieEmergencyStartMessage

- (CTStewieEmergencyStartMessage)initWithDictionary:(id)a3 error:(id *)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
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
        v11 = [v7 valueForKey:@"notifyOption"];
        if (!v11)
        {
          if (!a4)
          {
            v17 = 0;
            goto LABEL_24;
          }

          v22 = MEMORY[0x1E696ABC0];
          v30 = *MEMORY[0x1E696A578];
          v31 = @"notifyOption is missing";
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v12];
          *a4 = v17 = 0;
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
            v13->_conversationID = v10;
            v15 = [v7 valueForKey:@"serializedQuestionnaireAnswers"];
            serializedQuestionnaireAnswers = v14->_serializedQuestionnaireAnswers;
            v14->_serializedQuestionnaireAnswers = v15;

            v14->_notifyOption = [v11 integerValue];
            v14->_shareEED = [v12 BOOLValue];
            self = v14;
            v17 = self;
LABEL_23:

            goto LABEL_24;
          }

          self = 0;
        }

        else if (a4)
        {
          v23 = MEMORY[0x1E696ABC0];
          v28 = *MEMORY[0x1E696A578];
          v29 = @"shareEED is missing";
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          *a4 = [v23 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v24];
        }

        v17 = 0;
        goto LABEL_23;
      }

      if (a4)
      {
        v21 = MEMORY[0x1E696ABC0];
        v32 = *MEMORY[0x1E696A578];
        v33 = @"conversationID is invalid";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        v20 = [v21 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v11];
        goto LABEL_14;
      }
    }

    else if (a4)
    {
      v19 = MEMORY[0x1E696ABC0];
      v34 = *MEMORY[0x1E696A578];
      v35 = @"conversationID is missing";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v20 = [v19 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v11];
LABEL_14:
      v17 = 0;
      *a4 = v20;
LABEL_24:

      goto LABEL_25;
    }

    v17 = 0;
LABEL_25:

    goto LABEL_26;
  }

  if (a4)
  {
    v18 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37[0] = @"Empty dictionary";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    [v18 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];
    *a4 = v17 = 0;
    goto LABEL_25;
  }

  v17 = 0;
LABEL_26:

  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (NSString)description
{
  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v4 appendFormat:@", conversationID=%ld", -[CTStewieEmergencyStartMessage conversationID](self, "conversationID")];
  v5 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  if (v5)
  {
    v2 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
    v6 = [v2 length];
  }

  else
  {
    v6 = 0;
  }

  [v4 appendFormat:@", serializedQuestionnaireAnswers length=%lu", v6];
  if (v5)
  {
  }

  v7 = [(CTStewieEmergencyStartMessage *)self notifyOption];
  if (v7 > 3)
  {
    v8 = "???";
  }

  else
  {
    v8 = off_1E6A471A8[v7];
  }

  [v4 appendFormat:@", notifyOption=%s", v8];
  v9 = [(CTStewieEmergencyStartMessage *)self shareEED];
  v10 = "no";
  if (v9)
  {
    v10 = "yes";
  }

  [v4 appendFormat:@", shareEED=%s", v10];
  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqualToEmergencyStartMessage:(id)a3
{
  v6 = a3;
  v7 = [(CTStewieEmergencyStartMessage *)self conversationID];
  if (v7 == [v6 conversationID])
  {
    v8 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
    v9 = [v6 serializedQuestionnaireAnswers];
    if (v8 == v9 || (-[CTStewieEmergencyStartMessage serializedQuestionnaireAnswers](self, "serializedQuestionnaireAnswers"), v3 = objc_claimAutoreleasedReturnValue(), [v6 serializedQuestionnaireAnswers], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(CTStewieEmergencyStartMessage *)self notifyOption];
      if (v11 == [v6 notifyOption])
      {
        v12 = [(CTStewieEmergencyStartMessage *)self shareEED];
        v10 = v12 ^ [v6 shareEED] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      if (v8 == v9)
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieEmergencyStartMessage *)self isEqualToEmergencyStartMessage:v4];
  }

  return v5;
}

- (double)estimatedSendTime
{
  v4 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  if (v4)
  {
    v2 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
    v5 = [v2 length];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CTStewieEmergencyStartMessage *)self shareEED];
  if (v4)
  {
  }

  v7 = 16;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = v5 + v7;

  return getEstimatedSendTimeOverStewieInSeconds(v8 + 12);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setConversationID:{-[CTStewieEmergencyStartMessage conversationID](self, "conversationID")}];
  v6 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  v7 = [v6 copyWithZone:a3];
  [v5 setSerializedQuestionnaireAnswers:v7];

  [v5 setNotifyOption:{-[CTStewieEmergencyStartMessage notifyOption](self, "notifyOption")}];
  [v5 setShareEED:{-[CTStewieEmergencyStartMessage shareEED](self, "shareEED")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[CTStewieEmergencyStartMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  v4 = [(CTStewieEmergencyStartMessage *)self serializedQuestionnaireAnswers];
  [v5 encodeObject:v4 forKey:@"serializedQuestionnaireAnswers"];

  [v5 encodeInteger:-[CTStewieEmergencyStartMessage notifyOption](self forKey:{"notifyOption"), @"notifyOption"}];
  [v5 encodeBool:-[CTStewieEmergencyStartMessage shareEED](self forKey:{"shareEED"), @"shareEED"}];
}

- (CTStewieEmergencyStartMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTStewieEmergencyStartMessage;
  v5 = [(CTStewieEmergencyStartMessage *)&v9 init];
  if (v5)
  {
    -[CTStewieEmergencyStartMessage setConversationID:](v5, "setConversationID:", [v4 decodeIntegerForKey:@"conversationID"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serializedQuestionnaireAnswers"];
    [(CTStewieEmergencyStartMessage *)v5 setSerializedQuestionnaireAnswers:v6];

    -[CTStewieEmergencyStartMessage setNotifyOption:](v5, "setNotifyOption:", [v4 decodeIntegerForKey:@"notifyOption"]);
    -[CTStewieEmergencyStartMessage setShareEED:](v5, "setShareEED:", [v4 decodeBoolForKey:@"shareEED"]);
    v7 = v5;
  }

  return v5;
}

@end