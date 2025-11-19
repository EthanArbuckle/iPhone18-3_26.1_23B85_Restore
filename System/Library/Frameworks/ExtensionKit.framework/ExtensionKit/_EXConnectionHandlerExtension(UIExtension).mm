@interface _EXConnectionHandlerExtension(UIExtension)
- (void)prepareForSceneConnectionWithConfiguration:()UIExtension;
@end

@implementation _EXConnectionHandlerExtension(UIExtension)

- (void)prepareForSceneConnectionWithConfiguration:()UIExtension
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [v5 setSceneClass:objc_opt_class()];
  }

  v6.receiver = a1;
  v6.super_class = &off_1F4E16B40;
  objc_msgSendSuper2(&v6, sel_prepareForSceneConnectionWithConfiguration_, v4);
}

@end