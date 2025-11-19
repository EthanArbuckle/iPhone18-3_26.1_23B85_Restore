@interface CXCallTokens
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCallTokens:(id)a3;
- (CXCallTokens)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXCallTokens

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@" uplinkStreamToken=%ld", -[CXCallTokens uplinkStreamToken](self, "uplinkStreamToken")];
  [v3 appendFormat:@" downlinkStreamToken=%ld", -[CXCallTokens downlinkStreamToken](self, "downlinkStreamToken")];
  [v3 appendFormat:@" combinedAudioStreamToken=%ld", -[CXCallTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")];
  v4 = [(CXCallTokens *)self streamTokensByParticipantID];
  [v3 appendFormat:@" streamTokensByParticipantID=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v6 = a3;
  [(CXCallTokens *)self updateSanitizedCopy:v6 withZone:a4];
  [v6 setUplinkStreamToken:{-[CXCallTokens uplinkStreamToken](self, "uplinkStreamToken")}];
  [v6 setDownlinkStreamToken:{-[CXCallTokens downlinkStreamToken](self, "downlinkStreamToken")}];
  [v6 setCombinedAudioStreamToken:{-[CXCallTokens combinedAudioStreamToken](self, "combinedAudioStreamToken")}];
  v7 = [(CXCallTokens *)self streamTokensByParticipantID];
  [v6 setStreamTokensByParticipantID:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(CXCallTokens *)self updateCopy:v5 withZone:a3];
  return v5;
}

- (CXCallTokens)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallTokens *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_uplinkStreamToken);
    v5->_uplinkStreamToken = [v4 decodeIntegerForKey:v6];

    v7 = NSStringFromSelector(sel_downlinkStreamToken);
    v5->_downlinkStreamToken = [v4 decodeIntegerForKey:v7];

    v8 = NSStringFromSelector(sel_combinedAudioStreamToken);
    v5->_combinedAudioStreamToken = [v4 decodeIntegerForKey:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_streamTokensByParticipantID);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    streamTokensByParticipantID = v5->_streamTokensByParticipantID;
    v5->_streamTokensByParticipantID = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CXCallTokens *)self uplinkStreamToken];
  v6 = NSStringFromSelector(sel_uplinkStreamToken);
  [v4 encodeInteger:v5 forKey:v6];

  v7 = [(CXCallTokens *)self downlinkStreamToken];
  v8 = NSStringFromSelector(sel_downlinkStreamToken);
  [v4 encodeInteger:v7 forKey:v8];

  v9 = [(CXCallTokens *)self combinedAudioStreamToken];
  v10 = NSStringFromSelector(sel_combinedAudioStreamToken);
  [v4 encodeInteger:v9 forKey:v10];

  v12 = [(CXCallTokens *)self streamTokensByParticipantID];
  v11 = NSStringFromSelector(sel_streamTokensByParticipantID);
  [v4 encodeObject:v12 forKey:v11];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CXCallTokens *)self isEqualToCallTokens:v4];
  }

  return v5;
}

- (BOOL)isEqualToCallTokens:(id)a3
{
  v4 = a3;
  v5 = [(CXCallTokens *)self uplinkStreamToken];
  if (v5 == [v4 uplinkStreamToken] && (v6 = -[CXCallTokens downlinkStreamToken](self, "downlinkStreamToken"), v6 == objc_msgSend(v4, "downlinkStreamToken")) && (v7 = -[CXCallTokens combinedAudioStreamToken](self, "combinedAudioStreamToken"), v7 == objc_msgSend(v4, "combinedAudioStreamToken")))
  {
    v8 = [(CXCallTokens *)self streamTokensByParticipantID];
    v9 = [v4 streamTokensByParticipantID];
    v10 = v8 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end