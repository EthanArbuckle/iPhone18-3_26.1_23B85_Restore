@interface AVAudioSessionSpecification
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (AVAudioSecureSessionProtocol)publishingSession;
- (AVAudioSessionSpecification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setClientAuditToken:(id *)token;
@end

@implementation AVAudioSessionSpecification

- (AVAudioSecureSessionProtocol)publishingSession
{
  WeakRetained = objc_loadWeakRetained(&self->publishingSession);

  return WeakRetained;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *self[2].var0;
  *retstr->var0 = *&self[1].var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->sessionType forKey:@"sessionType"];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_clientAuditToken length:32];
  [coderCopy encodeObject:v4 forKey:@"clientAuditToken"];
  [coderCopy encodeInt32:self->sourceSessionID forKey:@"sourceSessionID"];
  [coderCopy encodeObject:self->clientIdentifier forKey:@"clientIdentifier"];
}

- (AVAudioSessionSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AVAudioSessionSpecification;
  v5 = [(AVAudioSessionSpecification *)&v10 init];
  if (v5)
  {
    v5->sessionType = [coderCopy decodeIntegerForKey:@"sessionType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientAuditToken"];
    [v6 getBytes:&v5->_clientAuditToken length:32];
    v5->sourceSessionID = [coderCopy decodeInt32ForKey:@"sourceSessionID"];
    v7 = [coderCopy decodeObjectForKey:@"clientIdentifer"];
    clientIdentifier = v5->clientIdentifier;
    v5->clientIdentifier = v7;
  }

  return v5;
}

- (void)setClientAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_clientAuditToken.val = *token->var0;
  *&self->_clientAuditToken.val[4] = v3;
}

@end