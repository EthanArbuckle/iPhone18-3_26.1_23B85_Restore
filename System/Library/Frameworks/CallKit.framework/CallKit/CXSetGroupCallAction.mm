@interface CXSetGroupCallAction
- (CXSetGroupCallAction)initWithCallUUID:(NSUUID *)callUUID callUUIDToGroupWith:(NSUUID *)callUUIDToGroupWith;
- (CXSetGroupCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetGroupCallAction

- (CXSetGroupCallAction)initWithCallUUID:(NSUUID *)callUUID callUUIDToGroupWith:(NSUUID *)callUUIDToGroupWith
{
  v7 = callUUIDToGroupWith;
  v11.receiver = self;
  v11.super_class = CXSetGroupCallAction;
  v8 = [(CXCallAction *)&v11 initWithCallUUID:callUUID];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_callUUIDToGroupWith, callUUIDToGroupWith);
  }

  return v9;
}

- (id)customDescription
{
  v6.receiver = self;
  v6.super_class = CXSetGroupCallAction;
  customDescription = [(CXCallAction *)&v6 customDescription];
  callUUIDToGroupWith = [(CXSetGroupCallAction *)self callUUIDToGroupWith];
  [customDescription appendFormat:@" callUUIDToGroupWith=%@", callUUIDToGroupWith];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = CXSetGroupCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v8 updateSanitizedCopy:copyCopy withZone:zone];
  v7 = [(CXSetGroupCallAction *)self callUUIDToGroupWith:v8.receiver];
  [copyCopy setCallUUIDToGroupWith:v7];
}

- (CXSetGroupCallAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v11.receiver = self;
  v11.super_class = CXSetGroupCallAction;
  v5 = [(CXCallAction *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_callUUIDToGroupWith);
    v8 = [(NSCoder *)v4 decodeObjectOfClass:v6 forKey:v7];
    callUUIDToGroupWith = v5->_callUUIDToGroupWith;
    v5->_callUUIDToGroupWith = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetGroupCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetGroupCallAction *)self callUUIDToGroupWith:v7.receiver];
  v6 = NSStringFromSelector(sel_callUUIDToGroupWith);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end