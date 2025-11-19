@interface RSHostingActionClientToHost
+ (id)actionForNewSize:(CGSize)a3;
- (void)performActionForSceneController:(id)a3;
@end

@implementation RSHostingActionClientToHost

+ (id)actionForNewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v6 setObject:&unk_1EFF128F0 forSetting:0];
  v7 = [MEMORY[0x1E696B098] valueWithCGSize:{width, height}];
  [v6 setObject:v7 forSetting:1];

  v8 = [[a1 alloc] initWithInfo:v6 responder:0];

  return v8;
}

- (void)performActionForSceneController:(id)a3
{
  v9 = a3;
  v4 = [(RSHostingActionClientToHost *)self info];
  v5 = [v4 objectForSetting:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ![v5 integerValue])
    {
      v7 = [(RSHostingActionClientToHost *)self info];
      v8 = [v7 objectForSetting:1];

      [v8 CGSizeValue];
      [v6 didSizeChange:?];
    }
  }
}

@end