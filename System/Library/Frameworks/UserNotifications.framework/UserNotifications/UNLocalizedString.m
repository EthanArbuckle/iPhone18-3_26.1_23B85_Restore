@interface UNLocalizedString
+ (id)localizedStringForKey:(id)a3 arguments:(id)a4 value:(id)a5;
- (BOOL)isEqual:(id)a3;
- (UNLocalizedString)init;
- (UNLocalizedString)initWithCoder:(id)a3;
- (id)_initWithKey:(id)a3 arguments:(id)a4 value:(id)a5;
- (id)debugDescription;
- (id)description;
- (id)un_localizedStringArguments;
- (id)un_localizedStringKey;
- (id)un_localizedStringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNLocalizedString

+ (id)localizedStringForKey:(id)a3 arguments:(id)a4 value:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = UNSafeCast(v11, v10);

  v13 = objc_opt_class();
  v14 = UNSafeCast(v13, v9);

  if ([v12 length])
  {
    if (![v14 length])
    {
      v15 = v12;

      v14 = v15;
    }

    v16 = objc_opt_class();
    v17 = UNSafeCast(v16, v8);
    v18 = [[a1 alloc] _initWithKey:v12 arguments:v17 value:v14];
  }

  else
  {
    v18 = [v14 copy];
  }

  return v18;
}

- (UNLocalizedString)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UNLocalizedString.m" lineNumber:33 description:@"use +_initWithValue: or +localizedStringWithKey:arguments:"];

  return 0;
}

- (id)_initWithKey:(id)a3 arguments:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UNLocalizedString;
  v11 = [(UNLocalizedString *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    key = v11->_key;
    v11->_key = v12;

    v14 = [v9 copy];
    arguments = v11->_arguments;
    v11->_arguments = v14;

    v16 = [v10 copy];
    value = v11->_value;
    v11->_value = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(UNLocalizedString *)self arguments];
  v4 = [v3 hash];
  v5 = [(UNLocalizedString *)self key];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UNLocalizedString *)self arguments];
    v6 = [v4 arguments];
    if (UNEqualObjects(v5, v6))
    {
      v7 = [(UNLocalizedString *)self key];
      v8 = [v4 key];
      v9 = UNEqualObjects(v7, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UNLocalizedString *)self value];
  v6 = [(UNLocalizedString *)self key];
  v7 = [(UNLocalizedString *)self arguments];
  v8 = [v3 stringWithFormat:@"<%@: %p value: %@, key: %@: arguments: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (id)description
{
  v2 = [(NSString *)self->_value copy];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = UNLocalizedString;
  v4 = a3;
  [(UNLocalizedString *)&v8 encodeWithCoder:v4];
  v5 = [(UNLocalizedString *)self arguments:v8.receiver];
  [v4 encodeObject:v5 forKey:@"arguments"];

  v6 = [(UNLocalizedString *)self key];
  [v4 encodeObject:v6 forKey:@"key"];

  v7 = [(UNLocalizedString *)self value];
  [v4 encodeObject:v7 forKey:@"value"];
}

- (UNLocalizedString)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"arguments"];

  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v11 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v12 = [(UNLocalizedString *)self _initWithKey:v10 arguments:v9 value:v11];
  return v12;
}

- (id)un_localizedStringArguments
{
  v2 = [(NSArray *)self->_arguments copy];

  return v2;
}

- (id)un_localizedStringKey
{
  v2 = [(NSString *)self->_key copy];

  return v2;
}

- (id)un_localizedStringValue
{
  v2 = [(NSString *)self->_value copy];

  return v2;
}

@end