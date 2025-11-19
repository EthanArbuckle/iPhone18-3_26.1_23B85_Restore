@interface STKStickerPickerSceneClientToHostAction
+ (id)actionForStickerPickerSceneDidRequestDismissal;
- (void)performActionForSceneController:(id)a3;
@end

@implementation STKStickerPickerSceneClientToHostAction

+ (id)actionForStickerPickerSceneDidRequestDismissal
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F0DFA2F0 forSetting:0];
  v4 = [[a1 alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = [(STKStickerPickerSceneClientToHostAction *)self info];
  v6 = [v5 objectForSetting:0];
  v7 = [v6 integerValue];

  v8 = [v4 delegate];

  if (!v7)
  {
    [v8 stickerPickerSceneDidRequestDismissal];
  }
}

@end