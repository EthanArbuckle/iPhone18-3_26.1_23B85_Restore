@interface CXChannelProviderConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (CXChannelProviderConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXChannelProviderConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" audioSessionID=%u", -[CXChannelProviderConfiguration audioSessionID](self, "audioSessionID")];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXChannelProviderConfiguration *)self isEqualToConfiguration:equalCopy];

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  LODWORD(self) = [(CXChannelProviderConfiguration *)self audioSessionID];
  audioSessionID = [configurationCopy audioSessionID];

  return self == audioSessionID;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [copyCopy setAudioSessionID:{-[CXChannelProviderConfiguration audioSessionID](self, "audioSessionID")}];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXChannelProviderConfiguration *)self updateSanitizedCopy:v5 withZone:zone];

  return v5;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [(CXChannelProviderConfiguration *)self updateSanitizedCopy:copyCopy withZone:zone];
  [copyCopy setAudioSessionID:{-[CXChannelProviderConfiguration audioSessionID](self, "audioSessionID")}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXChannelProviderConfiguration *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXChannelProviderConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXChannelProviderConfiguration *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_audioSessionID);
    v5->_audioSessionID = [coderCopy decodeInt32ForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  audioSessionID = [(CXChannelProviderConfiguration *)self audioSessionID];
  v6 = NSStringFromSelector(sel_audioSessionID);
  [coderCopy encodeInt32:audioSessionID forKey:v6];
}

@end