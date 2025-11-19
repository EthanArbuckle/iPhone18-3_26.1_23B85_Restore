@interface BSDescriptionBuilder
+ (id)builderWithClass:(Class)a3;
+ (id)builderWithObject:(id)a3;
+ (id)descriptionForObject:(id)a3 withObjectsAndNames:(id)a4;
+ (id)succinctDescriptionForObject:(id)a3;
- (BSDescriptionBuilder)initWithObject:(id)a3;
- (NSString)activeMultilinePrefix;
- (id)appendBool:(BOOL)a3 withName:(id)a4;
- (id)appendBool:(BOOL)a3 withName:(id)a4 ifEqualTo:(BOOL)a5;
- (id)appendCString:(const char *)a3 withName:(id)a4;
- (id)appendClass:(Class)a3 withName:(id)a4;
- (id)appendDouble:(double)a3 withName:(id)a4 decimalPrecision:(unint64_t)a5;
- (id)appendFlag:(int64_t)a3 withName:(id)a4 skipIfNotSet:(BOOL)a5;
- (id)appendFormat:(id)a3;
- (id)appendInt64:(int64_t)a3 withName:(id)a4;
- (id)appendInt:(int)a3 withName:(id)a4;
- (id)appendInteger:(int64_t)a3 withName:(id)a4;
- (id)appendKeys:(id)a3;
- (id)appendObject:(id)a3 withName:(id)a4 skipIfNil:(BOOL)a5;
- (id)appendObjectsAndNames:(id *)a3 args:;
- (id)appendPoint:(CGPoint)a3 withName:(id)a4;
- (id)appendPointer:(void *)a3 withName:(id)a4;
- (id)appendQueue:(id)a3 withName:(id)a4;
- (id)appendRect:(CGRect)a3 withName:(id)a4;
- (id)appendSelector:(SEL)a3 withName:(id)a4;
- (id)appendSize:(CGSize)a3 withName:(id)a4;
- (id)appendString:(id)a3;
- (id)appendSuper;
- (id)appendTimeInterval:(double)a3 withName:(id)a4 decomposeUnits:(BOOL)a5;
- (id)appendUInt64:(unint64_t)a3 withName:(id)a4;
- (id)appendUInt64:(unint64_t)a3 withName:(id)a4 format:(int64_t)a5;
- (id)appendUnsignedInt:(unsigned int)a3 withName:(id)a4;
- (id)appendUnsignedInteger:(unint64_t)a3 withName:(id)a4;
- (id)appendUnsignedInteger:(unint64_t)a3 withName:(id)a4 format:(int64_t)a5;
- (id)appendVersionedPID:(int64_t)a3 withName:(id)a4;
- (id)build;
- (id)modifyBody:(id)a3;
- (id)modifyProem:(id)a3;
- (id)style;
- (void)appendBodySectionWithName:(id)a3 multilinePrefix:(id)a4 block:(id)a5;
- (void)appendCollectionSection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6;
- (void)appendCollectionSection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6 objectTransformer:(id)a7;
- (void)appendCollectionSection:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5;
- (void)appendCollectionSection:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5 objectTransformer:(id)a6;
- (void)appendCustomFormatWithName:(id)a3 block:(id)a4;
- (void)appendCustomFormatWithNameFromObjectDescription:(id)a3 block:(id)a4;
- (void)appendDictionarySection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6;
- (void)appendDictionarySection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6 objectTransformer:(id)a7;
- (void)appendDictionarySection:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5;
- (void)appendObjectWithName:(uint64_t)a3 formatBlock:;
- (void)appendString:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5;
- (void)tryAppendKey:(id *)a1;
@end

@implementation BSDescriptionBuilder

- (id)build
{
  [(NSMutableString *)self->_proem appendString:@">"];
  description = self->_description;
  v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [(NSMutableString *)description stringByTrimmingCharactersInSet:v4];

  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", self->_proem, v5];
  }

  else
  {
    v6 = [(NSMutableString *)self->_proem copy];
  }

  v7 = v6;

  return v7;
}

- (NSString)activeMultilinePrefix
{
  if (self->_activePrefix)
  {
    return self->_activePrefix;
  }

  else
  {
    return &stru_1F03A1A98;
  }
}

+ (id)builderWithObject:(id)a3
{
  v3 = [[a1 alloc] initWithObject:a3];

  return v3;
}

+ (id)builderWithClass:(Class)a3
{
  v3 = [[a1 alloc] initWithObject:a3];

  return v3;
}

+ (id)descriptionForObject:(id)a3 withObjectsAndNames:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v6 = [BSDescriptionBuilder builderWithObject:a3];
      v7 = [(BSDescriptionBuilder *)v6 appendObjectsAndNames:a4 args:&v13];
      v8 = [v6 build];
    }

    else
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v8 = [v9 stringWithFormat:@"<%s: %p>", class_getName(v10), a3];
    }
  }

  else
  {
    v8 = @"(null)";
  }

  return v8;
}

- (id)appendObjectsAndNames:(id *)a3 args:
{
  if (a1)
  {
    v4 = a2;
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = *a3;
        v7 = [a1 appendObject:v5 withName:v6];
        v8 = a3 + 1;
        a3 += 2;
        v9 = *v8;

        v5 = v9;
      }

      while (v9);
    }

    v10 = a1;
  }

  return a1;
}

+ (id)succinctDescriptionForObject:(id)a3
{
  if (a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [a3 succinctDescription];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [a3 description];
    }

    else
    {
      [a1 descriptionForObject:a3];
    }
    v5 = ;
  }

  return v5;
}

- (BSDescriptionBuilder)initWithObject:(id)a3
{
  v15.receiver = self;
  v15.super_class = BSDescriptionBuilder;
  v4 = [(BSDescriptionBuilder *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_object = a3;
    v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
    description = v5->_description;
    v5->_description = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
    proem = v5->_proem;
    v5->_proem = v8;

    if (v5->_object)
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = v5->_proem;
      if (v10 == v5->_object)
      {
        [(NSMutableString *)v12 appendFormat:@"%s", class_getName(v10)];
      }

      else
      {
        [(NSMutableString *)v12 appendFormat:@"%s: %p", class_getName(v10), v5->_object];
      }
    }

    v5->_activeComponent = 0;
    v13 = v5;
  }

  return v5;
}

- (id)appendSuper
{
  object = self->_object;
  if (object)
  {
    Class = object_getClass(object);
    if (!Class)
    {
LABEL_18:
      v15 = [(BSDescriptionBuilder *)self appendObject:@"(super does not implement description)" withName:0];
      return self;
    }

    Superclass = Class;
    v6 = 0;
    while (1)
    {
      outCount = 0;
      v7 = class_copyMethodList(Superclass, &outCount);
      v8 = v7;
      if (outCount)
      {
        v9 = 0;
        Implementation = 0;
        do
        {
          v11 = v6;
          v12 = v8[v9];
          Name = method_getName(v12);
          v6 |= Name == sel_description;
          if (Name == sel_description && (v11 & 1) != 0)
          {
            Implementation = method_getImplementation(v12);
            v6 = 1;
          }

          ++v9;
        }

        while (Name != sel_description && v9 < outCount);
        free(v8);
        if (Implementation)
        {
          v16 = (Implementation)(self->_object, sel_description);
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p ", self->_object];;
          v18 = [v16 rangeOfString:v17];

          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = [(BSDescriptionBuilder *)self appendObject:@"(super's description format doesn't match)" withName:0];
          }

          else
          {
            [v16 length];
            v20 = [v16 substringWithRange:?];
            v21 = [(BSDescriptionBuilder *)self appendObject:v20 withName:0 skipIfNil:1];
          }

          return self;
        }
      }

      else
      {
        free(v7);
      }

      Superclass = class_getSuperclass(Superclass);
      if (!Superclass)
      {
        goto LABEL_18;
      }
    }
  }

  return self;
}

- (id)style
{
  if (self->_useDebugDescription)
  {
    +[BSDescriptionStyle debugStyle];
  }

  else
  {
    _BSDefaultDescriptionStyle();
  }
  v2 = ;

  return v2;
}

- (id)appendObject:(id)a3 withName:(id)a4 skipIfNil:(BOOL)a5
{
  if (a3 || !a5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__BSDescriptionBuilder_appendObject_withName_skipIfNil___block_invoke;
      v18[3] = &unk_1E72CAC10;
      v18[4] = a3;
      v8 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v18];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (self->_useDebugDescription && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = [a3 debugDescriptionWithMultilinePrefix:self->_activePrefix];
      }

      else if (objc_opt_respondsToSelector())
      {
        v10 = [a3 descriptionWithMultilinePrefix:self->_activePrefix];
      }

      else if (self->_useDebugDescription && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = [a3 debugDescription];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [a3 description];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a3];
        }
        v10 = ;
      }

      v11 = v10;
      if (!v10)
      {
        v12 = [BSDescriptionBuilder builderWithObject:a3];
        v11 = [v12 build];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__BSDescriptionBuilder_appendObject_withName_skipIfNil___block_invoke_2;
      v16[3] = &unk_1E72CAC10;
      v17 = v11;
      v13 = v11;
      v14 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v16];

      objc_autoreleasePoolPop(v9);
    }
  }

  return self;
}

- (void)appendObjectWithName:(uint64_t)a3 formatBlock:
{
  if (a1)
  {
    if (*(a1 + 9) == 1)
    {
      v6 = a1[5];
      if (!v6)
      {
        v6 = &stru_1F03A1A98;
      }

      v7 = v6;
      v8 = @";\n";
      v9 = @" = ";
    }

    else
    {
      v10 = objc_opt_class();
      v7 = [v10 componentSeparator];
      v9 = [v10 nameObjectSeparator];
      v8 = &stru_1F03A1A98;
    }

    v11 = 3;
    if (!*(a1 + 9))
    {
      v11 = 2;
    }

    v12 = a1[v11];
    [v12 appendString:v7];
    if ([a2 length])
    {
      [v12 appendString:a2];
      [v12 appendString:v9];
    }

    (*(a3 + 16))(a3, v12);
    [v12 appendString:v8];
    v13 = a1;
  }

  return a1;
}

- (void)appendCustomFormatWithName:(id)a3 block:(id)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__BSDescriptionBuilder_appendCustomFormatWithName_block___block_invoke;
  v5[3] = &unk_1E72CAC38;
  v5[4] = a4;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a3 formatBlock:v5];
}

- (void)appendCustomFormatWithNameFromObjectDescription:(id)a3 block:(id)a4
{
  v6 = [objc_opt_class() succinctDescriptionForObject:a3];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__BSDescriptionBuilder_appendCustomFormatWithNameFromObjectDescription_block___block_invoke;
  v8[3] = &unk_1E72CAC38;
  v8[4] = a4;
  v7 = [(BSDescriptionBuilder *)self appendObjectWithName:v6 formatBlock:v8];
}

- (void)appendString:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5
{
  v5 = a5;
  if (!a3)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_8;
  }

  v9 = [a3 length];
  if (!v5 || v9)
  {
    if (!v9)
    {
      v14 = @"";
      v13 = self;
      goto LABEL_10;
    }

    v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = [a3 rangeOfCharacterFromSet:v10];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __58__BSDescriptionBuilder_appendString_withName_skipIfEmpty___block_invoke;
      v16[3] = &unk_1E72CAC10;
      v16[4] = a3;
      v12 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v16];
      return;
    }

LABEL_8:
    v13 = self;
    v14 = a3;
LABEL_10:
    v15 = [(BSDescriptionBuilder *)v13 appendObject:v14 withName:a4 skipIfNil:v5];
  }
}

uint64_t __58__BSDescriptionBuilder_appendString_withName_skipIfEmpty___block_invoke(uint64_t a1, void *a2)
{
  [a2 appendString:@""];
  [a2 appendString:*(a1 + 32)];

  return [a2 appendString:@""];
}

- (id)appendBool:(BOOL)a3 withName:(id)a4
{
  v6 = NSStringFromBOOL();
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:a4];

  return self;
}

- (id)appendBool:(BOOL)a3 withName:(id)a4 ifEqualTo:(BOOL)a5
{
  if (a3 == a5)
  {
    v6 = [BSDescriptionBuilder appendBool:"appendBool:withName:" withName:?];
  }

  return self;
}

- (id)appendFlag:(int64_t)a3 withName:(id)a4 skipIfNotSet:(BOOL)a5
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL || !a5)
  {
    v7 = BSSettingFlagDescription(a3);
    v8 = [(BSDescriptionBuilder *)self appendObject:v7 withName:a4];
  }

  return self;
}

- (id)appendInteger:(int64_t)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BSDescriptionBuilder_appendInteger_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (id)appendUnsignedInteger:(unint64_t)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BSDescriptionBuilder_appendUnsignedInteger_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (id)appendUnsignedInteger:(unint64_t)a3 withName:(id)a4 format:(int64_t)a5
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__BSDescriptionBuilder_appendUnsignedInteger_withName_format___block_invoke;
  v7[3] = &__block_descriptor_48_e25_v16__0__NSMutableString_8l;
  v7[4] = a5;
  v7[5] = a3;
  v5 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v7];

  return v5;
}

uint64_t __62__BSDescriptionBuilder_appendUnsignedInteger_withName_format___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = @"0x%lX";
  }

  else
  {
    v2 = @"%lu";
  }

  return [a2 appendFormat:v2, *(a1 + 40)];
}

- (id)appendInt:(int)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__BSDescriptionBuilder_appendInt_withName___block_invoke;
  v6[3] = &__block_descriptor_36_e25_v16__0__NSMutableString_8l;
  v7 = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (id)appendInt64:(int64_t)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__BSDescriptionBuilder_appendInt64_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (id)appendUnsignedInt:(unsigned int)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__BSDescriptionBuilder_appendUnsignedInt_withName___block_invoke;
  v6[3] = &__block_descriptor_36_e25_v16__0__NSMutableString_8l;
  v7 = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (id)appendUInt64:(unint64_t)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__BSDescriptionBuilder_appendUInt64_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (id)appendUInt64:(unint64_t)a3 withName:(id)a4 format:(int64_t)a5
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__BSDescriptionBuilder_appendUInt64_withName_format___block_invoke;
  v7[3] = &__block_descriptor_48_e25_v16__0__NSMutableString_8l;
  v7[4] = a5;
  v7[5] = a3;
  v5 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v7];

  return v5;
}

uint64_t __53__BSDescriptionBuilder_appendUInt64_withName_format___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    v2 = @"0x%llX";
  }

  else
  {
    v2 = @"%llu";
  }

  return [a2 appendFormat:v2, *(a1 + 40)];
}

- (id)appendDouble:(double)a3 withName:(id)a4 decimalPrecision:(unint64_t)a5
{
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&a3];
  }

  else
  {
    v8 = 0x7FFFFFFFLL;
    if (a5 < 0x7FFFFFFF)
    {
      v8 = a5;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.*f", v8, *&a3];
  }

  v9 = v7;
  v10 = [(BSDescriptionBuilder *)self appendObject:v7 withName:a4];

  return self;
}

- (id)appendTimeInterval:(double)a3 withName:(id)a4 decomposeUnits:(BOOL)a5
{
  v6 = self;
  if (fabs(a3) == INFINITY)
  {
    v6 = [(BSDescriptionBuilder *)self appendObject:@"(inf)" withName:a4];
  }

  else
  {
    v7 = (a3 - a3) * 1000.0;
    if (a5)
    {
      if (qword_1ED44FC70 != -1)
      {
        dispatch_once(&qword_1ED44FC70, &__block_literal_global_2);
      }

      v8 = [_MergedGlobals_5 stringFromTimeInterval:?];
      v9 = v8;
      if (fabs(v7) >= 2.22044605e-16)
      {
        v12 = [v8 stringByAppendingFormat:@" %.0fms", *&v7];

        v10 = v12;
      }

      else
      {
        v10 = v8;
      }

      v6 = [v6 appendObject:v10 withName:a4];
    }

    else
    {
      if (fabs(v7) >= 2.22044605e-16)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __67__BSDescriptionBuilder_appendTimeInterval_withName_decomposeUnits___block_invoke_3;
        v14[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
        *&v14[4] = a3;
        v11 = v14;
      }

      else
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __67__BSDescriptionBuilder_appendTimeInterval_withName_decomposeUnits___block_invoke_2;
        v15[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
        *&v15[4] = a3;
        v11 = v15;
      }

      [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v11];
      objc_claimAutoreleasedReturnValue();
    }
  }

  return v6;
}

uint64_t __67__BSDescriptionBuilder_appendTimeInterval_withName_decomposeUnits___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _MergedGlobals_5;
  _MergedGlobals_5 = v0;

  v2 = _MergedGlobals_5;

  return [v2 setUnitsStyle:1];
}

- (id)appendPointer:(void *)a3 withName:(id)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__BSDescriptionBuilder_appendPointer_withName___block_invoke;
  v5[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v5[4] = a3;
  return [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v5];
}

- (id)appendSelector:(SEL)a3 withName:(id)a4
{
  v6 = NSStringFromSelector(a3);
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:a4];

  return self;
}

- (id)appendCString:(const char *)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BSDescriptionBuilder_appendCString_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (id)appendQueue:(id)a3 withName:(id)a4
{
  label = dispatch_queue_get_label(a3);

  return [(BSDescriptionBuilder *)self appendCString:label withName:a4];
}

- (id)appendPoint:(CGPoint)a3 withName:(id)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.*g, %.*g}", 17, *&a3.x, 17, *&a3.y];
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:a4];

  return v7;
}

- (id)appendSize:(CGSize)a3 withName:(id)a4
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.*g, %.*g}", 17, *&a3.width, 17, *&a3.height];
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:a4];

  return v7;
}

- (id)appendRect:(CGRect)a3 withName:(id)a4
{
  v6 = BSStringFromCGRect(a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:a4];

  return v7;
}

- (id)appendClass:(Class)a3 withName:(id)a4
{
  v6 = NSStringFromClass(a3);
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:a4];

  return v7;
}

- (id)appendVersionedPID:(int64_t)a3 withName:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__BSDescriptionBuilder_appendVersionedPID_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = a3;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:a4 formatBlock:v6];

  return v4;
}

- (void)tryAppendKey:(id *)a1
{
  if (a1)
  {
    v4 = [a1[1] valueForKey:a2];
    v3 = [a1 appendObject:? withName:?];
  }
}

- (id)appendKeys:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [(BSDescriptionBuilder *)&self->super.isa tryAppendKey:?];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return self;
}

- (id)modifyProem:(id)a3
{
  if (a3)
  {
    activeComponent = self->_activeComponent;
    self->_activeComponent = 0;
    (*(a3 + 2))(a3, a2);
    self->_activeComponent = activeComponent;
  }

  return self;
}

- (id)modifyBody:(id)a3
{
  if (a3)
  {
    activeComponent = self->_activeComponent;
    self->_activeComponent = 1;
    (*(a3 + 2))(a3, a2);
    self->_activeComponent = activeComponent;
  }

  return self;
}

- (void)appendBodySectionWithName:(id)a3 multilinePrefix:(id)a4 block:(id)a5
{
  activeComponent = self->_activeComponent;
  self->_activeComponent = 1;
  if (a3)
  {
    if (a4)
    {
      [(NSMutableString *)self->_description appendString:a4];
    }

    [(NSMutableString *)self->_description appendString:a3];
    [(NSMutableString *)self->_description appendString:@" = "];
  }

  [(NSMutableString *)self->_description appendString:@"{"];
  if (a5)
  {
    v10 = objc_autoreleasePoolPush();
    [(NSMutableString *)self->_description appendString:@"\n"];
    v11 = &stru_1F03A1A98;
    if (a4)
    {
      v11 = a4;
    }

    v12 = v11;
    v13 = self->_activePrefix;
    v14 = [(__CFString *)v12 stringByAppendingString:@"    "];

    [(BSDescriptionBuilder *)self setActiveMultilinePrefix:v14];
    (*(a5 + 2))(a5);
    [(BSDescriptionBuilder *)self setActiveMultilinePrefix:v13];
    if (a4)
    {
      [(NSMutableString *)self->_description appendString:a4];
    }

    [(NSMutableString *)self->_description appendString:@"}\n"];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    [(NSMutableString *)self->_description appendString:@" }\n"];
  }

  self->_activeComponent = activeComponent;
}

- (void)appendCollectionSection:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5
{
  v8 = [(BSDescriptionBuilder *)self activeMultilinePrefix];
  [BSDescriptionBuilder appendCollectionSection:"appendCollectionSection:withName:multilinePrefix:skipIfEmpty:" withName:a3 multilinePrefix:a4 skipIfEmpty:?];
}

- (void)appendCollectionSection:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5 objectTransformer:(id)a6
{
  v9 = [(BSDescriptionBuilder *)self activeMultilinePrefix];
  [BSDescriptionBuilder appendCollectionSection:"appendCollectionSection:withName:multilinePrefix:skipIfEmpty:objectTransformer:" withName:a3 multilinePrefix:a4 skipIfEmpty:? objectTransformer:?];
}

- (void)appendCollectionSection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6 objectTransformer:(id)a7
{
  v24 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v18 = a6;
    v11 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = a3;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v13)
    {
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = (*(a7 + 2))(a7, *(*(&v19 + 1) + 8 * v15));
          if (v16)
          {
            [v11 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [(BSDescriptionBuilder *)self appendCollectionSection:v11 withName:a4 multilinePrefix:a5 skipIfEmpty:v18];
  }

  else
  {

    [(BSDescriptionBuilder *)self appendCollectionSection:a3 withName:a4 multilinePrefix:a5 skipIfEmpty:a6];
  }
}

- (void)appendCollectionSection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6
{
  if ([a3 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__BSDescriptionBuilder_appendCollectionSection_withName_multilinePrefix_skipIfEmpty___block_invoke;
    v12[3] = &unk_1E72CACC0;
    v12[4] = a3;
    v12[5] = self;
    [(BSDescriptionBuilder *)self appendBodySectionWithName:a4 multilinePrefix:a5 block:v12];
  }

  else if (a4)
  {
    if (!a6)
    {
      v11 = [(BSDescriptionBuilder *)self appendObject:@"(empty)" withName:a4];
    }
  }
}

void __85__BSDescriptionBuilder_appendCollectionSection_withName_multilinePrefix_skipIfEmpty___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(a1 + 40) appendObject:*(*(&v7 + 1) + 8 * v5++) withName:{0, v7}];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)appendDictionarySection:(id)a3 withName:(id)a4 skipIfEmpty:(BOOL)a5
{
  v8 = [(BSDescriptionBuilder *)self activeMultilinePrefix];
  [BSDescriptionBuilder appendDictionarySection:"appendDictionarySection:withName:multilinePrefix:skipIfEmpty:" withName:a3 multilinePrefix:a4 skipIfEmpty:?];
}

- (void)appendDictionarySection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6 objectTransformer:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v19 = a6;
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = a3;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = (*(a7 + 2))(a7, v15);
          if (v16)
          {
            [v10 setObject:v16 forKey:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(BSDescriptionBuilder *)self appendDictionarySection:v10 withName:a4 multilinePrefix:a5 skipIfEmpty:v19];
  }

  else
  {

    [(BSDescriptionBuilder *)self appendDictionarySection:a3 withName:a4 multilinePrefix:a5 skipIfEmpty:a6];
  }
}

- (void)appendDictionarySection:(id)a3 withName:(id)a4 multilinePrefix:(id)a5 skipIfEmpty:(BOOL)a6
{
  if ([a3 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__BSDescriptionBuilder_appendDictionarySection_withName_multilinePrefix_skipIfEmpty___block_invoke;
    v12[3] = &unk_1E72CACC0;
    v12[4] = a3;
    v12[5] = self;
    [(BSDescriptionBuilder *)self appendBodySectionWithName:a4 multilinePrefix:a5 block:v12];
  }

  else if (a4)
  {
    if (!a6)
    {
      v11 = [(BSDescriptionBuilder *)self appendObject:@"(empty)" withName:a4];
    }
  }
}

void __85__BSDescriptionBuilder_appendDictionarySection_withName_multilinePrefix_skipIfEmpty___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKey:{v6, v12}];
        v8 = [objc_opt_class() succinctDescriptionForObject:v6];
        if ([v7 isNSDictionary])
        {
          [*(a1 + 40) appendDictionarySection:v7 withName:v8 skipIfEmpty:0];
        }

        else
        {
          v9 = [v7 isNSArray];
          v10 = *(a1 + 40);
          if (v9)
          {
            [v10 appendArraySection:v7 withName:v8 skipIfEmpty:0];
          }

          else
          {
            v11 = [v10 appendObject:v7 withName:v8];
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

- (id)appendString:(id)a3
{
  if (a3)
  {
    v5 = 24;
    if (!self->_activeComponent)
    {
      v5 = 16;
    }

    v6 = *(&self->super.isa + v5);
    [v6 appendString:a3];
  }

  return self;
}

- (id)appendFormat:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 arguments:&v8];
  }

  v5 = [(BSDescriptionBuilder *)self appendString:v3];

  return v5;
}

@end