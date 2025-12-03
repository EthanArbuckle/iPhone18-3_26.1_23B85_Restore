@interface TIKeyboardListControllerTable
- (void)addEditingChangeHandler:(id)handler;
- (void)dealloc;
@end

@implementation TIKeyboardListControllerTable

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIKeyboardListControllerTable;
  [(TIKeyboardListControllerTable *)&v3 dealloc];
}

- (void)addEditingChangeHandler:(id)handler
{
  if (!self->_todoList)
  {
    self->_todoList = +[NSMutableArray array];
  }

  v5 = [handler copy];
  [(NSMutableArray *)self->_todoList addObject:v5];
}

@end