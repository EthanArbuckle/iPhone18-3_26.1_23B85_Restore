@interface ExportedMessageChannel
- (ExportedMessageChannel)initWithMessageChannel:(id)channel;
- (void)onCallRemoteAU:(id)u reply:(id)reply;
@end

@implementation ExportedMessageChannel

- (void)onCallRemoteAU:(id)u reply:(id)reply
{
  uCopy = u;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);
  if (WeakRetained && (v8 = objc_loadWeakRetained(&self->_messageChannel), [v8 callHostBlock], v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = (v9)[2](v9, uCopy);
    replyCopy[2](replyCopy, 0, v10);
  }

  else
  {

    replyCopy[2](replyCopy, 0, 0);
  }
}

- (ExportedMessageChannel)initWithMessageChannel:(id)channel
{
  channelCopy = channel;
  v8.receiver = self;
  v8.super_class = ExportedMessageChannel;
  v5 = [(ExportedMessageChannel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageChannel, channelCopy);
  }

  return v6;
}

@end