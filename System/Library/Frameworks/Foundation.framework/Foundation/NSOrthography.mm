@interface NSOrthography
+ (NSOrthography)allocWithZone:(_NSZone *)a3;
+ (NSOrthography)defaultOrthographyForLanguage:(NSString *)language;
+ (NSOrthography)orthographyWithDominantScript:(NSString *)script languageMap:(NSDictionary *)map;
+ (id)_orthographyWithDominantScript:(id)a3 languageMap:(id)a4;
+ (id)_scriptNameForScriptIndex:(unint64_t)a3;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSArray)allLanguages;
- (NSArray)allScripts;
- (NSArray)languagesForScript:(NSString *)script;
- (NSOrthography)initWithCoder:(NSCoder *)coder;
- (NSString)dominantLanguage;
- (NSString)dominantLanguageForScript:(NSString *)script;
- (id)description;
- (id)replacementObjectForPortCoder:(id)a3;
- (unint64_t)hash;
- (unsigned)orthographyFlags;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSOrthography

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

+ (NSOrthography)allocWithZone:(_NSZone *)a3
{
  if (NSOrthography == a1)
  {
    a1 = objc_opt_class();
  }

  return NSAllocateObject(a1, 0, a3);
}

+ (NSOrthography)orthographyWithDominantScript:(NSString *)script languageMap:(NSDictionary *)map
{
  v4 = [objc_allocWithZone(a1) initWithDominantScript:script languageMap:map];

  return v4;
}

- (unint64_t)hash
{
  LODWORD(result) = [(NSOrthography *)self orthographyFlags];
  if (result)
  {
    return result;
  }

  v4 = [(NSString *)[(NSOrthography *)self dominantScript] hash];
  return [(NSDictionary *)[(NSOrthography *)self languageMap] hash]^ v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (a3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = [(NSOrthography *)self orthographyFlags];
    if (v5)
    {
      LOBYTE(v6) = v5 == [a3 orthographyFlags];
    }

    else
    {
      v6 = -[NSString isEqualToString:](-[NSOrthography dominantScript](self, "dominantScript"), "isEqualToString:", [a3 dominantScript]);
      if (v6)
      {
        v7 = [(NSOrthography *)self languageMap];
        v8 = [a3 languageMap];

        LOBYTE(v6) = [(NSDictionary *)v7 isEqual:v8];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)description
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSOrthography *)self dominantScript];
  v4 = [(NSOrthography *)self dominantLanguage];
  v5 = [(NSOrthography *)self allScripts];
  v6 = [(NSOrthography *)self languagesForScript:v3];
  v7 = [NSString stringWithFormat:@"%@->%@", v3, v4];
  if ([(NSArray *)v6 count]>= 3)
  {
    v8 = [NSString stringWithFormat:@" and %lu other languages", [(NSArray *)v6 count]- 1];
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  if ([(NSArray *)v6 count]== 2)
  {
    v8 = [NSString stringWithFormat:@" and %@", [(NSArray *)v6 objectAtIndex:1]];
    goto LABEL_5;
  }

  v9 = &stru_1EEEFDF90;
LABEL_7:
  if ([(NSArray *)v5 count]< 3)
  {
    if ([(NSArray *)v5 count]!= 2)
    {
      v11 = &stru_1EEEFDF90;
      goto LABEL_13;
    }

    v10 = [NSString stringWithFormat:@", plus %@", [(NSArray *)v5 objectAtIndex:1]];
  }

  else
  {
    v10 = [NSString stringWithFormat:@", plus %lu other scripts", [(NSArray *)v5 count]- 1];
  }

  v11 = v10;
LABEL_13:
  v13.receiver = self;
  v13.super_class = NSOrthography;
  return [NSString stringWithFormat:@"%@{%@%@%@}", [(NSOrthography *)&v13 description], v7, v9, v11];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSOrthography *)self dominantScript];
  v6 = [(NSOrthography *)self languageMap];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:v5 forKey:@"NSDominantScript"];

    [a3 encodeObject:v6 forKey:@"NSLanguageMap"];
  }

  else
  {
    [a3 encodeObject:v5];

    [a3 encodeObject:v6];
  }
}

- (NSOrthography)initWithCoder:(NSCoder *)coder
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    v6 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSDominantScript"];
    if (_NSIsNSString())
    {
      v7 = MEMORY[0x1E695DFD8];
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = -[NSCoder decodeObjectOfClasses:forKey:](coder, "decodeObjectOfClasses:forKey:", [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}], @"NSLanguageMap");
      if (_NSIsNSDictionary())
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v33 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v34;
          v26 = *v34;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v34 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v33 + 1) + 8 * i);
              if ((_NSIsNSString() & 1) == 0)
              {

                v23 = @"Orthography language map key is not a string";
                goto LABEL_29;
              }

              v16 = [v10 objectForKeyedSubscript:v15];
              if ((_NSIsNSArray() & 1) == 0)
              {

                v23 = @"Orthography language map value is not a list of languages";
                goto LABEL_29;
              }

              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              v17 = [v16 countByEnumeratingWithState:&v28 objects:v27 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v29;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v29 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    if ((_NSIsNSString() & 1) == 0)
                    {

                      v23 = @"Orthography language map list contains non-string language";
                      goto LABEL_29;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v28 objects:v27 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v13 = v26;
            }

            v12 = [v10 countByEnumeratingWithState:&v33 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        return [(NSOrthography *)self initWithDominantScript:v6 languageMap:v10];
      }

      v23 = @"Orthography language map is not a dictionary";
    }

    else
    {

      v23 = @"Orthography dominant script is not a string";
    }

LABEL_29:
    [(NSCoder *)coder failWithError:[NSError _readCorruptErrorWithFormat:v23]];
  }

  else
  {
    v21 = [(NSCoder *)coder versionForClassName:@"NSOrthography"];
    if (v21 == 1)
    {
      v6 = [(NSCoder *)coder decodeObject];
      v10 = [(NSCoder *)coder decodeObject];
      return [(NSOrthography *)self initWithDominantScript:v6 languageMap:v10];
    }

    v24 = v21;
    v25 = _NSFullMethodName(self, a2);
    NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v25, 1, v24);
    [(NSOrthography *)self dealloc];
  }

  return 0;
}

- (id)replacementObjectForPortCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (([a3 isBycopy] & 1) == 0)
  {
    v6.receiver = self;
    v6.super_class = NSOrthography;
    return [(NSOrthography *)&v6 replacementObjectForPortCoder:a3];
  }

  return self;
}

- (unsigned)orthographyFlags
{
  v3 = [(NSOrthography *)self dominantScript];
  v4 = [(NSOrthography *)self languageMap];

  return NSOrthographyFlagsForDominantScriptAndLanguageMap(v3, v4);
}

- (NSArray)languagesForScript:(NSString *)script
{
  v4 = [(NSOrthography *)self languageMap];

  return [(NSDictionary *)v4 objectForKey:script];
}

- (NSString)dominantLanguageForScript:(NSString *)script
{
  v3 = [(NSOrthography *)self languagesForScript:script];
  result = [(NSArray *)v3 count];
  if (result)
  {

    return [(NSArray *)v3 objectAtIndex:0];
  }

  return result;
}

- (NSString)dominantLanguage
{
  v3 = [(NSOrthography *)self dominantScript];

  return [(NSOrthography *)self dominantLanguageForScript:v3];
}

- (NSArray)allScripts
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:{-[NSDictionary allKeys](-[NSOrthography languageMap](self, "languageMap"), "allKeys")}];
  v4 = [(NSOrthography *)self dominantScript];
  [(NSArray *)v3 removeObject:v4];
  [(NSArray *)v3 insertObject:v4 atIndex:0];
  return v3;
}

- (NSArray)allLanguages
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(NSOrthography *)self allScripts];
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSOrthography *)self languagesForScript:*(*(&v22 + 1) + 8 * i)];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * j);
              if (![(NSArray *)v3 containsObject:v13])
              {
                [(NSArray *)v3 addObject:v13];
              }
            }

            v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v16 count:16];
          }

          while (v10);
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v5);
  }

  return v3;
}

+ (id)_scriptNameForScriptIndex:(unint64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  result = @"Zyyy";
  if (a3 != 1 && a3 <= 0x1F)
  {
    return [&unk_1EEF59E70 objectAtIndex:?];
  }

  return result;
}

+ (id)_orthographyWithDominantScript:(id)a3 languageMap:(id)a4
{
  v6 = NSOrthographyFlagsForDominantScriptAndLanguageMap(a3, a4);
  if (v6)
  {

    return [NSSimpleOrthography orthographyWithFlags:v6];
  }

  else
  {

    return [(NSOrthography *)NSComplexOrthography orthographyWithDominantScript:a3 languageMap:a4];
  }
}

+ (NSOrthography)defaultOrthographyForLanguage:(NSString *)language
{
  v5 = [&unk_1EEF59DE0 indexOfObject:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:language];
    v7 = [v6 languageCode];
    v8 = [v6 scriptCode];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      v10 = [&unk_1EEF59DF8 indexOfObject:v7];
      if (v10 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v10;

        v5 = v13;
        goto LABEL_18;
      }

      v11 = [v7 stringByAppendingString:@"-"];
      v12 = 0;
      do
      {
        if ([objc_msgSend(&unk_1EEF59E10 objectAtIndex:{v12), "hasPrefix:", v11}])
        {
          v5 = v12;
        }

        else
        {
          v5 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v12 > 0xF6)
        {
          break;
        }

        ++v12;
      }

      while (v5 == 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v8)
    {
      goto LABEL_33;
    }
  }

LABEL_18:
  if ((v5 - 1) <= 4)
  {
    v14 = &unk_1EEF59EE8;
    v15 = v5;
LABEL_32:
    v8 = [v14 objectAtIndex:v15];
    goto LABEL_33;
  }

  if ((v5 - 6) <= 0x79)
  {
    v14 = &unk_1EEF59F00;
    v15 = 6;
    goto LABEL_32;
  }

  if ((v5 - 128) <= 0x13)
  {
    v14 = &unk_1EEF59F18;
    v15 = 8;
    goto LABEL_32;
  }

  if ((v5 - 160) <= 0x1B)
  {
    v14 = &unk_1EEF59F30;
    v15 = 11;
    goto LABEL_32;
  }

  if ((v5 - 192) <= 0xD)
  {
    v14 = &unk_1EEF59F48;
    v15 = 12;
    goto LABEL_32;
  }

  if ((v5 - 208) <= 2)
  {
    v14 = &unk_1EEF59F60;
    v15 = 29;
    goto LABEL_32;
  }

  if ((v5 - 224) <= 0x18)
  {
    v15 = v5 - 217;
    v14 = &unk_1EEF59F78;
    goto LABEL_32;
  }

  v8 = 0;
LABEL_33:
  if (!v8)
  {
    v8 = @"Latn";
  }

  v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", language), v8}];

  return [a1 _orthographyWithDominantScript:v8 languageMap:v16];
}

@end