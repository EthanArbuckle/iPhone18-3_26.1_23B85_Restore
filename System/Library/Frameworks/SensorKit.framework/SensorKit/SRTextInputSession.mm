@interface SRTextInputSession
+ (SRTextInputSession)textInputSessionWithDuration:(double)a3 sessionType:(int64_t)a4 sessionIdentifier:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)sessionIdentifier;
- (SRTextInputSession)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRTextInputSession

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(SRTextInputSession *)self duration];
  [a3 encodeDouble:@"duration" forKey:?];
  [a3 encodeInteger:-[SRTextInputSession sessionType](self forKey:{"sessionType"), @"textInputSessionType"}];
  v6 = [(SRTextInputSession *)self sessionIdentifier];

  [a3 encodeObject:v6 forKey:@"sessionIdentifier"];
}

- (SRTextInputSession)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = objc_alloc_init(SRTextInputSession);
  [a3 decodeDoubleForKey:@"duration"];
  [(SRTextInputSession *)v6 setDuration:?];
  -[SRTextInputSession setSessionType:](v6, "setSessionType:", [a3 decodeIntegerForKey:@"textInputSessionType"]);
  -[SRTextInputSession setSessionIdentifier:](v6, "setSessionIdentifier:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"]);
  return v6;
}

+ (SRTextInputSession)textInputSessionWithDuration:(double)a3 sessionType:(int64_t)a4 sessionIdentifier:(id)a5
{
  v8 = objc_alloc_init(SRTextInputSession);
  [(SRTextInputSession *)v8 setDuration:a3];
  [(SRTextInputSession *)v8 setSessionType:a4];
  [(SRTextInputSession *)v8 setSessionIdentifier:a5];

  return v8;
}

- (NSString)sessionIdentifier
{
  if (self->_sessionIdentifier)
  {
    return self->_sessionIdentifier;
  }

  else
  {
    return &stru_1F48BB5C0;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRTextInputSession;
  [(SRTextInputSession *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [(SRTextInputSession *)self duration];
  v6 = v5;
  [a3 duration];
  if (v6 != v7)
  {
    return 0;
  }

  v8 = [(SRTextInputSession *)self sessionType];
  if (v8 != [a3 sessionType])
  {
    return 0;
  }

  v9 = [(SRTextInputSession *)self sessionIdentifier];
  v10 = [a3 sessionIdentifier];

  return [(NSString *)v9 isEqual:v10];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(SRTextInputSession *)self duration];
  return [v3 stringWithFormat:@"%@ {duration: %f, session type: %ld, session identifier:%@}", v5, v6, -[SRTextInputSession sessionType](self, "sessionType"), -[SRTextInputSession sessionIdentifier](self, "sessionIdentifier")];
}

- (id)sr_dictionaryRepresentation
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"duration";
  v3 = MEMORY[0x1E696AD98];
  [(SRTextInputSession *)self duration];
  v7[0] = [v3 numberWithDouble:?];
  v6[1] = @"textInputSessionType";
  v7[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[SRTextInputSession sessionType](self, "sessionType")}];
  v6[2] = @"sessionIdentifier";
  v7[2] = [(SRTextInputSession *)self sessionIdentifier];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end