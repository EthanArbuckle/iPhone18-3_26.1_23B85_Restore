@interface _NSLocalizedStringResource
- (BOOL)isEqual:(id)equal;
- (NSLocale)locale;
- (NSString)defaultValue;
- (NSString)key;
- (NSString)table;
- (NSURL)bundleURL;
- (_NSLocalizedStringResource)initWithCoder:(id)coder;
- (_NSLocalizedStringResource)initWithKey:(id)key defaultValue:(id)value table:(id)table locale:(id)locale bundleURL:(id)l;
- (_NSLocalizedStringResource)initWithResource:(id)resource;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resource;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSLocalizedStringResource

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSLocalizedStringResource;
  [(_NSLocalizedStringResource *)&v3 dealloc];
}

- (NSString)key
{
  v2 = [(NSString *)[(_NSLocalizedStringResourceSwiftWrapper *)self->_resource key] copy];

  return v2;
}

- (NSString)defaultValue
{
  v2 = [(NSString *)[(_NSLocalizedStringResourceSwiftWrapper *)self->_resource defaultValue] copy];

  return v2;
}

- (NSString)table
{
  v2 = [(NSString *)[(_NSLocalizedStringResourceSwiftWrapper *)self->_resource table] copy];

  return v2;
}

- (NSURL)bundleURL
{
  v2 = [(NSURL *)[(_NSLocalizedStringResourceSwiftWrapper *)self->_resource bundleURL] copy];

  return v2;
}

- (_NSLocalizedStringResource)initWithKey:(id)key defaultValue:(id)value table:(id)table locale:(id)locale bundleURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  if (!key || !locale || !l)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v14);
  }

  v15.receiver = self;
  v15.super_class = _NSLocalizedStringResource;
  v12 = [(_NSLocalizedStringResource *)&v15 init];
  if (v12)
  {
    v12->_resource = [[_NSLocalizedStringResourceSwiftWrapper alloc] initWithKey:key defaultValue:value table:table locale:locale bundleURL:l];
  }

  return v12;
}

- (_NSLocalizedStringResource)initWithResource:(id)resource
{
  v10 = *MEMORY[0x1E69E9840];
  if (!resource)
  {
    v8 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(self, a2)];
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"%@: invalid argument", _NSMethodExceptionProem(self, a2)];
LABEL_8:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = _NSLocalizedStringResource;
  v6 = [(_NSLocalizedStringResource *)&v9 init];
  if (v6)
  {
    v6->_resource = [resource copy];
  }

  return v6;
}

- (NSLocale)locale
{
  v2 = [(NSLocale *)[(_NSLocalizedStringResourceSwiftWrapper *)self->_resource locale] copy];

  return v2;
}

- (id)resource
{
  v2 = [(_NSLocalizedStringResourceSwiftWrapper *)self->_resource copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_NSLocalizedStringResource alloc];
  resource = self->_resource;

  return [(_NSLocalizedStringResource *)v4 initWithResource:resource];
}

- (void)encodeWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be encoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  resource = self->_resource;

  [coder encodeObject:resource forKey:@"NSResource"];
}

- (_NSLocalizedStringResource)initWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be encoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v8);
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSResource"];
  if ([coder error])
  {
    return 0;
  }

  if (!v6)
  {
    [coder failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"%@: null value for key NSResource", _NSMethodExceptionProem(self, a2))}];
    return 0;
  }

  return [(_NSLocalizedStringResource *)self initWithResource:v6];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  resource = self->_resource;
  v6 = *(equal + 1);

  return [(_NSLocalizedStringResourceSwiftWrapper *)resource isEqual:v6];
}

@end