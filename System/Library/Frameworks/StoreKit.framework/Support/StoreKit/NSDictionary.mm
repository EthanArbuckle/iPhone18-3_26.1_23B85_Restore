@interface NSDictionary
- (BOOL)tcr_BOOLForKey:(id)key missingValue:(BOOL)value;
- (BOOL)tcr_BOOLForKeyPath:(id)path missingValue:(BOOL)value;
- (BOOL)tcr_nullForKey:(id)key;
- (BOOL)tcr_nullForKeyPath:(id)path;
- (float)tcr_floatForKey:(id)key;
- (id)_tcr_associatedReader;
- (id)_tcr_valueOfClass:(Class)class forKey:(id)key;
- (id)tcr_arrayForKey:(id)key;
- (id)tcr_arrayForKeyPath:(id)path;
- (id)tcr_dataForKey:(id)key;
- (id)tcr_dataForKeyPath:(id)path;
- (id)tcr_dateForKey:(id)key;
- (id)tcr_dateForKeyPath:(id)path;
- (id)tcr_dictionaryForKey:(id)key;
- (id)tcr_dictionaryForKeyPath:(id)path;
- (id)tcr_integerValueForKey:(id)key;
- (id)tcr_integerValueForKeyPath:(id)path;
- (id)tcr_numberForKey:(id)key;
- (id)tcr_numberForKeyPath:(id)path;
- (id)tcr_stringForKey:(id)key;
- (id)tcr_stringForKeyPath:(id)path;
- (id)tcr_urlForKey:(id)key;
- (id)tcr_urlForKeyPath:(id)path;
- (int64_t)tcr_integerValueForKey:(id)key missingValue:(int64_t)value;
- (int64_t)tcr_integerValueForKeyPath:(id)path missingValue:(int64_t)value;
- (unint64_t)tcr_unsignedLongLongForKey:(id)key;
- (unint64_t)tcr_unsignedLongLongForKeyPath:(id)path;
@end

@implementation NSDictionary

- (id)tcr_arrayForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];

  return v5;
}

- (id)tcr_arrayForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];

  return v6;
}

- (BOOL)tcr_BOOLForKey:(id)key missingValue:(BOOL)value
{
  v5 = [(NSDictionary *)self tcr_numberForKey:key];
  v6 = v5;
  if (v5)
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (BOOL)tcr_BOOLForKeyPath:(id)path missingValue:(BOOL)value
{
  v5 = [(NSDictionary *)self tcr_numberForKeyPath:path];
  v6 = v5;
  if (v5)
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (id)tcr_dataForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
  if (!v5)
  {
    v6 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
    if (v6)
    {
      v5 = [[NSData alloc] initWithBase64EncodedString:v6 options:0];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)tcr_dataForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
  if (!v6)
  {
    v7 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
    if (v7)
    {
      v6 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)tcr_dateForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];

  return v5;
}

- (id)tcr_dateForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];

  return v6;
}

- (id)tcr_dictionaryForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];

  return v5;
}

- (id)tcr_dictionaryForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];

  return v6;
}

- (float)tcr_floatForKey:(id)key
{
  v3 = [(NSDictionary *)self tcr_numberForKey:key];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (id)tcr_integerValueForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
  if (!v5)
  {
    v6 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
    if (v6)
    {
      v9 = 0;
      v7 = [NSScanner scannerWithString:v6];
      v5 = 0;
      if ([v7 scanInteger:&v9])
      {
        v5 = [NSNumber numberWithInteger:v9];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)tcr_integerValueForKey:(id)key missingValue:(int64_t)value
{
  keyCopy = key;
  v7 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
  if (!v7)
  {
    v7 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    value = [v7 integerValue];
  }

  return value;
}

- (id)tcr_integerValueForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
  if (!v6)
  {
    v7 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
    if (v7)
    {
      v10 = 0;
      v8 = [NSScanner scannerWithString:v7];
      v6 = 0;
      if ([v8 scanInteger:&v10])
      {
        v6 = [NSNumber numberWithInteger:v10];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (int64_t)tcr_integerValueForKeyPath:(id)path missingValue:(int64_t)value
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v8 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
  if (!v8)
  {
    v8 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    value = [v8 integerValue];
  }

  return value;
}

- (BOOL)tcr_nullForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];

  v6 = +[NSNull null];
  v7 = v5 == v6;

  return v7;
}

- (BOOL)tcr_nullForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];

  v7 = +[NSNull null];
  LOBYTE(pathCopy) = v6 == v7;

  return pathCopy;
}

- (id)tcr_numberForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
  if (!v5)
  {
    v6 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];
    if (v6)
    {
      v7 = objc_alloc_init(NSNumberFormatter);
      [v7 setNumberStyle:1];
      v5 = [v7 numberFromString:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)tcr_numberForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
  if (!v6)
  {
    v7 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];
    if (v7)
    {
      v8 = objc_alloc_init(NSNumberFormatter);
      [v8 setNumberStyle:1];
      v6 = [v8 numberFromString:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)tcr_stringForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:keyCopy];

  return v5;
}

- (id)tcr_stringForKeyPath:(id)path
{
  pathCopy = path;
  _tcr_associatedReader = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [_tcr_associatedReader valueOfClass:objc_opt_class() forKeyPath:pathCopy];

  return v6;
}

- (unint64_t)tcr_unsignedLongLongForKey:(id)key
{
  v3 = [(NSDictionary *)self tcr_numberForKey:key];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)tcr_unsignedLongLongForKeyPath:(id)path
{
  v3 = [(NSDictionary *)self tcr_numberForKeyPath:path];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (id)tcr_urlForKey:(id)key
{
  v3 = [(NSDictionary *)self tcr_stringForKey:key];
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tcr_urlForKeyPath:(id)path
{
  v3 = [(NSDictionary *)self tcr_stringForKeyPath:path];
  if (v3)
  {
    v4 = [NSURL URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_tcr_valueOfClass:(Class)class forKey:(id)key
{
  v4 = [(NSDictionary *)self objectForKeyedSubscript:key];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_tcr_associatedReader
{
  v6.receiver = self;
  v6.super_class = NSDictionary;
  _tcr_associatedReader = [(NSDictionary *)&v6 _tcr_associatedReader];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [[TypeCheckedDictionaryReader alloc] initWithDictionary:self];

    [(NSDictionary *)self _tcr_associateWithReader:v4];
    _tcr_associatedReader = v4;
  }

  return _tcr_associatedReader;
}

@end