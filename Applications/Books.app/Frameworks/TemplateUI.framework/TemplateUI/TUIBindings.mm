@interface TUIBindings
- (TUIBindings)initWithData:(id)data;
- (id)dataForKey:(id)key;
@end

@implementation TUIBindings

- (TUIBindings)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = TUIBindings;
  v6 = [(TUIBindings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v5 = [(NSDictionary *)self->_data objectForKey:keyCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end