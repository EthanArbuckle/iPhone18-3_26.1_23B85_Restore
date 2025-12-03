@interface AVAudioApplicationSpecification
- ($115C4C562B26FF47E01F9F4EA65B5887)appAuditToken;
- (AVAudioApplicationSpecification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setAppAuditToken:(id *)token;
@end

@implementation AVAudioApplicationSpecification

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->audioAppType forKey:@"audioAppType"];
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&self->_appAuditToken length:32];
  [coderCopy encodeObject:v4 forKey:@"appAuditToken"];
  [coderCopy encodeObject:self->attributionBundleID forKey:@"attributionBundleID"];
  [coderCopy encodeObject:self->processName forKey:@"processName"];
}

- (AVAudioApplicationSpecification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AVAudioApplicationSpecification;
  v5 = [(AVAudioApplicationSpecification *)&v12 init];
  if (v5)
  {
    v5->audioAppType = [coderCopy decodeIntegerForKey:@"audioAppType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appAuditToken"];
    [v6 getBytes:&v5->_appAuditToken length:32];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributionBundleID"];
    attributionBundleID = v5->attributionBundleID;
    v5->attributionBundleID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
    processName = v5->processName;
    v5->processName = v9;
  }

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)appAuditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAppAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_appAuditToken.val = *token->var0;
  *&self->_appAuditToken.val[4] = v3;
}

@end