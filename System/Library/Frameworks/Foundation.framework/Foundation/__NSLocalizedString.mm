@interface __NSLocalizedString
- (__NSLocalizedString)initWithCoder:(id)a3;
- (__NSLocalizedString)initWithString:(id)a3 withFormatConfiguration:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)replaceOccurrencesOfString:(id)a3 withString:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6;
- (void)appendCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4;
- (void)appendFormat:(id)a3;
- (void)appendString:(id)a3;
- (void)dealloc;
- (void)deleteCharactersInRange:(_NSRange)a3;
- (void)encodeWithCoder:(id)a3;
- (void)insertString:(id)a3 atIndex:(unint64_t)a4;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)setString:(id)a3;
@end

@implementation __NSLocalizedString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSLocalizedString;
  [(__NSLocalizedString *)&v3 dealloc];
}

- (__NSLocalizedString)initWithCoder:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"__NSLocalizedString cannot be decoded by non-keyed archivers!" userInfo:0]);
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NS.originalString"];
  if (!v5)
  {
    if ([a3 containsValueForKey:@"NS.originalString"])
    {
      v17 = 4864;
    }

    else
    {
      v17 = 4865;
    }

    v20 = @"NSDebugDescription";
    v21[0] = @"Unable to decode NS.originalString.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v15 = v17;
    goto LABEL_13;
  }

  v6 = v5;
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, v11, v12, objc_opt_class(), 0), @"NS.configDict"}];
  if (!v13 && [a3 containsValueForKey:@"NS.configDict"])
  {

    v18 = @"NSDebugDescription";
    v19 = @"Unable to decode NS.configDict as a plist type despite data being present.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = 4864;
LABEL_13:
    [a3 failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", v15, v14)}];
    return 0;
  }

  return [(__NSLocalizedString *)self initWithString:v6 withFormatConfiguration:v13];
}

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encoder does not allow keyed coding!" userInfo:0]);
  }

  [a3 encodeObject:self->original forKey:@"NS.originalString"];
  if (self->config)
  {

    [a3 encodeObject:? forKey:?];
  }
}

- (__NSLocalizedString)initWithString:(id)a3 withFormatConfiguration:(id)a4
{
  self->original = [a3 mutableCopyWithZone:0];
  self->config = [a4 copyWithZone:0];
  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [__NSLocalizedString alloc];
  original = self->original;
  config = self->config;

  return [(__NSLocalizedString *)v4 initWithString:original withFormatConfiguration:config];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [__NSLocalizedString alloc];
  original = self->original;
  config = self->config;

  return [(__NSLocalizedString *)v4 initWithString:original withFormatConfiguration:config];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original replaceCharactersInRange:location withString:length, a4];
}

- (void)insertString:(id)a3 atIndex:(unint64_t)a4
{
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original insertString:a3 atIndex:a4];
}

- (void)appendString:(id)a3
{
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original appendString:a3];
}

- (void)deleteCharactersInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original deleteCharactersInRange:location, length];
}

- (void)appendFormat:(id)a3
{
  config = self->config;
  self->config = 0;

  _CFStringAppendFormatAndArgumentsAux2();
}

- (void)setString:(id)a3
{
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original setString:a3];
}

- (void)appendCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4
{
  config = self->config;
  self->config = 0;

  original = self->original;
  v9 = [(NSString *)original length];

  [(NSMutableString *)original replaceCharactersInRange:v9 withCharacters:0 length:a3, a4];
}

- (unint64_t)replaceOccurrencesOfString:(id)a3 withString:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  config = self->config;
  self->config = 0;

  original = self->original;

  return [(NSMutableString *)original replaceOccurrencesOfString:a3 withString:a4 options:a5 range:location, length];
}

@end