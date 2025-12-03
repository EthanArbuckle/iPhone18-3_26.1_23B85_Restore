@interface MPRemoteCommandHandlerDialogAction
+ (id)actionWithTitle:(id)title type:(int64_t)type commandEvent:(id)event;
- (MPRemoteCommandEvent)event;
- (MPRemoteCommandHandlerDialogAction)initWithMediaRemoteType:(id)type;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)type;
@end

@implementation MPRemoteCommandHandlerDialogAction

- (MPRemoteCommandEvent)event
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  event = [mediaRemoteType event];

  if (event)
  {
    v4 = -[MPRemoteCommand initWithMediaRemoteCommandType:]([MPRemoteCommand alloc], "initWithMediaRemoteCommandType:", [event command]);
    v5 = [MPRemoteCommandEvent alloc];
    command = [event command];
    options = [event options];
    v8 = [(MPRemoteCommandEvent *)v5 initWithCommand:v4 mediaRemoteType:command options:options];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)type
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  type = [mediaRemoteType type];
  if (type == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = type == 1;
  }

  return v4;
}

- (NSString)title
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  title = [mediaRemoteType title];

  return title;
}

- (id)copyWithZone:(_NSZone *)zone
{
  mediaRemoteType = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  v5 = [mediaRemoteType copyWithZone:zone];

  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithMediaRemoteType:", v5}];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(MPRemoteCommandHandlerDialogAction *)self title];
  v6 = NSStringFromMPRemoteCommandHandlerDialogActionType([(MPRemoteCommandHandlerDialogAction *)self type]);
  event = [(MPRemoteCommandHandlerDialogAction *)self event];
  v8 = [v3 stringWithFormat:@"<%@: %p title=%@ type=%@ event=%@>", v4, self, title, v6, event];

  return v8;
}

- (MPRemoteCommandHandlerDialogAction)initWithMediaRemoteType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = MPRemoteCommandHandlerDialogAction;
  v6 = [(MPRemoteCommandHandlerDialogAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteType, type);
  }

  return v7;
}

+ (id)actionWithTitle:(id)title type:(int64_t)type commandEvent:(id)event
{
  titleCopy = title;
  if (event)
  {
    eventCopy = event;
    command = [eventCopy command];
    mediaRemoteCommandType = [command mediaRemoteCommandType];

    v12 = MEMORY[0x1E69B0AF8];
    mediaRemoteOptions = [eventCopy mediaRemoteOptions];

    event = [v12 eventWithCommand:mediaRemoteCommandType options:mediaRemoteOptions];
  }

  if (type == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = type == 1;
  }

  v15 = [MEMORY[0x1E69B0AF0] actionWithTitle:titleCopy type:v14 commandEvent:event];
  v16 = [[self alloc] initWithMediaRemoteType:v15];

  return v16;
}

@end