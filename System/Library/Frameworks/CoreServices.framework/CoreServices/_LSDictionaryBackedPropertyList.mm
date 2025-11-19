@interface _LSDictionaryBackedPropertyList
- (BOOL)_getPropertyList:(id *)a3;
- (BOOL)_getValue:(id *)a3 forPropertyListKey:(id)a4;
- (_LSDictionaryBackedPropertyList)initWithCoder:(id)a3;
- (_LSDictionaryBackedPropertyList)initWithPropertyList:(id)a3;
@end

@implementation _LSDictionaryBackedPropertyList

- (_LSDictionaryBackedPropertyList)initWithPropertyList:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _LSDictionaryBackedPropertyList;
  v5 = [(_LSLazyPropertyList *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    plist = v5->_plist;
    v5->_plist = v6;
  }

  return v5;
}

- (BOOL)_getPropertyList:(id *)a3
{
  v4 = self->_plist;
  *a3 = v4;
  return v4 != 0;
}

- (BOOL)_getValue:(id *)a3 forPropertyListKey:(id)a4
{
  v5 = [(NSDictionary *)self->_plist objectForKeyedSubscript:a4];
  *a3 = v5;
  return v5 != 0;
}

- (_LSDictionaryBackedPropertyList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = XNSGetPropertyListClasses();
  v7 = [v4 ls_decodeDictionaryWithKeysOfClass:v5 valuesOfClasses:v6 forKey:@"plist"];

  v8 = [(_LSDictionaryBackedPropertyList *)self initWithPropertyList:v7];
  return v8;
}

@end