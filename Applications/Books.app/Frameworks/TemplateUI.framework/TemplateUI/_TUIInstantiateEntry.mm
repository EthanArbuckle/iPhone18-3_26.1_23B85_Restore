@interface _TUIInstantiateEntry
- (_TUIInstantiateEntry)initWithTemplate:(id)template bindings:(id)bindings actionObject:(id)object;
@end

@implementation _TUIInstantiateEntry

- (_TUIInstantiateEntry)initWithTemplate:(id)template bindings:(id)bindings actionObject:(id)object
{
  templateCopy = template;
  bindingsCopy = bindings;
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = _TUIInstantiateEntry;
  v12 = [(_TUIInstantiateEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_aTemplate, template);
    objc_storeStrong(&v13->_bindings, bindings);
    objc_storeStrong(&v13->_actionObject, object);
  }

  return v13;
}

@end