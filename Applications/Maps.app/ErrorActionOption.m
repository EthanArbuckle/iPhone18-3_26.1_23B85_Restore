@interface ErrorActionOption
- (ErrorActionOption)initWithTitle:(id)a3 cancels:(BOOL)a4 handler:(id)a5;
@end

@implementation ErrorActionOption

- (ErrorActionOption)initWithTitle:(id)a3 cancels:(BOOL)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ErrorActionOption;
  v10 = [(ErrorActionOption *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_cancels = a4;
    v13 = [v9 copy];
    handler = v10->_handler;
    v10->_handler = v13;
  }

  return v10;
}

@end