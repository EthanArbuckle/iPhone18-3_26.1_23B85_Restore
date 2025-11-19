@interface NSURLQueryItem
+ (NSURLQueryItem)allocWithZone:(_NSZone *)a3;
+ (NSURLQueryItem)queryItemWithName:(NSString *)name value:(NSString *)value;
+ (id)_queryItem;
+ (id)_queryItemWithName:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSURLQueryItem)initWithCoder:(id)a3;
- (NSURLQueryItem)initWithName:(NSString *)name value:(NSString *)value;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSURLQueryItem

+ (id)_queryItemWithName:(id)a3 value:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  if (a4)
  {
    v8 = v5;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
    v5 = v8;
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = specialized static NSURLQueryItem._queryItemWith(name:value:)(v5, v7, v9, a4);

  return v11;
}

+ (id)_queryItem
{
  v2 = specialized static NSURLQueryItem._queryItem()();

  return v2;
}

+ (NSURLQueryItem)allocWithZone:(_NSZone *)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (NSURLQueryItem == a1)
  {
    return &___immutablePlaceholderURLQueryItem;
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSURLQueryItem;
  return objc_msgSendSuper2(&v4, sel_allocWithZone_, a3);
}

+ (NSURLQueryItem)queryItemWithName:(NSString *)name value:(NSString *)value
{
  v4 = [objc_allocWithZone(a1) initWithName:name value:value];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    goto LABEL_11;
  }

  if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  v5 = [(NSURLQueryItem *)self name];
  v6 = [a3 name];
  if (v5 == v6 || (v7 = [(NSString *)v5 isEqual:v6]))
  {
    v8 = [(NSURLQueryItem *)self value];
    v9 = [a3 value];
    if (v8 != v9)
    {

      LOBYTE(v7) = [(NSString *)v8 isEqual:v9];
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

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be encoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  [a3 encodeObject:-[NSURLQueryItem name](self forKey:{"name"), @"NS.name"}];
  v5 = [(NSURLQueryItem *)self value];

  [a3 encodeObject:v5 forKey:@"NS.value"];
}

- (NSURLQueryItem)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"%@ cannot be decoded by non-keyed archivers", objc_opt_class()];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v13 userInfo:0]);
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.name"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.value"];
  if (v6 && (v8 = v7, _NSIsNSString()) && (!v8 || _NSIsNSString()))
  {
    v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.name"];
    v10 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.value"];

    return [(NSURLQueryItem *)self initWithName:v9 value:v10];
  }

  else
  {
    v12 = [NSError _readCorruptErrorWithFormat:@"%@: invalid archived object", _NSMethodExceptionProem(self, a2)];

    [a3 failWithError:v12];
    return 0;
  }
}

@end