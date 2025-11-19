@interface TUIBindings
- (TUIBindings)initWithData:(id)a3;
- (id)dataForKey:(id)a3;
@end

@implementation TUIBindings

- (TUIBindings)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIBindings;
  v6 = [(TUIBindings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSDictionary *)self->_data objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end