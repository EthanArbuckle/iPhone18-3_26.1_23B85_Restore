@interface BSXPCCoder
+ (id)_testEncodeAndDecodeObject:(id)object ofClass:(Class)class;
+ (id)coder;
+ (id)coderWithMessage:(id)message;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (BOOL)decodeStruct:(void *)struct withObjCType:(const char *)type forKey:(id)key;
- (BSXPCCoder)initWithBSXPCCoder:(id)coder;
- (BSXPCCoder)initWithMessage:(id)message;
- (CGPoint)decodeCGPointForKey:(id)key;
- (CGRect)decodeCGRectForKey:(id)key;
- (CGSize)decodeCGSizeForKey:(id)key;
- (double)decodeDoubleForKey:(id)key;
- (id)_finishCoding;
- (id)_implicitDecodeXPCObjectForKey:(id)key;
- (id)decodeDictionaryOfClass:(Class)class forKey:(id)key;
- (id)decodeStringForKey:(id)key;
- (id)decodeValueWithObjCType:(const char *)type forKey:(id)key;
- (id)decodeXPCObjectOfType:(_xpc_type_s *)type forKey:(id)key;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)decodeInt64ForKey:(id)key;
- (unint64_t)decodeUInt64ForKey:(id)key;
- (void)_appendXPCObject:(uint64_t)object withName:(void *)name toBuilder:;
- (void)_removeValueForKey:(id)key;
- (void)dealloc;
- (void)encodeBool:(BOOL)bool forKey:(id)key;
- (void)encodeCGPoint:(CGPoint)point forKey:(id)key;
- (void)encodeCGRect:(CGRect)rect forKey:(id)key;
- (void)encodeCGSize:(CGSize)size forKey:(id)key;
- (void)encodeCollection:(id)collection forKey:(id)key;
- (void)encodeDictionary:(id)dictionary forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeStruct:(const void *)struct withObjCType:(const char *)type forKey:(id)key;
- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation BSXPCCoder

- (void)dealloc
{
  if (self->_codingContext)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:185 description:@"cannot dealloc while the coding context is in flight"];
  }

  v5.receiver = self;
  v5.super_class = BSXPCCoder;
  [(BSXPCCoder *)&v5 dealloc];
}

- (id)_finishCoding
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(&self->_finalized, &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  return self->_message;
}

+ (id)coder
{
  v2 = [[self alloc] initWithMessage:0];

  return v2;
}

+ (id)coderWithMessage:(id)message
{
  v3 = [[self alloc] initWithMessage:message];

  return v3;
}

- (BSXPCCoder)initWithMessage:(id)message
{
  if (message && object_getClass(message) != MEMORY[0x1E69E9E80])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"!message || (xpc_get_type(message) == XPC_TYPE_DICTIONARY)"}];
  }

  v13.receiver = self;
  v13.super_class = BSXPCCoder;
  v6 = [(BSXPCCoder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_finalized = 0;
    if (message)
    {
      objc_storeStrong(&v6->_message, message);
      v8 = xpc_dictionary_get_remote_connection(message);
      v9 = 16;
    }

    else
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = 8;
    }

    v10 = *(&v7->super.isa + v9);
    *(&v7->super.isa + v9) = v8;
  }

  return v7;
}

- (void)encodeObject:(id)object forKey:(id)key
{
  v8 = 1;
  atomic_compare_exchange_strong_explicit(&self->_finalized, &v8, v8, memory_order_relaxed, memory_order_relaxed);
  if (v8 != 1)
  {
    if (key)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

    if (!object)
    {
      return;
    }

    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:209 description:@"cannot continue encoding after finalizing"];

  if (!key)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!object)
  {
    return;
  }

LABEL_4:

  _BSXPCEncodeObjectForKey(self, object, key);
}

- (void)encodeCollection:(id)collection forKey:(id)key
{
  if (collection && ([collection isNSArray] & 1) == 0 && (objc_msgSend(collection, "isNSSet") & 1) == 0 && (objc_msgSend(collection, "isNSOrderedSet") & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:218 description:{@"Collection class %@ not supported", objc_msgSend(collection, "classForCoder")}];
  }

  [(BSXPCCoder *)self encodeObject:collection forKey:key];
}

- (void)encodeDictionary:(id)dictionary forKey:(id)key
{
  if (dictionary && ([dictionary isNSDictionary] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:223 description:@"Object is not an NSDictionary"];
  }

  [(BSXPCCoder *)self encodeObject:dictionary forKey:key];
}

- (void)encodeCGPoint:(CGPoint)point forKey:(id)key
{
  v5 = [MEMORY[0x1E696B098] bs_valueWithCGPoint:{point.x, point.y}];
  [BSXPCCoder encodeObject:"encodeObject:forKey:" forKey:?];
}

- (void)encodeCGSize:(CGSize)size forKey:(id)key
{
  v5 = [MEMORY[0x1E696B098] bs_valueWithCGSize:{size.width, size.height}];
  [BSXPCCoder encodeObject:"encodeObject:forKey:" forKey:?];
}

- (void)encodeCGRect:(CGRect)rect forKey:(id)key
{
  v5 = [MEMORY[0x1E696B098] bs_valueWithCGRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  [BSXPCCoder encodeObject:"encodeObject:forKey:" forKey:?];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v7 = codingContext;
  BSSerializeDoubleToXPCDictionaryWithKey(v7, [key UTF8String], double);
}

- (void)encodeBool:(BOOL)bool forKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v9 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    xpc_dictionary_set_BOOL(codingContext, v9, bool);
  }
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v9 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    xpc_dictionary_set_int64(codingContext, v9, int64);
  }
}

- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v9 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    xpc_dictionary_set_uint64(codingContext, v9, int64);
  }
}

- (void)encodeStruct:(const void *)struct withObjCType:(const char *)type forKey:(id)key
{
  v31 = *MEMORY[0x1E69E9840];
  if (!struct)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", type, key, @"bytes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138544642;
      v20 = v9;
      v21 = 2114;
      v22 = v11;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSXPCCoder.m";
      v27 = 1024;
      v28 = 269;
      v29 = 2114;
      v30 = v8;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v12 = v8;
    qword_1EAD33B00 = [v8 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8F4D8);
  }

  if (!type)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", 0, key, @"encoding"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      v20 = v14;
      v21 = 2114;
      v22 = v16;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2114;
      v26 = @"BSXPCCoder.m";
      v27 = 1024;
      v28 = 270;
      v29 = 2114;
      v30 = v13;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    qword_1EAD33B00 = [v13 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8F5E0);
  }

  v18 = [MEMORY[0x1E696B098] valueWithBytes:? objCType:?];
  [(BSXPCCoder *)self encodeObject:v18 forKey:key];
}

- (BOOL)containsValueForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  uTF8String = [key UTF8String];
  v7 = v5;
  if (!uTF8String)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
    [currentHandler handleFailureInFunction:v15 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
  }

  v8 = v7;
  v9 = v8;
  if (v8 && (Class = object_getClass(v8), v11 = MEMORY[0x1E69E9E80], v9, v9, Class == v11))
  {
    v12 = xpc_dictionary_get_value(v9, uTF8String);
  }

  else
  {
    v12 = 0;
  }

  return v12 != 0;
}

- (id)decodeDictionaryOfClass:(Class)class forKey:(id)key
{
  v7 = objc_opt_class();

  return _BSXPCDecodeObjectForKey(self, key, v7, class);
}

- (id)decodeXPCObjectOfType:(_xpc_type_s *)type forKey:(id)key
{
  if (type)
  {
    class4NSXPC = xpc_get_class4NSXPC();
  }

  else
  {
    class4NSXPC = BSXPCObjectBaseClass();
  }

  return [(BSXPCCoder *)self decodeObjectOfClass:class4NSXPC forKey:key];
}

- (id)decodeStringForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  uTF8String = [key UTF8String];
  v7 = v5;
  if (!uTF8String)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
    [currentHandler handleFailureInFunction:v21 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
  }

  v8 = v7;
  v9 = v8;
  if (v8 && (v10 = object_getClass(v8), v11 = MEMORY[0x1E69E9E80], v9, v9, v10 == v11))
  {
    v17 = xpc_dictionary_get_value(v9, uTF8String);
    v12 = v17;
    if (v17)
    {
      Class = object_getClass(v17);
      v19 = MEMORY[0x1E69E9F10];

      if (Class == v19)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_9:
  v14 = v13;

  if (v14)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:xpc_string_get_string_ptr(v14)];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CGPoint)decodeCGPointForKey:(id)key
{
  v3 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:key];
  [v3 bs_CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)decodeCGSizeForKey:(id)key
{
  v3 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:key];
  [v3 bs_CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)decodeCGRectForKey:(id)key
{
  v3 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:key];
  [v3 bs_CGRectValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)decodeDoubleForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = BSDeserializeDoubleFromXPCDictionaryWithKey(v5, [key UTF8String]);

  return v6;
}

- (BOOL)decodeBoolForKey:(id)key
{
  keyCopy = key;
  uTF8String = [key UTF8String];
  if (uTF8String)
  {
    v7 = uTF8String;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    LOBYTE(uTF8String) = xpc_dictionary_get_BOOL(codingContext, v7);
  }

  return uTF8String;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  keyCopy = key;
  result = [key UTF8String];
  if (result)
  {
    v7 = result;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    return xpc_dictionary_get_int64(codingContext, v7);
  }

  return result;
}

- (unint64_t)decodeUInt64ForKey:(id)key
{
  keyCopy = key;
  result = [key UTF8String];
  if (result)
  {
    v7 = result;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    return xpc_dictionary_get_uint64(codingContext, v7);
  }

  return result;
}

- (BOOL)decodeStruct:(void *)struct withObjCType:(const char *)type forKey:(id)key
{
  if (!struct)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"bytes != NULL"}];
  }

  v9 = [(BSXPCCoder *)self decodeValueWithObjCType:type forKey:key];
  if (v9)
  {
    sizep = 0;
    NSGetSizeAndAlignment(type, &sizep, 0);
    [v9 getValue:struct size:sizep];
  }

  return v9 != 0;
}

- (id)decodeValueWithObjCType:(const char *)type forKey:(id)key
{
  if (!type)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"encoding != NULL"}];
  }

  v8 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:key];
  v9 = v8;
  if (v8 && strcmp(type, [v8 objCType]))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:375 description:{@"Decoded NSValue for %@ does not match expected encoding %s", key, type}];
  }

  return v9;
}

- (void)_removeValueForKey:(id)key
{
  if (key)
  {
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v5 = codingContext;
    uTF8String = [key UTF8String];
    v7 = v5;
    xdict = v7;
    if (uTF8String)
    {
      if (v7)
      {
        v8 = xpc_dictionary_get_value(v7, uTF8String);

        if (v8)
        {
          xpc_dictionary_set_value(xdict, uTF8String, 0);
        }
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSXPCDictionarySetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_object_t  _Nullable __strong, xpc_type_t _Nullable)"}];
      [currentHandler handleFailureInFunction:v10 file:@"BSXPCObjectUtilities.h" lineNumber:61 description:@"key must not be nil"];
    }
  }
}

- (id)_implicitDecodeXPCObjectForKey:(id)key
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  uTF8String = [key UTF8String];
  v7 = v5;
  if (!uTF8String)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
    [currentHandler handleFailureInFunction:v16 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
  }

  v8 = v7;
  v9 = v8;
  if (v8 && (Class = object_getClass(v8), v11 = MEMORY[0x1E69E9E80], v9, v9, Class == v11))
  {
    v12 = xpc_dictionary_get_value(v9, uTF8String);
  }

  else
  {
    v12 = 0;
  }

  if (v12 && (BSXPCObjectBaseClass(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_testEncodeAndDecodeObject:(id)object ofClass:(Class)class
{
  v6 = +[BSXPCCoder coder];
  [v6 encodeObject:object forKey:@"test"];
  createMessage = [v6 createMessage];
  v8 = [BSXPCCoder coderWithMessage:createMessage];

  v9 = [v8 decodeObjectOfClass:class forKey:@"test"];

  return v9;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  createMessage = [(BSXPCCoder *)self createMessage];
  [coder encodeXPCObject:? forKey:?];
}

- (BSXPCCoder)initWithBSXPCCoder:(id)coder
{
  v4 = [coder decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"message"];
  v5 = [(BSXPCCoder *)self initWithMessage:v4];

  return v5;
}

- (void)_appendXPCObject:(uint64_t)object withName:(void *)name toBuilder:
{
  if (self)
  {
    if (object)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    }

    else
    {
      v7 = 0;
    }

    v8 = a2;
    v9 = v8;
    if (!v8)
    {
      goto LABEL_8;
    }

    Class = object_getClass(v8);
    v11 = MEMORY[0x1E69E9E80];

    if (Class == v11)
    {
      activeMultilinePrefix = [name activeMultilinePrefix];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke;
      v15[3] = &unk_1E72CC4A8;
      v15[4] = v9;
      v15[5] = self;
      v15[6] = name;
      [name appendBodySectionWithName:v7 multilinePrefix:activeMultilinePrefix block:v15];
    }

    else
    {
      if (object_getClass(v9) != MEMORY[0x1E69E9E50])
      {
LABEL_8:
        v12 = [name appendObject:v9 withName:v7 skipIfNil:0];
LABEL_12:

        return;
      }

      activeMultilinePrefix = [name activeMultilinePrefix];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke_3;
      v14[3] = &unk_1E72CC4A8;
      v14[4] = v9;
      v14[5] = self;
      v14[6] = name;
      [name appendBodySectionWithName:v7 multilinePrefix:activeMultilinePrefix block:v14];
    }

    goto LABEL_12;
  }
}

BOOL __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke_2;
  v3[3] = &unk_1E72CC480;
  v4 = *(a1 + 40);
  return xpc_dictionary_apply(v1, v3);
}

BOOL __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke_4;
  v3[3] = &unk_1E72CC4D0;
  v4 = *(a1 + 40);
  return xpc_array_apply(v1, v3);
}

uint64_t __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a2];
  -[BSXPCCoder _appendXPCObject:withName:toBuilder:](v5, a3, [v6 UTF8String], *(a1 + 40));

  return 1;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BSXPCCoder *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:xpc_dictionary_get_count(self->_message) withName:@"valueCount"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSXPCCoder *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BSXPCCoder *)self succinctDescriptionBuilder];
  if (xpc_dictionary_get_count(self->_message))
  {
    [(BSXPCCoder *)self _appendXPCObject:0 withName:succinctDescriptionBuilder toBuilder:?];
  }

  return succinctDescriptionBuilder;
}

@end