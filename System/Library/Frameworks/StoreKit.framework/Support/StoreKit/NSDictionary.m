@interface NSDictionary
- (BOOL)tcr_BOOLForKey:(id)a3 missingValue:(BOOL)a4;
- (BOOL)tcr_BOOLForKeyPath:(id)a3 missingValue:(BOOL)a4;
- (BOOL)tcr_nullForKey:(id)a3;
- (BOOL)tcr_nullForKeyPath:(id)a3;
- (float)tcr_floatForKey:(id)a3;
- (id)_tcr_associatedReader;
- (id)_tcr_valueOfClass:(Class)a3 forKey:(id)a4;
- (id)tcr_arrayForKey:(id)a3;
- (id)tcr_arrayForKeyPath:(id)a3;
- (id)tcr_dataForKey:(id)a3;
- (id)tcr_dataForKeyPath:(id)a3;
- (id)tcr_dateForKey:(id)a3;
- (id)tcr_dateForKeyPath:(id)a3;
- (id)tcr_dictionaryForKey:(id)a3;
- (id)tcr_dictionaryForKeyPath:(id)a3;
- (id)tcr_integerValueForKey:(id)a3;
- (id)tcr_integerValueForKeyPath:(id)a3;
- (id)tcr_numberForKey:(id)a3;
- (id)tcr_numberForKeyPath:(id)a3;
- (id)tcr_stringForKey:(id)a3;
- (id)tcr_stringForKeyPath:(id)a3;
- (id)tcr_urlForKey:(id)a3;
- (id)tcr_urlForKeyPath:(id)a3;
- (int64_t)tcr_integerValueForKey:(id)a3 missingValue:(int64_t)a4;
- (int64_t)tcr_integerValueForKeyPath:(id)a3 missingValue:(int64_t)a4;
- (unint64_t)tcr_unsignedLongLongForKey:(id)a3;
- (unint64_t)tcr_unsignedLongLongForKeyPath:(id)a3;
@end

@implementation NSDictionary

- (id)tcr_arrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)tcr_arrayForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];

  return v6;
}

- (BOOL)tcr_BOOLForKey:(id)a3 missingValue:(BOOL)a4
{
  v5 = [(NSDictionary *)self tcr_numberForKey:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (BOOL)tcr_BOOLForKeyPath:(id)a3 missingValue:(BOOL)a4
{
  v5 = [(NSDictionary *)self tcr_numberForKeyPath:a3];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)tcr_dataForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];
  if (!v5)
  {
    v6 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];
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

- (id)tcr_dataForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];
  if (!v6)
  {
    v7 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];
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

- (id)tcr_dateForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)tcr_dateForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];

  return v6;
}

- (id)tcr_dictionaryForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)tcr_dictionaryForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];

  return v6;
}

- (float)tcr_floatForKey:(id)a3
{
  v3 = [(NSDictionary *)self tcr_numberForKey:a3];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (id)tcr_integerValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];
  if (!v5)
  {
    v6 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];
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

- (int64_t)tcr_integerValueForKey:(id)a3 missingValue:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v6];
  if (!v7)
  {
    v7 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    a4 = [v7 integerValue];
  }

  return a4;
}

- (id)tcr_integerValueForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];
  if (!v6)
  {
    v7 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];
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

- (int64_t)tcr_integerValueForKeyPath:(id)a3 missingValue:(int64_t)a4
{
  v6 = a3;
  v7 = [(NSDictionary *)self _tcr_associatedReader];
  v8 = [v7 valueOfClass:objc_opt_class() forKeyPath:v6];
  if (!v8)
  {
    v8 = [v7 valueOfClass:objc_opt_class() forKeyPath:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    a4 = [v8 integerValue];
  }

  return a4;
}

- (BOOL)tcr_nullForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];

  v6 = +[NSNull null];
  v7 = v5 == v6;

  return v7;
}

- (BOOL)tcr_nullForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];

  v7 = +[NSNull null];
  LOBYTE(v4) = v6 == v7;

  return v4;
}

- (id)tcr_numberForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];
  if (!v5)
  {
    v6 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];
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

- (id)tcr_numberForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];
  if (!v6)
  {
    v7 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];
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

- (id)tcr_stringForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_valueOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)tcr_stringForKeyPath:(id)a3
{
  v4 = a3;
  v5 = [(NSDictionary *)self _tcr_associatedReader];
  v6 = [v5 valueOfClass:objc_opt_class() forKeyPath:v4];

  return v6;
}

- (unint64_t)tcr_unsignedLongLongForKey:(id)a3
{
  v3 = [(NSDictionary *)self tcr_numberForKey:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (unint64_t)tcr_unsignedLongLongForKeyPath:(id)a3
{
  v3 = [(NSDictionary *)self tcr_numberForKeyPath:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (id)tcr_urlForKey:(id)a3
{
  v3 = [(NSDictionary *)self tcr_stringForKey:a3];
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

- (id)tcr_urlForKeyPath:(id)a3
{
  v3 = [(NSDictionary *)self tcr_stringForKeyPath:a3];
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

- (id)_tcr_valueOfClass:(Class)a3 forKey:(id)a4
{
  v4 = [(NSDictionary *)self objectForKeyedSubscript:a4];
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
  v3 = [(NSDictionary *)&v6 _tcr_associatedReader];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [[TypeCheckedDictionaryReader alloc] initWithDictionary:self];

    [(NSDictionary *)self _tcr_associateWithReader:v4];
    v3 = v4;
  }

  return v3;
}

@end