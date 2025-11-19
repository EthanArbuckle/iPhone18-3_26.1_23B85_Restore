@interface NSMutableAttributedString
+ (NSMutableAttributedString)allocWithZone:(_NSZone *)a3;
- (NSMutableString)mutableString;
- (id)_formatInflectionAlternative:(id)a3 withReplacements:(id)a4;
- (void)_addAttributesIfNotPresentMergingInlinePresentationIntents:(id)a3 toRange:(_NSRange)a4;
- (void)_inflectWithLocale:(id)a3 replacements:(id)a4 concepts:(id)a5 preflight:(BOOL)a6;
- (void)addAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range;
- (void)addAttributes:(NSDictionary *)attrs range:(NSRange)range;
- (void)addAttributesWeakly:(id)a3 range:(_NSRange)a4;
- (void)appendAttributedString:(NSAttributedString *)attrString;
- (void)appendLocalizedFormat:(NSAttributedString *)format;
- (void)deleteCharactersInRange:(NSRange)range;
- (void)enumerateFormattableBlocksInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)enumerateInflectableBlocksInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)removeAttribute:(NSAttributedStringKey)name range:(NSRange)range;
- (void)replaceCharactersInRange:(NSRange)range withAttributedString:(NSAttributedString *)attrString;
- (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)str;
- (void)setAttributedString:(NSAttributedString *)attrString;
- (void)setAttributes:(NSDictionary *)attrs range:(NSRange)range;
@end

@implementation NSMutableAttributedString

- (NSMutableString)mutableString
{
  v2 = [objc_allocWithZone(NSMutableStringProxyForMutableAttributedString) initWithMutableAttributedString:self];

  return v2;
}

+ (NSMutableAttributedString)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_self() == a1)
  {
    v4 = objc_opt_self();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (void)replaceCharactersInRange:(NSRange)range withString:(NSString *)str
{
  v6 = NSClassFromString(@"NSMutableAttributedString");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)setAttributes:(NSDictionary *)attrs range:(NSRange)range
{
  v6 = NSClassFromString(@"NSMutableAttributedString");

  NSRequestConcreteImplementation(self, a2, v6);
}

- (void)addAttribute:(NSAttributedStringKey)name value:(id)value range:(NSRange)range
{
  v26 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    if (!value)
    {
      v21 = objc_opt_class();
      v22 = _NSNameOfClass(v21);
      v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: nil value", v22, sel_getName(a2)), 0}];
      objc_exception_throw(v23);
    }

    length = range.length;
    location = range.location;
    [(NSMutableAttributedString *)self beginEditing];
    do
    {
      v24 = 0;
      v25 = 0;
      v10 = [(NSDictionary *)[(NSAttributedString *)self attributesAtIndex:location effectiveRange:&v24] mutableCopyWithZone:0];
      v11 = v10;
      if (location + length >= v25 + v24)
      {
        v12 = v25 + v24;
      }

      else
      {
        v12 = location + length;
      }

      v13 = v12 - v24;
      v14 = location > v24 || v24 >= location + length;
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v24;
      }

      if (v14)
      {
        v13 = 0;
      }

      v16 = v12 - location;
      v17 = v24 > location || location >= v25 + v24;
      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = location;
      }

      if (v17)
      {
        v19 = v13;
      }

      else
      {
        v19 = v16;
      }

      v24 = v18;
      v25 = v19;
      [v10 setObject:value forKey:name];
      [(NSMutableAttributedString *)self setAttributes:v11 range:v24, v25];

      location += v25;
      length -= v25;
    }

    while (length);
    if ([(NSAttributedString *)self _willRequireIntentResolutionWhenContainingAttribute:name value:value])
    {
      [(NSAttributedString *)self _markRequiringIntentResolution];
    }

    [(NSMutableAttributedString *)self endEditing];
  }
}

- (void)addAttributes:(NSDictionary *)attrs range:(NSRange)range
{
  v22 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    if (!attrs)
    {
      v17 = objc_opt_class();
      v18 = _NSNameOfClass(v17);
      v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: nil value", v18, sel_getName(a2)), 0}];
      objc_exception_throw(v19);
    }

    length = range.length;
    location = range.location;
    [(NSMutableAttributedString *)self beginEditing];
    do
    {
      v20 = 0;
      v21 = 0;
      v8 = [(NSDictionary *)[(NSAttributedString *)self attributesAtIndex:location effectiveRange:&v20] mutableCopyWithZone:0];
      v9 = v8;
      if (location + length >= v21 + v20)
      {
        v10 = v21 + v20;
      }

      else
      {
        v10 = location + length;
      }

      if (v20 >= location + length || location > v20)
      {
        v12 = 0;
      }

      else
      {
        v12 = v10 - v20;
      }

      v13 = v10 - location;
      if (v20 > location || location >= v21 + v20)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      v20 = location;
      v21 = v15;
      if (v15 > length)
      {
        v21 = length;
      }

      [v8 addEntriesFromDictionary:attrs];
      [(NSMutableAttributedString *)self setAttributes:v9 range:v20, v21];

      location += v21;
      length -= v21;
    }

    while (length);
    if ([(NSAttributedString *)self _willRequireIntentResolutionWhenContainingAttributes:attrs])
    {
      [(NSAttributedString *)self _markRequiringIntentResolution];
    }

    [(NSMutableAttributedString *)self endEditing];
  }
}

- (void)addAttributesWeakly:(id)a3 range:(_NSRange)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4.length)
  {
    length = a4.length;
    location = a4.location;
    [(NSMutableAttributedString *)self beginEditing];
    do
    {
      v17 = 0;
      v18 = 0;
      v8 = [(NSAttributedString *)self attributesAtIndex:location effectiveRange:&v17];
      v9 = [a3 mutableCopyWithZone:0];
      v10 = v9;
      if (location + length >= v18 + v17)
      {
        v11 = v18 + v17;
      }

      else
      {
        v11 = location + length;
      }

      if (v17 >= location + length || location > v17)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11 - v17;
      }

      v14 = v11 - location;
      if (v17 > location || location >= v18 + v17)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      v17 = location;
      v18 = v16;
      if (v16 > length)
      {
        v18 = length;
      }

      [v9 addEntriesFromDictionary:v8];
      [(NSMutableAttributedString *)self setAttributes:v10 range:v17, v18];

      location += v18;
      length -= v18;
    }

    while (length);
    if ([(NSAttributedString *)self _willRequireIntentResolutionWhenContainingAttributes:a3])
    {
      [(NSAttributedString *)self _markRequiringIntentResolution];
    }

    [(NSMutableAttributedString *)self endEditing];
  }
}

- (void)removeAttribute:(NSAttributedStringKey)name range:(NSRange)range
{
  v20 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    length = range.length;
    location = range.location;
    [(NSMutableAttributedString *)self beginEditing];
    do
    {
      v18 = 0;
      v19 = 0;
      v8 = [(NSDictionary *)[(NSAttributedString *)self attributesAtIndex:location effectiveRange:&v18] mutableCopyWithZone:0];
      v9 = v8;
      if (location + length >= v19 + v18)
      {
        v10 = v19 + v18;
      }

      else
      {
        v10 = location + length;
      }

      v11 = v10 - v18;
      v12 = location > v18 || v18 >= location + length;
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v18;
      }

      if (v12)
      {
        v11 = 0;
      }

      v14 = v10 - location;
      v15 = v18 > location || location >= v19 + v18;
      if (v15)
      {
        v16 = v13;
      }

      else
      {
        v16 = location;
      }

      if (v15)
      {
        v17 = v11;
      }

      else
      {
        v17 = v14;
      }

      v18 = v16;
      v19 = v17;
      [v8 removeObjectForKey:name];
      [(NSMutableAttributedString *)self setAttributes:v9 range:v18, v19];

      location += v19;
      length -= v19;
    }

    while (length);
    [(NSMutableAttributedString *)self endEditing];
  }
}

- (void)replaceCharactersInRange:(NSRange)range withAttributedString:(NSAttributedString *)attrString
{
  length = range.length;
  location = range.location;
  v14 = *MEMORY[0x1E69E9840];
  v8 = [(NSAttributedString *)attrString string];
  v9 = [(NSString *)v8 length];
  v12 = 0;
  v13 = 0;
  [(NSMutableAttributedString *)self beginEditing];
  [(NSMutableAttributedString *)self replaceCharactersInRange:location withString:length, v8];
  if (v9)
  {
    for (i = 0; i < v9; v12 = i)
    {
      v11 = [(NSAttributedString *)attrString attributesAtIndex:i effectiveRange:&v12];
      [(NSMutableAttributedString *)self setAttributes:v11 range:v12 + location, v13];
      i = v12 + v13;
    }
  }

  if ([(NSAttributedString *)attrString _mayRequireIntentResolution])
  {
    [(NSAttributedString *)self _markRequiringIntentResolution];
  }

  [(NSMutableAttributedString *)self endEditing];
}

- (void)appendAttributedString:(NSAttributedString *)attrString
{
  v5 = [(NSString *)[(NSAttributedString *)self string] length];

  [(NSMutableAttributedString *)self replaceCharactersInRange:v5 withAttributedString:0, attrString];
}

- (void)deleteCharactersInRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = objc_alloc_init(NSAttributedString);
  [(NSMutableAttributedString *)self replaceCharactersInRange:location withAttributedString:length, v6];
}

- (void)setAttributedString:(NSAttributedString *)attrString
{
  v5 = [(NSString *)[(NSAttributedString *)self string] length];

  [(NSMutableAttributedString *)self replaceCharactersInRange:0 withAttributedString:v5, attrString];
}

- (void)_addAttributesIfNotPresentMergingInlinePresentationIntents:(id)a3 toRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9[7] = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v8 = [a3 objectForKeyedSubscript:@"NSInlinePresentationIntent"];
    if (v8)
    {
      v8 = [v8 unsignedIntegerValue];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __110__NSMutableAttributedString_NSInflection___addAttributesIfNotPresentMergingInlinePresentationIntents_toRange___block_invoke;
    v9[3] = &unk_1E69F4250;
    v9[5] = self;
    v9[6] = v8;
    v9[4] = a3;
    [(NSAttributedString *)self enumerateAttributesInRange:location options:length usingBlock:0x100000, v9];
  }
}

uint64_t __110__NSMutableAttributedString_NSInflection___addAttributesIfNotPresentMergingInlinePresentationIntents_toRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = [a2 objectForKeyedSubscript:?];
  v9 = *(a1 + 48);
  if (v8)
  {
    v8 = [v8 unsignedIntegerValue];
  }

  v16 = v8 | v9;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(a1 + 32);
  result = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (result)
  {
    v12 = result;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        if (![a2 objectForKeyedSubscript:v15])
        {
          [*(a1 + 40) addAttribute:v15 value:objc_msgSend(*(a1 + 32) range:{"objectForKeyedSubscript:", v15), a3, a4}];
        }

        ++v14;
      }

      while (v12 != v14);
      result = [v10 countByEnumeratingWithState:&v18 objects:v17 count:16];
      v12 = result;
    }

    while (result);
  }

  if (v16)
  {
    return [*(a1 + 40) addAttribute:@"NSInlinePresentationIntent" value:+[NSNumber numberWithUnsignedInteger:](NSNumber range:{"numberWithUnsignedInteger:"), a3, a4}];
  }

  return result;
}

- (id)_formatInflectionAlternative:(id)a3 withReplacements:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = [[NSCharacterSet characterSetWithCharactersInString:?]];
  if (_NSIsNSString())
  {
    v6 = [[NSMutableAttributedString alloc] initWithString:a3];
  }

  else
  {
    if (!_NSIsNSAttributedString())
    {
LABEL_38:
      v7 = 0;
      return v7;
    }

    v6 = [a3 mutableCopy];
  }

  v7 = v6;
  if (v6)
  {
    [(NSAttributedString *)v6 length];
    v8 = [(NSString *)[(NSAttributedString *)v7 string] rangeOfString:@"{"];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v8;
      v12 = @"{";
      while (v11 < [(NSAttributedString *)v7 length]- 1)
      {
        v13 = v11 + 1;
        if ([(NSString *)[(NSAttributedString *)v7 string] characterAtIndex:v11 + 1]== 123)
        {
          [(NSMutableString *)[(NSMutableAttributedString *)v7 mutableString] replaceCharactersInRange:v11 withString:2, v12];
        }

        else
        {
          v14 = [(NSString *)[(NSAttributedString *)v7 string] rangeOfString:@"}" options:0 range:v11 + 1, [(NSAttributedString *)v7 length]- v13];
          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_37;
          }

          v15 = v14 + ~v11;
          v16 = [(NSString *)[(NSAttributedString *)v7 string] substringWithRange:v11 + 1, v15];
          if ([(NSString *)v16 rangeOfCharacterFromSet:v33]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_37;
          }

          v17 = [(NSString *)v16 integerValue];
          v18 = v17 - 1;
          if (v17 < 1)
          {
            goto LABEL_37;
          }

          v19 = v17;
          if (v18 >= [a4 count] || objc_msgSend(objc_msgSend(a4, "objectAtIndexedSubscript:", v18), "index") != v19 || (v20 = objc_msgSend(a4, "objectAtIndexedSubscript:", v18)) == 0)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v21 = [a4 countByEnumeratingWithState:&v35 objects:v34 count:16];
            if (!v21)
            {
              goto LABEL_37;
            }

            v22 = v21;
            v23 = *v36;
LABEL_25:
            v24 = v12;
            v25 = 0;
            while (1)
            {
              if (*v36 != v23)
              {
                objc_enumerationMutation(a4);
              }

              v20 = *(*(&v35 + 1) + 8 * v25);
              if ([v20 index] == v19)
              {
                break;
              }

              if (v22 == ++v25)
              {
                v22 = [a4 countByEnumeratingWithState:&v35 objects:v34 count:16];
                v12 = v24;
                if (v22)
                {
                  goto LABEL_25;
                }

                goto LABEL_37;
              }
            }

            v12 = v24;
            if (!v20)
            {
              goto LABEL_37;
            }
          }

          v26 = [(NSAttributedString *)self string];
          v27 = [v20 replacementRangeInResult];
          v29 = [(NSString *)v26 substringWithRange:v27, v28];
          [(NSMutableString *)[(NSMutableAttributedString *)v7 mutableString] replaceCharactersInRange:v11 withString:v15 + 2, v29];
          v30 = [(NSString *)v29 length];
          if (v30 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_37;
          }

          v13 = v30 + v11;
        }

        v11 = [(NSString *)[(NSAttributedString *)v7 string] rangeOfString:v12 options:0 range:v13, [(NSAttributedString *)v7 length]- v13];
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_37;
    }

LABEL_7:
    [(NSAttributedString *)v7 length];
    v9 = [(NSString *)[(NSAttributedString *)v7 string] rangeOfString:@"}"];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v9;
      while (v10 < [(NSAttributedString *)v7 length]- 1 && [(NSString *)[(NSAttributedString *)v7 string] characterAtIndex:v10 + 1]== 125)
      {
        [(NSMutableString *)[(NSMutableAttributedString *)v7 mutableString] replaceCharactersInRange:v10 withString:2, @"}"];
        v10 = [(NSString *)[(NSAttributedString *)v7 string] rangeOfString:@"}" options:0 range:v10 + 1, [(NSAttributedString *)v7 length]- (v10 + 1)];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return v7;
        }
      }

LABEL_37:

      goto LABEL_38;
    }
  }

  return v7;
}

- (void)_inflectWithLocale:(id)a3 replacements:(id)a4 concepts:(id)a5 preflight:(BOOL)a6
{
  v23[5] = *MEMORY[0x1E69E9840];
  v11 = +[NSTermOfAddress currentUser];
  v22[4] = self;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke;
  v23[3] = &unk_1E69F4278;
  v23[4] = self;
  v21[4] = self;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_2;
  v22[3] = &unk_1E69F42A0;
  v20[4] = self;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_3;
  v21[3] = &unk_1E69F42C8;
  v19[4] = self;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_4;
  v20[3] = &unk_1E69F42C8;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_5;
  v19[3] = &unk_1E69F42F0;
  v17[4] = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_6;
  v18[3] = &unk_1E69F4318;
  v18[4] = self;
  v16[4] = self;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_7;
  v17[3] = &unk_1E69F4340;
  v15[4] = self;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_8;
  v16[3] = &unk_1E69F4368;
  v14[4] = self;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_9;
  v15[3] = &unk_1E69F43B8;
  v13[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_11;
  v14[3] = &unk_1E69F43E0;
  v12[5] = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_12;
  v13[3] = &unk_1E69F4408;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_13;
  v12[3] = &unk_1E69F4430;
  v12[4] = self;
  _NSInflect(a3, a4, a5, v11, v23, a6, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12);
}

uint64_t __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  while (1)
  {
    v6 = [objc_msgSend(*(a1 + 32) "string")];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v8 = v6;
    v9 = a2 + v3;
    if (v6 > v9 - 2)
    {
      return 0;
    }

    v10 = v7;
    if ([objc_msgSend(*(a1 + 32) "string")] != 37)
    {
      break;
    }

    a2 = v8 + v10;
    v3 = v9 - (v8 + v10);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) string];

  return [v5 substringWithRange:{a2, a3}];
}

uint64_t __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v7 = [*(a1 + 32) mutableString];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_10;
  v9[3] = &unk_1E69F4390;
  v9[4] = a4;
  return [v7 enumerateSubstringsInRange:a2 options:a3 usingBlock:{3, v9}];
}

void __94__NSMutableAttributedString_NSInflection___inflectWithLocale_replacements_concepts_preflight___block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (_NSIsNSString())
  {
    v8 = [*(a1 + 32) mutableString];

    [v8 replaceCharactersInRange:a2 withString:{a3, a4}];
  }

  else if (_NSIsNSAttributedString())
  {
    v9 = [objc_msgSend(*(a1 + 32) _identicalAttributesInRange:{a2, a3), "mutableCopy"}];
    [v9 removeObjectForKey:@"NSInflectionAlternative"];
    [*(a1 + 32) replaceCharactersInRange:a2 withAttributedString:{a3, a4}];
    [*(a1 + 32) _addAttributesIfNotPresentMergingInlinePresentationIntents:v9 toRange:{a2, objc_msgSend(a4, "length")}];
  }

  else
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"NSAttributedString_Inflection.m", 1063, @"Unknown kind of replacement: %@", a4];
  }
}

- (void)enumerateInflectableBlocksInRange:(_NSRange)a3 usingBlock:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = a3.location + a3.length;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __88__NSMutableAttributedString_NSInflection__enumerateInflectableBlocksInRange_usingBlock___block_invoke;
  v11 = &unk_1E69F4458;
  v13 = &v19;
  v14 = &v15;
  v12 = a4;
  [NSAttributedString enumerateAttributesInRange:"enumerateAttributesInRange:options:usingBlock:" options:? usingBlock:?];
  v5 = v20[5];
  if (v5)
  {
    v6 = v16[3];
    v7 = 0;
    (*(a4 + 2))(a4, v5, 0, v6, &v7);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

uint64_t __88__NSMutableAttributedString_NSInflection__enumerateInflectableBlocksInRange_usingBlock___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [[_NSInflectionRuleExplicit alloc] initWithAttributesDictionary:a2];
  if (!v8)
  {
    v8 = [objc_msgSend(a2 objectForKeyedSubscript:{@"NSInflect", "copy"}];
  }

  v9 = *(*(a1[5] + 8) + 40);
  if (v9 == v8 || (v13 = v8, [(_NSInflectionRuleExplicit *)v9 isEqual:v8]))
  {

    return MEMORY[0x1EEE66BB8]();
  }

  else
  {
    v10 = a3 + a4;
    if (*(*(a1[5] + 8) + 40))
    {
      (*(a1[4] + 16))();
      v11 = *(*(a1[5] + 8) + 40);
    }

    else
    {
      v11 = 0;
    }

    result = v13;
    *(*(a1[5] + 8) + 40) = v13;
    *(*(a1[6] + 8) + 24) = v10;
  }

  return result;
}

- (void)enumerateFormattableBlocksInRange:(_NSRange)a3 usingBlock:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy__8;
  v23 = __Block_byref_object_dispose__8;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = a3.location + a3.length;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __88__NSMutableAttributedString_NSInflection__enumerateFormattableBlocksInRange_usingBlock___block_invoke;
  v11 = &unk_1E69F4458;
  v13 = &v19;
  v14 = &v15;
  v12 = a4;
  [NSAttributedString enumerateAttributesInRange:"enumerateAttributesInRange:options:usingBlock:" options:? usingBlock:?];
  v5 = v20[5];
  if (v5)
  {
    v6 = v16[3];
    v7 = 0;
    (*(a4 + 2))(a4, v5, 0, v6, &v7);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

uint64_t __88__NSMutableAttributedString_NSInflection__enumerateFormattableBlocksInRange_usingBlock___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKeyedSubscript:@"NSLocalizedNumberFormat"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
  }

  result = *(*(a1[5] + 8) + 40);
  if (result != v7)
  {
    result = [result isEqual:v7];
    if ((result & 1) == 0)
    {
      v9 = a3 + a4;
      if (*(*(a1[5] + 8) + 40))
      {
        (*(a1[4] + 16))();
        v10 = *(*(a1[5] + 8) + 40);
      }

      else
      {
        v10 = 0;
      }

      result = [v7 copy];
      *(*(a1[5] + 8) + 40) = result;
      *(*(a1[6] + 8) + 24) = v9;
    }
  }

  return result;
}

- (void)appendLocalizedFormat:(NSAttributedString *)format
{
  va_start(va, format);
  v5 = [NSAttributedString alloc];
  v6 = -[NSAttributedString _initWithFormat:options:locale:arguments:](v5, "_initWithFormat:options:locale:arguments:", format, 0, [MEMORY[0x1E695DF58] currentLocale], va);
  [(NSMutableAttributedString *)self appendAttributedString:v6];
}

@end