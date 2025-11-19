@interface CXEnableVideoCallAction
- (CXEnableVideoCallAction)initWithCallUUID:(id)a3 videoEnabled:(BOOL)a4;
- (CXEnableVideoCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXEnableVideoCallAction

- (CXEnableVideoCallAction)initWithCallUUID:(id)a3 videoEnabled:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CXEnableVideoCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_videoEnabled = a4;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXEnableVideoCallAction;
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" videoEnabled=%d", -[CXEnableVideoCallAction isVideoEnabled](self, "isVideoEnabled")];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXEnableVideoCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  [v6 setVideoEnabled:{-[CXEnableVideoCallAction isVideoEnabled](self, "isVideoEnabled", v7.receiver, v7.super_class)}];
}

- (CXEnableVideoCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CXEnableVideoCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isVideoEnabled);
    v5->_videoEnabled = [v4 decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXEnableVideoCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXEnableVideoCallAction *)self isVideoEnabled:v7.receiver];
  v6 = NSStringFromSelector(sel_isVideoEnabled);
  [v4 encodeBool:v5 forKey:v6];
}

@end