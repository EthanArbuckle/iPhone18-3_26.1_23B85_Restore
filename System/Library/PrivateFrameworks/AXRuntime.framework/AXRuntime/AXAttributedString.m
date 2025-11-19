@interface AXAttributedString
+ (id)axAttributedStringWithString:(id)a3;
- (AXAttributedString)initWithCFAttributedString:(__CFAttributedString *)a3;
- (AXAttributedString)initWithString:(id)a3;
- (AXAttributedString)initWithStringOrAttributedString:(id)a3;
- (BOOL)hasAttribute:(id)a3;
- (BOOL)hasAttributes;
- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:(id *)a3;
- (id)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:(id *)a3;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)attributeValueForKey:(id)a3;
- (id)attributedSubstringFromRange:(_NSRange)a3;
- (id)attributesAtIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)axAttributedStringByReplacingOccurrencesOfString:(id)a3 withString:(id)a4;
- (id)axAttributedStringDescription;
- (id)axStringByReplacingCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (id)coalescedAttributes;
- (id)coalescedFontAttributes;
- (id)copyWithZone:(_NSZone *)a3;
- (id)lowercaseString;
- (id)stringByReplacingOccurrencesOfString:(id)a3 withString:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6;
- (id)stringByTrimmingCharactersInSet:(id)a3;
- (id)substringFromIndex:(unint64_t)a3;
- (id)substringWithRange:(_NSRange)a3;
- (id)uppercaseString;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)appendAXAttributedString:(id)a3;
- (void)appendFormat:(id)a3;
- (void)appendString:(id)a3;
- (void)appendStringOrAXAttributedString:(id)a3;
- (void)convertAttachmentsWithBlock:(id)a3;
- (void)dealloc;
- (void)enumerateAttributesInRange:(_NSRange)a3 usingBlock:(id)a4;
- (void)enumerateAttributesUsingBlock:(id)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
- (void)removeAttributes:(id)a3;
- (void)replaceString:(__CFString *)a3;
- (void)setAttribute:(id)a3 forKey:(id)a4;
- (void)setAttribute:(id)a3 forKey:(id)a4 withRange:(_NSRange)a5;
- (void)setAttributes:(id)a3;
- (void)setAttributes:(id)a3 withRange:(_NSRange)a4;
@end

@implementation AXAttributedString

- (unint64_t)length
{
  result = self->_string;
  if (result)
  {
    return CFAttributedStringGetLength(result);
  }

  return result;
}

- (void)dealloc
{
  string = self->_string;
  if (string)
  {
    CFRelease(string);
    self->_string = 0;
  }

  v4.receiver = self;
  v4.super_class = AXAttributedString;
  [(AXAttributedString *)&v4 dealloc];
}

+ (id)axAttributedStringWithString:(id)a3
{
  v3 = a3;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
  }

  else
  {
    v4 = [objc_alloc(objc_opt_class()) initWithString:v3];
  }

  v5 = v4;

  return v5;
}

- (AXAttributedString)initWithString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F3E63FB0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(__CFString *)v5 copy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AXAttributedString;
    v7 = [(AXAttributedString *)&v13 init];
    if (v7)
    {
      v8 = v7;
      v9 = *MEMORY[0x1E695E480];
      v10 = CFAttributedStringCreate(*MEMORY[0x1E695E480], v5, 0);
      v8->_string = CFAttributedStringCreateMutableCopy(v9, 0, v10);
      CFRelease(v10);
      v11 = [(__CFString *)v5 _accessibilityAttributedLocalizedString];
      [v8 _setAccessibilityAttributedLocalizedString:v11];
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (AXAttributedString)initWithCFAttributedString:(__CFAttributedString *)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(__CFAttributedString *)v4 string];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v7 = AXRuntimeLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(AXAttributedString *)v5 initWithCFAttributedString:v7];
      }

      v8 = 0;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = AXAttributedString;
      self = [(AXAttributedString *)&v10 init];
      if (!self)
      {
        v8 = 0;
        goto LABEL_12;
      }

      self->_string = CFAttributedStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v4);
      v6 = [self _accessibilityAttributedLocalizedString];
      v7 = [v6 copy];

      [self _setAccessibilityAttributedLocalizedString:v7];
      self = self;
      v8 = self;
    }

LABEL_12:
    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (AXAttributedString)initWithStringOrAttributedString:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXAttributedString *)self initWithCFAttributedString:v4];
  }

  else
  {
    v5 = [(AXAttributedString *)self initWithString:v4];
  }

  v6 = v5;

  v7 = v6;
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AXAttributedString allocWithZone:?], "initWithCFAttributedString:", [(AXAttributedString *)self cfAttributedString]];
  v5 = [self _accessibilityAttributedLocalizedString];
  if (v5)
  {
    v6 = -[AXAttributedString initWithCFAttributedString:]([AXAttributedString alloc], "initWithCFAttributedString:", [v5 cfAttributedString]);
    [v4 _setAccessibilityAttributedLocalizedString:v6];
  }

  return v4;
}

- (id)stringByTrimmingCharactersInSet:(id)a3
{
  v4 = a3;
  v5 = [(AXAttributedString *)self copy];
  v6 = [(CFMutableAttributedStringRef *)v5 rangeOfCharacterFromSet:v4 options:0 range:0, [(CFMutableAttributedStringRef *)v5 length]];
  if (v7.location && !v6)
  {
    v7.length = v7.location;
    do
    {
      v7.location = 0;
      CFAttributedStringReplaceString(v5[1], v7, &stru_1F3E63FB0);
      v8 = [(CFMutableAttributedStringRef *)v5 rangeOfCharacterFromSet:v4 options:0 range:0, [(CFMutableAttributedStringRef *)v5 length]];
      if (!v7.location)
      {
        break;
      }

      v7.length = v7.location;
    }

    while (!v8);
  }

  do
  {
    v9 = [(CFMutableAttributedStringRef *)v5 rangeOfCharacterFromSet:v4 options:4 range:0, [(CFMutableAttributedStringRef *)v5 length]];
    if (!v10)
    {
      break;
    }

    v11 = v9;
    v12 = v10;
    if (v9 + v10 != [(CFMutableAttributedStringRef *)v5 length])
    {
      break;
    }

    v15.location = v11;
    v15.length = v12;
    CFAttributedStringReplaceString(v5[1], v15, &stru_1F3E63FB0);
  }

  while (v11 != 0x7FFFFFFFFFFFFFFFLL);

  return v5;
}

- (void)convertAttachmentsWithBlock:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = 0;
  v5 = [(AXAttributedString *)self length];
  v6 = 0;
  while (1)
  {
    v7 = [(AXAttributedString *)self attributesAtIndex:v6 effectiveRange:&v12];
    v8 = v7;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v9 = [v7 objectForKey:UIAccessibilityTokenAttachment];
    v10 = v9;
    if (v4 && v9)
    {
      v11 = v4[2](v4, v9);
      [(AXAttributedString *)self setAttribute:v11 forKey:UIAccessibilityTokenAttachment withRange:v12, v13];
    }

    v12 += v13;

    v6 = v12;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL || v12 >= v5)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = CFAttributedStringGetString(self->_string);
  [v7 getCharacters:a3 range:{location, length}];
}

- (id)substringWithRange:(_NSRange)a3
{
  v3 = [(__CFAttributedString *)self->_string attributedSubstringFromRange:a3.location, a3.length];
  v4 = [[AXAttributedString alloc] initWithStringOrAttributedString:v3];

  return v4;
}

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = CFAttributedStringGetString(self->_string);
  LOWORD(a3) = [v4 characterAtIndex:a3];

  return a3;
}

- (void)replaceString:(__CFString *)a3
{
  if (a3)
  {
    string = self->_string;
    v5.length = [(AXAttributedString *)self length];
    v5.location = 0;

    CFAttributedStringReplaceString(string, v5, a3);
  }
}

- (void)setAttributes:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        [(AXAttributedString *)self setAttribute:v10 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)setAttribute:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AXAttributedString *)self setAttribute:v7 forKey:v6 withRange:0, [(AXAttributedString *)self length]];
}

- (void)setAttribute:(id)a3 forKey:(id)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v14[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (v10 && location + length <= CFAttributedStringGetLength(self->_string))
  {
    string = self->_string;
    if (v9)
    {
      v13 = v10;
      v14[0] = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v15.location = location;
      v15.length = length;
      CFAttributedStringSetAttributes(string, v15, v12, 0);
    }

    else
    {
      v16.location = location;
      v16.length = length;
      CFAttributedStringRemoveAttribute(string, v16, v10);
    }
  }
}

- (void)removeAttributes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  CFAttributedStringBeginEditing(self->_string);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        string = self->_string;
        v18.length = CFAttributedStringGetLength(string);
        v18.location = 0;
        CFAttributedStringRemoveAttribute(string, v18, v10);
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  CFAttributedStringEndEditing(self->_string);
}

- (void)setAttributes:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  replacement = a3;
  if (location + length <= CFAttributedStringGetLength(self->_string))
  {
    if (length >= 1)
    {
      v9.location = location;
      v9.length = length;
      CFAttributedStringSetAttributes(self->_string, v9, replacement, 0);
    }
  }

  else
  {
    NSLog(@"AX: bad range passed into setAttributes: %lu %lu", location, length);
  }
}

- (id)axAttributedStringByReplacingOccurrencesOfString:(id)a3 withString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AXAttributedString *)self stringByReplacingOccurrencesOfString:v7 withString:v6 options:0 range:0, [(AXAttributedString *)self length]];

  return v8;
}

- (id)axStringByReplacingCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [(AXAttributedString *)self copy];
  v11.location = location;
  v11.length = length;
  CFAttributedStringSetAttributes(v8[1], v11, MEMORY[0x1E695E0F8], 1u);
  v12.location = location;
  v12.length = length;
  CFAttributedStringReplaceString(v8[1], v12, v7);

  return v8;
}

- (id)stringByReplacingOccurrencesOfString:(id)a3 withString:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v77 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v63 = CFAttributedStringGetString(self->_string);
  v12 = [(AXAttributedString *)self length];
  v13 = [MEMORY[0x1E695DF70] array];
  v61 = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__AXAttributedString_stringByReplacingOccurrencesOfString_withString_options_range___block_invoke;
  aBlock[3] = &unk_1E80D3F10;
  v62 = self;
  aBlock[4] = self;
  v14 = _Block_copy(aBlock);
  if (location)
  {
    v15 = 0;
    do
    {
      v16 = v14[2](v14, v13, v15);
      v15 = v16 + v17;
    }

    while (v16 + v17 < location);
  }

  v18 = location + length;
  if ((location + length) < v12)
  {
    v19 = location + length;
    do
    {
      v20 = v14[2](v14, v13, v19);
      v19 = v20 + v21;
    }

    while (v20 + v21 < v12);
  }

  if (location < v18)
  {
    v22 = location;
    do
    {
      v23 = v14[2](v14, v61, v22);
      v22 = v23 + v24;
    }

    while (v23 + v24 < v18);
  }

  v58 = v14;
  v25 = [v63 substringWithRange:{location, length, 8}];
  v59 = v11;
  v60 = v10;
  v26 = [v25 stringByReplacingOccurrencesOfString:v10 withString:v11 options:a5 range:{0, objc_msgSend(v25, "length")}];

  MutableCopy = CFAttributedStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(&v62->super.super.super.isa + v56));
  v79.location = location;
  v79.length = length;
  v57 = v26;
  CFAttributedStringReplaceString(MutableCopy, v79, v26);
  v80.length = CFAttributedStringGetLength(MutableCopy);
  v80.location = 0;
  CFAttributedStringSetAttributes(MutableCopy, v80, MEMORY[0x1E695E0F8], 1u);
  v28 = [[AXAttributedString alloc] initWithCFAttributedString:MutableCopy];
  CFRelease(MutableCopy);
  v29 = [(AXAttributedString *)v28 length]- v12;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obja = v13;
  v30 = [obja countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v71;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v71 != v32)
        {
          objc_enumerationMutation(obja);
        }

        v34 = *(*(&v70 + 1) + 8 * i);
        v35 = [v34 objectAtIndex:{0, v57}];
        v36 = [v35 rangeValue];
        v38 = v37;

        v39 = [v34 objectAtIndex:1];
        if (v36 >= v18)
        {
          v40 = v29;
        }

        else
        {
          v40 = 0;
        }

        [(AXAttributedString *)v28 setAttributes:v39 withRange:v40 + v36, v38];
      }

      v31 = [obja countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v31);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v41 = v61;
  v42 = [v41 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v67;
    v45 = v29 + v18;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v47 = *(*(&v66 + 1) + 8 * j);
        v48 = [v47 objectAtIndex:{0, v57}];
        v49 = [v48 rangeValue];
        v51 = v50;

        v52 = [v47 objectAtIndex:1];
        if (v49 + v51 <= v45)
        {
          [(AXAttributedString *)v28 setAttributes:v52 withRange:v49, v51];
        }
      }

      v43 = [v41 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v43);
  }

  v53 = [v62 _accessibilityAttributedLocalizedString];
  v54 = [v53 copy];

  if (v54)
  {
    [v28 _setAccessibilityAttributedLocalizedString:v54];
  }

  return v28;
}

uint64_t __84__AXAttributedString_stringByReplacingOccurrencesOfString_withString_options_range___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v10 = xmmword_1BF7DE6F0;
  v6 = [*(a1 + 32) attributesAtIndex:a3 effectiveRange:&v10];
  if ([v6 count])
  {
    v7 = [MEMORY[0x1E696B098] valueWithRange:v10];
    v11[0] = v7;
    v11[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [v5 addObject:v8];
  }

  return v10;
}

- (void)appendString:(id)a3
{
  v4 = a3;
  v5 = [[AXAttributedString alloc] initWithString:v4];

  [(AXAttributedString *)self appendAXAttributedString:v5];
}

- (void)appendFormat:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 locale:0 arguments:&v7];

  [(AXAttributedString *)self appendString:v6];
}

- (void)appendAXAttributedString:(id)a3
{
  if (a3)
  {
    string = self->_string;
    v4 = [a3 cfAttributedString];

    [(__CFAttributedString *)string appendAttributedString:v4];
  }
}

- (void)appendStringOrAXAttributedString:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AXAttributedString *)self appendAXAttributedString:v4];
  }

  else
  {
    [(AXAttributedString *)self appendString:v4];
  }
}

- (id)attributesAtIndex:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  Length = CFAttributedStringGetLength(self->_string);
  if (Length)
  {
    v10 = xmmword_1BF7DE700;
    Attributes = CFAttributedStringGetAttributes(self->_string, a3, &v10);
    if (a4)
    {
      *a4 = v10;
    }

    Length = Attributes;
  }

  return Length;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v8 = a3;
  if (CFAttributedStringGetLength(self->_string))
  {
    v12 = xmmword_1BF7DE700;
    Attribute = CFAttributedStringGetAttribute(self->_string, a4, v8, &v12);
    if (a5)
    {
      *a5 = v12;
    }

    v10 = Attribute;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)attributeValueForKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__AXAttributedString_attributeValueForKey___block_invoke;
  v8[3] = &unk_1E80D3F38;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(AXAttributedString *)self enumerateAttributesUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __43__AXAttributedString_attributeValueForKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 objectForKey:*(a1 + 32)];
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    *a5 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)enumerateAttributesUsingBlock:(id)a3
{
  v4 = a3;
  [(AXAttributedString *)self enumerateAttributesInRange:0 usingBlock:[(AXAttributedString *)self length], v4];
}

- (void)enumerateAttributesInRange:(_NSRange)a3 usingBlock:(id)a4
{
  if (a3.location != 0x7FFFFFFFFFFFFFFFLL && a3.length != 0)
  {
    [__CFAttributedString enumerateAttributesInRange:"enumerateAttributesInRange:options:usingBlock:" options:? usingBlock:?];
  }
}

- (BOOL)hasAttributes
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__AXAttributedString_hasAttributes__block_invoke;
  v4[3] = &unk_1E80D3F60;
  v4[4] = &v5;
  [(AXAttributedString *)self enumerateAttributesUsingBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __35__AXAttributedString_hasAttributes__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  if (v7 && [v7 count])
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)lowercaseString
{
  v3 = [(AXAttributedString *)self copy];
  v4 = v3[1];
  v5 = [(AXAttributedString *)self length];
  v6 = [(AXAttributedString *)self string];
  v7 = [v6 lowercaseString];
  v10.location = 0;
  v10.length = v5;
  CFAttributedStringReplaceString(v4, v10, v7);

  return v3;
}

- (id)uppercaseString
{
  v3 = [(AXAttributedString *)self copy];
  v4 = v3[1];
  v5 = [(AXAttributedString *)self length];
  v6 = [(AXAttributedString *)self string];
  v7 = [v6 uppercaseString];
  v10.location = 0;
  v10.length = v5;
  CFAttributedStringReplaceString(v4, v10, v7);

  return v3;
}

- (id)attributedSubstringFromRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  MutableCopy = CFAttributedStringCreateMutableCopy(0, 0, self->_string);
  v7 = CFAttributedStringCreate(0, &stru_1F3E63FB0, 0);
  v8 = v7;
  if (MutableCopy)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    if (!v7)
    {
      if (!MutableCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if (location + length <= CFAttributedStringGetLength(self->_string))
  {
    if (location)
    {
      v14.location = 0;
      v14.length = location;
      CFAttributedStringReplaceAttributedString(MutableCopy, v14, v8);
    }

    v12.length = CFAttributedStringGetLength(MutableCopy) - length;
    if (v12.length >= 1)
    {
      v12.location = length;
      CFAttributedStringReplaceAttributedString(MutableCopy, v12, v8);
    }

    v10 = [objc_allocWithZone(AXAttributedString) initWithCFAttributedString:MutableCopy];
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v8);
  if (MutableCopy)
  {
LABEL_8:
    CFRelease(MutableCopy);
  }

LABEL_9:

  return v10;
}

- (id)coalescedAttributes
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AXAttributedString_coalescedAttributes__block_invoke;
  v6[3] = &unk_1E80D3F88;
  v4 = v3;
  v7 = v4;
  [(AXAttributedString *)self enumerateAttributesUsingBlock:v6];

  return v4;
}

void __41__AXAttributedString_coalescedAttributes__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [v3 objectForKeyedSubscript:v9];
        [v10 setObject:v11 forKey:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (id)coalescedFontAttributes
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = 0;
  v16 = [(AXAttributedString *)self length];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = 0;
  do
  {
    v4 = [(AXAttributedString *)self attributesAtIndex:v3 effectiveRange:&v22];
    v5 = v4;
    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {

      break;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v5 objectForKey:v10];
          v12 = [v2 objectForKey:v10];
          if (!v12)
          {
            if (([v10 isEqualToString:UIAccessibilityTokenBold] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", UIAccessibilityTokenItalic) & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", UIAccessibilityTokenUnderline) & 1) != 0 || objc_msgSend(v10, "isEqualToString:", UIAccessibilityTokenMisspelled))
            {
              if ([v11 BOOLValue])
              {
                goto LABEL_15;
              }
            }

            else if (([v10 isEqualToString:UIAccessibilityTokenFontSize] & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", UIAccessibilityTokenBlockquoteLevel) || (objc_msgSend(v11, "floatValue"), v13 > 0.01))
            {
LABEL_15:
              [v2 setObject:v11 forKey:v10];
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v14 = [v5 countByEnumeratingWithState:&v18 objects:v24 count:16];
      v7 = v14;
    }

    while (v14);
LABEL_24:
    v22 += v23;

    v3 = v22;
  }

  while (v22 != 0x7FFFFFFFFFFFFFFFLL && v22 < v16);

  return v2;
}

- (BOOL)hasAttribute:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = 0;
  v5 = [(AXAttributedString *)self length];
  v6 = 0;
  while (1)
  {
    v7 = [(AXAttributedString *)self attributesAtIndex:v6 effectiveRange:&v12];
    v8 = v7;
    v9 = v12 != 0x7FFFFFFFFFFFFFFFLL;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v10 = [v7 objectForKey:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v10 BOOLValue])
      {
        goto LABEL_10;
      }
    }

    else if (v10)
    {
LABEL_10:

      break;
    }

    v12 += v13;

    v9 = 0;
    v6 = v12;
    if (v12 == 0x7FFFFFFFFFFFFFFFLL || v12 >= v5)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  return v9;
}

- (id)substringFromIndex:(unint64_t)a3
{
  v18.receiver = self;
  v18.super_class = AXAttributedString;
  v5 = [(AXAttributedString *)&v18 substringFromIndex:?];
  v6 = [AXAttributedString axAttributedStringWithString:v5];
  v7 = [(AXAttributedString *)self length];
  if (v7 > a3)
  {
    v8 = v7;
    v16 = a3;
    v17 = 0;
    v9 = a3;
    while (1)
    {
      v10 = [(AXAttributedString *)self attributesAtIndex:v9 effectiveRange:&v16];
      v11 = v10;
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v12 = a3 - v16;
      if (a3 < v16)
      {
        v12 = 0;
      }

      v13 = v17 - v12;
      if (v16 >= a3)
      {
        v14 = v16 - a3;
      }

      else
      {
        v14 = 0;
      }

      if (v13 + v14 <= [v5 length])
      {
        [v6 setAttributes:v11 withRange:{v14, v13}];
      }

      v16 += v17;

      v9 = v16;
      if (v16 == 0x7FFFFFFFFFFFFFFFLL || v16 >= v8)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:

  return v6;
}

- (id)axAttributedStringDescription
{
  v2 = [(AXAttributedString *)self cfAttributedString];

  return [(__CFAttributedString *)v2 description];
}

- (id)_axRecursivelyPropertyListCoercedRepresentationWithError:(id *)a3
{
  v4 = [(AXAttributedString *)self attributedString];
  v5 = [v4 _axRecursivelyPropertyListCoercedRepresentationWithError:a3];

  return v5;
}

- (id)_axRecursivelyReconstitutedRepresentationFromPropertyListWithError:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
  }

  return 0;
}

- (void)initWithCFAttributedString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_FAULT, "attributedStringRef.string expected to be a string, was actually: %@", &v2, 0xCu);
}

@end