@interface _TUIInstantiateEntry
- (_TUIInstantiateEntry)initWithTemplate:(id)a3 bindings:(id)a4 actionObject:(id)a5;
@end

@implementation _TUIInstantiateEntry

- (_TUIInstantiateEntry)initWithTemplate:(id)a3 bindings:(id)a4 actionObject:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _TUIInstantiateEntry;
  v12 = [(_TUIInstantiateEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aTemplate, a3);
    objc_storeStrong(&v13->_bindings, a4);
    objc_storeStrong(&v13->_actionObject, a5);
  }

  return v13;
}

@end