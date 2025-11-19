@interface CXSetHeldCallAction
- (CXSetHeldCallAction)initWithCallUUID:(NSUUID *)callUUID onHold:(BOOL)onHold;
- (CXSetHeldCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
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
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" isOnHold=%d", -[CXSetHeldCallAction isOnHold](self, "isOnHold")];

  return v3;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetHeldCallAction;
  v6 = a3;
  [(CXCallAction *)&v7 updateSanitizedCopy:v6 withZone:a4];
  [v6 setOnHold:{-[CXSetHeldCallAction isOnHold](self, "isOnHold", v7.receiver, v7.super_class)}];
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

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetHeldCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetHeldCallAction *)self isOnHold:v7.receiver];
  v6 = NSStringFromSelector(sel_isOnHold);
  [v4 encodeBool:v5 forKey:v6];
}

@end