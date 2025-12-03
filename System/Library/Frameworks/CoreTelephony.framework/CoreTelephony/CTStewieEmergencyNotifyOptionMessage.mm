@interface CTStewieEmergencyNotifyOptionMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEmergencyUpdateNotifyOptionMessage:(id)message;
- (CTStewieEmergencyNotifyOptionMessage)initWithCoder:(id)coder;
- (CTStewieEmergencyNotifyOptionMessage)initWithNotifyOption:(int64_t)option error:(id *)error;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieEmergencyNotifyOptionMessage

- (CTStewieEmergencyNotifyOptionMessage)initWithNotifyOption:(int64_t)option error:(id *)error
{
  selfCopy = self;
  v14[1] = *MEMORY[0x1E69E9840];
  if (!option)
  {
    errorCopy = error;
    if (!error)
    {
      goto LABEL_8;
    }

    v8 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Invalid notifyOption";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    errorCopy->super.isa = [v8 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];

LABEL_7:
    errorCopy = 0;
    goto LABEL_8;
  }

  v12.receiver = self;
  v12.super_class = CTStewieEmergencyNotifyOptionMessage;
  v6 = [(CTStewieEmergencyNotifyOptionMessage *)&v12 init:option];
  if (!v6)
  {
    selfCopy = 0;
    goto LABEL_7;
  }

  v6->_notifyOption = option;
  selfCopy = v6;
  errorCopy = selfCopy;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return errorCopy;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  notifyOption = [(CTStewieEmergencyNotifyOptionMessage *)self notifyOption];
  if (notifyOption > 3)
  {
    v5 = "???";
  }

  else
  {
    v5 = off_1E6A471A8[notifyOption];
  }

  [v3 appendFormat:@", notifyOption=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToEmergencyUpdateNotifyOptionMessage:(id)message
{
  messageCopy = message;
  notifyOption = [(CTStewieEmergencyNotifyOptionMessage *)self notifyOption];
  LOBYTE(notifyOption) = notifyOption == [messageCopy notifyOption];

  return notifyOption;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieEmergencyNotifyOptionMessage *)self isEqualToEmergencyUpdateNotifyOptionMessage:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setNotifyOption:{-[CTStewieEmergencyNotifyOptionMessage notifyOption](self, "notifyOption")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CTStewieEmergencyNotifyOptionMessage notifyOption](self forKey:{"notifyOption"), @"notifyOption"}];
}

- (CTStewieEmergencyNotifyOptionMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CTStewieEmergencyNotifyOptionMessage;
  v5 = [(CTStewieEmergencyNotifyOptionMessage *)&v8 init];
  if (v5)
  {
    -[CTStewieEmergencyNotifyOptionMessage setNotifyOption:](v5, "setNotifyOption:", [coderCopy decodeIntegerForKey:@"notifyOption"]);
    v6 = v5;
  }

  return v5;
}

@end