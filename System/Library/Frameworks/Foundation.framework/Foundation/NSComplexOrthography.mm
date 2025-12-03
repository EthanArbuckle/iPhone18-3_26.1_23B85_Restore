@interface NSComplexOrthography
+ (void)initialize;
- (NSComplexOrthography)initWithDominantScript:(id)script languageMap:(id)map;
- (id)dominantScript;
- (id)languageMap;
- (void)dealloc;
@end

@implementation NSComplexOrthography

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (NSComplexOrthography)initWithDominantScript:(id)script languageMap:(id)map
{
  v14 = *MEMORY[0x1E69E9840];
  if (!script)
  {
    v11 = objc_opt_class();
    v12 = [NSString stringWithFormat:@"Invalid script=nil in [%@ %s]", v11, sel_getName(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0]);
  }

  v13.receiver = self;
  v13.super_class = NSComplexOrthography;
  v7 = [(NSComplexOrthography *)&v13 init];
  if (v7)
  {
    *(v7 + 1) = [script copy];
    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:map];
    *(v7 + 2) = v8;
    *(v7 + 6) = NSOrthographyFlagsForDominantScriptAndLanguageMap(*(v7 + 1), v8);
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSComplexOrthography;
  [(NSComplexOrthography *)&v3 dealloc];
}

- (id)dominantScript
{
  v2 = self->_dominantScript;

  return v2;
}

- (id)languageMap
{
  v2 = self->_languageMap;

  return v2;
}

@end