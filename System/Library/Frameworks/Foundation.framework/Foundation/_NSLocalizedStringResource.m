@interface _NSLocalizedStringResource
- (BOOL)isEqual:(id)a3;
- (NSLocale)locale;
- (NSString)defaultValue;
- (NSString)key;
- (NSString)table;
- (NSURL)bundleURL;
- (_NSLocalizedStringResource)initWithCoder:(id)a3;
- (_NSLocalizedStringResource)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 locale:(id)a6 bundleURL:(id)a7;
- (_NSLocalizedStringResource)initWithResource:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)resource;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (_NSLocalizedStringResource)initWithKey:(id)a3 defaultValue:(id)a4 table:(id)a5 locale:(id)a6 bundleURL:(id)a7
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a3 || !a6 || !a7)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v14);
  }

  v15.receiver = self;
  v15.super_class = _NSLocalizedStringResource;
  v12 = [(_NSLocalizedStringResource *)&v15 init];
  if (v12)
  {
    v12->_resource = [[_NSLocalizedStringResourceSwiftWrapper alloc] initWithKey:a3 defaultValue:a4 table:a5 locale:a6 bundleURL:a7];
  }

  return v12;
}

- (_NSLocalizedStringResource)initWithResource:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
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
    v6->_resource = [a3 copy];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_NSLocalizedStringResource alloc];
  resource = self->_resource;

  return [(_NSLocalizedStringResource *)v4 initWithResource:resource];
}

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be encoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v6);
  }

  resource = self->_resource;

  [a3 encodeObject:resource forKey:@"NSResource"];
}

- (_NSLocalizedStringResource)initWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@ cannot be encoded by non-keyed archivers", objc_opt_class()), 0}];
    objc_exception_throw(v8);
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSResource"];
  if ([a3 error])
  {
    return 0;
  }

  if (!v6)
  {
    [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"%@: null value for key NSResource", _NSMethodExceptionProem(self, a2))}];
    return 0;
  }

  return [(_NSLocalizedStringResource *)self initWithResource:v6];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  resource = self->_resource;
  v6 = *(a3 + 1);

  return [(_NSLocalizedStringResourceSwiftWrapper *)resource isEqual:v6];
}

@end