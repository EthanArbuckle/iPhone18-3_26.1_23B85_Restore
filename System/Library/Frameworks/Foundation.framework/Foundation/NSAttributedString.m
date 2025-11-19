@interface NSAttributedString
+ (NSAttributedString)allocWithZone:(_NSZone *)a3;
+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format;
+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format context:(NSDictionary *)context;
+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options;
+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options context:(NSDictionary *)context;
+ (id)_attributedStringWithFormat:(id)a3 attributeOptions:(unint64_t)a4 formattingOptions:(id)a5 locale:(id)a6 arguments:(char *)a7;
+ (id)_attributedStringWithFormat:(id)a3 options:(unint64_t)a4 locale:(id)a5 arguments:(char *)a6;
- (BOOL)_willRequireIntentResolutionWhenContainingAttribute:(id)a3 value:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAttributedString:(NSAttributedString *)other;
- (NSAttributedString)attributedStringByInflectingString;
- (NSAttributedString)attributedSubstringFromRange:(NSRange)range;
- (NSAttributedString)initWithCoder:(id)a3;
- (NSAttributedString)initWithContentsOfMarkdownFileAtURL:(NSURL *)markdownFile options:(NSAttributedStringMarkdownParsingOptions *)options baseURL:(NSURL *)baseURL error:(NSError *)error;
- (NSAttributedString)initWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options locale:(NSLocale *)locale;
- (NSAttributedString)initWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options locale:(NSLocale *)locale context:(NSDictionary *)context;
- (NSAttributedString)initWithMarkdown:(NSData *)markdown options:(NSAttributedStringMarkdownParsingOptions *)options baseURL:(NSURL *)baseURL error:(NSError *)error;
- (NSAttributedString)initWithMarkdownString:(NSString *)markdownString options:(NSAttributedStringMarkdownParsingOptions *)options baseURL:(NSURL *)baseURL error:(NSError *)error;
- (NSDictionary)attributesAtIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;
- (NSUInteger)length;
- (id)__initWithFormat:(id)a3 attributeOptions:(unint64_t)a4 formattingOptions:(id)a5 locale:(id)a6 context:(id)a7 arguments:(char *)a8;
- (id)_createAttributedSubstringWithRange:(_NSRange)a3;
- (id)_firstValueOfAttributeWithKey:(id)a3 inRange:(_NSRange)a4;
- (id)_identicalAttributesInRange:(_NSRange)a3;
- (id)_inflectedAttributedString;
- (id)_initWithFormat:(id)a3 options:(unint64_t)a4 locale:(id)a5;
- (id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range;
- (id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit;
- (id)attributedStringByWeaklyAddingAttributes:(id)a3;
- (id)attributedSubstringFromRange:(_NSRange)a3 replacingCharactersInRanges:(const _NSRange *)a4 numberOfRanges:(int64_t)a5 withString:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAttribute:(NSAttributedStringKey)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void *)block;
- (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void *)block;
@end

@implementation NSAttributedString

- (unint64_t)hash
{
  v2 = [(NSAttributedString *)self string];

  return [(NSString *)v2 hash];
}

+ (NSAttributedString)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_self() == a1)
  {
    v4 = objc_opt_self();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location effectiveRange:(NSRangePointer)range
{
  v6 = [(NSAttributedString *)self attributesAtIndex:location effectiveRange:range];

  return [(NSDictionary *)v6 objectForKey:attrName];
}

- (NSAttributedString)attributedSubstringFromRange:(NSRange)range
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x1E69E9840];
  v7 = range.location + range.length;
  v8 = [(NSAttributedString *)self string];
  v9 = [(NSString *)v8 length];
  if (v7 > v9)
  {
    v17 = objc_opt_class();
    v18 = _NSNameOfClass(v17);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%s %s: Out of bounds", v18, sel_getName(a2)), 0}];
    objc_exception_throw(v19);
  }

  if (length == v9)
  {
    v10 = [(NSAttributedString *)self copyWithZone:0];

    return v10;
  }

  else
  {
    v12 = [objc_allocWithZone(NSConcreteMutableAttributedString) initWithString:{-[NSString substringWithRange:](v8, "substringWithRange:", location, length)}];
    if (location < v7)
    {
      v13 = location;
      do
      {
        v20 = 0;
        v21 = 0;
        v14 = [(NSAttributedString *)self attributesAtIndex:v13 effectiveRange:&v20];
        if (v21 + v20 <= v7)
        {
          v15 = v20 - v13 + v21;
        }

        else
        {
          v15 = v7 - v13;
        }

        if (v20 != v13 || v21 + v20 > v7)
        {
          v21 = v15;
        }

        [(NSAttributedString *)v12 addAttributes:v14 range:v13 - location, v15];
        v13 += v21;
      }

      while (v13 < v7);
    }

    return v12;
  }
}

- (id)attributedSubstringFromRange:(_NSRange)a3 replacingCharactersInRanges:(const _NSRange *)a4 numberOfRanges:(int64_t)a5 withString:(id)a6
{
  length = a3.length;
  location = a3.location;
  v12 = objc_alloc_init(NSMutableAttributedString);
  _CFAutoreleasePoolPush();
  v13 = location;
  if (a5 >= 1)
  {
    do
    {
      [(NSMutableAttributedString *)v12 appendAttributedString:[(NSAttributedString *)self attributedSubstringFromRange:?]];
      [(NSMutableAttributedString *)v12 replaceCharactersInRange:[(NSAttributedString *)v12 length]- 1 withString:1, a6];
      v14 = a4->location;
      v15 = a4->length;
      ++a4;
      v13 = v15 + v14;
      --a5;
    }

    while (a5);
  }

  if (location + length > v13)
  {
    [(NSMutableAttributedString *)v12 appendAttributedString:[(NSAttributedString *)self attributedSubstringFromRange:?]];
  }

  _CFAutoreleasePoolPop();
  return v12;
}

- (id)attributedStringByWeaklyAddingAttributes:(id)a3
{
  v5 = [(NSAttributedString *)self mutableCopyWithZone:0];
  [v5 addAttributesWeakly:a3 range:{0, -[NSAttributedString length](self, "length")}];
  v6 = [v5 copyWithZone:0];

  return v6;
}

- (NSUInteger)length
{
  v2 = [(NSAttributedString *)self string];

  return [(NSString *)v2 length];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_self();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(NSAttributedString *)self isEqualToAttributedString:a3];
}

- (BOOL)isEqualToAttributedString:(NSAttributedString *)other
{
  v20 = *MEMORY[0x1E69E9840];
  if (other == self)
  {
    goto LABEL_15;
  }

  v5 = [(NSString *)[(NSAttributedString *)self string] isEqual:[(NSAttributedString *)other string]];
  if (!v5)
  {
    return v5;
  }

  v6 = [(NSAttributedString *)self length];
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  if (!v6)
  {
LABEL_15:
    LOBYTE(v5) = 1;
    return v5;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  for (i = 0; i < v7; i = v16 + v17 >= (v18 + v19) ? v18 + v19 : v16 + v17)
  {
    if (i >= v11 + v10)
    {
      v13 = [(NSAttributedString *)self attributesAtIndex:i effectiveRange:&v18];
      v8 = v16;
      v9 = v17;
    }

    if (i >= v9 + v8)
    {
      v12 = [(NSAttributedString *)other attributesAtIndex:i effectiveRange:&v16];
    }

    v5 = [(NSDictionary *)v13 isEqualToDictionary:v12];
    if (!v5)
    {
      break;
    }

    v8 = v16;
    v9 = v17;
    v10 = v18;
    v11 = v19;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(NSMutableAttributedString *)NSConcreteMutableAttributedString allocWithZone:a3];

  return [(NSConcreteMutableAttributedString *)v4 initWithAttributedString:self];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(NSAttributedString *)NSConcreteAttributedString allocWithZone:a3];

  return [(NSConcreteAttributedString *)v4 initWithAttributedString:self];
}

- (id)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(NSAttributedString *)self length];
  v4 = [NSMutableString stringWithCapacity:2 * v3];
  v10 = 0;
  v11 = 0;
  if (v3)
  {
    for (i = 0; i < v3; v10 = i)
    {
      v6 = [(NSAttributedString *)self attributesAtIndex:i effectiveRange:&v10];
      v7 = [(NSString *)v4 length];
      v8 = [(NSAttributedString *)self string];
      [(NSMutableString *)v4 replaceCharactersInRange:v7 withString:0, [(NSString *)v8 substringWithRange:v10, v11]];
      [(NSMutableString *)v4 replaceCharactersInRange:[(NSString *)v4 length] withString:0, [(NSDictionary *)v6 description]];
      i = v10 + v11;
    }
  }

  return v4;
}

- (NSDictionary)attributesAtIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit
{
  length = rangeLimit.length;
  v6 = rangeLimit.location;
  v18 = *MEMORY[0x1E69E9840];
  v9 = [(NSAttributedString *)self attributesAtIndex:location effectiveRange:?];
  if (range)
  {
    v17 = *range;
    v10 = v6 + length;
    do
    {
      v11 = v17.length + v17.location;
    }

    while (v17.length + v17.location < v10 && [(NSDictionary *)[(NSAttributedString *)self attributesAtIndex:v17.length + v17.location effectiveRange:&v17] isEqualToDictionary:v9]);
    v17 = *range;
    do
    {
      v12 = v17.location;
    }

    while (v17.location > v6 && [(NSDictionary *)[(NSAttributedString *)self attributesAtIndex:v17.location - 1 effectiveRange:&v17] isEqualToDictionary:v9]);
    if (v10 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    if (v6 >= v11 || v12 > v6)
    {
      v14 = v13 - v12;
      v15 = v6 > v12 || v12 >= v10;
      if (v15)
      {
        v6 = 0;
      }

      else
      {
        v6 = v12;
      }

      if (v15)
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = v13 - v6;
    }

    range->location = v6;
    range->length = v14;
  }

  return v9;
}

- (id)attribute:(NSAttributedStringKey)attrName atIndex:(NSUInteger)location longestEffectiveRange:(NSRangePointer)range inRange:(NSRange)rangeLimit
{
  length = rangeLimit.length;
  v7 = rangeLimit.location;
  v23 = *MEMORY[0x1E69E9840];
  v11 = [(NSAttributedString *)self attribute:attrName atIndex:location effectiveRange:?];
  if (range)
  {
    v22 = *range;
    v12 = v7 + length;
    do
    {
      v13 = v22.length + v22.location;
      if (v22.length + v22.location >= v12)
      {
        break;
      }

      v14 = [(NSAttributedString *)self attribute:attrName atIndex:v22.length + v22.location effectiveRange:&v22];
    }

    while (v14 == v11 || [v14 isEqual:v11]);
    v22 = *range;
    do
    {
      v15 = v22.location;
      if (v22.location <= v7)
      {
        break;
      }

      v16 = [(NSAttributedString *)self attribute:attrName atIndex:v22.location - 1 effectiveRange:&v22];
    }

    while (v16 == v11 || [v16 isEqual:v11]);
    if (v12 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v12;
    }

    if (v7 >= v13 || v15 > v7)
    {
      v18 = v17 - v15;
      if (v15 < v12)
      {
        v19 = v15;
      }

      else
      {
        v19 = 0;
      }

      if (v15 >= v12)
      {
        v18 = 0;
      }

      v20 = v7 > v15;
      if (v7 <= v15)
      {
        v7 = v19;
      }

      else
      {
        v7 = 0;
      }

      if (v20)
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v17 - v7;
    }

    range->location = v7;
    range->length = v18;
  }

  return v11;
}

- (void)enumerateAttributesInRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void *)block
{
  v26 = *MEMORY[0x1E69E9840];
  if (enumerationRange.length)
  {
    v6 = opts;
    length = enumerationRange.length;
    location = enumerationRange.location;
    v10 = ((enumerationRange.length - 1) & ((opts << 62) >> 63)) + enumerationRange.location;
    v25 = 0;
    v11 = [(NSAttributedString *)self length];
    while (1)
    {
      v23 = 0;
      v24 = 0;
      if ((v6 & 0x100000) != 0)
      {
        v12 = [(NSAttributedString *)self attributesAtIndex:v10 effectiveRange:&v23];
        v13 = v23;
        if (v24 + v23 >= length + location)
        {
          v14 = length + location;
        }

        else
        {
          v14 = v24 + v23;
        }

        v15 = v14 - location;
        v16 = v23 > location || location >= v24 + v23;
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = location;
        }

        if (v16)
        {
          v15 = 0;
        }

        v18 = v14 - v23;
        if (location > v23 || v23 >= length + location)
        {
          v13 = v17;
          v20 = v15;
        }

        else
        {
          v20 = v18;
        }

        v23 = v13;
        v24 = v20;
      }

      else
      {
        v12 = [(NSAttributedString *)self attributesAtIndex:v10 longestEffectiveRange:&v23 inRange:location, length];
      }

      v21 = v12;
      (*(block + 2))(block, v21, v23, v24, &v25);

      if (v25)
      {
        break;
      }

      if ((v6 & 2) != 0)
      {
        if (v23 <= location)
        {
          return;
        }

        v10 = v23 - 1;
      }

      else
      {
        v22 = [(NSAttributedString *)self length];
        if (v22 == v11)
        {
          v10 = v24 + v23;
        }

        else
        {
          v10 = v24 + v23 - v11 + v22;
        }

        if (v22 != v11)
        {
          length = length - v11 + v22;
        }

        if (v10 >= length + location)
        {
          return;
        }

        v11 = v22;
      }
    }
  }
}

- (void)enumerateAttribute:(NSAttributedStringKey)attrName inRange:(NSRange)enumerationRange options:(NSAttributedStringEnumerationOptions)opts usingBlock:(void *)block
{
  v28 = *MEMORY[0x1E69E9840];
  if (enumerationRange.length)
  {
    v7 = opts;
    length = enumerationRange.length;
    location = enumerationRange.location;
    v12 = ((enumerationRange.length - 1) & ((opts << 62) >> 63)) + enumerationRange.location;
    v27 = 0;
    v13 = [(NSAttributedString *)self length];
    while (1)
    {
      v25 = 0;
      v26 = 0;
      if ((v7 & 0x100000) != 0)
      {
        v14 = [(NSAttributedString *)self attribute:attrName atIndex:v12 effectiveRange:&v25];
        v15 = v25;
        if (v26 + v25 >= length + location)
        {
          v16 = length + location;
        }

        else
        {
          v16 = v26 + v25;
        }

        v17 = v16 - location;
        v18 = v25 > location || location >= v26 + v25;
        if (v18)
        {
          v19 = 0;
        }

        else
        {
          v19 = location;
        }

        if (v18)
        {
          v17 = 0;
        }

        v20 = v16 - v25;
        if (location > v25 || v25 >= length + location)
        {
          v15 = v19;
          v22 = v17;
        }

        else
        {
          v22 = v20;
        }

        v25 = v15;
        v26 = v22;
      }

      else
      {
        v14 = [(NSAttributedString *)self attribute:attrName atIndex:v12 longestEffectiveRange:&v25 inRange:location, length];
      }

      v23 = v14;
      (*(block + 2))(block, v23, v25, v26, &v27);

      if (v27)
      {
        break;
      }

      if ((v7 & 2) != 0)
      {
        if (v25 <= location)
        {
          return;
        }

        v12 = v25 - 1;
      }

      else
      {
        v24 = [(NSAttributedString *)self length];
        if (v24 == v13)
        {
          v12 = v26 + v25;
        }

        else
        {
          v12 = v26 + v25 - v13 + v24;
        }

        if (v24 != v13)
        {
          length = length - v13 + v24;
        }

        if (v12 >= length + location)
        {
          return;
        }

        v13 = v24;
      }
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [(NSAttributedString *)self length];
  v6 = *(MEMORY[0x1E695E9D8] + 16);
  *&keyCallBacks.version = *MEMORY[0x1E695E9D8];
  *&keyCallBacks.release = v6;
  keyCallBacks.equal = 0;
  keyCallBacks.hash = 0;
  v7 = [a3 allowsKeyedCoding];
  v32 = self;
  v8 = [(NSAttributedString *)self string];
  if ((v7 & 1) == 0)
  {
    [a3 encodeObject:v8];
    if (!v5)
    {
      return;
    }

    v13 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = objc_autoreleasePoolPush();
      v37 = 0;
      v38 = 0;
      v17 = [(NSAttributedString *)v32 attributesAtIndex:v14 longestEffectiveRange:&v37 inRange:v14, v5 - v14];
      LODWORD(v34) = CFDictionaryGetValue(v13, v17);
      LODWORD(value) = v38;
      if (v34)
      {
        [a3 encodeValuesOfObjCTypes:{"iI", &v34, &value}];
      }

      else
      {
        LODWORD(v34) = v15;
        CFDictionaryAddValue(v13, v17, v15);
        [a3 encodeValuesOfObjCTypes:{"iI", &v34, &value}];
        [a3 encodeObject:v17];
        ++v15;
      }

      v14 += v38;
      objc_autoreleasePoolPop(v16);
    }

    while (v14 < v5);
    if (!v13)
    {
      return;
    }

LABEL_15:
    CFRelease(v13);
    return;
  }

  [a3 encodeObject:v8 forKey:@"NSString"];
  if (v5)
  {
    v34 = 0;
    v35 = 0;
    v9 = [(NSAttributedString *)self attributesAtIndex:0 longestEffectiveRange:&v34 inRange:0, v5];
    v10 = MEMORY[0x1E695E0F8];
    v11 = v9 ? v9 : MEMORY[0x1E695E0F8];
    v12 = v11;
    if (v35 == v5)
    {
      [a3 encodeObject:v12 forKey:@"NSAttributes"];
      v13 = 0;
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:20];
      v19 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:100];
      v13 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
      v20 = 0;
      while (1)
      {
        v21 = objc_autoreleasePoolPush();
        value = 0;
        if (!CFDictionaryGetValueIfPresent(v13, v12, &value))
        {
          value = [v18 count];
          CFDictionaryAddValue(v13, v12, value);
          [v18 addObject:v12];
        }

        LOBYTE(v22) = v35;
        v23 = &v37;
        if (v35 >= 0x80)
        {
          v24 = v35;
          do
          {
            *v23 = v24 | 0x80;
            v23 = (v23 + 1);
            v22 = v24 >> 7;
            v25 = v24 >> 14;
            v24 >>= 7;
          }

          while (v25);
        }

        *v23 = v22;
        v26 = v23 + 1;
        v27 = value;
        if (value < 0x80)
        {
          LOBYTE(v28) = value;
        }

        else
        {
          do
          {
            *v26++ = v27 | 0x80;
            v28 = v27 >> 7;
            v29 = v27 >> 14;
            v27 >>= 7;
          }

          while (v29);
        }

        *v26 = v28;
        [v19 appendBytes:&v37 length:v26 - &v37 + 1];
        v20 += v35;
        if (v5 == v20)
        {
          break;
        }

        v30 = [(NSAttributedString *)v32 attributesAtIndex:v20 longestEffectiveRange:&v34 inRange:v20, v5 - v20];
        if (v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = v10;
        }

        v12 = v31;
        objc_autoreleasePoolPop(v21);
      }

      objc_autoreleasePoolPop(v21);
      [a3 encodeObject:v18 forKey:@"NSAttributes"];
      [a3 encodeObject:v19 forKey:@"NSAttributeInfo"];
    }

    if (v13)
    {
      goto LABEL_15;
    }
  }
}

- (NSAttributedString)initWithCoder:(id)a3
{
  v5 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (_NSReadMutableAttributedStringWithCoder(a3, v5))
  {
    v6 = [(NSAttributedString *)self initWithAttributedString:v5];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (BOOL)_willRequireIntentResolutionWhenContainingAttribute:(id)a3 value:(id)a4
{
  v6 = [a3 isEqual:@"NSInlinePresentationIntent"];
  if (a4 && v6 && ![a4 isEqual:&off_1EEF56C48])
  {
    return 1;
  }

  result = [a3 isEqual:@"NSPresentationIntent"];
  if (!a4)
  {
    return 0;
  }

  return result;
}

- (id)_createAttributedSubstringWithRange:(_NSRange)a3
{
  v3 = [(NSAttributedString *)self attributedSubstringFromRange:a3.location, a3.length];

  return v3;
}

- (id)_firstValueOfAttributeWithKey:(id)a3 inRange:(_NSRange)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__NSAttributedString_NSInflection___firstValueOfAttributeWithKey_inRange___block_invoke;
  v6[3] = &unk_1E69F4070;
  v6[4] = &v7;
  [(NSAttributedString *)self enumerateAttribute:a3 inRange:a4.location options:a4.length usingBlock:0x100000, v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__74__NSAttributedString_NSInflection___firstValueOfAttributeWithKey_inRange___block_invoke(void *result, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v6 = result;
    result = a2;
    *(*(v6[4] + 8) + 40) = result;
    *a5 = 1;
  }

  return result;
}

- (id)_inflectedAttributedString
{
  v2 = [(NSAttributedString *)self mutableCopy];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  [v2 _inflectWithLocale:v3 replacements:MEMORY[0x1E695E0F0] concepts:MEMORY[0x1E695E0F0] preflight:1];

  return v2;
}

- (id)_identicalAttributesInRange:(_NSRange)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__8;
  v12 = __Block_byref_object_dispose__8;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__NSAttributedString_NSInflection___identicalAttributesInRange___block_invoke;
  v7[3] = &unk_1E69F4098;
  v7[4] = &v8;
  [(NSAttributedString *)self enumerateAttributesInRange:a3.location options:a3.length usingBlock:0x100000, v7];
  v3 = v9[5];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __64__NSAttributedString_NSInflection___identicalAttributesInRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v7 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if (([objc_msgSend(a2 objectForKeyedSubscript:{v14), "isEqual:", objc_msgSend(*(*(*(a1 + 32) + 8) + 40), "objectForKeyedSubscript:", v14)}] & 1) == 0)
          {
            [*(*(*(a1 + 32) + 8) + 40) removeObjectForKey:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v11);
    }

    result = [*(*(*(a1 + 32) + 8) + 40) count];
    *a5 = result == 0;
  }

  else
  {
    result = [a2 mutableCopy];
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

- (NSAttributedString)attributedStringByInflectingString
{
  v2 = [(NSAttributedString *)self mutableCopy];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  [v2 _inflectWithLocale:v3 replacements:MEMORY[0x1E695E0F0] concepts:MEMORY[0x1E695E0F0] preflight:1];

  return v2;
}

- (id)_initWithFormat:(id)a3 options:(unint64_t)a4 locale:(id)a5
{
  if (_os_feature_enabled_impl())
  {
    v9 = a5;
  }

  else
  {
    v9 = 0;
  }

  return [(NSAttributedString *)self _initWithFormat:a3 options:a4 locale:v9 arguments:&v11, &v11];
}

- (id)__initWithFormat:(id)a3 attributeOptions:(unint64_t)a4 formattingOptions:(id)a5 locale:(id)a6 context:(id)a7 arguments:(char *)a8
{
  obj = a4;
  v86 = *MEMORY[0x1E69E9840];
  v77[1] = 0;
  v78 = 0;
  v77[0] = 0;
  [a3 attribute:@"NSFormatSpecifierConfiguration" atIndex:0 longestEffectiveRange:v77 inRange:{0, objc_msgSend(a3, "length")}];
  [a3 length];
  if (_os_feature_enabled_impl() && ![objc_msgSend(a6 "localeIdentifier")])
  {
    a6 = [MEMORY[0x1E695DF58] currentLocale];
  }

  [a5 pluralizationNumber];
  [a3 string];
  v53 = a8;
  v11 = _CFStringCreateWithFormatAndArgumentsReturningMetadata();
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  if (v11)
  {
    v68 = [[NSMutableAttributedString alloc] initWithString:v11, v53];
    v64 = [a3 length];
    v54 = self;
    v55 = v11;
    v65 = [v78 count];
    if ((v65 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v63 = *MEMORY[0x1E695E1E0];
      v62 = *MEMORY[0x1E695E1D8];
      v61 = *MEMORY[0x1E695E1D0];
      v60 = *MEMORY[0x1E695E1C8];
      v59 = *MEMORY[0x1E695E1B8];
      v58 = *MEMORY[0x1E695E1A8];
      do
      {
        if (v14 >= v65)
        {
          v15 = 0;
        }

        else
        {
          v15 = [v78 objectAtIndexedSubscript:v14];
        }

        v16 = [v15 objectForKeyedSubscript:v63];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v16 = 0;
        }

        v17 = [v15 objectForKeyedSubscript:v62];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = 0;
        }

        if (v16)
        {
          v18 = v17 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = [v16 integerValue];
          v20 = [v17 integerValue];
        }

        v72[8] = MEMORY[0x1E69E9820];
        v72[9] = 3221225472;
        v21 = v64;
        if (v15)
        {
          v21 = v19;
        }

        v72[10] = __132__NSAttributedString_NSAttributedStringFormattingSPI____initWithFormat_attributeOptions_formattingOptions_locale_context_arguments___block_invoke;
        v72[11] = &unk_1E69F45C0;
        v72[14] = v13;
        v72[15] = v12;
        v72[16] = v21 - v12;
        v72[13] = &v73;
        v72[12] = v68;
        [a3 enumerateAttributesInRange:v12 options:? usingBlock:?];
        if (!v15)
        {
          break;
        }

        v22 = [v15 objectForKeyedSubscript:v61];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = 0;
        }

        v23 = [v15 objectForKeyedSubscript:v60];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = 0x7FFFFFFFFFFFFFFFLL;
        v26 = 0x7FFFFFFFFFFFFFFFLL;
        if (v22 && v24)
        {
          v25 = [v22 integerValue];
          v26 = [v24 integerValue];
        }

        v27 = [v15 objectForKeyedSubscript:v59];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v27 != 0)) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }

          v27 = [v28 __baseAttributedString];
        }

        v29 = [v15 objectForKeyedSubscript:v58];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = [v30 BOOLValue];
        v32 = [a3 attributesAtIndex:v19 effectiveRange:0];
        v33 = obj & (v27 != 0);
        if (!v32)
        {
          v33 = 1;
        }

        if ((v33 & 1) == 0)
        {
          [(NSMutableAttributedString *)v68 addAttributes:v32 range:v25, v26];
        }

        if (v31)
        {
          [(NSMutableAttributedString *)v68 addAttributes:v32 range:v25 - 1, 1];
          [(NSMutableAttributedString *)v68 addAttributes:v32 range:v25 + v26, 1];
        }

        if (v27)
        {
          v34 = [v27 length];
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 3221225472;
          v72[2] = __132__NSAttributedString_NSAttributedStringFormattingSPI____initWithFormat_attributeOptions_formattingOptions_locale_context_arguments___block_invoke_2;
          v72[3] = &unk_1E69F45E8;
          v72[6] = v25;
          v72[7] = v26;
          v72[5] = &v73;
          v72[4] = v68;
          [v27 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v72}];
        }

        v35 = v25 + v26;
        v12 = v19 + v20;
        ++v14;
        v13 = v35 + v31;
      }

      while (v65 + 1 != v14);
    }

    if ((obj & 2) != 0)
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      obja = v78;
      v36 = [v78 countByEnumeratingWithState:&v82 objects:v81 count:16];
      if (v36)
      {
        v70 = *v83;
        v37 = *MEMORY[0x1E695E1C0];
        v38 = *MEMORY[0x1E695E1D0];
        v39 = *MEMORY[0x1E695E1C8];
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v83 != v70)
            {
              objc_enumerationMutation(obja);
            }

            v41 = *(*(&v82 + 1) + 8 * i);
            v42 = [v41 objectForKeyedSubscript:v37];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = v42;
            }

            else
            {
              v43 = 0;
            }

            v44 = [v41 objectForKeyedSubscript:v38];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v44 = 0;
            }

            v45 = [v41 objectForKeyedSubscript:v39];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v45;
            }

            else
            {
              v46 = 0;
            }

            if (v44)
            {
              v47 = v46 == 0;
            }

            else
            {
              v47 = 1;
            }

            if (v47)
            {
              v49 = 0x7FFFFFFFFFFFFFFFLL;
              v48 = 0x7FFFFFFFFFFFFFFFLL;
              if (!v43)
              {
                continue;
              }
            }

            else
            {
              v49 = [v44 integerValue];
              v48 = [v46 integerValue];
              if (!v43)
              {
                continue;
              }
            }

            if (v49 != 0x7FFFFFFFFFFFFFFFLL && v48 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v79 = @"NSReplacementIndex";
              v80 = v43;
              -[NSMutableAttributedString addAttributes:range:](v68, "addAttributes:range:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1], v49, v48);
            }
          }

          v36 = [obja countByEnumeratingWithState:&v82 objects:v81 count:16];
        }

        while (v36);
      }
    }

    if (v74[3] & 1) != 0 || (v50 = [(NSAttributedString *)v68 length], v71[0] = MEMORY[0x1E69E9820], v71[1] = 3221225472, v71[2] = __132__NSAttributedString_NSAttributedStringFormattingSPI____initWithFormat_attributeOptions_formattingOptions_locale_context_arguments___block_invoke_3, v71[3] = &unk_1E69F4098, v71[4] = &v73, [(NSAttributedString *)v68 enumerateAttributesInRange:0 options:v50 usingBlock:0x100000, v71], (v74[3]))
    {
      -[NSMutableAttributedString _inflectWithLocale:replacements:concepts:preflight:](v68, "_inflectWithLocale:replacements:concepts:preflight:", a6, +[_NSAttributedStringReplacement _replacementsFromMetadataArray:](_NSAttributedStringReplacement, "_replacementsFromMetadataArray:", v78), [a7 objectForKeyedSubscript:@"NSContextInflectionConcepts"], 0);
    }

    [(NSMutableAttributedString *)v68 removeAttribute:@"NSFormatSpecifierConfiguration" range:0, [(NSAttributedString *)v68 length]];
    v51 = [(NSAttributedString *)v54 initWithAttributedString:v68];
  }

  else
  {

    v51 = [(NSAttributedString *)self initWithString:&stru_1EEEFDF90, v53];
  }

  _Block_object_dispose(&v73, 8);
  return v51;
}

uint64_t __132__NSAttributedString_NSAttributedStringFormattingSPI____initWithFormat_attributeOptions_formattingOptions_locale_context_arguments___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a2 objectForKeyedSubscript:@"NSInflect"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAlternative") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionReferentConcept") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAgreementConcept") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAgreementArgument") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSLocalizedNumberFormat"))
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  v8 = a1[6] + a3 - a1[7];
  v9 = a1[4];

  return [v9 addAttributes:a2 range:{v8, a4}];
}

uint64_t __132__NSAttributedString_NSAttributedStringFormattingSPI____initWithFormat_attributeOptions_formattingOptions_locale_context_arguments___block_invoke_2(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if ([a2 objectForKeyedSubscript:@"NSInflect"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAlternative") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionReferentConcept") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAgreementConcept") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAgreementArgument") || objc_msgSend(a2, "objectForKeyedSubscript:", @"NSLocalizedNumberFormat"))
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  v8 = a1[4];
  v9 = a1[6] + a3;

  return [v8 addAttributes:a2 range:{v9, a4}];
}

uint64_t __132__NSAttributedString_NSAttributedStringFormattingSPI____initWithFormat_attributeOptions_formattingOptions_locale_context_arguments___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 objectForKeyedSubscript:@"NSInflect"];
  if (result || (result = [a2 objectForKeyedSubscript:@"NSInflectionAlternative"]) != 0 || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionReferentConcept")) != 0 || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAgreementConcept")) != 0 || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"NSInflectionAgreementArgument")) != 0 || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"NSLocalizedNumberFormat")) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

+ (id)_attributedStringWithFormat:(id)a3 options:(unint64_t)a4 locale:(id)a5 arguments:(char *)a6
{
  v6 = [[a1 alloc] _initWithFormat:a3 options:a4 locale:a5 arguments:a6];

  return v6;
}

+ (id)_attributedStringWithFormat:(id)a3 attributeOptions:(unint64_t)a4 formattingOptions:(id)a5 locale:(id)a6 arguments:(char *)a7
{
  v7 = [[a1 alloc] _initWithFormat:a3 attributeOptions:a4 formattingOptions:a5 locale:a6 arguments:a7];

  return v7;
}

- (NSAttributedString)initWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options locale:(NSLocale *)locale
{
  va_start(va, locale);
  if (_os_feature_enabled_impl())
  {
    v9 = locale;
  }

  else
  {
    v9 = 0;
  }

  return [(NSAttributedString *)self _initWithFormat:format options:options locale:v9 arguments:va, va];
}

- (NSAttributedString)initWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options locale:(NSLocale *)locale context:(NSDictionary *)context
{
  va_start(va, context);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    locale = [MEMORY[0x1E695DF58] currentLocale];
  }

  return [(NSAttributedString *)self __initWithFormat:format attributeOptions:options formattingOptions:0 locale:locale context:context arguments:va, va];
}

+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format
{
  va_start(va, format);
  v4 = [a1 alloc];
  return [v4 _initWithFormat:format options:0 locale:objc_msgSend(MEMORY[0x1E695DF58] arguments:"currentLocale"), va];
}

+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format context:(NSDictionary *)context
{
  va_start(va, context);
  v6 = [a1 alloc];
  return [v6 __initWithFormat:format attributeOptions:0 formattingOptions:0 locale:objc_msgSend(MEMORY[0x1E695DF58] context:"currentLocale") arguments:context, va];
}

+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options
{
  va_start(va, options);
  v6 = [a1 alloc];
  return [v6 _initWithFormat:format options:options locale:objc_msgSend(MEMORY[0x1E695DF58] arguments:"currentLocale"), va];
}

+ (NSAttributedString)localizedAttributedStringWithFormat:(NSAttributedString *)format options:(NSAttributedStringFormattingOptions)options context:(NSDictionary *)context
{
  va_start(va, context);
  v8 = [a1 alloc];
  return [v8 __initWithFormat:format attributeOptions:options formattingOptions:0 locale:objc_msgSend(MEMORY[0x1E695DF58] context:"currentLocale") arguments:context, va];
}

- (NSAttributedString)initWithMarkdownString:(NSString *)markdownString options:(NSAttributedStringMarkdownParsingOptions *)options baseURL:(NSURL *)baseURL error:(NSError *)error
{
  v17[1] = *MEMORY[0x1E69E9840];

  v10 = [(NSString *)markdownString length];
  v17[0] = 0;
  v18.location = 0;
  v18.length = v10;
  Bytes = CFStringGetBytes(markdownString, v18, 0x8000100u, 0, 0, 0, 0, v17);
  if (Bytes < 1)
  {
    return 0;
  }

  v12 = v17[0];
  if (v17[0] <= 0x80uLL)
  {
    if (v17[0])
    {
      MEMORY[0x1EEE9AC00](Bytes);
      v15 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v12);
    }

    else
    {
      v15 = 0;
    }

    v20.location = 0;
    v20.length = v10;
    if (CFStringGetBytes(markdownString, v20, 0x8000100u, 0, 0, v15, v12, 0) >= 1)
    {
      return newAttributedStringFromMarkdown(v15, v17[0], options, baseURL, error);
    }

    goto LABEL_11;
  }

  v13 = malloc_type_malloc(v17[0], 0x100004077774924uLL);
  v19.location = 0;
  v19.length = v10;
  if (CFStringGetBytes(markdownString, v19, 0x8000100u, 0, 0, v13, v17[0], 0) <= 0)
  {
    free(v13);
LABEL_11:
    if (error)
    {
      v14 = 0;
      *error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:259 userInfo:0];
      return v14;
    }

    return 0;
  }

  v14 = newAttributedStringFromMarkdown(v13, v17[0], options, baseURL, error);
  free(v13);
  return v14;
}

- (NSAttributedString)initWithContentsOfMarkdownFileAtURL:(NSURL *)markdownFile options:(NSAttributedStringMarkdownParsingOptions *)options baseURL:(NSURL *)baseURL error:(NSError *)error
{
  v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:markdownFile options:1 error:error];
  if (v10)
  {

    return [(NSAttributedString *)self initWithMarkdown:v10 options:options baseURL:baseURL error:error];
  }

  else
  {

    return 0;
  }
}

- (NSAttributedString)initWithMarkdown:(NSData *)markdown options:(NSAttributedStringMarkdownParsingOptions *)options baseURL:(NSURL *)baseURL error:(NSError *)error
{
  v10 = [(NSData *)markdown bytes];
  v11 = [(NSData *)markdown length];

  return newAttributedStringFromMarkdown(v10, v11, options, baseURL, error);
}

@end