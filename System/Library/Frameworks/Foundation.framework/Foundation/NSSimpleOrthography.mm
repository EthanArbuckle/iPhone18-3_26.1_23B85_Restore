@interface NSSimpleOrthography
+ (id)orthographyWithFlags:(unsigned int)flags;
+ (void)initialize;
- (NSSimpleOrthography)initWithCoder:(id)coder;
- (NSSimpleOrthography)initWithDominantScript:(id)script languageMap:(id)map;
- (NSSimpleOrthography)initWithFlags:(unsigned int)flags;
- (id)allLanguages;
- (id)allScripts;
- (id)dominantLanguage;
- (id)dominantLanguageForScript:(id)script;
- (id)dominantScript;
- (id)languageMap;
- (id)languagesForScript:(id)script;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSimpleOrthography

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

+ (id)orthographyWithFlags:(unsigned int)flags
{
  v3 = [objc_allocWithZone(self) initWithFlags:*&flags];

  return v3;
}

- (NSSimpleOrthography)initWithFlags:(unsigned int)flags
{
  v10 = *MEMORY[0x1E69E9840];
  if (!flags)
  {
    v7 = objc_opt_class();
    v8 = [NSString stringWithFormat:@"Invalid orthographyFlags=0 in [%@ %s]", v7, sel_getName(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v8 userInfo:0]);
  }

  v9.receiver = self;
  v9.super_class = NSSimpleOrthography;
  result = [(NSSimpleOrthography *)&v9 init];
  if (result)
  {
    result->_orthographyFlags = flags;
  }

  return result;
}

- (NSSimpleOrthography)initWithDominantScript:(id)script languageMap:(id)map
{
  if (!script)
  {
    v8 = objc_opt_class();
    v9 = [NSString stringWithFormat:@"Invalid script=nil in [%@ %s]", v8, sel_getName(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  v5 = NSOrthographyFlagsForDominantScriptAndLanguageMap(script, map);

  return [(NSSimpleOrthography *)self initWithFlags:v5];
}

- (void)encodeWithCoder:(id)coder
{
  v6 = *MEMORY[0x1E69E9840];
  orthographyFlags = [(NSSimpleOrthography *)self orthographyFlags];
  v5 = orthographyFlags;
  if ([coder allowsKeyedCoding])
  {

    [coder encodeInt32:orthographyFlags forKey:@"NSOrthographyFlags"];
  }

  else
  {
    [coder encodeValuesOfObjCTypes:{"I", &v5}];
  }
}

- (NSSimpleOrthography)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if ([coder allowsKeyedCoding])
  {
    v6 = [coder decodeInt32ForKey:@"NSOrthographyFlags"];
    v11 = v6;
    return [(NSSimpleOrthography *)self initWithFlags:v6];
  }

  v7 = [coder versionForClassName:@"NSSimpleOrthography"];
  if (v7 == 1)
  {
    [coder decodeValuesOfObjCTypes:{"I", &v11}];
    v6 = v11;
    return [(NSSimpleOrthography *)self initWithFlags:v6];
  }

  v9 = v7;
  v10 = _NSFullMethodName(self, a2);
  NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v10, 1, v9);
  [(NSSimpleOrthography *)self dealloc];
  return 0;
}

- (id)dominantScript
{
  v2 = [(NSSimpleOrthography *)self orthographyFlags]>> 27;
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return @"Zyyy";
  }

  return [&unk_1EEF59E70 objectAtIndex:?];
}

- (id)languageMap
{
  orthographyFlags = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyLanguageMapForFlags(orthographyFlags);
}

- (id)languagesForScript:(id)script
{
  result = NSOrthographyDominantLanguageForFlagsAndScriptIndex(-[NSSimpleOrthography orthographyFlags](self, "orthographyFlags"), [&unk_1EEF59D08 indexOfObject:script]);
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DEC8];

    return [v5 arrayWithObject:v4];
  }

  return result;
}

- (id)dominantLanguageForScript:(id)script
{
  orthographyFlags = [(NSSimpleOrthography *)self orthographyFlags];
  v5 = [&unk_1EEF59D08 indexOfObject:script];

  return NSOrthographyDominantLanguageForFlagsAndScriptIndex(orthographyFlags, v5);
}

- (id)dominantLanguage
{
  orthographyFlags = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyDominantLanguageForFlagsAndScriptIndex(orthographyFlags, orthographyFlags >> 27);
}

- (id)allScripts
{
  orthographyFlags = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyAllScriptsForFlags(orthographyFlags);
}

- (id)allLanguages
{
  orthographyFlags = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyAllLanguagesForFlags(orthographyFlags);
}

@end