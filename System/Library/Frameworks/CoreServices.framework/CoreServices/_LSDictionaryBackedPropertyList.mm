@interface _LSDictionaryBackedPropertyList
- (BOOL)_getPropertyList:(id *)list;
- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key;
- (_LSDictionaryBackedPropertyList)initWithCoder:(id)coder;
- (_LSDictionaryBackedPropertyList)initWithPropertyList:(id)list;
@end

@implementation _LSDictionaryBackedPropertyList

- (_LSDictionaryBackedPropertyList)initWithPropertyList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = _LSDictionaryBackedPropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 init];
  if (v5)
  {
    v6 = [listCopy copy];
    plist = v5->_plist;
    v5->_plist = v6;
  }

  return v5;
}

- (BOOL)_getPropertyList:(id *)list
{
  v4 = self->_plist;
  *list = v4;
  return v4 != 0;
}

- (BOOL)_getValue:(id *)value forPropertyListKey:(id)key
{
  v5 = [(NSDictionary *)self->_plist objectForKeyedSubscript:key];
  *value = v5;
  return v5 != 0;
}

- (_LSDictionaryBackedPropertyList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = XNSGetPropertyListClasses();
  v7 = [coderCopy ls_decodeDictionaryWithKeysOfClass:v5 valuesOfClasses:v6 forKey:@"plist"];

  v8 = [(_LSDictionaryBackedPropertyList *)self initWithPropertyList:v7];
  return v8;
}

@end