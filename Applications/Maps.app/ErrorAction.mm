@interface ErrorAction
- (ErrorAction)initWithTitle:(id)title message:(id)message options:(id)options;
@end

@implementation ErrorAction

- (ErrorAction)initWithTitle:(id)title message:(id)message options:(id)options
{
  titleCopy = title;
  messageCopy = message;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = ErrorAction;
  v11 = [(ErrorAction *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [messageCopy copy];
    message = v11->_message;
    v11->_message = v14;

    objc_storeStrong(&v11->_options, options);
  }

  return v11;
}

@end