@interface CTStewieEmergencyTextMessage
+ (double)estimatedSendTimeForEmergencyText:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEmergencyTextMessage:(id)a3;
- (CTStewieEmergencyTextMessage)initWithCoder:(id)a3;
- (CTStewieEmergencyTextMessage)initWithConversationIDInternal:(int64_t)a3 sequenceNum:(int64_t)a4 emergencyText:(id)a5 maxTextLength:(unint64_t)a6 error:(id *)p_isa;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initIncomingTextMessageWithConversationID:(int64_t)a3 sequenceNum:(int64_t)a4 emergencyText:(id)a5 notifyOption:(int64_t)a6 error:(id *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieEmergencyTextMessage

- (CTStewieEmergencyTextMessage)initWithConversationIDInternal:(int64_t)a3 sequenceNum:(int64_t)a4 emergencyText:(id)a5 maxTextLength:(unint64_t)a6 error:(id *)p_isa
{
  v34[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = v13;
  if (a3 >= 0x100)
  {
    if (!p_isa)
    {
      goto LABEL_16;
    }

    v16 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34[0] = @"Invalid conversationID";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    *p_isa = [v16 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v17];

LABEL_15:
    p_isa = 0;
    goto LABEL_16;
  }

  if (a4 >= 0x2000)
  {
    if (!p_isa)
    {
      goto LABEL_16;
    }

    v18 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"Invalid sequenceNum";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    *p_isa = [v18 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v19];

    goto LABEL_15;
  }

  if (!v13)
  {
    if (!p_isa)
    {
      goto LABEL_16;
    }

    v20 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A578];
    v30 = @"Text is missing";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    *p_isa = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];

    goto LABEL_15;
  }

  if ([v13 lengthOfBytesUsingEncoding:4] - 1 >= a6)
  {
    if (!p_isa)
    {
      goto LABEL_16;
    }

    v22 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28 = @"Invalid text length";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *p_isa = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];

    goto LABEL_15;
  }

  v26.receiver = self;
  v26.super_class = CTStewieEmergencyTextMessage;
  v15 = [(CTStewieEmergencyTextMessage *)&v26 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    v15->_conversationID = a3;
    v15->_sequenceNum = a4;
    objc_storeStrong(&v15->_text, a5);
    p_isa[4] = 0;
    self = p_isa;
    p_isa = &self->super.isa;
  }

  else
  {
    self = 0;
  }

LABEL_16:

  v24 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)initIncomingTextMessageWithConversationID:(int64_t)a3 sequenceNum:(int64_t)a4 emergencyText:(id)a5 notifyOption:(int64_t)a6 error:(id *)a7
{
  v8 = [(CTStewieEmergencyTextMessage *)self initWithConversationIDInternal:a3 sequenceNum:a4 emergencyText:a5 maxTextLength:1024 error:a7];
  v9 = v8;
  if (v8)
  {
    v8->_incomingTextNotifyOption = a6;
    v10 = v8;
  }

  return v9;
}

- (double)estimatedSendTime
{
  v2 = [(CTStewieEmergencyTextMessage *)self text];
  [CTStewieEmergencyTextMessage estimatedSendTimeForEmergencyText:v2];
  v4 = v3;

  return v4;
}

+ (double)estimatedSendTimeForEmergencyText:(id)a3
{
  v3 = a3;
  v4 = v3;
  EstimatedSendTimeOverStewieInSeconds = 0.0;
  if (v3)
  {
    v6 = [v3 lengthOfBytesUsingEncoding:4];
    if (v6)
    {
      EstimatedSendTimeOverStewieInSeconds = getEstimatedSendTimeOverStewieInSeconds(v6 + 4);
    }
  }

  return EstimatedSendTimeOverStewieInSeconds;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", conversationID=%ld", -[CTStewieEmergencyTextMessage conversationID](self, "conversationID")];
  [v3 appendFormat:@", sequenceNum=%ld", -[CTStewieEmergencyTextMessage sequenceNum](self, "sequenceNum")];
  v4 = [(CTStewieEmergencyTextMessage *)self text];
  [v3 appendFormat:@", text=%{sensitive}@", v4];

  v5 = [(CTStewieEmergencyTextMessage *)self incomingTextNotifyOption];
  if (v5 > 3)
  {
    v6 = "???";
  }

  else
  {
    v6 = off_1E6A471A8[v5];
  }

  [v3 appendFormat:@", incomingTextNotifyOption=%s", v6];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToEmergencyTextMessage:(id)a3
{
  v6 = a3;
  v7 = [(CTStewieEmergencyTextMessage *)self conversationID];
  if (v7 == [v6 conversationID])
  {
    v8 = [(CTStewieEmergencyTextMessage *)self sequenceNum];
    if (v8 == [v6 sequenceNum])
    {
      v9 = [(CTStewieEmergencyTextMessage *)self text];
      v10 = [v6 text];
      if (v9 == v10 || (-[CTStewieEmergencyTextMessage text](self, "text"), v3 = objc_claimAutoreleasedReturnValue(), [v6 text], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
      {
        v12 = [(CTStewieEmergencyTextMessage *)self incomingTextNotifyOption];
        v11 = v12 == [v6 incomingTextNotifyOption];
        if (v9 == v10)
        {
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieEmergencyTextMessage *)self isEqualToEmergencyTextMessage:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setConversationID:{-[CTStewieEmergencyTextMessage conversationID](self, "conversationID")}];
  [v5 setSequenceNum:{-[CTStewieEmergencyTextMessage sequenceNum](self, "sequenceNum")}];
  v6 = [(CTStewieEmergencyTextMessage *)self text];
  v7 = [v6 copyWithZone:a3];
  [v5 setText:v7];

  [v5 setIncomingTextNotifyOption:{-[CTStewieEmergencyTextMessage incomingTextNotifyOption](self, "incomingTextNotifyOption")}];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[CTStewieEmergencyTextMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  [v5 encodeInteger:-[CTStewieEmergencyTextMessage sequenceNum](self forKey:{"sequenceNum"), @"sequenceNum"}];
  v4 = [(CTStewieEmergencyTextMessage *)self text];
  [v5 encodeObject:v4 forKey:@"text"];

  [v5 encodeInteger:-[CTStewieEmergencyTextMessage incomingTextNotifyOption](self forKey:{"incomingTextNotifyOption"), @"notifyOption"}];
}

- (CTStewieEmergencyTextMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"conversationID"];
  v6 = [v4 decodeIntegerForKey:@"sequenceNum"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v8 = [(CTStewieEmergencyTextMessage *)self initWithConversationIDInternal:v5 sequenceNum:v6 emergencyText:v7 maxTextLength:-1 error:0];

  if (v8)
  {
    v8->_incomingTextNotifyOption = [v4 decodeIntegerForKey:@"notifyOption"];
    v9 = v8;
  }

  return v8;
}

@end