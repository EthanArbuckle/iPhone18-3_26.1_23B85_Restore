@interface CXSetTrashedVoicemailAction
- (CXSetTrashedVoicemailAction)initWithCoder:(id)coder;
- (CXSetTrashedVoicemailAction)initWithVoicemailUUID:(id)d trashed:(BOOL)trashed;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetTrashedVoicemailAction

- (CXSetTrashedVoicemailAction)initWithVoicemailUUID:(id)d trashed:(BOOL)trashed
{
  v6.receiver = self;
  v6.super_class = CXSetTrashedVoicemailAction;
  result = [(CXVoicemailAction *)&v6 initWithVoicemailUUID:d];
  if (result)
  {
    result->_trashed = trashed;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetTrashedVoicemailAction;
  customDescription = [(CXVoicemailAction *)&v5 customDescription];
  [customDescription appendFormat:@" trashed=%d", -[CXSetTrashedVoicemailAction isTrashed](self, "isTrashed")];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetTrashedVoicemailAction;
  copyCopy = copy;
  [(CXVoicemailAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  [copyCopy setTrashed:{-[CXSetTrashedVoicemailAction isTrashed](self, "isTrashed", v7.receiver, v7.super_class)}];
}

- (CXSetTrashedVoicemailAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetTrashedVoicemailAction;
  v5 = [(CXVoicemailAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isTrashed);
    v5->_trashed = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetTrashedVoicemailAction;
  coderCopy = coder;
  [(CXVoicemailAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetTrashedVoicemailAction *)self isTrashed:v7.receiver];
  v6 = NSStringFromSelector(sel_isTrashed);
  [coderCopy encodeBool:v5 forKey:v6];
}

@end