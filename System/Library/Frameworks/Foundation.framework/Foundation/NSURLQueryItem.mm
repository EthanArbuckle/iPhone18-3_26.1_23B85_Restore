@interface NSURLQueryItem
+ (NSURLQueryItem)allocWithZone:(_NSZone *)zone;
+ (NSURLQueryItem)queryItemWithName:(NSString *)name value:(NSString *)value;
+ (id)_queryItem;
+ (id)_queryItemWithName:(id)name value:(id)value;
- (BOOL)isEqual:(id)equal;
- (NSURLQueryItem)initWithCoder:(id)coder;
- (NSURLQueryItem)initWithName:(NSString *)name value:(NSString *)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSURLQueryItem

+ (id)_queryItemWithName:(id)name value:(id)value
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(name);
  v7 = v6;
  if (value)
  {
    v8 = v5;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(value);
    v5 = v8;
    value = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = specialized static NSURLQueryItem._queryItemWith(name:value:)(v5, v7, v9, value);

  return v11;
}

+ (id)_queryItem
{
  v2 = specialized static NSURLQueryItem._queryItem()();

  return v2;
}

+ (NSURLQueryItem)allocWithZone:(_NSZone *)zone
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSURLQueryItem == self)
  {
    return &___immutablePlaceholderURLQueryItem;
  }

  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSURLQueryItem;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, zone);
}

+ (NSURLQueryItem)queryItemWithName:(NSString *)name value:(NSString *)value
{
  v4 = [objc_allocWithZone(self) initWithName:name value:value];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    goto LABEL_11;
  }

  if (!equal || (objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  name = [(NSURLQueryItem *)self name];
  name2 = [equal name];
  if (name == name2 || (v7 = [(NSString *)name isEqual:name2]))
  {
    value = [(NSURLQueryItem *)self value];
    value2 = [equal value];
    if (value != value2)
    {

      LOBYTE(v7) = [(NSString *)value isEqual:value2];
      return v7;
    }

LABEL_11:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (NSURLQueryItem)initWithName:(NSString *)name value:(NSString *)value
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSURLQueryItem;
  v6 = [(NSURLQueryItem *)&v9 init];
  if (v6)
  {
    if (name)
    {
      v7 = name;
    }

    else
    {
      v7 = &stru_1EEEFDF90;
    }

    v6->_name = [(NSString *)v7 copy];
    v6->_value = [(NSString *)value copy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be encoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  [coder encodeObject:-[NSURLQueryItem name](self forKey:{"name"), @"NS.name"}];
  value = [(NSURLQueryItem *)self value];

  [coder encodeObject:value forKey:@"NS.value"];
}

- (NSURLQueryItem)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"%@ cannot be decoded by non-keyed archivers", objc_opt_class()];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.name"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.value"];
  if (v6 && (v8 = v7, _NSIsNSString()) && (!v8 || _NSIsNSString()))
  {
    v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.name"];
    v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.value"];

    return [(NSURLQueryItem *)self initWithName:v9 value:v10];
  }

  else
  {
    v12 = [NSError _readCorruptErrorWithFormat:@"%@: invalid archived object", _NSMethodExceptionProem(self, a2)];

    [coder failWithError:v12];
    return 0;
  }
}

@end