@interface CXCallAction
- (CXCallAction)initWithCallUUID:(NSUUID *)callUUID;
- (CXCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDescription;
- (id)sanitizedCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXCallAction

- (id)customDescription
{
  v7.receiver = self;
  v7.super_class = CXCallAction;
  customDescription = [(CXAction *)&v7 customDescription];
  callUUID = [(CXCallAction *)self callUUID];
  uUIDString = [callUUID UUIDString];
  [customDescription appendFormat:@" callUUID=%@", uUIDString];

  return customDescription;
}

- (CXCallAction)initWithCallUUID:(NSUUID *)callUUID
{
  v5 = callUUID;
  v8.receiver = self;
  v8.super_class = CXCallAction;
  v6 = [(CXAction *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[CXCallAction initWithCallUUID:]", @"callUUID"}];
    }

    objc_storeStrong(&v6->_callUUID, callUUID);
  }

  return v6;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CXCallAction;
  copyCopy = copy;
  [(CXAction *)&v8 updateSanitizedCopy:copyCopy withZone:zone];
  v7 = [(CXCallAction *)self callUUID:v8.receiver];
  [copyCopy setCallUUID:v7];
}

- (id)sanitizedCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  callUUID = [(CXCallAction *)self callUUID];
  v7 = [v5 initWithCallUUID:callUUID];

  [(CXCallAction *)self updateSanitizedCopy:v7 withZone:zone];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  callUUID = [(CXCallAction *)self callUUID];
  v7 = [v5 initWithCallUUID:callUUID];

  [(CXAction *)self updateCopy:v7 withZone:zone];
  return v7;
}

- (CXCallAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v11.receiver = self;
  v11.super_class = CXCallAction;
  v5 = [(CXAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_callUUID);
    v8 = [(NSCoder *)v4 decodeObjectOfClass:v6 forKey:v7];
    callUUID = v5->_callUUID;
    v5->_callUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXCallAction;
  coderCopy = coder;
  [(CXAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXCallAction *)self callUUID:v7.receiver];
  v6 = NSStringFromSelector(sel_callUUID);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end