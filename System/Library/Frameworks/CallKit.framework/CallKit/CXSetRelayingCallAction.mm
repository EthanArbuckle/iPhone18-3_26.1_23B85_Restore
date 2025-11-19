@interface CXSetRelayingCallAction
- (CXSetRelayingCallAction)initWithCallUUID:(id)a3 relaying:(BOOL)a4;
- (CXSetRelayingCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetRelayingCallAction

- (CXSetRelayingCallAction)initWithCallUUID:(id)a3 relaying:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CXSetRelayingCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_relaying = a4;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetRelayingCallAction;
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" relaying=%d", -[CXSetRelayingCallAction isRelaying](self, "isRelaying")];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetRelayingCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  [v6 setRelaying:{-[CXSetRelayingCallAction isRelaying](self, "isRelaying", v7.receiver, v7.super_class)}];
}

- (CXSetRelayingCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CXSetRelayingCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isRelaying);
    v5->_relaying = [v4 decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetRelayingCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetRelayingCallAction *)self isRelaying:v7.receiver];
  v6 = NSStringFromSelector(sel_isRelaying);
  [v4 encodeBool:v5 forKey:v6];
}

@end