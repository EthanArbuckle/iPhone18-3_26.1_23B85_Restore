@interface UNLocalizedString
+ (id)localizedStringForKey:(id)key arguments:(id)arguments value:(id)value;
- (BOOL)isEqual:(id)equal;
- (UNLocalizedString)init;
- (UNLocalizedString)initWithCoder:(id)coder;
- (id)_initWithKey:(id)key arguments:(id)arguments value:(id)value;
- (id)debugDescription;
- (id)description;
- (id)un_localizedStringArguments;
- (id)un_localizedStringKey;
- (id)un_localizedStringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNLocalizedString

+ (id)localizedStringForKey:(id)key arguments:(id)arguments value:(id)value
{
  argumentsCopy = arguments;
  valueCopy = value;
  keyCopy = key;
  v11 = objc_opt_class();
  v12 = UNSafeCast(v11, keyCopy);

  v13 = objc_opt_class();
  v14 = UNSafeCast(v13, valueCopy);

  if ([v12 length])
  {
    if (![v14 length])
    {
      v15 = v12;

      v14 = v15;
    }

    v16 = objc_opt_class();
    v17 = UNSafeCast(v16, argumentsCopy);
    v18 = [[self alloc] _initWithKey:v12 arguments:v17 value:v14];
  }

  else
  {
    v18 = [v14 copy];
  }

  return v18;
}

- (UNLocalizedString)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UNLocalizedString.m" lineNumber:33 description:@"use +_initWithValue: or +localizedStringWithKey:arguments:"];

  return 0;
}

- (id)_initWithKey:(id)key arguments:(id)arguments value:(id)value
{
  keyCopy = key;
  argumentsCopy = arguments;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = UNLocalizedString;
  v11 = [(UNLocalizedString *)&v19 init];
  if (v11)
  {
    v12 = [keyCopy copy];
    key = v11->_key;
    v11->_key = v12;

    v14 = [argumentsCopy copy];
    arguments = v11->_arguments;
    v11->_arguments = v14;

    v16 = [valueCopy copy];
    value = v11->_value;
    v11->_value = v16;
  }

  return v11;
}

- (unint64_t)hash
{
  arguments = [(UNLocalizedString *)self arguments];
  v4 = [arguments hash];
  v5 = [(UNLocalizedString *)self key];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    arguments = [(UNLocalizedString *)self arguments];
    arguments2 = [equalCopy arguments];
    if (UNEqualObjects(arguments, arguments2))
    {
      v7 = [(UNLocalizedString *)self key];
      v8 = [equalCopy key];
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
  value = [(UNLocalizedString *)self value];
  v6 = [(UNLocalizedString *)self key];
  arguments = [(UNLocalizedString *)self arguments];
  v8 = [v3 stringWithFormat:@"<%@: %p value: %@, key: %@: arguments: %@>", v4, self, value, v6, arguments];;

  return v8;
}

- (id)description
{
  v2 = [(NSString *)self->_value copy];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = UNLocalizedString;
  coderCopy = coder;
  [(UNLocalizedString *)&v8 encodeWithCoder:coderCopy];
  v5 = [(UNLocalizedString *)self arguments:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"arguments"];

  v6 = [(UNLocalizedString *)self key];
  [coderCopy encodeObject:v6 forKey:@"key"];

  value = [(UNLocalizedString *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (UNLocalizedString)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"arguments"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

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