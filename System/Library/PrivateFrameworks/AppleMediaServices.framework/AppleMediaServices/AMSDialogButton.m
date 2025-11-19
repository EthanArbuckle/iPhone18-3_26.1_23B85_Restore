@interface AMSDialogButton
+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
- (AMSDialogButton)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
@end

@implementation AMSDialogButton

- (AMSDialogButton)initWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = AMSDialogButton;
  v10 = [(AMSDialogButton *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_title, a3);
    v12 = _Block_copy(v9);
    handler = v11->_handler;
    v11->_handler = v12;

    v11->_style = 0;
  }

  return v11;
}

+ (id)buttonWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[AMSDialogButton alloc] initWithTitle:v8 style:a4 handler:v7];

  return v9;
}

@end