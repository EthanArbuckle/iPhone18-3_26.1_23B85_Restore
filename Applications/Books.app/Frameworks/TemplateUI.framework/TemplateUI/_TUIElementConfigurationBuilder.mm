@interface _TUIElementConfigurationBuilder
- (id)finalizeConfiguration;
- (void)addConfigurationData:(id)data withKey:(id)key;
@end

@implementation _TUIElementConfigurationBuilder

- (void)addConfigurationData:(id)data withKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  data = self->_data;
  if (!data)
  {
    v8 = objc_opt_new();
    v9 = self->_data;
    self->_data = v8;

    data = self->_data;
  }

  [(NSMutableDictionary *)data setObject:dataCopy forKeyedSubscript:keyCopy];
}

- (id)finalizeConfiguration
{
  v2 = [(NSMutableDictionary *)self->_data copy];

  return v2;
}

@end