@interface CXSetMutedCallAction
- (CXSetMutedCallAction)initWithCallUUID:(id)a3 muted:(BOOL)a4 bottomUpMute:(BOOL)a5;
- (CXSetMutedCallAction)initWithCallUUID:(id)a3 muted:(BOOL)a4 systemInitiated:(BOOL)a5;
- (CXSetMutedCallAction)initWithCoder:(NSCoder *)aDecoder;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetMutedCallAction

- (CXSetMutedCallAction)initWithCallUUID:(id)a3 muted:(BOOL)a4 bottomUpMute:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = CXSetMutedCallAction;
  result = [(CXCallAction *)&v8 initWithCallUUID:a3];
  if (result)
  {
    result->_muted = a4;
    result->_bottomUpMute = a5;
  }

  return result;
}

- (CXSetMutedCallAction)initWithCallUUID:(id)a3 muted:(BOOL)a4 systemInitiated:(BOOL)a5
{
  v8.receiver = self;
  v8.super_class = CXSetMutedCallAction;
  result = [(CXCallAction *)&v8 initWithCallUUID:a3];
  if (result)
  {
    result->_muted = a4;
    result->_systemInitiated = a5;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetMutedCallAction;
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" muted=%d", -[CXSetMutedCallAction isMuted](self, "isMuted")];
  [v3 appendFormat:@" bottomUp=%d", -[CXSetMutedCallAction isBottomUpMute](self, "isBottomUpMute")];
  [v3 appendFormat:@" systemInitiated=%d", -[CXSetMutedCallAction isSystemInitiated](self, "isSystemInitiated")];

  return v3;
}

- (void)updateSanitizedCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetMutedCallAction;
  v6 = a3;
  [(CXCallAction *)&v7 updateSanitizedCopy:v6 withZone:a4];
  [v6 setMuted:{-[CXSetMutedCallAction isMuted](self, "isMuted", v7.receiver, v7.super_class)}];
  [v6 setBottomUpMute:{-[CXSetMutedCallAction isBottomUpMute](self, "isBottomUpMute")}];
  [v6 setSystemInitiated:{-[CXSetMutedCallAction isSystemInitiated](self, "isSystemInitiated")}];
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

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CXSetMutedCallAction;
  v4 = a3;
  [(CXCallAction *)&v11 encodeWithCoder:v4];
  v5 = [(CXSetMutedCallAction *)self isMuted:v11.receiver];
  v6 = NSStringFromSelector(sel_isMuted);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(CXSetMutedCallAction *)self isBottomUpMute];
  v8 = NSStringFromSelector(sel_isBottomUpMute);
  [v4 encodeBool:v7 forKey:v8];

  v9 = [(CXSetMutedCallAction *)self isSystemInitiated];
  v10 = NSStringFromSelector(sel_isSystemInitiated);
  [v4 encodeBool:v9 forKey:v10];
}

@end