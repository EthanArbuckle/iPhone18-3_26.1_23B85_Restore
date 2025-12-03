@interface AMSDialogButton
+ (id)buttonWithTitle:(id)title style:(int64_t)style handler:(id)handler;
- (AMSDialogButton)initWithTitle:(id)title style:(int64_t)style handler:(id)handler;
@end

@implementation AMSDialogButton

- (AMSDialogButton)initWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = AMSDialogButton;
  v10 = [(AMSDialogButton *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_title, title);
    v12 = _Block_copy(handlerCopy);
    handler = v11->_handler;
    v11->_handler = v12;

    v11->_style = 0;
  }

  return v11;
}

+ (id)buttonWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  v9 = [[AMSDialogButton alloc] initWithTitle:titleCopy style:style handler:handlerCopy];

  return v9;
}

@end