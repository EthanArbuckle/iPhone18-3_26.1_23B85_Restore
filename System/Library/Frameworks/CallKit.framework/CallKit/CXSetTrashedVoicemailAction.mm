@interface CXSetTrashedVoicemailAction
- (CXSetTrashedVoicemailAction)initWithCoder:(id)a3;
- (CXSetTrashedVoicemailAction)initWithVoicemailUUID:(id)a3 trashed:(BOOL)a4;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetTrashedVoicemailAction

- (CXSetTrashedVoicemailAction)initWithVoicemailUUID:(id)a3 trashed:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CXSetTrashedVoicemailAction;
  result = [(CXVoicemailAction *)&v6 initWithVoicemailUUID:a3];
  if (result)
  {
    result->_trashed = a4;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetTrashedVoicemailAction;
  v3 = [(CXVoicemailAction *)&v5 customDescription];
  [v3 appendFormat:@" trashed=%d", -[CXSetTrashedVoicemailAction isTrashed](self, "isTrashed")];

  return v3;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetTrashedVoicemailAction;
  v6 = a3;
  [(CXVoicemailAction *)&v7 updateSanitizedCopy:v6 withZone:a4];
  [v6 setTrashed:{-[CXSetTrashedVoicemailAction isTrashed](self, "isTrashed", v7.receiver, v7.super_class)}];
}

- (CXSetTrashedVoicemailAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CXSetTrashedVoicemailAction;
  v5 = [(CXVoicemailAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isTrashed);
    v5->_trashed = [v4 decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetTrashedVoicemailAction;
  v4 = a3;
  [(CXVoicemailAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetTrashedVoicemailAction *)self isTrashed:v7.receiver];
  v6 = NSStringFromSelector(sel_isTrashed);
  [v4 encodeBool:v5 forKey:v6];
}

@end