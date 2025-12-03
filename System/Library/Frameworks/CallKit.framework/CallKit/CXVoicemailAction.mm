@interface CXVoicemailAction
- (CXVoicemailAction)initWithCoder:(id)coder;
- (CXVoicemailAction)initWithVoicemailUUID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDescription;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXVoicemailAction

- (CXVoicemailAction)initWithVoicemailUUID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = CXVoicemailAction;
  v6 = [(CXAction *)&v8 init];
  if (v6)
  {
    if (!dCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXVoicemailAction initWithVoicemailUUID:]", @"voicemailUUID"}];
    }

    objc_storeStrong(&v6->_voicemailUUID, d);
  }

  return v6;
}

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXVoicemailAction;
  customDescription = [(CXAction *)&v7 customDescription];
  voicemailUUID = [(CXVoicemailAction *)self voicemailUUID];
  uUIDString = [voicemailUUID UUIDString];
  [customDescription appendFormat:@" voicemailUUID=%@", uUIDString];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CXVoicemailAction;
  copyCopy = copy;
  [(CXAction *)&v8 updateSanitizedCopy:copyCopy withZone:zone];
  v7 = [(CXVoicemailAction *)self voicemailUUID:v8.receiver];
  [copyCopy setVoicemailUUID:v7];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  voicemailUUID = [(CXVoicemailAction *)self voicemailUUID];
  v7 = [v5 initWithVoicemailUUID:voicemailUUID];

  [(CXVoicemailAction *)self updateSanitizedCopy:v7 withZone:zone];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  voicemailUUID = [(CXVoicemailAction *)self voicemailUUID];
  v7 = [v5 initWithVoicemailUUID:voicemailUUID];

  [(CXAction *)self updateCopy:v7 withZone:zone];
  return v7;
}

- (CXVoicemailAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CXVoicemailAction;
  v5 = [(CXAction *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_voicemailUUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    voicemailUUID = v5->_voicemailUUID;
    v5->_voicemailUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXVoicemailAction;
  coderCopy = coder;
  [(CXAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXVoicemailAction *)self voicemailUUID:v7.receiver];
  v6 = NSStringFromSelector(sel_voicemailUUID);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end