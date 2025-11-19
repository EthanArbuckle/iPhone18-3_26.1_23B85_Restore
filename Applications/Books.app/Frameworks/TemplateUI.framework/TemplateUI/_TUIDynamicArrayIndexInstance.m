@interface _TUIDynamicArrayIndexInstance
- (_TUIDynamicArrayIndexInstance)initWithDynamicValue:(id)a3 observer:(id)a4;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
- (void)valueWithBlock:(id)a3;
@end

@implementation _TUIDynamicArrayIndexInstance

- (_TUIDynamicArrayIndexInstance)initWithDynamicValue:(id)a3 observer:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _TUIDynamicArrayIndexInstance;
  v7 = [(_TUIDynamicValueInstance *)&v12 initWithDynamicValue:v6 value:0 observer:a4];
  if (v7)
  {
    v8 = [v6 subarray];
    v9 = [v8 instanceForObserver:v7];
    instance = v7->_instance;
    v7->_instance = v9;
  }

  return v7;
}

- (void)valueWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(_TUIDynamicArrayInstance *)self->_instance count])
    {
      instance = self->_instance;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_C6EAC;
      v6[3] = &unk_261398;
      v7 = v4;
      [(_TUIDynamicArrayInstance *)instance objectsInRange:0 block:1, v6];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }
}

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  v5 = a4;
  v6 = [(_TUIDynamicValueInstance *)self observer];
  [v6 dynamicChanged:self transaction:v5];
}

@end