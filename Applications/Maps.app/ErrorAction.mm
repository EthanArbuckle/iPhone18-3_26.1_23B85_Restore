@interface ErrorAction
- (ErrorAction)initWithTitle:(id)a3 message:(id)a4 options:(id)a5;
@end

@implementation ErrorAction

- (ErrorAction)initWithTitle:(id)a3 message:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ErrorAction;
  v11 = [(ErrorAction *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    title = v11->_title;
    v11->_title = v12;

    v14 = [v9 copy];
    message = v11->_message;
    v11->_message = v14;

    objc_storeStrong(&v11->_options, a5);
  }

  return v11;
}

@end