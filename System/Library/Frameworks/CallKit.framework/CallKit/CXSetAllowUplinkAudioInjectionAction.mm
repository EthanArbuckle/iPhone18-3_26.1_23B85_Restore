@interface CXSetAllowUplinkAudioInjectionAction
- (CXSetAllowUplinkAudioInjectionAction)initWithCallUUID:(id)d willInject:(BOOL)inject;
- (CXSetAllowUplinkAudioInjectionAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetAllowUplinkAudioInjectionAction

- (CXSetAllowUplinkAudioInjectionAction)initWithCallUUID:(id)d willInject:(BOOL)inject
{
  v6.receiver = self;
  v6.super_class = CXSetAllowUplinkAudioInjectionAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_inject = inject;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetAllowUplinkAudioInjectionAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" willInject=%d", -[CXSetAllowUplinkAudioInjectionAction willInject](self, "willInject")];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetAllowUplinkAudioInjectionAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [copyCopy setInject:{-[CXSetAllowUplinkAudioInjectionAction willInject](self, "willInject", v7.receiver, v7.super_class)}];
}

- (CXSetAllowUplinkAudioInjectionAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetAllowUplinkAudioInjectionAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_willInject);
    v5->_inject = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetAllowUplinkAudioInjectionAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetAllowUplinkAudioInjectionAction *)self willInject:v7.receiver];
  v6 = NSStringFromSelector(sel_willInject);
  [coderCopy encodeBool:v5 forKey:v6];
}

@end