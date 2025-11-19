@interface NSSimpleOrthography
+ (id)orthographyWithFlags:(unsigned int)a3;
+ (void)initialize;
- (NSSimpleOrthography)initWithCoder:(id)a3;
- (NSSimpleOrthography)initWithDominantScript:(id)a3 languageMap:(id)a4;
- (NSSimpleOrthography)initWithFlags:(unsigned int)a3;
- (id)allLanguages;
- (id)allScripts;
- (id)dominantLanguage;
- (id)dominantLanguageForScript:(id)a3;
- (id)dominantScript;
- (id)languageMap;
- (id)languagesForScript:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSimpleOrthography

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (id)orthographyWithFlags:(unsigned int)a3
{
  v3 = [objc_allocWithZone(a1) initWithFlags:*&a3];

  return v3;
}

- (NSSimpleOrthography)initWithFlags:(unsigned int)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a3)
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
    result->_orthographyFlags = a3;
  }

  return result;
}

- (NSSimpleOrthography)initWithDominantScript:(id)a3 languageMap:(id)a4
{
  if (!a3)
  {
    v8 = objc_opt_class();
    v9 = [NSString stringWithFormat:@"Invalid script=nil in [%@ %s]", v8, sel_getName(a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0]);
  }

  v5 = NSOrthographyFlagsForDominantScriptAndLanguageMap(a3, a4);

  return [(NSSimpleOrthography *)self initWithFlags:v5];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [(NSSimpleOrthography *)self orthographyFlags];
  v5 = v4;
  if ([a3 allowsKeyedCoding])
  {

    [a3 encodeInt32:v4 forKey:@"NSOrthographyFlags"];
  }

  else
  {
    [a3 encodeValuesOfObjCTypes:{"I", &v5}];
  }
}

- (NSSimpleOrthography)initWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if ([a3 allowsKeyedCoding])
  {
    v6 = [a3 decodeInt32ForKey:@"NSOrthographyFlags"];
    v11 = v6;
    return [(NSSimpleOrthography *)self initWithFlags:v6];
  }

  v7 = [a3 versionForClassName:@"NSSimpleOrthography"];
  if (v7 == 1)
  {
    [a3 decodeValuesOfObjCTypes:{"I", &v11}];
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
  v2 = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyLanguageMapForFlags(v2);
}

- (id)languagesForScript:(id)a3
{
  result = NSOrthographyDominantLanguageForFlagsAndScriptIndex(-[NSSimpleOrthography orthographyFlags](self, "orthographyFlags"), [&unk_1EEF59D08 indexOfObject:a3]);
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DEC8];

    return [v5 arrayWithObject:v4];
  }

  return result;
}

- (id)dominantLanguageForScript:(id)a3
{
  v4 = [(NSSimpleOrthography *)self orthographyFlags];
  v5 = [&unk_1EEF59D08 indexOfObject:a3];

  return NSOrthographyDominantLanguageForFlagsAndScriptIndex(v4, v5);
}

- (id)dominantLanguage
{
  v2 = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyDominantLanguageForFlagsAndScriptIndex(v2, v2 >> 27);
}

- (id)allScripts
{
  v2 = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyAllScriptsForFlags(v2);
}

- (id)allLanguages
{
  v2 = [(NSSimpleOrthography *)self orthographyFlags];

  return NSOrthographyAllLanguagesForFlags(v2);
}

@end