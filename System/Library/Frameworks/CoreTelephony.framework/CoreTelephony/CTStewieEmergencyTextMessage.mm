@interface CTStewieEmergencyTextMessage
+ (double)estimatedSendTimeForEmergencyText:(id)text;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEmergencyTextMessage:(id)message;
- (CTStewieEmergencyTextMessage)initWithCoder:(id)coder;
- (CTStewieEmergencyTextMessage)initWithConversationIDInternal:(int64_t)internal sequenceNum:(int64_t)num emergencyText:(id)text maxTextLength:(unint64_t)length error:(id *)p_isa;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initIncomingTextMessageWithConversationID:(int64_t)d sequenceNum:(int64_t)num emergencyText:(id)text notifyOption:(int64_t)option error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieEmergencyTextMessage

- (CTStewieEmergencyTextMessage)initWithConversationIDInternal:(int64_t)internal sequenceNum:(int64_t)num emergencyText:(id)text maxTextLength:(unint64_t)length error:(id *)p_isa
{
  v34[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v14 = textCopy;
  if (internal >= 0x100)
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

  if (num >= 0x2000)
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

  if (!textCopy)
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

  if ([textCopy lengthOfBytesUsingEncoding:4] - 1 >= length)
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
    v15->_conversationID = internal;
    v15->_sequenceNum = num;
    objc_storeStrong(&v15->_text, text);
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

- (id)initIncomingTextMessageWithConversationID:(int64_t)d sequenceNum:(int64_t)num emergencyText:(id)text notifyOption:(int64_t)option error:(id *)error
{
  v8 = [(CTStewieEmergencyTextMessage *)self initWithConversationIDInternal:d sequenceNum:num emergencyText:text maxTextLength:1024 error:error];
  v9 = v8;
  if (v8)
  {
    v8->_incomingTextNotifyOption = option;
    v10 = v8;
  }

  return v9;
}

- (double)estimatedSendTime
{
  text = [(CTStewieEmergencyTextMessage *)self text];
  [CTStewieEmergencyTextMessage estimatedSendTimeForEmergencyText:text];
  v4 = v3;

  return v4;
}

+ (double)estimatedSendTimeForEmergencyText:(id)text
{
  textCopy = text;
  v4 = textCopy;
  EstimatedSendTimeOverStewieInSeconds = 0.0;
  if (textCopy)
  {
    v6 = [textCopy lengthOfBytesUsingEncoding:4];
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
  text = [(CTStewieEmergencyTextMessage *)self text];
  [v3 appendFormat:@", text=%{sensitive}@", text];

  incomingTextNotifyOption = [(CTStewieEmergencyTextMessage *)self incomingTextNotifyOption];
  if (incomingTextNotifyOption > 3)
  {
    v6 = "???";
  }

  else
  {
    v6 = off_1E6A471A8[incomingTextNotifyOption];
  }

  [v3 appendFormat:@", incomingTextNotifyOption=%s", v6];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToEmergencyTextMessage:(id)message
{
  messageCopy = message;
  conversationID = [(CTStewieEmergencyTextMessage *)self conversationID];
  if (conversationID == [messageCopy conversationID])
  {
    sequenceNum = [(CTStewieEmergencyTextMessage *)self sequenceNum];
    if (sequenceNum == [messageCopy sequenceNum])
    {
      text = [(CTStewieEmergencyTextMessage *)self text];
      text2 = [messageCopy text];
      if (text == text2 || (-[CTStewieEmergencyTextMessage text](self, "text"), v3 = objc_claimAutoreleasedReturnValue(), [messageCopy text], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
      {
        incomingTextNotifyOption = [(CTStewieEmergencyTextMessage *)self incomingTextNotifyOption];
        v11 = incomingTextNotifyOption == [messageCopy incomingTextNotifyOption];
        if (text == text2)
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieEmergencyTextMessage *)self isEqualToEmergencyTextMessage:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setConversationID:{-[CTStewieEmergencyTextMessage conversationID](self, "conversationID")}];
  [v5 setSequenceNum:{-[CTStewieEmergencyTextMessage sequenceNum](self, "sequenceNum")}];
  text = [(CTStewieEmergencyTextMessage *)self text];
  v7 = [text copyWithZone:zone];
  [v5 setText:v7];

  [v5 setIncomingTextNotifyOption:{-[CTStewieEmergencyTextMessage incomingTextNotifyOption](self, "incomingTextNotifyOption")}];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieEmergencyTextMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  [coderCopy encodeInteger:-[CTStewieEmergencyTextMessage sequenceNum](self forKey:{"sequenceNum"), @"sequenceNum"}];
  text = [(CTStewieEmergencyTextMessage *)self text];
  [coderCopy encodeObject:text forKey:@"text"];

  [coderCopy encodeInteger:-[CTStewieEmergencyTextMessage incomingTextNotifyOption](self forKey:{"incomingTextNotifyOption"), @"notifyOption"}];
}

- (CTStewieEmergencyTextMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"conversationID"];
  v6 = [coderCopy decodeIntegerForKey:@"sequenceNum"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v8 = [(CTStewieEmergencyTextMessage *)self initWithConversationIDInternal:v5 sequenceNum:v6 emergencyText:v7 maxTextLength:-1 error:0];

  if (v8)
  {
    v8->_incomingTextNotifyOption = [coderCopy decodeIntegerForKey:@"notifyOption"];
    v9 = v8;
  }

  return v8;
}

@end