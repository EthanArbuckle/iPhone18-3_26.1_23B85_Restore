@interface AVTAvatarRecordCacheableResourceChangeToken
- (AVTAvatarRecordCacheableResourceChangeToken)initWithEnvironment:(id)environment recordIdentifier:(id)identifier changeHandler:(id)handler;
- (void)handleNotification:(id)notification;
- (void)startObservingChanges;
- (void)stopObservingChanges;
@end

@implementation AVTAvatarRecordCacheableResourceChangeToken

- (AVTAvatarRecordCacheableResourceChangeToken)initWithEnvironment:(id)environment recordIdentifier:(id)identifier changeHandler:(id)handler
{
  environmentCopy = environment;
  identifierCopy = identifier;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = AVTAvatarRecordCacheableResourceChangeToken;
  v11 = [(AVTAvatarRecordCacheableResourceChangeToken *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    recordID = v11->_recordID;
    v11->_recordID = v12;

    v14 = [handlerCopy copy];
    changeHandler = v11->_changeHandler;
    v11->_changeHandler = v14;

    notificationCenter = [environmentCopy notificationCenter];
    notificationCenter = v11->_notificationCenter;
    v11->_notificationCenter = notificationCenter;
  }

  return v11;
}

- (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  _avtui_changedRecordIdentifiers = [notificationCopy _avtui_changedRecordIdentifiers];
  if (!_avtui_changedRecordIdentifiers || (v5 = _avtui_changedRecordIdentifiers, [notificationCopy _avtui_changedRecordIdentifiers], v6 = objc_claimAutoreleasedReturnValue(), -[AVTAvatarRecordCacheableResourceChangeToken recordID](self, "recordID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, v5, v8))
  {
    changeHandler = [(AVTAvatarRecordCacheableResourceChangeToken *)self changeHandler];
    changeHandler[2]();
  }
}

- (void)startObservingChanges
{
  notificationCenter = [(AVTAvatarRecordCacheableResourceChangeToken *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleNotification_ name:*MEMORY[0x1E698E308] object:0];
}

- (void)stopObservingChanges
{
  notificationCenter = [(AVTAvatarRecordCacheableResourceChangeToken *)self notificationCenter];
  [notificationCenter removeObserver:self];
}

@end