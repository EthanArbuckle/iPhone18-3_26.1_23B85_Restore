@interface CXSetPlayedVoicemailAction
- (CXSetPlayedVoicemailAction)initWithCoder:(id)coder;
- (CXSetPlayedVoicemailAction)initWithVoicemailUUID:(id)d played:(BOOL)played;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetPlayedVoicemailAction

- (CXSetPlayedVoicemailAction)initWithVoicemailUUID:(id)d played:(BOOL)played
{
  v6.receiver = self;
  v6.super_class = CXSetPlayedVoicemailAction;
  result = [(CXVoicemailAction *)&v6 initWithVoicemailUUID:d];
  if (result)
  {
    result->_played = played;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetPlayedVoicemailAction;
  customDescription = [(CXVoicemailAction *)&v5 customDescription];
  [customDescription appendFormat:@" played=%d", -[CXSetPlayedVoicemailAction isPlayed](self, "isPlayed")];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetPlayedVoicemailAction;
  copyCopy = copy;
  [(CXVoicemailAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  [copyCopy setPlayed:{-[CXSetPlayedVoicemailAction isPlayed](self, "isPlayed", v7.receiver, v7.super_class)}];
}

- (CXSetPlayedVoicemailAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetPlayedVoicemailAction;
  v5 = [(CXVoicemailAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isPlayed);
    v5->_played = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetPlayedVoicemailAction;
  coderCopy = coder;
  [(CXVoicemailAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetPlayedVoicemailAction *)self isPlayed:v7.receiver];
  v6 = NSStringFromSelector(sel_isPlayed);
  [coderCopy encodeBool:v5 forKey:v6];
}

@end