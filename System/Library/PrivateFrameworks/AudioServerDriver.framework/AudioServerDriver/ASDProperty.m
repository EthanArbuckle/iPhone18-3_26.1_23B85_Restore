@interface ASDProperty
- (ASDProperty)initWithAddress:(id)a3 value:(id)a4;
- (ASDProperty)initWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation ASDProperty

- (ASDProperty)initWithAddress:(id)a3 value:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ASDProperty;
  v9 = [(ASDProperty *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_address, a3);
    objc_storeStrong(&v10->_value, a4);
  }

  return v10;
}

- (ASDProperty)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Address"];
  v6 = [v4 objectForKeyedSubscript:@"Value"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[ASDPropertyAddress alloc] initWithDictionary:v5];
    v8 = [(ASDProperty *)self initWithAddress:v7 value:v6];
    self = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ASDProperty *)self address];
  v6 = [(ASDProperty *)self value];
  v7 = [v4 initWithAddress:v5 value:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ASDProperty *)v5 address];
      v7 = [(ASDProperty *)self address];
      if ([v6 isEqual:v7])
      {
        v8 = [(ASDProperty *)v5 value];
        v9 = [(ASDProperty *)self value];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ASDProperty *)self address];
  v4 = [v3 hash];
  v5 = [(ASDProperty *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end