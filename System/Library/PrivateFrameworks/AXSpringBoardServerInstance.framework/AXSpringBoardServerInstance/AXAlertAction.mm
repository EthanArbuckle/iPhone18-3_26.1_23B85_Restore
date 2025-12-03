@interface AXAlertAction
+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
@end

@implementation AXAlertAction

+ (id)actionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___AXAlertAction;
  v6 = objc_msgSendSuper2(&v9, sel_actionWithTitle_style_handler_, title, style, handler);
  v7 = v6;
  if (style == 1)
  {
    [v6 setButtonIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v7;
}

@end