@interface RSHostingActionClientToHost
+ (id)actionForNewSize:(CGSize)size;
- (void)performActionForSceneController:(id)controller;
@end

@implementation RSHostingActionClientToHost

+ (id)actionForNewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setObject:&unk_1EFF128F0 forSetting:0];
  v7 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  [v6 setObject:v7 forSetting:1];

  v8 = [[self alloc] initWithInfo:v6 responder:0];

  return v8;
}

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  info = [(RSHostingActionClientToHost *)self info];
  v5 = [info objectForSetting:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [controllerCopy delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 integerValue])
    {
      info2 = [(RSHostingActionClientToHost *)self info];
      v8 = [info2 objectForSetting:1];

      [v8 CGSizeValue];
      [delegate didSizeChange:?];
    }
  }
}

@end