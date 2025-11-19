@interface _TUIElementAXActionsActionObjectBuilder
- (void)setActionData:(id)a3 forKey:(id)a4;
@end

@implementation _TUIElementAXActionsActionObjectBuilder

- (void)setActionData:(id)a3 forKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  arguments = self->_arguments;
  if (!arguments)
  {
    v8 = objc_opt_new();
    v9 = self->_arguments;
    self->_arguments = v8;

    arguments = self->_arguments;
  }

  [(NSMutableDictionary *)arguments setObject:v10 forKeyedSubscript:v6];
}

@end