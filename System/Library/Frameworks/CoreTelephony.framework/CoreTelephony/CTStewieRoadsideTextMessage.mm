@interface CTStewieRoadsideTextMessage
+ (double)estimatedSendTimeForRoadsideText:(id)text;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRoadsideTextMessage:(id)message;
- (CTStewieRoadsideTextMessage)initWithCoder:(id)coder;
- (CTStewieRoadsideTextMessage)initWithConversationIDInternal:(int64_t)internal providerId:(int64_t)id sequenceNum:(int64_t)num text:(id)text maxTextLength:(unint64_t)length error:(id *)p_isa;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieRoadsideTextMessage

- (CTStewieRoadsideTextMessage)initWithConversationIDInternal:(int64_t)internal providerId:(int64_t)id sequenceNum:(int64_t)num text:(id)text maxTextLength:(unint64_t)length error:(id *)p_isa
{
  v40[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  v16 = textCopy;
  if (internal >= 0x100)
  {
    if (!p_isa)
    {
      goto LABEL_19;
    }

    v18 = MEMORY[0x1E696ABC0];
    v39 = *MEMORY[0x1E696A578];
    v40[0] = @"Invalid conversationID";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    *p_isa = [v18 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v19];

LABEL_18:
    p_isa = 0;
    goto LABEL_19;
  }

  if (num >= 0x2000)
  {
    if (!p_isa)
    {
      goto LABEL_19;
    }

    v20 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A578];
    v38 = @"Invalid sequenceNum";
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    *p_isa = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v21];

    goto LABEL_18;
  }

  if (!textCopy)
  {
    if (!p_isa)
    {
      goto LABEL_19;
    }

    v22 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36 = @"Text is missing";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    *p_isa = [v22 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v23];

    goto LABEL_18;
  }

  if (id >= 0x8000)
  {
    if (!p_isa)
    {
      goto LABEL_19;
    }

    v24 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34 = @"providerId is invalid";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    *p_isa = [v24 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v25];

    goto LABEL_18;
  }

  if ([textCopy lengthOfBytesUsingEncoding:4] - 1 >= length)
  {
    if (!p_isa)
    {
      goto LABEL_19;
    }

    v26 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v32 = @"Invalid text length";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    *p_isa = [v26 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v27];

    goto LABEL_18;
  }

  v30.receiver = self;
  v30.super_class = CTStewieRoadsideTextMessage;
  v17 = [(CTStewieRoadsideTextMessage *)&v30 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    v17->_conversationID = internal;
    v17->_providerId = id;
    v17->_sequenceNum = num;
    objc_storeStrong(&v17->_text, text);
    self = p_isa;
    p_isa = &self->super.isa;
  }

  else
  {
    self = 0;
  }

LABEL_19:

  v28 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (double)estimatedSendTime
{
  text = [(CTStewieRoadsideTextMessage *)self text];
  [CTStewieRoadsideTextMessage estimatedSendTimeForRoadsideText:text];
  v4 = v3;

  return v4;
}

+ (double)estimatedSendTimeForRoadsideText:(id)text
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
  [v3 appendFormat:@", conversationID=%ld", -[CTStewieRoadsideTextMessage conversationID](self, "conversationID")];
  [v3 appendFormat:@", providerId=%ld", -[CTStewieRoadsideTextMessage providerId](self, "providerId")];
  [v3 appendFormat:@", sequenceNum=%ld", -[CTStewieRoadsideTextMessage sequenceNum](self, "sequenceNum")];
  text = [(CTStewieRoadsideTextMessage *)self text];
  [v3 appendFormat:@", text=%{sensitive}@", text];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToRoadsideTextMessage:(id)message
{
  messageCopy = message;
  conversationID = [(CTStewieRoadsideTextMessage *)self conversationID];
  if (conversationID == [messageCopy conversationID] && (v6 = -[CTStewieRoadsideTextMessage providerId](self, "providerId"), v6 == objc_msgSend(messageCopy, "providerId")) && (v7 = -[CTStewieRoadsideTextMessage sequenceNum](self, "sequenceNum"), v7 == objc_msgSend(messageCopy, "sequenceNum")))
  {
    text = [(CTStewieRoadsideTextMessage *)self text];
    text2 = [messageCopy text];
    if (text == text2)
    {
      v12 = 1;
    }

    else
    {
      text3 = [(CTStewieRoadsideTextMessage *)self text];
      text4 = [messageCopy text];
      v12 = [text3 isEqual:text4];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieRoadsideTextMessage *)self isEqualToRoadsideTextMessage:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setConversationID:{-[CTStewieRoadsideTextMessage conversationID](self, "conversationID")}];
  [v5 setProviderId:{-[CTStewieRoadsideTextMessage providerId](self, "providerId")}];
  [v5 setSequenceNum:{-[CTStewieRoadsideTextMessage sequenceNum](self, "sequenceNum")}];
  text = [(CTStewieRoadsideTextMessage *)self text];
  v7 = [text copyWithZone:zone];
  [v5 setText:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieRoadsideTextMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  [coderCopy encodeInteger:-[CTStewieRoadsideTextMessage providerId](self forKey:{"providerId"), @"providerId"}];
  [coderCopy encodeInteger:-[CTStewieRoadsideTextMessage sequenceNum](self forKey:{"sequenceNum"), @"sequenceNum"}];
  text = [(CTStewieRoadsideTextMessage *)self text];
  [coderCopy encodeObject:text forKey:@"text"];
}

- (CTStewieRoadsideTextMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"conversationID"];
  v6 = [coderCopy decodeIntegerForKey:@"providerId"];
  v7 = [coderCopy decodeIntegerForKey:@"sequenceNum"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v9 = [(CTStewieRoadsideTextMessage *)self initWithConversationIDInternal:v5 providerId:v6 sequenceNum:v7 text:v8 maxTextLength:-1 error:0];

  return v9;
}

@end