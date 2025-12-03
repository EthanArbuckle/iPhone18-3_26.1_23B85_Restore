@interface BSDescriptionBuilder
+ (id)builderWithClass:(Class)class;
+ (id)builderWithObject:(id)object;
+ (id)descriptionForObject:(id)object withObjectsAndNames:(id)names;
+ (id)succinctDescriptionForObject:(id)object;
- (BSDescriptionBuilder)initWithObject:(id)object;
- (NSString)activeMultilinePrefix;
- (id)appendBool:(BOOL)bool withName:(id)name;
- (id)appendBool:(BOOL)bool withName:(id)name ifEqualTo:(BOOL)to;
- (id)appendCString:(const char *)string withName:(id)name;
- (id)appendClass:(Class)class withName:(id)name;
- (id)appendDouble:(double)double withName:(id)name decimalPrecision:(unint64_t)precision;
- (id)appendFlag:(int64_t)flag withName:(id)name skipIfNotSet:(BOOL)set;
- (id)appendFormat:(id)format;
- (id)appendInt64:(int64_t)int64 withName:(id)name;
- (id)appendInt:(int)int withName:(id)name;
- (id)appendInteger:(int64_t)integer withName:(id)name;
- (id)appendKeys:(id)keys;
- (id)appendObject:(id)object withName:(id)name skipIfNil:(BOOL)nil;
- (id)appendObjectsAndNames:(id *)names args:;
- (id)appendPoint:(CGPoint)point withName:(id)name;
- (id)appendPointer:(void *)pointer withName:(id)name;
- (id)appendQueue:(id)queue withName:(id)name;
- (id)appendRect:(CGRect)rect withName:(id)name;
- (id)appendSelector:(SEL)selector withName:(id)name;
- (id)appendSize:(CGSize)size withName:(id)name;
- (id)appendString:(id)string;
- (id)appendSuper;
- (id)appendTimeInterval:(double)interval withName:(id)name decomposeUnits:(BOOL)units;
- (id)appendUInt64:(unint64_t)int64 withName:(id)name;
- (id)appendUInt64:(unint64_t)int64 withName:(id)name format:(int64_t)format;
- (id)appendUnsignedInt:(unsigned int)int withName:(id)name;
- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name;
- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name format:(int64_t)format;
- (id)appendVersionedPID:(int64_t)d withName:(id)name;
- (id)build;
- (id)modifyBody:(id)body;
- (id)modifyProem:(id)proem;
- (id)style;
- (void)appendBodySectionWithName:(id)name multilinePrefix:(id)prefix block:(id)block;
- (void)appendCollectionSection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty;
- (void)appendCollectionSection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty objectTransformer:(id)transformer;
- (void)appendCollectionSection:(id)section withName:(id)name skipIfEmpty:(BOOL)empty;
- (void)appendCollectionSection:(id)section withName:(id)name skipIfEmpty:(BOOL)empty objectTransformer:(id)transformer;
- (void)appendCustomFormatWithName:(id)name block:(id)block;
- (void)appendCustomFormatWithNameFromObjectDescription:(id)description block:(id)block;
- (void)appendDictionarySection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty;
- (void)appendDictionarySection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty objectTransformer:(id)transformer;
- (void)appendDictionarySection:(id)section withName:(id)name skipIfEmpty:(BOOL)empty;
- (void)appendObjectWithName:(uint64_t)name formatBlock:;
- (void)appendString:(id)string withName:(id)name skipIfEmpty:(BOOL)empty;
- (void)tryAppendKey:(id *)key;
@end

@implementation BSDescriptionBuilder

- (id)build
{
  [(NSMutableString *)self->_proem appendString:@">"];
  description = self->_description;
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v5 = [(NSMutableString *)description stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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

+ (id)builderWithObject:(id)object
{
  v3 = [[self alloc] initWithObject:object];

  return v3;
}

+ (id)builderWithClass:(Class)class
{
  v3 = [[self alloc] initWithObject:class];

  return v3;
}

+ (id)descriptionForObject:(id)object withObjectsAndNames:(id)names
{
  if (object)
  {
    if (names)
    {
      v6 = [BSDescriptionBuilder builderWithObject:object];
      v7 = [(BSDescriptionBuilder *)v6 appendObjectsAndNames:names args:&v13];
      build = [v6 build];
    }

    else
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      build = [v9 stringWithFormat:@"<%s: %p>", class_getName(v10), object];
    }
  }

  else
  {
    build = @"(null)";
  }

  return build;
}

- (id)appendObjectsAndNames:(id *)names args:
{
  if (self)
  {
    v4 = a2;
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = *names;
        v7 = [self appendObject:v5 withName:v6];
        v8 = names + 1;
        names += 2;
        v9 = *v8;

        v5 = v9;
      }

      while (v9);
    }

    selfCopy = self;
  }

  return self;
}

+ (id)succinctDescriptionForObject:(id)object
{
  if (object && (objc_opt_respondsToSelector() & 1) != 0)
  {
    succinctDescription = [object succinctDescription];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [object description];
    }

    else
    {
      [self descriptionForObject:object];
    }
    succinctDescription = ;
  }

  return succinctDescription;
}

- (BSDescriptionBuilder)initWithObject:(id)object
{
  v15.receiver = self;
  v15.super_class = BSDescriptionBuilder;
  v4 = [(BSDescriptionBuilder *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_object = object;
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

- (id)appendObject:(id)object withName:(id)name skipIfNil:(BOOL)nil
{
  if (object || !nil)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__BSDescriptionBuilder_appendObject_withName_skipIfNil___block_invoke;
      v18[3] = &unk_1E72CAC10;
      v18[4] = object;
      v8 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v18];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      if (self->_useDebugDescription && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = [object debugDescriptionWithMultilinePrefix:self->_activePrefix];
      }

      else if (objc_opt_respondsToSelector())
      {
        v10 = [object descriptionWithMultilinePrefix:self->_activePrefix];
      }

      else if (self->_useDebugDescription && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v10 = [object debugDescription];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [object description];
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", object];
        }
        v10 = ;
      }

      build = v10;
      if (!v10)
      {
        v12 = [BSDescriptionBuilder builderWithObject:object];
        build = [v12 build];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__BSDescriptionBuilder_appendObject_withName_skipIfNil___block_invoke_2;
      v16[3] = &unk_1E72CAC10;
      v17 = build;
      v13 = build;
      v14 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v16];

      objc_autoreleasePoolPop(v9);
    }
  }

  return self;
}

- (void)appendObjectWithName:(uint64_t)name formatBlock:
{
  if (self)
  {
    if (*(self + 9) == 1)
    {
      v6 = self[5];
      if (!v6)
      {
        v6 = &stru_1F03A1A98;
      }

      componentSeparator = v6;
      v8 = @";\n";
      nameObjectSeparator = @" = ";
    }

    else
    {
      v10 = objc_opt_class();
      componentSeparator = [v10 componentSeparator];
      nameObjectSeparator = [v10 nameObjectSeparator];
      v8 = &stru_1F03A1A98;
    }

    v11 = 3;
    if (!*(self + 9))
    {
      v11 = 2;
    }

    v12 = self[v11];
    [v12 appendString:componentSeparator];
    if ([a2 length])
    {
      [v12 appendString:a2];
      [v12 appendString:nameObjectSeparator];
    }

    (*(name + 16))(name, v12);
    [v12 appendString:v8];
    selfCopy = self;
  }

  return self;
}

- (void)appendCustomFormatWithName:(id)name block:(id)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__BSDescriptionBuilder_appendCustomFormatWithName_block___block_invoke;
  v5[3] = &unk_1E72CAC38;
  v5[4] = block;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v5];
}

- (void)appendCustomFormatWithNameFromObjectDescription:(id)description block:(id)block
{
  v6 = [objc_opt_class() succinctDescriptionForObject:description];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__BSDescriptionBuilder_appendCustomFormatWithNameFromObjectDescription_block___block_invoke;
  v8[3] = &unk_1E72CAC38;
  v8[4] = block;
  v7 = [(BSDescriptionBuilder *)self appendObjectWithName:v6 formatBlock:v8];
}

- (void)appendString:(id)string withName:(id)name skipIfEmpty:(BOOL)empty
{
  emptyCopy = empty;
  if (!string)
  {
    if (empty)
    {
      return;
    }

    goto LABEL_8;
  }

  v9 = [string length];
  if (!emptyCopy || v9)
  {
    if (!v9)
    {
      stringCopy = @"";
      selfCopy2 = self;
      goto LABEL_10;
    }

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v11 = [string rangeOfCharacterFromSet:whitespaceCharacterSet];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __58__BSDescriptionBuilder_appendString_withName_skipIfEmpty___block_invoke;
      v16[3] = &unk_1E72CAC10;
      v16[4] = string;
      v12 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v16];
      return;
    }

LABEL_8:
    selfCopy2 = self;
    stringCopy = string;
LABEL_10:
    v15 = [(BSDescriptionBuilder *)selfCopy2 appendObject:stringCopy withName:name skipIfNil:emptyCopy];
  }
}

uint64_t __58__BSDescriptionBuilder_appendString_withName_skipIfEmpty___block_invoke(uint64_t a1, void *a2)
{
  [a2 appendString:@""];
  [a2 appendString:*(a1 + 32)];

  return [a2 appendString:@""];
}

- (id)appendBool:(BOOL)bool withName:(id)name
{
  v6 = NSStringFromBOOL();
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:name];

  return self;
}

- (id)appendBool:(BOOL)bool withName:(id)name ifEqualTo:(BOOL)to
{
  if (bool == to)
  {
    v6 = [BSDescriptionBuilder appendBool:"appendBool:withName:" withName:?];
  }

  return self;
}

- (id)appendFlag:(int64_t)flag withName:(id)name skipIfNotSet:(BOOL)set
{
  if (flag != 0x7FFFFFFFFFFFFFFFLL || !set)
  {
    v7 = BSSettingFlagDescription(flag);
    v8 = [(BSDescriptionBuilder *)self appendObject:v7 withName:name];
  }

  return self;
}

- (id)appendInteger:(int64_t)integer withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BSDescriptionBuilder_appendInteger_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = integer;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__BSDescriptionBuilder_appendUnsignedInteger_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = integer;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (id)appendUnsignedInteger:(unint64_t)integer withName:(id)name format:(int64_t)format
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__BSDescriptionBuilder_appendUnsignedInteger_withName_format___block_invoke;
  v7[3] = &__block_descriptor_48_e25_v16__0__NSMutableString_8l;
  v7[4] = format;
  v7[5] = integer;
  v5 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v7];

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

- (id)appendInt:(int)int withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__BSDescriptionBuilder_appendInt_withName___block_invoke;
  v6[3] = &__block_descriptor_36_e25_v16__0__NSMutableString_8l;
  intCopy = int;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (id)appendInt64:(int64_t)int64 withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__BSDescriptionBuilder_appendInt64_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = int64;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (id)appendUnsignedInt:(unsigned int)int withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__BSDescriptionBuilder_appendUnsignedInt_withName___block_invoke;
  v6[3] = &__block_descriptor_36_e25_v16__0__NSMutableString_8l;
  intCopy = int;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (id)appendUInt64:(unint64_t)int64 withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__BSDescriptionBuilder_appendUInt64_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = int64;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (id)appendUInt64:(unint64_t)int64 withName:(id)name format:(int64_t)format
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__BSDescriptionBuilder_appendUInt64_withName_format___block_invoke;
  v7[3] = &__block_descriptor_48_e25_v16__0__NSMutableString_8l;
  v7[4] = format;
  v7[5] = int64;
  v5 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v7];

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

- (id)appendDouble:(double)double withName:(id)name decimalPrecision:(unint64_t)precision
{
  if (precision == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&double];
  }

  else
  {
    precisionCopy = 0x7FFFFFFFLL;
    if (precision < 0x7FFFFFFF)
    {
      precisionCopy = precision;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.*f", precisionCopy, *&double];
  }

  v9 = v7;
  v10 = [(BSDescriptionBuilder *)self appendObject:v7 withName:name];

  return self;
}

- (id)appendTimeInterval:(double)interval withName:(id)name decomposeUnits:(BOOL)units
{
  selfCopy = self;
  if (fabs(interval) == INFINITY)
  {
    selfCopy = [(BSDescriptionBuilder *)self appendObject:@"(inf)" withName:name];
  }

  else
  {
    v7 = (interval - interval) * 1000.0;
    if (units)
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

      selfCopy = [selfCopy appendObject:v10 withName:name];
    }

    else
    {
      if (fabs(v7) >= 2.22044605e-16)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __67__BSDescriptionBuilder_appendTimeInterval_withName_decomposeUnits___block_invoke_3;
        v14[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
        *&v14[4] = interval;
        v11 = v14;
      }

      else
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __67__BSDescriptionBuilder_appendTimeInterval_withName_decomposeUnits___block_invoke_2;
        v15[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
        *&v15[4] = interval;
        v11 = v15;
      }

      [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v11];
      objc_claimAutoreleasedReturnValue();
    }
  }

  return selfCopy;
}

uint64_t __67__BSDescriptionBuilder_appendTimeInterval_withName_decomposeUnits___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _MergedGlobals_5;
  _MergedGlobals_5 = v0;

  v2 = _MergedGlobals_5;

  return [v2 setUnitsStyle:1];
}

- (id)appendPointer:(void *)pointer withName:(id)name
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__BSDescriptionBuilder_appendPointer_withName___block_invoke;
  v5[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v5[4] = pointer;
  return [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v5];
}

- (id)appendSelector:(SEL)selector withName:(id)name
{
  v6 = NSStringFromSelector(selector);
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:name];

  return self;
}

- (id)appendCString:(const char *)string withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__BSDescriptionBuilder_appendCString_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = string;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (id)appendQueue:(id)queue withName:(id)name
{
  label = dispatch_queue_get_label(queue);

  return [(BSDescriptionBuilder *)self appendCString:label withName:name];
}

- (id)appendPoint:(CGPoint)point withName:(id)name
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.*g, %.*g}", 17, *&point.x, 17, *&point.y];
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:name];

  return v7;
}

- (id)appendSize:(CGSize)size withName:(id)name
{
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.*g, %.*g}", 17, *&size.width, 17, *&size.height];
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:name];

  return v7;
}

- (id)appendRect:(CGRect)rect withName:(id)name
{
  v6 = BSStringFromCGRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:name];

  return v7;
}

- (id)appendClass:(Class)class withName:(id)name
{
  v6 = NSStringFromClass(class);
  v7 = [(BSDescriptionBuilder *)self appendObject:v6 withName:name];

  return v7;
}

- (id)appendVersionedPID:(int64_t)d withName:(id)name
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__BSDescriptionBuilder_appendVersionedPID_withName___block_invoke;
  v6[3] = &__block_descriptor_40_e25_v16__0__NSMutableString_8l;
  v6[4] = d;
  v4 = [(BSDescriptionBuilder *)self appendObjectWithName:name formatBlock:v6];

  return v4;
}

- (void)tryAppendKey:(id *)key
{
  if (key)
  {
    v4 = [key[1] valueForKey:a2];
    v3 = [key appendObject:? withName:?];
  }
}

- (id)appendKeys:(id)keys
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  keysCopy = keys;
  v5 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(keysCopy);
        }

        [(BSDescriptionBuilder *)&self->super.isa tryAppendKey:?];
      }

      while (v5 != v7);
      v5 = [keysCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return self;
}

- (id)modifyProem:(id)proem
{
  if (proem)
  {
    activeComponent = self->_activeComponent;
    self->_activeComponent = 0;
    (*(proem + 2))(proem, a2);
    self->_activeComponent = activeComponent;
  }

  return self;
}

- (id)modifyBody:(id)body
{
  if (body)
  {
    activeComponent = self->_activeComponent;
    self->_activeComponent = 1;
    (*(body + 2))(body, a2);
    self->_activeComponent = activeComponent;
  }

  return self;
}

- (void)appendBodySectionWithName:(id)name multilinePrefix:(id)prefix block:(id)block
{
  activeComponent = self->_activeComponent;
  self->_activeComponent = 1;
  if (name)
  {
    if (prefix)
    {
      [(NSMutableString *)self->_description appendString:prefix];
    }

    [(NSMutableString *)self->_description appendString:name];
    [(NSMutableString *)self->_description appendString:@" = "];
  }

  [(NSMutableString *)self->_description appendString:@"{"];
  if (block)
  {
    v10 = objc_autoreleasePoolPush();
    [(NSMutableString *)self->_description appendString:@"\n"];
    prefixCopy = &stru_1F03A1A98;
    if (prefix)
    {
      prefixCopy = prefix;
    }

    v12 = prefixCopy;
    v13 = self->_activePrefix;
    v14 = [(__CFString *)v12 stringByAppendingString:@"    "];

    [(BSDescriptionBuilder *)self setActiveMultilinePrefix:v14];
    (*(block + 2))(block);
    [(BSDescriptionBuilder *)self setActiveMultilinePrefix:v13];
    if (prefix)
    {
      [(NSMutableString *)self->_description appendString:prefix];
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

- (void)appendCollectionSection:(id)section withName:(id)name skipIfEmpty:(BOOL)empty
{
  activeMultilinePrefix = [(BSDescriptionBuilder *)self activeMultilinePrefix];
  [BSDescriptionBuilder appendCollectionSection:"appendCollectionSection:withName:multilinePrefix:skipIfEmpty:" withName:section multilinePrefix:name skipIfEmpty:?];
}

- (void)appendCollectionSection:(id)section withName:(id)name skipIfEmpty:(BOOL)empty objectTransformer:(id)transformer
{
  activeMultilinePrefix = [(BSDescriptionBuilder *)self activeMultilinePrefix];
  [BSDescriptionBuilder appendCollectionSection:"appendCollectionSection:withName:multilinePrefix:skipIfEmpty:objectTransformer:" withName:section multilinePrefix:name skipIfEmpty:? objectTransformer:?];
}

- (void)appendCollectionSection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty objectTransformer:(id)transformer
{
  v24 = *MEMORY[0x1E69E9840];
  if (transformer)
  {
    emptyCopy = empty;
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    sectionCopy = section;
    v13 = [sectionCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(sectionCopy);
          }

          v16 = (*(transformer + 2))(transformer, *(*(&v19 + 1) + 8 * v15));
          if (v16)
          {
            [array addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [sectionCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [(BSDescriptionBuilder *)self appendCollectionSection:array withName:name multilinePrefix:prefix skipIfEmpty:emptyCopy];
  }

  else
  {

    [(BSDescriptionBuilder *)self appendCollectionSection:section withName:name multilinePrefix:prefix skipIfEmpty:empty];
  }
}

- (void)appendCollectionSection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty
{
  if ([section count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__BSDescriptionBuilder_appendCollectionSection_withName_multilinePrefix_skipIfEmpty___block_invoke;
    v12[3] = &unk_1E72CACC0;
    v12[4] = section;
    v12[5] = self;
    [(BSDescriptionBuilder *)self appendBodySectionWithName:name multilinePrefix:prefix block:v12];
  }

  else if (name)
  {
    if (!empty)
    {
      v11 = [(BSDescriptionBuilder *)self appendObject:@"(empty)" withName:name];
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

- (void)appendDictionarySection:(id)section withName:(id)name skipIfEmpty:(BOOL)empty
{
  activeMultilinePrefix = [(BSDescriptionBuilder *)self activeMultilinePrefix];
  [BSDescriptionBuilder appendDictionarySection:"appendDictionarySection:withName:multilinePrefix:skipIfEmpty:" withName:section multilinePrefix:name skipIfEmpty:?];
}

- (void)appendDictionarySection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty objectTransformer:(id)transformer
{
  v25 = *MEMORY[0x1E69E9840];
  if (transformer)
  {
    emptyCopy = empty;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    sectionCopy = section;
    v12 = [sectionCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(sectionCopy);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = (*(transformer + 2))(transformer, v15);
          if (v16)
          {
            [dictionary setObject:v16 forKey:v15];
          }
        }

        v12 = [sectionCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [(BSDescriptionBuilder *)self appendDictionarySection:dictionary withName:name multilinePrefix:prefix skipIfEmpty:emptyCopy];
  }

  else
  {

    [(BSDescriptionBuilder *)self appendDictionarySection:section withName:name multilinePrefix:prefix skipIfEmpty:empty];
  }
}

- (void)appendDictionarySection:(id)section withName:(id)name multilinePrefix:(id)prefix skipIfEmpty:(BOOL)empty
{
  if ([section count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__BSDescriptionBuilder_appendDictionarySection_withName_multilinePrefix_skipIfEmpty___block_invoke;
    v12[3] = &unk_1E72CACC0;
    v12[4] = section;
    v12[5] = self;
    [(BSDescriptionBuilder *)self appendBodySectionWithName:name multilinePrefix:prefix block:v12];
  }

  else if (name)
  {
    if (!empty)
    {
      v11 = [(BSDescriptionBuilder *)self appendObject:@"(empty)" withName:name];
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

- (id)appendString:(id)string
{
  if (string)
  {
    v5 = 24;
    if (!self->_activeComponent)
    {
      v5 = 16;
    }

    v6 = *(&self->super.isa + v5);
    [v6 appendString:string];
  }

  return self;
}

- (id)appendFormat:(id)format
{
  formatCopy = format;
  if (format)
  {
    formatCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:format arguments:&v8];
  }

  v5 = [(BSDescriptionBuilder *)self appendString:formatCopy];

  return v5;
}

@end