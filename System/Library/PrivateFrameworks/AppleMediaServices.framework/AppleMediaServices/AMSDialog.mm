@interface AMSDialog
+ (id)dialogWithTitle:(id)title message:(id)message style:(int64_t)style;
- (AMSDialog)initWithTitle:(id)title message:(id)message style:(int64_t)style;
- (void)addButton:(id)button;
- (void)addTextField:(id)field;
@end

@implementation AMSDialog

- (AMSDialog)initWithTitle:(id)title message:(id)message style:(int64_t)style
{
  titleCopy = title;
  messageCopy = message;
  v15.receiver = self;
  v15.super_class = AMSDialog;
  v11 = [(AMSDialog *)&v15 init];
  if (v11)
  {
    v12 = dispatch_queue_create("com.apple.AMSDialog.systemDialogs", 0);
    systemDialogQueue = v11->_systemDialogQueue;
    v11->_systemDialogQueue = v12;

    objc_storeStrong(&v11->_title, title);
    objc_storeStrong(&v11->_message, message);
    v11->_style = style;
  }

  return v11;
}

+ (id)dialogWithTitle:(id)title message:(id)message style:(int64_t)style
{
  messageCopy = message;
  titleCopy = title;
  v9 = [[AMSDialog alloc] initWithTitle:titleCopy message:messageCopy style:style];

  return v9;
}

- (void)addButton:(id)button
{
  buttonCopy = button;
  buttons = [(AMSDialog *)self buttons];
  v6 = [buttons mutableCopy];
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

  [v9 addObject:buttonCopy];
  [(AMSDialog *)self setButtons:v9];
}

- (void)addTextField:(id)field
{
  fieldCopy = field;
  textFields = [(AMSDialog *)self textFields];
  v6 = [textFields mutableCopy];
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

  [v9 addObject:fieldCopy];
  [(AMSDialog *)self setTextFields:v9];
}

@end