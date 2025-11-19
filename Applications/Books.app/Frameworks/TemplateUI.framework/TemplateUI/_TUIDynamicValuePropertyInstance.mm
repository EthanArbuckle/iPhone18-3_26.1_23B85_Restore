@interface _TUIDynamicValuePropertyInstance
- (_TUIDynamicValuePropertyInstance)initWithDynamicValue:(id)a3 observer:(id)a4;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
- (void)valueWithBlock:(id)a3;
@end

@implementation _TUIDynamicValuePropertyInstance

- (_TUIDynamicValuePropertyInstance)initWithDynamicValue:(id)a3 observer:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _TUIDynamicValuePropertyInstance;
  v7 = [(_TUIDynamicValueInstance *)&v12 initWithDynamicValue:v6 value:0 observer:a4];
  if (v7)
  {
    v8 = [v6 upstreamValue];
    v9 = [v8 instanceForObserver:v7];
    instance = v7->_instance;
    v7->_instance = v9;
  }

  return v7;
}

- (void)valueWithBlock:(id)a3
{
  v4 = a3;
  instance = self->_instance;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_13F8CC;
  v7[3] = &unk_2627F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(_TUIDynamicValueInstance *)instance valueWithBlock:v7];
}

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  v5 = a4;
  v6 = [(_TUIDynamicValueInstance *)self observer];
  [v6 dynamicChanged:self transaction:v5];
}

@end