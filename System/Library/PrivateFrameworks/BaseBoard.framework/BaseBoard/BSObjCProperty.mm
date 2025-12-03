@interface BSObjCProperty
+ (id)propertyWithBuilder:(id)builder;
+ (id)propertyWithBuilder:(id)builder error:(id *)error;
+ (id)propertyWithName:(id)name attributes:(id)attributes error:(id *)error;
+ (id)propertyWithName:(void *)name value:(void *)value attributes:;
+ (id)propertyWithProperty:(objc_property *)property error:(id *)error;
- (BOOL)isAssign;
- (BOOL)isEqual:(id)equal;
- (SEL)_getSelector;
- (SEL)_setSelector;
- (id)copyAddingCustomAttributes:(id)attributes;
- (id)copyAsReadWrite;
- (id)customAttributeForKey:(id)key;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_reifySelectors;
@end

@implementation BSObjCProperty

- (SEL)_setSelector
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self || ([self isReadOnly] & 1) != 0)
  {
    return 0;
  }

  v3 = self[6];
  if (!v3)
  {
    v4 = [self[9] substringToIndex:1];
    capitalizedString = [v4 capitalizedString];

    v6 = [self[9] substringFromIndex:1];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"set%@%@:", capitalizedString, v6];
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
  if (!self)
  {
    return 0;
  }

  v1 = *(self + 40);
  if (!v1)
  {
    v1 = *(self + 72);
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
  if (self)
  {
    if (!*(self + 16))
    {
      v2 = *(self + 8);
      _getSelector = [(BSObjCProperty *)self _getSelector];
      v4 = [BSObjCMethod _propertyGetterForValue:v2 withSelector:_getSelector];
      v5 = *(self + 16);
      *(self + 16) = v4;
    }

    if (!*(self + 24) && (*(self + 65) & 1) == 0)
    {
      v6 = *(self + 8);
      _setSelector = [(BSObjCProperty *)self _setSelector];
      v8 = [BSObjCMethod _propertySetterForValue:v6 withSelector:_setSelector];
      v9 = *(self + 24);
      *(self + 24) = v8;
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
    _setSelector = [(BSObjCProperty *)&v3->super.isa _setSelector];
    v6 = [BSObjCMethod _propertySetterForValue:_setSelector withSelector:?];
    setter = v3->_setter;
    v3->_setter = v6;

    objc_storeStrong(&v3->_customAttributes, self->_customAttributes);
    return v3;
  }
}

+ (id)propertyWithName:(void *)name value:(void *)value attributes:
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  nameCopy = name;
  valueCopy = value;
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

  if (!nameCopy)
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

  if (![valueCopy count])
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
  objc_storeStrong(v11 + 1, name);
  objc_storeStrong(v11 + 9, a2);
  v12 = [valueCopy objectForKey:@"?"];
  *(v11 + 32) = v12 == 0;

  v13 = [valueCopy objectForKey:@"N"];
  *(v11 + 64) = v13 != 0;

  v14 = [valueCopy objectForKey:@"R"];
  *(v11 + 65) = v14 != 0;

  v15 = [valueCopy objectForKey:@"C"];
  *(v11 + 66) = v15 != 0;

  v16 = [valueCopy objectForKey:@"&"];
  *(v11 + 67) = v16 != 0;

  v17 = [valueCopy objectForKey:@"W"];
  *(v11 + 68) = v17 != 0;

  v18 = [valueCopy objectForKey:@"G"];
  v19 = v11[5];
  v11[5] = v18;

  v20 = [valueCopy objectForKey:@"S"];
  v21 = v11[6];
  v11[6] = v20;

  v22 = [valueCopy mutableCopy];
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

- (id)customAttributeForKey:(id)key
{
  v3 = [(NSDictionary *)self->_customAttributes objectForKey:key];

  return v3;
}

- (id)copyAddingCustomAttributes:(id)attributes
{
  attributesCopy = attributes;
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
    v7 = [(NSDictionary *)customAttributes bs_dictionaryByAddingEntriesFromDictionary:attributesCopy];
  }

  else
  {
    v7 = [attributesCopy copy];
  }

  v8 = v5->_customAttributes;
  v5->_customAttributes = v7;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
  v9 = equalCopy->_name;
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
  v11 = equalCopy->_value;
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
  v13 = equalCopy->_customGetter;
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
  v15 = equalCopy->_customSetter;
  if (customSetter == v15)
  {
LABEL_22:
    if (self->_nonatomic == equalCopy->_nonatomic && self->_weak == equalCopy->_weak && self->_strong == equalCopy->_strong)
    {
      v6 = self->_copy == equalCopy->_copy;
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
  succinctDescriptionBuilder = [(BSObjCProperty *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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
  _prettyTypeString = [(BSObjCValue *)self->_value _prettyTypeString];
  if ([_prettyTypeString hasSuffix:@"*"])
  {
    v9 = @"%@%@";
  }

  else
  {
    v9 = @"%@ %@";
  }

  [v4 appendFormat:v9, _prettyTypeString, self->_name];
  if (!self->_required)
  {
    v10 = [v3 appendObject:@"optional" withName:0];
  }

  v11 = [v3 appendObject:v4 withName:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BSObjCProperty *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(BSObjCProperty *)self succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

+ (id)propertyWithProperty:(objc_property *)property error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  if (!property)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", error, @"property"];
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
      selfCopy = self;
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

  v7 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:property_getName(property)];
  v8 = [MEMORY[0x1E695DF20] bsobjc_attributesForProperty:property];
  v9 = [self propertyWithName:v7 attributes:v8 error:error];

  return v9;
}

+ (id)propertyWithBuilder:(id)builder
{
  v3 = [self propertyWithBuilder:builder error:0];

  return v3;
}

+ (id)propertyWithBuilder:(id)builder error:(id *)error
{
  builderCopy = builder;
  v6 = objc_opt_new();
  builderCopy[2](builderCopy, v6);
  value = [v6 value];
  if (value)
  {
    name = [v6 name];
    if (name)
    {
      associationPolicy = [v6 associationPolicy];
      if (!associationPolicy)
      {
        associationPolicy = [value isObject];
      }

      v10 = objc_opt_new();
      [v10 setObject:&stru_1F03A1A98 forKey:@"N"];
      if ([v6 optional])
      {
        [v10 setObject:&stru_1F03A1A98 forKey:@"?"];
      }

      if ((associationPolicy - 1) <= 2)
      {
        [v10 setObject:&stru_1F03A1A98 forKey:off_1E72CB450[associationPolicy - 1]];
      }

      getterName = [v6 getterName];

      if (getterName)
      {
        getterName2 = [v6 getterName];
        [v10 setObject:getterName2 forKey:@"G"];
      }

      setterName = [v6 setterName];

      if (setterName)
      {
        setterName2 = [v6 setterName];
        [v10 setObject:setterName2 forKey:@"S"];
      }

      v15 = [BSObjCProperty propertyWithName:name value:value attributes:v10];
      [(BSObjCProperty *)v15 _reifySelectors];
    }

    else if (error)
    {
      [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"BSObjCRuntime" code:1 configuration:&__block_literal_global_823];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] bs_errorWithDomain:@"BSObjCRuntime" code:1 configuration:&__block_literal_global_818];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)propertyWithName:(id)name attributes:(id)attributes error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  attributesCopy = attributes;
  v11 = attributesCopy;
  if (!nameCopy)
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
      selfCopy2 = self;
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

  if (!attributesCopy)
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
      selfCopy2 = self;
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

  v12 = [attributesCopy objectForKey:@"T"];
  v13 = [BSObjCValue valueWithEncoding:v12 error:error];
  if (v13)
  {
    v14 = [BSObjCProperty propertyWithName:nameCopy value:v13 attributes:v11];
    [(BSObjCProperty *)v14 _reifySelectors];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end