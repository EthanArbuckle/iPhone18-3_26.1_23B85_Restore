@interface BSObjCProperty
+ (id)propertyWithBuilder:(id)a3;
+ (id)propertyWithBuilder:(id)a3 error:(id *)a4;
+ (id)propertyWithName:(id)a3 attributes:(id)a4 error:(id *)a5;
+ (id)propertyWithName:(void *)a3 value:(void *)a4 attributes:;
+ (id)propertyWithProperty:(objc_property *)a3 error:(id *)a4;
- (BOOL)isAssign;
- (BOOL)isEqual:(id)a3;
- (SEL)_getSelector;
- (SEL)_setSelector;
- (id)copyAddingCustomAttributes:(id)a3;
- (id)copyAsReadWrite;
- (id)customAttributeForKey:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_reifySelectors;
@end

@implementation BSObjCProperty

- (SEL)_setSelector
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1 || ([a1 isReadOnly] & 1) != 0)
  {
    return 0;
  }

  v3 = a1[6];
  if (!v3)
  {
    v4 = [a1[9] substringToIndex:1];
    v5 = [v4 capitalizedString];

    v6 = [a1[9] substringFromIndex:1];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set%@%@:", v5, v6];
  }

  v2 = NSSelectorFromString(v3);
  if (!v2)
  {
    v2 = sel_registerName([(NSString *)v3 UTF8String]);
    v7 = BSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_debug_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_DEBUG, "BSObjCProperty registering selector %@", buf, 0xCu);
    }
  }

  return v2;
}

- (SEL)_getSelector
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    v1 = *(a1 + 72);
  }

  v2 = v1;
  v3 = NSSelectorFromString(v2);
  if (!v3)
  {
    v3 = sel_registerName([(NSString *)v2 UTF8String]);
    v4 = BSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_debug_impl(&dword_18FEF6000, v4, OS_LOG_TYPE_DEBUG, "BSObjCProperty registering selector %@", &v6, 0xCu);
    }
  }

  return v3;
}

- (BOOL)isAssign
{
  if ([(BSObjCProperty *)self isCopy]|| [(BSObjCProperty *)self isStrong])
  {
    return 0;
  }

  else
  {
    return ![(BSObjCProperty *)self isWeak];
  }
}

- (void)_reifySelectors
{
  if (a1)
  {
    if (!*(a1 + 16))
    {
      v2 = *(a1 + 8);
      v3 = [(BSObjCProperty *)a1 _getSelector];
      v4 = [BSObjCMethod _propertyGetterForValue:v2 withSelector:v3];
      v5 = *(a1 + 16);
      *(a1 + 16) = v4;
    }

    if (!*(a1 + 24) && (*(a1 + 65) & 1) == 0)
    {
      v6 = *(a1 + 8);
      v7 = [(BSObjCProperty *)a1 _setSelector];
      v8 = [BSObjCMethod _propertySetterForValue:v6 withSelector:v7];
      v9 = *(a1 + 24);
      *(a1 + 24) = v8;
    }
  }
}

- (id)copyAsReadWrite
{
  if ([(BSObjCProperty *)self isReadWrite])
  {

    return self;
  }

  else
  {
    v3 = objc_alloc_init(BSObjCProperty);
    objc_storeStrong(&v3->_value, self->_value);
    objc_storeStrong(&v3->_name, self->_name);
    v3->_required = self->_required;
    v3->_nonatomic = self->_nonatomic;
    v3->_readonly = 0;
    v3->_copy = self->_copy;
    v3->_strong = self->_strong;
    v3->_weak = self->_weak;
    objc_storeStrong(&v3->_customGetter, self->_customGetter);
    objc_storeStrong(&v3->_getter, self->_getter);
    value = self->_value;
    v5 = [(BSObjCProperty *)&v3->super.isa _setSelector];
    v6 = [BSObjCMethod _propertySetterForValue:v5 withSelector:?];
    setter = v3->_setter;
    v3->_setter = v6;

    objc_storeStrong(&v3->_customAttributes, self->_customAttributes);
    return v3;
  }
}

+ (id)propertyWithName:(void *)a3 value:(void *)a4 attributes:
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_self();
  if (!v7)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"name"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(sel_propertyWithName_value_attributes_);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      v45 = v29;
      v46 = 2114;
      v47 = v31;
      v48 = 2048;
      v49 = v10;
      v50 = 2114;
      v51 = @"BSObjCRuntime.m";
      v52 = 1024;
      v53 = 621;
      v54 = 2114;
      v55 = v28;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    qword_1EAD33B00 = [v28 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3CF50);
  }

  if (!v8)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"value"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(sel_propertyWithName_value_attributes_);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      v45 = v34;
      v46 = 2114;
      v47 = v36;
      v48 = 2048;
      v49 = v10;
      v50 = 2114;
      v51 = @"BSObjCRuntime.m";
      v52 = 1024;
      v53 = 622;
      v54 = 2114;
      v55 = v33;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v37 = v33;
    qword_1EAD33B00 = [v33 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3D058);
  }

  if (![v9 count])
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[attributes count]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(sel_propertyWithName_value_attributes_);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      v45 = v39;
      v46 = 2114;
      v47 = v41;
      v48 = 2048;
      v49 = v10;
      v50 = 2114;
      v51 = @"BSObjCRuntime.m";
      v52 = 1024;
      v53 = 623;
      v54 = 2114;
      v55 = v38;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    qword_1EAD33B00 = [v38 UTF8String];
    __break(0);
    JUMPOUT(0x18FF3D160);
  }

  v11 = objc_alloc_init(v10);
  objc_storeStrong(v11 + 1, a3);
  objc_storeStrong(v11 + 9, a2);
  v12 = [v9 objectForKey:@"?"];
  *(v11 + 32) = v12 == 0;

  v13 = [v9 objectForKey:@"N"];
  *(v11 + 64) = v13 != 0;

  v14 = [v9 objectForKey:@"R"];
  *(v11 + 65) = v14 != 0;

  v15 = [v9 objectForKey:@"C"];
  *(v11 + 66) = v15 != 0;

  v16 = [v9 objectForKey:@"&"];
  *(v11 + 67) = v16 != 0;

  v17 = [v9 objectForKey:@"W"];
  *(v11 + 68) = v17 != 0;

  v18 = [v9 objectForKey:@"G"];
  v19 = v11[5];
  v11[5] = v18;

  v20 = [v9 objectForKey:@"S"];
  v21 = v11[6];
  v11[6] = v20;

  v22 = [v9 mutableCopy];
  v43[0] = @"T";
  v43[1] = @"N";
  v43[2] = @"R";
  v43[3] = @"C";
  v43[4] = @"&";
  v43[5] = @"W";
  v43[6] = @"G";
  v43[7] = @"S";
  v43[8] = @"?";
  v43[9] = @"V";
  v43[10] = @"D";
  v43[11] = @"P";
  v43[12] = @"t";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:13];
  [v22 removeObjectsForKeys:v23];

  if ([v22 count])
  {
    v24 = [v22 copy];
    v25 = v11[7];
    v11[7] = v24;
  }

  if ([v11[1] isObject] && objc_msgSend(v11, "isReadOnly") && objc_msgSend(v11, "isAssign"))
  {
    *(v11 + 67) = 1;
    v26 = BSLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v45 = v11;
      _os_log_debug_impl(&dword_18FEF6000, v26, OS_LOG_TYPE_DEBUG, "[rdar://101271642] Making probably-incorrect object property 'strong' instead of 'assign': %@", buf, 0xCu);
    }
  }

  return v11;
}

- (id)customAttributeForKey:(id)a3
{
  v3 = [(NSDictionary *)self->_customAttributes objectForKey:a3];

  return v3;
}

- (id)copyAddingCustomAttributes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(BSObjCProperty);
  objc_storeStrong(&v5->_value, self->_value);
  objc_storeStrong(&v5->_name, self->_name);
  v5->_required = self->_required;
  v5->_nonatomic = self->_nonatomic;
  v5->_readonly = self->_readonly;
  v5->_copy = self->_copy;
  v5->_strong = self->_strong;
  v5->_weak = self->_weak;
  objc_storeStrong(&v5->_customGetter, self->_customGetter);
  objc_storeStrong(&v5->_customSetter, self->_customSetter);
  objc_storeStrong(&v5->_getter, self->_getter);
  objc_storeStrong(&v5->_setter, self->_setter);
  customAttributes = self->_customAttributes;
  if (customAttributes)
  {
    v7 = [(NSDictionary *)customAttributes bs_dictionaryByAddingEntriesFromDictionary:v4];
  }

  else
  {
    v7 = [v4 copy];
  }

  v8 = v5->_customAttributes;
  v5->_customAttributes = v7;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_5;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  name = self->_name;
  v9 = v4->_name;
  if (name != v9)
  {
    v6 = 0;
    if (!name || !v9)
    {
      goto LABEL_5;
    }

    if (![(NSString *)name isEqualToString:?])
    {
      goto LABEL_3;
    }
  }

  value = self->_value;
  v11 = v4->_value;
  if (value != v11)
  {
    v6 = 0;
    if (!value || !v11)
    {
      goto LABEL_5;
    }

    if (![(BSObjCValue *)value isEqual:?])
    {
      goto LABEL_3;
    }
  }

  customGetter = self->_customGetter;
  v13 = v4->_customGetter;
  if (customGetter != v13)
  {
    v6 = 0;
    if (!customGetter || !v13)
    {
      goto LABEL_5;
    }

    if (![(NSString *)customGetter isEqual:?])
    {
      goto LABEL_3;
    }
  }

  customSetter = self->_customSetter;
  v15 = v4->_customSetter;
  if (customSetter == v15)
  {
LABEL_22:
    if (self->_nonatomic == v4->_nonatomic && self->_weak == v4->_weak && self->_strong == v4->_strong)
    {
      v6 = self->_copy == v4->_copy;
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (customSetter && v15)
  {
    if ([(NSString *)customSetter isEqual:?])
    {
      goto LABEL_22;
    }

LABEL_3:
    v6 = 0;
  }

LABEL_5:

  return v6;
}

- (id)succinctDescription
{
  v2 = [(BSObjCProperty *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
  if ([(BSObjCProperty *)self isNonAtomic])
  {
    v5 = @"nonatomic";
  }

  else
  {
    v5 = @"atomic";
  }

  [v4 appendString:v5];
  if ([(BSObjCProperty *)self isReadWrite])
  {
    v6 = @", readwrite";
  }

  else
  {
    v6 = @", readonly";
  }

  [v4 appendString:v6];
  if ([(BSObjCProperty *)self isCopy])
  {
    v7 = @", copy";
  }

  else if ([(BSObjCProperty *)self isStrong])
  {
    v7 = @", strong";
  }

  else if ([(BSObjCProperty *)self isWeak])
  {
    v7 = @", weak";
  }

  else
  {
    v7 = @", assign";
  }

  [v4 appendString:v7];
  if (self->_customGetter)
  {
    [v4 appendFormat:@", getter=%@", self->_customGetter];
  }

  if (self->_customSetter)
  {
    [v4 appendFormat:@", setter=%@", self->_customSetter];
  }

  [v4 appendString:@" "]);
  v8 = [(BSObjCValue *)self->_value _prettyTypeString];
  if ([v8 hasSuffix:@"*"])
  {
    v9 = @"%@%@";
  }

  else
  {
    v9 = @"%@ %@";
  }

  [v4 appendFormat:v9, v8, self->_name];
  if (!self->_required)
  {
    v10 = [v3 appendObject:@"optional" withName:0];
  }

  v11 = [v3 appendObject:v4 withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSObjCProperty *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [(BSObjCProperty *)self succinctDescriptionBuilder];

  return v3;
}

+ (id)propertyWithProperty:(objc_property *)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", a4, @"property"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v18 = v13;
      v19 = 2114;
      v20 = v15;
      v21 = 2048;
      v22 = a1;
      v23 = 2114;
      v24 = @"BSObjCRuntime.m";
      v25 = 1024;
      v26 = 1858;
      v27 = 2114;
      v28 = v12;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    qword_1EAD33B00 = [v12 UTF8String];
    __break(0);
    JUMPOUT(0x18FF42ED0);
  }

  v7 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:property_getName(a3)];
  v8 = [MEMORY[0x1E695DF20] bsobjc_attributesForProperty:a3];
  v9 = [a1 propertyWithName:v7 attributes:v8 error:a4];

  return v9;
}

+ (id)propertyWithBuilder:(id)a3
{
  v3 = [a1 propertyWithBuilder:a3 error:0];

  return v3;
}

+ (id)propertyWithBuilder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v5[2](v5, v6);
  v7 = [v6 value];
  if (v7)
  {
    v8 = [v6 name];
    if (v8)
    {
      v9 = [v6 associationPolicy];
      if (!v9)
      {
        v9 = [v7 isObject];
      }

      v10 = objc_opt_new();
      [v10 setObject:&stru_1F03A1A98 forKey:@"N"];
      if ([v6 optional])
      {
        [v10 setObject:&stru_1F03A1A98 forKey:@"?"];
      }

      if ((v9 - 1) <= 2)
      {
        [v10 setObject:&stru_1F03A1A98 forKey:off_1E72CB450[v9 - 1]];
      }

      v11 = [v6 getterName];

      if (v11)
      {
        v12 = [v6 getterName];
        [v10 setObject:v12 forKey:@"G"];
      }

      v13 = [v6 setterName];

      if (v13)
      {
        v14 = [v6 setterName];
        [v10 setObject:v14 forKey:@"S"];
      }

      v15 = [BSObjCProperty propertyWithName:v8 value:v7 attributes:v10];
      [(BSObjCProperty *)v15 _reifySelectors];
    }

    else if (a4)
    {
      [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"BSObjCRuntime" code:1 configuration:&__block_literal_global_823];
      *a4 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"BSObjCRuntime" code:1 configuration:&__block_literal_global_818];
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)propertyWithName:(id)a3 attributes:(id)a4 error:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"name"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v27 = v17;
      v28 = 2114;
      v29 = v19;
      v30 = 2048;
      v31 = a1;
      v32 = 2114;
      v33 = @"BSObjCRuntime.m";
      v34 = 1024;
      v35 = 1927;
      v36 = 2114;
      v37 = v16;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v20 = v16;
    qword_1EAD33B00 = [v16 UTF8String];
    __break(0);
    JUMPOUT(0x18FF43444);
  }

  if (!v10)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"attributes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      *buf = 138544642;
      v27 = v22;
      v28 = 2114;
      v29 = v24;
      v30 = 2048;
      v31 = a1;
      v32 = 2114;
      v33 = @"BSObjCRuntime.m";
      v34 = 1024;
      v35 = 1928;
      v36 = 2114;
      v37 = v21;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v25 = v21;
    qword_1EAD33B00 = [v21 UTF8String];
    __break(0);
    JUMPOUT(0x18FF4354CLL);
  }

  v12 = [v10 objectForKey:@"T"];
  v13 = [BSObjCValue valueWithEncoding:v12 error:a5];
  if (v13)
  {
    v14 = [BSObjCProperty propertyWithName:v9 value:v13 attributes:v11];
    [(BSObjCProperty *)v14 _reifySelectors];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end