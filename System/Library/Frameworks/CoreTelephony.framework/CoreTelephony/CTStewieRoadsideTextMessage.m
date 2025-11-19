@interface CTStewieRoadsideTextMessage
+ (double)estimatedSendTimeForRoadsideText:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRoadsideTextMessage:(id)a3;
- (CTStewieRoadsideTextMessage)initWithCoder:(id)a3;
- (CTStewieRoadsideTextMessage)initWithConversationIDInternal:(int64_t)a3 providerId:(int64_t)a4 sequenceNum:(int64_t)a5 text:(id)a6 maxTextLength:(unint64_t)a7 error:(id *)p_isa;
- (NSString)description;
- (double)estimatedSendTime;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieRoadsideTextMessage

- (CTStewieRoadsideTextMessage)initWithConversationIDInternal:(int64_t)a3 providerId:(int64_t)a4 sequenceNum:(int64_t)a5 text:(id)a6 maxTextLength:(unint64_t)a7 error:(id *)p_isa
{
  v40[1] = *MEMORY[0x1E69E9840];
  v15 = a6;
  v16 = v15;
  if (a3 >= 0x100)
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

  if (a5 >= 0x2000)
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

  if (!v15)
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

  if (a4 >= 0x8000)
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

  if ([v15 lengthOfBytesUsingEncoding:4] - 1 >= a7)
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
    v17->_conversationID = a3;
    v17->_providerId = a4;
    v17->_sequenceNum = a5;
    objc_storeStrong(&v17->_text, a6);
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
  v2 = [(CTStewieRoadsideTextMessage *)self text];
  [CTStewieRoadsideTextMessage estimatedSendTimeForRoadsideText:v2];
  v4 = v3;

  return v4;
}

+ (double)estimatedSendTimeForRoadsideText:(id)a3
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
  [v3 appendFormat:@", conversationID=%ld", -[CTStewieRoadsideTextMessage conversationID](self, "conversationID")];
  [v3 appendFormat:@", providerId=%ld", -[CTStewieRoadsideTextMessage providerId](self, "providerId")];
  [v3 appendFormat:@", sequenceNum=%ld", -[CTStewieRoadsideTextMessage sequenceNum](self, "sequenceNum")];
  v4 = [(CTStewieRoadsideTextMessage *)self text];
  [v3 appendFormat:@", text=%{sensitive}@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToRoadsideTextMessage:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieRoadsideTextMessage *)self conversationID];
  if (v5 == [v4 conversationID] && (v6 = -[CTStewieRoadsideTextMessage providerId](self, "providerId"), v6 == objc_msgSend(v4, "providerId")) && (v7 = -[CTStewieRoadsideTextMessage sequenceNum](self, "sequenceNum"), v7 == objc_msgSend(v4, "sequenceNum")))
  {
    v8 = [(CTStewieRoadsideTextMessage *)self text];
    v9 = [v4 text];
    if (v8 == v9)
    {
      v12 = 1;
    }

    else
    {
      v10 = [(CTStewieRoadsideTextMessage *)self text];
      v11 = [v4 text];
      v12 = [v10 isEqual:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieRoadsideTextMessage *)self isEqualToRoadsideTextMessage:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setConversationID:{-[CTStewieRoadsideTextMessage conversationID](self, "conversationID")}];
  [v5 setProviderId:{-[CTStewieRoadsideTextMessage providerId](self, "providerId")}];
  [v5 setSequenceNum:{-[CTStewieRoadsideTextMessage sequenceNum](self, "sequenceNum")}];
  v6 = [(CTStewieRoadsideTextMessage *)self text];
  v7 = [v6 copyWithZone:a3];
  [v5 setText:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[CTStewieRoadsideTextMessage conversationID](self forKey:{"conversationID"), @"conversationID"}];
  [v5 encodeInteger:-[CTStewieRoadsideTextMessage providerId](self forKey:{"providerId"), @"providerId"}];
  [v5 encodeInteger:-[CTStewieRoadsideTextMessage sequenceNum](self forKey:{"sequenceNum"), @"sequenceNum"}];
  v4 = [(CTStewieRoadsideTextMessage *)self text];
  [v5 encodeObject:v4 forKey:@"text"];
}

- (CTStewieRoadsideTextMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"conversationID"];
  v6 = [v4 decodeIntegerForKey:@"providerId"];
  v7 = [v4 decodeIntegerForKey:@"sequenceNum"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
  v9 = [(CTStewieRoadsideTextMessage *)self initWithConversationIDInternal:v5 providerId:v6 sequenceNum:v7 text:v8 maxTextLength:-1 error:0];

  return v9;
}

@end