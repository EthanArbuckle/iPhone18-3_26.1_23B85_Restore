@interface CXSetHeldCallAction
- (CXSetHeldCallAction)initWithCallUUID:(NSUUID *)callUUID onHold:(BOOL)onHold;
- (CXSetHeldCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetHeldCallAction

- (CXSetHeldCallAction)initWithCallUUID:(NSUUID *)callUUID onHold:(BOOL)onHold
{
  v6.receiver = self;
  v6.super_class = CXSetHeldCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:callUUID];
  if (result)
  {
    result->_onHold = onHold;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetHeldCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" isOnHold=%d", -[CXSetHeldCallAction isOnHold](self, "isOnHold")];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetHeldCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  [copyCopy setOnHold:{-[CXSetHeldCallAction isOnHold](self, "isOnHold", v7.receiver, v7.super_class)}];
}

- (CXSetHeldCallAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v8.receiver = self;
  v8.super_class = CXSetHeldCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isOnHold);
    v5->_onHold = [(NSCoder *)v4 decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetHeldCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetHeldCallAction *)self isOnHold:v7.receiver];
  v6 = NSStringFromSelector(sel_isOnHold);
  [coderCopy encodeBool:v5 forKey:v6];
}

@end