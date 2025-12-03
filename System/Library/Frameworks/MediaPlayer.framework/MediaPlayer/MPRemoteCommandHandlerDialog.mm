@interface MPRemoteCommandHandlerDialog
+ (id)dialogWithTitle:(id)title message:(id)message;
- (MPRemoteCommandHandlerDialog)initWithMediaRemoteType:(id)type;
- (NSArray)actions;
- (NSString)localizedMessage;
- (NSString)localizedTitle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addAction:(id)action;
- (void)setLocalizedMessage:(id)message;
- (void)setLocalizedTitle:(id)title;
@end

@implementation MPRemoteCommandHandlerDialog

- (NSArray)actions
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  actions = [mediaRemoteType actions];
  v4 = [actions msv_map:&__block_literal_global_56999];

  return v4;
}

MPRemoteCommandHandlerDialogAction *__39__MPRemoteCommandHandlerDialog_actions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MPRemoteCommandHandlerDialogAction alloc] initWithMediaRemoteType:v2];

  return v3;
}

- (void)setLocalizedMessage:(id)message
{
  messageCopy = message;
  mediaRemoteType = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  [mediaRemoteType setLocalizedMessage:messageCopy];
}

- (NSString)localizedMessage
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  localizedMessage = [mediaRemoteType localizedMessage];

  return localizedMessage;
}

- (void)setLocalizedTitle:(id)title
{
  titleCopy = title;
  mediaRemoteType = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  [mediaRemoteType setLocalizedTitle:titleCopy];
}

- (NSString)localizedTitle
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  localizedTitle = [mediaRemoteType localizedTitle];

  return localizedTitle;
}

- (void)addAction:(id)action
{
  actionCopy = action;
  type = [actionCopy type];
  event = [actionCopy event];

  if (event)
  {
    v6 = MEMORY[0x1E69B0AF8];
    event2 = [actionCopy event];
    command = [event2 command];
    mediaRemoteCommandType = [command mediaRemoteCommandType];
    event3 = [actionCopy event];
    mediaRemoteOptions = [event3 mediaRemoteOptions];
    event = [v6 eventWithCommand:mediaRemoteCommandType options:mediaRemoteOptions];
  }

  if (type != 2)
  {
    type = type == 1;
  }

  v12 = MEMORY[0x1E69B0AF0];
  title = [actionCopy title];
  v14 = [v12 actionWithTitle:title type:type commandEvent:event];

  mediaRemoteType = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  [mediaRemoteType addAction:v14];
}

- (id)copyWithZone:(_NSZone *)zone
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  v5 = [mediaRemoteType copyWithZone:zone];

  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithMediaRemoteType:", v5}];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedTitle = [(MPRemoteCommandHandlerDialog *)self localizedTitle];
  localizedMessage = [(MPRemoteCommandHandlerDialog *)self localizedMessage];
  actions = [(MPRemoteCommandHandlerDialog *)self actions];
  v8 = [v3 stringWithFormat:@"<%@: %p title=%@ message=%@ actions=%@>", v4, self, localizedTitle, localizedMessage, actions];

  return v8;
}

- (MPRemoteCommandHandlerDialog)initWithMediaRemoteType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = MPRemoteCommandHandlerDialog;
  v6 = [(MPRemoteCommandHandlerDialog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteType, type);
  }

  return v7;
}

+ (id)dialogWithTitle:(id)title message:(id)message
{
  v5 = [MEMORY[0x1E69B0AE8] dialogWithTitle:title message:message];
  v6 = [[self alloc] initWithMediaRemoteType:v5];

  return v6;
}

@end