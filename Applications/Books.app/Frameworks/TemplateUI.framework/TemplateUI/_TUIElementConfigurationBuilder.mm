@interface _TUIElementConfigurationBuilder
- (id)finalizeConfiguration;
- (void)addConfigurationData:(id)a3 withKey:(id)a4;
@end

@implementation _TUIElementConfigurationBuilder

- (void)addConfigurationData:(id)a3 withKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  data = self->_data;
  if (!data)
  {
    v8 = objc_opt_new();
    v9 = self->_data;
    self->_data = v8;

    data = self->_data;
  }

  [(NSMutableDictionary *)data setObject:v10 forKeyedSubscript:v6];
}

- (id)finalizeConfiguration
{
  v2 = [(NSMutableDictionary *)self->_data copy];

  return v2;
}

@end