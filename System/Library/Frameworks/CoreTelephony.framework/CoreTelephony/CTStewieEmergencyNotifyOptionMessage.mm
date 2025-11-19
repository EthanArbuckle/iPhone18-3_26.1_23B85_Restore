@interface CTStewieEmergencyNotifyOptionMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEmergencyUpdateNotifyOptionMessage:(id)a3;
- (CTStewieEmergencyNotifyOptionMessage)initWithCoder:(id)a3;
- (CTStewieEmergencyNotifyOptionMessage)initWithNotifyOption:(int64_t)a3 error:(id *)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieEmergencyNotifyOptionMessage

- (CTStewieEmergencyNotifyOptionMessage)initWithNotifyOption:(int64_t)a3 error:(id *)a4
{
  v4 = self;
  v14[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v7 = a4;
    if (!a4)
    {
      goto LABEL_8;
    }

    v8 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Invalid notifyOption";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7->super.isa = [v8 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v9];

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v12.receiver = self;
  v12.super_class = CTStewieEmergencyNotifyOptionMessage;
  v6 = [(CTStewieEmergencyNotifyOptionMessage *)&v12 init:a3];
  if (!v6)
  {
    v4 = 0;
    goto LABEL_7;
  }

  v6->_notifyOption = a3;
  v4 = v6;
  v7 = v4;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTStewieEmergencyNotifyOptionMessage *)self notifyOption];
  if (v4 > 3)
  {
    v5 = "???";
  }

  else
  {
    v5 = off_1E6A471A8[v4];
  }

  [v3 appendFormat:@", notifyOption=%s", v5];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToEmergencyUpdateNotifyOptionMessage:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieEmergencyNotifyOptionMessage *)self notifyOption];
  LOBYTE(v5) = v5 == [v4 notifyOption];

  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieEmergencyNotifyOptionMessage *)self isEqualToEmergencyUpdateNotifyOptionMessage:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setNotifyOption:{-[CTStewieEmergencyNotifyOptionMessage notifyOption](self, "notifyOption")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CTStewieEmergencyNotifyOptionMessage notifyOption](self forKey:{"notifyOption"), @"notifyOption"}];
}

- (CTStewieEmergencyNotifyOptionMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CTStewieEmergencyNotifyOptionMessage;
  v5 = [(CTStewieEmergencyNotifyOptionMessage *)&v8 init];
  if (v5)
  {
    -[CTStewieEmergencyNotifyOptionMessage setNotifyOption:](v5, "setNotifyOption:", [v4 decodeIntegerForKey:@"notifyOption"]);
    v6 = v5;
  }

  return v5;
}

@end