@interface AVTAvatarRecordCacheableResourceChangeToken
- (AVTAvatarRecordCacheableResourceChangeToken)initWithEnvironment:(id)a3 recordIdentifier:(id)a4 changeHandler:(id)a5;
- (void)handleNotification:(id)a3;
- (void)startObservingChanges;
- (void)stopObservingChanges;
@end

@implementation AVTAvatarRecordCacheableResourceChangeToken

- (AVTAvatarRecordCacheableResourceChangeToken)initWithEnvironment:(id)a3 recordIdentifier:(id)a4 changeHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = AVTAvatarRecordCacheableResourceChangeToken;
  v11 = [(AVTAvatarRecordCacheableResourceChangeToken *)&v19 init];
  if (v11)
  {
    v12 = [v9 copy];
    recordID = v11->_recordID;
    v11->_recordID = v12;

    v14 = [v10 copy];
    changeHandler = v11->_changeHandler;
    v11->_changeHandler = v14;

    v16 = [v8 notificationCenter];
    notificationCenter = v11->_notificationCenter;
    v11->_notificationCenter = v16;
  }

  return v11;
}

- (void)handleNotification:(id)a3
{
  v10 = a3;
  v4 = [v10 _avtui_changedRecordIdentifiers];
  if (!v4 || (v5 = v4, [v10 _avtui_changedRecordIdentifiers], v6 = objc_claimAutoreleasedReturnValue(), -[AVTAvatarRecordCacheableResourceChangeToken recordID](self, "recordID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, v5, v8))
  {
    v9 = [(AVTAvatarRecordCacheableResourceChangeToken *)self changeHandler];
    v9[2]();
  }
}

- (void)startObservingChanges
{
  v3 = [(AVTAvatarRecordCacheableResourceChangeToken *)self notificationCenter];
  [v3 addObserver:self selector:sel_handleNotification_ name:*MEMORY[0x1E698E308] object:0];
}

- (void)stopObservingChanges
{
  v3 = [(AVTAvatarRecordCacheableResourceChangeToken *)self notificationCenter];
  [v3 removeObserver:self];
}

@end