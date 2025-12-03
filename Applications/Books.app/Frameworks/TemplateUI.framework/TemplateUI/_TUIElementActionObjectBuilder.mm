@interface _TUIElementActionObjectBuilder
- (void)setActionData:(id)data forKey:(id)key;
@end

@implementation _TUIElementActionObjectBuilder

- (void)setActionData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  arguments = self->_arguments;
  if (!arguments)
  {
    v8 = objc_opt_new();
    v9 = self->_arguments;
    self->_arguments = v8;

    arguments = self->_arguments;
  }

  [(NSMutableDictionary *)arguments setObject:dataCopy forKeyedSubscript:keyCopy];
}

@end