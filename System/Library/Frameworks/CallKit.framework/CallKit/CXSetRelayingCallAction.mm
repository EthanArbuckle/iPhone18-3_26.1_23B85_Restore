@interface CXSetRelayingCallAction
- (CXSetRelayingCallAction)initWithCallUUID:(id)d relaying:(BOOL)relaying;
- (CXSetRelayingCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetRelayingCallAction

- (CXSetRelayingCallAction)initWithCallUUID:(id)d relaying:(BOOL)relaying
{
  v6.receiver = self;
  v6.super_class = CXSetRelayingCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_relaying = relaying;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetRelayingCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" relaying=%d", -[CXSetRelayingCallAction isRelaying](self, "isRelaying")];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetRelayingCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [copyCopy setRelaying:{-[CXSetRelayingCallAction isRelaying](self, "isRelaying", v7.receiver, v7.super_class)}];
}

- (CXSetRelayingCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetRelayingCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isRelaying);
    v5->_relaying = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetRelayingCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetRelayingCallAction *)self isRelaying:v7.receiver];
  v6 = NSStringFromSelector(sel_isRelaying);
  [coderCopy encodeBool:v5 forKey:v6];
}

@end