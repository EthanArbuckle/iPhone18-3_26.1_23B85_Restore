@interface __NSLocalizedString
- (__NSLocalizedString)initWithCoder:(id)coder;
- (__NSLocalizedString)initWithString:(id)string withFormatConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)replaceOccurrencesOfString:(id)string withString:(id)withString options:(unint64_t)options range:(_NSRange)range;
- (void)appendCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
- (void)appendFormat:(id)format;
- (void)appendString:(id)string;
- (void)dealloc;
- (void)deleteCharactersInRange:(_NSRange)range;
- (void)encodeWithCoder:(id)coder;
- (void)insertString:(id)string atIndex:(unint64_t)index;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)setString:(id)string;
@end

@implementation __NSLocalizedString

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSLocalizedString;
  [(__NSLocalizedString *)&v3 dealloc];
}

- (__NSLocalizedString)initWithCoder:(id)coder
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"__NSLocalizedString cannot be decoded by non-keyed archivers!" userInfo:0]);
  }

  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.originalString"];
  if (!v5)
  {
    if ([coder containsValueForKey:@"NS.originalString"])
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
  v13 = [coder decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, v10, v11, v12, objc_opt_class(), 0), @"NS.configDict"}];
  if (!v13 && [coder containsValueForKey:@"NS.configDict"])
  {

    v18 = @"NSDebugDescription";
    v19 = @"Unable to decode NS.configDict as a plist type despite data being present.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v15 = 4864;
LABEL_13:
    [coder failWithError:{+[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", v15, v14)}];
    return 0;
  }

  return [(__NSLocalizedString *)self initWithString:v6 withFormatConfiguration:v13];
}

- (void)encodeWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Encoder does not allow keyed coding!" userInfo:0]);
  }

  [coder encodeObject:self->original forKey:@"NS.originalString"];
  if (self->config)
  {

    [coder encodeObject:? forKey:?];
  }
}

- (__NSLocalizedString)initWithString:(id)string withFormatConfiguration:(id)configuration
{
  self->original = [string mutableCopyWithZone:0];
  self->config = [configuration copyWithZone:0];
  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [__NSLocalizedString alloc];
  original = self->original;
  config = self->config;

  return [(__NSLocalizedString *)v4 initWithString:original withFormatConfiguration:config];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [__NSLocalizedString alloc];
  original = self->original;
  config = self->config;

  return [(__NSLocalizedString *)v4 initWithString:original withFormatConfiguration:config];
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original replaceCharactersInRange:location withString:length, string];
}

- (void)insertString:(id)string atIndex:(unint64_t)index
{
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original insertString:string atIndex:index];
}

- (void)appendString:(id)string
{
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original appendString:string];
}

- (void)deleteCharactersInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original deleteCharactersInRange:location, length];
}

- (void)appendFormat:(id)format
{
  config = self->config;
  self->config = 0;

  _CFStringAppendFormatAndArgumentsAux2();
}

- (void)setString:(id)string
{
  config = self->config;
  self->config = 0;

  original = self->original;

  [(NSMutableString *)original setString:string];
}

- (void)appendCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  config = self->config;
  self->config = 0;

  original = self->original;
  v9 = [(NSString *)original length];

  [(NSMutableString *)original replaceCharactersInRange:v9 withCharacters:0 length:characters, length];
}

- (unint64_t)replaceOccurrencesOfString:(id)string withString:(id)withString options:(unint64_t)options range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  config = self->config;
  self->config = 0;

  original = self->original;

  return [(NSMutableString *)original replaceOccurrencesOfString:string withString:withString options:options range:location, length];
}

@end