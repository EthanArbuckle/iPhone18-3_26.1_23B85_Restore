@interface JSAProfileBagKeyEntry
- (JSAProfileBagKeyEntry)initWithKey:(id)key valueType:(unint64_t)type;
- (JSAProfileBagKeyEntry)initWithKeyValue:(id)value valueTypeValue:(id)typeValue;
- (id)description;
@end

@implementation JSAProfileBagKeyEntry

- (JSAProfileBagKeyEntry)initWithKey:(id)key valueType:(unint64_t)type
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = JSAProfileBagKeyEntry;
  v7 = [(JSAProfileBagKeyEntry *)&v11 init];
  if (v7)
  {
    v8 = [keyCopy copy];
    key = v7->_key;
    v7->_key = v8;

    v7->_valueType = type;
  }

  return v7;
}

- (JSAProfileBagKeyEntry)initWithKeyValue:(id)value valueTypeValue:(id)typeValue
{
  valueCopy = value;
  typeValueCopy = typeValue;
  if ([valueCopy isString])
  {
    toString = [valueCopy toString];
  }

  else
  {
    toString = 0;
  }

  if ([typeValueCopy isString])
  {
    toString2 = [typeValueCopy toString];
  }

  else
  {
    toString2 = 0;
  }

  if ([toString2 isEqualToString:@"Array"])
  {
    v10 = 0;
  }

  else if ([toString2 isEqualToString:@"Bool"])
  {
    v10 = 1;
  }

  else if ([toString2 isEqualToString:@"Dictionary"])
  {
    v10 = 6;
  }

  else if ([toString2 isEqualToString:@"Double"])
  {
    v10 = 2;
  }

  else if ([toString2 isEqualToString:@"Integer"])
  {
    v10 = 3;
  }

  else if ([toString2 isEqualToString:@"URL"])
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  v11 = [(JSAProfileBagKeyEntry *)self initWithKey:toString valueType:v10];

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(JSAProfileBagKeyEntry *)self key];
  [(JSAProfileBagKeyEntry *)self valueType];
  v6 = NSStringFromBagValueType();
  v7 = [NSString stringWithFormat:@"<%@ %p key=%@ valueType=%@>", v4, self, v5, v6];

  return v7;
}

@end