@interface ExportedMessageChannel
- (ExportedMessageChannel)initWithMessageChannel:(id)a3;
- (void)onCallRemoteAU:(id)a3 reply:(id)a4;
@end

@implementation ExportedMessageChannel

- (void)onCallRemoteAU:(id)a3 reply:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);
  if (WeakRetained && (v8 = objc_loadWeakRetained(&self->_messageChannel), [v8 callHostBlock], v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
  {
    v10 = (v9)[2](v9, v11);
    v6[2](v6, 0, v10);
  }

  else
  {

    v6[2](v6, 0, 0);
  }
}

- (ExportedMessageChannel)initWithMessageChannel:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ExportedMessageChannel;
  v5 = [(ExportedMessageChannel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_messageChannel, v4);
  }

  return v6;
}

@end