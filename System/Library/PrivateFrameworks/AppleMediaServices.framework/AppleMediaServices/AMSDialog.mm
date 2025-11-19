@interface AMSDialog
+ (id)dialogWithTitle:(id)a3 message:(id)a4 style:(int64_t)a5;
- (AMSDialog)initWithTitle:(id)a3 message:(id)a4 style:(int64_t)a5;
- (void)addButton:(id)a3;
- (void)addTextField:(id)a3;
@end

@implementation AMSDialog

- (AMSDialog)initWithTitle:(id)a3 message:(id)a4 style:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = AMSDialog;
  v11 = [(AMSDialog *)&v15 init];
  if (v11)
  {
    v12 = dispatch_queue_create("com.apple.AMSDialog.systemDialogs", 0);
    systemDialogQueue = v11->_systemDialogQueue;
    v11->_systemDialogQueue = v12;

    objc_storeStrong(&v11->_title, a3);
    objc_storeStrong(&v11->_message, a4);
    v11->_style = a5;
  }

  return v11;
}

+ (id)dialogWithTitle:(id)a3 message:(id)a4 style:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[AMSDialog alloc] initWithTitle:v8 message:v7 style:a5];

  return v9;
}

- (void)addButton:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialog *)self buttons];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = v8;

  [v9 addObject:v4];
  [(AMSDialog *)self setButtons:v9];
}

- (void)addTextField:(id)a3
{
  v4 = a3;
  v5 = [(AMSDialog *)self textFields];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v9 = v8;

  [v9 addObject:v4];
  [(AMSDialog *)self setTextFields:v9];
}

@end