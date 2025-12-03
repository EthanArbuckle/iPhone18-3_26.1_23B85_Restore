@interface CXSetMutedCallAction
- (CXSetMutedCallAction)initWithCallUUID:(id)d muted:(BOOL)muted bottomUpMute:(BOOL)mute;
- (CXSetMutedCallAction)initWithCallUUID:(id)d muted:(BOOL)muted systemInitiated:(BOOL)initiated;
- (CXSetMutedCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetMutedCallAction

- (CXSetMutedCallAction)initWithCallUUID:(id)d muted:(BOOL)muted bottomUpMute:(BOOL)mute
{
  v8.receiver = self;
  v8.super_class = CXSetMutedCallAction;
  result = [(CXCallAction *)&v8 initWithCallUUID:d];
  if (result)
  {
    result->_muted = muted;
    result->_bottomUpMute = mute;
  }

  return result;
}

- (CXSetMutedCallAction)initWithCallUUID:(id)d muted:(BOOL)muted systemInitiated:(BOOL)initiated
{
  v8.receiver = self;
  v8.super_class = CXSetMutedCallAction;
  result = [(CXCallAction *)&v8 initWithCallUUID:d];
  if (result)
  {
    result->_muted = muted;
    result->_systemInitiated = initiated;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetMutedCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" muted=%d", -[CXSetMutedCallAction isMuted](self, "isMuted")];
  [customDescription appendFormat:@" bottomUp=%d", -[CXSetMutedCallAction isBottomUpMute](self, "isBottomUpMute")];
  [customDescription appendFormat:@" systemInitiated=%d", -[CXSetMutedCallAction isSystemInitiated](self, "isSystemInitiated")];

  return customDescription;
}

- (void)updateSanitizedCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetMutedCallAction;
  copyCopy = copy;
  [(CXCallAction *)&v7 updateSanitizedCopy:copyCopy withZone:zone];
  [copyCopy setMuted:{-[CXSetMutedCallAction isMuted](self, "isMuted", v7.receiver, v7.super_class)}];
  [copyCopy setBottomUpMute:{-[CXSetMutedCallAction isBottomUpMute](self, "isBottomUpMute")}];
  [copyCopy setSystemInitiated:{-[CXSetMutedCallAction isSystemInitiated](self, "isSystemInitiated")}];
}

- (CXSetMutedCallAction)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v10.receiver = self;
  v10.super_class = CXSetMutedCallAction;
  v5 = [(CXCallAction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isMuted);
    v5->_muted = [(NSCoder *)v4 decodeBoolForKey:v6];

    v7 = NSStringFromSelector(sel_isBottomUpMute);
    v5->_bottomUpMute = [(NSCoder *)v4 decodeBoolForKey:v7];

    v8 = NSStringFromSelector(sel_isSystemInitiated);
    v5->_systemInitiated = [(NSCoder *)v4 decodeBoolForKey:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CXSetMutedCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v11 encodeWithCoder:coderCopy];
  v5 = [(CXSetMutedCallAction *)self isMuted:v11.receiver];
  v6 = NSStringFromSelector(sel_isMuted);
  [coderCopy encodeBool:v5 forKey:v6];

  isBottomUpMute = [(CXSetMutedCallAction *)self isBottomUpMute];
  v8 = NSStringFromSelector(sel_isBottomUpMute);
  [coderCopy encodeBool:isBottomUpMute forKey:v8];

  isSystemInitiated = [(CXSetMutedCallAction *)self isSystemInitiated];
  v10 = NSStringFromSelector(sel_isSystemInitiated);
  [coderCopy encodeBool:isSystemInitiated forKey:v10];
}

@end