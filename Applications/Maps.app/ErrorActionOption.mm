@interface ErrorActionOption
- (ErrorActionOption)initWithTitle:(id)title cancels:(BOOL)cancels handler:(id)handler;
@end

@implementation ErrorActionOption

- (ErrorActionOption)initWithTitle:(id)title cancels:(BOOL)cancels handler:(id)handler
{
  titleCopy = title;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = ErrorActionOption;
  v10 = [(ErrorActionOption *)&v16 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    v10->_cancels = cancels;
    v13 = [handlerCopy copy];
    handler = v10->_handler;
    v10->_handler = v13;
  }

  return v10;
}

@end