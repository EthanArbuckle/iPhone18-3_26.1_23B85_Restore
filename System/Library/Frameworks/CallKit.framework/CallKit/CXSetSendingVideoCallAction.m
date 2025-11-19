@interface CXSetSendingVideoCallAction
- (CXSetSendingVideoCallAction)initWithCallUUID:(id)a3 sendingVideo:(BOOL)a4;
- (CXSetSendingVideoCallAction)initWithCoder:(id)a3;
- (id)customDescription;
- (void)encodeWithCoder:(id)a3;
- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4;
@end

@implementation CXSetSendingVideoCallAction

- (CXSetSendingVideoCallAction)initWithCallUUID:(id)a3 sendingVideo:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = CXSetSendingVideoCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:a3];
  if (result)
  {
    result->_sendingVideo = a4;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetSendingVideoCallAction;
  v3 = [(CXCallAction *)&v5 customDescription];
  [v3 appendFormat:@" sendingVideo=%d", -[CXSetSendingVideoCallAction isSendingVideo](self, "isSendingVideo")];

  return v3;
}

- (void)updateCopy:(id)a3 withZone:(_NSZone *)a4
{
  v7.receiver = self;
  v7.super_class = CXSetSendingVideoCallAction;
  v6 = a3;
  [(CXAction *)&v7 updateCopy:v6 withZone:a4];
  [v6 setSendingVideo:{-[CXSetSendingVideoCallAction isSendingVideo](self, "isSendingVideo", v7.receiver, v7.super_class)}];
}

- (CXSetSendingVideoCallAction)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CXSetSendingVideoCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isSendingVideo);
    v5->_sendingVideo = [v4 decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CXSetSendingVideoCallAction;
  v4 = a3;
  [(CXCallAction *)&v7 encodeWithCoder:v4];
  v5 = [(CXSetSendingVideoCallAction *)self isSendingVideo:v7.receiver];
  v6 = NSStringFromSelector(sel_isSendingVideo);
  [v4 encodeBool:v5 forKey:v6];
}

@end