@interface BSObjCValue
+ (BSObjCValue)_valueWithEncoding:(uint64_t)a1;
+ (id)valueWithBuilder:(id)a3;
+ (id)valueWithBuilder:(id)a3 error:(id *)a4;
+ (id)valueWithCEncoding:(uint64_t)a1;
+ (id)valueWithEncoding:(id)a3;
+ (id)valueWithEncoding:(id)a3 error:(id *)a4;
+ (void)valueForArgumentAtIndex:(void *)a3 inSignature:;
- (BOOL)_isIndistinguishableFromValue:(uint64_t)a1;
- (BOOL)hasQualifier:(char)a3;
- (BOOL)isXPCObject;
- (id)_prettyTypeString;
- (id)debugDescription;
- (id)description;
- (id)pointerValue;
- (id)structFlattenedMembers;
- (id)structMembers;
- (id)structName;
@end

@implementation BSObjCValue

- (BOOL)isXPCObject
{
  if (qword_1ED44FE00 != -1)
  {
    dispatch_once(&qword_1ED44FE00, &__block_literal_global_692);
  }

  v3 = [(BSObjCValue *)self isObject];
  if (v3)
  {
    if ([(NSArray *)self->_objectProtocols containsObject:qword_1ED44FDF8])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      objectClass = self->_objectClass;

      LOBYTE(v3) = [(objc_class *)objectClass bs_isXPCObject];
    }
  }

  return v3;
}

void __41__BSObjCValue_ObjectSupport__isXPCObject__block_invoke()
{
  v0 = BSXPCObjectBaseClass();
  v3 = NSStringFromClass(v0);
  v1 = NSProtocolFromString(v3);
  v2 = qword_1ED44FDF8;
  qword_1ED44FDF8 = v1;
}

- (id)structFlattenedMembers
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(BSObjCValue *)self structMembers];
  if ([v4 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) structFlattenedMembers];
          if ([v9 count])
          {
            [v3 addObjectsFromArray:v9];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v18 = self;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  }

  v12 = v11;

  return v12;
}

- (id)structMembers
{
  if (self->_type == 123)
  {
    v3 = self;
    v25 = objc_opt_new();
    v4 = [(NSString *)v3->_encoding substringWithRange:1, [(NSString *)v3->_encoding length]- 2];
    v24 = v27;
    v23 = v3;
    while (1)
    {
      v5 = [v4 rangeOfString:@"{" options:{0, v23, v24}];
      v6 = [v4 rangeOfString:@"=" options:0];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = v4;
          v9 = 0;
        }

        else
        {
          [v4 substringFromIndex:v6 + v7];
          v8 = v9 = 0;
        }
      }

      else
      {
        if (!v5 || v6 <= v5)
        {
          v11 = a2;
          v12 = v5;
          v13 = 1;
          do
          {
            v14 = [v4 length];
            v15 = [v4 rangeOfString:@"{" options:0 range:{v12 + 1, v14 + ~v12}];
            v16 = [v4 rangeOfString:@"}" options:0 range:{v12 + 1, v14 + ~v12}];
            if (v15 < v16)
            {
              ++v13;
            }

            else
            {
              --v13;
            }

            if (v15 >= v16)
            {
              v12 = v16;
            }

            else
            {
              v12 = v15;
            }
          }

          while (v13);
          v8 = [v4 substringWithRange:{v5, v12 - v5 + 1}];
          [BSObjCValue _valueWithEncoding:v8];
          a2 = v11;
          v17 = v3 = v23;
          [v25 addObject:v17];

          v18 = [v4 substringFromIndex:v12 + 1];

          v4 = v18;
          goto LABEL_20;
        }

        v10 = [v4 substringToIndex:v5];
        [v4 substringFromIndex:v5];
        v9 = v8 = v10;
      }

      v19 = [v8 length];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v27[0] = __43__BSObjCValue_StructSupport__structMembers__block_invoke;
      v27[1] = &unk_1E72CB3E8;
      v29 = a2;
      v27[2] = v3;
      v28 = v25;
      [v8 enumerateSubstringsInRange:0 options:v19 usingBlock:{2, v26}];

      v4 = v9;
LABEL_20:

      if (![v4 length])
      {
        if ([v25 count])
        {
          v20 = v25;
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        goto LABEL_26;
      }
    }
  }

  v21 = 0;
LABEL_26:

  return v21;
}

void __43__BSObjCValue_StructSupport__structMembers__block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v42 = a2;
  if ([v42 length])
  {
    v3 = *[v42 UTF8String];
    if (v3 <= 0x5A)
    {
      switch(v3)
      {
        case '(':
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"union members are not supported"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v19 = NSStringFromSelector(*(a1 + 48));
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            v22 = *(a1 + 32);
            *buf = 138544642;
            v44 = v19;
            v45 = 2114;
            v46 = v21;
            v47 = 2048;
            v48 = v22;
            v49 = 2114;
            v50 = @"BSObjCRuntime.m";
            v51 = 1024;
            v52 = 1557;
            v53 = 2114;
            v54 = v18;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v23 = v18;
          qword_1EAD33B00 = [v18 UTF8String];
          __break(0);
          JUMPOUT(0x18FF131FCLL);
        case '*':
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"char * members are not supported"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v31 = NSStringFromSelector(*(a1 + 48));
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            v34 = *(a1 + 32);
            *buf = 138544642;
            v44 = v31;
            v45 = 2114;
            v46 = v33;
            v47 = 2048;
            v48 = v34;
            v49 = 2114;
            v50 = @"BSObjCRuntime.m";
            v51 = 1024;
            v52 = 1560;
            v53 = 2114;
            v54 = v30;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v35 = v30;
          qword_1EAD33B00 = [v30 UTF8String];
          __break(0);
          JUMPOUT(0x18FF133FCLL);
        case '?':
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown members are not supported"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v37 = NSStringFromSelector(*(a1 + 48));
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = *(a1 + 32);
            *buf = 138544642;
            v44 = v37;
            v45 = 2114;
            v46 = v39;
            v47 = 2048;
            v48 = v40;
            v49 = 2114;
            v50 = @"BSObjCRuntime.m";
            v51 = 1024;
            v52 = 1561;
            v53 = 2114;
            v54 = v36;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v41 = v36;
          qword_1EAD33B00 = [v36 UTF8String];
          __break(0);
          JUMPOUT(0x18FF134FCLL);
      }
    }

    else
    {
      switch(v3)
      {
        case '^':
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pointer members are not supported"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v13 = NSStringFromSelector(*(a1 + 48));
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = *(a1 + 32);
            *buf = 138544642;
            v44 = v13;
            v45 = 2114;
            v46 = v15;
            v47 = 2048;
            v48 = v16;
            v49 = 2114;
            v50 = @"BSObjCRuntime.m";
            v51 = 1024;
            v52 = 1556;
            v53 = 2114;
            v54 = v12;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v17 = v12;
          qword_1EAD33B00 = [v12 UTF8String];
          __break(0);
          JUMPOUT(0x18FF130FCLL);
        case 'b':
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bitfield members are not supported"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v25 = NSStringFromSelector(*(a1 + 48));
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = *(a1 + 32);
            *buf = 138544642;
            v44 = v25;
            v45 = 2114;
            v46 = v27;
            v47 = 2048;
            v48 = v28;
            v49 = 2114;
            v50 = @"BSObjCRuntime.m";
            v51 = 1024;
            v52 = 1558;
            v53 = 2114;
            v54 = v24;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v29 = v24;
          qword_1EAD33B00 = [v24 UTF8String];
          __break(0);
          JUMPOUT(0x18FF132FCLL);
        case '[':
          v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"array members are not supported"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v5 = NSStringFromSelector(*(a1 + 48));
            v6 = objc_opt_class();
            v7 = NSStringFromClass(v6);
            v8 = *(a1 + 32);
            *buf = 138544642;
            v44 = v5;
            v45 = 2114;
            v46 = v7;
            v47 = 2048;
            v48 = v8;
            v49 = 2114;
            v50 = @"BSObjCRuntime.m";
            v51 = 1024;
            v52 = 1559;
            v53 = 2114;
            v54 = v4;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v9 = v4;
          qword_1EAD33B00 = [v4 UTF8String];
          __break(0);
          JUMPOUT(0x18FF12F78);
      }
    }

    v10 = *(a1 + 40);
    v11 = [BSObjCValue _valueWithEncoding:v42];
    [v10 addObject:v11];
  }
}

+ (id)valueWithCEncoding:(uint64_t)a1
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  if (!a2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"encoding"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(sel_valueWithCEncoding_);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544642;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      v16 = 2048;
      v17 = v3;
      v18 = 2114;
      v19 = @"BSObjCRuntime.m";
      v20 = 1024;
      v21 = 160;
      v22 = 2114;
      v23 = v7;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v11 = v7;
    qword_1EAD33B00 = [v7 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3A978);
  }

  v4 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:a2];
  v5 = [v3 valueWithEncoding:v4];

  return v5;
}

+ (BSObjCValue)_valueWithEncoding:(uint64_t)a1
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_self();
  if (!v2)
  {
    v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"encoding"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(sel__valueWithEncoding_);
      v55 = objc_opt_class();
      v56 = NSStringFromClass(v55);
      *sizep = 138544642;
      *&sizep[4] = v54;
      v81 = 2114;
      v82 = v56;
      v83 = 2048;
      v84 = v3;
      v85 = 2114;
      v86 = @"BSObjCRuntime.m";
      v87 = 1024;
      v88 = 165;
      v89 = 2114;
      v90 = v53;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", sizep, 0x3Au);
    }

    v57 = v53;
    qword_1EAD33B00 = [v53 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3B0ACLL);
  }

  v75 = v2;
  v4 = +[NSString bsobjc_typeQualifiers];
  v5 = [v75 rangeOfCharacterFromSet:v4 options:10];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
    v7 = v75;
  }

  else
  {
    v8 = [MEMORY[0x1E696AE88] scannerWithString:v75];
    v9 = +[NSString bsobjc_typeQualifiers];
    *sizep = 0;
    v10 = [v8 scanCharactersFromSet:v9 intoString:sizep];
    v11 = *sizep;

    if (v10)
    {
      v7 = [v75 substringFromIndex:{objc_msgSend(v11, "length")}];

      v12 = v11;
      v6 = v11;
    }

    else
    {
      v6 = 0;
      v7 = v75;
    }
  }

  v13 = v6;
  if (![v7 length])
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[unqualifiedEncoding length] > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v59 = NSStringFromSelector(sel__valueWithEncoding_);
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *sizep = 138544642;
      *&sizep[4] = v59;
      v81 = 2114;
      v82 = v61;
      v83 = 2048;
      v84 = v3;
      v85 = 2114;
      v86 = @"BSObjCRuntime.m";
      v87 = 1024;
      v88 = 168;
      v89 = 2114;
      v90 = v58;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", sizep, 0x3Au);
    }

    v62 = v58;
    qword_1EAD33B00 = [v58 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3B1B4);
  }

  v76 = v7;
  v14 = v7;
  v15 = [v7 UTF8String];
  v16 = 0;
  for (i = 0; i < [v13 length]; ++i)
  {
    v18 = [v13 characterAtIndex:i];
    v19 = v16 | 8;
    v20 = v16 | 1;
    if (v18 != 114)
    {
      v20 = v16;
    }

    if (v18 != 111)
    {
      v19 = v20;
    }

    v21 = v16 | 0x40;
    v22 = v16 | 2;
    if (v18 != 110)
    {
      v22 = v16;
    }

    if (v18 != 86)
    {
      v21 = v22;
    }

    if (v18 <= 110)
    {
      v19 = v21;
    }

    v23 = v16 | 4;
    v24 = v16 | 0x10;
    v25 = v16 | 0x20;
    if (v18 != 82)
    {
      v25 = v16;
    }

    if (v18 != 79)
    {
      v24 = v25;
    }

    if (v18 != 78)
    {
      v23 = v24;
    }

    if (v18 <= 85)
    {
      v16 = v23;
    }

    else
    {
      v16 = v19;
    }
  }

  v77 = objc_alloc_init(BSObjCValue);
  v26 = [v75 copy];
  encoding = v77->_encoding;
  v77->_encoding = v26;

  objc_storeStrong(&v77->_unqualifiedEncoding, v7);
  if ([v13 length])
  {
    v28 = v13;
    v29 = *[v13 UTF8String];
  }

  else
  {
    v29 = 0;
  }

  v77->_typeQualifier = v29;
  v77->_typeQualifiers = v16;
  v77->_type = *v15;
  *sizep = 0;
  NSGetSizeAndAlignment(v15, sizep, 0);
  v77->_size = *sizep;
  v77->_argumentIndex = 0x7FFFFFFFFFFFFFFFLL;
  v77->_block = [v7 hasPrefix:@"@?"];
  v77->_nullability = -1;
  type = v77->_type;
  if (type == 94 || type == 64)
  {
    v31 = [MEMORY[0x1E696AE88] scannerWithString:v77->_unqualifiedEncoding];
    [v31 scanUpToString:@"" intoString:0];
    if ([v31 scanString:@"" intoString:0])
    {
      v32 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"<"];
      v79 = 0;
      v33 = [v31 scanUpToCharactersFromSet:v32 intoString:&v79];
      v34 = v79;

      if (v33)
      {
        v77->_objectClass = NSClassFromString(v34);
      }
    }

    v74 = 0;
    v35 = 0;
    v73 = 0;
    while (1)
    {
      v36 = objc_autoreleasePoolPush();
      [v31 scanUpToString:@"<" intoString:0];
      v37 = [v31 scanString:@"<" intoString:0];
      v38 = v37;
      if (v37)
      {
        break;
      }

LABEL_58:
      objc_autoreleasePoolPop(v36);
      if ((v38 & 1) == 0)
      {
        v47 = [v73 copy];
        objectContainedClasses = v77->_objectContainedClasses;
        v77->_objectContainedClasses = v47;

        v49 = [v35 copy];
        objectProtocols = v77->_objectProtocols;
        v77->_objectProtocols = v49;

        v77->_nullability = v74;
        v51 = [(BSObjCValue *)v77 isXPCObject];
        if (v51 && ([(objc_class *)v77->_objectClass isSubclassOfClass:BSXPCObjectBaseClass()]& 1) == 0)
        {
          v77->_objectClass = BSXPCObjectBaseClass();
        }

        goto LABEL_68;
      }
    }

    v78 = 0;
    v39 = [v31 scanUpToString:@">" intoString:&v78];
    v40 = v78;
    v41 = v40;
    if (!v39)
    {
LABEL_57:

      goto LABEL_58;
    }

    if (![v40 hasPrefix:@"__"] || !objc_msgSend(v41, "hasSuffix:", @"__"))
    {
      v42 = NSProtocolFromString(v41);
      if (v42)
      {
        v44 = v35;
        if (!v35)
        {
          v44 = [MEMORY[0x1E695DF70] array];
        }

        v35 = v44;
        [v44 addObject:v42];
      }

      goto LABEL_56;
    }

    v42 = [v41 substringWithRange:{2, objc_msgSend(v41, "length") - 4}];
    if ([(NSString *)v42 isEqualToString:@"nullable"])
    {
      if (v74)
      {
        v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot declare nullability more than once"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v64 = NSStringFromSelector(sel__populateClassesAndNullability);
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          *sizep = 138544642;
          *&sizep[4] = v64;
          v81 = 2114;
          v82 = v66;
          v83 = 2048;
          v84 = v77;
          v85 = 2114;
          v86 = @"BSObjCRuntime.m";
          v87 = 1024;
          v88 = 275;
          v89 = 2114;
          v90 = v63;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", sizep, 0x3Au);
        }

        v67 = v63;
        qword_1EAD33B00 = [v63 UTF8String];
        __break(0);
        JUMPOUT(0x18FF3B2B4);
      }

      v43 = 2;
    }

    else
    {
      if (![(NSString *)v42 isEqualToString:@"nonnull"])
      {
        v45 = NSClassFromString(v42);
        if (v45)
        {
          v46 = v73;
          if (!v73)
          {
            v46 = [MEMORY[0x1E695DF70] array];
          }

          v73 = v46;
          [v46 addObject:v45];
        }

        goto LABEL_56;
      }

      if (v74)
      {
        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot declare nullability more than once"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v69 = NSStringFromSelector(sel__populateClassesAndNullability);
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          *sizep = 138544642;
          *&sizep[4] = v69;
          v81 = 2114;
          v82 = v71;
          v83 = 2048;
          v84 = v77;
          v85 = 2114;
          v86 = @"BSObjCRuntime.m";
          v87 = 1024;
          v88 = 278;
          v89 = 2114;
          v90 = v68;
          _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", sizep, 0x3Au);
        }

        v72 = v68;
        qword_1EAD33B00 = [v68 UTF8String];
        __break(0);
        JUMPOUT(0x18FF3B3B4);
      }

      v43 = 1;
    }

    v74 = v43;
LABEL_56:

    goto LABEL_57;
  }

LABEL_68:

  return v77;
}

+ (void)valueForArgumentAtIndex:(void *)a3 inSignature:
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_self();
  if (!v4)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"signature"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(sel_valueForArgumentAtIndex_inSignature_);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v35 = v20;
      v36 = 2114;
      v37 = v22;
      v38 = 2048;
      v39 = v5;
      v40 = 2114;
      v41 = @"BSObjCRuntime.m";
      v42 = 1024;
      v43 = 202;
      v44 = 2114;
      v45 = v19;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v23 = v19;
    qword_1EAD33B00 = [v19 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3B818);
  }

  if (a2 <= -2)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"index >= -1"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(sel_valueForArgumentAtIndex_inSignature_);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138544642;
      v35 = v25;
      v36 = 2114;
      v37 = v27;
      v38 = 2048;
      v39 = v5;
      v40 = 2114;
      v41 = @"BSObjCRuntime.m";
      v42 = 1024;
      v43 = 203;
      v44 = 2114;
      v45 = v24;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v28 = v24;
    qword_1EAD33B00 = [v24 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3B920);
  }

  if ([v4 numberOfArguments] <= a2)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"index < (NSInteger)[signature numberOfArguments]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = NSStringFromSelector(sel_valueForArgumentAtIndex_inSignature_);
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138544642;
      v35 = v30;
      v36 = 2114;
      v37 = v32;
      v38 = 2048;
      v39 = v5;
      v40 = 2114;
      v41 = @"BSObjCRuntime.m";
      v42 = 1024;
      v43 = 204;
      v44 = 2114;
      v45 = v29;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v33 = v29;
    qword_1EAD33B00 = [v29 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3BA28);
  }

  v6 = v4;
  if (a2 == -1)
  {
    v7 = [v4 methodReturnType];
  }

  else
  {
    v7 = [v4 getArgumentTypeAtIndex:a2];
  }

  v8 = [(BSObjCValue *)v5 valueWithCEncoding:v7];
  if ([v8 isBlock])
  {
    v9 = [v4 _signatureForBlockAtArgumentIndex:a2];
    if (v9)
    {
      v10 = [MEMORY[0x1E695DF70] array];
      for (i = 1; i < [v9 numberOfArguments]; ++i)
      {
        v12 = [(BSObjCValue *)v5 valueForArgumentAtIndex:v9 inSignature:?];
        v13 = v12;
        if (v12)
        {
          *(v12 + 48) = i - 1;
          [v10 addObject:v12];
        }
      }

      v14 = [v10 copy];
      v15 = v8[10];
      v8[10] = v14;

      v16 = [(BSObjCValue *)v5 valueForArgumentAtIndex:v9 inSignature:?];
      v17 = v8[9];
      v8[9] = v16;
    }
  }

  return v8;
}

- (BOOL)hasQualifier:(char)a3
{
  if (a3 <= 85)
  {
    switch(a3)
    {
      case 'N':
        v3 = -5;
        return (v3 | self->_typeQualifiers) == -1;
      case 'O':
        v3 = -17;
        return (v3 | self->_typeQualifiers) == -1;
      case 'R':
        v3 = -33;
        return (v3 | self->_typeQualifiers) == -1;
    }

    return self->_typeQualifiers == 0;
  }

  if (a3 > 110)
  {
    if (a3 == 111)
    {
      v3 = -9;
      return (v3 | self->_typeQualifiers) == -1;
    }

    if (a3 == 114)
    {
      v3 = -2;
      return (v3 | self->_typeQualifiers) == -1;
    }

    return self->_typeQualifiers == 0;
  }

  if (a3 == 86)
  {
    v3 = -65;
    return (v3 | self->_typeQualifiers) == -1;
  }

  if (a3 != 110)
  {
    return self->_typeQualifiers == 0;
  }

  v3 = -3;
  return (v3 | self->_typeQualifiers) == -1;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(BSObjCValue *)self _prettyTypeString];
  v4 = [v2 stringWithFormat:@"<%@>", v3];

  return v4;
}

- (id)_prettyTypeString
{
  v1 = a1;
  if (!a1)
  {
    goto LABEL_96;
  }

  if ([a1 isBlock])
  {
    v2 = [MEMORY[0x1E696AD60] stringWithString:&stru_1F03A1A98];
    v3 = [(BSObjCValue *)*(v1 + 9) _prettyTypeString];
    v4 = v3;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = @"?";
    }

    [v2 appendString:v5];

    objc_msgSend(v2, "appendString:", @"(^)(");
    v6 = [*(v1 + 10) count];
    v7 = *(v1 + 10);
    if (v6)
    {
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __32__BSObjCValue__prettyTypeString__block_invoke;
      v60[3] = &unk_1E72CB348;
      v61 = v2;
      [v7 enumerateObjectsUsingBlock:v60];
    }

    else
    {
      if (v7)
      {
        v18 = @"void";
      }

      else
      {
        v18 = @"?";
      }

      [v2 appendString:v18];
    }

    [v2 appendString:@""]);
    v1 = [v2 copy];

    goto LABEL_96;
  }

  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__3;
  v58 = __Block_byref_object_dispose__3;
  v59 = 0;
  v8 = *(v1 + 1);
  v9 = 0;
  while ([v8 rangeOfString:@"^" options:10] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v8 substringFromIndex:1];
    ++v9;

    v8 = v10;
  }

  if ([v8 hasPrefix:@"@"])
  {
    v11 = NSStringFromClass(*(v1 + 2));
    v12 = v11;
    v13 = v55;
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = @"id";
    }

    v22 = v13[5];
    v13[5] = v14;

    if ([*(v1 + 4) count])
    {
      v23 = [v55[5] stringByAppendingString:@"<"];
      v24 = v55[5];
      v55[5] = v23;

      v25 = *(v1 + 4);
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __32__BSObjCValue__prettyTypeString__block_invoke_132;
      v53[3] = &unk_1E72CB370;
      v53[4] = &v54;
      [v25 enumerateObjectsUsingBlock:v53];
      v26 = [v55[5] stringByAppendingString:@">"];
      v27 = v55[5];
      v55[5] = v26;
    }

    if (v12)
    {
      v28 = [v55[5] stringByAppendingString:@" *"];
      v29 = v55[5];
      v55[5] = v28;
    }

    goto LABEL_82;
  }

  if (![v8 hasPrefix:@"{"])
  {
    v19 = [v8 substringToIndex:1];
    v20 = [v19 characterAtIndex:0];

    v12 = v55[5];
    if (v20 <= 90)
    {
      if (v20 <= 65)
      {
        if (v20 <= 41)
        {
          if (v20 == 35)
          {
            v21 = @"Class";
            goto LABEL_81;
          }

          if (v20 == 40)
          {
            v21 = @"union";
            goto LABEL_81;
          }
        }

        else
        {
          switch(v20)
          {
            case '*':
              v21 = @"char *";
              goto LABEL_81;
            case ':':
              v21 = @"SEL";
              goto LABEL_81;
            case '@':
              v21 = @"Object";
              goto LABEL_81;
          }
        }
      }

      else if (v20 > 75)
      {
        switch(v20)
        {
          case 'L':
            v21 = @"unsigned long";
            goto LABEL_81;
          case 'Q':
            v21 = @"unsigned long long";
            goto LABEL_81;
          case 'S':
            v21 = @"unsigned short";
            goto LABEL_81;
        }
      }

      else
      {
        switch(v20)
        {
          case 'B':
            v21 = @"BOOL";
            goto LABEL_81;
          case 'C':
            v21 = @"unsigned char";
            goto LABEL_81;
          case 'I':
            v21 = @"unsigned int";
            goto LABEL_81;
        }
      }
    }

    else if (v20 > 104)
    {
      if (v20 > 114)
      {
        switch(v20)
        {
          case 's':
            v21 = @"short";
            goto LABEL_81;
          case 'v':
            v21 = @"void";
            goto LABEL_81;
          case '{':
            v21 = @"struct";
            goto LABEL_81;
        }
      }

      else
      {
        switch(v20)
        {
          case 'i':
            v21 = @"int";
            goto LABEL_81;
          case 'l':
            v21 = @"long";
            goto LABEL_81;
          case 'q':
            v21 = @"long long";
            goto LABEL_81;
        }
      }
    }

    else if (v20 > 98)
    {
      switch(v20)
      {
        case 'c':
          v21 = @"char";
          goto LABEL_81;
        case 'd':
          v21 = @"double";
          goto LABEL_81;
        case 'f':
          v21 = @"float";
          goto LABEL_81;
      }
    }

    else
    {
      switch(v20)
      {
        case '[':
          v21 = @"array";
          goto LABEL_81;
        case '^':
          v21 = @"pointer";
          goto LABEL_81;
        case 'b':
          v21 = @"bitfield";
LABEL_81:
          v55[5] = v21;
          goto LABEL_82;
      }
    }

    v21 = @"(unknown)";
    goto LABEL_81;
  }

  v15 = [(NSString *)v8 bsobjc_structName];
  v16 = v55[5];
  v55[5] = v15;

  if ([v55[5] isEqualToString:@"?"])
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"struct[%zu]", *(v1 + 13)];
    v12 = v55[5];
    v55[5] = v17;
LABEL_82:
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3;
  v51 = __Block_byref_object_dispose__3;
  v52 = 0;
  v30 = [v1 typeQualifiers];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v44 = __32__BSObjCValue__prettyTypeString__block_invoke_2;
  v45 = &unk_1E72CB398;
  v46 = &v47;
  v31 = v43;
  if (v30)
  {
    v32 = 0;
    v62 = 0;
    v33 = vcnt_s8(v30);
    v33.i16[0] = vaddlv_u8(v33);
    v34 = v33.i32[0];
    do
    {
      if (((1 << v32) & v30) != 0)
      {
        (v44)(v31);
        if (v62)
        {
          break;
        }

        --v34;
      }

      if (v32 > 0x3E)
      {
        break;
      }

      ++v32;
    }

    while (v34 > 0);
  }

  v35 = v48[5];
  if (v35)
  {
    v36 = [v35 stringByAppendingFormat:@" %@", v55[5]];
    v37 = v55[5];
    v55[5] = v36;
  }

  if (v9)
  {
    v38 = [v55[5] stringByAppendingString:@" "];
    v39 = v55[5];
    v55[5] = v38;

    do
    {
      v40 = [v55[5] stringByAppendingString:@"*"];
      v41 = v55[5];
      v55[5] = v40;

      --v9;
    }

    while (v9);
  }

  v1 = v55[5];
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v54, 8);
LABEL_96:

  return v1;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(BSObjCValue *)self _prettyTypeString];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ (%@)>", v5, self, v6, self->_encoding];;

  return v7;
}

- (BOOL)_isIndistinguishableFromValue:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_35;
  }

  if (a1 == v3)
  {
    v8 = 1;
    goto LABEL_36;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class() || *(a1 + 48) != *(v4 + 6))
  {
    goto LABEL_35;
  }

  v6 = *(a1 + 56);
  v7 = *(v4 + 7);
  if (v6 != v7)
  {
    v8 = 0;
    if (!v6 || !v7)
    {
      goto LABEL_36;
    }

    if (![v6 isEqualToString:?])
    {
      goto LABEL_35;
    }
  }

  v9 = *(a1 + 96);
  v10 = *(v4 + 12);
  if (v9 != v10)
  {
    v8 = 0;
    if (!v9 || !v10)
    {
      goto LABEL_36;
    }

    if (![v9 isEqualToString:?])
    {
      goto LABEL_35;
    }
  }

  v11 = *(a1 + 8);
  v12 = *(v4 + 1);
  if (v11 != v12)
  {
    v8 = 0;
    if (!v11 || !v12)
    {
      goto LABEL_36;
    }

    if (![v11 isEqualToString:?])
    {
      goto LABEL_35;
    }
  }

  if (*(a1 + 88) != v4[88] || *(a1 + 90) != v4[90] || *(a1 + 104) != *(v4 + 13) || *(a1 + 16) != *(v4 + 2) || !BSEqualArrays(*(a1 + 24), *(v4 + 3)) || !BSEqualArrays(*(a1 + 32), *(v4 + 4)) || *(a1 + 64) != v4[64])
  {
    goto LABEL_35;
  }

  v13 = *(v4 + 9);
  if (!*(a1 + 72))
  {
    if (!v13)
    {
      goto LABEL_30;
    }

LABEL_35:
    v8 = 0;
    goto LABEL_36;
  }

  if (!v13 || (([BSObjCValue _isIndistinguishableFromValue:])() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_30:
  if (!BSEqualArrays(*(a1 + 80), *(v4 + 10)))
  {
    goto LABEL_35;
  }

  v14 = 0;
  do
  {
    v15 = [*(a1 + 80) count];
    v8 = v14 >= v15;
    if (v14 >= v15)
    {
      break;
    }

    v16 = [*(a1 + 80) objectAtIndex:v14];
    v17 = [*(v4 + 10) objectAtIndex:v14];
    v18 = [(BSObjCValue *)v16 _isIndistinguishableFromValue:v17];

    ++v14;
  }

  while ((v18 & 1) != 0);
LABEL_36:

  return v8;
}

void __32__BSObjCValue__prettyTypeString__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  [BSObjCValue _prettyTypeString];
  if (a3)
    v7 = {;
    [v6 appendFormat:@", %@", v7];
  }

  else
    v7 = {;
    [v6 appendString:v7];
  }
}

void __32__BSObjCValue__prettyTypeString__block_invoke_132(uint64_t a1, Class aClass, uint64_t a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = NSStringFromClass(aClass);
  v10 = v6;
  if (a3)
  {
    [v5 stringByAppendingFormat:@", %@ *", v6];
  }

  else
  {
    [v5 stringByAppendingFormat:@"%@ *", v6];
  }
  v7 = ;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __32__BSObjCValue__prettyTypeString__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2 <= 7)
  {
    switch(a2)
    {
      case 1:
        v3 = @"const";
        break;
      case 2:
        v3 = @"in";
        break;
      case 4:
        v3 = @"inout";
        break;
      default:
        return;
    }
  }

  else if (a2 > 31)
  {
    if (a2 == 32)
    {
      v3 = @"byref";
    }

    else
    {
      if (a2 != 64)
      {
        return;
      }

      v3 = @"oneway";
    }
  }

  else if (a2 == 8)
  {
    v3 = @"out";
  }

  else
  {
    if (a2 != 16)
    {
      return;
    }

    v3 = @"bycopy";
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = [v5 stringByAppendingFormat:@" %@", v3];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v8 = 0;
    *(v4 + 40) = v3;
  }
}

- (id)structName
{
  v2 = [(NSString *)self->_encoding bsobjc_structName];
  if ([v2 isEqualToString:@"?"])
  {

    v2 = 0;
  }

  return v2;
}

- (id)pointerValue
{
  if ([(BSObjCValue *)self type]== 94)
  {
    if ([(NSString *)self->_unqualifiedEncoding length]< 2)
    {
      v4 = [BSObjCValue _valueWithEncoding:?];
    }

    else
    {
      v3 = [(NSString *)self->_unqualifiedEncoding substringFromIndex:1];
      v4 = [BSObjCValue _valueWithEncoding:v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)valueWithEncoding:(id)a3
{
  v3 = [a1 valueWithEncoding:a3 error:0];

  return v3;
}

+ (id)valueWithEncoding:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 rangeOfString:@"("]
  {
    v9 = @"unions or types containing unions are not supported";
  }

  else
  {
    if ([v7 length])
    {
      NSGetSizeAndAlignment([v7 UTF8String], 0, 0);
      v8 = [(BSObjCValue *)a1 _valueWithEncoding:v7];
      v9 = 0;
      goto LABEL_10;
    }

    v9 = @"type encoding is nil or empty";
  }

  v8 = 0;
  if (a4 && v9)
  {
    v10 = MEMORY[0x1E696ABC0];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__BSObjCValue_ExternalCreation__valueWithEncoding_error___block_invoke;
    v12[3] = &unk_1E72CB410;
    v9 = v9;
    v13 = v9;
    v14 = v7;
    *a4 = [v10 bs_errorWithDomain:@"BSObjCRuntime" code:1 configuration:v12];

    v8 = 0;
  }

LABEL_10:

  return v8;
}

void __57__BSObjCValue_ExternalCreation__valueWithEncoding_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setFailureDescription:@"Unable to create value from type encoding"];
  [v4 setFailureReason:*(a1 + 32)];
  if (*(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = @"(nil)";
  }

  [v4 setUserInfoValue:v3 forKey:@"BSObjCEncoding"];
}

+ (id)valueWithBuilder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v4[2](v4, v5);
  v6 = [(BSCompoundAssertion *)v5 _identifier];
  v7 = [a1 valueWithEncoding:v6 error:0];

  return v7;
}

+ (id)valueWithBuilder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v6[2](v6, v7);
  v8 = [(BSCompoundAssertion *)v7 _identifier];
  v9 = [a1 valueWithEncoding:v8 error:a4];

  return v9;
}

@end