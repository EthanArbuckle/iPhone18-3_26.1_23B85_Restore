@interface SRElectrocardiogramSession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSession:(id)session;
- (SRElectrocardiogramSession)init;
- (SRElectrocardiogramSession)initWithCoder:(id)coder;
- (SRElectrocardiogramSession)initWithState:(int64_t)state sessionGuidance:(int64_t)guidance identifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRElectrocardiogramSession

- (SRElectrocardiogramSession)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRElectrocardiogramSession)initWithState:(int64_t)state sessionGuidance:(int64_t)guidance identifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = SRElectrocardiogramSession;
  v8 = [(SRElectrocardiogramSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = state;
    v8->_sessionGuidance = guidance;
    v8->_identifier = [identifier copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRElectrocardiogramSession;
  [(SRElectrocardiogramSession *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRElectrocardiogramSession *)self isEqualToSession:equal];
}

- (BOOL)isEqualToSession:(id)session
{
  if (!-[SRElectrocardiogramSession identifier](self, "identifier") && ![session identifier] || (v5 = -[NSString isEqual:](-[SRElectrocardiogramSession identifier](self, "identifier"), "isEqual:", objc_msgSend(session, "identifier"))) != 0)
  {
    state = self->_state;
    if (state == [session state])
    {
      sessionGuidance = self->_sessionGuidance;
      LOBYTE(v5) = sessionGuidance == [session sessionGuidance];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_state), "hash"}];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_sessionGuidance), "hash"}] ^ v3;
  return v4 ^ [(NSString *)self->_identifier hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p): state: %ld, guidance: %ld, identifier: %@", NSStringFromClass(v4), self, self->_state, self->_sessionGuidance, self->_identifier];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeInteger:self->_state forKey:@"state"];
  [coder encodeInteger:self->_sessionGuidance forKey:@"sessionGuidance"];
  identifier = self->_identifier;

  [coder encodeObject:identifier forKey:@"identifier"];
}

- (SRElectrocardiogramSession)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [coder decodeIntegerForKey:@"sessionGuidance"];
  v8 = [coder decodeIntegerForKey:@"state"];

  return [(SRElectrocardiogramSession *)self initWithState:v8 sessionGuidance:v7 identifier:v6];
}

@end