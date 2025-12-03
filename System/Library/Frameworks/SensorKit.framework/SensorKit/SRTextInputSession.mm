@interface SRTextInputSession
+ (SRTextInputSession)textInputSessionWithDuration:(double)duration sessionType:(int64_t)type sessionIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)sessionIdentifier;
- (SRTextInputSession)initWithCoder:(id)coder;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRTextInputSession

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(SRTextInputSession *)self duration];
  [coder encodeDouble:@"duration" forKey:?];
  [coder encodeInteger:-[SRTextInputSession sessionType](self forKey:{"sessionType"), @"textInputSessionType"}];
  sessionIdentifier = [(SRTextInputSession *)self sessionIdentifier];

  [coder encodeObject:sessionIdentifier forKey:@"sessionIdentifier"];
}

- (SRTextInputSession)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = objc_alloc_init(SRTextInputSession);
  [coder decodeDoubleForKey:@"duration"];
  [(SRTextInputSession *)v6 setDuration:?];
  -[SRTextInputSession setSessionType:](v6, "setSessionType:", [coder decodeIntegerForKey:@"textInputSessionType"]);
  -[SRTextInputSession setSessionIdentifier:](v6, "setSessionIdentifier:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"]);
  return v6;
}

+ (SRTextInputSession)textInputSessionWithDuration:(double)duration sessionType:(int64_t)type sessionIdentifier:(id)identifier
{
  v8 = objc_alloc_init(SRTextInputSession);
  [(SRTextInputSession *)v8 setDuration:duration];
  [(SRTextInputSession *)v8 setSessionType:type];
  [(SRTextInputSession *)v8 setSessionIdentifier:identifier];

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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
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
  [equal duration];
  if (v6 != v7)
  {
    return 0;
  }

  sessionType = [(SRTextInputSession *)self sessionType];
  if (sessionType != [equal sessionType])
  {
    return 0;
  }

  sessionIdentifier = [(SRTextInputSession *)self sessionIdentifier];
  sessionIdentifier2 = [equal sessionIdentifier];

  return [(NSString *)sessionIdentifier isEqual:sessionIdentifier2];
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