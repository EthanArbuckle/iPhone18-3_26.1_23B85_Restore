@interface CXSetSendingVideoCallAction
- (CXSetSendingVideoCallAction)initWithCallUUID:(id)d sendingVideo:(BOOL)video;
- (CXSetSendingVideoCallAction)initWithCoder:(id)coder;
- (id)customDescription;
- (void)encodeWithCoder:(id)coder;
- (void)updateCopy:(id)copy withZone:(_NSZone *)zone;
@end

@implementation CXSetSendingVideoCallAction

- (CXSetSendingVideoCallAction)initWithCallUUID:(id)d sendingVideo:(BOOL)video
{
  v6.receiver = self;
  v6.super_class = CXSetSendingVideoCallAction;
  result = [(CXCallAction *)&v6 initWithCallUUID:d];
  if (result)
  {
    result->_sendingVideo = video;
  }

  return result;
}

- (id)customDescription
{
  v5.receiver = self;
  v5.super_class = CXSetSendingVideoCallAction;
  customDescription = [(CXCallAction *)&v5 customDescription];
  [customDescription appendFormat:@" sendingVideo=%d", -[CXSetSendingVideoCallAction isSendingVideo](self, "isSendingVideo")];

  return customDescription;
}

- (void)updateCopy:(id)copy withZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CXSetSendingVideoCallAction;
  copyCopy = copy;
  [(CXAction *)&v7 updateCopy:copyCopy withZone:zone];
  [copyCopy setSendingVideo:{-[CXSetSendingVideoCallAction isSendingVideo](self, "isSendingVideo", v7.receiver, v7.super_class)}];
}

- (CXSetSendingVideoCallAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CXSetSendingVideoCallAction;
  v5 = [(CXCallAction *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isSendingVideo);
    v5->_sendingVideo = [coderCopy decodeBoolForKey:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CXSetSendingVideoCallAction;
  coderCopy = coder;
  [(CXCallAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CXSetSendingVideoCallAction *)self isSendingVideo:v7.receiver];
  v6 = NSStringFromSelector(sel_isSendingVideo);
  [coderCopy encodeBool:v5 forKey:v6];
}

@end