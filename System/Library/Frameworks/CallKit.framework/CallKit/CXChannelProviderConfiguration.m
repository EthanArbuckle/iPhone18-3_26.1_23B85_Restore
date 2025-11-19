@interface CXChannelProviderConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (CXChannelProviderConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)sanitizedCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXChannelProviderConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" audioSessionID=%u", -[CXChannelProviderConfiguration audioSessionID](self, "audioSessionID")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXChannelProviderConfiguration *)self isEqualToConfiguration:v4];

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  LODWORD(self) = [(CXChannelProviderConfiguration *)self audioSessionID];
  v5 = [v4 audioSessionID];

  return self == v5;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v5 = a3;
  [v5 setAudioSessionID:{-[CXChannelProviderConfiguration audioSessionID](self, "audioSessionID")}];
}

- (id)sanitizedCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXChannelProviderConfiguration *)self updateSanitizedCopy:v5 withZone:a3];

  return v5;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v6 = a3;
  [(CXChannelProviderConfiguration *)self updateSanitizedCopy:v6 withZone:a4];
  [v6 setAudioSessionID:{-[CXChannelProviderConfiguration audioSessionID](self, "audioSessionID")}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXChannelProviderConfiguration *)self updateCopy:v5 withZone:a3];
  return v5;
}

- (CXChannelProviderConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelProviderConfiguration *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_audioSessionID);
    v5->_audioSessionID = [v4 decodeInt32ForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXChannelProviderConfiguration *)self audioSessionID];
  v6 = NSStringFromSelector(sel_audioSessionID);
  [v4 encodeInt32:v5 forKey:v6];
}

@end