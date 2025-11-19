@interface MPRemoteCommandHandlerDialog
+ (id)dialogWithTitle:(id)a3 message:(id)a4;
- (MPRemoteCommandHandlerDialog)initWithMediaRemoteType:(id)a3;
- (NSArray)actions;
- (NSString)localizedMessage;
- (NSString)localizedTitle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)addAction:(id)a3;
- (void)setLocalizedMessage:(id)a3;
- (void)setLocalizedTitle:(id)a3;
@end

@implementation MPRemoteCommandHandlerDialog

- (NSArray)actions
{
  v2 = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  v3 = [v2 actions];
  v4 = [v3 msv_map:&__block_literal_global_56999];

  return v4;
}

MPRemoteCommandHandlerDialogAction *__39__MPRemoteCommandHandlerDialog_actions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MPRemoteCommandHandlerDialogAction alloc] initWithMediaRemoteType:v2];

  return v3;
}

- (void)setLocalizedMessage:(id)a3
{
  v4 = a3;
  v5 = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  [v5 setLocalizedMessage:v4];
}

- (NSString)localizedMessage
{
  v2 = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  v3 = [v2 localizedMessage];

  return v3;
}

- (void)setLocalizedTitle:(id)a3
{
  v4 = a3;
  v5 = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  [v5 setLocalizedTitle:v4];
}

- (NSString)localizedTitle
{
  v2 = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  v3 = [v2 localizedTitle];

  return v3;
}

- (void)addAction:(id)a3
{
  v16 = a3;
  v4 = [v16 type];
  v5 = [v16 event];

  if (v5)
  {
    v6 = MEMORY[0x1E69B0AF8];
    v7 = [v16 event];
    v8 = [v7 command];
    v9 = [v8 mediaRemoteCommandType];
    v10 = [v16 event];
    v11 = [v10 mediaRemoteOptions];
    v5 = [v6 eventWithCommand:v9 options:v11];
  }

  if (v4 != 2)
  {
    v4 = v4 == 1;
  }

  v12 = MEMORY[0x1E69B0AF0];
  v13 = [v16 title];
  v14 = [v12 actionWithTitle:v13 type:v4 commandEvent:v5];

  v15 = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  [v15 addAction:v14];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(MPRemoteCommandHandlerDialog *)self mediaRemoteType];
  v5 = [v4 copyWithZone:a3];

  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithMediaRemoteType:", v5}];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MPRemoteCommandHandlerDialog *)self localizedTitle];
  v6 = [(MPRemoteCommandHandlerDialog *)self localizedMessage];
  v7 = [(MPRemoteCommandHandlerDialog *)self actions];
  v8 = [v3 stringWithFormat:@"<%@: %p title=%@ message=%@ actions=%@>", v4, self, v5, v6, v7];

  return v8;
}

- (MPRemoteCommandHandlerDialog)initWithMediaRemoteType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPRemoteCommandHandlerDialog;
  v6 = [(MPRemoteCommandHandlerDialog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteType, a3);
  }

  return v7;
}

+ (id)dialogWithTitle:(id)a3 message:(id)a4
{
  v5 = [MEMORY[0x1E69B0AE8] dialogWithTitle:a3 message:a4];
  v6 = [[a1 alloc] initWithMediaRemoteType:v5];

  return v6;
}

@end