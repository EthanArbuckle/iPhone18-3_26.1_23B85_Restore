@interface CXEnableVideoCallAction
- (CXEnableVideoCallAction)initWithCallUUID:(id)d videoEnabled:(BOOL)enabled;
- (CXEnableVideoCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXEnableVideoCallAction

- (CXEnableVideoCallAction)initWithCallUUID:(id)d videoEnabled:(BOOL)enabled
{
  v6.receiver = self;
  v6.super_class = CXEnableVideoCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_videoEnabled = enabled;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXEnableVideoCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" videoEnabled=%d", -[CXEnableVideoCallAction isVideoEnabled](self, "isVideoEnabled")];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXEnableVideoCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [copyCopy setVideoEnabled:{-[CXEnableVideoCallAction isVideoEnabled](self, "isVideoEnabled", v7.receiver, v7.super_class)}];
}

- (CXEnableVideoCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXEnableVideoCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isVideoEnabled);
    v5->_videoEnabled = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXEnableVideoCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXEnableVideoCallAction *)self isVideoEnabled:v7.receiver];
  v6 = NSStringFromSelector(sel_isVideoEnabled);
  [coderCopy encodeBool:v5 forKey:v6];
}

@end