@interface BSXPCCoder
+ (id)_testEncodeAndDecodeObject:(id)a3 ofClass:(Class)a4;
+ (id)coder;
+ (id)coderWithMessage:(id)a3;
- (BOOL)containsValueForKey:(id)a3;
- (BOOL)decodeBoolForKey:(id)a3;
- (BOOL)decodeStruct:(void *)a3 withObjCType:(const char *)a4 forKey:(id)a5;
- (BSXPCCoder)initWithBSXPCCoder:(id)a3;
- (BSXPCCoder)initWithMessage:(id)a3;
- (CGPoint)decodeCGPointForKey:(id)a3;
- (CGRect)decodeCGRectForKey:(id)a3;
- (CGSize)decodeCGSizeForKey:(id)a3;
- (double)decodeDoubleForKey:(id)a3;
- (id)_finishCoding;
- (id)_implicitDecodeXPCObjectForKey:(id)a3;
- (id)decodeDictionaryOfClass:(Class)a3 forKey:(id)a4;
- (id)decodeStringForKey:(id)a3;
- (id)decodeValueWithObjCType:(const char *)a3 forKey:(id)a4;
- (id)decodeXPCObjectOfType:(_xpc_type_s *)a3 forKey:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)decodeInt64ForKey:(id)a3;
- (unint64_t)decodeUInt64ForKey:(id)a3;
- (void)_appendXPCObject:(uint64_t)a3 withName:(void *)a4 toBuilder:;
- (void)_removeValueForKey:(id)a3;
- (void)dealloc;
- (void)encodeBool:(BOOL)a3 forKey:(id)a4;
- (void)encodeCGPoint:(CGPoint)a3 forKey:(id)a4;
- (void)encodeCGRect:(CGRect)a3 forKey:(id)a4;
- (void)encodeCGSize:(CGSize)a3 forKey:(id)a4;
- (void)encodeCollection:(id)a3 forKey:(id)a4;
- (void)encodeDictionary:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeStruct:(const void *)a3 withObjCType:(const char *)a4 forKey:(id)a5;
- (void)encodeUInt64:(unint64_t)a3 forKey:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation BSXPCCoder

- (void)dealloc
{
  if (self->_codingContext)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:185 description:@"cannot dealloc while the coding context is in flight"];
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
  v2 = [[a1 alloc] initWithMessage:0];

  return v2;
}

+ (id)coderWithMessage:(id)a3
{
  v3 = [[a1 alloc] initWithMessage:a3];

  return v3;
}

- (BSXPCCoder)initWithMessage:(id)a3
{
  if (a3 && object_getClass(a3) != MEMORY[0x1E69E9E80])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"!message || (xpc_get_type(message) == XPC_TYPE_DICTIONARY)"}];
  }

  v13.receiver = self;
  v13.super_class = BSXPCCoder;
  v6 = [(BSXPCCoder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_finalized = 0;
    if (a3)
    {
      objc_storeStrong(&v6->_message, a3);
      v8 = xpc_dictionary_get_remote_connection(a3);
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

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v8 = 1;
  atomic_compare_exchange_strong_explicit(&self->_finalized, &v8, v8, memory_order_relaxed, memory_order_relaxed);
  if (v8 != 1)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

    if (!a3)
    {
      return;
    }

    goto LABEL_4;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:209 description:@"cannot continue encoding after finalizing"];

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!a3)
  {
    return;
  }

LABEL_4:

  _BSXPCEncodeObjectForKey(self, a3, a4);
}

- (void)encodeCollection:(id)a3 forKey:(id)a4
{
  if (a3 && ([a3 isNSArray] & 1) == 0 && (objc_msgSend(a3, "isNSSet") & 1) == 0 && (objc_msgSend(a3, "isNSOrderedSet") & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:218 description:{@"Collection class %@ not supported", objc_msgSend(a3, "classForCoder")}];
  }

  [(BSXPCCoder *)self encodeObject:a3 forKey:a4];
}

- (void)encodeDictionary:(id)a3 forKey:(id)a4
{
  if (a3 && ([a3 isNSDictionary] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:223 description:@"Object is not an NSDictionary"];
  }

  [(BSXPCCoder *)self encodeObject:a3 forKey:a4];
}

- (void)encodeCGPoint:(CGPoint)a3 forKey:(id)a4
{
  v5 = [MEMORY[0x1E696B098] bs_valueWithCGPoint:{a3.x, a3.y}];
  [BSXPCCoder encodeObject:"encodeObject:forKey:" forKey:?];
}

- (void)encodeCGSize:(CGSize)a3 forKey:(id)a4
{
  v5 = [MEMORY[0x1E696B098] bs_valueWithCGSize:{a3.width, a3.height}];
  [BSXPCCoder encodeObject:"encodeObject:forKey:" forKey:?];
}

- (void)encodeCGRect:(CGRect)a3 forKey:(id)a4
{
  v5 = [MEMORY[0x1E696B098] bs_valueWithCGRect:{a3.origin.x, a3.origin.y, a3.size.width, a3.size.height}];
  [BSXPCCoder encodeObject:"encodeObject:forKey:" forKey:?];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v7 = codingContext;
  BSSerializeDoubleToXPCDictionaryWithKey(v7, [a4 UTF8String], a3);
}

- (void)encodeBool:(BOOL)a3 forKey:(id)a4
{
  v7 = a4;
  v8 = [a4 UTF8String];
  if (v8)
  {
    v9 = v8;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    xpc_dictionary_set_BOOL(codingContext, v9, a3);
  }
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v7 = a4;
  v8 = [a4 UTF8String];
  if (v8)
  {
    v9 = v8;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    xpc_dictionary_set_int64(codingContext, v9, a3);
  }
}

- (void)encodeUInt64:(unint64_t)a3 forKey:(id)a4
{
  v7 = a4;
  v8 = [a4 UTF8String];
  if (v8)
  {
    v9 = v8;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    xpc_dictionary_set_uint64(codingContext, v9, a3);
  }
}

- (void)encodeStruct:(const void *)a3 withObjCType:(const char *)a4 forKey:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", a4, a5, @"bytes"];
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
      v24 = self;
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

  if (!a4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", 0, a5, @"encoding"];
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
      v24 = self;
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
  [(BSXPCCoder *)self encodeObject:v18 forKey:a5];
}

- (BOOL)containsValueForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = [a3 UTF8String];
  v7 = v5;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
    [v14 handleFailureInFunction:v15 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
  }

  v8 = v7;
  v9 = v8;
  if (v8 && (Class = object_getClass(v8), v11 = MEMORY[0x1E69E9E80], v9, v9, Class == v11))
  {
    v12 = xpc_dictionary_get_value(v9, v6);
  }

  else
  {
    v12 = 0;
  }

  return v12 != 0;
}

- (id)decodeDictionaryOfClass:(Class)a3 forKey:(id)a4
{
  v7 = objc_opt_class();

  return _BSXPCDecodeObjectForKey(self, a4, v7, a3);
}

- (id)decodeXPCObjectOfType:(_xpc_type_s *)a3 forKey:(id)a4
{
  if (a3)
  {
    class4NSXPC = xpc_get_class4NSXPC();
  }

  else
  {
    class4NSXPC = BSXPCObjectBaseClass();
  }

  return [(BSXPCCoder *)self decodeObjectOfClass:class4NSXPC forKey:a4];
}

- (id)decodeStringForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = [a3 UTF8String];
  v7 = v5;
  if (!v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
    [v20 handleFailureInFunction:v21 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
  }

  v8 = v7;
  v9 = v8;
  if (v8 && (v10 = object_getClass(v8), v11 = MEMORY[0x1E69E9E80], v9, v9, v10 == v11))
  {
    v17 = xpc_dictionary_get_value(v9, v6);
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

- (CGPoint)decodeCGPointForKey:(id)a3
{
  v3 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:a3];
  [v3 bs_CGPointValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGSize)decodeCGSizeForKey:(id)a3
{
  v3 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:a3];
  [v3 bs_CGSizeValue];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)decodeCGRectForKey:(id)a3
{
  v3 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:a3];
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

- (double)decodeDoubleForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = BSDeserializeDoubleFromXPCDictionaryWithKey(v5, [a3 UTF8String]);

  return v6;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];
  if (v6)
  {
    v7 = v6;
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    LOBYTE(v6) = xpc_dictionary_get_BOOL(codingContext, v7);
  }

  return v6;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v5 = a3;
  result = [a3 UTF8String];
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

- (unint64_t)decodeUInt64ForKey:(id)a3
{
  v5 = a3;
  result = [a3 UTF8String];
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

- (BOOL)decodeStruct:(void *)a3 withObjCType:(const char *)a4 forKey:(id)a5
{
  if (!a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:362 description:{@"Invalid parameter not satisfying: %@", @"bytes != NULL"}];
  }

  v9 = [(BSXPCCoder *)self decodeValueWithObjCType:a4 forKey:a5];
  if (v9)
  {
    sizep = 0;
    NSGetSizeAndAlignment(a4, &sizep, 0);
    [v9 getValue:a3 size:sizep];
  }

  return v9 != 0;
}

- (id)decodeValueWithObjCType:(const char *)a3 forKey:(id)a4
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"encoding != NULL"}];
  }

  v8 = [(BSXPCCoder *)self decodeObjectOfClass:objc_opt_class() forKey:a4];
  v9 = v8;
  if (v8 && strcmp(a3, [v8 objCType]))
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"BSXPCCoder.m" lineNumber:375 description:{@"Decoded NSValue for %@ does not match expected encoding %s", a4, a3}];
  }

  return v9;
}

- (void)_removeValueForKey:(id)a3
{
  if (a3)
  {
    codingContext = self->_codingContext;
    if (!codingContext)
    {
      codingContext = self->_message;
    }

    v5 = codingContext;
    v6 = [a3 UTF8String];
    v7 = v5;
    xdict = v7;
    if (v6)
    {
      if (v7)
      {
        v8 = xpc_dictionary_get_value(v7, v6);

        if (v8)
        {
          xpc_dictionary_set_value(xdict, v6, 0);
        }
      }
    }

    else
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void BSXPCDictionarySetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_object_t  _Nullable __strong, xpc_type_t _Nullable)"}];
      [v9 handleFailureInFunction:v10 file:@"BSXPCObjectUtilities.h" lineNumber:61 description:@"key must not be nil"];
    }
  }
}

- (id)_implicitDecodeXPCObjectForKey:(id)a3
{
  codingContext = self->_codingContext;
  if (!codingContext)
  {
    codingContext = self->_message;
  }

  v5 = codingContext;
  v6 = [a3 UTF8String];
  v7 = v5;
  if (!v6)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t  _Nullable BSXPCDictionaryGetValue(xpc_object_t  _Nullable __strong, const char * _Nonnull, xpc_type_t _Nullable)"}];
    [v15 handleFailureInFunction:v16 file:@"BSXPCObjectUtilities.h" lineNumber:50 description:@"key must not be nil"];
  }

  v8 = v7;
  v9 = v8;
  if (v8 && (Class = object_getClass(v8), v11 = MEMORY[0x1E69E9E80], v9, v9, Class == v11))
  {
    v12 = xpc_dictionary_get_value(v9, v6);
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

+ (id)_testEncodeAndDecodeObject:(id)a3 ofClass:(Class)a4
{
  v6 = +[BSXPCCoder coder];
  [v6 encodeObject:a3 forKey:@"test"];
  v7 = [v6 createMessage];
  v8 = [BSXPCCoder coderWithMessage:v7];

  v9 = [v8 decodeObjectOfClass:a4 forKey:@"test"];

  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = [(BSXPCCoder *)self createMessage];
  [a3 encodeXPCObject:? forKey:?];
}

- (BSXPCCoder)initWithBSXPCCoder:(id)a3
{
  v4 = [a3 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"message"];
  v5 = [(BSXPCCoder *)self initWithMessage:v4];

  return v5;
}

- (void)_appendXPCObject:(uint64_t)a3 withName:(void *)a4 toBuilder:
{
  if (a1)
  {
    if (a3)
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
      v13 = [a4 activeMultilinePrefix];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke;
      v15[3] = &unk_1E72CC4A8;
      v15[4] = v9;
      v15[5] = a1;
      v15[6] = a4;
      [a4 appendBodySectionWithName:v7 multilinePrefix:v13 block:v15];
    }

    else
    {
      if (object_getClass(v9) != MEMORY[0x1E69E9E50])
      {
LABEL_8:
        v12 = [a4 appendObject:v9 withName:v7 skipIfNil:0];
LABEL_12:

        return;
      }

      v13 = [a4 activeMultilinePrefix];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__BSXPCCoder__appendXPCObject_withName_toBuilder___block_invoke_3;
      v14[3] = &unk_1E72CC4A8;
      v14[4] = v9;
      v14[5] = a1;
      v14[6] = a4;
      [a4 appendBodySectionWithName:v7 multilinePrefix:v13 block:v14];
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
  v2 = [(BSXPCCoder *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:xpc_dictionary_get_count(self->_message) withName:@"valueCount"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSXPCCoder *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BSXPCCoder *)self succinctDescriptionBuilder];
  if (xpc_dictionary_get_count(self->_message))
  {
    [(BSXPCCoder *)self _appendXPCObject:0 withName:v4 toBuilder:?];
  }

  return v4;
}

@end