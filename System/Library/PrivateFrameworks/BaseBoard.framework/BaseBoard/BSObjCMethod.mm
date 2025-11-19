@interface BSObjCMethod
+ (id)methodWithSelector:(uint64_t)a3 typeEncoding:(void *)a4 outParsingError:;
+ (void)_propertyGetterForValue:(const char *)a3 withSelector:;
+ (void)_propertySetterForValue:(const char *)a3 withSelector:;
- (BOOL)isEqual:(id)a3;
- (id)copyAsOnewayVoid;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
@end

@implementation BSObjCMethod

- (id)copyAsOnewayVoid
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(BSObjCValue *)self->_returnValue isVoid])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_returnValue isVoid]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"BSObjCRuntime.m";
      v20 = 1024;
      v21 = 1009;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    qword_1EAD33B00 = [v6 UTF8String];
    __break(0);
    JUMPOUT(0x18FF17D48);
  }

  if ([(BSObjCValue *)self->_returnValue isOneWay])
  {

    return self;
  }

  else
  {
    v4 = [@"V" stringByAppendingString:self->_encoding];
    v5 = +[BSObjCMethod methodWithSelector:typeEncoding:outParsingError:](BSObjCMethod, self->_selector, [v4 UTF8String], 0);

    return v5;
  }
}

+ (void)_propertyGetterForValue:(const char *)a3 withSelector:
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_opt_self();
  v6 = v5;
  if (!v4)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"value"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(sel__propertyGetterForValue_withSelector_);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v29 = v19;
      v30 = 2114;
      v31 = v21;
      v32 = 2048;
      v33 = v6;
      v34 = 2114;
      v35 = @"BSObjCRuntime.m";
      v36 = 1024;
      v37 = 961;
      v38 = 2114;
      v39 = v18;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    qword_1EAD33B00 = [v18 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3D4ACLL);
  }

  if (!a3)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"selector"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(sel__propertyGetterForValue_withSelector_);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      v29 = v24;
      v30 = 2114;
      v31 = v26;
      v32 = 2048;
      v33 = v6;
      v34 = 2114;
      v35 = @"BSObjCRuntime.m";
      v36 = 1024;
      v37 = 962;
      v38 = 2114;
      v39 = v23;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    qword_1EAD33B00 = [v23 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3D5B4);
  }

  v7 = objc_alloc_init(v5);
  v7[4] = a3;
  v8 = NSStringFromSelector(a3);
  v9 = [v8 copy];
  v10 = v7[2];
  v7[2] = v9;

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v4 encoding];
  v13 = [v11 stringWithFormat:@"%@@:", v12];
  v14 = v7[3];
  v7[3] = v13;

  v15 = v7[5];
  v7[5] = MEMORY[0x1E695E0F0];

  v16 = v7[6];
  v7[6] = v4;

  return v7;
}

+ (void)_propertySetterForValue:(const char *)a3 withSelector:
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = objc_opt_self();
  v6 = v5;
  if (!v4)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"value"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(sel__propertySetterForValue_withSelector_);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138544642;
      v32 = v21;
      v33 = 2114;
      v34 = v23;
      v35 = 2048;
      v36 = v6;
      v37 = 2114;
      v38 = @"BSObjCRuntime.m";
      v39 = 1024;
      v40 = 974;
      v41 = 2114;
      v42 = v20;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v24 = v20;
    qword_1EAD33B00 = [v20 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3D894);
  }

  if (!a3)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"selector"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(sel__propertySetterForValue_withSelector_);
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138544642;
      v32 = v26;
      v33 = 2114;
      v34 = v28;
      v35 = 2048;
      v36 = v6;
      v37 = 2114;
      v38 = @"BSObjCRuntime.m";
      v39 = 1024;
      v40 = 975;
      v41 = 2114;
      v42 = v25;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v25;
    qword_1EAD33B00 = [v25 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3D99CLL);
  }

  v7 = objc_alloc_init(v5);
  v7[4] = a3;
  v8 = NSStringFromSelector(a3);
  v9 = [v8 copy];
  v10 = v7[2];
  v7[2] = v9;

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v4 encoding];
  v13 = [v11 stringWithFormat:@"v@:%@", v12];
  v14 = v7[3];
  v7[3] = v13;

  v30 = v4;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v16 = v7[5];
  v7[5] = v15;

  v17 = +[BSObjCValue voidValue];
  v18 = v7[6];
  v7[6] = v17;

  return v7;
}

+ (id)methodWithSelector:(uint64_t)a3 typeEncoding:(void *)a4 outParsingError:
{
  v44 = *MEMORY[0x1E69E9840];
  v37 = objc_opt_self();
  if (!a3)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:sel_methodWithSelector_typeEncoding_outParsingError_ object:v37 file:@"BSObjCRuntime.m" lineNumber:896 description:{@"Invalid parameter not satisfying: %@", @"cEncoding != nil"}];
  }

  v6 = NSStringFromSelector(a2);
  obj = [v6 copy];

  v7 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:a3];
  v8 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:a3];
  if (v7 && [v7 rangeOfString:@"("]
  {
    v19 = BSLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      *buf = 138543362;
      v43 = v33;
      _os_log_error_impl(&dword_18FEF6000, v19, OS_LOG_TYPE_ERROR, "Ignoring @selector(%{public}@) because it contains a union.", buf, 0xCu);
    }

    if (a4)
    {
      v20 = MEMORY[0x1E696AEC0];
      v21 = NSStringFromSelector(a2);
      *a4 = [v20 stringWithFormat:@"ignoring @selector(%@) because it contains a union", v21];
    }

    goto LABEL_23;
  }

  v9 = [v8 numberOfArguments];
  if (v9 < 2 || *[v8 getArgumentTypeAtIndex:0] != 64 || *objc_msgSend(v8, "getArgumentTypeAtIndex:", 1) != 58)
  {
    v22 = BSLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      *buf = 138543362;
      v43 = v34;
      _os_log_error_impl(&dword_18FEF6000, v22, OS_LOG_TYPE_ERROR, "Ignoring @selector(%{public}@) because the first two arguments are not 'self' and '_cmd'.", buf, 0xCu);
    }

    if (a4)
    {
      v23 = MEMORY[0x1E696AEC0];
      v24 = NSStringFromSelector(a2);
      *a4 = [v23 stringWithFormat:@"ignoring @selector(%@) because the first two arguments are not 'self' and '_cmd'", v24];
    }

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  v38 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E696AE88] scannerWithString:obj];
  for (i = 2; i < [v8 numberOfArguments]; ++i)
  {
    v41 = 0;
    v12 = [v10 scanUpToString:@":" intoString:&v41];
    v13 = v41;
    if (v12)
    {
      [v10 scanString:@":" intoString:0];
    }

    v14 = [BSObjCValue valueForArgumentAtIndex:v8 inSignature:?];
    v15 = v14;
    if (v14)
    {
      *(v14 + 48) = i - 2;
      v16 = v13;
      v17 = [v16 copy];
      v18 = v15[7];
      v15[7] = v17;

      [v38 addObject:v15];
    }
  }

  if (v9 == [v38 count] + 2)
  {
    v25 = objc_alloc_init(v37);
    *(v25 + 4) = a2;
    objc_storeStrong(v25 + 2, obj);
    objc_storeStrong(v25 + 3, v7);
    v27 = [v38 copy];
    v28 = *(v25 + 5);
    *(v25 + 5) = v27;

    v29 = [BSObjCValue valueForArgumentAtIndex:v8 inSignature:?];
    v30 = *(v25 + 6);
    *(v25 + 6) = v29;
  }

  else
  {
    v31 = BSLogCommon();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v35 = NSStringFromSelector(a2);
      *buf = 138543362;
      v43 = v35;
      _os_log_error_impl(&dword_18FEF6000, v31, OS_LOG_TYPE_ERROR, "Ignoring @selector(%{public}@) because the argument count does not match the encoding.", buf, 0xCu);
    }

    if (!a4)
    {
      v25 = 0;
      goto LABEL_34;
    }

    v32 = MEMORY[0x1E696AEC0];
    v30 = NSStringFromSelector(a2);
    [v32 stringWithFormat:@"ignoring @selector(%@) because the argument count does not match the encoding", v30];
    *a4 = v25 = 0;
  }

LABEL_34:
LABEL_24:

  return v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BSObjCMethod *)self selector];
      v6 = v5 == [(BSObjCMethod *)v4 selector];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)succinctDescription
{
  v2 = [(BSObjCMethod *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSObjCMethod *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BSObjCMethod *)self succinctDescriptionBuilder];
  v5 = v4;
  if (!self->_required)
  {
    v6 = [v4 appendObject:@"optional" withName:0];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = &stru_1F03A1A98;
  arguments = self->_arguments;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__BSObjCMethod_descriptionBuilderWithMultilinePrefix___block_invoke;
  v16[3] = &unk_1E72CB3C0;
  v16[4] = &v17;
  [(NSArray *)arguments enumerateObjectsUsingBlock:v16];
  v8 = [v18[5] length];
  v9 = MEMORY[0x1E696AEC0];
  returnValue = self->_returnValue;
  if (v8)
  {
    v11 = [(BSObjCValue *)returnValue _prettyTypeString];
    v12 = [(BSObjCMethod *)self name];
    [v9 stringWithFormat:@"-(%@)%@(%@)", v11, v12, v18[5]];
  }

  else
  {
    v11 = [(BSObjCValue *)returnValue _prettyTypeString];
    v12 = [(BSObjCMethod *)self name];
    [v9 stringWithFormat:@"-(%@)%@", v11, v12];
  }
  v13 = ;

  v14 = [v5 appendObject:v13 withName:0];
  _Block_object_dispose(&v17, 8);

  return v5;
}

void __54__BSObjCMethod_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 32) + 8) + 40);
  v11 = v5;
  [(BSObjCValue *)v5 _prettyTypeString];
  if (a3)
    v7 = {;
    [v6 stringByAppendingFormat:@", %@", v7];
  }

  else
    v7 = {;
    [v6 stringByAppendingString:v7];
  }
  v8 = ;
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end