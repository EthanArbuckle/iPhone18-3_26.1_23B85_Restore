@interface BSProtobufSchema
- (BSProtobufSchema)init;
- (uint64_t)_addSubclassesForField:(void *)a3 allowedSubclasses:(int)a4 assertSubclassRelationship:;
- (void)addField:(const char *)a3 allowedClasses:(id)a4;
- (void)addField:(const char *)a3 forTag:(int64_t)a4;
- (void)addRepeatingField:(const char *)a3 containsClass:(Class)a4;
- (void)addRepeatingField:(const char *)a3 containsClass:(Class)a4 forTag:(int64_t)a5;
- (void)addRepeatingField:(const char *)a3 containsClasses:(id)a4;
- (void)addRepeatingField:(uint64_t)a3 forTag:(void *)a4 allowedClasses:;
- (void)dealloc;
- (void)setAcceptableConcreteSubclasses:(id)a3;
@end

@implementation BSProtobufSchema

- (void)dealloc
{
  fieldCount = self->_fieldCount;
  if (fieldCount >= 1)
  {
    v4 = 72;
    do
    {
      v5 = *(&self->_entries->var0 + v4);
      if (v5)
      {
        free(v5);
      }

      v4 += 96;
      --fieldCount;
    }

    while (fieldCount);
  }

  v6.receiver = self;
  v6.super_class = BSProtobufSchema;
  [(BSProtobufSchema *)&v6 dealloc];
}

- (BSProtobufSchema)init
{
  v4.receiver = self;
  v4.super_class = BSProtobufSchema;
  v2 = [(BSProtobufSchema *)&v4 init];
  if (v2)
  {
    v2->_memoryData = objc_alloc_init(MEMORY[0x1E695DF88]);
  }

  return v2;
}

- (void)addField:(const char *)a3 forTag:(int64_t)a4
{
  v4 = a4;
  v44 = *MEMORY[0x1E69E9840];
  BSProtobufValidateIncomingTag(self, a4);
  [(NSMutableData *)self->_memoryData increaseLengthBy:96];
  v8 = [(NSMutableData *)self->_memoryData mutableBytes];
  self->_entries = v8;
  fieldCount = self->_fieldCount;
  v10 = &v8[fieldCount];
  self->_fieldCount = fieldCount + 1;
  v10->var0 = v4;
  rootClass = self->_rootClass;
  InstanceVariable = class_getInstanceVariable(rootClass, a3);
  Offset = ivar_getOffset(InstanceVariable);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (!InstanceVariable)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing ivar on class %@: %s", rootClass, a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v36 = 2114;
      v37 = @"BSProtobufSerialization.m";
      v38 = 1024;
      *v39 = 335;
      *&v39[4] = 2114;
      *&v39[6] = v30;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v30 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8638CLL);
  }

  if (!Offset)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing offset for %s", a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v36 = 2114;
      v37 = @"BSProtobufSerialization.m";
      v38 = 1024;
      *v39 = 336;
      *&v39[4] = 2114;
      *&v39[6] = v31;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v31 UTF8String];
    __break(0);
    JUMPOUT(0x18FF86448);
  }

  v15 = TypeEncoding;
  if (!TypeEncoding)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing encoding for ivar %@: %s", rootClass, a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v36 = 2114;
      v37 = @"BSProtobufSerialization.m";
      v38 = 1024;
      *v39 = 337;
      *&v39[4] = 2114;
      *&v39[6] = v32;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v32 UTF8String];
    __break(0);
    JUMPOUT(0x18FF86504);
  }

  v10->var2 = Offset;
  v10->var3 = InstanceVariable;
  v10->var1 = TypeEncoding;
  v16 = strlen(TypeEncoding);
  v17 = *v15;
  if (v16 < 4 || v17 != 64)
  {
    v24 = (v17 - 66);
    if (v24 <= 0x39 && (((1 << v24) & 0x2849600028483) != 0 || v24 == 57 && (!strncmp("{CGPoint=", v15, 9uLL) || !strncmp("{CGRect=", v15, 8uLL) || !strncmp("{CGSize=", v15, 8uLL) || !strncmp("{CGAffineTransform=", v15, 0x13uLL) || !strncmp("{CATransform3D=", v15, 0xFuLL))))
    {
      v10->var6 = _BSProtobufEncodePOD;
      v10->var7 = _BSProtobufDecodePOD;
      v10->var4 = 0;
      return;
    }

LABEL_33:
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Unsupported encoding type %s", a3, v15];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      *buf = 138544642;
      v35 = v28;
      v36 = 2114;
      v37 = NSStringFromClass(v29);
      v38 = 2048;
      *v39 = self;
      *&v39[8] = 2114;
      *&v39[10] = @"BSProtobufSerialization.m";
      v40 = 1024;
      v41 = 405;
      v42 = 2114;
      v43 = v27;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    qword_1EAD33B00 = [v27 UTF8String];
    __break(0);
    JUMPOUT(0x18FF862D0);
  }

  if (v15[1] != 34 || v15[v16 - 1] != 34)
  {
    goto LABEL_33;
  }

  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v15 + 2 length:v16 - 3 encoding:4];
  v19 = NSClassFromString(v18);
  if (!v19)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot find class: %@", v18];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nullable _BSGetClassFromEncoding(const char *)"];
      v36 = 2114;
      v37 = @"BSProtobufSerialization.m";
      v38 = 1024;
      *v39 = 255;
      *&v39[4] = 2114;
      *&v39[6] = v33;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v33 UTF8String];
    __break(0);
    JUMPOUT(0x18FF865BCLL);
  }

  v20 = v19;

  if (v20 == objc_opt_class())
  {
    v10->var6 = _BSProtobufEncodeString;
    v25 = _BSProtobufDecodeString;
LABEL_20:
    v10->var7 = v25;
    v10->var4 = v20;
    return;
  }

  if (v20 == objc_opt_class())
  {
    v10->var6 = _BSProtobufEncodeData;
    v25 = _BSProtobufDecodeData;
    goto LABEL_20;
  }

  v21 = _BSProtobufValidateClassForEncoding(a3, v20);
  v10->var6 = _BSProtobufEncodeObject;
  v10->var7 = _BSProtobufDecodeObject;
  v10->var4 = v21;
  v22 = [(objc_class *)v21 protobufSchema];
  v23 = v22;
  while (1)
  {
    v23 = v23[2];
    if (!v23)
    {
      break;
    }

    if (v23[7])
    {
      goto LABEL_23;
    }
  }

  v23 = v22;
LABEL_23:
  v26 = v23[8];
  if (v26)
  {

    [(BSProtobufSchema *)self _addSubclassesForField:a3 allowedSubclasses:v26 assertSubclassRelationship:1];
  }
}

- (uint64_t)_addSubclassesForField:(void *)a3 allowedSubclasses:(int)a4 assertSubclassRelationship:
{
  v44 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    v5 = *(result + 24);
    v6 = [a3 count];
    [*(v4 + 48) increaseLengthBy:96 * v6];
    v7 = [*(v4 + 48) mutableBytes];
    *(v4 + 40) = v7;
    v8 = *(v4 + 24);
    *(v4 + 24) = v8 + v6;
    v9 = v7 + 96 * v5;
    *(v9 - 32) = v6;
    *(v9 - 24) = malloc_type_calloc(v6, 8uLL, 0x2004093837F09uLL);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    result = [a3 countByEnumeratingWithState:&v27 objects:v43 count:16];
    if (result)
    {
      v10 = result;
      v11 = 0;
      v12 = *v28;
      v23 = v7 + 96 * v8;
      do
      {
        v13 = 0;
        v14 = v23 + 96 * v11;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(a3);
          }

          v15 = *(*(&v27 + 1) + 8 * v13);
          v16 = *(v4 + 32);
          v17 = v16 + 1;
          *(v4 + 32) = v16 + 1;
          BSProtobufValidateIncomingTag(v4, (v16 + 1));
          if (a4 && ([v15 isSubclassOfClass:*(v9 - 64)] & 1) == 0)
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@' must be a subclass of '%@'", v15, *(v9 - 64)];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v20 = NSStringFromSelector(sel__addSubclassesForField_allowedSubclasses_assertSubclassRelationship_);
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              *buf = 138544642;
              v32 = v20;
              v33 = 2114;
              v34 = v22;
              v35 = 2048;
              v36 = v4;
              v37 = 2114;
              v38 = @"BSProtobufSerialization.m";
              v39 = 1024;
              v40 = 454;
              v41 = 2114;
              v42 = v19;
              _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            qword_1EAD33B00 = [v19 UTF8String];
            __break(0);
            JUMPOUT(0x18FF868A4);
          }

          v18 = _BSProtobufValidateClassForEncoding(a2, v15);
          *v14 = v17;
          *(v14 + 24) = *(v9 - 72);
          *(v14 + 32) = v18;
          *(v14 + 8) = *(v9 - 88);
          *(v14 + 40) = *(v9 - 56);
          *(v14 + 56) = *(v9 - 40);
          *(v14 + 80) = v9 - 96;
          *(v14 + 88) = 1;
          *(*(v9 - 24) + 8 * v11++) = v14;
          ++v13;
          v14 += 96;
        }

        while (v10 != v13);
        result = [a3 countByEnumeratingWithState:&v27 objects:v43 count:16];
        v10 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)addField:(const char *)a3 allowedClasses:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  fieldCount = self->_fieldCount;
  autotagIndex = self->_autotagIndex;
  v10 = autotagIndex + 1;
  self->_autotagIndex = autotagIndex + 1;
  [(NSMutableData *)self->_memoryData increaseLengthBy:96];
  v11 = [(NSMutableData *)self->_memoryData mutableBytes];
  self->_entries = v11;
  v12 = self->_fieldCount;
  v13 = &v11[v12];
  self->_fieldCount = v12 + 1;
  v13->var0 = v10;
  rootClass = self->_rootClass;
  InstanceVariable = class_getInstanceVariable(rootClass, a3);
  Offset = ivar_getOffset(InstanceVariable);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (!InstanceVariable)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing ivar on class %@: %s", rootClass, a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v32 = 2114;
      v33 = @"BSProtobufSerialization.m";
      v34 = 1024;
      *v35 = 335;
      *&v35[4] = 2114;
      *&v35[6] = v23;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v23 UTF8String];
    __break(0);
    JUMPOUT(0x18FF86B2CLL);
  }

  if (!Offset)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing offset for %s", a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v32 = 2114;
      v33 = @"BSProtobufSerialization.m";
      v34 = 1024;
      *v35 = 336;
      *&v35[4] = 2114;
      *&v35[6] = v24;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v24 UTF8String];
    __break(0);
    JUMPOUT(0x18FF86BE8);
  }

  v18 = TypeEncoding;
  if (!TypeEncoding)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing encoding for ivar %@: %s", rootClass, a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v32 = 2114;
      v33 = @"BSProtobufSerialization.m";
      v34 = 1024;
      *v35 = 337;
      *&v35[4] = 2114;
      *&v35[6] = v25;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v25 UTF8String];
    __break(0);
    JUMPOUT(0x18FF86CA4);
  }

  v13->var2 = Offset;
  v13->var3 = InstanceVariable;
  v13->var1 = TypeEncoding;
  v19 = strlen(TypeEncoding);
  if (v19 < 4 || *v18 != 64 || v18[1] != 34 || v18[v19 - 1] != 34)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ivar '%s' is not a class type and cannot be subclassed", a3];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      *buf = 138544642;
      v31 = v28;
      v32 = 2114;
      v33 = NSStringFromClass(v29);
      v34 = 2048;
      *v35 = self;
      *&v35[8] = 2114;
      *&v35[10] = @"BSProtobufSerialization.m";
      v36 = 1024;
      v37 = 492;
      v38 = 2114;
      v39 = v27;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    qword_1EAD33B00 = [v27 UTF8String];
    __break(0);
    JUMPOUT(0x18FF86E34);
  }

  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v18 + 2 length:v19 - 3 encoding:4];
  v21 = NSClassFromString(v20);
  if (!v21)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot find class: %@", v20];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nullable _BSGetClassFromEncoding(const char *)"];
      v32 = 2114;
      v33 = @"BSProtobufSerialization.m";
      v34 = 1024;
      *v35 = 255;
      *&v35[4] = 2114;
      *&v35[6] = v26;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v26 UTF8String];
    __break(0);
    JUMPOUT(0x18FF86D5CLL);
  }

  v22 = v21;

  v13->var4 = _BSProtobufValidateClassForEncoding(a3, v22);
  v13->var6 = _BSProtobufEncodeObject;
  v13->var7 = _BSProtobufDecodeObject;
  [(BSProtobufSchema *)self _addSubclassesForField:a3 allowedSubclasses:a4 assertSubclassRelationship:1];
  if (([a4 containsObject:v22] & 1) == 0)
  {
    self->_entries[fieldCount].var9 = 1;
  }
}

- (void)addRepeatingField:(const char *)a3 containsClass:(Class)a4
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = self->_autotagIndex + 1;
  self->_autotagIndex = v4;
  v5[0] = a4;
  -[BSProtobufSchema addRepeatingField:forTag:allowedClasses:](self, a3, v4, [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1]);
}

- (void)addRepeatingField:(uint64_t)a3 forTag:(void *)a4 allowedClasses:
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v8 = [a4 firstObject];
  if (v8 != objc_opt_class() && v8 != objc_opt_class() && v8 != objc_opt_class() && v8 != objc_opt_class())
  {
    v8 = _BSProtobufValidateClassForEncoding(a2, v8);
  }

  if (a3 < 1)
  {
    v34 = @"tag must be > 0";
    goto LABEL_66;
  }

  if ((a3 - 19000) < 0x3E8)
  {
    v34 = @"tag must not be between 19000 and 19999, inclusive";
    goto LABEL_66;
  }

  if (a3 >> 29)
  {
    v34 = @"tag must be <= ((2^29) - 1)";
LABEL_66:
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v34];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(sel_addRepeatingField_forTag_allowedClasses_);
      v37 = objc_opt_class();
      *buf = 138544642;
      v45 = v36;
      v46 = 2114;
      v47 = NSStringFromClass(v37);
      v48 = 2048;
      *v49 = a1;
      *&v49[8] = 2114;
      *&v49[10] = @"BSProtobufSerialization.m";
      v50 = 1024;
      v51 = 531;
      v52 = 2114;
      v53 = v35;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    qword_1EAD33B00 = [v35 UTF8String];
    __break(0);
    JUMPOUT(0x18FF877DCLL);
  }

  [*(a1 + 48) increaseLengthBy:96];
  v9 = [*(a1 + 48) mutableBytes];
  *(a1 + 40) = v9;
  v10 = *(a1 + 24);
  *(a1 + 24) = v10 + 1;
  v11 = *(a1 + 8);
  v38 = a2;
  InstanceVariable = class_getInstanceVariable(v11, a2);
  Offset = ivar_getOffset(InstanceVariable);
  TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
  if (!InstanceVariable)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing ivar on class %@: %s", v11, v38];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v46 = 2114;
      v47 = @"BSProtobufSerialization.m";
      v48 = 1024;
      *v49 = 335;
      *&v49[4] = 2114;
      *&v49[6] = v27;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v27 UTF8String];
    __break(0);
    JUMPOUT(0x18FF873C4);
  }

  if (!Offset)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing offset for %s", v38];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v46 = 2114;
      v47 = @"BSProtobufSerialization.m";
      v48 = 1024;
      *v49 = 336;
      *&v49[4] = 2114;
      *&v49[6] = v28;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v28 UTF8String];
    __break(0);
    JUMPOUT(0x18FF87488);
  }

  v15 = TypeEncoding;
  if (!TypeEncoding)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing encoding for ivar %@: %s", v11, v38];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _BSProtobufGetIvarDetails(Class, const char * _Nonnull, Ivar * _Nonnull, ptrdiff_t * _Nonnull, const char ** _Nonnull)"}];
      v46 = 2114;
      v47 = @"BSProtobufSerialization.m";
      v48 = 1024;
      *v49 = 337;
      *&v49[4] = 2114;
      *&v49[6] = v29;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    qword_1EAD33B00 = [v29 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8754CLL);
  }

  v16 = v9 + 96 * v10;
  *(v16 + 16) = Offset;
  *(v16 + 24) = InstanceVariable;
  *(v16 + 8) = TypeEncoding;
  v17 = strlen(TypeEncoding);
  if (v17 >= 4 && *v15 == 64)
  {
    if (v15[1] == 34 && v15[v17 - 1] == 34)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v15 + 2 length:v17 - 3 encoding:4];
      v19 = NSClassFromString(v18);
      if (!v19)
      {
        v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot find class: %@", v18];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138544130;
          v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nullable _BSGetClassFromEncoding(const char *)"];
          v46 = 2114;
          v47 = @"BSProtobufSerialization.m";
          v48 = 1024;
          *v49 = 255;
          *&v49[4] = 2114;
          *&v49[6] = v33;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
        }

        qword_1EAD33B00 = [v33 UTF8String];
        __break(0);
        JUMPOUT(0x18FF876E0);
      }

      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v20 != objc_opt_class() && v20 != objc_opt_class() && v20 != objc_opt_class() && v20 != objc_opt_class() && v20 != objc_opt_class() && v20 != objc_opt_class())
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"repeating field must be an array or set type"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = NSStringFromSelector(sel_addRepeatingField_forTag_allowedClasses_);
      v32 = objc_opt_class();
      *buf = 138544642;
      v45 = v31;
      v46 = 2114;
      v47 = NSStringFromClass(v32);
      v48 = 2048;
      *v49 = a1;
      *&v49[8] = 2114;
      *&v49[10] = @"BSProtobufSerialization.m";
      v50 = 1024;
      v51 = 542;
      v52 = 2114;
      v53 = v30;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    qword_1EAD33B00 = [v30 UTF8String];
    __break(0);
    JUMPOUT(0x18FF87620);
  }

  if (v20 == objc_opt_class() || v20 == objc_opt_class() || v20 == objc_opt_class())
  {
    v20 = objc_opt_class();
  }

  *(v16 + 32) = v8;
  *(v16 + 40) = v20;
  *v16 = a3;
  if (v8 == objc_opt_class())
  {
    *(v16 + 48) = _BSProtobufEncodeRepeatFieldString;
    *(v16 + 56) = _BSProtobufDecodeRepeatFieldString;
  }

  else
  {
    *(v16 + 48) = _BSProtobufEncodeRepeatFieldObject;
    *(v16 + 56) = _BSProtobufDecodeRepeatFieldObject;
    v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = [a4 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v40;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v40 != v24)
          {
            objc_enumerationMutation(a4);
          }

          v26 = *(*(&v39 + 1) + 8 * i);
          if (*([v26 protobufSchema] + 64))
          {
            [v21 addObjectsFromArray:?];
          }

          else
          {
            [v21 addObject:v26];
          }
        }

        v23 = [a4 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v23);
    }

    if ([v21 count] > 1 || objc_msgSend(v21, "firstObject") != v8)
    {
      [(BSProtobufSchema *)a1 _addSubclassesForField:v38 allowedSubclasses:v21 assertSubclassRelationship:0];
    }
  }
}

- (void)addRepeatingField:(const char *)a3 containsClasses:(id)a4
{
  v5 = self->_autotagIndex + 1;
  self->_autotagIndex = v5;
  [(BSProtobufSchema *)self addRepeatingField:a3 forTag:v5 allowedClasses:a4];
}

- (void)addRepeatingField:(const char *)a3 containsClass:(Class)a4 forTag:(int64_t)a5
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a4;
  -[BSProtobufSchema addRepeatingField:forTag:allowedClasses:](self, a3, a5, [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1]);
}

- (void)setAcceptableConcreteSubclasses:(id)a3
{
  v5 = objc_alloc_init(BSProtobufSchema);
  autotagIndex = v5->_autotagIndex;
  v7 = autotagIndex + 1;
  v5->_autotagIndex = autotagIndex + 1;
  [(NSMutableData *)v5->_memoryData increaseLengthBy:96];
  v8 = [(NSMutableData *)v5->_memoryData mutableBytes];
  v5->_entries = v8;
  fieldCount = v5->_fieldCount;
  v10 = v8 + 96 * fieldCount;
  v5->_fieldCount = fieldCount + 1;
  *v10 = v7;
  *(v10 + 8) = "@";
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = self->_rootClass;
  *(v10 + 48) = _BSProtobufEncodeObject;
  *(v10 + 56) = _BSProtobufDecodeObject;
  if (([a3 containsObject:self->_rootClass] & 1) == 0)
  {
    *(v10 + 88) = 1;
  }

  [(BSProtobufSchema *)v5 _addSubclassesForField:a3 allowedSubclasses:1 assertSubclassRelationship:?];
  self->_allowedConcreteSubclassesSchema = v5;
  self->_allowedConcreteSubclassesClasses = [a3 copy];
}

@end