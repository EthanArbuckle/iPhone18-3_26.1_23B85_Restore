@interface AVAudioSessionSpecification
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (AVAudioSecureSessionProtocol)publishingSession;
- (AVAudioSessionSpecification)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setClientAuditToken:(id *)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->sessionType forKey:@"sessionType"];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_clientAuditToken length:32];
  [v5 encodeObject:v4 forKey:@"clientAuditToken"];
  [v5 encodeInt32:self->sourceSessionID forKey:@"sourceSessionID"];
  [v5 encodeObject:self->clientIdentifier forKey:@"clientIdentifier"];
}

- (AVAudioSessionSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AVAudioSessionSpecification;
  v5 = [(AVAudioSessionSpecification *)&v10 init];
  if (v5)
  {
    v5->sessionType = [v4 decodeIntegerForKey:@"sessionType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientAuditToken"];
    [v6 getBytes:&v5->_clientAuditToken length:32];
    v5->sourceSessionID = [v4 decodeInt32ForKey:@"sourceSessionID"];
    v7 = [v4 decodeObjectForKey:@"clientIdentifer"];
    clientIdentifier = v5->clientIdentifier;
    v5->clientIdentifier = v7;
  }

  return v5;
}

- (void)setClientAuditToken:(id *)a3
{
  v3 = *&a3->var0[4];
  *self->_clientAuditToken.val = *a3->var0;
  *&self->_clientAuditToken.val[4] = v3;
}

@end