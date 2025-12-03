@interface CXCallTokens
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCallTokens:(id)tokens;
- (CXCallTokens)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXCallTokens

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" uplinkStreamToken=%ld", -[CXCallTokens uplinkStreamToken](self, "uplinkStreamToken")];
  [v3 appendFormat:@" downlinkStreamToken=%ld", -[CXCallTokens downlinkStreamToken](self, "downlinkStreamToken")];
  [v3 appendFormat:@" combinedAudioStreamToken=%ld", -[CXCallTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")];
  streamTokensByParticipantID = [(CXCallTokens *)self streamTokensByParticipantID];
  [v3 appendFormat:@" streamTokensByParticipantID=%@", streamTokensByParticipantID];

  [v3 appendString:@">"];

  return v3;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  copyCopy = copy;
  [(CXCallTokens *)self updateSanitizedCopy:copyCopy withZone:zone];
  [copyCopy setUplinkStreamToken:{-[CXCallTokens uplinkStreamToken](self, "uplinkStreamToken")}];
  [copyCopy setDownlinkStreamToken:{-[CXCallTokens downlinkStreamToken](self, "downlinkStreamToken")}];
  [copyCopy setCombinedAudioStreamToken:{-[CXCallTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")}];
  streamTokensByParticipantID = [(CXCallTokens *)self streamTokensByParticipantID];
  [copyCopy setStreamTokensByParticipantID:streamTokensByParticipantID];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(CXCallTokens *)self updateCopy:v5 withZone:zone];
  return v5;
}

- (CXCallTokens)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CXCallTokens *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_uplinkStreamToken);
    v5->_uplinkStreamToken = [coderCopy decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_downlinkStreamToken);
    v5->_downlinkStreamToken = [coderCopy decodeIntegerForKey:v7];

    v8 = NSStringFromSelector(sel_combinedAudioStreamToken);
    v5->_combinedAudioStreamToken = [coderCopy decodeIntegerForKey:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_streamTokensByParticipantID);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    streamTokensByParticipantID = v5->_streamTokensByParticipantID;
    v5->_streamTokensByParticipantID = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uplinkStreamToken = [(CXCallTokens *)self uplinkStreamToken];
  v6 = NSStringFromSelector(sel_uplinkStreamToken);
  [coderCopy encodeInteger:uplinkStreamToken forKey:v6];

  downlinkStreamToken = [(CXCallTokens *)self downlinkStreamToken];
  v8 = NSStringFromSelector(sel_downlinkStreamToken);
  [coderCopy encodeInteger:downlinkStreamToken forKey:v8];

  combinedAudioStreamToken = [(CXCallTokens *)self combinedAudioStreamToken];
  v10 = NSStringFromSelector(sel_combinedAudioStreamToken);
  [coderCopy encodeInteger:combinedAudioStreamToken forKey:v10];

  streamTokensByParticipantID = [(CXCallTokens *)self streamTokensByParticipantID];
  v11 = NSStringFromSelector(sel_streamTokensByParticipantID);
  [coderCopy encodeObject:streamTokensByParticipantID forKey:v11];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXCallTokens *)self isEqualToCallTokens:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCallTokens:(id)tokens
{
  tokensCopy = tokens;
  uplinkStreamToken = [(CXCallTokens *)self uplinkStreamToken];
  if (uplinkStreamToken == [tokensCopy uplinkStreamToken] && (v6 = -[CXCallTokens downlinkStreamToken](self, "downlinkStreamToken"), v6 == objc_msgSend(tokensCopy, "downlinkStreamToken")) && (v7 = -[CXCallTokens combinedAudioStreamToken](self, "combinedAudioStreamToken"), v7 == objc_msgSend(tokensCopy, "combinedAudioStreamToken")))
  {
    streamTokensByParticipantID = [(CXCallTokens *)self streamTokensByParticipantID];
    streamTokensByParticipantID2 = [tokensCopy streamTokensByParticipantID];
    v10 = streamTokensByParticipantID == streamTokensByParticipantID2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end