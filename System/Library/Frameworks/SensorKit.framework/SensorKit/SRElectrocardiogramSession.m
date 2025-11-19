@interface SRElectrocardiogramSession
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSession:(id)a3;
- (SRElectrocardiogramSession)init;
- (SRElectrocardiogramSession)initWithCoder:(id)a3;
- (SRElectrocardiogramSession)initWithState:(int64_t)a3 sessionGuidance:(int64_t)a4 identifier:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRElectrocardiogramSession

- (SRElectrocardiogramSession)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRElectrocardiogramSession)initWithState:(int64_t)a3 sessionGuidance:(int64_t)a4 identifier:(id)a5
{
  v11.receiver = self;
  v11.super_class = SRElectrocardiogramSession;
  v8 = [(SRElectrocardiogramSession *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_state = a3;
    v8->_sessionGuidance = a4;
    v8->_identifier = [a5 copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRElectrocardiogramSession;
  [(SRElectrocardiogramSession *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(SRElectrocardiogramSession *)self isEqualToSession:a3];
}

- (BOOL)isEqualToSession:(id)a3
{
  if (!-[SRElectrocardiogramSession identifier](self, "identifier") && ![a3 identifier] || (v5 = -[NSString isEqual:](-[SRElectrocardiogramSession identifier](self, "identifier"), "isEqual:", objc_msgSend(a3, "identifier"))) != 0)
  {
    state = self->_state;
    if (state == [a3 state])
    {
      sessionGuidance = self->_sessionGuidance;
      LOBYTE(v5) = sessionGuidance == [a3 sessionGuidance];
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeInteger:self->_state forKey:@"state"];
  [a3 encodeInteger:self->_sessionGuidance forKey:@"sessionGuidance"];
  identifier = self->_identifier;

  [a3 encodeObject:identifier forKey:@"identifier"];
}

- (SRElectrocardiogramSession)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [a3 decodeIntegerForKey:@"sessionGuidance"];
  v8 = [a3 decodeIntegerForKey:@"state"];

  return [(SRElectrocardiogramSession *)self initWithState:v8 sessionGuidance:v7 identifier:v6];
}

@end