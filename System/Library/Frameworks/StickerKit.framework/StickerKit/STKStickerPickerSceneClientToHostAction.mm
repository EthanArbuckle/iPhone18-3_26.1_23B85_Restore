@interface STKStickerPickerSceneClientToHostAction
+ (id)actionForStickerPickerSceneDidRequestDismissal;
- (void)performActionForSceneController:(id)controller;
@end

@implementation STKStickerPickerSceneClientToHostAction

+ (id)actionForStickerPickerSceneDidRequestDismissal
{
  v3 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v3 setObject:&unk_1F0DFA2F0 forSetting:0];
  v4 = [[self alloc] initWithInfo:v3 responder:0];

  return v4;
}

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  info = [(STKStickerPickerSceneClientToHostAction *)self info];
  v6 = [info objectForSetting:0];
  integerValue = [v6 integerValue];

  delegate = [controllerCopy delegate];

  if (!integerValue)
  {
    [delegate stickerPickerSceneDidRequestDismissal];
  }
}

@end