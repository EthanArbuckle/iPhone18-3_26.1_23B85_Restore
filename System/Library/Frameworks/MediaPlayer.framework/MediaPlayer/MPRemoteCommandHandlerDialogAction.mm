@interface MPRemoteCommandHandlerDialogAction
+ (id)actionWithTitle:(id)a3 type:(int64_t)a4 commandEvent:(id)a5;
- (MPRemoteCommandEvent)event;
- (MPRemoteCommandHandlerDialogAction)initWithMediaRemoteType:(id)a3;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)type;
@end

@implementation MPRemoteCommandHandlerDialogAction

- (MPRemoteCommandEvent)event
{
  v2 = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  v3 = [v2 event];

  if (v3)
  {
    v4 = -[MPRemoteCommand initWithMediaRemoteCommandType:]([MPRemoteCommand alloc], "initWithMediaRemoteCommandType:", [v3 command]);
    v5 = [MPRemoteCommandEvent alloc];
    v6 = [v3 command];
    v7 = [v3 options];
    v8 = [(MPRemoteCommandEvent *)v5 initWithCommand:v4 mediaRemoteType:v6 options:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)type
{
  v2 = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  v3 = [v2 type];
  if (v3 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3 == 1;
  }

  return v4;
}

- (NSString)title
{
  v2 = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  v3 = [v2 title];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(MPRemoteCommandHandlerDialogAction *)self mediaRemoteType];
  v5 = [v4 copyWithZone:a3];

  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithMediaRemoteType:", v5}];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPRemoteCommandHandlerDialogAction *)self title];
  v6 = NSStringFromMPRemoteCommandHandlerDialogActionType([(MPRemoteCommandHandlerDialogAction *)self type]);
  v7 = [(MPRemoteCommandHandlerDialogAction *)self event];
  v8 = [v3 stringWithFormat:@"<%@: %p title=%@ type=%@ event=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (MPRemoteCommandHandlerDialogAction)initWithMediaRemoteType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPRemoteCommandHandlerDialogAction;
  v6 = [(MPRemoteCommandHandlerDialogAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteType, a3);
  }

  return v7;
}

+ (id)actionWithTitle:(id)a3 type:(int64_t)a4 commandEvent:(id)a5
{
  v8 = a3;
  if (a5)
  {
    v9 = a5;
    v10 = [v9 command];
    v11 = [v10 mediaRemoteCommandType];

    v12 = MEMORY[0x1E69B0AF8];
    v13 = [v9 mediaRemoteOptions];

    a5 = [v12 eventWithCommand:v11 options:v13];
  }

  if (a4 == 2)
  {
    v14 = 2;
  }

  else
  {
    v14 = a4 == 1;
  }

  v15 = [MEMORY[0x1E69B0AF0] actionWithTitle:v8 type:v14 commandEvent:a5];
  v16 = [[a1 alloc] initWithMediaRemoteType:v15];

  return v16;
}

@end